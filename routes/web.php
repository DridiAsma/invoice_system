<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\InvoicesController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Auth::routes();
Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::resource('index', [InvoicesController::class]);
Route::resource('index', 'App\Http\Controllers\InvoicesController');
Route::resource('section', 'App\Http\Controllers\SectionsController');
Route::get('/{page}', 'AdminController@index');



