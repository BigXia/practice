<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<?php

interface USB {
	const WHDTH=12;
	const HEIGHT=3;

	function load();
	function run();
	function stop();
}

class Computer {
	function useUSB(USB $usb) {  //只能传类USB的对象
		$usb -> load();
		$usb -> run();
		$usb -> stop();
	}
}

class Mouse implements USB{
	function load(){
		echo "加载鼠标成功！<br />";
	}
	function run(){	
		echo "运行鼠标功能！<br />";
	}
	function stop(){
		echo "鼠标工作结束！<br />";	
	}
}

class KeyPress implements USB {
	function load() {
		echo "加载键盘成功！<br />";
	}

	function run(){
		echo "运行键盘成功！<br />";
	}

	function stop(){
		echo "停止键盘使用！<br />";
	}
}
class Worder {
	function usedevice() {
		$c = new Computer();
	
		$m = new Mouse;	

		$k = new KeyPress;

		$c -> useUSB($k);
		$c -> useUSB($m);
	}
}

$w = new Worder;

$w -> usedevice();
