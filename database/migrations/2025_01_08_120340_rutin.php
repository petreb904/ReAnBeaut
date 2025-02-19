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
        Schema::create('rutin', function (Blueprint $table) {
            $table->id();
            $table->int('product_id');
            $table->int('user_id');
            $table->varchar('rutin_type');
            $table->varchar('title');
            $table->text('image_video');
            $table->text('summary');
            $table->dateTime('created_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rutin');
    }
};