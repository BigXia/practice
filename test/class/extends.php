<?php

class Person {
	static $name='lh';
	static $age=18;
	static function getinfo(){
		echo self::$name."<br />";
		echo self::$age."<br />";
	}
}

class Student extends Person{
	static $score=99;
	static function getinfo(){
		Person::getinfo();
		echo self::$score."<br />";
	}
}


//$s = new Student();
//$s -> getinfo();
Student::getinfo();
