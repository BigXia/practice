<?php defined('IN_IA') or exit('Access Denied');?><ul class="nav nav-tabs">
	<li<?php  if($do == 'installed') { ?> class="active"<?php  } ?>><a href="<?php  echo create_url('extension/theme/installed');?>">已安装的微站风格</a></li>
	<li<?php  if($do == 'prepared') { ?> class="active"<?php  } ?>><a href="<?php  echo create_url('extension/theme/prepared');?>">安装微站风格</a></li>
	<li><a href="http://bbs.we7.cc/forum-46-1.html" target="_blank">查找更多微站风格</a></li>
	<li<?php  if($do == 'web') { ?> class="active"<?php  } ?>><a href="<?php  echo create_url('extension/theme/web');?>">管理后台风格</a></li>
</ul>
