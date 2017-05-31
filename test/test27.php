<head>
	<meta charset="utf-8" />
</head>
<?php
	abstract class Person {
		public $name;
		abstract function say();
		function run(){
			echo "11111111<br />";	
		}
		function sleep(){
			echo "222222<br />";
	
		}
	}
	
	class StudentCn extends Person{
		function say(){
			echo "我是中国人，我说中文<br />";	
		}
		function eat(){
			echo "我是中国人，我用筷子吃饭<br />";
		}
	}
	class StudentEn extends Person{
		function say(){
			echo "我是外国人，我说英文<br />";
		}
		function eat(){
			echo "我是外国人，我用刀叉<br />";
		}
	}
	$s1 =new StudentEn();
	
	$s1 -> say();
	$s1 -> eat();
