<?php

	 class Goods {
		//查询商品
		function index() {
			p(D("goods"))->select();
			$this->display();
		}

		//要添加界面
		function add() {
			$this->display();
		}

		//加入数据库
		function insert() {
	 		p($_POST);
			$goods=D("goods");
			$_POST['ptime']=time();
			if($goods->insert()){
				$this->success('添加商品成功',3,'index');
			} else {
				$this->error('添加商品失败',3,'add');
			}
		}

		//修改界面
		function mod() {
		
		}
		
		//向数据库中修改
		function update() {

		}

		//删除
		function del() {

		}
	}
