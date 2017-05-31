DROP TABLE IF EXISTS ims_article;
CREATE TABLE `ims_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类',
  `template` varchar(300) NOT NULL DEFAULT '' COMMENT '内容模板',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '来源',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_article_category;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联导航id',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '分类图标',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '分类描述',
  `template` varchar(300) NOT NULL DEFAULT '' COMMENT '分类模板',
  `templatefile` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(500) NOT NULL DEFAULT '',
  `ishomepage` tinyint(1) NOT NULL DEFAULT '0',
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_article_reply;
CREATE TABLE `ims_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `isfill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_attachment;
CREATE TABLE `ims_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '1为图片',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_attachment VALUES 
('1','6','2','八公2.jpg','/images/6/2015/07/m8bQhLygX8Hb5V0m6Hb55M3M9AmV56.jpg','1','1435744745');


DROP TABLE IF EXISTS ims_award;
CREATE TABLE `ims_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `fansID` int(11) DEFAULT NULL,
  `from_user` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `prizetype` varchar(10) DEFAULT NULL,
  `award_sn` varchar(50) DEFAULT NULL,
  `createtime` int(10) DEFAULT NULL,
  `consumetime` int(10) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_award_list;
CREATE TABLE `ims_award_list` (
  `award_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `deadline` datetime NOT NULL,
  `credit_cost` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '100',
  `content` text NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_basic_reply;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_basic_reply VALUES 
('1','1','这里是默认文字回复'),
('2','9','您好，欢迎您的光临，这是微信订餐系统！');


DROP TABLE IF EXISTS ims_bigwheel_fans;
CREATE TABLE `ims_bigwheel_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `fansID` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `todaynum` int(11) NOT NULL,
  `totalnum` int(11) NOT NULL,
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_bigwheel_reply;
CREATE TABLE `ims_bigwheel_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `start_picurl` varchar(200) NOT NULL,
  `isshow` tinyint(1) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `ticket_information` varchar(200) DEFAULT NULL,
  `starttime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `Repeat_lottery_reply` varchar(50) DEFAULT NULL,
  `end_theme` varchar(50) DEFAULT NULL,
  `end_instruction` varchar(200) DEFAULT NULL,
  `end_picurl` varchar(200) DEFAULT NULL,
  `c_type_one` varchar(20) DEFAULT NULL,
  `c_name_one` varchar(50) DEFAULT NULL,
  `c_num_one` int(11) DEFAULT '0',
  `c_draw_one` int(11) DEFAULT '0',
  `c_type_two` varchar(20) DEFAULT NULL,
  `c_name_two` varchar(50) DEFAULT NULL,
  `c_num_two` int(11) DEFAULT NULL,
  `c_draw_two` int(11) DEFAULT '0',
  `c_type_three` varchar(20) DEFAULT NULL,
  `c_name_three` varchar(50) DEFAULT NULL,
  `c_num_three` int(11) DEFAULT '0',
  `c_draw_three` int(11) DEFAULT '0',
  `c_type_four` varchar(20) DEFAULT NULL,
  `c_name_four` varchar(50) DEFAULT NULL,
  `c_num_four` int(11) DEFAULT '0',
  `c_draw_four` int(11) DEFAULT '0',
  `c_type_five` varchar(20) DEFAULT NULL,
  `c_name_five` varchar(50) DEFAULT NULL,
  `c_num_five` int(11) DEFAULT NULL,
  `c_draw_five` int(11) DEFAULT '0',
  `c_type_six` varchar(20) DEFAULT NULL,
  `c_name_six` varchar(50) DEFAULT NULL,
  `c_num_six` int(11) DEFAULT '0',
  `c_draw_six` int(10) DEFAULT '0',
  `total_num` int(11) DEFAULT NULL COMMENT '总获奖人数(自动加)',
  `probability` double DEFAULT NULL,
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT NULL,
  `tel_rename` varchar(20) DEFAULT NULL,
  `copyright` varchar(20) DEFAULT NULL,
  `show_num` tinyint(2) DEFAULT NULL,
  `viewnum` int(11) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT NULL,
  `share_desc` varchar(300) DEFAULT NULL,
  `share_url` varchar(100) DEFAULT NULL,
  `share_txt` text NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `c_rate_one` double DEFAULT '0',
  `c_rate_two` double DEFAULT '0',
  `c_rate_three` double DEFAULT '0',
  `c_rate_four` double DEFAULT '0',
  `c_rate_five` double DEFAULT '0',
  `c_rate_six` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_card;
CREATE TABLE `ims_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(255) NOT NULL DEFAULT '',
  `background` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(50) NOT NULL DEFAULT '',
  `fields` varchar(1000) NOT NULL DEFAULT '',
  `snpos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_card VALUES 
('1','6','撒旦发额外','a:2:{s:5:\"title\";s:7:\"#f1c232\";s:6:\"number\";s:7:\"#ffe599\";}','a:2:{s:10:\"background\";s:6:\"system\";s:5:\"image\";s:1:\"6\";}','images/6/2015/07/m8bQhLygX8Hb5V0m6Hb55M3M9AmV56.jpg','Gogood**********','','0');


DROP TABLE IF EXISTS ims_card_coupon;
CREATE TABLE `ims_card_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL,
  `pretotal` int(11) NOT NULL DEFAULT '1',
  `total` int(11) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_card_log;
CREATE TABLE `ims_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1积分，2金额，3优惠券',
  `content` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_card_members;
CREATE TABLE `ims_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `cardsn` varchar(20) NOT NULL DEFAULT '',
  `credit1` varchar(15) NOT NULL DEFAULT '0',
  `credit2` varchar(15) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_card_members_coupon;
CREATE TABLE `ims_card_members_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1为正常状态，2为已使用',
  `receiver` varchar(50) NOT NULL,
  `consumetime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_card_password;
