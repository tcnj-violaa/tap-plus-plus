<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserEditRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_edit_request', function (Blueprint $table) {
            $table->integer('id')->primary('user_edit_request_pkey');
            $table->integer('user_id');
            $table->integer('transcript_id');
            $table->text('text');
            $table->text('edit_comment')->nullable();
            $table->boolean('request_approved')->nullable();
            $table->timestamp('create_time');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_edit_request');
    }
}
