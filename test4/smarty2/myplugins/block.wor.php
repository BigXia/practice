<?php

function smarty_block_wor($args,$content,$smarty){
        //      print_r($args);
                $str = "";
                
                for($i=0;$i<$args['line'];$i++){
                        $str .="<font color={$args['color']} size={$args['size']}>{$content}</font></br>";
                }
                return $str;
                
        }
	
