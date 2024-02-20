<?php

namespace App\Policies;

use App\Models\Post;
use App\Models\User;

class PostPolicy
{
    /**
     * Create a new policy instance.
     */

     //Esta funcion sirve para verificar si la persona que esta modificando algo de la pagina es relamente el 
     // en caso de que no lo sea la funcion retorna false y no dejara que el usuario interactue con modificaciones
    public function author(User $user, Post $post )
    {
        if ($user->id == $post->user->id) {
            return true;
        }else
        {
            return false;
        }
   
    }

    // Esta funcion sirve para verificar si una publicacion especifica esta publicada o no basandose en el valor de su estado ('estatus') Retorna 'true' Si la publicacion esta publicada
    // y false si no lo esta puede ser util para realizar comprobaciones antes de mostrar o permitir ciertas acciones en la relacion con publicaciones dentro de una aplicacion web
    public  function published(?User $user, Post $post){
        if ($post->status == 2) {
            return true;
        }else
        {
            return false;
        }
    }
    public function __construct()
    {
        
    }
}
