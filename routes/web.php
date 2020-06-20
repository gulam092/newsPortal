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


});

Route::get('about/','AboutController@about');



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');