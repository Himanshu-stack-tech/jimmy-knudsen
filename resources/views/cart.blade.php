@extends('layouts.front')

@section('content')


    <div class="cart-page">
        <div class="header-fixed">

            @include('layouts.frontheader')

{{--            <header id="header" class="header-show-hide-on-scroll1 menu-align-right" >--}}
{{--                <!-- Begin header inner -->--}}
{{--                <div class="header-inner">--}}
{{--                    <div class="container-fluid">--}}
{{--                        <div class="row">--}}
{{--                            <div class="col-xs-3 col-sm-4">--}}

{{--                            </div>--}}
{{--                            <div class="col-xs-6 col-sm-4 text-center">--}}
{{--                                <div id="header-center">--}}
{{--                                    <a href="{{ route('site.index') }}" class="logo-dark">--}}
{{--                                        <span class="logo-text">ARTfora GALLERY</span>--}}
{{--                                    </a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </header>--}}

            <div class="container-fluid">
                <div class="homepage-filter-tags-bar" style="text-align: center;">
                    <div class="menu-wrapper">
                        <div class="">
                            <a href="{{ route('site.index') }}"
                               class="item menu-account filter-gallery-groups filter-gallery-toggle-category" >Go home</a>

                        </div>

                    </div>
                </div>

            </div>

        </div>

        <div class="content-cart">



            <div class="CartContainer">
                <div class="Header">
                    <h3 class="Heading">Shopping Cart</h3>
                    <h5 class="Action btn-clear-cart">Remove all</h5>
                </div>



                @foreach($cart_products as $productWrap)

                    @php
                        $product = $productWrap['products'][0];
                    @endphp


                    <div class="Cart-Items pad">
                    <div class="image-box">
                        <img src="{{ asset('images/post/new_images/'. $product->thumb) }}"  />
                    </div>
                    <div class="about">
                        <h1 class="title">{{ $product->name }}</h1>
                        <h3 class="subtitle">{{ $product->size }}</h3>
                    </div>
                    <div class="counter" data-count="{{ $product->qty }}" data-id="{{ $product->cart_product_id }}">
                        <div class="btn btn-plus">+</div>
                        <div class="count">{{ $product->qty }}</div>
                        <div class="btn btn-minus">-</div>
                    </div>
                    <div class="prices">
                        <div class="amount">{{ $productWrap['product']->currency_symbol  }} {{ $productWrap['total'] }}</div>
                        <div class="remove"><u class="btn-remove-cart-product" data-id="{{ $product->cart_product_id }}">Remove</u></div>
                    </div>
                </div>
                @endforeach

                <hr>
                @if($totals['total'] > 0)
                    <div class="checkout">
                        <form action="{{ route('cart.delivery') }}">
                            <div class="total">
                                <div>
                                    <div class="Subtotal">Sub-Total</div>
                                    <div class="items">{{ count($cart_products) }} items</div>
                                </div>
                                <div class="total-amount">{{ $currency }}{{ $totals['total'] }}</div>
                            </div>
                            <button class="detailed-button">Payment</button>
                        </form>
                    </div>
                @endif
            </div>
        </div>
    </div>





@endsection

@section('scripts')

    <script>
        $('.btn-remove-cart-product').click(function () {
            var el = $(this)
            var id = el.data('id')

            $.ajax({
                type: 'post',
                url: '/cart/remove-item',
                data: {product_id:id, '_token': $('#token').attr('content')},
                success:function (result) {
                    window.location.reload()
                }
            })

        })

        $('.btn-clear-cart').click(function () {
            $.ajax({
                type: 'post',
                url: '/cart/clear',
                data: {'_token': $('#token').attr('content')},
                success:function (result) {
                    window.location.reload()
                }
            })
        })

        function updateCart(counter, id) {
            $.ajax({
                type: 'post',
                url: '/cart/change-count-item',
                data: {counter, product_id:id, '_token': $('#token').attr('content')},
                success:function (result) {
                    window.location.reload()
                }
            })
        }

        $('.btn-plus').click(function () {
            var el = $(this)
            var counter = +el.closest('.counter').data('count')
            var id = el.closest('.counter').data('id')

            counter += 1

            el.closest('.counter').find('.count').text(counter)


            updateCart(counter, id)

        })

        $('.btn-minus').click(function () {
            var el = $(this)
            var counter = +el.closest('.counter').data('count')
            var id = el.closest('.counter').data('id')

            if(counter > 1) {
                counter -= 1
                el.closest('.counter').find('.count').text(counter)
                updateCart(counter, id)
            }

        })


    </script>

@endsection
