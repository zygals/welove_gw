<?php

namespace app\index\controller;

use app\common\model\Ad;
use app\common\model\Recruit;
use app\common\model\SeoSet;
use think\Controller;
use think\Request;

class AboutController extends BaseController
{
    public function __construct(Request $request = null) {
        parent::__construct($request);
        $row_ad = Ad::getAdByPosition(5);
        $seo = SeoSet::getSeoByNavId(5);
        $which_nav = [
            'is_index'=>0,
            'is_app'=>0,
            'is_news'=>0,
            'is_about'=>1,
        ];
        $this->assign(['row_ad'=>$row_ad,'seo'=>$seo,'which_nav'=>$which_nav]);
    }

    public function index()
    {
       // $row_ad = Ad::getAdByPosition(5);
        return $this->fetch('');
    }

    public function service()
    {

        return $this->fetch();
    }

    public function law()
    {
        return $this->fetch();
    }

    public function job()
    {
        $list_recruit=Recruit::getList([],['st'=>1]);
        return $this->fetch('',['list_recruit'=>$list_recruit]);
    }

    public function contact()
    {
        return $this->fetch();
    }


}
