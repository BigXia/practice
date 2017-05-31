<?php
	class Common extends Action {
		function init(){
	//		if(!(isset($_SESSION['isLogin']) and $_SESSION['isLogin']===1))
	//		$this->redirect('login/index');
		}		

		function test(){
			p($_GET);
			
		}
	}
