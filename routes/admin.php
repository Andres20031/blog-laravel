<?php
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\RoleController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\UserController;

    
Route::get('dash',[HomeController::class, 'index'])->middleware('can:admin.home')->name('admin.home');

Route::resource('users', UserController::class)->middleware('can:admin.users.index')->only(['index', 'edit', 'update'])->names('admin.users');

Route::resource('roles', RoleController::class)->names('admin.roles');

// Esta ruta me permite ir a el controlador de categorias 
Route::resource('categories', CategoryController::class)->middleware('can:admin.categories.index')->names('admin.categories');

//Esta ruta me permite ir a el controlador de etiquetas
Route::resource('tags', TagController::class)->middleware('can:admin.tags.index')->names('admin.tags');

// Esta ruta me permite ir a el controlador de posts
Route::resource('posts', PostController::class )->middleware('can:admin.posts.index')->names('admin.posts');
    