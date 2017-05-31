<?php

//创建对象
$shunObj_Register = new shunFengCan_Register($_POST["phone_number"],$_POST["qq_mail"],$_POST["password"],$_POST["school"],$_POST["school_area"],$_POST["building"],$_POST["building_house"]);

//声明类
class shunFengCan_Register{
	//定义变量

	//用户帐号
	private $phone_Number;
	private $qq_Mail;
	
	//用户密码
	private $password;
	
       	//送餐地址————变量定义
        private $school;
        private $school_Area;
       	private $building;
        private $building_House;


	//构造函数
	function __construct($phone_Number,$qq_Mail,$password,$school,$school_Area,$building,$building_House){
		//用户帐号————变量传值
		$this->phone_Number = trim($phone_Number);
		$this->qq_Mail = trim($qq_Mail);

		//用户密码
		$this->password = trim($password);

		//送餐地址————变量传值
		$this->school = $school;
		$this->school_Area = $school_Area;
		$this->building = $building;
		$this->building_House = trim($building_House);

	}

	//根据函数checkForm()的返回值做出反应
	function valid(){
		if($this->check_Form() and $this->mysql_Write_Register()){    //验证表单，与数据写入是否成功
			return true;
		}else{
			return false;
		}
	}

	//定义函数check_Form()，检验核对订单信息
	function check_Form(){
		if(!($this->phone_Number == "手机号码：" or $this->qq_Mail == "QQ邮箱：" or $this->password == "请设置密码" or $this->school == "----请选择----" or $this->school_Area == "----请选择----" or $this->building == "----请选择----" or empty($this->building_House) or $this->building_House == "宿舍门牌号：" )){
			return true;
		}else{
			return false;
		}
	}

	//判断用户是否注册,若已经注册，返回true;若没有注册，返回false
	function if_Exist(){
		mysql_connect("localhost","root","12345");	//连接数据库服务器
		mysql_select_db("shunfengcan");			//选择数据表
		$sql = "select user_id from users where phone_number = '$this->phone_Number'";	//定义sql语句
		$result = mysql_query($sql);				//执行sql语句,执行成功返回资源，执行失败返回false,
		if(mysql_fetch_row($result)!=""){			//判断返回的资源数组是否为空
			return true; 	//不为空，返回true
		}else{
			return false;	//为空，返回false
		}	
		mysql_close();
	}

	//数据写入是否成功
	function mysql_Write_Register(){
		$timestamp_Register = time();	//获取当前时间戳
		mysql_connect("localhost","root","12345");	//连接数据库服务器
		mysql_select_db("shunfengcan");			//选择数据库
		$sql = "insert into users (phone_number,qq_mail,password,school,school_area,building,building_house,timestamp_register) values('$this->phone_Number','$this->qq_Mail','$this->password','$this->school','$this->school_Area','$this->building','$this->building_House','$timestamp_Register')";
		$result = mysql_query($sql);				//执行sql语句的函数

		//判断数据写入是否成功
		if($result){
			return true;
		}else{
			return false;
		}

		mysql_close();					//关闭与数据库服务器的连接
	}
	
	function __get($name){
		return $this->$name;
	}


	//用于调试的函数
	function test(){

		//用户帐号————变量调试
		echo $this->phone_Number."<br />";
		echo $this->qq_Mail."<br />";
		
		//用户密码————变量调试
		echo $this->password."<br />";

        	//送餐地址————变量调试
        	echo $this->school."<br />";
        	echo $this->school_Area."<br />";
        	echo $this->building."<br />";
        	echo $this->building_House."<br />";

		print_r($_POST)."<br />";

	}
}
?>
