<?php

use App\Http\Controllers\InmueblesController;
use Illuminate\Support\Facades\Route;
use App\User;
use App\Role;
use App\Permission;

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

Route::resource('/role', 'RoleController')->names('role');

Route::resource('inmuebles', 'InmueblesController');









// Route::get('/test', function () {

// return Role::create([
//     'name' => 'Admin',
//     'slug' => 'admin',
//     'description' => 'Administrator',
//     'full-access' => 'yes'
// ]);

// return Role::create([
//     'name' => 'Guest',
//     'slug' => 'guest',
//     'description' => 'Guest',
//     'full-access' => 'no'
// ]);
// return Role::create([
//     'name' => 'Test',
//     'slug' => 'test',
//     'description' => 'Test',
//     'full-access' => 'no'
// ]);

// $user = User::find(1);
//$user->roles()->attach([1, 3]);//agrega
//$user->roles()->detach([3]);//elimina
// $user->roles()->sync([1, 2]); //mantiene los que se le digan y hace detach del resto, no repite registros
// return $user->roles;

// return Permission::create([
//     'name' => 'List user',
//     'slug' => 'user.index',
//     'description' => 'can list permissions'

// ]);

// $role = Role::find(2);
// $role->permissions()->sync([1, 2]);
// return $role->permissions;
// });

// Route::resource('users', 'UserController');
