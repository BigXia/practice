<?php

$str = "test2.php".PATH_SEPARATOR."test3.php";
echo $str.'<br>';
include 'test2.php';
include 'test3.php';


class test1 {
	function index() {
		$t2 = new test2();
		$t2->index();
	}

	function index1() {
		$t3 = new test3();
		$t3->index();
	}
}

$t = new test1();

$t->index();

$t->index1();
