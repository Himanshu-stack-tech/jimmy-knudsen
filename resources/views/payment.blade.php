@extends('layouts.front')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/stripe.css') }}" />

@endsection

@section('content')

    <div class="header-fixed">
        @include('layouts.frontheader')

    </div>

    <form action="{{ url('charge') }}" method="post" id="payment-form" >
        <input type="hidden" name="cart_id" value="{{ $cart_id }}">
        <div class="form-row">

            <h2>Payment</h2>

            <input type="hidden" name="currency" value="{{ $currency == '$' ? 'USD' : 'EUR' }}">
            <p style="display: none;"><input type="text" value="{{ $totals['total'] }}" name="amount" placeholder="Enter Amount" /></p>
            <p style="display: none;"><input type="email"  value="{{ auth()->user()->email }}" name="email" placeholder="Enter Email" /></p>
            <p><input type="text" value="{{ $currency }}{{ $totals['total'] }}" disabled placeholder="Enter Amount" /></p>
{{--            <p><input type="email"  value="{{ auth()->user()->email }}" disabled placeholder="Enter Email" /></p>--}}


            <div id="card-element">
                <!-- A Stripe Element will be inserted here. -->
            </div>

            <!-- Used to display form errors. -->
            <div id="card-errors" role="alert"></div>
        </div>
        <button class="detailed-button" style="margin-top: 20px">Submit Payment</button>
        {{ csrf_field() }}
    </form>


    <div class="delivery-info-cart">

        <hr style="width:100%;">

        <h4 style="font-size: 24px;">Address details</h4>

        <ul>
            <li>
                <span>Country - </span>
                <p>{{ $deliverySession['country'] }}</p>
            </li>
            <li>
                <span>State/county (optional) - </span>
                <p>{{ $deliverySession['region'] }}</p>
            </li>

            <li>
                <span>City - </span>
                <p>{{ $deliverySession['city'] }}</p>
            </li>

            <li>
                <span>Street - </span>
                <p>{{ $deliverySession['street'] }}</p>
            </li>

            <li>
                <span>House number - </span>
                <p>{{ $deliverySession['house'] }}</p>
            </li>

            <li>
                <span>Apartment (optional) - </span>
                <p>{{ $deliverySession['apartment'] }}</p>
            </li>

            <li>
                <span>Zip/postal code - </span>
                <p>{{ $deliverySession['zip'] }}</p>
            </li>

            <li>
                <span>Phone - </span>
                <p>{{ $deliverySession['phone'] }}</p>
            </li>

            <li>
                <span>Note regarding delivery - </span>
                <p>{{ $deliverySession['comment'] }}</p>
            </li>
        </ul>

        <a href="{{ route('cart.delivery') }}" class="detailed-button">Change address details</a>
    </div>



    <script src="https://js.stripe.com/v3/"></script>
    <script>
        var publishable_key = '{{ env('STRIPE_PUBLISHABLE_KEY') }}';
    </script>
    <script src="{{ asset('js/card.js') }}"></script>
@endsection

@section('scripts')
    <script>
        $('#payment-form').submit(function () {
            var form = $(this)
            form.find('.detailed-button').attr('disabled', true)
            form.find('.detailed-button').text('Wait please...')
        })
    </script>
@endsection
