<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    
    // la linea fillable se utiliza en modelos de eloquent para especificar que atributos pueden ser asignados masivamente  los atributos incluidos en el array son aquellos que se pueden asignar masivamente
    protected  $fillable = ['name', 'slug'] ;

    // Esta funcion en un modelo eloquent de laravel utiliza para personalizar el nombre de el atributo que se utiliza para buscar modelos cuando se realizan  consultas en la rutas 
    //por defecto  laravel asume que el identificador del modelo en la rutas es la columna  id sin embargo a traves de getroutekeyname()
    // puede especificar un nombre  de columna diferente para buscar el modelo
    public function getRouteKeyName()
    {
        
        return "slug";
    }
    
    //la funcion posts  es un modelo eloquent de laravel define un relacion de uno a muchos entre dos modelos en este caso la funcion
    //esta indicando que el modelo actual donde  se encuentre tiene muchas instancias asociadas de otro modelo llamado post esta relacion se base en la convecion  de que el modelo
    //actual contiene varios registros relacionados a traves de la relacion hasmany
    public function posts(){
        return $this->hasMany(Post::class); 
    
     }
}
