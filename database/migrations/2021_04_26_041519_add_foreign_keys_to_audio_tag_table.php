<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToAudioTagTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('audio_tag', function (Blueprint $table) {
            $table->foreign('audio_id', 'fk_audio_tag_audio_id')->references('id')->on('audio')->onUpdate('RESTRICT')->onDelete('CASCADE');
            $table->foreign('tag_id', 'fk_audio_tag_tag_id')->references('id')->on('tags')->onUpdate('RESTRICT')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('audio_tag', function (Blueprint $table) {
            $table->dropForeign('fk_audio_tag_audio_id');
            $table->dropForeign('fk_audio_tag_tag_id');
        });
    }
}
