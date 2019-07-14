<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');
Route::get('/balik-kalimat', 'HomeController@balikKalimat')->name('balik-kalimat');
Route::post('/balik-kalimat-proses', 'HomeController@balikKalimatProses')->name('balik-kalimat-proses');
Route::get('/test-logika', 'HomeController@testLogika')->name('test-logika');
Route::post('/test-logika-proses', 'HomeController@testLogikaProses')->name('test-logika-proses');

Route::group([
    'middleware' => ['cors','api'],
    'prefix' => 'api'
], function ($router) {
    Route::post('register', 'APIController@register');
    Route::post('login', 'APIController@login');
    Route::group(['middleware' => 'jwt-auth'], function () {
        Route::post('get_user_details', 'APIController@get_user_details');
        Route::get('refresh', 'APIController@refresh');
        Route::get('logout', 'APIController@logout');
        // Route::resource('book/{id}/update', 'BookController@update');
        Route::resource('book', 'BookController');
        Route::resource('employee', 'EmployeeController');
    });
});