<?php

class employee{
	var $name;

	/*子类不能访问
		private $name;
	 */

	/* 仅子类、本类中可以访问
		protected $name
	 */

	var $gender;

	function __construct($name, $gender){
		$this -> name	= $name;
		$this -> gender = $gender;
	}

	function get_name(){
		printf("The employee's name is %s<br>", $this -> name);
	}

	function get_gender(){
		printf("This employee's gender is %s<br>", $this -> gender);
	}

	function __destruct(){
		printf("Goodbye employee %s<br>", $this -> name);
	}
	
}

class manager extends employee{
	var $department;

	function __construct($name, $gender, $department){
		parent::__construct($name, $gender);

		$this -> department = $department;
	}

	function get_name(){
		parent::get_name();

		printf("%s is a manager who belongs of %s<br>", $this -> name, $this->department);

	}

	function get_gender(){
		parent::get_gender();

		printf("%s's gender is %s", $this -> name, $this -> gender);
	}

	function __destruct(){
		parent::__destruct();
		printf("Goodbye manager %s<br>", $this -> name);
	}
}


/*
$e = new employee('刘恒', '男');
$e -> get_name();

$m = new manager('李曼', '女', '客服');
$m -> get_name();
 */
