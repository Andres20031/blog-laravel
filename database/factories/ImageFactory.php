<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Image>
 */
class ImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    // Esta funcion se utiliza al definir una fabrica de modelos en laravel para generar datos de prueba para un modelo especifico en este caso, se esta generando una url 
    // simulada para un recurso de tipo posts junto con una imagen simulada ubicada en la carpe () esto es util para pruebas o para llenar la base de datos con datos de prueba consistentes
    public function definition(): array
    {
        return [
            'url' => 'posts/'. $this->faker->image('public/storage/posts',640,480,null,false)
        ];
    }
}