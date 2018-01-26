<?php

namespace app\common\model;

use think\Model;

class Ad extends model {

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常', 2 => '不显示'];
        return $status[$value];
    }

    public function getNewWindowAttr($value) {
        $status = [0 => '否', 1 => '是'];
        return $status[$value];
    }

    public function getPositionAttr($value) {
        $status = [1 => 'logo', 2 => '首页图1－背景', 3 => '首页图1－手机', 4 => '首页图1－美工字', 5 => '首页图1－APP二维码',6=>'首页图2－背景',7 => '首页图2－美工字',8 => '首页图3－背景',9 => '首页图3－美工字',10 => '首页图4－背景',11 => '首页图4－美工字',12 => '下载APP－背景',13 => '下载APP－手机',14 => '下载APP－美工字',15 => '下载APP－苹果下载',16=> '下载APP－案桌下载',17 => '下载APP－APP二维码',18 => '关注我们－wx二维码',19 => '关注我们－weibo二维码',20 => '新闻报道－banner',21 => '关于我们－banner',22 => '关于我们－左侧奖状'
        ];
        return $status[$value];
    }

    public static function getPositions() {
        $arr = [
            1 => (object)[
                'id' => 1,
                'name' => 'logo',
                'width' => ' 110',
                'height' => '68',
            ],
            2 => (object)[
                'id' => 2,
                'name' => '首页图1－背景',
                'width' => '1920',
                'height' => '700',
            ],
            3 => (object)[
                'id' => 3,
                'name' => '首页图1－手机',
                'width' => '384',
                'height' => '619',
            ],
            4 => (object)[
                'id' => 4,
                'name' => '首页图1－美工字',
                'width' => '676',
                'height' => '139',
            ],
            5 => (object)[
                'id' => 5,
                'name' => '首页图1－APP二维码',
                'width' => ' 153',
                'height' => '153',
            ],
            6 => (object)[
                'id' => 6,
                'name' => '首页图2－背景',
                'width' => '1920',
                'height' => '700',
            ],
            7 => (object)[
                'id' => 7,
                'name' => '首页图2－美工字',
                'width' => '499',
                'height' => '166',
            ],
            8 => (object)[
                'id' => 8,
                'name' => '首页图3－背景',
                'width' => '1920',
                'height' => '700',
            ],
            9 => (object)[
                'id' => 9,
                'name' => '首页图3－美工字',
                'width' => '210',
                'height' => '274',
            ],
            10 => (object)[
                'id' => 10,
                'name' => '首页图4－背景',
                'width' => '1920',
                'height' => '700',
            ],
            11 => (object)[
                'id' => 11,
                'name' => '首页图4－美工字',
                'width' => '731',
                'height' => '160',
            ],
            12 => (object)[
                'id' => 12,
                'name' => '下载APP－背景',
                'width' => '1920',
                'height' => '800',
            ],
            13 => (object)[
                'id' => 13,
                'name' => '下载APP－手机',
                'width' => '524',
                'height' => '706',
            ],
            14 => (object)[
                'id' => 14,
                'name' => '下载APP－美工字',
                'width' => '580',
                'height' => '104',
            ],
            15 => (object)[
                'id' => 15,
                'name' => '下载APP－苹果下载',
                'width' => '185',
                'height' => '60',
            ],
            16=> (object)[
                'id' =>16,
                'name' => '下载APP－案桌下载',
                'width' => '185',
                'height' => '60',
            ],
            17 => (object)[
                'id' => 17,
                'name' => '下载APP－APP二维码',
                'width' => '153',
                'height' => '153',
            ],
            18 => (object)[
                'id' =>18,
                'name' => '关注我们－wx二维码',
                'width' => '153',
                'height' => '153',
            ],
           19 => (object)[
                'id' => 19,
                'name' => '关注我们－weibo二维码',
               'width' => '153',
               'height' => '153',
            ],
            20 => (object)[
                'id' => 20,
                'name' => '新闻报道－banner',
                'width' => '1920',
                'height' => '400',
            ],
            21 => (object)[
                'id' => 21,
                'name' => '关于我们－banner',
                'width' => '1920',
                'height' => '400',
            ],
            22 => (object)[
                'id' => 22,
                'name' => '关于我们－左侧奖状',
                'width' => '480 ',
                'height' => '480',
            ],

        ];
        return $arr;
    }
    public static function getAdByPosition($position) {
        $where = ['st' => ['=', 1], 'position' => $position];
        $row_ = self::where($where)->order('create_time desc')->find();
        if (!$row_) {
            return (object)[
                'img' => '',
                'url'=>'',
                'new_window'=>''
            ];
        }
        return $row_;
    }

    public static function getAdsByPosition($position) {
        $where = ['st' => ['=', 1], 'position' => $position];
        $list_ = self::where($where)->order('create_time desc')->select();
        return $list_;
    }

    public static function getList($data=[]) {
        $where = ['st' => ['<>', 0]];
        $order = 'create_time desc';
        if (!empty($data['position'])) {
            $where['position'] = $data['position'];
        }
        if (!empty($data['title'])) {
            $where['title'] = ['like', '%' . $data['title'] . '%'];
        }
        if (!empty($data['paixu'])) {
            $order = 'ad.' . $data['paixu'] . ' asc';
        }
        if (!empty($data['paixu']) && !empty($data['sort_type'])) {
            $order = 'ad.' . $data['paixu'] . ' desc';
        }
        $list_ = self::where($where)->order($order)->paginate();
        return $list_;
    }





    public static function urlOpen($url, $new_window) {
        $str = '';
        if (!empty($url)) {
            $str .= "href='$url'";
            if ($new_window == '是') {
                $str .= " target='_blank'";
            }
        }


        return $str;
    }

}
