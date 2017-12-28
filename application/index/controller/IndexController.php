<?php
namespace app\index\controller;

use app\common\model\Nav;
use app\common\model\Ad;

class IndexController extends BaseController {

    public function index() {

        $ad['logo'] = Ad::getAdByPosition(1);
        $ad['bg1'] = Ad::getAdByPosition(2);
        $ad['mobile'] = Ad::getAdByPosition(3);
        $ad['bg1_wenzi'] = Ad::getAdByPosition(4);
        $ad['bg1_app'] = Ad::getAdByPosition(5);
        $ad['bg2'] = Ad::getAdByPosition(6);
        $ad['bg2_wenzi'] = Ad::getAdByPosition(7);
        $ad['bg3'] = Ad::getAdByPosition(8);
        $ad['bg3_wenzi'] = Ad::getAdByPosition(9);
        $ad['bg4'] = Ad::getAdByPosition(10);
        $ad['bg4_wenzi'] = Ad::getAdByPosition(11);
        $seo = Nav::findOne(1);


        return $this->fetch('', compact('ad','seo'));
    }
}
