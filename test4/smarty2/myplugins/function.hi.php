<?php

function smarty_function_hi($args,$smarty){
	        //      print_r($args);
                $str = "";
                
                for($i=0;$i<$args['line'];$i++){
                        $str .="<font color={$args['color']} size={$args['size']}>{args['con
tent']}</font></br>";
                }
                return $str;
                
        }
