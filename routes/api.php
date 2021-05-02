<?php

/*
 *  Primary Maintainer: Raymond Chow
 */

use App\Http\Controllers\Api\AudioController;
use App\Http\Controllers\Api\HistoryController;
use App\Http\Controllers\Audio\EditRequestController;
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

/**
 * Keep this list route as a POST request!
 * This avoids the need to serialize the tags array into a format that is accepted in a query string.
 */
Route::post('/audio/list', [AudioController::class, 'list']);

Route::get('/audio/requests/get-diff', [EditRequestController::class, 'diff']);
Route::get('/audio/history/get-diff', [HistoryController::class, 'diff']);
Route::post('/audio/requests/set-status', [EditRequestController::class, 'setRequestStatus']);
