<?php

use think\Route;


Route::pattern([
    'id'    =>  '\d+',
]);
Route::rule('/','index/index/index','get');
//new detail
Route::get('new/:id','index/article/read');
//download app
Route::get('app','index/app/index');
//news list
Route::get('news','index/Article/index');
//new
Route::get('new/:id','index/Article/read');







