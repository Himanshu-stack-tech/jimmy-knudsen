<div class="">
    <a href="{{ route('account.orders') }}"
       class=" @if(Route::currentRouteName() == 'account.orders') filter-gallery-toggle-active @endif

           item menu-account filter-gallery-groups filter-gallery-toggle-category" >All orders</a>

    <a href="{{ route('account.pending-orders') }}"
       class=" @if(Route::currentRouteName() == 'account.pending-orders') filter-gallery-toggle-active @endif

           item menu-account filter-gallery-groups filter-gallery-toggle-category" >Pending orders</a>

    <a href="{{ route('account.complete-orders') }}"
       class=" @if(Route::currentRouteName() == 'complete.orders') filter-gallery-toggle-active @endif

           item menu-account filter-gallery-groups filter-gallery-toggle-category" >Complete orders</a>



    @php
        $ordersSale = \App\Order::whereHas('products', function ($query) {
                $query->whereHas('productId', function ($query) {
                    $query->where('user_id', auth()->user()->id);
                });
            })
                ->with(['products' => function ($query) {
                    $query->whereHas('productId', function ($query) {
                        $query->where('user_id', auth()->user()->id);
                    });
                }])
                ->count();
    @endphp

    @if($ordersSale)
    <a href="{{ route('account.sales') }}"
       class=" @if(Route::currentRouteName() == 'account.sales') filter-gallery-toggle-active @endif
           item menu-account filter-gallery-groups filter-gallery-toggle-category" >My sales</a>
    @endif

    @if(empty(auth()->user()->stripe_id))
        <a href="{{ route('createPaymentAccount') }}" class="item menu-account filter-gallery-groups filter-gallery-toggle-category">Create payment account</a>
    @endif

    @if(!empty(auth()->user()->stripe_id) && false == (auth()->user()->getStripeAccount()->charges_enabled ?? false))
        <a href="{{ route('continuePaymentAccount') }}" class="item menu-account filter-gallery-groups filter-gallery-toggle-category">Continue creating payment account</a>
    @endif

    <a href="{{ route('site.index') }}"
       class="item menu-account filter-gallery-groups filter-gallery-toggle-category" >Go home</a>

</div>
