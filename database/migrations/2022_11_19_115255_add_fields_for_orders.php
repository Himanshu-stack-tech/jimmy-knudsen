<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsForOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->string('country');
            $table->string('region');
            $table->string('city');
            $table->string('street');
            $table->string('house');
            $table->string('apartment');
            $table->string('zip');
            $table->string('comment');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('orders', function (Blueprint $table) {
            $table->dropColumn('country');
            $table->dropColumn('region');
            $table->dropColumn('city');
            $table->dropColumn('street');
            $table->dropColumn('house');
            $table->dropColumn('apartment');
            $table->dropColumn('zip');
            $table->dropColumn('comment');
        });
    }
}
