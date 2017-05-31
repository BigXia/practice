<?php
function smarty_modifier_mystyle($str,$size="3",$color="green") {
	return "<font color='{$color}' size='{$size}'>$str</font>";
	
}
