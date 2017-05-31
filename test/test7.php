<?php
	echo "test"."<br />";
	class demo{
		private $var = "hello";
		function __get($name){
			return $this->$name;
		}
	}
	
	$d = new demo();
	echo $d ->var;

?>
