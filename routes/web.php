<?php


use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\OpdController;
use App\Http\Controllers\Admin\PekerjaanController;
use App\Http\Controllers\Admin\PendidikanController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\SurveiController;
use App\Http\Controllers\Admin\UsiaController;
use App\Http\Controllers\Admin\WaktuController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SearchController;
use Illuminate\Support\Facades\Auth;
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

Auth::routes();

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/survei', [HomeController::class, 'survei'])->name('survei');
Route::post('/survei', [HomeController::class, 'store'])->name('kirim-survei');

Route::prefix('admin')->middleware(['auth'])->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('pendidikan/get_data/', [PendidikanController::class, 'getData']);
    Route::get('opd/get_data/', [OpdController::class, 'getData']);
    Route::get('pekerjaan/get_data/', [PekerjaanController::class, 'getData']);
    Route::get('survei/get_data/', [SurveiController::class, 'getData']);
    Route::get('usia/get_data/', [UsiaController::class, 'getData']);
    Route::get('waktu/get_data/', [WaktuController::class, 'getData']);

    Route::resource('pendidikan', PendidikanController::class);
    Route::resource('pekerjaan', PekerjaanController::class);
    Route::resource('survei', SurveiController::class);
    Route::resource('opd', OpdController::class);
    Route::resource('user', UserController::class);
    Route::resource('usia', UsiaController::class);
    Route::resource('waktu', WaktuController::class);
    Route::resource('roles', RoleController::class);
});
