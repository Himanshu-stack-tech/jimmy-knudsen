<?php

namespace App\Http\Controllers;

use App\Cart;
use App\CartProduct;
use App\Rate;
use App\ShopProduct;
use Illuminate\Http\Request;
use Validator;
use DB;

class CartController extends Controller
{
    public function cart(Request $request)
    {
        if (!auth()->check()) {
            return redirect()->route('site.index');
        }

        $user_id = auth()->user()->id;
        $cart_id = DB::table('cart')->where('user_id', $user_id)->pluck('id')->first();

        if (!$cart_id) {
            return redirect()->route('site.index');
        }

        $cart_products = array();
        $totals = array(
            'subtotal' => 0,
            'shipping_total' => 0,
            'total' => 0
        );

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
                ->where("cart.user_id", $user_id)
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


                    $product->currency_symbol = $currency;
                    if($currency == '$' && $product->currency == 'EUR') {
                        $rate = Rate::first();
                        $subtotal = round($subtotal * $rate->rate);
                        $total = round($total * $rate->rate);
                        $product->currency_symbol = '$';
                        $product->price = $product->price * $rate->rate;

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

        return view('cart', compact('cart_id', 'cart_products',
            'totals', 'mainSearchFilter', 'get_filters_radio', 'currency'));
    }

    public function removeItem(Request $request)
    {

        $cartProduct = CartProduct::where('id', $request->product_id)->firstOrFail();
        $cart = Cart::where('user_id', auth()->user()->id)->where('id', $cartProduct->cart_id)->firstOrFail();

        $cartProduct->delete();


        if (!$cart->products->count()) {
            $cart->delete();
        }

    }

    public function clear()
    {
        $cart = Cart::where('user_id', auth()->user()->id)->firstOrFail();

        foreach ($cart->products as $product) {
            $product->delete();
        }

        $cart->delete();
    }

    public function changeCountItem(Request $request)
    {


        $cartProduct = CartProduct::where('id', $request->product_id)->firstOrFail();
        $cart = Cart::where('user_id', auth()->user()->id)->where('id', $cartProduct->cart_id)->firstOrFail();

        $cartProduct->qty = $request->counter;
        $cartProduct->price = $cartProduct->product->price * $request->counter;

        $cartProduct->save();

        //todo ajax update cart
    }

    public function delivery(Request $request)
    {

        if (!auth()->check()) {
            return redirect()->route('site.index');
        }



        $countries = ['Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Anguilla', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bangladesh', 'Barbados', 'Bahamas', 'Bahrain', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil', 'British Indian Ocean Territory', 'British Virgin Islands', 'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burma', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde', 'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo-Brazzaville', 'Congo-Kinshasa', 'Cook Islands', 'Costa Rica', 'Croatia', 'Cura?ao', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'East Timor', 'Ecuador', 'El Salvador', 'Egypt', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Falkland Islands', 'Faroe Islands', 'Federated States of Micronesia', 'Fiji', 'Finland', 'France', 'French Guiana', 'French Polynesia', 'French Southern Lands', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guernsey', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Heard and McDonald Islands', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iraq', 'Ireland', 'Isle of Man', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jersey', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau', 'Macedonia', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'Northern Mariana Islands', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn Islands', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'R?union', 'Romania', 'Russia', 'Rwanda', 'Saint Barth?lemy', 'Saint Helena', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Martin', 'Saint Pierre and Miquelon', 'Saint Vincent', 'Samoa', 'San Marino', 'S?o Tom? and Pr?ncipe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Sint Maarten', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Georgia', 'South Korea', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Svalbard and Jan Mayen', 'Sweden', 'Swaziland', 'Switzerland', 'Syria', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Vietnam', 'Venezuela', 'Wallis and Futuna', 'Western Sahara', 'Yemen', 'Zambia', 'Zimbabwe'];



        if ($request->isMethod('post')) {


            $user_id = auth()->user()->id;
            $cart_id = \DB::table('cart')->where('user_id', $user_id)->pluck('id')->first();


            $request->session()->put('delivery', $request->all());

            return redirect()->route('payment');
        }

        $mainSearchFilter = '';
        $get_filters_radio = \DB::table('filters')
            ->where('status', '=', 1)
            ->get();

        return view('cart-delivery', compact('countries', 'mainSearchFilter', 'get_filters_radio'));

    }
}
