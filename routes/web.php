<?php

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

/*Route::get('/', function () {
    return view('welcome');
});
*/
Route::get('/', 'HomePageController@index');
Route::get('/listing', 'ListingPageController@index');

Route::get('/details', 'DetailsPageController@index');

Route::group(['prefix'=>'back','middleware'=>'auth'],function(){

Route::get('/','Admin\DashboardController@index');
Route::get('/category','Admin\CategoryController@index');
Route::get('/category/create','Admin\CategoryController@create');
Route::get('/category/edit','Admin\CategoryController@edit');
Route::get('/permission','Admin\PermissionController@index');
Route::get('/permission/create','Admin\PermissionController@create');
Route::post('/permission/store','Admin\PermissionController@store');
Route::get('/permission/edit/{id}',['uses'=>'Admin\PermissionController@edit','as'=>'permission-edit']);

Route::put('/permission/edit/{id}',['uses'=>'Admin\PermissionController@update','as'=>'permission-update']);
Route::delete('/permission/delete/{id}',['uses'=>'Admin\PermissionController@destroy','as'=>'permission-delete']);

Route::get('/roles','Admin\RoleController@index');
Route::get('/roles/create','Admin\RoleController@create');
Route::post('/roles/store','Admin\RoleController@store');
Route::get('/roles/edit/{id}',['uses'=>'Admin\RoleController@edit','as'=>'role-edit']);

Route::put('/roles/edit/{id}',['uses'=>'Admin\RoleController@update','as'=>'role-update']);
Route::delete('/roles/delete/{id}',['uses'=>'Admin\RoleController@destroy','as'=>'roles-delete']);

Route::get('/author','Admin\AuthorController@index');
Route::get('/author/create','Admin\AuthorController@create');
Route::post('/author/store','Admin\AuthorController@store');
Route::get('/author/edit/{id}',['uses'=>'Admin\AuthorController@edit','as'=>'author-edit']);

Route::put('/author/edit/{id}',['uses'=>'Admin\AuthorController@update','as'=>'author-update']);
Route::delete('/author/delete/{id}',['uses'=>'Admin\AuthorController@destroy','as'=>'author-delete']);




});






Route::get('about/','AboutController@about');



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');