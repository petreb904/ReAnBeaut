<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/', function () {
    return view('index');
    
});

Route::get('/login', function () {
    return view('login');
    
});
Route::get('/signup ', function () {
    return view('signup ');
    
});
Route::get('/footer', function () {
    return view('footer');
    
});




Route::get('/css/style.css', function () {
    $path = resource_path('css/style.css');
    if (!File::exists($path)) {
        abort(404);
    }

    return response()->file($path, [
        'Content-Type' => 'text/css',
    ]);
});



Route::get('/js/program.js', function () {
    $path = resource_path('/js/program.js');
    if (!File::exists($path)) {
        abort(404);
    }

    return response()->file($path, [
        'Content-Type' => 'text/js',
    ]);
});



Route::get('/kepek/{filename}', function ($filename) {
    $path = base_path('kepek/' . $filename);

    if (!File::exists($path)) {
        abort(404);
    }

    return response()->file($path);
});



