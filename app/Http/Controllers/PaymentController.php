<?php

namespace App\Http\Controllers;

use App\Cart;
use App\CartProduct;
use App\Http\Controllers\Controller;
use App\OrderDetail;
use App\Payment;
use App\Rate;
use App\ShopProduct;
use App\User;
use Illuminate\Http\Request;
use DB;
use Exception;
use Omnipay\Omnipay;
use Stripe\OAuth;
use Stripe\Stripe;
use Stripe\StripeClient;

class PaymentController extends Controller
{
    public $stripe;

    public function __construct()
    {
        $this->stripe = new StripeClient(config('stripe.api_keys.secret_key'));
        Stripe::setApiKey(config('stripe.api_keys.secret_key'));
    }

    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|void
     */
    public function createPaymentAccount()
    {
        /** @var User $user */
        $user = auth()->user();

        if (!empty($user->stripe_id)) {
            die('Payment account already exists for this account');
        }

        try {
            $account = $this->stripe->accounts->create([
                'type' => 'express',
                'capabilities' => [
                    'card_payments' => ['requested' => true],
                    'transfers' => ['requested' => true],
                ],
            ]);
            $accountLink = $this->stripe->accountLinks->create(
                [
                    'account' => $account->id,
                    'refresh_url' => config('stripe.redirect_refresh'),
                    'return_url' => config('stripe.redirect_return'),
                    'type' => 'account_onboarding',
                ]
            );
        } catch (\Exception $exception) {
            $msg = 'Can not create payment account: '.$exception->getMessage();
            \Log::error($msg);
            die($msg);
        }

        $user->stripe_id = $account->id;
        $user->save();

        return redirect($accountLink->url);
    }

    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|void
     */
    public function continuePaymentAccount()
    {
        /** @var User $user */
        $user = auth()->user();

        try {
            $accountLink = $this->stripe->accountLinks->create(
                [
                    'account' => $user->stripe_id,
                    'refresh_url' => config('stripe.redirect_refresh'),
                    'return_url' => config('stripe.redirect_return'),
                    'type' => 'account_onboarding',
                ]
            );
        } catch (\Exception $exception) {
            $msg = 'Can not create payment account: '.$exception->getMessage();
            \Log::error($msg);
            die($msg);
        }

        return redirect($accountLink->url);
    }

    /**
     * @param Request $request
     */
    public function stripeConnectReturn(Request $request)
    {
        return redirect(route('account.orders').'?notification='.urlencode('Your payment account successfully created. Thank you!'));
    }

    /**
     * @param Request $request
     */
    public function stripeConnectRefresh(Request $request)
    {
        return redirect(route('account.orders').'?notification='.urlencode('Your payment account successfully refreshed. Thank you!'));
    }

    /*
     * Redirect user to fill credit card details in stripe
     */
//    public function initiateConnect()
//    {
//        $queryData = [
//            'response_type' => 'code',
//            'client_id' => config('stripe.client_id'),
//            'scope' => 'read_write',
//            'redirect_uri' => config('stripe.redirect_uri')
//        ];
//        $connectUri = config('stripe.authorization_uri').'?'.http_build_query($queryData);
//        return redirect($connectUri);
//    }

    /*
     * Get token user data, after redirect
     */
//    public function redirectConnect(Request $request)
//    {
//        $token = $this->getToken($request->code);
//        if(!empty($token['error'])) {
//            die($token['error']);
//        }
//        $connectedAccountId = $token->stripe_user_id;
//        $account = $this->getAccount($connectedAccountId);
//        if(!empty($account['error'])) {
//            die($account['error']);
//        }
//        die('OK : '.print_r($account,true)); // TODO: tmp + save
//        return redirect('/dashboard');
//    }

//    private function getToken($code)
//    {
//        $token = null;
//        try {
//            $token = OAuth::token([
//                'grant_type' => 'authorization_code',
//                'code' => $code
//            ]);
//        } catch (Exception $e) {
//            $token['error'] = $e->getMessage();
//        }
//        return $token;
//    }

    /*
     * ---------
     */

