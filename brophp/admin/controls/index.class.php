<?php
	class Index {
		function index(){
			p('test');
			$this->display();
			p('hello');
			p($GLOBALS['root']);
			p($GLOBALS['app']);
			p($GLOBALS['url']);
			p($GLOBALS['public']);
			p($GLOBALS['res']);
		}		
	}
