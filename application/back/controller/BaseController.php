<?php
namespace app\back\controller;
use think\Controller;
use think\Request;

class BaseController extends Controller {

		public function __construct() {

			parent::__construct();
			$request = Request::instance();
			$current_request=strtolower($request->controller()."/".$request->action());

			$not_logins=array(
				'admin/login',
				'admin/sigin',
				'admin/logout',
				'admin/captcha'
			);
			//echo $current_request;exit;
			if(!session('admin_weilai') && !in_array($current_request,$not_logins)){
				$this->redirect("admin/login");
			}

		}


		public function findById($id,$model){
            if(empty($id) || !is_numeric($id)){
                $this->error('id参数有误');
            }
            $row = $model->find($id);
            if(!$row){
                $this->error('对象不存在');
            }
            return $row;
        }
        public function deleteById($id,$model){
            if(empty($id) || !is_numeric($id)){
                $this->error('id参数有误');
            }
            $row = $model->find($id);
            if(!$row){
                $this->error('对象不存在');
            }
            if($row->delete()){
                return true;
            }
            return false;
        }
        protected function deleteStatusById($id,$model){
            if(empty($id) || !is_numeric($id)){
                $this->error('id参数有误');
            }
            $row = $model->find($id);
            if(!$row){
                $this->error('对象不存在');
            }
            $row->st=0;
            if($row->save()){
                return true;
            }
            return false;
        }
        protected function saveById($id,$model,$data){
            if(empty($id) || !is_numeric($id)){
                $this->error('id参数有误');
            }
            $row = $model->find($id);
            if(!$row){
                $this->error('对象不存在');
            }
            if($row->save($data)){
                return true;
            }
            return false;
        }
        protected function dealImg($file,$type){
            $upload_dir = ROOT_PATH . 'public/upload/'.$type.'/' ;
            $info = $file->move($upload_dir);
            if($info){
                // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                $url_path = "/upload/$type/".$info->getSaveName();
            }else{
                // 上传失败获取错误信息
                $this->error($file->getError());
            }

            return ['save_url_path'=>$url_path,$info,'info'=>$info];
        }
        //对图片处理
        protected function thumbImg($type,$imgInfo,$width,$height){
            $open_img = ROOT_PATH . 'public'.$imgInfo['save_url_path'];
         //  dump($path);exit;
            $deliter = explode('.',$imgInfo['save_url_path']);
            $save_thumb_img = ROOT_PATH . 'public'.$deliter[0].'_mobile.'.$deliter[1];

            $image = \think\Image::open($open_img);
          //  $image->crop($width,$height)->save($save_thumb_img);
            $image->thumb($width,$height,\think\Image::THUMB_CENTER)->save($save_thumb_img);
            $save_thumb_img_url = '/upload/'.$type.'/'.explode('.',$imgInfo['info']->getSaveName())[0].'_mobile.'.$deliter[1];
            return ['img_mobile'=>$save_thumb_img_url];
        }
        public function deleteImg($path){
            $file = ROOT_PATH.'public/'.$path;
            if(is_file($file)){
                unlink($file);
            }

        }
        public function uploadImg($file,$modelName){

            if (empty($file)) {
                $this->error('请上传图片或检查图片大小！');
            }

            $size = $file->getSize();
            if ($size > config('upload_size')) {
                $this->error('图片大小超过限定！');
            }

            $path_name = $modelName;
            $arr = $this->dealImg($file, $path_name);
            return $arr['save_url_path'];
        }

}