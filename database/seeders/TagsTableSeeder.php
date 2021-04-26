<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TagsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tags')->delete();
        
        \DB::table('tags')->insert(array (
            0 => 
            array (
                'id' => 1,
                'category_id' => 1,
                'name' => '1976',
            ),
            1 => 
            array (
                'id' => 2,
                'category_id' => 1,
                'name' => '1988',
            ),
            2 => 
            array (
                'id' => 3,
                'category_id' => 1,
                'name' => '1993',
            ),
            3 => 
            array (
                'id' => 4,
                'category_id' => 1,
                'name' => '1994',
            ),
            4 => 
            array (
                'id' => 5,
                'category_id' => 1,
                'name' => '1995',
            ),
            5 => 
            array (
                'id' => 6,
                'category_id' => 1,
                'name' => '1996',
            ),
            6 => 
            array (
                'id' => 7,
                'category_id' => 1,
                'name' => '1997',
            ),
            7 => 
            array (
                'id' => 8,
                'category_id' => 1,
                'name' => '1998',
            ),
            8 => 
            array (
                'id' => 9,
                'category_id' => 1,
                'name' => '1999',
            ),
            9 => 
            array (
                'id' => 10,
                'category_id' => 1,
                'name' => '2000',
            ),
            10 => 
            array (
                'id' => 11,
                'category_id' => 1,
                'name' => '2002',
            ),
            11 => 
            array (
                'id' => 12,
                'category_id' => 1,
                'name' => '2003',
            ),
            12 => 
            array (
                'id' => 13,
                'category_id' => 2,
                'name' => 'Bicentennial Project',
            ),
            13 => 
            array (
                'id' => 14,
                'category_id' => 2,
                'name' => 'Gummere',
            ),
            14 => 
            array (
                'id' => 15,
                'category_id' => 2,
                'name' => 'Jewish Historical Society',
            ),
        ));
        
        
    }
}