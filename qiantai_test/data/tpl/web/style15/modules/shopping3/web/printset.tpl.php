<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
 <ul class="nav nav-tabs">
	<li><a href="<?php  echo $this->createWebUrl('shopset')?>">基本设置</a></li>
	<li><a href="<?php  echo $this->createWebUrl('mailset')?>">邮件设置</a></li>		
 	<li class="active"><a href="<?php  echo $this->createWebUrl('printset')?>">打印机设置</a></li>	
	<li><a href="<?php  echo $this->createWebUrl('smsset')?>">短信设置</a></li>	
	<li><a href="<?php  echo $this->createWebUrl('orderset')?>">订单限制</a></li>	
	<li><a href="<?php  echo $this->createWebUrl('ordertype')?>">店铺类型</a></li>	
</ul>

<div class="main">
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
	<input type="hidden" name="parentid" value="<?php  echo $set['id'];?>" />
		<h4>GPRS打印机基本设置 <small>由程序指定的GPRS打印机才有效</small></h4>
		<table class="tb">
			<tr>
				<th><label for="">是否开启</label></th>
				<td>
					<label for="isshow1" class="radio inline"><input type="radio" name="print_status" value="1" id="isshow1" <?php  if($set['print_status']==1) { ?>checked="true"<?php  } ?> /> 是</label>
					&nbsp;&nbsp;&nbsp;
					<label for="isshow2" class="radio inline"><input type="radio" name="print_status" value="0" id="isshow2"  <?php  if($set['print_status']==0) { ?>checked="true"<?php  } ?> /> 否</label>
					<span class="help-block"></span>
				</td>
			</tr>
			<tr>
				<th><label for="">打印机款式</label></th>
				<td>
					<label for="print_type2" class="radio inline"><input type="radio" name="print_type" value="0" id="print_type2" <?php  if($set['print_type']==0) { ?>checked="true"<?php  } ?>/>旧款打印机</label>
					&nbsp;&nbsp;&nbsp;
					<label for="print_type2" class="radio inline"><input type="radio" name="print_type" value="1" id="print_type2"  <?php  if($set['print_type']==1) { ?>checked="true"<?php  } ?>/>新款打印机</label>
					&nbsp;&nbsp;&nbsp;
					<span class="help-block"></span>
				</td>
			</tr>			
			<tr>
				<th><label for="">打印机机身号</label></th>
				<td>
					<input type="text" name="print_usr" class="span6" value="<?php  echo $set['print_usr'];?>" />
					<p class="help-block">打印机机身号,新款打印机支持多打印机,打印机号用英文逗号隔开</p>					
				</td>
			</tr>
  			<tr>
				<th><label for="">打印联数</label></th>
				<td>
					<input type="text" name="print_nums" class="span6" value="<?php  echo $set['print_nums'];?>" />
					<p class="help-block">默认1，如果您选择了打印机发送短信，旧版本的机器是一联发一条，新版机器一次发一条</p>					
				</td>
			</tr>
  			<tr>
				<th><label for="">头部自定义信息</label></th>
				<td>
					<input type="text" name="print_top" class="span6" value="<?php  echo $set['print_top'];?>" />
					<p class="help-block">建议少于20字</p>					
				</td>
			</tr>
  			<tr>
				<th><label for="">底部自定义信息</label></th>
				<td>
					<input type="text" name="print_bottom" class="span6" value="<?php  echo $set['print_bottom'];?>" />
					<p class="help-block">建议少于20字</p>					
				</td>
			</tr>			
			<tr>
				<th></th>
				<td>
					<input name="submit" type="submit" value="提交" class="btn btn-primary span3">
					<input type="hidden" name="id" value="<?php  echo $set['id'];?>" />
					<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
 
				</td>
			</tr>
		</table>
	</form>
</div>
<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>