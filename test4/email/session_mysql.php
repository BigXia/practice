<?php

//自定义session位置




class FileSession {

	public static $pdo;		//PDO的对象
	public static $ctime;		//当前时间
	public static $maxlifetime;	//最大的生存时间
	public static $uip;
	public static $uagent;


	static function start(PDO $pdo){ //限制类
		
		self::$pdo = $pdo;
		self::$ctime = time();
		self::$maxlifetime = ini_get("session.gc_maxlifetime");
		self::$uip = 
                !empty($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] :
                (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) ? $_SERVER['HTTP_X_FORWARDED_FOR'] :
                (!empty($_SERVER['REMOTE_ADDR'])) ? $_SERVER['REMOTE_ADDR'] : ''; 
		self::$uagent = !empty($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT']:"";  
	        filter_var(self::$uip,FILTER_VALIDATE_IP) and self::$uip;
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
		$sql = "select * from session where sid = ?";
		$stmt = self::$pdo->prepare($sql);
		$stmt -> execute($sid);
		$result = $stmt -> fetch(PDO::FETCH_ASSOC);
		if(!$result) {	
			return '';
		} 
		
		if($result['utime'] + self::maxlifetime < self::ctime()){
			self::destroy($sid);
			return '';
		}
		if($result['uip']!=self::$uip || $result['uagent']){
			self::destroy($sid);
			return '';
		}


		return $result['sdata'];
	}

	//写入 $_SESSION['username'] = "meizi"
	static function write($sid,$data){


		//从数据库获取数据
		$sql = "select * from session where sid=?";
		$stmt = self::$pdo -> prepare($sql);
		$stmt -> execute(array($sid));
		
		$result = $stmt -> fetch(PDO::FETCH_ASSOC);

		//判断数据是否存在
		if($result) {
			//判断数据是否有改变 或者 数据更新时间是否超过10秒
			if($result['sdata'] != $data || $result['utime']+10<self::$ctime){
				$sql = "update session set sdata=?,utime=? where sid=?";
				$stmt = self::$pdo -> prepare($sql);
				$stmt -> execute(array($data,self::$ctime,$sid));
			}
		
		//若数据不存在，判断session数据是否为空
		} else if(!empty($data)){
			//若不为空，插入记录
			$sql = "insert into session (sid,sdata,utime,uip,uagent) values(?,?,?,?,?)";
			$stmt = self::$pdo -> prepare($sql);
			$stmt -> execute(array($sid,$data,self::$ctime,self::$uip,self::$uagent));
		}

	}

	//销毁 session_destroy($sid)
	static function destroy($sid){
		$sql = "delete from session where sid=?";
		$stmt = self::$pdo->prepare($sql);
		$stmt -> execute(array($sid));
	
	}

	//回收垃圾
	static function gc($maxlifetime){
		$sql = "delete from session where utime<?";
		$stmt = self::$pdo->prepare($sql);
		$stmt -> execute(array(self::$ctime-$maxlifetime));
	}
}

FileSession::start($pdo);

