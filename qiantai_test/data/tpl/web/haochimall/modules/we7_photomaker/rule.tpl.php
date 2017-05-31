<?php defined('IN_IA') or exit('Access Denied');?><style>
.photo_list{padding:15px 0;}
.photo_list .alert{width:auto; margin-top:10px; overflow:hidden;}
.photo_list .photo_preview{width:130px;}
.photo_list .photo_preview img{width:130px; margin-bottom:5px;}
.photo_list .photo_preview label{padding:0;}
.photo_list .photo_preview input[type="radio"]{margin-left:0; margin-right:10px;}
.photo_list table{margin-left:40px;}
.photo_list table th,.photo_list table td{padding-bottom:5px;}
.photo_list table th{width:60px; font-size:14px;}
.photo_list table input,.photo_list table select{margin-bottom:0;}

.ipost-list{position:relative;width:100%;margin:10px 0px 0 0;}
.ipost-list .holder{float:left;display:inline;width:114px;height:112px;margin-right:12px;font-size:12px;position:relative;border:2px dashed #ccc;}
.imgbox{float:left;display:inline;width:124px;height:100px;margin-right:12px;font-size:12px;position:relative;}
.item_box{display:block;width:100px;height:80px;padding:6px;border:#d3d3d3 1px solid;background-color:#f6f6f6;overflow:hidden;}

a.item_close{position:absolute;right:-6px;top:-6px;}

.item_input input { width: 108px; height: 20px;margin-top: 0;margin-top: 0\0;*margin-top: -1px;_margin-top: -1px;border: #d3d3d3 1px solid;border-top: none;display: block;overflow: hidden;padding: 0 2px;}

</style>
<div id="form" class="alert alert-block alert-new ">
	<h4 class="alert-heading">设备信息</h4>
	<input type="hidden" name="replyid" value="<?php  echo $reply['id'];?>">
	<table width="100%">
		<tr>
			<th></th>
			<td>
				<a href="http://bbs.we7.cc/thread-3425-1-1.html" target="_blank" style="font-weight:600; color:red;">查看帮助及购买说明</a>
			</td>
		</tr>
		<tr>
			<th>机器码</th>
			<td>
				<input type="text" value="<?php  echo $reply['sn'];?>" class="span5" name="sn">
				<div class="help-block">微拍设备的唯一标识码，运行微拍设备的打印软件查看生成的机器码</div>
			</td>
		</tr>
		<tr>
			<th>访问密钥</th>
			<td>
				<input type="text" value="<?php  echo $reply['token'];?>" class="span3" name="apitoken">
				<div class="help-block">Token可任意填写，必须保证规则端与设备端填写一致。用作生成签名（该Token会和接口URL中包含的Token进行比对，从而验证安全性）。</div>
			</td>
		</tr>
	</table>
</div>
<div id="form" class="alert alert-block alert-new ">
	<h4 class="alert-heading">基本设置</h4>
	<input type="hidden" name="replyid" value="<?php  echo $reply['id'];?>">
	<table width="100%">
		<tr>
			<th>是否启用</th>
			<td>
				<label for="radio_11" class="radio inline"><input type="radio" name="status" id="radio_11" value="1" <?php  if($reply['status']) { ?>checked<?php  } ?> /> 启用</label>
				<label for="radio_21" class="radio inline"><input type="radio" name="status" id="radio_21" value="0" <?php  if(empty($reply['status'])) { ?>checked<?php  } ?> /> 禁用</label>
				<div class="help-block">设置设备是否可用</div>
			</td>
		</tr>
		<tr>
			<th>开启验证码</th>
			<td>
				<label for="radio_7" class="radio inline"><input type="radio" name="enableauthcode" id="radio_7" value="1" <?php  if($reply['enableauthcode']) { ?>checked<?php  } ?> /> 启用</label>
				<label for="radio_8" class="radio inline"><input type="radio" name="enableauthcode" id="radio_8" value="0" <?php  if(empty($reply['enableauthcode'])) { ?>checked<?php  } ?> /> 禁用</label>
				<div class="help-block">设置设备是否可用</div>
			</td>
		</tr>
		<tr>
			<th>可打印次数</th>
			<td>
				<input type="text" value="<?php  echo $reply['maxuse'];?>" class="span5" name="maxuse">
				<div class="help-block">每位粉丝每日可打印次数</div>
			</td>
		</tr>
		<tr>
			<th>打印机剩余纸张数</th>
			<td>
				<input type="text" value="<?php  echo $reply['maxtotal'];?>" class="span5" name="maxtotal">
				<div class="help-block">填写打印机放入纸张数量，当纸张为0时，则不能打印。-1为关闭该选项</div>
			</td>
		</tr>
		<tr>
			<th>粉丝留言</th>
			<td>
				<label for="radio_31" class="radio inline"><input type="radio" name="enablemsg" id="radio_31" value="1" <?php  if($reply['enablemsg']) { ?>checked<?php  } ?>/> 启用</label>
				<label for="radio_41" class="radio inline"><input type="radio" name="enablemsg" id="radio_41" value="0" <?php  if(empty($reply['enablemsg'])) { ?>checked<?php  } ?>/> 禁用</label>
				<div class="help-block">开启后粉丝可以自定留言在照片上</div>
			</td>
		</tr>
		<tr>
			<th>照片尺寸</th>
			<td>
				<label for="radio_9" class="radio inline"><input type="radio" name="photosize" id="radio_9" value="3" <?php  if($reply['size'] == '3') { ?>checked<?php  } ?> /> 3寸</label>
				<label for="radio_10" class="radio inline"><input type="radio" name="photosize" id="radio_10" value="4" <?php  if($reply['size'] == '4') { ?>checked<?php  } ?> /> 4寸（lomo卡）</label>
				<label for="radio_5" class="radio inline"><input type="radio" name="photosize" id="radio_5" value="5" <?php  if($reply['size'] == '5') { ?>checked<?php  } ?> /> 5寸</label>
				<label for="radio_6" class="radio inline"><input type="radio" name="photosize" id="radio_6" value="6" <?php  if($reply['size'] == '6') { ?>checked<?php  } ?> /> 6寸</label>
				<div class="help-block">设置打印照片的尺寸</div>
			</td>
		</tr>
		<tr>
			<th>进入提示内容</th>
			<td>
				<textarea style="height:200px;" class="span6" name="tipsentry" cols="70"><?php  echo $reply['tipsentry'];?></textarea>
				<div class="help-block">用户触发打印时候的提示</div>
			</td>
		</tr>
		<tr>
			<th>打印成功提示内容</th>
			<td>
				<textarea style="height:200px;" class="span6" name="tipssuccess" cols="70"><?php  echo $reply['tipssuccess'];?></textarea>
				<div class="help-block"></div>
			</td>
		</tr>
		<tr>
			<th>打印失败提示内容</th>
			<td>
				<textarea style="height:200px;" class="span6" name="tipserror" cols="70"><?php  echo $reply['tipserror'];?></textarea>
				<div class="help-block"></div>
			</td>
		</tr>
	</table>
</div>
<div class="alert alert-block alert-new ">
	<h4 class="alert-heading">界面相关<a href="#" class="pull-right lightlink2 smallfont">预览</a></h4>
	<table width="100%">
		<tr>
			<th>主界面模板风格</th>
			<td>
				<select name="template">
					<option value="default">默认模板</option>
				</select>
				<div class="help-block"></div>
			</td>
		</tr>
		<tr>
			<th>广告语类型</th>
			<td>
				<label for="adtype1" class="radio inline"><input onclick="$('#adpic').show();$('#adtext').hide();" type="radio" name="adtype" value="1" id="adtype1" <?php  if($reply['adtype'] == 1 || empty($reply['adtype'])) { ?>checked<?php  } ?>> 图片</label>&nbsp;&nbsp;&nbsp;
				<label for="adtype2" class="radio inline"><input onclick="$('#adpic').hide();$('#adtext').show();" type="radio" name="adtype" value="2" id="adtype2" <?php  if($reply['adtype'] == 2) { ?>checked<?php  } ?>> 文字</label>
				<label for="adtype3" class="radio inline"><input onclick="$('#adpic').hide();$('#adtext').hide();" type="radio" name="adtype" value="3" id="adtype3" <?php  if($reply['adtype'] == 3) { ?>checked<?php  } ?>> 不显示</label>
				<div class="help-block">启用“图片”广告语后，由于显示空间的问题，会禁用粉丝留言。启用“文字”广告语则不存在此问题。</div>
			</td>
		</tr>
		<tr>
			<th>广告语</th>
			<td>
				<div id="adtext" <?php  if($reply['adtype'] != 2) { ?>style="display:none;"<?php  } ?>>
					<textarea style="height:200px;" class="span6" name="admsg" cols="70"><?php  echo $reply['admsg'];?></textarea>
					<div class="help-block">显示在照片侧边的广告语，支持两行</div>
				</div>
				<div id="adpic" <?php  if($reply['adtype'] != 1 && !empty($reply['adtype'])) { ?>style="display:none;"<?php  } ?>>
					横：<?php  echo tpl_form_field_image('adurlh', $reply['adurlh'], './source/modules/we7_photomaker/images/logoh.jpg')?>
					竖：<?php  echo tpl_form_field_image('adurlv', $reply['adurlv'], './source/modules/we7_photomaker/images/logov.jpg')?>
					<div class="help-block">显示在照片侧边的广告语，需要上传横版图及竖版图</div>
				</div>
			</td>
		</tr>
		<tr>
			<th>默认留言</th>
			<td>
				<input type="text" value="<?php  echo $reply['leavemsg'];?>" class="span6" name="leavemsg">
				<div class="help-block">当开启粉丝留后，用户未设置留言默认打印的留言内容</div>
			</td>
		</tr>
		<tr>
			<th>字体大小</th>
			<td>
				<input type="text" value="<?php  echo $reply['fontsize'];?>" class="span5" name="fontsize">
				<div class="help-block">字体大小，输入正整数</div>
			</td>
		</tr>
		<tr>
			<th>字体</th>
			<td>
				<select name="fontfamily" onchange="$('#previewfontfamily').attr('src', '<?php  echo $_W['siteroot'];?>/source/modules/we7_photomaker/images/' + $(this).val() + '.jpg')">
					<option value="jingleiti" <?php  if($reply['fontfamily'] == 'jingleiti') { ?> selected<?php  } ?>>静蕾体</option>
					<option value="msyahei" <?php  if($reply['fontfamily'] == 'msyahei') { ?> selected<?php  } ?>>微软雅黑</option>
					<option value="songti" <?php  if($reply['fontfamily'] == 'songti') { ?> selected<?php  } ?>>宋体</option>
					<option value="heiti" <?php  if($reply['fontfamily'] == 'heiti') { ?> selected<?php  } ?>>黑体</option>
					<option value="kaiti" <?php  if($reply['fontfamily'] == 'kaiti') { ?> selected<?php  } ?>>楷体</option>
					<option value="lishu" <?php  if($reply['fontfamily'] == 'lishu') { ?> selected<?php  } ?>>隶书</option>
					<option value="aixinti" <?php  if($reply['fontfamily'] == 'aixinti') { ?> selected<?php  } ?>>爱心体</option>
					<option value="dadoudouti" <?php  if($reply['fontfamily'] == 'dadoudouti') { ?> selected<?php  } ?>>大豆豆体</option>
					<option value="xiaodoudouti" <?php  if($reply['fontfamily'] == 'xiaodoudouti') { ?> selected<?php  } ?>>小豆豆体</option>
					<option value="daiyuti" <?php  if($reply['fontfamily'] == 'daiyuti') { ?> selected<?php  } ?>>林黛玉体</option>
					<option value="yegenyouti" <?php  if($reply['fontfamily'] == 'yegenyouti') { ?> selected<?php  } ?>>叶根友童体</option>
				</select>
				<div style="margin-top:10px; height:50px;"><img id="previewfontfamily" src="<?php  echo $_W['siteroot'];?>source/modules/we7_photomaker/images/<?php  if($reply['fontfamily']) { ?><?php  echo $reply['fontfamily'];?><?php  } else { ?>jingleiti<?php  } ?>.jpg" /></div>
				<div class="help-block">照片打印时候的字体</div>
			</td>
		</tr>
		<tr>
			<th><label for="">文字颜色</label></th>
			<td>
				<?php  echo tpl_form_field_color('fontcolor', $reply['fontcolor'])?>
				<span class="help-block">照片打印时候的字体颜色</span>
			</td>
		</tr>
		<tr>
			<th><label for="">二维码</label></th>
			<td>
				<?php  echo tpl_form_field_image('qrcode', $reply['qrcode'])?>
				<span class="help-block">您可以指定一张二维码图片，默认直接调用该公众号的二维码图片。</span>
			</td>
		</tr>
		<tr>
			<th>待机主图片</th>
			<td>
				<?php  echo tpl_form_field_image('mainpic', $reply['mainpic'])?>
				<div class="help-block">此图片显示在打印客户端主界面，默认大小为 1330 * 750（也可根据该比例进行调整）</div>
			</td>
		</tr>
		<tr>
			<th>操作说明</th>
			<td>
				<textarea style="height:200px;" class="span7 richtext-clone" name="content" cols="70"><?php  echo $reply['content'];?></textarea>
				<div class="help-block">此段文字显示在二维码的下方</div>
			</td>
		</tr>
		<tr>
			<th>广告图片</th>
			<td>
				<div class="photo_list">
					<input name="token" type="hidden" value="<?php  echo $_W['token'];?>" />
					<span id="selectimage" class="btn btn-primary"><i class="icon-plus"></i> 上传照片</span><span style="color:red;">
					<input name="hspiclist" type="hidden" value="<?php  echo $item['hs_pic'];?>" /></span>
					<div id="file_upload-queue" class="uploadify-queue">
				</div>
				<ul class="ipost-list ui-sortable" id="fileList">
				<?php  if(is_array($reply['adpics'])) { foreach($reply['adpics'] as $v) { ?>
					<li class="imgbox" style="list-type:none">
					<a class="item_close icon-remove-circle icon-2x" href="javascript:;" onclick="deletepic(this);" title="删除"></a>
					<span class="item_box">
						<img src="<?php  echo $_W['attachurl'];?><?php  echo $v;?>" style="max-height:100%;">
					</span>
					<input type="hidden" value="<?php  echo $v;?>" name="adpics[]">
					<span class="item_input"><input name="sort[]" placeholder="图片排序" class="bewrite" /><i class="shadow hc"></i></span>
					</li>
				<?php  } } ?>
				</ul>
				<div class="help-block">此图片默认大小为440 * 285（也可根据该比例进行调整）</div>
			</td>
		</tr>
	</table>
</div>
<script type="text/javascript">
<!--
	$(function(){
		var i = 0;
		$('#selectimage').click(function() {
			var editor = KindEditor.editor({
				allowFileManager : false,
				imageSizeLimit : '30MB',
				uploadJson : './index.php?act=attachment&do=upload&__weid=<?php  echo $_W['weid'];?>'
			});
			editor.loadPlugin('multiimage', function() {
				editor.plugin.multiImageDialog({
					clickFn : function(list) {
						if (list && list.length > 0) {
							for (i in list) {
								if (list[i]) {
									html =	'<li class="imgbox" style="list-type:none">'+
									'<a class="item_close icon-remove-circle icon-2x" href="javascript:;" onclick="deletepic(this);" title="删除"></a>'+
									'<span class="item_box"> <img src="'+list[i]['url']+'" style="max-height:100%;"></span>'+
									'<input type="hidden" name="adpics[]" value="'+list[i]['filename']+'" />'+
									'<span class="item_input"><input name="sort[]" placeholder="图片排序" class="bewrite" /><i class="shadow hc"></i></span>'+
									'</li>';
									$('#fileList').append(html);
									i++;
								}
							}
							editor.hideDialog();
						} else {
							alert('请先选择要上传的图片！');
						}
					}
				});
			});
		});

		$('input[name="photosize"]').click(function(){
			$('#width').val($(this).attr('width'));
			$('#height').val($(this).attr('height'));
		});

		kindeditor($('.richtext-clone'));
	});

	function deletepic(obj){
		if (confirm("确认要删除？")) {
			var $thisob=$(obj);
			var $liobj=$thisob.parent();
			var picurl=$liobj.children('input').val();
			$.post('<?php  echo $this->createMobileUrl('ajaxdelete',array())?>',{ pic:picurl},function(m){
				if(m=='1') {
					$liobj.remove();
				} else {
					alert("删除失败");
				}
			},"html");	
		}
	}
//-->
</script>