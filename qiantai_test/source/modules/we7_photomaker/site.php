<?php
/**
 * 微擎微拍模块微站定义
 *
 * @author 微擎团队
 * @url 
 */
defined('IN_IA') or exit('Access Denied');

class We7_photomakerModuleSite extends WeModuleSite {

	public function doWebDevice() {
		header('Location: rule.php?act=post&module=we7_photomaker');
		exit;
	}
	
	public function doMobileAjaxdelete() {
		global $_GPC;
		$delurl = $_GPC['pic'];
		if(file_delete($delurl)) {
			echo 1;
		} else {
			echo 0;
		}
	}
	
	public function doWebGetSetting() {
		global $_GPC, $_W;
		$result = array('status' => 0, 'data' => '');
		
		$sn = $_GPC['sn'];
		$sign = $_GPC['sign'];
		
		$device = pdo_fetch("SELECT * FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		
		$data = array(
			'fontfamily' => $device['fontfamily'],
			'fontcolor' => $device['fontcolor'],
			'fontsize' => $device['fontsize'],
			'size' => $device['size'],
			'qrcode' => $_W['attachurl'] . (empty($device['qrcode']) ? 'qrcode_'.$device['weid'].'.jpg' : $device['qrcode']),
		);
		if ($device['adtype'] == 1) {
			$data['admsg'] = '';
			$data['adurlv'] = $device['adurlv'] ? $_W['attachurl'] . '/' .$device['adurlv'] : $_W['siteroot'] . 'images/logov.jpg';
			$data['adurlh'] = $device['adurlh'] ? $_W['attachurl'] . '/' .$device['adurlh'] : $_W['siteroot'] . 'images/logoh.jpg';
		} elseif ($device['adtype'] == 2) {
			$data['admsg'] = $device['admsg'];
			$data['adurlv'] = '';
			$data['adurlh'] = '';
		} else {
			$data['admsg'] = '';
			$data['adurlv'] = '';
			$data['adurlh'] = '';
		}
		$result['data'] = $data;
		message($result, '', 'ajax');
	}
	
	public function doWebGetContent() {
		global $_GPC, $_W;
		$result = array('status' => 0, 'data' => '');
		
		$sn = $_GPC['sn'];
		$sign = $_GPC['sign'];
		
		$device = pdo_fetch("SELECT content, rid, token FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		$root = str_replace('resource/attachment/', '', str_replace('source/modules/we7_photomaker/', '', $_W['attachurl']));
 		include $this->template('main_content');
	}
	
	public function doWebMain() {
		global $_GPC, $_W;
		
		$sn = $_GPC['sn'];
		$sign = $_GPC['sign'];
		
		$device = pdo_fetch("SELECT * FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		
		$device['adpics'] = iunserializer($device['adpics']);
		$device['qrcode'] = $_W['attachurl'] . (empty($device['qrcode']) ? 'qrcode_'.$device['weid'].'.jpg' : $device['qrcode']);
		include $this->template('main_default');
	}
	
	public function doWebGetData() {
		global $_W, $_GPC;
		$result = array('status' => 0, 'data' => '');
		
		$sn = $_GPC['sn'];
		$sign = $_GPC['sign'];
		
		$device = pdo_fetch("SELECT enablemsg, leavemsg, rid, token FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		
		$data = array();
		$list = pdo_fetchall("SELECT id, leavemsg, photo FROM ".tablename('we7_photomaker_log')." WHERE status = 1 AND rid = '{$device['rid']}' LIMIT 50");
		if (!empty($list)) {
			foreach ($list as $row) {
				if (empty($row['leavemsg']) && !empty($device['enablemsg'])) {
					$row['leavemsg'] = $device['leavemsg'];
				}
				$data[] = $row;
			}
		}
		$result['data'] = $data;
		message($result, '', 'ajax');
	}
	
	public function doWebFinished() {
		global $_W, $_GPC;
		$result = array('status' => 0, 'data' => '');
		
		$id = intval($_GPC['id']);
		$sn = $_GPC['sn'];
		
		$device = pdo_fetch("SELECT enablemsg, leavemsg, rid, token, maxtotal FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		pdo_update('we7_photomaker_log', array('status' => 2), array('id' => $id));
		if ($device['maxtotal'] > 0) {
			pdo_query("UPDATE ".tablename('we7_photomaker')." SET maxtotal = maxtotal - 1 WHERE sn = :sn", array(':sn' => $sn));
		}
		exit('success');
	}
	
	public function doWebFailed() {
		global $_W, $_GPC;
		$result = array('status' => 0, 'data' => '');
		
		$sign = $_GPC['sign'];
		$id = intval($_GPC['id']);
		
		pdo_update('we7_photomaker_log', array('status' => 3), array('id' => $id));
		exit('success');
	}
	
	public function doWebBatchfinish() {
		global $_W, $_GPC;
		$result = array('status' => 0, 'data' => '');
		
		$sn = $_GPC['sn'];
		$data = $_GPC['data'];
		
		$device = pdo_fetch("SELECT enablemsg, leavemsg, rid, token, maxtotal FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		$i = 0;
		$data = json_decode($data, true);
		if (!empty($data)) {
			foreach ($data as $i => $row) {
				pdo_update('we7_photomaker_log', array('status' => $row['state']), array('id' => $row['id']));
				$i++;
			}
		}
		if ($device['maxtotal'] > 0) {
			pdo_query("UPDATE ".tablename('we7_photomaker')." SET maxtotal = maxtotal - $i WHERE sn = :sn", array(':sn' => $sn));
		}
		exit('success');
	}
	
	protected function checkSign($token = '') {
		global $_W, $_GPC;
		$sign = $_GET;
		$sign[] = $token;
		unset($sign['sign']);
		sort($sign);
		$signstr = md5(implode('', $sign));
		if ($signstr == $_GET['sign']) {
			return true;
		} else {
			return false;
		}
	}
	//获取验证码接口
	public function doWebAuthcode() {
		global $_W, $_GPC;
		$result = array('status' => 0, 'data' => '');
		
		$sn = $_GPC['sn'];
		$device = pdo_fetch("SELECT enablemsg, leavemsg, rid, token, maxtotal, authcode FROM ".tablename('we7_photomaker')." WHERE sn = :sn", array(':sn' => $sn));
		if (empty($device)) {
			$result['status'] = -1;
			$result['message'] = '您绑定的设备不存在或是已经被删除，请根据客户端机器码重新添加设备！';
			message($result, '', 'ajax');
		}
		
		if (!$this->checkSign($device['token'])) {
			$result['status'] = -2;
			$result['message'] = '您的请求来源不正确。';
			message($result, '', 'ajax');
		}
		if(empty($device['authcode'])) {
			$code['authcode'] = random(6, 1);
			if(pdo_update('we7_photomaker', $code, array('sn' => $sn)) === false) {
				$result['status'] = -3;
				$result['message'] = '系统生成验证码出错。';
				message($result, '', 'ajax');
			}
		} else {
			$code['authcode'] = $device['authcode'];
		}
		
		$result['data'] = $code['authcode'];
		message($result, '', 'ajax');
	}
	
	//系统后台打印管理
	public function doWebPrint() {
		global $_W, $_GPC;
		include model('rule');
		$foo = empty($_GPC['foo']) ? 'device_list' : $_GPC['foo'];
		if($foo == 'device_list') {
			$devices = pdo_fetchall('SELECT sn,token,weid,rid,status FROM ' . tablename('we7_photomaker') . ' WHERE weid = :weid', array(':weid' => $_W['weid']));
			foreach($devices as &$device) {
				$device['rule'] = rule_single($device['rid']);
			}
		}
		
		if($foo == 'print_manage') {
			$rid = intval($_GPC['rid']);
			if(empty($rid)) {
				message('请选择规则后再查看打印管理', '', 'error');
			}
			
			$pindex = max(1, intval($_GPC['page']));
			$psize = 20;
			
			$where = '';
			$starttime = empty($_GPC['start']) ? strtotime('-1 month') : strtotime($_GPC['start']);
			$endtime = empty($_GPC['end']) ? TIMESTAMP : strtotime($_GPC['end']) + 86399;
			$where .= " AND createtime >= '$starttime' AND createtime < '$endtime'";
			if(isset($_GPC['status']) && $_GPC['status'] != -1) {
				$where .= ' AND status = ' . intval($_GPC['status']);
			}
			$logs = pdo_fetchall('SELECT * FROM ' . tablename('we7_photomaker_log') . ' WHERE rid = :rid AND weid = :weid ' . $where . ' ORDER BY createtime DESC LIMIT ' . ($pindex - 1) * $psize . ',' . $psize, array(':rid' => $rid, ':weid' => $_W['weid']));
			$total = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('we7_photomaker_log') . ' WHERE rid = :rid AND weid = :weid ' . $where, array(':rid' => $rid, ':weid' => $_W['weid']));
			$pager = pagination($total, $pindex, $psize);
		}
		
		if($foo == 'log_del') {
			$rid = intval($_GPC['rid']);
			$id = $_GPC['id'];
			if(!is_array($id)) {
				$id = array($id);
			}
			$str = implode(',', $id);
			if(preg_match('/^(\d{1,10},)*(\d{1,10})$/', $str)) {
				$num = pdo_query('DELETE FROM ' . tablename('we7_photomaker_log') . ' WHERE weid = :weid AND id IN (' . $str . ')', array(':weid' => $_W['weid']));
				message('删除记录成功,共删除' . $num . '行数据', referer(), 'success');
			} else {
				message('参数错误', '', 'error');
			}
		}
		
		if($foo == 'log_status') {
			$id = $_GPC['id'];
			$status = intval($_GPC['log_status']);
			if(!is_array($id)) {
				$id = array($id);
			}
			$str = implode(',', $id);
			if(preg_match('/^(\d{1,10},)*(\d{1,10})$/', $str)) {
				$num = pdo_query('UPDATE ' . tablename('we7_photomaker_log') . ' SET status = ' . $status . ' WHERE weid = :weid AND id IN (' . $str . ')', array(':weid' => $_W['weid']));
				message('更改状态成功,共影响' . $num . '行数据', referer(), 'success');
			} else {
				message('参数错误', '', 'error');
			}
		}
		include $this->template('print_manage');
	}
}