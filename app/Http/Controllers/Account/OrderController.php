<?php

namespace App\Http\Controllers\Account;

use App\Order;
use App\OrderDetail;
use App\ShopProduct;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use function Clue\StreamFilter\fun;

class OrderController extends Controller
{
    public function orders() {


        $orders = Order::where('user_id', auth()->user()->id)->orderBy('created_at', 'desc');

        $route = \Route::currentRouteName();


        switch ($route) {
            case 'account.pending-orders':
                $orders->whereHas('products', function ($query) {
                    $query->where('status', '!=', 'Complete');
                })->with(['products' => function ($query) {
                    $query->where('status', '!=', 'Complete');
                }]);

                break;
            case 'account.complete-orders':
                $orders->whereHas('products', function ($query) {
                    $query->where('status', 'Complete');
                })
                    ->with(['products' => function ($query) {
                        $query->where('status', 'Complete');
                    }]);
                break;
            case 'account.orders':



                break;

        }

        $orders = $orders->get();

        $saleOrders = $this->getSales();

        $orders = $orders->merge($saleOrders)->sortByDesc('created_at');

        $mainSearchFilter = '';
        $get_filters_radio = \DB::table('filters')
            ->where('status', '=', 1)
            ->get();


        return view('account.orders', compact('orders', 'mainSearchFilter', 'get_filters_radio'));
    }

    public function sales() {


        $orders = $this->getSales();

        if(!$orders->count()) {
            return redirect()->route('account.orders');
        }

        $mainSearchFilter = '';
        $get_filters_radio = \DB::table('filters')
            ->where('status', '=', 1)
            ->get();

        return view('account.sales', compact('orders', 'mainSearchFilter', 'get_filters_radio'));
    }

    public function getSales() {

        $orders = Order::
        whereHas('products', function ($query) {
            $query->whereHas('productId', function ($query) {
                $query->where('user_id', auth()->user()->id);
            });
        })
            ->with(['products' => function ($query) {
                $query->whereHas('productId', function ($query) {
                    $query->where('user_id', auth()->user()->id);
                });
            }])
            ->orderBy('created_at', 'desc')
            ->get()->each(function ($order) {
                $order->sale = true;
            });

        return $orders;

    }

    public function setTrackerNumber(Request $request) {
        $productDetail = OrderDetail::findOrFail($request->productId);
        $product = ShopProduct::findOrFail($productDetail->product_id);
        $order = Order::findOrFail($productDetail->order_id);
        $user = User::findOrFail($order->user_id);


        $productDetail->tracker_id = $request->trackerId;
        $productDetail->save();


        \Mail::send('Mail.tracker-number', compact('productDetail', 'product', 'order'), function ($message) use($user, $product, $productDetail) {
            $message->from(env('MAIL_FROM_ADDRESS'));
            $message->to($user->email)->subject('Tracker number for product '. $product->name. ' order #'. $productDetail->order_id);
        });

    }

    public function changeStatusOrderProduct(Request $request) {

        $productDetail = OrderDetail::findOrFail($request->id);
        $product = ShopProduct::findOrFail($productDetail->product_id);
        $order = Order::findOrFail($productDetail->order_id);

        if($request->status == 'Pending') {
            $user = User::findOrFail($order->user_id);
            $productDetail->status = 'Pending';
        }
        else {
            $user = User::findOrFail($product->user_id);
            $productDetail->status = 'Complete';

        }


        $productDetail->save();


        \Mail::send('Mail.order-status', compact('productDetail', 'product', 'order'), function ($message) use($user, $product, $productDetail) {
            $message->from(env('MAIL_FROM_ADDRESS'));
            $message->to($user->email)->subject('Status by '. $product->name. ' order #'. $productDetail->order_id);
        });

    }

}
