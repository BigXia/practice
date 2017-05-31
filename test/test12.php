<html>
	<head>
	<meta http-equiv = "content-type" content = "text/html;charset = utf-8" />
	<script language=javascript>

cities = new Object();


cities['河北省']=new Array('石家庄', '张家口', '承德', '秦皇岛', '唐山', '廊坊', '保定', '沧州', '衡水', '邢台', '邯郸');

cities['山西省']=new Array('太原', '大同', '朔州', '阳泉', '长治', '晋城', '忻州', '吕梁', '晋中', '临汾', '运城');

cities['辽宁省']=new Array('沈阳', '朝阳', '阜新', '铁岭', '抚顺', '本溪', '辽阳', '鞍山', '丹东', '大连', '营口', '盘锦', '锦州', '葫芦岛');

function set_city(province, city)

{

var pv, cv;

var i, ii;

pv=province.value;

cv=city.value;

city.length=1;

if(pv=='0') return;

if(typeof(cities[pv])=='undefined') return;

for(i=0; i<cities[pv].length; i++)

{

ii = i+1;

city.options[ii] = new Option();

city.options[ii].text = cities[pv][i];

city.options[ii].value = cities[pv][i];

}

}

</script>
	</head>
	<body>
<SELECT name="sheng" id="to_cn" onchange="set_city(this, document.getElementById('city')); WYL();"  >


<option value=河北省>河北省</option>

<option value=山西省>山西省</option>

<option value=辽宁省>辽宁省</option>

</SELECT> - 市
<select id="city" class=login_text_input name="shi">

<option value=0>请选择</option>

</select>
	</body>
</html>
