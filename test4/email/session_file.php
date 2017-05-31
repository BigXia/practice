<?php

//自定义session位置




class FileSession {
	private static $path;

	static function start($path = "/home/wwwroot/sfc/domain/sfc/web/test1/email/sessfile/"){
		self::$path = $path;
		
		session_set_save_handler(
			array(__CLASS__,"open"),
			array(__CLASS__,"close"),
			array(__CLASS__,"read"),
			array(__CLASS__,"write"),
			array(__CLASS__,"destroy"),
			array(__CLASS__,"gc")
		);

		session_start();
	}
	//开启时，session_start()
	static function open($path,$name){
		return true;
	}

	//关闭
	static function close(){
		return true;
	}

	//读取 echo $_SESSION['username']
	static function read($sid){

		$filename = self::$path."mz_".$sid;

		return @file_get_contents($filename);
	}

	//写入 $_SESSION['username'] = "meizi"
	static function write($sid,$data){
		echo "aa";
		$filename = self::$path."mz_".$sid;
		return file_put_contents($filename,$data);
	}

	//销毁 session_destroy($sid)
	static function destroy($sid){
	
		$filename = self::$path."mz_".$sid;

		return @unlink($filename);

	}

	//回收垃圾
	static function gc($maxlifetime){
	
		echo $maxlifetime."<br>";
		foreach(glob(self::$path."mz_*") as $file){
			echo $filemtime = filemtime($file)."<br>";
			if($filemtime+$maxlifetime<time()){
				unlink($file);
			
			}
		}
	}
}

FileSession::start();
