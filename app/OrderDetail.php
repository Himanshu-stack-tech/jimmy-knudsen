<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{

    public $timestamps = false;


    public function productId() {
        return $this->belongsTo(ShopProduct::class, 'product_id');
    }


}
