<?php

namespace App\Widgets;

use App\Order;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use LaravelAdminPanel\Facades\Admin;

class OrderWidget extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Order::count();

        return view('admin::dimmer', array_merge($this->config, [
            'icon'   => 'admin-news',
            'title'  => "{$count} orders",
            'text'   => "You have {$count} orders in your database. Click on button below to view all orders.",
            'button' => [
                'text' => 'Orders',
                'link' => route('admin.orders.index'),
            ],
            'image' => admin_asset('images/widget-backgrounds/02.jpg'),
        ]));
    }
}
