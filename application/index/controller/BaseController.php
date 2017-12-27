<?php

namespace app\index\controller;

use app\common\model\Ad;
use app\common\model\Base;
use app\common\model\Func;
use app\common\model\SeoSet;
use think\Controller;
use think\Request;

class BaseController extends Controller {
    public function __construct(Request $request = null) {
        parent::__construct($request);
       $which_nav = [
           'is_index'=>1,
           'is_app'=>0,
           'is_news'=>0,
           'is_about'=>0,
       ];
       $this->assign('which_nav',$which_nav);

    }




}
