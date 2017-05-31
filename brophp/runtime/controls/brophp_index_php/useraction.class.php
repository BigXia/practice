<?php

class UserAction extends Common {
	function index(){
		$user=D('user');
		//创建分布对象,指定总数和 与 每页显示条数
		$page = new Page($user->total(),10,'one/1/tow/2');

		//设置这个对象
		$page->set('head','个用户')
		 ->set('first','|<<')
		 ->set('last', '>>|')
		 ->set('next','>|')
		 ->set('prev','|<');


		//通过$page->limit限制每页获取数据的条数
		$data = $user->order('id desc')->field('id,name,password')->limit($page->limit)->select();

		$this -> assign('user',$data);

		//将分布结构分给前端
		$this -> assign('fpage',$page->fpage(0,3,4,5,6));
	
		p($page->page);
		$this -> display();

	}

	function add() {
		$this->display();
	}

	function code() {
		echo new Vcode();
	}

	function insert() {
		p($_POST);
		$user = D('user');
	
		if($user->insert($_POST,1,0)){
			$this->success('数据插入成功','3','index');
		} else {
			$this->error($user->getMsg(),'3');
		}
	}

}
