<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableOrders3 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('o_number')->default('0');
            $table->integer('status')->default('0');
            $table->integer('o_type')->default('0');
            $table->integer('user_id');
            $table->integer('user_address_id')->nullable();
            $table->text('user_comment')->nullable();
            $table->decimal('subtotal')->default(0);
            $table->decimal('delivery')->default(0);
            $table->decimal('total')->default(0);
            $table->integer('payment_method')->default('0');
            $table->text('payment_info')->nullable();
            $table->dateTime('paid_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
