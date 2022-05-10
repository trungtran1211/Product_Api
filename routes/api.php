<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

    //Route::get('/', 'LoginCustomController@getlogincustom');
    Route::post('login1', 'LoginCustomController@postlogincustom');
    Route::get('logout1', 'LoginCustomController@getLogout1');
    Route::get('userinfo', 'LoginCustomController@getUserInfo');
    Route::post('regrister', 'LoginCustomController@postregrister');
