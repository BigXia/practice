<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
 <ul class="nav nav-tabs">
	<li><a href="<?php  echo $this->createWebUrl('shopset')?>">基本设置</a></li>
	<li><a href="<?php  echo $this->createWebUrl('mailset')?>">邮件设置</a></li>		
 	<li><a href="<?php  echo $this->createWebUrl('printset')?>">打印机设置</a></li>	
	<li><a href="<?php  echo $this->createWebUrl('smsset')?>">短信设置</a></li>	
	<li><a href="<?php  echo $this->createWebUrl('orderset')?>">订单限制</a></li>	
	<li class="active"><a href="<?php  echo $this->createWebUrl('ordertype')?>">店铺类型</a></li>	
</ul>
<style>
.table td span{display:inline-block;}
.table td input{margin-bottom:0;}
</style>
<script type="text/javascript">
$(function(){
	$('div.make-switch').on('switch-change', function (e, data) {
		var rids = [];
		$('div.make-switch :checkbox:checked').each(function(){
			rids.push($(this).val());
		});
		
		$.post(location.href, {'ordertype': rids.toString()}, function(dat){
			if(dat.type=='error'){
				alert(dat.message);
				location.reload();
			}
		},'json');
	});
});
</script>
<form action="" method="post">
<div class="main">
	<div style="padding:15px;">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:200px;">服务名称</th>
					<th style="min-width:260px;">功能说明</th>
					<th style="width:60px;">状态</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>外卖外送</td>
					<td>外卖外送</td>
					<td>
						<div class="make-switch" data-on-label="启用" data-off-label="停用">
							<input type="checkbox" value="1" <?php  if($set['ordretype1']==1) { ?>checked="checked"<?php  } ?> name="ordertype1" />
						</div>
					</td>
				</tr>
				<tr>
					<td>店内,点餐</td>
					<td>店内,点餐</td>
					<td>
						<div class="make-switch" data-on-label="启用" data-off-label="停用">
							<input type="checkbox" value="2" <?php  if($set['ordretype2']==1) { ?>checked="checked"<?php  } ?> name="ordertype2" />
						</div>
					</td>
				</tr>
				<tr>
					<td>自助自提</td>
					<td>自助自提</td>
					<td>
						<div class="make-switch" data-on-label="启用" data-off-label="停用">
							<input type="checkbox" value="3" <?php  if($set['ordretype3']==1) { ?>checked="checked"<?php  } ?> name="ordertype3" />
						</div>
					</td>
				</tr>
				 
							</tbody>
		</table>
	</div>
</div>
</form>

<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>