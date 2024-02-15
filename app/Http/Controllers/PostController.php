<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\View;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::where('status', 2)->latest('id')->paginate(8);
        
        return View('posts.index', compact('posts'));
    }
    public function show(Post $post){

        $similares = Post::where('category_id',$post->category_id)
                      ->where('status',2)
                      ->where('id','!=', $post)
                      ->latest('id')
                      ->take(4)
                      ->get();
        return view('posts.show', compact('post', 'similares'));
    }
}