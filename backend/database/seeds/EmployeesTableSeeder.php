<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class EmployeesTableSeeder extends Seeder
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
    		DB::table('employees')->insert([
                'name' => $faker->name,
    			'nip' => $faker->randomNumber(6, true),
    			'birth_place' => $faker->city,
                'dob' => $faker->date('Y-m-d', '1989-03-03'),
                'address' => $faker->address,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
                'created_by' => 1,
                'updated_by' => 1
    		]);
 
    	}
    }
}
