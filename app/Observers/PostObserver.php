<?php

namespace App\Observers;

use App\Models\post;
use Illuminate\Support\Facades\Storage;
class PostObserver
{
    /**
     * Handle the post "updated" event.
     */
    public function updated(post $post)
    {
        $post->user_id = auth()->user()->id;
    }
    /**
     * Handle the post "deleted" event.
     */
    public function deleting(post $post)
    {
        if($post->image)
        {
            //En el momento en el que el administrador elimina alguna publicacion se elimina de la base de datos }
            //Pero no se elimina de la carpeta en donde se guarda la imagen con este metodo en el momento en el que un 
            // administrador elimina una publicacion tambien se eliminara la imagen de la carpeta
           Storage::delete($post->image->url);
        }
    }
}   