    public function index(Request $request)
    {
        if(!auth()->check()) {
            return redirect()->route('site.index');
        }

        $deliverySession = $request->session()->get('delivery');
        if(!$deliverySession) {
            return redirect()->route('cart');
        }



        $user_id = auth()->user()->id;
        $cart_id = DB::table('cart')->where('user_id', $user_id)->pluck('id')->first();
        $cart_products = array();
        $totals = array(
            'subtotal' => 0,
            'shipping_total' => 0,
            'total' => 0
        );

        if(!$cart_id) {
            return redirect()->route('site.index');
        }

        $currency = '€';

        if ($cart_id) {
            $shoppers = DB::table('cart')
                ->join('cart_products', 'cart.id', '=', 'cart_products.cart_id')
                ->join('shop_profiles', 'cart_products.seller_id', '=', 'shop_profiles.id')
                ->select('shop_profiles.id',
                    'shop_profiles.name',
                    'shop_profiles.shop_image_url as shop_image_url',
                    'cart_products.shop_product_id as cart_products_id'
                )
//                ->distinct('cart_products.seller_id')
                ->where("cart.user_id", "=", $user_id)
                ->get();


            if (count($shoppers) > 0) {

                $arrCurrencies = [];
                foreach ($shoppers as $shopper) {
                    $shopper_cart_products = DB::table('cart_products')
                        ->leftJoin('shop_products', 'shop_products.id', '=', 'cart_products.shop_product_id')
                        ->leftJoin('shop_product_files', 'shop_product_files.shop_product_id', '=', 'shop_products.id')
                        ->select('shop_products.id', 'shop_products.name', 'shop_products.artist_name',
                            'shop_products.shop_profile_id as shopper_id',
                            'shop_product_files.thumb', 'cart_products.qty',
                            'cart_products.size', 'cart_products.weight',
                            'cart_products.price', 'cart_products.shipping', 'cart_products.id as cart_product_id')
                        ->where([['seller_id', $shopper->id], ['cart_id', $cart_id]])
                        ->where('cart_products.shop_product_id', $shopper->cart_products_id)
                        ->groupby('cart_products.shop_product_id')
                        ->get();

                    $product = ShopProduct::findOrFail($shopper_cart_products->first()->id);
                    array_push($arrCurrencies, $product->currency);
                }

                if(in_array('USD', $arrCurrencies)) {
                    $currency = '$';
                }




                foreach ($shoppers as $shopper) {
                    $shopper_cart_products = DB::table('cart_products')
                        ->leftJoin('shop_products', 'shop_products.id', '=', 'cart_products.shop_product_id')
                        ->leftJoin('shop_product_files', 'shop_product_files.shop_product_id', '=', 'shop_products.id')
                        ->select('shop_products.id', 'shop_products.name', 'shop_products.artist_name',
                            'shop_products.shop_profile_id as shopper_id',
                            'shop_product_files.thumb', 'cart_products.qty',
                            'cart_products.size', 'cart_products.weight',
                            'cart_products.price', 'cart_products.shipping', 'cart_products.id as cart_product_id')
                        ->where([['seller_id', $shopper->id], ['cart_id', $cart_id]])
                        ->where('cart_products.shop_product_id', $shopper->cart_products_id)
                        ->groupby('cart_products.shop_product_id')
                        ->get();


                    $product = ShopProduct::findOrFail($shopper_cart_products->first()->id);

                    $subtotal = $shopper_cart_products->sum('price');
                    $shipping = $shopper_cart_products->sum('shipping');
//                    $total = $shopper_cart_products->sum('price') + $shopper_cart_products->sum('shipping');
                    $total = $shopper_cart_products->sum('price');


                    if($currency == '$' && $product->currency == 'EUR') {
                        $rate = Rate::first();
                        $subtotal = round($subtotal * $rate->rate);
                        $total = round($total * $rate->rate);
                        $product->currency = '$';
                    }




                    $array = array(
                        'shopper' => $shopper,
                        'products' => $shopper_cart_products,
                        'subtotal' => $subtotal,
                        'shipping' => $shipping,
                        'total' => $total,
                        'product' => $product,
                    );


                    $cart_products[] = $array;
                    $totals['subtotal'] = $totals['subtotal'] + $subtotal;
                    $totals['shipping_total'] = $totals['shipping_total'] + $shipping;
                    $totals['total'] = $totals['total'] + $total;
                }
            }
        }



        $mainSearchFilter = '';
        $get_filters_radio = \DB::table('filters')
            ->where('status', '=', 1)
            ->get();


        return view('payment', compact('totals', 'cart_id',
            'mainSearchFilter', 'get_filters_radio', 'deliverySession', 'currency'));
    }

