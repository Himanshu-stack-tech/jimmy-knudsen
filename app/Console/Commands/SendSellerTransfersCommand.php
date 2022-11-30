<?php

namespace App\Console\Commands;

use App\ShopProduct;
use App\User;
use Illuminate\Console\Command;
use DB;

class SendSellerTransfersCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send:seller_transfers';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send seller transfers';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $orderDetails = DB::table('order_details')
            ->where('payed_to_seller', null)
            ->get();

        $this->info('Found '.count($orderDetails).' order details');

        foreach ($orderDetails as $orderDetail) {
            /** @var ShopProduct $product */
            $product = ShopProduct::where('id', $orderDetail->product_id)->first();

            if (empty($product)) {
                continue;
            }

            $this->info('Product '.$product->name);

            // ---

            /** @var User $seller */
            $seller = User::find($product->user_id);

            if (empty($seller)) {
                continue;
            }

            $this->info('Seller email: '.$seller->email);

            // ---

            if (empty($seller->stripe_id)) {
                $this->info('Seller empty stripe id');
                continue;
            }

            // ---

            $amountToSend = $orderDetail->price;

            if ($amountToSend > env('MAXIMUM_ART_FREE', 500)) {
                $amountToSend = (float) $amountToSend / 100 * (100-env('ARTFORA_FEE', 5));
            }

            try {
                $transfer = $seller->sellerTransfer($amountToSend);
                DB::table('order_details')
                    ->where('id', $orderDetail)
                    ->update([
                        'payed_to_seller' => $transfer->id,
                    ]);
                $this->info('successfully transferred '.$orderDetail->price.' to '.$seller->email);
            } catch (\Exception $e) {
                $this->warn($e->getMessage());
                $this->line('=====');
                continue;
            }
        }
    }
}
