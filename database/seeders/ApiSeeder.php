<?php

namespace Database\Seeders;

use App\Models\Api;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ApiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        Api::factory()->count(10)->create();
    }
}
