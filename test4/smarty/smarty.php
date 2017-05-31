<?php

class Smarty {
	
	//定义一个数组变量，用来保留变量键值
	private $vars = array();

	//分配变量（键，值）
	public function assign($varname,$varvalue){	//为关联数组赋值
		$this -> vars[$varname] = $varvalue;
	}
	public function display($tplname) {		//正则替换，形成混合脚本。
		
		//编译的相对路径以及文件名
		$comfile = "./comps/".$tplname.".com.php";
		//模板的相对路径以及文件名
		$tplname = "./templates/".$tplname;

		if(!(file_exists($comfile)) || filemtime($tplname)>filemtime($comfile)) {

		//得到模板的内容
		$html = file_get_contents($tplname);
		
		//编写正则
		$zz ='/\{\s*\$([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*)\s*\}/';
	
		//替换的内容
		$rep = "<?php  echo \$this->vars['\\1']; ?>"; //[\\1] 第一个'\'代表转义，'\1'代表

		//在$html中，将$zz匹配的地方匹配为$rep
		$newhtml = preg_replace($zz,$rep,$html);	//正则替换，将模板替换为一个前后台语言都有的php脚本。

		file_put_contents($comfile,$newhtml);		//将编译好的内容输出到一个文件中
		}
		
		include $comfile;



	}
}
