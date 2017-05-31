var provinces=['陕西省','江苏省'];
var citys = new Array(					//定义城市的数组，而且要定义在函数外部，因为如果定义在函数内部，其数组无法跨函数调用。
                new Array("西安","渭南","榆林"),	//创建数组，对应陕西省的下级市
                new Array("南京","徐州","连云港")	//创建数组，对应江苏省的下级市
);
var areas = new Array(
		new Array(
			new Array("周至","临潼","碑林"),
			new Array("大荔","东城","澄城"),
			new Array("一村","二村","三村")
		),
	
		new Array(
			new Array("栖霞区","建业区","江宁区"),
			new Array("鼓楼区","云龙区","铜山区"),
			new Array("连云区","海州区","赣榆区")
		)
);
var buildings =  new Array(
		new Array(
			new Array(
				new Array("1","11","111"),
				new Array("2","22","222"),
				new Array("3","33","333")
			),
			new Array(
				new Array("4","44","444"),
				new Array("5","55","555"),
				new Array("6","66","666")
			),
			new Array(
				new Array("7","77","777"),
				new Array("8","88","888"),
				new Array("9","99","999")
			)
		),
		new Array(
			new Array(
				new Array("a","aa","aaa"),
				new Array("b","bb","bbb"),
				new Array("c","cc","ccc")
			),
			new Array(
				new Array("d","dd","ddd"),
				new Array("e","ee","eee"),
				new Array("f","ff","fff")
			),
			new Array(
				new Array("g","gg","ggg"),
				new Array("h","hh","hhh"),
				new Array("i","ii","iii")
			)
		)
);


var prices =  new Array(
		new Array(
			new Array(
				new Array(
					new Array("1"),
					new Array("2"),
					new Array("3")
				),
				new Array(
					new Array("4"),
					new Array("5"),
					new Array("6")
				),
				new Array(
					new Array("7"),
					new Array("8"),
					new Array("9")
				)
			),
			new Array(
				new Array(
					new Array("10"),
					new Array("11"),
					new Array("12")
				),
				new Array(
					new Array("13"),
					new Array("14"),
					new Array("15")
				),
				new Array(
					new Array("16"),
					new Array("17"),
					new Array("18")
				)
			),
			new Array(
				new Array(
					new Array("19"),
					new Array("20"),
					new Array("21")
				),
				new Array(
					new Array("22"),
					new Array("23"),
					new Array("24")
				),
				new Array(
					new Array("25"),
					new Array("26"),
					new Array("27")
				)
			)
		),
		new Array(
			new Array(
				new Array(
					new Array("28"),
					new Array("29"),
					new Array("30")
				),
				new Array(
					new Array("31"),
					new Array("32"),
					new Array("33")
				),
				new Array(
					new Array("34"),
					new Array("35"),
					new Array("36")
				)
			),
			new Array(
				new Array(
					new Array("37"),
					new Array("38"),
					new Array("39")
				),
				new Array(
					new Array("40"),
					new Array("41"),
					new Array("42")
				),
				new Array(
					new Array("43"),
					new Array("44"),
					new Array("45")
				)
			),
			new Array(
				new Array(
					new Array("46"),
					new Array("47"),
					new Array("48")
				),
				new Array(
					new Array("49"),
					new Array("50"),
					new Array("51")
				),
				new Array(
					new Array("52"),
					new Array("53"),
					new Array("54")
				)
			)
		)
);


