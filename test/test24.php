<?php
class Person{
	private $name;
	private $age;
	private $sex;

	function __construct($name,$age,$sex){
		$this->name = $name;
		$this->age = $age;
		$this->sex = $sex;
	}

	function say(){
		echo "This is the function of saying.";
	}
	
	function __tostring(){
		return "This is a class of person.";
	}

	function __call(){
		return "This function is not exist.";
	}

}

$p = new Person("刘恒",18,"boy");

echo $p;
print new Person;
echo "<br />";


