<?php

namespace Database\Factories;

use App\Models\Api;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Api>
 */
class ApiFactory extends Factory
{
    protected $model = Api::class;

    public function definition()
    {
        return [
            'name' => $this->faker->word,
            'description' => $this->faker->paragraph,
        ];
    }
}
