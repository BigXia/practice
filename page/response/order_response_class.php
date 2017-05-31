<?php

//创建对象
$shunObj_Order = new shunFengCan_Order($_POST["school"],$_POST["school_area"],$_POST["building"],$_POST["building_house"],$_POST["hall"],$_POST["kitchen"],$_POST["dish"],$_POST["dish_size"],$_POST["phone_number_order"],$_POST["qq_mail_order"],$_POST["price"],$_POST["tip"]);

//声明类
class shunFengCan_Order{
	//定义变量

       	//送餐地址————变量定义
        private $school;
        private $school_Area;
       	private $building;
        private $building_House;

        //点餐信息————变量定义
	private $hall;
       	private $kitchen;
        private $dish;
       	private $dish_Size;

        //联系方式————变量定义
	private $phone_Number_Order;
	private $qq_Mail_Order;

	//应付金额、即应收金额
	private $price;
	private $tip;


	//构造函数
	function __construct($school,$school_Area,$building,$building_House,$hall,$kitchen,$dish,$dish_Size,$phone_Number_Order,$qq_Mail_Order,$price,$tip){
		//送餐地址————变量传值
		$this->school = $school;
		$this->school_Area = $school_Area;
		$this->building = $building;
		$this->building_House = $building_House;

		//点餐信息————变量传值
		$this->hall = $hall;
		$this->kitchen = $kitchen;
		$this->dish = $dish;
		$this->dish_Size = $dish_Size;

		//联系方式————变量传值
		$this->phone_Number_Order = $phone_Number_Order;
		$this->qq_Mail_Order = $qq_Mail_Order;

		//应付金额，即应收金额
		$this->price = $price;
		$this->tip = $tip;
	}

	//根据函数checkForm()的返回值做出反应
	function valid(){
		if($this->check_Form() and $this->mysql_Write_Order()){
			return true;
		}else{
			return false;
		}
	}

	//定义函数check_Form()，检验核对订单信息
	function check_Form(){
		if(empty($this->school) or empty($this->school_Area) or empty($this->building) or empty($this->building_House) or empty($this->hall) or empty($this->kitchen) or empty($this->dish) or empty($this->dish_Size)){
			return true;
		}else{
			return false;
		}
	}
	

	//判断上次点餐距当下是否期满
	function if_Expire(){
		$timestamp_Expire = time();
		mysql_connect("localhost","root","12345");
		mysql_select_db("shunfengcan");
		$sql = "select order_id from order_deliver where timestamp_order > ('$timestamp_Expire' - 60*15) and user_id_order = '$_COOKIE[user_id]'";
		$result = mysql_query($sql);	//查询15分钟前至现在，此用户是否有点餐记录
		$affected_rows = mysql_affected_rows();
		if($affected_rows){		//不能用$result做判断
			return true;
		}else{
			return false;
		}
		mysql_close();
	}

	
	//写入点餐者信息
	function mysql_Write_Order(){
		$timestamp_Order = time();	//获取当前时间戳
		mysql_connect("localhost","root","12345");	//连接数据库服务器
		mysql_select_db("shunfengcan");			//选择数据库
		$sql = "insert into order_deliver (user_id_order,school,school_area,building,building_house,hall,kitchen,dish,dish_size,phone_number_order,qq_mail_order,timestamp_order,price,tip) values('$_COOKIE[user_id]','$this->school','$this->school_Area','$this->building','$this->building_House','$this->hall','$this->kitchen','$this->dish','$this->dish_Size','$this->phone_Number_Order','$this->qq_Mail_Order','$timestamp_Order','$this->price','$this->tip')";
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

        	//送餐地址————变量调试
        	echo $this->school."<br />";
        	echo $this->school_Area."<br />";
        	echo $this->building."<br />";
        	echo $this->building_House."<br />";

      		//点餐信息————变量调试
		echo "<br />";
		echo $this->hall."<br />";
        	echo $this->kitchen."<br />";
 	      	echo $this->dish."<br />";
        	echo $this->dish_Size."<br />";
	
        	//联系方式————变量调试
		echo "<br />";
		echo $this->phone_Number_Order."<br />";
		echo $this->qq_Mail_Order."<br />";

		//应付金额，即应收金额————变量高度
		echo "<br />";
		echo $this->price."<br />";
		echo $this->tip."<br />";

		print_r($_POST)."<br />";

	}


}
?>
