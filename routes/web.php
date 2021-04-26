<?php

use App\Http\Controllers\Audio\EditRequestController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Audio\SummaryController;
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

Route::get('/', [HomeController::class, 'get']);

Route::post('/auth/logout', [\App\Http\Controllers\Auth\LogoutController::class, 'post']);

Route::get('/auth/login', [LoginController::class, 'get']);
Route::post('/auth/login', [LoginController::class, 'post']);

Route::get('/auth/register', [RegisterController::class, 'get']);
Route::post('/auth/register', [RegisterController::class, 'post']);

Route::get('/audio/{id}', [SummaryController::class, 'get']);

Route::get('/audio/{id}/request-edit', [EditRequestController::class, 'create']);
Route::post('/audio/{id}/request-edit', [EditRequestController::class, 'store']);
