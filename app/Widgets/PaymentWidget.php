<?php

namespace App\Widgets;

use App\Order;
use App\Payment;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use LaravelAdminPanel\Facades\Admin;

class PaymentWidget extends AbstractWidget
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
        $count = Payment::count();

        return view('admin::dimmer', array_merge($this->config, [
            'icon'   => 'admin-news',
            'title'  => "{$count} payments",
            'text'   => "You have {$count} payments in your database. Click on button below to view all payments.",
            'button' => [
                'text' => 'Payments',
                'link' => route('admin.payments.index'),
            ],
            'image' => admin_asset('images/widget-backgrounds/03.jpg'),
        ]));
    }
}
