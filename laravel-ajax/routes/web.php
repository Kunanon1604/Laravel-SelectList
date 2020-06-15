<?php

Route::get('/','HomeController@index')->name('home');

Route::post('/find/district','HomeController@district')->name('get_district');
Route::post('/find/subdistrict','HomeController@subdistrict')->name('get_subdistrict');