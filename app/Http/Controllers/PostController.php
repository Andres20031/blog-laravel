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


class PostController extends Controller
{

    public function index()
    {
        $users = Auth::user();
        $posts = Post::where('status', 2)->latest('id')->paginate(8);

        return View('posts.index', compact('posts', 'users'));
    }
    public function show(Post $post)
    {

        $user = Auth::user();
        $this->authorize('published', $post);
        $similares = Post::where('category_id', $post->category_id)
            ->where('status', 2)
            ->where('id', '!=', $post)
            ->latest('id')
            ->take(4)
            ->get();

        return view('posts.show', compact('post', 'similares', 'user'));
    }
    public function category(Category $category)
    {
        $posts   = Post::where('category_id', $category->id)
            ->where('status', 2)
            ->latest('id')
            ->paginate(6);
        return view('posts.category', compact('posts', 'category'));
    }
    public function tag(Tag $tag)
    {
        $posts =  $tag->posts()->where('status', 2)->latest('id')->paginate(4);

        return view('posts.tag', compact('posts', 'tag'));
    }
    public function comment(Request $request, Post $post, User $users)
    {
        $user = Auth::user();

        $request->validate([
            'name' => 'required|string'
        ]);

        $comment = Comments::create([
            'name' => $request->input('name'),
            'user_id' => $user->id,
            'post_id' => $post->id,
        ]);

        return 'hola';
    }
}
