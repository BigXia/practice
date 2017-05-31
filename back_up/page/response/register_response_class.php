<?php

//创建对象
$shunObj_Login = new shunFengCan_Login($_POST["phone_number"],$_POST["qq_mail"],$_POST["password"],$_POST["school"],$_POST["school_area"],$_POST["building"],$_POST["building_house"]);

//声明类
class shunFengCan_Login{
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
		$this->phone_Number = $phone_Number;
		$this->qq_Mail = $qq_Mail;

		//用户密码
		$this->password = $password;

		//送餐地址————变量传值
		$this->school = $school;
		$this->school_Area = $school_Area;
		$this->building = $building;
		$this->building_House = $building_House;

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
		if(!($this->phone_Number == "手机号码：" or $this->qq_Mail == "QQ邮箱：" or $this->password == "请设置密码" or $this->school == "----请选择----" or $this->school_Area == "----请选择----" or $this->building == "----请选择----" or empty($this->building_House) )){
			return true;
		}else{
			return false;
		}
	}

	//判断用户是否注册
	function if_Exist(){
		//若微信浏览器中有本站的cookie,用_COOKIE全局变量判断用户是否注册
		//if(count($_COOKIE))
		//若微信浏览器中无西站的cookie,用手机号码判断用户是否注册
		//若用户已经注册，引导到"点餐","订餐"页面
	}

	//数据操作
	function mysql_Write_Login(){
		$timestamp_Login = time();	//获取当前时间戳
		mysql_connect("localhost","root","12345");	//连接数据库服务器
		mysql_select_db("shunfengcan");			//选择数据库
		$sql = "insert into users (phone_number,qq_mail,password,school,school_area,building,building_house,timestamp_login) values('$this->phone_Number','$this->qq_Mail','$this->password','$this->school','$this->school_Area','$this->building','$this->building_House','$timestamp_Login')";
		$result = mysql_query($sql);				//执行sql语句的函数

		//判断数据写入是否成功
		if($result){
			return true;
		}else{
			return false;
		}

		mysql_close();					//关闭与数据库服务器的连接
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
