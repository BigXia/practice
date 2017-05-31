<?php

class UserModel extends HelloModel {
	function myss() {

		if(!$this->where(44)->update('name=test')){
			$this->setMsg("修改失败");
			$this->setMsg("Please stop");
			echo 'Yes';
			return false;
		}
		return true;

	}
}
