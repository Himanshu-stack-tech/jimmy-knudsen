@extends('layouts.front')

@section('content')

    <div class="header-fixed">
        @include('layouts.frontheader')

        <div class="container-fluid">
            <div class="homepage-filter-tags-bar" style="text-align: center;">
                <div class="menu-wrapper">
                    <div class="">
                        <a href="{{ route('cart') }}"
                           class="item menu-account filter-gallery-groups filter-gallery-toggle-category" >Go back</a>

                    </div>

                </div>
            </div>

        </div>

    </div>

    <div class="" style="width: 600px; margin: 160px auto 100px;">

        <h3 style="color:white;text-align: center; margin-bottom: 50px;">Delivery details</h3>

        <form class="form-delivery" action="{{ route('cart.delivery') }}" method="post">
            @csrf

            <select name="country" id="" required class="feedback-input">
                <option value="">Select country</option>

                @foreach($countries as $country)
                    <option @if(isset(session('delivery')['country']) && session('delivery')['country'] == $country) selected @endif value="{{ $country }}">{{ $country }}</option>
                @endforeach


            </select>


{{--            <input name="country" type="text" class="feedback-input" placeholder="Country" />--}}
            <input value="{{ isset(session('delivery')['region']) ? session('delivery')['region'] : '' }}"
                   name="region" type="text" class="feedback-input" placeholder="State/county (optional)" />
            <input name="city"
                   value="{{ isset(session('delivery')['city']) ? session('delivery')['city'] : '' }}"
                   required type="text" class="feedback-input" placeholder="City" />

            <input type="text" required name="street"
                   value="{{ isset(session('delivery')['street']) ? session('delivery')['street'] : '' }}"
                   class="feedback-input" placeholder="Street">


            <input type="text" name="house" class="feedback-input"
                   value="{{ isset(session('delivery')['house']) ? session('delivery')['house'] : '' }}"
                   required placeholder="House number">


            <input type="text" name="apartment" class="feedback-input"
                   value="{{ isset(session('delivery')['apartment']) ? session('delivery')['apartment'] : '' }}"
                   placeholder="Apartment (optional)">

            <input name="zip" required type="number" class="feedback-input"
                   value="{{ isset(session('delivery')['zip']) ? session('delivery')['zip'] : '' }}"
                   placeholder="Zip/postal code" />

            <input type="text" name="phone" required class="feedback-input"
                   value="{{ isset(session('delivery')['phone']) ? session('delivery')['phone'] : '' }}"
                   placeholder="Phone">

            <textarea name="comment" class="feedback-input" placeholder="Note regarding delivery">{{ isset(session('delivery')['comment']) ? session('delivery')['comment'] : '' }}</textarea>
            <input type="submit" value="NEXT"/>
        </form>
    </div>

    <style>
        .feedback-input {
            color:white;
            font-family: Helvetica, Arial, sans-serif;
            font-weight:500;
            font-size: 18px;
            border-radius: 5px;
            line-height: 22px;
            background-color: transparent;
            border:2px solid #CC6666;
            transition: all 0.3s;
            padding: 13px;
            margin-bottom: 15px;
            width:100%;
            box-sizing: border-box;
            outline:0;
        }

        .feedback-input:focus { border:2px solid #CC4949; }

        .form-delivery textarea {
            height: 150px;
            line-height: 150%;
            resize:vertical;
        }

        .form-delivery [type="submit"] {
            font-family: 'Montserrat', Arial, Helvetica, sans-serif;
            width: 100%;
            background:#CC6666;
            border-radius:5px;
            border:0;
            cursor:pointer;
            color:white;
            font-size:24px;
            padding-top:10px;
            padding-bottom:10px;
            transition: all 0.3s;
            margin-top:-4px;
            font-weight:700;
        }
        .form-delivery [type="submit"]:hover { background:#CC4949; }
    </style>

@endsection