CREATE TABLE `ims_card_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_cover_reply;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `do` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_credit_request;
CREATE TABLE `ims_credit_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `award_id` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_default_reply_log;
CREATE TABLE `ims_default_reply_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL COMMENT '微信号ID，关联wechats表',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '用户最后发送信息时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_fans;
CREATE TABLE `ims_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '公众号ID',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `salt` char(8) NOT NULL DEFAULT '' COMMENT '加密盐',
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `credit1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `credit2` double unsigned NOT NULL DEFAULT '0' COMMENT '余额',
  `createtime` int(10) unsigned NOT NULL COMMENT '加入时间',
  `realname` varchar(10) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '头像',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'QQ号',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `fakeid` varchar(30) NOT NULL DEFAULT '',
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP级别,0为普通会员',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '生日年',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '生日月',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `constellation` varchar(10) NOT NULL DEFAULT '' COMMENT '星座',
  `zodiac` varchar(5) NOT NULL DEFAULT '' COMMENT '生肖',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `studentid` varchar(50) NOT NULL DEFAULT '' COMMENT '学号',
  `grade` varchar(10) NOT NULL DEFAULT '' COMMENT '班级',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '邮寄地址',
  `zipcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `nationality` varchar(30) NOT NULL DEFAULT '' COMMENT '国籍',
  `resideprovince` varchar(30) NOT NULL DEFAULT '' COMMENT '居住省份',
  `residecity` varchar(30) NOT NULL DEFAULT '' COMMENT '居住城市',
  `residedist` varchar(30) NOT NULL DEFAULT '' COMMENT '居住行政区/县',
  `graduateschool` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业学校',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司',
  `education` varchar(10) NOT NULL DEFAULT '' COMMENT '学历',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `revenue` varchar(10) NOT NULL DEFAULT '' COMMENT '年收入',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '' COMMENT '情感状态',
  `lookingfor` varchar(255) NOT NULL DEFAULT '' COMMENT ' 交友目的',
  `bloodtype` varchar(5) NOT NULL DEFAULT '' COMMENT '血型',
  `height` varchar(5) NOT NULL DEFAULT '' COMMENT '身高',
  `weight` varchar(5) NOT NULL DEFAULT '' COMMENT '体重',
  `alipay` varchar(30) NOT NULL DEFAULT '' COMMENT '支付宝帐号',
  `msn` varchar(30) NOT NULL DEFAULT '' COMMENT 'MSN',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `taobao` varchar(30) NOT NULL DEFAULT '' COMMENT '阿里旺旺',
  `site` varchar(30) NOT NULL DEFAULT '' COMMENT '主页',
  `bio` text NOT NULL COMMENT '自我介绍',
  `interest` text NOT NULL COMMENT '兴趣爱好',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`),
  KEY `idx_from_user` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_members;
CREATE TABLE `ims_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '用户密码',
  `salt` varchar(10) NOT NULL COMMENT '加密盐',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态，0正常，-1禁用',
  `joindate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `joinip` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `remark` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

INSERT INTO ims_members VALUES 
('1','0','admin','a15a5ef26b92324078a14e59feea87eecbb9051b','JChVv8av','0','1429787314','','1435971778','223.240.108.80',''),
('2','0','cocomyyz','a15a5ef26b92324078a14e59feea87eecbb9051b','JChVv8av','0','1429794660','60.168.94.129','1435947909','114.96.140.205',''),
('3','0','test','d960127cad57975a1f792179727146542503a2da','p79Jv690','0','1435971501','223.240.108.80','1435971509','223.240.108.80','');


DROP TABLE IF EXISTS ims_members_group;
CREATE TABLE `ims_members_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(5000) NOT NULL DEFAULT '',
  `templates` varchar(5000) NOT NULL DEFAULT '',
  `maxaccount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0为不限制',
  `maxsubaccount` int(10) unsigned NOT NULL COMMENT '子公号最多添加数量，为0为不可以添加',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_members_permission;
CREATE TABLE `ims_members_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `resourceid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为模块,2为模板',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

INSERT INTO ims_members_permission VALUES 
('1','2','16','1'),
('2','2','2','2'),
('3','2','3','2'),
('4','2','4','2'),
('5','2','5','2'),
('6','2','7','2'),
('7','2','6','2'),
('8','2','8','2'),
('9','2','9','2'),
('10','2','10','2'),
('11','2','11','2'),
('12','2','12','2'),
('13','2','21','1'),
('14','2','5','1'),
('15','2','7','1'),
('16','2','9','1'),
('17','2','10','1'),
('18','2','11','1'),
('19','2','12','1'),
('20','2','13','1'),
('21','2','14','1'),
('22','2','17','1'),
('23','2','18','1'),
('24','2','19','1'),
('25','2','20','1'),
('26','2','22','1'),
('27','2','23','1'),
('28','2','24','1'),
('29','2','29','1'),
('30','2','28','1'),
('31','2','27','1'),
('32','2','26','1'),
('33','2','25','1'),
('34','2','13','2'),
('35','2','14','2'),
('36','2','15','2'),
('37','2','16','2'),
('38','2','17','2'),
('39','2','18','2'),
('40','2','19','2'),
('41','2','20','2'),
('42','2','21','2'),
('43','2','23','2'),
('44','2','24','2'),
('45','2','22','2'),
('46','2','25','2'),
('47','2','26','2'),
('48','2','27','2'),
('49','2','43','2'),
('50','2','42','2'),
('51','2','41','2'),
('52','2','40','2'),
('53','2','39','2'),
('54','2','38','2'),
('55','2','37','2'),
('56','2','36','2'),
('57','2','35','2'),
('58','2','34','2'),
('59','2','33','2'),
('60','2','32','2'),
('61','2','31','2'),
('62','2','30','2'),
('63','2','29','2'),
('64','2','28','2');


DROP TABLE IF EXISTS ims_members_profile;
CREATE TABLE `ims_members_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL COMMENT '加入时间',
  `realname` varchar(10) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'QQ号',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP级别,0为普通会员',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '生日年',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '生日月',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `constellation` varchar(10) NOT NULL DEFAULT '' COMMENT '星座',
  `zodiac` varchar(5) NOT NULL DEFAULT '' COMMENT '生肖',
  `telephone` varchar(15) NOT NULL DEFAULT '' COMMENT '固定电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `studentid` varchar(50) NOT NULL DEFAULT '' COMMENT '学号',
  `grade` varchar(10) NOT NULL DEFAULT '' COMMENT '班级',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '邮寄地址',
  `zipcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `nationality` varchar(30) NOT NULL DEFAULT '' COMMENT '国籍',
  `resideprovince` varchar(30) NOT NULL DEFAULT '' COMMENT '居住省份',
  `residecity` varchar(30) NOT NULL DEFAULT '' COMMENT '居住城市',
  `residedist` varchar(30) NOT NULL DEFAULT '' COMMENT '居住行政区/县',
  `graduateschool` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业学校',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '公司',
  `education` varchar(10) NOT NULL DEFAULT '' COMMENT '学历',
  `occupation` varchar(30) NOT NULL DEFAULT '' COMMENT '职业',
  `position` varchar(30) NOT NULL DEFAULT '' COMMENT '职位',
  `revenue` varchar(10) NOT NULL DEFAULT '' COMMENT '年收入',
  `affectivestatus` varchar(30) NOT NULL DEFAULT '' COMMENT '情感状态',
  `lookingfor` varchar(255) NOT NULL DEFAULT '' COMMENT ' 交友目的',
  `bloodtype` varchar(5) NOT NULL DEFAULT '' COMMENT '血型',
  `height` varchar(5) NOT NULL DEFAULT '' COMMENT '身高',
  `weight` varchar(5) NOT NULL DEFAULT '' COMMENT '体重',
  `alipay` varchar(30) NOT NULL DEFAULT '' COMMENT '支付宝帐号',
  `msn` varchar(30) NOT NULL DEFAULT '' COMMENT 'MSN',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `taobao` varchar(30) NOT NULL DEFAULT '' COMMENT '阿里旺旺',
  `site` varchar(30) NOT NULL DEFAULT '' COMMENT '主页',
  `bio` text NOT NULL COMMENT '自我介绍',
  `interest` text NOT NULL COMMENT '兴趣爱好',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_members_profile VALUES 
('1','2','1429794660','李明','椰子','','446881654','','','0','0','0','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
('2','3','1435971501','李明','椰子','','446881654','','','0','0','0','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');


DROP TABLE IF EXISTS ims_menu_event;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL COMMENT '事件类型',
  `picmd5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`weid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_modules;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '标识',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `title` varchar(100) NOT NULL COMMENT '名称',
  `version` varchar(10) NOT NULL DEFAULT '' COMMENT '版本',
  `ability` varchar(500) NOT NULL COMMENT '功能描述',
  `description` varchar(1000) NOT NULL COMMENT '介绍',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `url` varchar(255) NOT NULL COMMENT '发布页面',
  `settings` tinyint(1) NOT NULL DEFAULT '0' COMMENT '扩展设置项',
  `subscribes` varchar(500) NOT NULL DEFAULT '' COMMENT '订阅的消息类型',
  `handles` varchar(500) NOT NULL DEFAULT '' COMMENT '能够直接处理的消息类型',
  `isrulefields` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有规则嵌入项',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是系统模块',
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO ims_modules VALUES 
('1','basic','','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/','0','','','1','1'),
('2','news','','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/','0','','','1','1'),
('3','music','','基本语音回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/','0','','','1','1'),
('4','userapi','','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/','0','','','1','1'),
('5','fans','customer','粉丝管理','1.2','关注的粉丝管理','','WeEngine Team','http://bbs.we7.cc/forum.php?mod=forumdisplay&fid=36&filter=typeid&typeid=1','0','a:8:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:8:\"location\";i:5;s:4:\"link\";i:6;s:9:\"subscribe\";i:7;s:11:\"unsubscribe\";}','a:0:{}','0','0'),
('6','member','customer','微会员','1.2','会员管理','会员管理','WeEngine Team','','0','a:0:{}','','0','1'),
('7','bigwheel','activity','大转盘','1.1.2','大转盘营销抽奖','大转盘营销抽奖','ewei','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('24','multisearch','services','万能查询','1.8','万能查询数据','万能查询数据','WeEngine Team','http://we7.cc','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('9','fujin','other','附近商服','1.2','搜索附近商家，以及服务地点','通过回复地理位置，检索附近的商户，服务场所以及其他地点信息。','topone4tvs','','0','a:0:{}','a:2:{i:0;s:4:\"text\";i:1;s:8:\"location\";}','1','0'),
('10','izc_strcoupon','customer','优惠券','1.3','各种券','各种券','智策&strai','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0'),
('11','panorama','other','360全景','1.9','360全景','360全景','晓锋','wx.qfinfo.cn','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0'),
('12','qrcode','services','二维码推广','1.0','二维码推广','二维码推广','珊瑚海 &amp; WeEngine Team','#','0','a:2:{i:0;s:4:\"scan\";i:1;s:9:\"subscribe\";}','a:2:{i:0;s:4:\"text\";i:1;s:9:\"subscribe\";}','0','0'),
('13','research','customer','预约与调查','1.51','可以快速生成调查表单或则预约记录','','WeEngine Team','http://bbs.we7.cc','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('14','scratch','activity','刮刮卡','1.2','刮刮卡营销抽奖','刮刮卡是指卡上的一种覆盖数字和字母密码等文字的涂层，因此刮刮卡也叫密码覆膜卡、帐户卡或记账密码卡。客户端可兑奖','超级无聊','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('16','shopping3','business','新微餐饮','3.2','微商城(餐饮版)','微商城 for 餐饮','超级无聊','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0'),
('17','site','business','微文章(CMS)','2.1','展示一个手机网页来介绍你的公众号','','WeEngine Team','http://www.we7.cc','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('18','smashegg','activity','砸金蛋','1.1','砸金蛋，抽奖营销活动','砸金蛋，抽奖营销活动','超级无聊','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('19','stat','other','数据统计','1.3','提供消息记录及分析统计功能','能够提供按公众号码查询, 分析统计消息记录, 以及规则关键字命中情况统计','WeEngine Team','http://www.we7.cc','1','a:7:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:8:\"location\";i:3;s:4:\"link\";i:4;s:9:\"subscribe\";i:5;s:11:\"unsubscribe\";i:6;s:5:\"click\";}','a:0:{}','0','0'),
('20','timeaxis','other','时光轴','1.0','时光轴展示','通过类似时光轴的形式，对某些活动流程或重要的事件进行展示','topone4tvs','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('21','wcha','business','微餐饮查单','1.0','结合微餐饮的商家商家查单功能','结合微餐饮的商家商家查单功能','超级无聊','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('22','yyy','activity','摇一摇现场版','2.6','现场大屏互动类活动','摇一摇，让你在现场迅速引爆人气。','皓蓝','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('23','credit','business','积分兑换','1.0','积分兑换','积分兑换，签到积分，购物积分，酒店积分兑换。通过本模块进行营销活动，可以获得用户的真实姓名、手机号码、邮寄地址等。','晓楚','http://blog.csdn.net/maray','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0'),
('25','ppcrmtransfer','other','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc','0','a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}','1','0'),
('26','shopping','business','微商城','2.9.3','微商城','微商城','WeEngine Team & ewei','','1','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0'),
('27','vote','activity','微投票','1.04','投票系统','图片、文字，单选，多选','WeEngine Team & ewei','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('28','we7_photomaker','activity','微擎微拍','1.7','微拍','微拍','微擎团队','','0','a:0:{}','a:1:{i:0;s:4:\"text\";}','1','0'),
('29','weihaom_wb','activity','踩白块','1.0','拆包装,踩虫子,抽老板耳光...无所不能','拆包装,踩虫子,抽老板耳光...无所不能','皓蓝 & WeEngine Team','','0','a:1:{i:0;s:4:\"text\";}','a:1:{i:0;s:4:\"text\";}','1','0');


DROP TABLE IF EXISTS ims_modules_bindings;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `entry` varchar(10) NOT NULL DEFAULT '',
  `call` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

INSERT INTO ims_modules_bindings VALUES 
('4','fans','menu','','粉丝列表','display','','0'),
('5','fans','profile','','我的资料','profile','','0'),
('6','member','menu','','消费密码管理','password','','0'),
('7','member','profile','','我的会员卡','mycard','','0'),
('8','member','menu','','优惠券管理','coupon','','0'),
('9','member','menu','','商家设置','store','','0'),
('10','member','menu','','会员管理','member','','0'),
('11','member','menu','','会员卡设置','card','','0'),
('12','member','cover','','优惠券入口设置','entrycoupon','','0'),
('13','member','cover','','会员卡入口设置','card','','0'),
('14','member','profile','','我的充值记录','mycredit','','0'),
('15','member','profile','','我的优惠券','entrycoupon','','0'),
('16','bigwheel','menu','','大转盘管理','manage','','0'),
('17','bigwheel','home','','大转盘微站','index','','0'),
('80','shopping','menu','','物流管理','express','','0'),
('79','shopping','menu','','商品分类','category','','0'),
('78','shopping','menu','','商品管理','goods','','0'),
('77','shopping','menu','','订单管理','order','','0'),
('22','izc_strcoupon','cover','','入口设置','index','','0'),
('23','izc_strcoupon','menu','','优惠券管理','manage','','0'),
('24','izc_strcoupon','menu','','领取记录','receive','','0'),
('25','izc_strcoupon','menu','','使用记录','record','','0'),
('26','izc_strcoupon','profile','','我的优惠券','myCoupon','','0'),
('27','panorama','cover','','全景入口设置','Index','','0'),
('28','panorama','menu','','全景管理','Panoramaset','','0'),
('29','qrcode','menu','','生成二维码','post','','0'),
('30','qrcode','menu','','管理二维码','list','','0'),
('31','qrcode','menu','','扫描统计','display','','0'),
('32','research','menu','','预约活动列表','display','','0'),
('33','research','menu','','新建预约活动','post','','0'),
('34','research','home','gethometiles','','','','0'),
('35','research','profile','','我的预约','myresearch','','0'),
('36','scratch','menu','','刮刮卡管理','manage','','0'),
('37','scratch','home','','刮刮卡微站','index','','0'),
('76','shopping','cover','','商城入口设置','list','','0'),
('75','multisearch','menu','','查询数据结构管理','struct','','0'),
('74','multisearch','menu','getMenuTiles','','','','0'),
('73','credit','profile','','我的积分','mycredit','','0'),
('72','credit','menu','','兑换请求管理','credit','','0'),
('45','shopping3','cover','','微餐饮入口设置','wlindex','','0'),
('46','shopping3','cover','','订单查询入口设置','wlmember','','0'),
('47','shopping3','menu','','基本设置','shopset','','0'),
('48','shopping3','menu','','订单管理','order','','0'),
('49','shopping3','menu','','商品分类','category','','0'),
('50','shopping3','menu','','商品管理','goods','','0'),
('51','shopping3','menu','','智能选餐','genius','','0'),
('52','shopping3','menu','','会员管理','member','','0'),
('53','shopping3','home','','微餐饮','wlindex','','0'),
('54','shopping3','profile','','我的订单','wlorder','','0'),
('55','site','menu','','文章管理','article','','0'),
('56','site','menu','','文章分类','category','','0'),
('57','site','home','getCategoryTiles','','','','0'),
('58','smashegg','menu','','砸金蛋管理','manage','','0'),
('59','smashegg','home','','砸金蛋微站','index','','0'),
('60','stat','menu','','聊天记录','history','','0'),
('61','stat','menu','','规则使用率','rule','','0'),
('62','stat','menu','','关键字命中率','keyword','','0'),
('63','timeaxis','menu','','活动管理','list','','0'),
('64','timeaxis','home','getAxisTitles','','','','0'),
('65','yyy','rule','','中奖名单','awardlist','','0'),
('66','yyy','rule','','大屏幕','Bigscreen','','0'),
('71','credit','menu','','兑换商品管理','award','','0'),
('70','credit','cover','','积分兑换设置','award','','0'),
('81','shopping','menu','','配送方式','dispatch','','0'),
('82','shopping','menu','','幻灯片管理','adv','','0'),
('83','shopping','menu','','维权与告警','notice','','0'),
('84','shopping','home','','商城','list','','0'),
('85','shopping','profile','','我的订单','myorder','','0'),
('86','vote','rule','','查看投票记录','votelist','','0'),
('87','vote','menu','','微投票管理','manage','','0'),
('88','vote','home','getItemTiles','','','','0'),
('89','we7_photomaker','menu','','设备管理','device','','0'),
('90','we7_photomaker','menu','','打印管理','print','','0'),
('91','bigwheel','home','getItemTiles','','','','0');


DROP TABLE IF EXISTS ims_multisearch;
CREATE TABLE `ims_multisearch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `isresearch` tinyint(1) NOT NULL DEFAULT '0',
  `cover` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(1000) NOT NULL DEFAULT '',
  `noticeemail` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_multisearch_fields;
