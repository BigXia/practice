<?php

class User {
	function index(){
		$d=D('user');
		$d -> myss();

		p($d->getMsg());	
		$data = $d ->limit(3)->select();

		p($data);

		$this->assign('users',$data);
		
		$this->display();

		p('hello');

	}

	function add() {
		$this -> display();
	}

	function insert() {
		p($_POST);

	}

	function mod() {
		$this -> assign(D('user') -> find($_GET['id']));

		$this -> display();	
	}

	function update() {
		p($_POST);

		$user=D('user');

		$user->where('13')->update(array("id"=>6,"name"=>'lll'));		

/*		if($user->update()){
			$this->success('修改成功!',3,'index');
		}else{
			$this->error('修改失败!',3,"user/mod/id/{$_POST[id]}");
		}
*/
	}

	function del() {
		$user=D('user');

		$id=!empty($_POST['id']) ? $_POST['id'] : $_GET['id '];

		if($user->delete($id)){
			$this->redirect('index');
		}else{
			$this->error('删除失败',3,'index');
		}
	}

	function exe() {
		$user=D('user');

		if($user->myss()){
			$this->success();
		}else{
			p($user->getMsg());
		}

	}
}
