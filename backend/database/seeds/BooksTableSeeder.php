<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
// use DB;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 50; $i++){
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('books')->insert([
                'isbn' => '1234-5678-910'.$i,
    			'title' => $faker->sentence(3, true),
    			'author' => $faker->name,
    			'description' => $faker->text(200) 
    		]);
 
    	}
    }
}
