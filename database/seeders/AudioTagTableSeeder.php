<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AudioTagTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('audio_tag')->delete();
        
        \DB::table('audio_tag')->insert(array (
            0 => 
            array (
                'audio_id' => 2,
                'tag_id' => 5,
            ),
            1 => 
            array (
                'audio_id' => 1,
                'tag_id' => 15,
            ),
            2 => 
            array (
                'audio_id' => 1,
                'tag_id' => 7,
            ),
            3 => 
            array (
                'audio_id' => 2,
                'tag_id' => 15,
            ),
            4 => 
            array (
                'audio_id' => 3,
                'tag_id' => 13,
            ),
        ));
        
        
    }
}