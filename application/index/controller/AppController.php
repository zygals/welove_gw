<?php

namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Base;
use app\common\model\Host;
use app\common\model\SeoSet;
use think\Controller;
use think\Db;
use think\Request;

class AppController extends Controller {
    public function index(Request $request) {

        return $this->fetch('', compact(''));
    }



}