    public function charge(Request $request)
    {
        if ($request->input('stripeToken')) {

            $gateway = Omnipay::create('Stripe');
            $gateway->setApiKey(env('STRIPE_SECRET_KEY'));


            $token = $request->input('stripeToken');
            $response = $gateway->purchase([
                'amount' => $request->input('amount'),
                'currency' => $request->currency,
                'token' => $token,
            ])->send();

            if ($response->isSuccessful()) {
                // payment was successful: insert transaction data into the database
                $arr_payment_data = $response->getData();

                $isPaymentExist = Payment::where('payment_id', $arr_payment_data['id'])->first();

                if(!$isPaymentExist)
                {
                    $payment = new Payment();
                    $payment->payment_id = $arr_payment_data['id'];
                    $payment->payer_email = $request->input('email');
                    $payment->amount = $arr_payment_data['amount']/100;
                    $payment->currency = $request->currency;
                    $payment->payment_status = $arr_payment_data['status'];
                    $payment->save();

                    $delivery = $request->session()->get('delivery');
                    unset($delivery['_token']);

                    $totals = array(
                        'subtotal' => 0,
                        'shipping_total' => 0,
                        'total' => 0
                    );

                    $user_id = auth()->user()->id;
                    $user_cart = Cart::where('user_id',$user_id)->first();
                    $cart_id = $user_cart->id;

                    $currency = '€';

                    if ($user_cart) {
                        $shoppers = DB::table('cart')
                            ->join('cart_products', 'cart.id', '=', 'cart_products.cart_id')
                            ->join('shop_profiles', 'cart_products.seller_id', '=', 'shop_profiles.id')
                            ->select('shop_profiles.id', 'shop_profiles.name',
                                'shop_profiles.shop_image_url as shop_image_url',
                                'cart_products.shop_product_id as cart_products_id')
                            ->distinct('cart_products.seller_id')
                            ->where("cart.user_id", "=", $user_id)
                            ->get();


                        if (count($shoppers) > 0) {

                            $arrCurrencies = [];
                            foreach ($shoppers as $shopper) {
                                $shopper_cart_products = DB::table('cart_products')
                                    ->leftJoin('shop_products', 'shop_products.id', '=', 'cart_products.shop_product_id')
                                    ->leftJoin('shop_product_files', 'shop_product_files.shop_product_id', '=', 'shop_products.id')
                                    ->select('shop_products.id', 'shop_products.name', 'shop_products.artist_name',
                                        'shop_products.shop_profile_id as shopper_id',
                                        'shop_product_files.thumb', 'cart_products.qty',
                                        'cart_products.size', 'cart_products.weight',
                                        'cart_products.price', 'cart_products.shipping', 'cart_products.id as cart_product_id')
                                    ->where([['seller_id', $shopper->id], ['cart_id', $cart_id]])
                                    ->where('cart_products.shop_product_id', $shopper->cart_products_id)
                                    ->groupby('cart_products.shop_product_id')
                                    ->get();

                                $product = ShopProduct::findOrFail($shopper_cart_products->first()->id);
                                array_push($arrCurrencies, $product->currency);
                            }

                            if(in_array('USD', $arrCurrencies)) {
                                $currency = '$';
                            }

                            foreach ($shoppers as $shopper) {
                                $shopper_cart_products = DB::table('cart_products')
                                    ->leftJoin('shop_products', 'shop_products.id', '=', 'cart_products.shop_product_id')
                                    ->leftJoin('shop_product_files', 'shop_product_files.shop_product_id', '=', 'shop_products.id')
                                    ->select('shop_products.id', 'shop_products.name', 'shop_products.artist_name',
                                        'shop_products.shop_profile_id as shopper_id',
                                        'shop_product_files.thumb', 'cart_products.qty',
                                        'cart_products.size', 'cart_products.weight',
                                        'cart_products.price', 'cart_products.shipping', 'cart_products.id as cart_product_id')
                                    ->where([['seller_id', $shopper->id], ['cart_id', $cart_id]])
                                    ->where('cart_products.shop_product_id', $shopper->cart_products_id)
                                    ->groupby('cart_products.shop_product_id')
                                    ->get();


                                $product = ShopProduct::findOrFail($shopper_cart_products->first()->id);

                                $subtotal = $shopper_cart_products->sum('price');
                                $shipping = $shopper_cart_products->sum('shipping');
//                    $total = $shopper_cart_products->sum('price') + $shopper_cart_products->sum('shipping');
                                $total = $shopper_cart_products->sum('price');


                                if($currency == '$' && $product->currency == 'EUR') {
                                    $rate = Rate::first();
                                    $subtotal = round($subtotal * $rate->rate);
                                    $total = round($total * $rate->rate);
                                    $product->currency = '$';
                                }




                                $array = array(
                                    'shopper' => $shopper,
                                    'products' => $shopper_cart_products,
                                    'subtotal' => $subtotal,
                                    'shipping' => $shipping,
                                    'total' => $total,
                                    'product' => $product,
                                );


                                $cart_products[] = $array;
                                $totals['subtotal'] = $totals['subtotal'] + $subtotal;
                                $totals['shipping_total'] = $totals['shipping_total'] + $shipping;
                                $totals['total'] = $totals['total'] + $total;
                            }
                        }
                    }




                    $cart_data = array(

                        'user_id' => $user_cart->user_id,
                        'support_fee' => 100,
                        'order_subtotal' => $totals['subtotal'],
                        'shipping_total' => $totals['shipping_total'],
                        'total' => $totals['total'],
                        'transaction_id' => 32472,
                        'transaction_fee' => $request->transaction_fee,
                        'status' => 1,
                        'created_at' => date('Y-m-d H:i:s'),
                        'deleted_at' => NULL,
                        'payment_id' => $payment->id
                    );

                    $cart_data = array_merge($cart_data, $delivery);

                    $order_id = DB::table('orders')->insertGetId($cart_data);

                    $cart_products = CartProduct::where(array('cart_id'=>$user_cart->id))->get()->toArray();

                    $total = 0;

                    foreach($cart_products as $order_details)
                    {

                        $data[] = array(

                            'order_id' => $order_id,
                            'shopper_id' => $order_details['seller_id'],
                            'product_id' => $order_details['shop_product_id'],
                            'size' => $order_details['size'],
                            'weight' => $order_details['weight'],
                            'quantity' => $order_details['qty'],
                            'price' => $order_details['price'],
                            'shipping' => $order_details['shipping'],
                            'status' => 'Created',
                            'payed_to_seller' => null,
                        );

                        $total += $order_details['price'];

                    }

                    DB::table('order_details')->insert($data);

                    Cart::where('user_id', $user_cart->user_id)->delete();
                    CartProduct::where(array('cart_id'=>$user_cart->id))->delete();


                }

                foreach($cart_products as $order_details) {
                    $seller = User::findOrFail($order_details['seller_id']);
                    $product = ShopProduct::findOrFail($order_details['shop_product_id']);

                    \Mail::send('Mail.order-seller', compact('order_details', 'product'), function ($message) use($seller) {
                        $message->from(env('MAIL_FROM_ADDRESS'));
                        $message->to($seller->email)->subject('Success order');
                    });
                }


                \Mail::send('Mail.order', compact('cart_products', 'total', 'order_id'), function ($message) use($order_id) {
                    $message->from(env('MAIL_FROM_ADDRESS'));
                    $message->to(auth()->user()->email)->subject('Success order #'. $order_id);
                });

                return redirect()->route('account.orders')->with('message', 'Success payment order!');
            } else if($response->isRedirect()) {
                $response->redirect();
            } else {
                // payment failed: display message to customer
                return $response->getMessage();
            }
        }
    }


}
