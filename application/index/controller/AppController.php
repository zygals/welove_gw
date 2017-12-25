<?php

namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Base;
use app\common\model\Host;
use app\common\model\SeoSet;
use think\Controller;
use think\Db;
use think\Request;

class AppController extends BaseController {
    public function __construct(Request $request = null) {
        parent::__construct($request);
        $which_nav = [
            'is_index'=>0,
            'is_app'=>1,
            'is_news'=>0,
            'is_about'=>0,
        ];
        $this->assign(['which_nav'=>$which_nav]);
    }

    public function index(Request $request) {

        return $this->fetch('', compact(''));
    }



}
