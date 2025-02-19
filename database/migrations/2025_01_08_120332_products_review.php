<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products_review', function (Blueprint $table) {
            $table->id();
            $table->int('product_id');
            $table->int('user_id');
            $table->text('comment');
            $table->int('like');
            $table->dateTime('watched_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products_review');
    }
};