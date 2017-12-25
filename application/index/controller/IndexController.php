<?php
namespace app\index\controller;

use app\index\controller\BaseController;
use app\common\model\Ad;
use app\common\model\Cate;
use app\common\model\Friend;
use app\common\model\SeoSet;
use app\common\model\Setting;
use think\Controller;
use think\Request;

class IndexController extends BaseController {
    public function index() {
        $list_ad = Ad::getAdsByPosition(1);
        $seo = SeoSet::getSeoByNavId(1);
        return $this->fetch('', compact('list_ad','seo'));
    }
}
