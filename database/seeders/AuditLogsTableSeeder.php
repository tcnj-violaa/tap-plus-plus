<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AuditLogsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('audit_logs')->delete();
        
        \DB::table('audit_logs')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => 1,
                'type' => 'transcript:approve',
                'data' => '{"audio_id": 1, "edit_request_id": 2}',
                'create_time' => '2021-04-12 01:26:51.523505',
            ),
            1 => 
            array (
                'id' => 2,
                'user_id' => 1,
                'type' => 'transcript:approve',
                'data' => '{"audio_id": 2, "edit_request_id": 3}',
                'create_time' => '2021-04-12 01:26:51.525582',
            ),
            2 => 
            array (
                'id' => 3,
                'user_id' => 1,
                'type' => 'transcript:approve',
                'data' => '{"audio_id": 3, "edit_request_id": 4}',
                'create_time' => '2021-04-12 01:26:51.526077',
            ),
        ));
        
        
    }
}