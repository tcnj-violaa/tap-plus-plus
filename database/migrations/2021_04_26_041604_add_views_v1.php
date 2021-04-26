<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddViewsV1 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("CREATE VIEW admin_transcript_edit_requests AS SELECT
    user_edit_request.id AS request_id,
    user_edit_request.user_id,
    transcripts.id AS transcript_id,
    audio.name AS audio_name,
    transcripts.text AS old_text,
    user_edit_request.text AS new_text,
    user_edit_request.edit_comment,
    user_edit_request.create_time AS request_time,
    user_edit_request.request_approved AS approval_status
   FROM user_edit_request
     JOIN transcripts ON user_edit_request.transcript_id = transcripts.id
     JOIN audio ON audio.id = transcripts.audio_id
  WHERE user_edit_request.request_approved IS NULL;");

        DB::statement("CREATE VIEW results AS SELECT
    audio.id,
    audio.name,
    audio.description,
    audio.audio_date,
    audio.upload_date,
    transcripts.text AS transcript_text
   FROM audio
     JOIN transcripts ON transcripts.audio_id = audio.id
  WHERE transcripts.is_latest = true;");

        DB::statement("CREATE VIEW transcript_requests AS SELECT
    user_edit_request.id AS request_id,
    user_edit_request.user_id,
    transcripts.id AS transcript_id,
    audio.name AS audio_name,
    transcripts.text AS old_text,
    user_edit_request.text AS new_text,
    user_edit_request.edit_comment,
    user_edit_request.create_time AS request_time
   FROM user_edit_request
     JOIN transcripts ON user_edit_request.transcript_id = transcripts.id
     JOIN audio ON audio.id = transcripts.audio_id
  WHERE user_edit_request.request_approved IS NULL;");

        DB::statement("CREATE VIEW filters AS SELECT
    tags.id AS tag_id,
    tag_category.name AS category_name,
    tags.name AS tag_name
   FROM tags
     JOIN tag_category ON tag_category.id = tags.category_id;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement("DROP VIEW admin_transcript_edit_requests;");
        DB::statement("DROP VIEW filters;");
        DB::statement("DROP VIEW results;");
        DB::statement("DROP VIEW transcript_requests;");
    }
}
