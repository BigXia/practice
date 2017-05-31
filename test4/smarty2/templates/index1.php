<?php

	include "init.inc.php";
	
	$smarty -> registerPlugin("block","world","world");
	
	function world($args,$content,$aaa){
	        //      print_r($args);
                $str = "";
                
                for($i=0;$i<$args['line'];$i++){
                        $str .="<font color={$args['color']} size={$args['size']}>{$content}</font></br>";
                }
                return $str;
                
        }	

	$smarty -> display("index.tpl");


