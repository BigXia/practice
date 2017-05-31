<?php

//创建对象
$shunObj_Deliver = new shunFengCan_Deliver($_POST["school"],$_POST["school_area"],$_POST["building"],$_POST["building_house"],$_POST["hall"],$_POST["kitchen"],$_POST["dish"],$_POST["dish_size"],$_POST["phone_number_deliver"],$_POST["qq_mail_deliver"],$_POST["price"],$_POST["tip"]);

//定义属性变量
$valid_Record_Array = $shunObj_Deliver->match_Order();	//有效订单（即将要被接到的单，最多2个元素数组）的记录数组
$order_Count = count($valid_Record_Array);    		//订单数量


//声明类
class shunFengCan_Deliver{
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
	private $phone_Number_Deliver;
	private $qq_Mail_Deliver;

	//应付金额、即应收金额
	private $price;
	private $tip;


	//构造函数
	function __construct($school,$school_Area,$building,$building_House,$hall,$kitchen,$dish,$dish_Size,$phone_Number_Deliver,$qq_Mail_Deliver,$price,$tip){
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
		$this->phone_Number_Deliver = $phone_Number_Deliver;
		$this->qq_Mail_Deliver = $qq_Mail_Deliver;

		//应付金额，即应收金额
		$this->price = $price;
		$this->tip = $tip;
	}

	//根据函数checkForm()的返回值做出反应
	function valid(){
		if($this->check_Form()){
			return true;
		}else{
			return false;
		}
	}

	//定义函数check_Form()，检验核对订单信息
	function check_Form(){
		if(!($this->school == "----请选择----" or $this->school_Area == "----请选择----" or $this->building == "----请选择----" or empty($this->building_House) or $this->hall == "----餐  厅----" or $this->kitchen == "----档  口----" or $this->dish =="----品  类----" or $this->dish_Size == "----大/小----" or $this->phone_Number_Deliver == "手机号码：" or $this->qq_Mail_Deliver == "QQ邮箱：")){
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
                $sql = "select order_id from order_deliver where timestamp_order > ('$timestamp_Expire' - 60*15) and user_id_deliver = '$_COOKIE[user_id]'";		//60*15每次接单间隔时间
                $result = mysql_query($sql);    //查询15分钟前至现在，此用户是否有点餐记录
		$affected_rows = mysql_affected_rows();
//		echo $affected_rows;
                if($affected_rows){
                        return true;
                }else{
                        return false;
                }
                mysql_close();
        }

	//配单成功后写入送餐者数据
	function mysql_Write_Deliver($order_Id){
		$timestamp_Deliver = time();	//获取当前时间戳
		mysql_connect("localhost","root","12345");	//连接数据库服务器
		mysql_select_db("shunfengcan");			//选择数据库
		$sql = "update order_deliver set phone_number_deliver = '$_COOKIE[phone_number]',user_id_deliver = '$_COOKIE[user_id]',timestamp_deliver = '$timestamp_Deliver' where order_id = '$order_Id' and user_id_deliver is null";
		$result = mysql_query($sql);				//执行sql语句的函数

		//判断数据写入是否成功
		if(mysql_affected_rows()){
			return true;
		}else{
			return false;
		}

		mysql_close();					//关闭与数据库服务器的连接
	}

	//匹配订单，每次最多匹配2单	
	function match_Order(){
		$timestamp_Deliver = time();			//获取当前时间戳，单位为秒
		mysql_connect("localhost","root","12345");
		mysql_select_db("shunfengcan");

		//有条件地查询订单信息,条件包括：时间（不超过 自订单生成起15分钟），学校，校区，公寓楼，餐厅，档口,user_id_deliver非空（说明单没有被接）
		$sql = "select school,school_area,building,building_house,hall,kitchen,dish,dish_size,phone_number_order,price,tip,order_id from order_deliver where timestamp_order > '$timestamp_Deliver'-60*15
			and school = '$this->school'
                        and school_area = '$this->school_Area'
                        and building = '$this->building'
                        and hall = '$this->hall'
                        and kitchen = '$this->kitchen'
			and user_id_deliver is null
			";
		$result = mysql_query($sql);			//执行sql语句的函数
		$valid_Record_Count = mysql_affected_rows();	//获取有效的记录数
		if($valid_Record_Count > 2){			//如果有效记录数大于2，将其设为2,以此来实现每次最多匹配2单
			$valid_Record_Count = 2;
		}
		for($i=0;$i<$valid_Record_Count;$i++){		
			mysql_data_seek($result,$i);		//修改指针指向
	//		print_r(mysql_fetch_row($result));	//打印指针指向的关联数组
			$valid_Record_Array[]=mysql_fetch_row($result); //获取有效记录
			echo '<br />';
		}
		return $valid_Record_Array;
		
		mysql_close();
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
		echo $this->phone_Number_Deliver."<br />";
		echo $this->qq_Mail_Deliver."<br />";

		//应付金额，即应收金额————变量高度
		echo "<br />";
		echo $this->price."<br />";
		echo $this->tip."<br />";

		print_r($_POST)."<br />";

	}


}
?>
