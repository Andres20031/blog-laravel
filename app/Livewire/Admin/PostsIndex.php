<?php

namespace App\Livewire\Admin;
use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;

class PostsIndex extends Component
{
    use WithPagination;

    protected $paginationTheme = "bootstrap";
    public $search;

    public function updatingSearch()
    {
        $this->resetPage();
    }

    // esta funcion obtiene una lista paginada  de la publicaciones del usuario autenticado que coinciden 
    // con el criterio de busqueda especificado y la devuelve a la vista correspondiente para ser renderizada en la interfaz de usuario.
    // es comun en aplicaciones web para la gestion y visualizacion de recursos, como las publicaciones de un usuario en un panel de administracion
    public function render()
    {
        $posts = Post::where('user_id', auth()->user()->id)
            ->where('name', 'LIKE', '%' . $this->search . '%')
            ->latest()
            ->paginate();

        return view('livewire.admin.posts-index', compact('posts'));
    }
}
                            
