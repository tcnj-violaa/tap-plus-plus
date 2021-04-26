<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToUserEditRequestTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('user_edit_request', function (Blueprint $table) {
            $table->foreign('transcript_id', 'fk_user_edit_request_transcript_id')->references('id')->on('transcripts')->onUpdate('RESTRICT')->onDelete('CASCADE');
            $table->foreign('user_id', 'fk_user_edit_request_user_id')->references('id')->on('users')->onUpdate('RESTRICT')->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('user_edit_request', function (Blueprint $table) {
            $table->dropForeign('fk_user_edit_request_transcript_id');
            $table->dropForeign('fk_user_edit_request_user_id');
        });
    }
}
