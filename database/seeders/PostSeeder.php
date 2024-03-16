<?php

namespace Database\Seeders;

use App\Models\Image;
use App\Models\Post;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    // cada una de las cuales  tiene una imagen asociada mediante un sistema polimorfico y tambien se le asignan etiquetas de manera aleatoria. Esto es comunmente utilizado
    //en el desarrollo para tener datos de prueba y para probar el comportamiento de la aplicacion con un conjunto significativo de datos simulados
    public function run(): void
    {
      // con el metodo factory creamos los 50 registros
       $posts = Post::factory(30)->create();
       foreach ($posts as $post) {
          Image::factory(1)->create([
            'imageable_id' => $post->id,
            'imageable_type' => Post::class
          ]);
          $post->tags()->attach([
            rand(1,4),
            rand(5,8)
          ]);
       }
    }
}
