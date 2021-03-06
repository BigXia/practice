<?php defined('IN_IA') or exit('Access Denied');?><?php  include template('header', TEMPLATE_INCLUDEPATH);?>
<style>
body{background:#f24545;}
.common-bg{filter:Alpha(opacity=70); background:#000; background:rgba(0, 0, 0, 0.7); -moz-border-radius:4px; border-radius:4px;}
.auth-main{margin:10px; color:#FFF;}
.auth-main a{color:#FFF; text-decoration:underline;}
.auth-alert{padding:10px; margin-bottom:10px;}
</style>
<div class="auth-main">
	<div class="auth-alert common-bg">
		<p style="font-size:16px;"><i class="icon-warning-sign"></i> 抱歉 ，您尚未关注该公众号，没有权限查看该页面！</p>
	</div>
	<div class="auth-alert common-bg">
		<p style="font-size:16px;"><i class="icon-lightbulb"></i> 请通过以下步骤获得查看权限：</p>
		<p>1，关注微信号：<a href="weixin://contacts/profile/<?php  echo $account['account'];?>"><?php  echo $account['name'];?></a></p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;或搜索账号：<a href="weixin://contacts/profile/<?php  echo $account['account'];?>"><?php  echo $account['account'];?></a></p>
		<?php  if($keywords) { ?>
		<p>2，关注后发送关键字：<?php  $i=0;?>
		<?php  if(is_array($keywords)) { foreach($keywords as $keyword) { ?>
		<?php  echo $keyword['content'];?><?php  if($i>0) { ?>，<?php  } ?>
		<?php  $i++;?>
		<?php  } } ?>
		</p>
		<?php  } ?>
		<p>3，打开相关页面</p>
	</div>
	<div class="auth-alert common-bg">
		<img style="width:80%; margin:0 auto; display:block;" src="<?php  echo $_W['attachurl'];?>/qrcode_<?php  echo $_W['weid'];?>.jpg">
	</div>
</div>
<?php  $footer_off = 1;?>
<?php  include template('footer', TEMPLATE_INCLUDEPATH);?>