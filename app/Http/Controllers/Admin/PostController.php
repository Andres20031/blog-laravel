<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Http\Requests\PostRequest;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.posts.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $tags = Tag::all();
        return view('admin.posts.create', compact('categories','tags'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request)
    {
        $post = Post::create($request->all());
    
        if ($request->file('file')) {
            $file = $request->file('file');
    
            // Obtener el nombre del archivo
            $fileName = $file->getClientOriginalName();
    
            // Almacenar en la carpeta storage/app/public/posts
            $file->storeAs('public/posts', $fileName);
    
            // Crear la relación en la base de datos con la ruta original
            $post->image()->create([
                'url' => 'public/posts/' . $fileName
            ]);
    
            // Copiar el archivo a la carpeta public/storage/posts
            Storage::copy('public/posts/' . $fileName, 'public/storage/posts/' . $fileName);
        }
    
        if ($request->tags) {
            $post->tags()->attach($request->tags);
        }
    
        return redirect()->route('admin.posts.edit', $post);
    }

    /**     
     * Display the specified resource.
     */
    public function show(Post $posts)
    {
        return view('admin.posts.show',compact('posts'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post )
        {


            $this->authorize('author' , $post);
            $categories = Category::pluck('name', 'id');
            $tags = Tag::all();           
            return view('admin.posts.edit', compact('post','categories','tags'));
        }

    /**
     * Update the specified resource in storage.
     */
    public function update(PostRequest $request, Post $post)
    {
        $this->authorize('author' , $post);
        $post->update($request->all());

        if ($request->file('file')) {
             $url =  Storage::put('public/posts', $request->file('file'));
           
             if($post->image){
               Storage::delete($post->image->url);
               $post->image->update([
                'url' => $url
               ]);
             }else
             {
                $post->image()->create([
                    'url' => $url
                ]);
             }
        }
        return redirect()->route('admin.posts.edit', $post )->with('info', 'El post Se ha actualizado');
    }

    /** 
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {   
        $this->authorize('author' , $post);
        $post->delete();
        return redirect()->route('admin.posts.index')->with('info', 'El post Se ha eliminado Correctamente');
    }
}
