<?php

//创建对象
$shunObj_Login = new shunFengCan_Login($_POST["phone_number"],$_POST["password"]);

//声明类
class shunFengCan_Login{
	//定义变量

	//用户帐号
	private $phone_Number;
	
	//用户密码
	private $password;
	
	//构造函数
	function __construct($phone_Number,$password){
		//用户帐号————变量传值
		$this->phone_Number = $phone_Number;

		//用户密码
		$this->password = $password;
	}

	//根据函数checkForm()的返回值做出反应
	function valid(){
		if($this->check_Form() and $this->mysql_Write_Login()){    //验证表单，与数据写入是否成功
			return true;
		}else{
			return false;
		}
	}

	//定义函数check_Form()，检验核对订单信息
	function check_Form(){
		if(!($this->phone_Number == "手机号码：" or $this->password == "请设置密码")){
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
		if(mysql_fetch_row($result)!=""){			//判断返回的资源转化为数组是否为空
			return true; 	//若不为空，返回true
		}else{
			return false;	//若为空，返回false
		}	
		mysql_close();
	}

	function check_Password(){
		mysql_connect("localhost","root","12345");
		mysql_select_db("shunfengcan");
		$sql = "select password from users where phone_number = '$this->phone_Number'";
		$result = mysql_query($sql);	
		$arr = mysql_fetch_row($result);		//将访问数据库的资源转为数组
		list($password_From_Table) = $arr;		//将在数据库中的密码赋给变量
		if($password_From_Table == $this->password){	//判断数据库中的密码是否与用户输入的一致
			return true;	//若一致，返回true
		}else{
			return false;	//若不一致，返回false
		}
		mysql_close();
	}

	//用户登陆成功后，读取user_id放于cookie中
	function mysql_Read_Login(){
		mysql_connect("localhost","root","12345");
		mysql_select_db("shunfengcan");
		$sql = "select user_id from users where phone_number='$this->phone_Number'";
		$result = mysql_query($sql);
		$arr = mysql_fetch_row($result);
		return $arr;
		mysql_close();
	}
	
	//访问私有成员属性
	function __get($name){
		return $this->$name;
	}


	//用于调试的函数
	function test(){

		//用户帐号————变量调试
		echo $this->phone_Number."<br />";
		
		//用户密码————变量调试
		echo $this->password."<br />";


		print_r($_POST)."<br />";

	}
}
?>
