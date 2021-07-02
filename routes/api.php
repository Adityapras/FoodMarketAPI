<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\FoodController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\SurahController;
use App\Http\Controllers\API\MidtransController;
use App\Http\Controllers\API\TransactionController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\WebAdmin\Master\MenuController;

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
Route::prefix('menu')->group(function () {
    Route::get('/', [MenuController::class, 'getMenuListOriginal']);
    Route::post('/update', [MenuController::class, 'update']);
    Route::post('/store', [MenuController::class, 'store']);
    Route::post('/delete/{id}', [MenuController::class, 'delete']);
});


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
