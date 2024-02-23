<?php

use App\Http\Controllers\Admin\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;


Route::get('/',[PostController::class, 'index'])->name('posts.index');

Route::get('postsdash/{post}', [PostController::class,'show'])->name('posts.show');

Route::get('/category/{category}', [PostController::class, 'category'])->name('posts.category');

Route::get('tag/{tag}', [PostController::class, 'tag'])->name('posts.tag');

Route::post('postsdashcomment/{post}/{user}', [PostController::class, 'comment'])->name('post.comment');

Route::get('postscomment/{post}', [PostController::class, 'commentshow'])->name('post.commentshow');

Route::get('/admin' , function(){
    return view('posts.admin');
});

    
Route::middleware([ 
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
