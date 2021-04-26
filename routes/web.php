<?php

/*
 * Primary Maintainers: Raymond Chow, Alex Benasutti, Alex Viola
 */

use App\Http\Controllers\Admin\EditRequestApprovalController;
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

Route::middleware('auth')->group(function () {
    Route::get('/audio/{id}/request-edit', [EditRequestController::class, 'create']);
    Route::post('/audio/{id}/request-edit', [EditRequestController::class, 'store']);

    Route::get('/audio/{id}/requests', [EditRequestController::class, 'all']);

    // Route::post('/audio/{id}/requests/{req_id}', [EditRequestController::class, 'look']);
});

/*Route::middleware(['auth', 'admin'])->group(function () {
    Route::get('/admin/open-requests', [EditRequestApprovalController::class, 'get']);
});*/
