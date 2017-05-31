<?php defined('IN_IA') or exit('Access Denied');?><?php  include $this->template('common/header', TEMPLATE_INCLUDEPATH);?>
<?php  if($op=='display') { ?>
<style>
.table td span{display:inline-block;}
.table td input{margin-bottom:0;}
</style>
<ul class="nav nav-tabs">
	<li class="active"><a href="<?php  echo $this->createWebUrl('manage')?>">优惠券列表</a></li>
</ul>
<form action="" method="post">
<div class="main">
	<div style="padding:15px;">
	<form action="" method="post" onsubmit="return formcheck(this)">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:60px;">显示顺序</th>
					<th style="width:100px;">名称</th>
					<th style="width:100px;">有效期</th>
					<th style="width:100px;">创建时间</th>
					<th style="width:200px;">满多少抵多少</th>
					<th style="width:80px;">总数量</th>
					<th style="width:80px;">每天限领</th>
					<th style="width:80px;">剩余数量</th>
					<th style="width:80px;">每人限领</th>
					<th style="width:120px;">每人每天限领</th>
					<!-- <th style="width:80px;">状态</th> -->
					<th style="min-width:100px; text-align:right;">操作</th>
				</tr>
			</thead>
			<tbody>
				<?php  if(is_array($coupons)) { foreach($coupons as $row) { ?>
				<tr>
					<td><input type="text" class="span1" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>"></td>
					<td><?php  echo $row['name'];?></td>
					<td><?php  echo date("Y-m-d",$row['start_time'])?><br/><?php  echo date("Y-m-d",$row['end_time'])?></td>
					<td><?php  echo date("Y-m-d",$row['create_time'])?></td>
					<td>满<?php  echo $row['total_money'];?>元抵<?php  echo $row['discount_money'];?>元</td>
					<td><?php  echo $row['total_num'];?></td>
					<td><?php  echo $row['day_sum'];?></td>
					<td><?php  echo $row['surplus_num'];?></td>
					<td><?php  echo $row['user_sum'];?></td>
					<td><?php  echo $row['user_day_sum'];?></td>
					<!-- <td><?php echo $row['status']?'在状态':'不在状态'?></td> -->
					<td style="text-align:right;">
						<!--<a class="btn" href="<?php  echo $this->createWebUrl('manage',array('id' => $row['id'],'op'=>'no'))?>"><i class="icon-ban-circle"  title="不在状态"></i></a>
                         <a class="btn" href="<?php  echo $this->createWebUrl('manage',array('id' => $row['id'],'op'=>'yes'))?>"><i class="icon-ok-circle"  title="在状态"></i></a>
						<a href="<?php  echo $this->createWebUrl('manage', array('id' => $row['id'],'op'=>'detail'))?>" class="btn btn-small" title="优惠券详情"><i class="icon-search"></i></a>-->
						<?php  if($row['isuse']==0) { ?><a href="<?php  echo $this->createWebUrl('manage', array('id' => $row['id'],'op'=>'post'))?>" class="btn btn-small" title="编辑"><i class="icon-edit"></i></a><?php  } else { ?><span class="label label-error">已领</span><?php  } ?>
						<a onclick="return confirm('删除优惠券将删除所有用户的优惠券，确认吗？');return false;" href="<?php  echo $this->createWebUrl('manage', array('id' => $row['id'],'op'=>'delete'))?>" class="btn btn-small" title="删除"><i class="icon-remove"></i></a>
					</td>
				</tr>
				<?php  } } ?>
				<tr>
					<td></td>
					<td colspan="10">
						<a href="<?php  echo $this->createWebUrl('manage',array('op'=>'post'))?>""><i class="icon-plus-sign-alt"></i> 新建优惠券</a>
					</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="5">
						<input name="submit" type="submit" class="btn btn-primary" value="提交">
						<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
					</td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
</div>
</form>
<?php  } else if($op = 'post') { ?>
<style type="text/css">
.form .alert{width:700px;}
</style>
<ul class="nav nav-tabs">
<li><a href="<?php  echo $this->createWebUrl('manage')?>">优惠券列表</a></li>
	<li class="active"><a href="<?php  echo $this->createWebUrl('manage',array('op'=>'post'))?>"><?php  if($id) { ?>编辑优惠券<?php  } else { ?>新建优惠券<?php  } ?></a></li>
</ul>
<div class="main">
	<form class="form-horizontal form" action="" method="post" enctype="multipart/form-data" onsubmit="return validate(this);">
	<input type="hidden" name="id" value="<?php  echo $id;?>"/>
	<input type="hidden" name="op" value="post"/>
		<table class="tb">
			<tr>
				<th>
				</th>
				<td>
				</td>
			</tr>
			<tr>
				<th><label for="">排序</label></th>
				<td>
					<input type="text" name="displayorder" class="span4" value="<?php  echo $coupon['displayorder'];?>" placeholder='1'/>
				</td>
			</tr>
			<tr>
				<th><label for="">名称<span style="color:red">*</span></label></th>
				<td>
					<input type="text" class="span4" name="coupon_name" value="<?php  echo $coupon['name'];?>" placeholder='优惠券'/>
				</td>
			</tr>
<!-- 			<tr>
				<th><label for="">面额</label></th>
				<td>
					<input type="text" name="money" class="span4" value="<?php  echo $coupon['money'];?>" />
				</td>
			</tr> -->
			<tr>
				<th>金额<span style="color:red">*</span></th>
				<td>
					<span class="uneditable-input span7">满
						<input type="text" value="<?php  echo $coupon['total_money'];?>" class="span1" name="total_money" placeholder="100">
						元，抵
						<input type="text" value="<?php  echo $coupon['discount_money'];?>" class="span1" name="discount_money" placeholder="10">
						元
					</span>
					<div class="help-block">例上:消费满100元后才能使用本优惠券抵10元。</div>
				</td>
			</tr>
<!-- 			<tr>
				<th><label for="">类型<span style="color:red">*</span></label></th>
				<td>
				<select class="span3" style="margin-right:15px;" name="type">
					<option value="0">请选择类型</option>
					<?php  if(is_array($types)) { foreach($types as $key => $row) { ?>
					<option value="<?php  echo $key;?>" <?php  if($key == $coupon['type']) { ?> selected="selected"<?php  } ?>><?php  echo $row;?></option>
					<?php  } } ?>
				</select>
				</td>
			</tr> -->
			<tr>
				<th>有效期<span style="color:red">*</span></th>
				<td>
					<?php  echo tpl_form_field_daterange('datelimit', array('starttime'=>$coupon['start_time'],'endtime'=>$coupon['end_time']),array('time'=>true))?>
				</td>
			</tr>
			<!-- <tr>
				<th><label for="">图文标题<span style="color:red">*</span></label></th>
				<td>
					<input type="text" class="span4" name="title" value="<?php  echo $coupon['title'];?>" />
				</td>
			</tr>
			<tr>
				<th><label for="">图文封面<span style="color:red">*</span></label></th>
				<td>
					<?php  echo tpl_form_field_image('logo', $coupon['logo'])?>
				</td>
			</tr>
			<tr>
				<th>图文描述<span style="color:red">*</span></th>
				<td>
					<textarea style="height:100px; width:50%;" class="span5" name="description" cols="70"><?php  echo $coupon['description'];?></textarea>
				</td>
			</tr>
			<tr>
				<th>优惠券描述<span style="color:red">*</span></th>
				<td>
					<textarea style="height:100px; width:50%;" class="span5 richtext-clone" name="cp_dst" cols="70"><?php  echo $coupon['cp_dst'];?></textarea>
				</td>
			</tr> -->
			<tr>
				<th>总数量<span style="color:red">*</span></th>
				<td>
					<span class="uneditable-input span7">优惠券总数量
						<input type="text" value="<?php  echo $coupon['total_num'];?>" class="span1" name="total_num" placeholder="100" <?php  if($isuse) { ?>readonly='true'<?php  } ?>>
						张，每天限领
						<input type="text" value="<?php  echo $coupon['day_sum'];?>" class="span1" name="day_sum" placeholder="10" <?php  if($isuse) { ?>readonly='true'<?php  } ?>>
						张
					</span>
					<!-- <div class="help-block">优惠券总数量，每天限领优惠券数量。</div> -->
				</td>
			</tr>
			<tr>
				<th>每人数量<span style="color:red">*</span></th>
				<td>
					<span class="uneditable-input span7">每人优惠券总数
						<input type="text" value="<?php  echo $coupon['user_sum'];?>" class="span1" name="user_sum" placeholder="3" <?php  if($isuse) { ?>readonly='true'<?php  } ?>>
						张，每天限领
						<input type="text" value="<?php  echo $coupon['user_day_sum'];?>" class="span1" name="user_day_sum" placeholder="1" <?php  if($isuse) { ?>readonly='true'<?php  } ?>>
						张
					</span>
				</td>
			</tr>
			<tr>
			<th>备注:</th>
			<td>
				<div class="help-block" style="color:red">请认真填写,用户领取优惠券后,本优惠券将不能修改,只能删除,删除后,用户领取的本优惠券也将删除</div>
			</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<button type="submit" class="btn btn-primary span3" name="submit" value="提交">提交</button>
					<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
				</td>
			</tr>
		</table>
	</form>
</div>
<script type="text/javascript" src="./resource/script/jquery-ui-1.10.3.min.js"></script>
<script type="text/javascript">
	kindeditor($('.richtext-clone'));
</script>
<script text="text/javascript">
	function validate(form) {
		if (!$.trim(form['total_money'].value)||!$.trim(form['discount_money'].value)) {
			message('请输入金额', '', 'error');
			return false;
		}
		if ($.trim(form['day_sum'].value)<$.trim(form['user_day_sum'].value)) {
			message('总数量:每人限领 必须大于 每人数量: 每天限领', '', 'error');
			return false;
		}
		if ($.trim(form['total_num'].value)<$.trim(form['user_sum'].value)) {
			message('总数量 必须大于 每人数量', '', 'error');
			return false;
		}
		if ($.trim(form['total_num'].value)<$.trim(form['day_sum'].value)) {
			message('总数量 必须大于 总数量:每人限领', '', 'error');
			return false;
		}
		if ($.trim(form['user_sum'].value)<$.trim(form['user_day_sum'].value)) {
			message('每人数量 必须大于 每人数量:每人限领', '', 'error');
			return false;
		}
		if (!$.trim(form['coupon_name'].value)) {
			message('请输入优惠券名称', '', 'error');
			return false;
		}
		if (form['coupon_id'].value==0) {
			message('请选择课程！', '', 'error');
			return false;
		}
		if (!$.trim(form['title'].value)) {
			message('请输入图文消息标题！', '', 'error');
			return false;
		}
		if (!$.trim(form['logo'].value)) {
			message('请输入图文消息封面！', '', 'error');
			return false;
		}
	}
</script>
<?php  } ?>
<?php  include $this->template('common/footer', TEMPLATE_INCLUDEPATH);?>