<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TagCategoryTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tag_category')->delete();
        
        \DB::table('tag_category')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Year',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Topic',
            ),
        ));
        
        
    }
}