function province_City(province_Name,city_Name,area_Name,building_Name,price_Name){

	document.write('<select onchange="change_Province(this)" id="province" name="'+province_Name+'">');	//用js输出html代码，打开省份的下拉列表；改变时触发selectct(this)函数,并且传递本下拉列表对象；id名定义province(后面其实没有用到)，命名名字的格式借用了变量pname ,前后的+是连接符，类似于php中的.,而pname的值是通过scity()函数的参数从主页面（本页面是辅页面）传递过来，由引用者自定义的。


	//省
	document.write('<option value="">--选择省份--</option>');	//用js输出html代码，定义下拉列表的一个选项。
	for(var i=0;i<provinces.length;i++){				//用for循环循环province数组中个数（数组名.length,province.length）次
		//用js输出html代码，定义下拉列表的选项，value值和选项内容均为数组province中的元素，通过自增变量i来逐次获得遍历数组中的元素
		document.write('<option value="'+provinces[i]+'">'+provinces[i]+'</option>');
	}
	document.write('</select>');					//用js输出html代码，关闭省份的下拉列表。
	
	//市
        document.write('<select onchange="change_City(this)" id="city" name="'+city_Name+'">');		//用js输出html代码，打开城市的下拉列表，id为"city",name为使用者定义的、来自主页面、通过scity()函数参数传值过来的变量 cname ，其前后的 + 为连接符，与php中的.类似
        document.write('<option value="">--选择城市--</option>');	//定义下拉列表的第一个选项，用来提示
        document.write('</select>');					//关闭city的下拉列表

	//区
	document.write('<select onchange="change_Area(this)" id="area" name="'+area_Name+'">');
	document.write('<option value="">--选择地区--</option>');
	document.write('</select>');

	//楼
	document.write('<select onchange="change_Building(this)" id="building" name="'+building_Name+'">');
	document.write('<option value="">--选择大楼--</option>');
	document.write('</select>');

	//价格
	document.write('<select id="price" name="'+price_Name+'">');
        document.write('<option value="">--显示价格--</option>');
        document.write('</select>');

}

	//当省份改变时刷新城市选项
	function change_Province(provinceObj){						//省份改变时调用本函数
		var index_Province=provinceObj.selectedIndex-1;			//获得province数组的索引值，用来对应到city.
		var cityObj=document.getElementById("city");		//返回id为"city"的对象————城市对象 的引用
		cityObj.innerHTML="";					//清空城市对象的内容，省份变动时，防止原来省份的城市输出对当下省份城市输出产									    //生干扰。
		var option_Head_City=document.createElement("option");	//为城市栏的下拉列表设置第一第选项内容
		option_Head_City.value="";
		option_Head_City.innerHTML="--选择城市--";
		cityObj.appendChild(option_Head_City);
		if(index_Province >= 0){					//如果省份先的不是提示信息
		//	var option=document.createElement("option");
			for(var i=0; i<citys[index_Province].length;i++){	//循环省份对应（通过index_p控制）城市数组所拥有的元素个数次
				var option=document.createElement("option");	//用document.createElement()创建一个选项对象
				var text=citys[index_Province][i];			//取出citys数组中相应省份（用index_p代表）的某个元素值（即城市名）
				option.value=text;				//选项的value值定义为城市名
				option.innerHTML=text;				//选项的 内容  定义为城市名
				cityObj.appendChild(option); 	//对下拉列表————城市对象 追加option子元素
			}
		}

	}

	//当城市改变时刷新地区选项
	function change_City(cityObj){
		var provinceObj=document.getElementById("province");
		var index_Province=provinceObj.selectedIndex-1;

		var index_City=cityObj.selectedIndex-1;

		var areaObj=document.getElementById("area");

		areaObj.innerHTML="";

		var option_Head_Area=document.createElement("option");
		option_Head_Area.value="";
		option_Head_Area.innerHTML="--选择区域--";
		areaObj.appendChild(option_Head_Area);
		

		if(index_City >= 0){
			for(var i=0;i<areas[index_Province][index_City].length;i++){
				var option=document.createElement("option");
				var text=areas[index_Province][index_City][i];
				option.value=text;
				option.innerHTML=text;
				areaObj.appendChild(option);
			}
		}
		
	}

	//当地区改变时刷新建筑楼
	function change_Area(areaObj){
		var provinceObj=document.getElementById("province");
		var index_Province=provinceObj.selectedIndex-1;
	
		var cityObj=document.getElementById("city");
		var index_City=cityObj.selectedIndex-1;

		var index_Area=areaObj.selectedIndex-1;

		var buildingObj=document.getElementById("building");

		buildingObj.innerHTML="";

		var option_Head_Building=document.createElement("option");
		option_Head_Building.value="";
		option_Head_Building.innerHTML="--选择大楼--";
		buildingObj.appendChild(option_Head_Building);
		
		if(index_Area >= 0){
			for(var i=0;i<buildings[index_Province][index_City][index_Area].length;i++){
				var option=document.createElement("option");
				var text=buildings[index_Province][index_City][index_Area][i];
				option.value=text;
				option.innerHTML=text;
				buildingObj.appendChild(option);
			}
		}
		
	}
	
	function change_Building(buildingObj){
                var provinceObj=document.getElementById("province");
                var index_Province=provinceObj.selectedIndex-1;

                var cityObj=document.getElementById("city");
                var index_City=cityObj.selectedIndex-1;
		
		var areaObj=document.getElementById("area");
                var index_Area=areaObj.selectedIndex-1;

		var index_Building=buildingObj.selectedIndex-1;

                var priceObj=document.getElementById("price");

                priceObj.innerHTML="";
	
	/*
                var option_Head_Price=document.createElement("option");
                option_Head_Price.value="";
                option_Head_Price.innerHTML="--显示价格--";
                priceObj.appendChild(option_Head_Price);
	*/

                if(index_Building >= 0){
                        for(var i=0;i<prices[index_Province][index_City][index_Area][index_Building].length;i++){
                                var option=document.createElement("option");
                                var text=prices[index_Province][index_City][index_Area][index_Building][i];
                                option.value=text;
                                option.innerHTML=text;
                                priceObj.appendChild(option);
                        }
                }

        }


