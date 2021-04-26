<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AudioTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('audio')->delete();
        
        \DB::table('audio')->insert(array (
            0 => 
            array (
                'id' => 2,
                'name' => 'Millner, Joel',
                'description' => 'Previously known as JHS 13',
                'audio_date' => '1995-05-31',
                'upload_date' => '2021-04-11 20:01:08',
            ),
            1 => 
            array (
                'id' => 3,
                'name' => 'Brenda Camp Interview',
                'description' => 'Previously known as Old Trenton Oral History Brenda Camp',
                'audio_date' => NULL,
                'upload_date' => '2021-04-11 20:04:22',
            ),
            2 => 
            array (
                'id' => 5,
                'name' => 'JHS 33 - Side B',
                'description' => 'Percy Siskowitz - Side B',
                'audio_date' => '1997-07-17',
                'upload_date' => '2021-04-26 02:59:19.354181',
            ),
            3 => 
            array (
                'id' => 1,
                'name' => 'JHS 33 - Side A',
                'description' => 'Percy Siskowitz - Side A',
                'audio_date' => '1997-07-17',
                'upload_date' => '2021-04-11 05:24:29',
            ),
        ));
        
        
    }
}