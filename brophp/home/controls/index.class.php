<?php
	class Index {
		function index(){
		//	p(D('user')->demo());

		$d = new Myclass();

		echo 'test';

		p($d->two());

		p(Mydemo::three());

		}		

		function demo(){
			p('brophp: '.BROPHP);
			p('brophp_path: '.BROPHP_PATH);
			
			p('APP: '.APP);
			p('PROJECT_PATH: '.PROJECT_PATH);

			p('TMPPATH: '.TMPPATH);

			p('PATH_SEPARATOR: '.PATH_SEPARATOR);
			
			p(get_include_path());
		}

