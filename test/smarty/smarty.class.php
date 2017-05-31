<?php
class Smarty{
	private $vars = array();
	
	//向模板中分配变量
	//有两个参数，一个是模板中的变量名，一个是模板中的分配给它的变量值
	public function assign($varname,$varvalue){
		$this->vars[$varname] = $varvalue;

	}
	//加载指定的模板，并显示
	//有一个参数，参数是模板的文件名
	public function display($tplname){
		//声明文件位置
		$comfile = "./comps".$tplname."_com.php";
		$tplname = "./templates/".$tplname;


		if(!file_exists($comfile) || filemtime($tplname) > filemtime($comfile)){
			//得到前台的页面模板
			$html = file_get_contents($tplname);
			//写正则
			$zz = '/\{\s*\$([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*)\s*\}/';
			//替换目标
			$rep = "<?php echo \$this->vars['\\1']; ?>";
			//替换后的新页面
			$newhtml = preg_replace($zz,$rep,$html);
		}


		//将新页面写到文件中
		file_put_contents($comfile,$newhtml);
		include $comfile;
		
	}
}
