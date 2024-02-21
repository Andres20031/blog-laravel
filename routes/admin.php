<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\UserController;

Route::get('dash',[HomeController::class, 'index'])->name('admin.home');

Route::resource('users', UserController::class)->middleware('can:admin.users.index')->only(['index', 'edit', 'update'])->names('admin.users');

// Esta ruta me permite ir a el controlador de categorias 
Route::resource('categories', CategoryController::class)->names('admin.categories');

//Esta ruta me permite ir a el controlador de etiquetas
Route::resource('tags', TagController::class)->names('admin.tags');

// Esta ruta me permite ir a el controlador de posts
Route::resource('posts', PostController::class )->names('admin.posts');