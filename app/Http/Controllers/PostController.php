<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use App\Models\Comment;
use App\Models\Comments;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;
use Illuminate\Pagination\LengthAwarePaginator;

class PostController extends Controller
{

    public function index()
    {
        $users = Auth::user();
        $posts = Post::where('status', 2)->latest('id')->paginate(10);

        return View('LTE.index', compact('posts', 'users'));
    }
    public function show(Post $post)
    {
        $comentarios = $post->comments;
        $comentarios = Post::find($post->id)->comments;
        $user = Auth::user();
        // Verificar si el usuario ha iniciado sesión
        if (!$user) {
            // El usuario no ha iniciado sesión, redirige a la página de inicio de sesión
            return redirect()->route('login')->with('info','Debes iniciar sesión para acceder a esta página.');
        }

        $this->authorize('published', $post);
        $similares = Post::where('category_id', $post->category_id)
            ->where('status', 2)
            ->where('id', '!=', $post)
            ->latest('id')
            ->take(4)
            ->get();

        return view('LTE.show', compact('post', 'similares', 'user', 'comentarios'));
    }
    public function category(Category $category)
    {
        $posts   = Post::where('category_id', $category->id)
            ->where('status', 2)
            ->latest('id')
            ->paginate(6);
        return view('LTE.category', compact('posts', 'category'));
    }
    public function tag(Tag $tag)
    {
        $posts =  $tag->posts()->where('status', 2)->latest('id')->paginate(4);

        return view('posts.tag', compact('posts', 'tag'));
    }
    public function comment(Request $request, Post $post)
    {
        $user = Auth::user();
        $comentarios = Post::find($post->id)->comments;
        $request->validate([
            'comment' => 'required|string'
        ]);

        Comments::create([
            'name' => $request->input('comment'),
            'user_id' => $user->id,
            'post_id' => $post->id,
        ]);

        return redirect()->route('posts.show', compact('post', 'comentarios'));
    }

    public function commentshow(Post $post)
    {
        $comments = $post->comments()->paginate(6);
        $user = Auth::user();
        $this->authorize('published', $post);
        $similares = Post::where('category_id', $post->category_id)
            ->where('status', 2)
            ->where('id', '!=', $post->id)
            ->latest('id')
            ->take(4)
            ->get();
        
        return view('LTE.show', compact('comments', 'similares', 'post', 'user'));
    }
    
}
