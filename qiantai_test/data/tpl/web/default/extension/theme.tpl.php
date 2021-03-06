<?php defined('IN_IA') or exit('Access Denied');?><?php  include template('common/header', TEMPLATE_INCLUDEPATH);?>
<style>
.template-style{display:block;}
.template-style li{float:left; width:180px; margin:0 2px 10px 2px;}
.template-style .template-style-pic .title{position:absolute; z-index:100; top:0; width:100%; height:25px; line-height:25px; filter:Alpha(opacity=70);background:#000;background:rgba(0, 0, 0, 0.7); color:#FFF; overflow:hidden;}
.title .icon-remove{position:absolute; right:0; background:#000; border-left:1px #333 solid; height:25px;line-height:26px;width:20px;text-align:center;cursor:pointer; text-decoration:none;}
.title .pull-left{margin-left:5px;}
.template-style .template-style-pic img{width:174px; max-width:174px; height:270px;}
.template-style .template-style-pic{border:3px #EEE solid;position:relative;overflow:hidden;}
.template-style .template-style-pic .icon-ok{display:none;}
.template-style .on.template-style-pic{border:3px #009CD6 solid;}
.template-style .on.template-style-pic .icon-ok{display:inline-block;position: absolute;bottom:0;right:0;color:#FFF;background:#009CD6;padding:5px;font-size:14px;}
.template-style .template-style-button{height:50px; line-height:25px;}
.template{padding:15px;}
.template li{margin-right:10px;}
</style>
<?php  include template('extension/theme-tabs', TEMPLATE_INCLUDEPATH);?>
<div class="main">
	<?php  if($do == 'installed') { ?>
	<div class="form">
		<h4>已安装的微站模板</h4>
	</div>
	<div class="template form-horizontal">
		<ul class="unstyled template-style clearfix">
		<?php  if(is_array($templates)) { foreach($templates as $item) { ?>
		<li>
			<div class="template-style-pic"> <!--设为默认风格时class中加on-->
				<div class="title"><a onclick="return confirm('确定卸载此模板吗？')" href="<?php  echo create_url('extension/theme/uninstall', array('templateid' => $item['name']))?>" class="icon-remove" title="移除"></a><span class="pull-left"><?php  echo $item['title'];?> (<?php  echo $item['name'];?>)</span></div>
				<img src="./themes/mobile/<?php  echo $item['name'];?>/preview.jpg" />
				<span class="icon-ok"></span>
				<a href="javascript:;" onclick="ajaxpreview('<?php  echo $item['id'];?>');return false;" class="btn pull-right" style="position:absolute; bottom:5px; right:5px;">预览</a>
			</div>
		</li>
		<?php  } } ?>
		</ul>
	</div>
	<?php  } ?>
	<?php  if($do == 'prepared') { ?>
	<div class="form">
		<h4>已购买的微站模板</h4>
	</div>
	<div class="form">
		<h4>未安装的微站模板(本地模板)</h4>
	</div>
	<div class="template form-horizontal">
		<ul class="unstyled template-style clearfix">
		<?php  if(is_array($uninstallTemplates)) { foreach($uninstallTemplates as $item) { ?>
		<li>
			<div class="template-style-pic">
				<div class="title"><span class="pull-left"><?php  echo $item['title'];?> (<?php  echo $item['name'];?>)</span></div>
				<img src="./themes/mobile/<?php  echo $item['name'];?>/preview.jpg" />
				<span class="icon-ok"></span>
				<a href="<?php  echo create_url('extension/theme/install', array('templateid' => $item['name']))?>" class="btn btn-danger pull-right" style="position:absolute; bottom:5px; right:5px;">安装</a>
			</div>
		</li>
		<?php  } } ?>
		</ul>
	</div>
	<?php  } ?>
</div>
<script type="text/javascript">
<!--
	function ajaxpreview(styleid) {
		var modalobj = $('#modal-preview');
		if(modalobj.length == 0) {
			$(document.body).append('<div id="modal-preview" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true" style="position:absolute;top:5%;"></div>');
			var modalobj = $('#modal-preview');
		}
		html = '<iframe width="100%" scrolling="yes" height="100%" frameborder="0" src="<?php  echo create_url('site/preview')?>&styleid='+styleid+'" id="preview" name="preview" style="width: 320px; overflow: visible; height: 480px;"></iframe><div class="modal-footer"><a href="<?php  echo $_W['siteroot'];?><?php  echo create_url('mobile/channel', array('name' => 'index', 'weid' => $_W['weid']))?>&styleid='+styleid+'" target="preview" class="btn">首页</a><a href="<?php  echo $_W['siteroot'];?><?php  echo create_url('mobile/channel', array('name' => 'home', 'weid' => $_W['weid']))?>" target="preview" class="btn">个人中心</a><a href="#" class="btn" data-dismiss="modal" aria-hidden="true">关闭</a></div>';
		modalobj.html(html);
		modalobj.css({'width' : 320, 'marginLeft' : 0 - 320 / 2});
		modalobj.css({'height' : 480});
		modalobj.on('hidden', function(){modalobj.remove();});
		return modalobj.modal({'show' : true});
	}
//-->
</script>
<?php  include template('common/footer', TEMPLATE_INCLUDEPATH);?>
