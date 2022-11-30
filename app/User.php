<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Passport\HasApiTokens;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use LaravelAdminPanel\Facades\Admin;
use Stripe\Stripe;
use Stripe\StripeClient;


class User extends \LaravelAdminPanel\Models\User implements MustVerifyEmail
{
     protected $connection = 'mysql';

     use SoftDeletes;
     use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'tagname'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

	public function userdetail() {
        return $this->hasOne('App\UserDetail')->select('user_id','profile_image_url');
    }

    public function shopProfile()
    {
        return $this->hasOne(ShopProfile::class);
    }

    public function urls()
    {
        return $this->hasMany(UserUrls::class);
    }

    public function shopUrls()
    {
        return $this->urls()->where('type', 'shop');
    }
    public function getIsAdminAttribute()
    {
        return true;
    }

    /**
     * @return array|\Stripe\Account|null
     */
    public function getStripeAccount()
    {
        if (empty($this->stripe_id)) {
            return null;
        }

        $stripe = new StripeClient(config('stripe.api_keys.secret_key'));
        Stripe::setApiKey(config('stripe.api_keys.secret_key'));

        try {
            $account = $stripe->accounts->retrieve(
                $this->stripe_id,
                []
            );
        } catch (\Exception $e) {
            return null;
        }

        return $account;
    }

    /**
     * @param $amount
     */
    public function sellerTransfer($amount)
    {
        Stripe::setApiKey(config('stripe.api_keys.secret_key'));
        $stripe = new \Stripe\StripeClient(env('STRIPE_SECRET_KEY'));

        return \Stripe\Transfer::create([
            'amount' => (float)round($amount * 100, 2),
            'currency' => 'usd',
            'destination' => $this->stripe_id,
//                'transfer_group' => '{ORDER10}',
        ]);
    }
}
