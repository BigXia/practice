var province_Array = ["陕西省","江苏省"];
var city_Array = new Array(
	new Array("西安","渭南","榆林",),
	new Array("南京","徐州","连云港"),
);

	document.write("This is a test");
/*
function province_City(province_Name,city_Name){
	document.write('<select onchange="change_City(this)" name='+province_Name+'>');
	document.write('<option value="">--请选择--</option>');
	for(var i=0;i<province_Array.length;i++){
		document.write('<option value="'+province_Array[i]+'">'+province_Array[i]+'</option>');
	}
	document.write('</select>');


	document.write('<select id="city" name="'+city_Name+'">');
	document.write('<option value="">--选择城市--</option>');
	document.write('</select>');
}
	
function change_City(provinceObj){
	var index_Province = provinceObj.selectedIndex;
	var cityObj = document.getElementById("city");
	
	if(index_Province >= 0){
		for(var i=0;i<index_Province;i++){
			var option=document.createElement("option");
			var text=city[indexProvince][i];
			option.value=text;
			option.innerHTML=text;
			cobj.appendChild(option);
		}
	}
}
*/
