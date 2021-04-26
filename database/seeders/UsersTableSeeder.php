<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Raymond',
                'email' => 'chowr2@tcnj.edu',
                'password_hash' => '$2y$10$cdCPbMLzWCeJA3Tr40ZYneALSm2GKVvOORz9TOJAq6NYg4Uqinzpe',
                'user_type' => 2,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Sam',
                'email' => 'haselos1@tcnj.edu',
                'password_hash' => '$2y$10$cdCPbMLzWCeJA3Tr40ZYneALSm2GKVvOORz9TOJAq6NYg4Uqinzpe',
                'user_type' => 2,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Alex',
                'email' => 'benasua1@tcnj.edu',
                'password_hash' => '$2y$10$cdCPbMLzWCeJA3Tr40ZYneALSm2GKVvOORz9TOJAq6NYg4Uqinzpe',
                'user_type' => 2,
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'AJ',
                'email' => 'violaa1@tcnj.edu',
                'password_hash' => '$2y$10$cdCPbMLzWCeJA3Tr40ZYneALSm2GKVvOORz9TOJAq6NYg4Uqinzpe',
                'user_type' => 2,
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Hackerman',
                'email' => 'hackerman@g00gle.com',
                'password_hash' => '$2y$10$cdCPbMLzWCeJA3Tr40ZYneALSm2GKVvOORz9TOJAq6NYg4Uqinzpe',
                'user_type' => 0,
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Alex',
                'email' => 'abc@tcnj.edu',
                'password_hash' => '$2y$10$eE2sykbyaPGYBgvfWWpjL.e3NCn5ItBAPSqwHddO4wi8EnMWp0/D.',
                'user_type' => 0,
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'abc_user',
                'email' => 'abc@hot.mail.co.uk.net',
                'password_hash' => '$2y$10$KN4zWjNaSk3h8aurxR4zq.PKzRJyKjNt8O/a8BniPmC.FomyMA/tO',
                'user_type' => 0,
            ),
        ));
        
        
    }
}