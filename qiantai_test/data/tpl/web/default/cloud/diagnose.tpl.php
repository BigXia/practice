<?php defined('IN_IA') or exit('Access Denied');?><?php  include template('common/header', TEMPLATE_INCLUDEPATH);?>
<div class="main">
	<form action="" method="post" class="form-horizontal form" onsubmit="return confirm('如果您的系统没有发生云服务链接异常, 请不要使用重置功能.');">
		<h4>云服务状态诊断</h4>
		<table class="tb">
			<tr>
				<th>站点URL</th>
				<td><?php  echo $_W['siteroot'];?></td>
			</tr>
			<tr>
				<th>站点ID</th>
				<td><?php  echo $_W['setting']['site']['key'];?></td>
			</tr>
			<tr>
				<th>通信密钥</th>
				<td>
					<div><?php  echo substr($_W['setting']['site']['token'], 0, 5) . '*****' . substr($_W['setting']['site']['token'], -5, 5);?></div>
					<div class="help-block">
						<a href="javascript:;" onclick="message('Token: '+$('#token').val(), '', 'tips')">查看全部</a>&nbsp;&nbsp;
						<input type="hidden" value="<?php  echo $_W['setting']['site']['token'];?>" id="token" />
					</div>
					<div class="help-block">请查看您的站点ID和通信密钥, 需要保证与<a href="<?php  echo create_url('cloud/profile');?>">云服务平台记录</a>的值一致, 否则不能正常使用云平台的各项服务. </div>
				</td>
			</tr>
			<tr>
				<th>系统版本</th>
				<td>WeEngine<?php  echo IMS_VERSION?><?php  echo IMS_FAMILY?> (Release <?php  echo IMS_RELEASE_DATE?>)</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input type="submit" name="submit" value="重置站点ID和通信密钥" class="btn" />
					<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
					<div class="help-block">如果您的站点ID和通信密钥与您绑定的站点信息中的记录不一致, 或访问云服务失败并多次重试后无效时. 请点击重置按钮, 重新注册您的站点信息(如果需要使用相同的微擎论坛账号绑定, 需要先在云服务后台中解除绑定) </div>
				</td>
			</tr>
		</table>
	</form>
</div>
<?php  include template('common/footer', TEMPLATE_INCLUDEPATH);?>
