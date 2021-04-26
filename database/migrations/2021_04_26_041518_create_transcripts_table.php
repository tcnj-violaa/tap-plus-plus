<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTranscriptsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transcripts', function (Blueprint $table) {
            $table->integer('id')->primary('transcripts_pkey');
            $table->integer('audio_id');
            $table->text('text');
            $table->text('revision_comment')->nullable();
            $table->boolean('is_latest')->nullable()->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transcripts');
    }
}
