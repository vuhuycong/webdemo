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

Route::get('/', function () {
    return view('welcome');
});

Route::get('index',[
    'as' => 'trang-chu',
    'uses' => 'Page@getIndex'
]);

Route::get('loai-san-pham/{type}',[
    'as' => 'loaisanpham',
    'uses' => 'Page@getLoaiSp'
]);

Route::get('chi-tiet-san-pham/{id}',[
    'as' => 'chitietsanpham',
    'uses' => 'Page@getChitiet'
]);

Route::get('lien-he',[
    'as' => 'lienhe',
    'uses' => 'Page@getLienhe'
]);

Route::get('gioi-thieu',[
    'as' => 'gioithieu',
    'uses' => 'Page@getGioithieu'
]);

Route::get('add-to-cart/{id}',[
    'as' => 'themgiohang',
    'uses' => 'Page@getAddtoCart'
]);

Route::get('del-cart/{id}',[
    'as'=>'xoagiohang',
    'uses'=>'Page@getDelItemCart'
]);

Route::get('dat-hang',[
    'as'=>'dathang',
    'uses'=>'Page@getCheckout'
]);

Route::post('dat-hang',[
   'as'=>'dathang',
   'uses'=>'Page@postCheckout'
]);