CREATE TABLE `ims_multisearch_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `variable` varchar(50) NOT NULL DEFAULT '',
  `bind` varchar(20) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `likesearch` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `options` varchar(2000) NOT NULL DEFAULT '',
  `displayorder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_multisearch_reply;
CREATE TABLE `ims_multisearch_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_multisearch_research;
CREATE TABLE `ims_multisearch_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `reid` int(10) unsigned NOT NULL,
  `rowid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_music_reply;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '介绍',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '音乐地址',
  `hqurl` varchar(300) NOT NULL DEFAULT '' COMMENT '高清地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_news_reply;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_news_reply VALUES 
('1','2','0','这里是默认图文回复','这里是默认图文描述','images/2013/01/d090d8e61995e971bb1f8c0772377d.png','这里是默认图文原文这里是默认图文原文这里是默认图文原文',''),
('2','2','1','这里是默认图文回复内容','','images/2013/01/112487e19d03eaecc5a9ac87537595.jpg','这里是默认图文回复原文这里是默认图文回复原文<br />','');


DROP TABLE IF EXISTS ims_panorama_manage;
CREATE TABLE `ims_panorama_manage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_paylog;
CREATE TABLE `ims_paylog` (
  `plid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `weid` int(11) NOT NULL,
  `openid` varchar(40) NOT NULL DEFAULT '',
  `tid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_weid` (`weid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_profile_fields;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否必填',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否不可修改',
  `showinregister` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示在注册表单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO ims_profile_fields VALUES 
('1','realname','1','真实姓名','','0','1','1','1'),
('2','nickname','1','昵称','','1','1','0','1'),
('3','avatar','1','头像','','1','0','0','0'),
('4','qq','1','QQ号','','0','0','0','1'),
('5','mobile','1','手机号码','','0','0','0','0'),
('6','vip','1','VIP级别','','0','0','0','0'),
('7','gender','1','性别','','0','0','0','0'),
('8','birthyear','1','出生生日','','0','0','0','0'),
('9','constellation','1','星座','','0','0','0','0'),
('10','zodiac','1','生肖','','0','0','0','0'),
('11','telephone','1','固定电话','','0','0','0','0'),
('12','idcard','1','证件号码','','0','0','0','0'),
('13','studentid','1','学号','','0','0','0','0'),
('14','grade','1','班级','','0','0','0','0'),
('15','address','1','邮寄地址','','0','0','0','0'),
('16','zipcode','1','邮编','','0','0','0','0'),
('17','nationality','1','国籍','','0','0','0','0'),
('18','resideprovince','1','居住地址','','0','0','0','0'),
('19','graduateschool','1','毕业学校','','0','0','0','0'),
('20','company','1','公司','','0','0','0','0'),
('21','education','1','学历','','0','0','0','0'),
('22','occupation','1','职业','','0','0','0','0'),
('23','position','1','职位','','0','0','0','0'),
('24','revenue','1','年收入','','0','0','0','0'),
('25','affectivestatus','1','情感状态','','0','0','0','0'),
('26','lookingfor','1',' 交友目的','','0','0','0','0'),
('27','bloodtype','1','血型','','0','0','0','0'),
('28','height','1','身高','','0','0','0','0'),
('29','weight','1','体重','','0','0','0','0'),
('30','alipay','1','支付宝帐号','','0','0','0','0'),
('31','msn','1','MSN','','0','0','0','0'),
('32','email','1','电子邮箱','','0','0','0','0'),
('33','taobao','1','阿里旺旺','','0','0','0','0'),
('34','site','1','主页','','0','0','0','0'),
('35','bio','1','自我介绍','','0','0','0','0'),
('36','interest','1','兴趣爱好','','0','0','0','0');


DROP TABLE IF EXISTS ims_qrcode;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码场景ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '场景名称',
  `keyword` varchar(100) NOT NULL COMMENT '关联关键字',
  `model` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '模式，1临时，2为永久',
  `ticket` varchar(250) NOT NULL DEFAULT '' COMMENT '标识',
  `expire` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `subnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注扫描次数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生成时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0为未启用，1为启用',
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_qrcode_stat;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户的唯一身份ID',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发生在订阅时',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码场景ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '场景名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_research;
CREATE TABLE `ims_research` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `pretotal` int(10) unsigned NOT NULL DEFAULT '1',
  `noticeemail` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`reid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_research_data;
CREATE TABLE `ims_research_data` (
  `redid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `rerid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  PRIMARY KEY (`redid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_research_fields;
CREATE TABLE `ims_research_fields` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(4) NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`refid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_research_reply;
CREATE TABLE `ims_research_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_research_rows;
CREATE TABLE `ims_research_rows` (
  `rerid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rerid`),
  KEY `reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_rule;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '规则状态，0禁用，1启用，2置顶',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO ims_rule VALUES 
('1','1','0','默认文字回复','basic','0','1'),
('2','1','0','默认图文回复','news','0','1'),
('3','0','0','城市天气','userapi','255','1'),
('4','0','0','百度百科','userapi','255','1'),
('5','0','0','即时翻译','userapi','255','1'),
('6','0','0','今日老黄历','userapi','255','1'),
('7','0','0','看新闻','userapi','255','1'),
('8','0','0','快递查询','userapi','255','1'),
('9','3','0','你好','basic','0','1');


DROP TABLE IF EXISTS ims_rule_keyword;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则ID',
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `module` varchar(50) NOT NULL COMMENT '对应模块',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型1匹配，2包含，3正则',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '规则排序，255为置顶，其它为普通排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '规则状态，0禁用，1启用',
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO ims_rule_keyword VALUES 
('1','1','1','basic','文字','2','1','1'),
('2','2','1','news','图文','2','1','1'),
('3','3','0','userapi','^.+天气$','3','255','1'),
('4','4','0','userapi','^百科.+$','3','255','1'),
('5','4','0','userapi','^定义.+$','3','255','1'),
('6','5','0','userapi','^@.+$','3','255','1'),
('7','6','0','userapi','日历','1','255','1'),
('8','6','0','userapi','万年历','1','255','1'),
('9','6','0','userapi','黄历','1','255','1'),
('10','6','0','userapi','几号','1','255','1'),
('11','7','0','userapi','新闻','1','255','1'),
('12','8','0','userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$','3','255','1'),
('13','9','3','basic','你好','1','0','1');


DROP TABLE IF EXISTS ims_scratch_fans;
CREATE TABLE `ims_scratch_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `fansID` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `todaynum` int(11) NOT NULL,
  `totalnum` int(11) NOT NULL,
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_scratch_reply;
CREATE TABLE `ims_scratch_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `start_picurl` varchar(200) NOT NULL,
  `isshow` tinyint(1) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `ticket_information` varchar(200) DEFAULT NULL,
  `starttime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `Repeat_lottery_reply` varchar(50) DEFAULT NULL,
  `end_theme` varchar(50) DEFAULT NULL,
  `end_instruction` varchar(200) DEFAULT NULL,
  `end_picurl` varchar(200) DEFAULT NULL,
  `c_type_one` varchar(20) DEFAULT NULL,
  `c_name_one` varchar(50) DEFAULT NULL,
  `c_num_one` int(11) DEFAULT '0',
  `c_draw_one` int(11) DEFAULT '0',
  `c_type_two` varchar(20) DEFAULT NULL,
  `c_name_two` varchar(50) DEFAULT NULL,
  `c_num_two` int(11) DEFAULT NULL,
  `c_draw_two` int(11) DEFAULT '0',
  `c_type_three` varchar(20) DEFAULT NULL,
  `c_name_three` varchar(50) DEFAULT NULL,
  `c_num_three` int(11) DEFAULT '0',
  `c_draw_three` int(11) DEFAULT '0',
  `c_type_four` varchar(20) DEFAULT NULL,
  `c_name_four` varchar(50) DEFAULT NULL,
  `c_num_four` int(11) DEFAULT '0',
  `c_draw_four` int(11) DEFAULT '0',
  `c_type_five` varchar(20) DEFAULT NULL,
  `c_name_five` varchar(50) DEFAULT NULL,
  `c_num_five` int(11) DEFAULT NULL,
  `c_draw_five` int(11) DEFAULT '0',
  `c_type_six` varchar(20) DEFAULT NULL,
  `c_name_six` varchar(50) DEFAULT NULL,
  `c_num_six` int(11) DEFAULT '0',
  `c_draw_six` int(10) DEFAULT '0',
  `total_num` int(11) DEFAULT NULL COMMENT '总获奖人数(自动加)',
  `probability` double DEFAULT NULL,
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT NULL,
  `tel_rename` varchar(20) DEFAULT NULL,
  `copyright` varchar(20) DEFAULT NULL,
  `show_num` tinyint(2) DEFAULT NULL,
  `viewnum` int(11) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT NULL,
  `share_desc` varchar(300) DEFAULT NULL,
  `share_url` varchar(100) DEFAULT NULL,
  `share_txt` varchar(500) DEFAULT NULL,
  `accept_passwrod` varchar(20) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_settings;
CREATE TABLE `ims_settings` (
  `key` varchar(200) NOT NULL COMMENT '设置键名',
  `value` text NOT NULL COMMENT '设置内容，大量数据将序列化',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_settings VALUES 
('basic','a:1:{s:8:\"template\";s:10:\"haochimall\";}'),
('site','a:2:{s:3:\"key\";s:5:\"35007\";s:5:\"token\";s:32:\"ffa539472df101ba22da7633777d3474\";}'),
('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:0;s:7:\"groupid\";i:0;}');


DROP TABLE IF EXISTS ims_shopping3_address;
CREATE TABLE `ims_shopping3_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_cart;
CREATE TABLE `ims_shopping3_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `price` varchar(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_category;
CREATE TABLE `ims_shopping3_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_express;
CREATE TABLE `ims_shopping3_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `express_name` varchar(50) DEFAULT NULL,
  `displayorder` int(11) NOT NULL,
  `express_price` varchar(10) DEFAULT NULL,
  `express_area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_fans;
CREATE TABLE `ims_shopping3_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `login_nums` int(11) DEFAULT NULL,
  `login_time` int(10) DEFAULT NULL,
  `crteate_time` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0,拉黑1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_fans_like;
CREATE TABLE `ims_shopping3_fans_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `fansid` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `goodsid` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_genius;
CREATE TABLE `ims_shopping3_genius` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rens` tinyint(4) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `nums` tinyint(4) NOT NULL,
  `dishes` text NOT NULL COMMENT '菜品的ID，以逗号隔开',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_goods;
CREATE TABLE `ims_shopping3_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `isindex` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` varchar(10) NOT NULL DEFAULT '',
  `productprice` varchar(10) NOT NULL DEFAULT '',
  `total` int(10) NOT NULL DEFAULT '0',
  `sellnums` int(10) NOT NULL DEFAULT '0',
  `thumb_url` varchar(1000) DEFAULT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `hits` int(10) DEFAULT NULL,
  `label` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_order;
CREATE TABLE `ims_shopping3_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(30) NOT NULL,
  `expressprice` varchar(5) NOT NULL COMMENT '快递费',
  `totalnum` tinyint(4) NOT NULL,
  `totalprice` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `sendstatus` tinyint(1) NOT NULL COMMENT '配送状态',
  `order_type` tinyint(2) NOT NULL,
  `ispay` tinyint(1) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `seat_type` tinyint(2) NOT NULL,
  `guest_name` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `sex` tinyint(2) NOT NULL,
  `guest_address` varchar(200) NOT NULL,
  `time_day` varchar(12) NOT NULL,
  `time_hour` varchar(4) NOT NULL,
  `time_second` varchar(4) NOT NULL,
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `secretid` varchar(4) NOT NULL,
  `print_sta` tinyint(2) NOT NULL,
  `sms_sta` varchar(3) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `desk` varchar(10) NOT NULL,
  `nums` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_order_goods;
CREATE TABLE `ims_shopping3_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `description` varchar(30) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping3_set;
CREATE TABLE `ims_shopping3_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL,
  `thumb` varchar(1000) DEFAULT NULL,
  `shop_tel` varchar(20) NOT NULL,
  `shop_address` varchar(120) NOT NULL,
  `shop_notice` varchar(500) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `paytype1` tinyint(1) NOT NULL,
  `paytype2` tinyint(1) NOT NULL,
  `paytype3` tinyint(1) NOT NULL,
  `mail_status` tinyint(1) NOT NULL,
  `mail_smtp` varchar(50) NOT NULL,
  `mail_user` varchar(50) NOT NULL,
  `mail_psw` varchar(50) NOT NULL,
  `mail_to` varchar(50) NOT NULL,
  `print_status` tinyint(1) NOT NULL,
  `print_type` tinyint(2) NOT NULL,
  `print_usr` varchar(50) NOT NULL,
  `print_nums` tinyint(3) NOT NULL,
  `print_top` varchar(1000) NOT NULL,
  `print_bottom` varchar(1000) NOT NULL,
  `sms_status` tinyint(1) NOT NULL,
  `sms_type` tinyint(2) NOT NULL COMMENT '0商家，1客户，2both',
  `sms_phone` varchar(20) NOT NULL,
  `sms_from` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1是打印机自己发，2是短信平台',
  `sms_secret` varchar(80) NOT NULL,
  `sms_text` varchar(200) NOT NULL,
  `sms_resgister` tinyint(1) NOT NULL DEFAULT '1',
  `order_limit` tinyint(4) NOT NULL,
  `sms_user` varchar(50) NOT NULL DEFAULT '',
  `address_list` varchar(500) NOT NULL DEFAULT '',
  `desk_list` varchar(1000) NOT NULL DEFAULT '',
  `room_list` varchar(1000) NOT NULL DEFAULT '',
  `ordretype1` tinyint(1) NOT NULL DEFAULT '1',
  `ordretype2` tinyint(1) NOT NULL DEFAULT '1',
  `ordretype3` tinyint(1) NOT NULL DEFAULT '1',
  `yy_start_time` varchar(5) NOT NULL DEFAULT '00:00',
  `yy_end_time` varchar(5) NOT NULL DEFAULT '23:59',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_address;
CREATE TABLE `ims_shopping_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_adv;
CREATE TABLE `ims_shopping_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_cart;
CREATE TABLE `ims_shopping_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(11) NOT NULL DEFAULT '0',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_category;
CREATE TABLE `ims_shopping_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `isrecommand` int(11) NOT NULL DEFAULT '0',
  `description` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_dispatch;
CREATE TABLE `ims_shopping_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_express;
CREATE TABLE `ims_shopping_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_feedback;
CREATE TABLE `ims_shopping_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_goods;
CREATE TABLE `ims_shopping_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` int(10) NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `costprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `totalcnf` tinyint(3) NOT NULL DEFAULT '0',
  `credit` int(11) NOT NULL DEFAULT '0',
  `hasoption` int(11) NOT NULL DEFAULT '0',
  `maxbuy` int(11) NOT NULL DEFAULT '0',
  `thumb_url` text,
  `dispatch` int(11) NOT NULL DEFAULT '0',
  `isrecommand` int(11) NOT NULL DEFAULT '0',
  `isnew` int(11) NOT NULL DEFAULT '0',
  `ishot` int(11) NOT NULL DEFAULT '0',
  `istime` int(11) NOT NULL DEFAULT '0',
  `timestart` int(11) NOT NULL DEFAULT '0',
  `timeend` int(11) NOT NULL DEFAULT '0',
  `isdiscount` int(11) NOT NULL DEFAULT '0',
  `viewcount` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_goods_option;
CREATE TABLE `ims_shopping_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_goods_param;
CREATE TABLE `ims_shopping_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_order;
CREATE TABLE `ims_shopping_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodstype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `addressid` int(10) unsigned NOT NULL,
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL,
  `dispatchprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goodsprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `dispatch` int(11) NOT NULL DEFAULT '0',
  `express` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_order_goods;
CREATE TABLE `ims_shopping_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `createtime` int(10) unsigned NOT NULL,
  `optionid` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `optionname` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_product;
CREATE TABLE `ims_shopping_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `productsn` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `marketprice` decimal(10,0) unsigned NOT NULL,
  `productprice` decimal(10,0) unsigned NOT NULL,
  `total` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spec` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_spec;
CREATE TABLE `ims_shopping_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_spec_item;
CREATE TABLE `ims_shopping_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_nav;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL DEFAULT '',
  `displayorder` smallint(5) unsigned NOT NULL COMMENT '排序',
  `name` varchar(50) NOT NULL COMMENT '导航名称',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '显示位置，1首页，2个人中心',
  `url` varchar(500) NOT NULL COMMENT '链接地址',
  `icon` varchar(500) NOT NULL DEFAULT '' COMMENT '图标',
  `css` varchar(1000) NOT NULL DEFAULT '' COMMENT '扩展CSS',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0为隐藏，1为显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_slide;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_styles;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `templateid` int(10) unsigned NOT NULL COMMENT '风格ID',
  `variable` varchar(50) NOT NULL COMMENT '模板预设变量',
  `content` text NOT NULL COMMENT '变量值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_styles VALUES 
('1','1','1','indexbgcolor','#e06666'),
('2','1','1','fontfamily','Tahoma,Helvetica,\'SimSun\',sans-serif'),
('3','1','1','fontsize','12px/1.5'),
('4','1','1','fontcolor','#434343'),
('5','1','1','fontnavcolor','#ffffff'),
('6','1','1','linkcolor','#ffffff'),
('7','1','1','indexbgimg','bg_index.jpg');


DROP TABLE IF EXISTS ims_site_templates;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(30) NOT NULL COMMENT '名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '发布页面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_templates VALUES 
('1','default','微站默认模板','由微擎提供默认微站模板套系','微擎团队','http://we7.cc'),
('2','dstyle01','炫动win8','炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片','Hooyo','http://bbs.we7.cc/?396'),
('3','dstyle02','炫动win8系列02','炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片','Hooyo','http://bbs.we7.cc/?396'),
('4','dstyle04','圆角卡片','圆圆的小角，圆圆的卡片，刷新看事例，请自行上传30*30px大小的png格式分类图片','Hooyo','http://bbs.we7.cc/?396'),
('5','dstyle05','炫动win8系列04','炫动win8系列04，请自行上传png格式分类图片','Hooyo','http://bbs.we7.cc/?396'),
('6','dstyle03','炫动win8','炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片','Hooyo','http://bbs.we7.cc/?396'),
('7','dstyle06','冒泡的对话框','冒泡的对话框，请自行上传png格式分类图片','Hooyo','http://bbs.we7.cc/?396'),
('8','dstyle07','炫动win8系列05','炫动win8系列05淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片','Hooyo','http://bbs.we7.cc/?396'),
('9','rain1','rain系列模板','由江苏小雨提供微站模板套系','江苏小雨','http://jsxxhelper.com'),
('10','rain4','rain系列模板','由江苏小雨提供微站模板套系','江苏小雨','http://jsxxhelper.com'),
('11','rain5','rain系列模板','由江苏小雨提供微站模板套系','江苏小雨','http://jsxxhelper.com'),
('12','rain6','rain系列模板','由江苏小雨提供微站模板套系','江苏小雨','http://jsxxhelper.com'),
('13','rain8','rain系列模板','由江苏小雨提供微站模板套系','江苏小雨','http://jsxxhelper.com'),
('14','style1','微站默认模板1','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('15','style10','微站默认模板10','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('16','style11','微站默认模板11','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('17','style12','微站默认模板12','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('18','style13','微站默认模板13','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('19','style14','微站默认模板14','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('20','style15','微站默认模板15','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('21','style16','微站默认模板16','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('22','style17','微站默认模板17','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('23','style2','微站默认模板2','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('24','style23','模板23','别具一格系列','别具一格',''),
('25','style24','微站默认模板24','由微漾提供默认微站模板套系','WeiYang Team','http://wx.mosen.cc'),
('26','style25','模板25','','',''),
('27','style3','微站默认模板3','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('28','style35','模板35','','bjue',''),
('29','style4','微站默认模板4','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('30','style5','微站默认模板5','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('31','style55','bjue','','bjue',''),
('32','style6','微站默认模板6','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('33','style7','微站默认模板7','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('34','style8','微站默认模板8','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('35','style88','模板88','8','',''),
('36','style9','微站默认模板9','由微擎提供默认微站模板套系','WeEngine Team','http://bbs.we7.cc'),
('37','stylex1','微站默认模板x1','由Easydo提供默认微站模板套系','Easydo','http://mp.lywnds.com'),
('38','stylex2','微站默认模板x2','由Easydo提供默认微站模板套系','Easydo','http://mp.lywnds.com'),
('39','stylex3','微站默认模板x3','由Easydo提供默认微站模板套系','Easydo','http://mp.lywnds.com'),
('40','taorui1','韬睿网络微站模板1','由韬睿网络微站模板套系','taorui Team','http://www.taoruinet.com'),
('41','taoruis1','韬睿网络微站模板s1','由韬睿网络微站模板套系','taorui Team','http://www.taoruinet.com'),
('42','taoruis2','韬睿网络微站模板s2','由韬睿网络微站模板套系','taorui Team','http://www.taoruinet.com'),
('43','taoruis3','韬睿网络微站模板s3','由韬睿网络微站模板套系','taorui Team','http://www.taoruinet.com');


DROP TABLE IF EXISTS ims_smashegg_fans;
CREATE TABLE `ims_smashegg_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `fansID` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `todaynum` int(11) NOT NULL,
  `totalnum` int(11) NOT NULL,
  `awardnum` int(11) DEFAULT '0',
  `last_time` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_smashegg_reply;
CREATE TABLE `ims_smashegg_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `start_picurl` varchar(200) NOT NULL,
  `isshow` tinyint(1) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `ticket_information` varchar(200) DEFAULT NULL,
  `starttime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `Repeat_lottery_reply` varchar(50) DEFAULT NULL,
  `end_theme` varchar(50) DEFAULT NULL,
  `end_instruction` varchar(200) DEFAULT NULL,
  `end_picurl` varchar(200) DEFAULT NULL,
  `c_type_one` varchar(20) DEFAULT NULL,
  `c_name_one` varchar(50) DEFAULT NULL,
  `c_num_one` int(11) DEFAULT '0',
  `c_draw_one` int(11) DEFAULT '0',
  `c_pic_one` varchar(200) DEFAULT NULL,
  `c_type_two` varchar(20) DEFAULT NULL,
  `c_name_two` varchar(50) DEFAULT NULL,
  `c_num_two` int(11) DEFAULT NULL,
  `c_draw_two` int(11) DEFAULT '0',
  `c_pic_two` varchar(200) DEFAULT NULL,
  `c_type_three` varchar(20) DEFAULT NULL,
  `c_name_three` varchar(50) DEFAULT NULL,
  `c_num_three` int(11) DEFAULT '0',
  `c_draw_three` int(11) DEFAULT '0',
  `c_pic_three` int(200) DEFAULT NULL,
  `c_type_four` varchar(20) DEFAULT NULL,
  `c_name_four` varchar(50) DEFAULT NULL,
  `c_num_four` int(11) DEFAULT '0',
  `c_draw_four` int(11) DEFAULT '0',
  `c_pic_four` varchar(200) DEFAULT NULL,
  `c_type_five` varchar(20) DEFAULT NULL,
  `c_name_five` varchar(50) DEFAULT NULL,
  `c_num_five` int(11) DEFAULT NULL,
  `c_draw_five` int(11) DEFAULT '0',
  `c_pic_five` varchar(200) DEFAULT NULL,
  `c_type_six` varchar(20) DEFAULT NULL,
  `c_name_six` varchar(50) DEFAULT NULL,
  `c_num_six` int(11) DEFAULT '0',
  `c_draw_six` int(10) DEFAULT '0',
  `c_pic_six` varchar(200) DEFAULT NULL,
  `total_num` int(11) DEFAULT NULL COMMENT '总获奖人数(自动加)',
  `probability` double DEFAULT NULL,
  `award_times` int(11) DEFAULT '0',
  `number_times` int(11) DEFAULT '0',
  `most_num_times` int(11) DEFAULT '0',
  `sn_code` tinyint(4) DEFAULT '0',
  `sn_rename` varchar(20) DEFAULT NULL,
  `tel_rename` varchar(20) DEFAULT NULL,
  `copyright` varchar(20) DEFAULT NULL,
  `show_num` tinyint(2) DEFAULT NULL,
  `viewnum` int(11) DEFAULT '0',
  `fansnum` int(11) DEFAULT '0',
  `createtime` int(10) DEFAULT NULL,
  `win_info` varchar(40) DEFAULT NULL,
  `no_win_info` varchar(40) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT NULL,
  `share_desc` varchar(300) DEFAULT NULL,
  `share_url` varchar(100) DEFAULT NULL,
  `share_txt` varchar(500) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_stat_keyword;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `kid` int(10) unsigned NOT NULL COMMENT '关键字ID',
  `hit` int(10) unsigned NOT NULL COMMENT '命中次数',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后触发时间',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_stat_msg_history;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '命中规则ID',
  `kid` int(10) unsigned NOT NULL COMMENT '命中关键字ID',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `module` varchar(50) NOT NULL COMMENT '命中模块',
  `message` varchar(1000) NOT NULL COMMENT '用户发送的消息',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '消息类型',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_stat_rule;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `hit` int(10) unsigned NOT NULL COMMENT '命中次数',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后触发时间',
  `createtime` int(10) unsigned NOT NULL COMMENT '记录新建的日期',
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_strcoupon;
CREATE TABLE `ims_strcoupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '图文标题',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块标识',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '图文封面',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '优惠券类型',
  `description` varchar(2000) NOT NULL DEFAULT '' COMMENT '图文描述',
  `cp_dst` varchar(2000) NOT NULL DEFAULT '' COMMENT '优惠券说明',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `total_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  `day_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每天发送数',
  `surplus_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '剩余数',
  `day_surplus_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每天剩余数',
  `user_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人领取总数',
  `user_day_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人每天领取数',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '面额',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵用金额',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '满金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_strcoupon_fans;
CREATE TABLE `ims_strcoupon_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `day_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每天领取数',
  `user_day_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人每天领取数',
  `surplus_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '剩余领取数',
  `day_surplus_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天剩余领取数',
  `total_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每人总数',
  `coupon_name` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名',
  `coupon_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后领取时间',
  `use_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0,失效,1,可使用,2,使用中',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT 'openid',
  `cp_dst` varchar(2000) NOT NULL DEFAULT '' COMMENT '优惠券说明',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '面额',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已有数量',
  `used_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已使用数量',
  `inuse_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '在使用数量',
  `fansid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '图文标题',
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '图文内容',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵用金额',
  `total_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '满金额',
  `credit1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `credit2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '现金',
  `isused` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `coupon_module` varchar(100) NOT NULL DEFAULT '' COMMENT '模块标识',
  `coupon_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '优惠券类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_strcoupon_fans_log;
CREATE TABLE `ims_strcoupon_fans_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `from_user` varchar(50) NOT NULL DEFAULT '' COMMENT 'openid',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `use_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `SN` varchar(100) NOT NULL DEFAULT '' COMMENT 'SN码',
  `discount_money` decimal(10,2) DEFAULT NULL COMMENT '抵用金额',
  `coupon_fans_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'fans优惠券id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `order_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '订单号',
  `module_name` varchar(100) NOT NULL DEFAULT '' COMMENT '模块名称',
  `coupon_name` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `isused` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0使用中1使用成功2使用失败',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_strcoupon_shop;
CREATE TABLE `ims_strcoupon_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '公众号id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '地址',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `shop_imgs` varchar(2048) NOT NULL DEFAULT '' COMMENT '店铺实景',
  `description` text NOT NULL COMMENT '介绍',
  `module_name` varchar(100) NOT NULL DEFAULT '' COMMENT '模块标识',
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_timeaxis;
CREATE TABLE `ims_timeaxis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '活动名称',
  `time` int(11) unsigned NOT NULL,
  `bgimg` varchar(255) NOT NULL COMMENT '背景图片或颜色',
  `bgcol` varchar(30) NOT NULL COMMENT '内容背景色',
  `items` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`,`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_timeaxis_rep;
CREATE TABLE `ims_timeaxis_rep` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `reptitle` varchar(100) NOT NULL DEFAULT '',
  `repinfo` varchar(255) DEFAULT '',
  `repimg` varchar(255) DEFAULT NULL,
  `axisid` int(10) unsigned NOT NULL COMMENT '时光轴活动id',
  PRIMARY KEY (`id`,`rid`,`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_userapi_cache;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL COMMENT 'apiurl缓存标识',
  `content` text NOT NULL COMMENT '回复内容',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_userapi_reply;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `description` varchar(300) NOT NULL DEFAULT '',
  `apiurl` varchar(300) NOT NULL DEFAULT '' COMMENT '接口地址',
  `token` varchar(32) NOT NULL DEFAULT '',
  `default_text` varchar(100) NOT NULL DEFAULT '' COMMENT '默认回复文字',
  `cachetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '返回数据的缓存时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO ims_userapi_reply VALUES 
('1','3','\"城市名+天气\", 如: \"北京天气\"','weather.php','','','0'),
('2','4','\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','','0'),
('3','5','\"@查询内容(中文或英文)\"','translate.php','','','0'),
('4','6','\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','','0'),
('5','7','\"新闻\"','news.php','','','0'),
('6','8','\"快递+单号\", 如: \"申通1200041125\"','express.php','','','0');


DROP TABLE IF EXISTS ims_vote_fans;
CREATE TABLE `ims_vote_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) DEFAULT '',
  `rid` int(11) DEFAULT '0',
  `votes` varchar(255) DEFAULT '',
  `votetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_votetime` (`votetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_vote_option;
CREATE TABLE `ims_vote_option` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `content` text,
  `vote_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_vote_reply;
CREATE TABLE `ims_vote_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT '0',
  `weid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `votetype` tinyint(4) DEFAULT '0',
  `votetotal` int(10) DEFAULT '0',
  `status` int(10) DEFAULT '0',
  `votenum` int(10) DEFAULT '0',
  `votetimes` int(10) DEFAULT '0',
  `votelimit` int(10) DEFAULT '0',
  `viewnum` int(10) DEFAULT '0',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `isimg` int(10) DEFAULT '0',
  `isshow` int(10) DEFAULT '0',
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `share_txt` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_wcha_reply;
CREATE TABLE `ims_wcha_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wtype` tinyint(4) NOT NULL COMMENT '0是查单 1是统计',
  `openidstr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_we7_photomaker;
CREATE TABLE `ims_we7_photomaker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `sn` varchar(32) NOT NULL,
  `token` varchar(6) NOT NULL,
  `maxuse` tinyint(3) unsigned NOT NULL,
  `maxtotal` int(10) NOT NULL,
  `adtype` tinyint(1) NOT NULL,
  `admsg` varchar(255) NOT NULL DEFAULT '',
  `adurlh` varchar(255) NOT NULL,
  `adurlv` varchar(255) NOT NULL,
  `leavemsg` varchar(255) NOT NULL DEFAULT '',
  `fontfamily` varchar(20) NOT NULL DEFAULT '',
  `fontcolor` varchar(7) NOT NULL,
  `fontsize` varchar(5) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `mainpic` varchar(255) NOT NULL,
  `adpics` text NOT NULL,
  `width` varchar(10) NOT NULL,
  `height` varchar(10) NOT NULL,
  `size` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL COMMENT '0为正常状态，1为确定打印，2为打印成功，3为打印失败，4为取消打印',
  `enablemsg` tinyint(1) unsigned NOT NULL,
  `enableauthcode` tinyint(1) NOT NULL DEFAULT '1',
  `content` text NOT NULL,
  `tipsentry` varchar(500) NOT NULL,
  `tipssuccess` varchar(500) NOT NULL,
  `tipserror` varchar(500) NOT NULL,
  `authcode` char(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rid` (`rid`),
  KEY `idx_sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_we7_photomaker_log;
CREATE TABLE `ims_we7_photomaker_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `authcode` varchar(8) NOT NULL,
  `leavemsg` varchar(500) NOT NULL DEFAULT '',
  `photo` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid_openid_rid` (`weid`,`openid`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_wechats;
CREATE TABLE `ims_wechats` (
  `weid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` char(5) NOT NULL COMMENT '用户标识. 随机生成保持不重复',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '公众号类型，1微信，2易信',
  `uid` int(10) unsigned NOT NULL COMMENT '关联的用户',
  `token` varchar(32) NOT NULL COMMENT '随机生成密钥',
  `EncodingAESKey` varchar(43) NOT NULL,
  `access_token` varchar(1000) NOT NULL DEFAULT '' COMMENT '存取凭证结构',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '接口权限级别, 0 普通订阅号, 1 认证订阅号|普通服务号, 2认证服务号',
  `name` varchar(30) NOT NULL COMMENT '公众号名称',
  `account` varchar(30) NOT NULL COMMENT '微信帐号',
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL COMMENT '功能介绍',
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `welcome` varchar(1000) NOT NULL,
  `default` varchar(1000) NOT NULL,
  `default_message` varchar(500) NOT NULL DEFAULT '' COMMENT '其他消息类型默认处理器',
  `default_period` tinyint(3) unsigned NOT NULL COMMENT '回复周期时间',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '风格ID',
  `payment` varchar(5000) NOT NULL DEFAULT '',
  `shortcuts` varchar(2000) NOT NULL DEFAULT '',
  `quickmenu` varchar(2000) NOT NULL DEFAULT '',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `subwechats` varchar(1000) NOT NULL DEFAULT '',
  `siteinfo` varchar(1000) NOT NULL DEFAULT '',
  `menuset` text NOT NULL,
  `jsapi_ticket` varchar(1000) NOT NULL,
  PRIMARY KEY (`weid`),
  UNIQUE KEY `hash` (`hash`),
  KEY `idx_parentid` (`parentid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO ims_wechats VALUES 
('1','fb8c1','1','1','eb6dd8b2db7b6eccf2fd4b39190a8cdc','','','0','好吃猫','haochimall','gh_2250b8ba6b7b','','','','','admin@haochimall.com','2cb7eba0f22a74e42ff016dfb55cf5a0','欢迎信息','默认回复','','0','1426997325','wxc1797cfa4eda729f','','1','','','','0','','','',''),
('2','fb504','1','1','91efdda433ce1966a6e4eec0e9357cf0','','','0','默认公众号','默认公众号','','','','','','','','欢迎信息','默认回复','','0','0','','','1','','','','0','','','',''),
('3','W185A','1','2','E2K17w2ZX9r9z9BJJw92R0jX1qRm1XH1','Xsd76aP7cDsIfFqDzQ22DpCP2793d67ZGWoFf7A2F9G','','0','松松快餐','songkccn','gh_aef724084cc8','','','','','','','/::~','','','0','0','wx2a0be5a81a46b76e','c847a0ea70f2281864392c39b0401d38','2','','','','0','','','',''),
('6','Xe888','1','2','P9cTO6g4CL1SAAc299AG2ig9mcGIm91s','U6P4NkjGxpwRgVptMMPJTxcF6eTcn5656DkWFN56prv','','0','民權小城生活','minquantown','gh_a9f0b0434526','提供民权新闻资讯、招聘求职、买房租房、二手买卖、生活服务等各类信息.民权微生活，民权百事通,尽在掌握中!','','','','minquan@ziqugou.cn','8348898d532023c994920a16074c8387','','','','0','1435034056','wxfe8a930d8089ae2b','74af58539e14b0','1','','','','0','','','','');


DROP TABLE IF EXISTS ims_wechats_modules;
CREATE TABLE `ims_wechats_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_wechats_modules VALUES 
('1','3','4','1','a:1:{i:0;b:1;}');


DROP TABLE IF EXISTS ims_weihaom_wb_reply;
CREATE TABLE `ims_weihaom_wb_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` text,
  `title1` varchar(255) DEFAULT NULL,
  `description1` text,
  `fimg` varchar(255) DEFAULT NULL,
  `bimg` varchar(255) DEFAULT NULL,
  `bgmusic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_weihaom_wb_user;
CREATE TABLE `ims_weihaom_wb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_yyy_reply;
CREATE TABLE `ims_yyy_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `weid` int(10) DEFAULT '0',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `clientpic` varchar(100) NOT NULL,
  `screenpic` varchar(100) NOT NULL COMMENT '大屏图像',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `rule` varchar(1000) NOT NULL COMMENT '规则描述',
  `ruletype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shaketimes` int(10) unsigned NOT NULL DEFAULT '60',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL COMMENT '活动开始时间',
  `shakespace` int(10) NOT NULL DEFAULT '100',
  `shakestrong` int(10) NOT NULL DEFAULT '3000',
  `shaketype` int(10) NOT NULL DEFAULT '0',
  `clienttime` int(10) NOT NULL DEFAULT '0',
  `shakestatus` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_yyy_winner;
CREATE TABLE `ims_yyy_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `weid` int(10) NOT NULL DEFAULT '0',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '摇的次数',
  `status` smallint(1) NOT NULL DEFAULT '0',
  `endtime` double(15,2) NOT NULL,
  `createtime` double(15,2) NOT NULL DEFAULT '0.00',
  `nickname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`from_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



----WeEngine MySQL Dump End