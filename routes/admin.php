<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;


Route::get('/',[HomeController::class, 'index'])->name('admin.home');

Route::resource('/admin/categories', CategoryController::class)->names('admin.categories.index');    