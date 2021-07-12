<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\FoodController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\SurahController;
use App\Http\Controllers\API\MidtransController;
use App\Http\Controllers\API\TransactionController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\API\Web\Master\MenuController;
use App\Http\Controllers\API\Web\Master\FoodController as FoodBacksideApi;
use App\Http\Controllers\API\Web\Master\UserController as UsersBacksideApi;
use App\Http\Controllers\API\Web\TransactionsController as TransactionsBacksideApi;




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

Route::middleware('auth:sanctum')->group(function () {
    Route::get('user', [UserController::class, 'fetch']);
    Route::post('user', [UserController::class, 'updateProfile']);
    Route::post('user/photo', [UserController::class, 'updatePhoto']);
    Route::post('logout', [UserController::class, 'logout']);
    //checkout payment
    Route::post('checkout', [TransactionController::class, 'checkout']);
    //transactions
    Route::get('transaction', [TransactionController::class, 'all']);
    Route::post('transaction/{id}', [TransactionController::class, 'update']);
});

Route::post('login', [UserController::class, 'login']);
Route::post('register', [UserController::class, 'register']);
Route::get('food', [FoodController::class, 'all']);


//midtrans
Route::post('midtrans/callback', [MidtransController::class, 'callback']);

//API AL-Qur'an
Route::get('alquran/surah', [SurahController::class, 'index']);
Route::get('alquran/surah/{number}', [SurahController::class, 'get_detail_surah']);

Route::get('test', [TestController::class, 'index']);
Route::post('test/store', [TestController::class, 'store']);
Route::get('test/edit/{id}', [TestController::class, 'getTest']);
Route::get('test/show/{id}', [TestController::class, 'getTest']);
Route::put('test/update/{id}', [TestController::class, 'update']);
Route::delete('test/delete/{id}', [TestController::class, 'destroy']);

Route::middleware('auth:sanctum')->group(function () {
    // api for web admin
    Route::prefix('backside')->group(function () {
        Route::get('/menu', [MenuController::class, 'getMenuListOriginal']);
        Route::get('/menu-recursive', [MenuController::class, 'getMenuList']);
        Route::post('/menu/update', [MenuController::class, 'update']);
        Route::post('/menu/store', [MenuController::class, 'store']);
        Route::post('/menu/delete/{id}', [MenuController::class, 'delete']);
        Route::get('/food', [FoodBacksideApi::class, 'index']);
        Route::post('/food/store', [FoodBacksideApi::class, 'store']);
        Route::post('/food/update', [FoodBacksideApi::class, 'update']);
        Route::post('/food/delete/{id}', [FoodBacksideApi::class, 'destroy']);
        Route::get('/users', [UsersBacksideApi::class, 'index']);
        Route::post('/users/store', [UsersBacksideApi::class, 'store']);
        Route::post('/users/update', [UsersBacksideApi::class, 'update']);
        Route::post('/users/delete/{id}', [UsersBacksideApi::class, 'destroy']);
        Route::get('/transactions', [TransactionsBacksideApi::class, 'index']);
        Route::post('/transactions/update', [TransactionsBacksideApi::class, 'update']);
        Route::post('/transactions/delete/{id}', [TransactionsBacksideApi::class, 'destroy']);

    });
});
Route::post('backside/login', [UserController::class, 'login']);

