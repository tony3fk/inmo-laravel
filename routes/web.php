<?php

use App\Http\Controllers\InmueblesController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('inmuebles', 'InmueblesController');
Route::resource('inmuebles/index/create ', 'InmueblesController@create');
Route::resource('inmuebles/index ', 'InmueblesController@show');
Route::resource('inmuebles/index/{index}/edit', 'InmueblesController@edit');
