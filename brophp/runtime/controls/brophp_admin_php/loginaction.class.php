<?php

class LoginAction extends Action {
	function index() {
		$this->display();	
	}

	function login() {
		$user=D('user')->field('id,username,one,two,three,four')->where(array('username'=>$_POST['username'],'password'=>md5($_POST['password'])))->find();

		if($user){
			$_SESSION=$user;
			$_SESSION['isLogin']=1;

			$this->redirect('index/index');
		}else{
			$this->error('用户登录失败，请重新登录！',1,'index');
		}
	}

	function logout() {
		$username=$_SESSION['username'];

		$_SESSION=array();

		if(isset($_COOKIE[session_name()])){
			setCookie(session_name(),'',time()-3600,'/');
		}

		session_destroy();

		$this->success("再见{$username},退出成功！",1,'index');

		
	}
}
