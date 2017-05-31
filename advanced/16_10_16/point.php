<?php

class point{
	/*	Parse error
	$x;
	$y;
	 */

	/*	正常
	var $x;
	var $y;
	 */


	/*	正常 与 var修饰词可以替换使用
	public $x;
	public $y;
	 */


	/*	Fatal error
	private $x;
	private $y;
	 */

	/*	Fatal error
	protected $x;
	protected $y;
	 */


	function __construct($x, $y){
		$this -> x = $x;
		$this -> y = $y;
	}

	function get_x(){
		return $this -> x;
	}

	function get_y(){
		return $this -> y;
	}

	//缺析构函数
}


$p = new point(4,5);

echo $p -> y;
