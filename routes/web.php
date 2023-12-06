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
use App\Http\Controllers\UserController;

//show data
Route::get('/', [\App\Http\Controllers\UserController::class, 'index'])->name('index');

//proses add data
Route::post('/store-user', [UserController::class, 'store']);


//called create page
Route::get('/create-user', function () {
    return view('create');
});

Route::get('/show-users', [ShowUserController::class, 'index']);