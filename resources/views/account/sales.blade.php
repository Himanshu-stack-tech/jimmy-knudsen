@extends('layouts.front')

@section('content')


    <div class="orders-page">
        <div class="header-fixed">
            @include('layouts.frontheader')


            <div class="container-fluid">
                <div class="homepage-filter-tags-bar" style="text-align: center;">
                    <div class="menu-wrapper">
                        @include('account.blocks.header')
                    </div>
                </div>
            </div>

        </div>


        <div class="row mt-5" style="margin: 160px 30px 0;">
            <div class="col">
                <div class="card bg-default shadow">
                    <div class="card-header bg-transparent border-0">
                        Sales
                    </div>
                    <div class="table-responsive">
                        <table class="table align-items-center table-dark table-flush">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Order</th>
                                <th scope="col">Image</th>
                                <th scope="col">Product/seller</th>
                                <th scope="col">Price</th>
                                <th scope="col">Weight</th>
                                <th scope="col">Size</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Status</th>
                                <th scope="col">Tracker id</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($orders as $order)
                                @foreach($order->products as $product)
                                    <tr>

                                        <td>{{ $order->id }}</td>

                                        <th scope="row">
                                            <div class="media align-items-center">
                                                <a href="{{ route('product_details', ['username' =>$product->productId->user->name, 'id' => $product->product_id]) }}" class="avatar rounded-circle mr-3">
                                                    <img style="border-radius: 5px;" width="100px" alt="Image placeholder" src="{{ asset('images/post/new_images') }}/{{ $product->productId->shop_product_files->first()->file_name }}">
                                                </a>

                                            </div>
                                        </th>
                                        <td>
                                            <div class="media-body">
                                                <a href="{{ route('product_details', ['username' =>$product->productId->user->name, 'id' => $product->product_id]) }}"
                                                   class="mb-0 text-sm">{{ $product->productId->name }}</a>
                                            </div>
                                        </td>
                                        <td>
                                            ${{ $product->price }} {{ $product->productId->currency }}
                                        </td>
                                        <td>{{ $product->weight }}kg</td>
                                        <td>{{ $product->size }}</td>
                                        <td>{{ $product->quantity }}</td>
                                        <td>
                                              <span class="badge badge-dot mr-4"
                                                    @if($product->status == 'Complete') style="background: green" @endif
                                                    @if($product->status == 'Pending') style="background: orange" @endif
                                              >
                                                <i class="bg-warning"></i> {{ $product->status }}
                                              </span>
                                        </td>

                                        <td data-id="{{ $product->id }}">
                                            @if(!$product->tracker_id)
                                                <input type="number" name="tracker_id" placeholder="Tracker number" class="input-tracker">
                                                <a href="javascript:void(0);" class="btn-save-tracker-number">Save</a>

                                            @else
                                                {{ $product->tracker_id }}
                                            @endif
                                        </td>

                                        <td class="text-right">
                                            @if($product->status == 'Created')
                                                <a href="javascript:void(0);" data-id="{{ $product->id }}" class="btn-confirm">Set status pending</a>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection

@section('scripts')
    <script>
        $('.btn-save-tracker-number').click(function () {
            var el = $(this)
            var productId = el.closest('td').data('id')
            var trackerId = el.closest('td').find('input[name="tracker_id"]').val()

            if(trackerId) {
                $.ajax({
                    type: 'post',
                    url: '/dashboard/set-tracker-number',
                    data: {productId, trackerId, '_token': $('#token').attr('content')},
                    success:function (result) {
                        window.location.reload()
                    }
                })
            }

        })


        $('.btn-confirm').click(function () {
            var el = $(this)
            var id = el.data('id')

            $.ajax({
                type: 'post',
                url: '/dashboard/change-status-order-product',
                data: {id, '_token': $('#token').attr('content'), 'status': 'Pending'},
                success:function (result) {
                    window.location.href = '/dashboard/sales/?success=1'
                }
            })

        })
    </script>
@endsection
