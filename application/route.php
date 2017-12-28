<?php

use think\Route;
Route::pattern([
    'id'    =>  '\d+',
]);
Route::rule('/','index/index','get');
//new detail
Route::get('new/:id','article/read');
//download app
Route::get('app','app/index');
//news list
Route::get('news','index/Article/index');
//new
Route::get('new/:id','Article/read');






