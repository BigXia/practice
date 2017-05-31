-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: 220.166.64.194
-- 生成日期: 2015 年 07 月 14 日 17:09
-- 服务器版本: 5.1.65
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `www1t2cn`
--

-- --------------------------------------------------------

--
-- 表的结构 `ims_article`
--

CREATE TABLE IF NOT EXISTS `ims_article` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_category`
--

CREATE TABLE IF NOT EXISTS `ims_article_category` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_reply`
--

CREATE TABLE IF NOT EXISTS `ims_article_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `isfill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '1为图片',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ims_attachment`
--

INSERT INTO `ims_attachment` (`id`, `weid`, `uid`, `filename`, `attachment`, `type`, `createtime`) VALUES
(1, 6, 2, '八公2.jpg', '/images/6/2015/07/m8bQhLygX8Hb5V0m6Hb55M3M9AmV56.jpg', 1, 1435744745),
(2, 3, 1, 'QQ图片20150711003451.png', '/images/3/2015/07/Fc4454RcV6B4bvB5D74zrb74z44d6s.png', 1, 1436545800),
(3, 3, 1, 'QQ图片20150711003451.png', '/images/3/2015/07/Q5E45Fx1k5pxxke5c4vxJjcxXoCIV9.png', 1, 1436545832),
(4, 3, 1, '222.jpg', '/images/3/2015/07/p6APp16S51tPAa69Z50tSHP6H5Hwat.jpg', 1, 1436593090),
(5, 3, 2, '2014032413201096533.jpg', '/images/3/2015/07/rPn0PHdu6MHeP6jHnKuuWMku86WuAN.jpg', 1, 1436803079),
(6, 3, 2, '111.jpg', '/images/3/2015/07/sbzBWZ69BBpa9kpR9QPpnzb9rPfGgK.jpg', 1, 1436803548),
(7, 3, 2, '121212.jpg', '/images/3/2015/07/ZF6M075959Fm07Zx9LATF5Z90577dm.jpg', 1, 1436805346),
(8, 3, 2, '111111111.jpg', '/images/3/2015/07/l0XzJ008gCh060010PpC6jt1B69R6j.jpg', 1, 1436807025);

-- --------------------------------------------------------

--
-- 表的结构 `ims_award`
--

CREATE TABLE IF NOT EXISTS `ims_award` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_award_list`
--

CREATE TABLE IF NOT EXISTS `ims_award_list` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_basic_reply`
--

CREATE TABLE IF NOT EXISTS `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `ims_basic_reply`
--

INSERT INTO `ims_basic_reply` (`id`, `rid`, `content`) VALUES
(3, 15, '请回复以下关键词：\r\n订餐\r\n商城\r\n微站\r\n订单');

-- --------------------------------------------------------

--
-- 表的结构 `ims_bigwheel_fans`
--

CREATE TABLE IF NOT EXISTS `ims_bigwheel_fans` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_bigwheel_reply`
--

CREATE TABLE IF NOT EXISTS `ims_bigwheel_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cache`
--

CREATE TABLE IF NOT EXISTS `ims_cache` (
  `key` varchar(50) NOT NULL COMMENT '缓存键名',
  `value` mediumtext NOT NULL COMMENT '缓存内容',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='缓存表';

--
-- 转存表中的数据 `ims_cache`
--

INSERT INTO `ims_cache` (`key`, `value`) VALUES
('setting', 'a:5:{s:5:"basic";a:1:{s:8:"template";s:10:"haochimall";}s:4:"site";a:2:{s:3:"key";s:5:"35007";s:5:"token";s:32:"ffa539472df101ba22da7633777d3474";}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:0;s:7:"groupid";i:0;}s:4:"mail";a:5:{s:8:"username";s:19:"service@hfyefan.com";s:8:"password";s:13:"Abc1q2w3easdQ";s:4:"smtp";a:4:{s:4:"type";s:1:"2";s:6:"server";s:21:"mail4.myhostadmin.net";s:4:"port";s:2:"25";s:8:"authmode";s:1:"0";}s:6:"sender";s:19:"service@hfyefan.com";s:9:"signature";s:44:"&lt;p&gt;叶凡网络 400-0551-422&lt;/p&gt;";}s:8:"authmode";i:1;}'),
('announcement', 'a:3:{s:6:"status";N;s:7:"content";N;s:10:"lastupdate";i:1429787314;}'),
('menus:platform', 'a:0:{}'),
('menus:site', 'a:0:{}'),
('modules', 'a:27:{s:5:"basic";a:14:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:0:"";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:11:"description";s:201:"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";}s:4:"news";a:14:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:0:"";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:11:"description";s:272:"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";}s:5:"music";a:14:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:0:"";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:11:"description";s:183:"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";}s:7:"userapi";a:14:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:0:"";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:11:"description";s:141:"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";}s:4:"fans";a:14:{s:3:"mid";s:1:"5";s:4:"name";s:4:"fans";s:4:"type";s:8:"customer";s:5:"title";s:12:"粉丝管理";s:7:"version";s:3:"1.2";s:7:"ability";s:21:"关注的粉丝管理";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:74:"http://bbs.we7.cc/forum.php?mod=forumdisplay&fid=36&filter=typeid&typeid=1";s:8:"settings";s:1:"0";s:10:"subscribes";a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:5:"video";i:4;s:8:"location";i:5;s:4:"link";i:6;s:9:"subscribe";i:7;s:11:"unsubscribe";}s:7:"handles";a:0:{}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:6:"member";a:14:{s:3:"mid";s:1:"6";s:4:"name";s:6:"member";s:4:"type";s:8:"customer";s:5:"title";s:9:"微会员";s:7:"version";s:3:"1.2";s:7:"ability";s:12:"会员管理";s:11:"description";s:12:"会员管理";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";}s:8:"bigwheel";a:14:{s:3:"mid";s:1:"7";s:4:"name";s:8:"bigwheel";s:4:"type";s:8:"activity";s:5:"title";s:9:"大转盘";s:7:"version";s:5:"1.1.2";s:7:"ability";s:21:"大转盘营销抽奖";s:11:"description";s:21:"大转盘营销抽奖";s:6:"author";s:4:"ewei";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:5:"fujin";a:14:{s:3:"mid";s:1:"9";s:4:"name";s:5:"fujin";s:4:"type";s:5:"other";s:5:"title";s:12:"附近商服";s:7:"version";s:3:"1.2";s:7:"ability";s:39:"搜索附近商家，以及服务地点";s:11:"description";s:90:"通过回复地理位置，检索附近的商户，服务场所以及其他地点信息。";s:6:"author";s:10:"topone4tvs";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:2:{i:0;s:4:"text";i:1;s:8:"location";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:13:"izc_strcoupon";a:14:{s:3:"mid";s:2:"10";s:4:"name";s:13:"izc_strcoupon";s:4:"type";s:8:"customer";s:5:"title";s:9:"优惠券";s:7:"version";s:3:"1.3";s:7:"ability";s:9:"各种券";s:11:"description";s:9:"各种券";s:6:"author";s:12:"智策&strai";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:8:"panorama";a:14:{s:3:"mid";s:2:"11";s:4:"name";s:8:"panorama";s:4:"type";s:5:"other";s:5:"title";s:9:"360全景";s:7:"version";s:3:"1.9";s:7:"ability";s:9:"360全景";s:11:"description";s:9:"360全景";s:6:"author";s:6:"晓锋";s:3:"url";s:12:"wx.qfinfo.cn";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:6:"qrcode";a:14:{s:3:"mid";s:2:"12";s:4:"name";s:6:"qrcode";s:4:"type";s:8:"services";s:5:"title";s:15:"二维码推广";s:7:"version";s:3:"1.0";s:7:"ability";s:15:"二维码推广";s:11:"description";s:15:"二维码推广";s:6:"author";s:29:"珊瑚海 &amp; WeEngine Team";s:3:"url";s:1:"#";s:8:"settings";s:1:"0";s:10:"subscribes";a:2:{i:0;s:4:"scan";i:1;s:9:"subscribe";}s:7:"handles";a:2:{i:0;s:4:"text";i:1;s:9:"subscribe";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:8:"research";a:14:{s:3:"mid";s:2:"13";s:4:"name";s:8:"research";s:4:"type";s:8:"customer";s:5:"title";s:15:"预约与调查";s:7:"version";s:4:"1.51";s:7:"ability";s:48:"可以快速生成调查表单或则预约记录";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:7:"scratch";a:14:{s:3:"mid";s:2:"14";s:4:"name";s:7:"scratch";s:4:"type";s:8:"activity";s:5:"title";s:9:"刮刮卡";s:7:"version";s:3:"1.2";s:7:"ability";s:21:"刮刮卡营销抽奖";s:11:"description";s:165:"刮刮卡是指卡上的一种覆盖数字和字母密码等文字的涂层，因此刮刮卡也叫密码覆膜卡、帐户卡或记账密码卡。客户端可兑奖";s:6:"author";s:12:"超级无聊";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:9:"shopping3";a:14:{s:3:"mid";s:2:"16";s:4:"name";s:9:"shopping3";s:4:"type";s:8:"business";s:5:"title";s:12:"新微餐饮";s:7:"version";s:3:"3.2";s:7:"ability";s:20:"微商城(餐饮版)";s:11:"description";s:20:"微商城 for 餐饮";s:6:"author";s:12:"超级无聊";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:4:"site";a:14:{s:3:"mid";s:2:"17";s:4:"name";s:4:"site";s:4:"type";s:8:"business";s:5:"title";s:14:"微文章(CMS)";s:7:"version";s:3:"2.1";s:7:"ability";s:48:"展示一个手机网页来介绍你的公众号";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://www.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:8:"smashegg";a:14:{s:3:"mid";s:2:"18";s:4:"name";s:8:"smashegg";s:4:"type";s:8:"activity";s:5:"title";s:9:"砸金蛋";s:7:"version";s:3:"1.1";s:7:"ability";s:30:"砸金蛋，抽奖营销活动";s:11:"description";s:30:"砸金蛋，抽奖营销活动";s:6:"author";s:12:"超级无聊";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:4:"stat";a:14:{s:3:"mid";s:2:"19";s:4:"name";s:4:"stat";s:4:"type";s:5:"other";s:5:"title";s:12:"数据统计";s:7:"version";s:3:"1.3";s:7:"ability";s:39:"提供消息记录及分析统计功能";s:11:"description";s:100:"能够提供按公众号码查询, 分析统计消息记录, 以及规则关键字命中情况统计";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://www.we7.cc";s:8:"settings";s:1:"1";s:10:"subscribes";a:7:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:8:"location";i:3;s:4:"link";i:4;s:9:"subscribe";i:5;s:11:"unsubscribe";i:6;s:5:"click";}s:7:"handles";a:0:{}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:8:"timeaxis";a:14:{s:3:"mid";s:2:"20";s:4:"name";s:8:"timeaxis";s:4:"type";s:5:"other";s:5:"title";s:9:"时光轴";s:7:"version";s:3:"1.0";s:7:"ability";s:15:"时光轴展示";s:11:"description";s:84:"通过类似时光轴的形式，对某些活动流程或重要的事件进行展示";s:6:"author";s:10:"topone4tvs";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:4:"wcha";a:14:{s:3:"mid";s:2:"21";s:4:"name";s:4:"wcha";s:4:"type";s:8:"business";s:5:"title";s:15:"微餐饮查单";s:7:"version";s:3:"1.0";s:7:"ability";s:42:"结合微餐饮的商家商家查单功能";s:11:"description";s:42:"结合微餐饮的商家商家查单功能";s:6:"author";s:12:"超级无聊";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:3:"yyy";a:14:{s:3:"mid";s:2:"22";s:4:"name";s:3:"yyy";s:4:"type";s:8:"activity";s:5:"title";s:18:"摇一摇现场版";s:7:"version";s:3:"2.6";s:7:"ability";s:27:"现场大屏互动类活动";s:11:"description";s:48:"摇一摇，让你在现场迅速引爆人气。";s:6:"author";s:6:"皓蓝";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:6:"credit";a:14:{s:3:"mid";s:2:"23";s:4:"name";s:6:"credit";s:4:"type";s:8:"business";s:5:"title";s:12:"积分兑换";s:7:"version";s:3:"1.0";s:7:"ability";s:12:"积分兑换";s:11:"description";s:171:"积分兑换，签到积分，购物积分，酒店积分兑换。通过本模块进行营销活动，可以获得用户的真实姓名、手机号码、邮寄地址等。";s:6:"author";s:6:"晓楚";s:3:"url";s:26:"http://blog.csdn.net/maray";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:11:"multisearch";a:14:{s:3:"mid";s:2:"24";s:4:"name";s:11:"multisearch";s:4:"type";s:8:"services";s:5:"title";s:12:"万能查询";s:7:"version";s:3:"1.8";s:7:"ability";s:18:"万能查询数据";s:11:"description";s:18:"万能查询数据";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:13:"http://we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:13:"ppcrmtransfer";a:14:{s:3:"mid";s:2:"25";s:4:"name";s:13:"ppcrmtransfer";s:4:"type";s:5:"other";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:8:"shopping";a:14:{s:3:"mid";s:2:"26";s:4:"name";s:8:"shopping";s:4:"type";s:8:"business";s:5:"title";s:9:"微商城";s:7:"version";s:5:"2.9.3";s:7:"ability";s:9:"微商城";s:11:"description";s:9:"微商城";s:6:"author";s:20:"WeEngine Team & ewei";s:3:"url";s:0:"";s:8:"settings";s:1:"1";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";}s:4:"vote";a:14:{s:3:"mid";s:2:"27";s:4:"name";s:4:"vote";s:4:"type";s:8:"activity";s:5:"title";s:9:"微投票";s:7:"version";s:4:"1.04";s:7:"ability";s:12:"投票系统";s:11:"description";s:33:"图片、文字，单选，多选";s:6:"author";s:20:"WeEngine Team & ewei";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:14:"we7_photomaker";a:14:{s:3:"mid";s:2:"28";s:4:"name";s:14:"we7_photomaker";s:4:"type";s:8:"activity";s:5:"title";s:12:"微擎微拍";s:7:"version";s:3:"1.7";s:7:"ability";s:6:"微拍";s:11:"description";s:6:"微拍";s:6:"author";s:12:"微擎团队";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}s:10:"weihaom_wb";a:14:{s:3:"mid";s:2:"29";s:4:"name";s:10:"weihaom_wb";s:4:"type";s:8:"activity";s:5:"title";s:9:"踩白块";s:7:"version";s:3:"1.0";s:7:"ability";s:50:"拆包装,踩虫子,抽老板耳光...无所不能";s:11:"description";s:50:"拆包装,踩虫子,抽老板耳光...无所不能";s:6:"author";s:22:"皓蓝 & WeEngine Team";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:1:{i:0;s:4:"text";}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";}}'),
('fansfields', 'a:49:{i:0;s:2:"id";i:1;s:4:"weid";i:2;s:9:"from_user";i:3;s:4:"salt";i:4;s:6:"follow";i:5;s:7:"credit1";i:6;s:7:"credit2";i:7;s:10:"createtime";i:8;s:8:"realname";i:9;s:8:"nickname";i:10;s:6:"avatar";i:11;s:2:"qq";i:12;s:6:"mobile";i:13;s:6:"fakeid";i:14;s:3:"vip";i:15;s:6:"gender";i:16;s:9:"birthyear";i:17;s:10:"birthmonth";i:18;s:8:"birthday";i:19;s:13:"constellation";i:20;s:6:"zodiac";i:21;s:9:"telephone";i:22;s:6:"idcard";i:23;s:9:"studentid";i:24;s:5:"grade";i:25;s:7:"address";i:26;s:7:"zipcode";i:27;s:11:"nationality";i:28;s:14:"resideprovince";i:29;s:10:"residecity";i:30;s:10:"residedist";i:31;s:14:"graduateschool";i:32;s:7:"company";i:33;s:9:"education";i:34;s:10:"occupation";i:35;s:8:"position";i:36;s:7:"revenue";i:37;s:15:"affectivestatus";i:38;s:10:"lookingfor";i:39;s:9:"bloodtype";i:40;s:6:"height";i:41;s:6:"weight";i:42;s:6:"alipay";i:43;s:3:"msn";i:44;s:5:"email";i:45;s:6:"taobao";i:46;s:4:"site";i:47;s:3:"bio";i:48;s:8:"interest";}'),
('weid:1', 's:1:"3";'),
('upgrade', 's:55:"a:2:{s:7:"upgrade";b:1;s:10:"lastupdate";i:1436797999;}";'),
('wxauth:admin@haochimall.com:token', 's:9:"245822053";'),
('wxauth:admin@haochimall.com:cookie', 's:441:"data_bizuin=3078966102; Path=/; Secure; HttpOnly; data_ticket=AgVvXaBHW8pxVwm3LxtcTwFJAwHWlzQF7YmOyn1vdnM=; Path=/; Secure; HttpOnly; slave_user=gh_2250b8ba6b7b; Path=/; Secure; HttpOnly; slave_sid=ZkFtalI0SVc4NWZyV19IZWJVcnEwSWluX2JOajc5ZG1lcGJZTlRncm5JMUlnUk1mSHZDNFdfMG9LTGhuTmc3UHVNaV9IRUxURm1IeEJHOGhWZm1fY3FtekNHTVBwRXlVdnQ5VHBqUFVvbDJLZmk2b3hVUGtkRWtDK3cxeGxHVk0=; Path=/; Secure; HttpOnly; bizuin=3078966102; Path=/; Secure; HttpOnly";'),
('weid:2', 's:1:"3";'),
('wxauth:minquan@ziqugou.cn:token', 's:10:"1709163363";'),
('wxauth:minquan@ziqugou.cn:cookie', 's:441:"data_bizuin=3005254214; Path=/; Secure; HttpOnly; data_ticket=AgX6y15wS/NhIUcUbezkvCOoAwEQ9kBjqYP0Zxuw/L4=; Path=/; Secure; HttpOnly; slave_user=gh_a9f0b0434526; Path=/; Secure; HttpOnly; slave_sid=bzVrQXNDblRFbTNoZkUxX2V3TUF2ZFo0d0dLUXBlQm9SZHkwSDEzVmxBM1VlN0VJeHphamJYRnpLTEFiMnlVY2UzQVlub3kwVmxnX2VjRE1ZTzBLVVVrdGZNeVB6YXFKMGV6Qm5fRFlOZGNEd2RtY0dHYVVuMG4rQTNtWFlGRmU=; Path=/; Secure; HttpOnly; bizuin=3005254214; Path=/; Secure; HttpOnly";'),
('weid:8', 's:1:"7";'),
('weid:10', 's:1:"8";'),
('weid:11', 's:1:"9";'),
('wxauth:0759dl@qisel.cn:token', 's:9:"746665171";'),
('wxauth:0759dl@qisel.cn:cookie', 's:441:"data_bizuin=3012172392; Path=/; Secure; HttpOnly; data_ticket=AgUUIE3XOElS0PEhid6JhTtSAwFU5rUSd6xO8cgIEDY=; Path=/; Secure; HttpOnly; slave_user=gh_7800a2ac3338; Path=/; Secure; HttpOnly; slave_sid=NUx3Y01BT3J4XzZFZXVrS0o2dlpuY0pLMW9RU2pyV0NMQU9UVGYyZHk3WTJkeUxhTUdfZnNRMlAwY1hRaUR0ZUZPajMxdWUzWjlxZTRvemVHNTJYQzJtQm1xRUh2MVloRHVDT2JRMUtPUEtYUWF3aW1rYmZ6VzhGVXVIM0xjSUI=; Path=/; Secure; HttpOnly; bizuin=3012172392; Path=/; Secure; HttpOnly";'),
('weid:20', 's:2:"11";'),
('wxauth:nandingjiali@qq.com:token', 's:9:"326205914";'),
('wxauth:nandingjiali@qq.com:cookie', 's:441:"data_bizuin=3073573327; Path=/; Secure; HttpOnly; data_ticket=AgWRDAixoQ/LMw508XCX6F1VAwFL79bed3OhWVBQtW8=; Path=/; Secure; HttpOnly; slave_user=gh_a7a9ece1535d; Path=/; Secure; HttpOnly; slave_sid=RGlrYWZDa2hPNXcxQzc0Y3Blc0ZmWXBNcENDTHNyWW5kZk9vOFlkVWNVdEJWTGJZd0RTYWRVRnRyOTNVVWtPTmt5YjhzOHl2S2x5c040VHl5aWlyM04xcXQ2eGs0YnA5UjNMY3IyNWRLRGlRcUtjbGNkTkYwL1NLU01NUGVraGg=; Path=/; Secure; HttpOnly; bizuin=3073573327; Path=/; Secure; HttpOnly";'),
('weid:21', 's:2:"12";'),
('weid:22', 's:2:"13";'),
('weid:25', 's:2:"14";'),
('weid:32', 's:2:"15";'),
('weid:35', 's:2:"16";'),
('wxauth:kailai21cn@126.com:token', 's:9:"563263169";'),
('wxauth:kailai21cn@126.com:cookie', 's:441:"data_bizuin=3005561978; Path=/; Secure; HttpOnly; data_ticket=AgU9bBjKVVc3UFyvwMQfch0/AwFSs7sNVwhZtP2yBxY=; Path=/; Secure; HttpOnly; slave_user=gh_39f5bdf338fd; Path=/; Secure; HttpOnly; slave_sid=dlBIU0NJZ2laaWoyT2pUcTdLVFFLWHhLUTBHT0hIRW5ndHc3ZEJITzE4a3pYcEtyR2Y2RnI2UkNFMlU3RzV4bmJNTnp5TVlxNHZyZWV6Rm51YTNNNUQwdHA4YVlNYnVfRzkwaGI0eFlxV083Tm5Ma3lwWWpXUGJ4MnROWjVIeko=; Path=/; Secure; HttpOnly; bizuin=3005561978; Path=/; Secure; HttpOnly";'),
('weid:40', 's:2:"18";');

-- --------------------------------------------------------

--
-- 表的结构 `ims_card`
--

CREATE TABLE IF NOT EXISTS `ims_card` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_card`
--

INSERT INTO `ims_card` (`id`, `weid`, `title`, `color`, `background`, `logo`, `format`, `fields`, `snpos`) VALUES
(1, 6, '撒旦发额外', 'a:2:{s:5:"title";s:7:"#f1c232";s:6:"number";s:7:"#ffe599";}', 'a:2:{s:10:"background";s:6:"system";s:5:"image";s:1:"6";}', 'images/6/2015/07/m8bQhLygX8Hb5V0m6Hb55M3M9AmV56.jpg', 'Gogood**********', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_card_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_card_coupon` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_card_log`
--

CREATE TABLE IF NOT EXISTS `ims_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1积分，2金额，3优惠券',
  `content` varchar(255) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_card_members`
--

CREATE TABLE IF NOT EXISTS `ims_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL DEFAULT '',
  `cardsn` varchar(20) NOT NULL DEFAULT '',
  `credit1` varchar(15) NOT NULL DEFAULT '0',
  `credit2` varchar(15) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_card_members_coupon`
--

CREATE TABLE IF NOT EXISTS `ims_card_members_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1为正常状态，2为已使用',
  `receiver` varchar(50) NOT NULL,
  `consumetime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_card_password`
--

CREATE TABLE IF NOT EXISTS `ims_card_password` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cover_reply`
--

CREATE TABLE IF NOT EXISTS `ims_cover_reply` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `ims_cover_reply`
--

INSERT INTO `ims_cover_reply` (`id`, `weid`, `rid`, `module`, `do`, `title`, `description`, `thumb`, `url`) VALUES
(1, 3, 10, 'bigwheel', 'manage', '大转盘管理', '撒旦法阿萨法阿萨法', '', '阿萨法打发掉 '),
(2, 3, 11, 'wesite', 'channel', '松松快餐微站', '每天为您提供最及时新鲜的快餐，合肥市十里庙商圈快餐预，点击进入松松快餐官方微网站！', 'images/3/2015/07/rPn0PHdu6MHeP6jHnKuuWMku86WuAN.jpg', 'mobile.php?act=channel&name=index&weid=3'),
(3, 3, 12, 'shopping3', 'wlindex', '松松快餐订餐', '每天为您提供最及时新鲜的快餐，合肥市十里庙商圈快餐预，松松快餐订餐界面，订餐电话：181-3002-6323', 'images/3/2015/07/sbzBWZ69BBpa9kpR9QPpnzb9rPfGgK.jpg', ''),
(4, 3, 13, 'shopping', 'list', '松松快餐商城', '欢迎光临松松快餐网上商城，这里有您最喜爱的点心休闲食品，欢迎选购，催单电话181-3002-6323', 'images/3/2015/07/ZF6M075959Fm07Zx9LATF5Z90577dm.jpg', ''),
(5, 3, 14, 'shopping3', 'wlmember', '松松快餐订单查询', '点击这里使用微信查询订单！GO', 'images/3/2015/07/l0XzJ008gCh060010PpC6jt1B69R6j.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_credit_request`
--

CREATE TABLE IF NOT EXISTS `ims_credit_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `award_id` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_default_reply_log`
--

CREATE TABLE IF NOT EXISTS `ims_default_reply_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL COMMENT '微信号ID，关联wechats表',
  `from_user` varchar(50) NOT NULL COMMENT '用户的唯一身份ID',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '用户最后发送信息时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_fans`
--

CREATE TABLE IF NOT EXISTS `ims_fans` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `ims_fans`
--

INSERT INTO `ims_fans` (`id`, `weid`, `from_user`, `salt`, `follow`, `credit1`, `credit2`, `createtime`, `realname`, `nickname`, `avatar`, `qq`, `mobile`, `fakeid`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `email`, `taobao`, `site`, `bio`, `interest`) VALUES
(1, 3, 'ooromt3ynKFAmmZTQLB_T5T3EVIY', 'NXpxZvOH', 1, 0, 0, 1435974645, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 3, 'ooromtyG6i4fDGbilytTjyQreGgs', 'BBVFvnVV', 1, 0, 0, 1436807706, '', '李明', '', '', '18655955562', '', 0, 1, 0, 0, 0, '', '', '', '', '', '', '金徽阳光', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 3, 'ooromt90Jb0erZTkAvW3hUjzVeCY', 'Bs07fl60', 1, 0, 0, 1436148576, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 3, 'ooromtxABlhF90lXGH0Wo-st1tfU', 'rZm0ylYR', 0, 0, 0, 1436199194, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 3, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', 't0x1bWsp', 0, 0, 0, 1436178580, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 3, 'ooromt_-9PlHLBIWK_tlSJIx9Zs0', 'n0bk61vY', 1, 0, 0, 1436236069, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 3, 'ooromt_CtXn3-9ZSlZwjZ0v8gxqQ', 'rbYbfbK1', 1, 0, 0, 1436274910, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 3, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'Xg9RGtMN', 1, 0, 0, 1436376182, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 3, 'ooromt0goFcGyonnqF0cWxl0SsQ4', 'oA55ADMd', 1, 0, 0, 1436415552, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 3, 'ooromt20UMNaajJJXJPV6FKMVAS4', 'iCO5vLnu', 0, 0, 0, 1436444548, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 3, 'ooromt1YOggQMYaYIILoFPz2-5Jo', 'GlJ4Uaaz', 0, 0, 0, 1436513244, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 3, 'ooromtwYzcPU-YMvlP9QyrbDqH28', 'sEN1m2EV', 0, 0, 0, 1436614104, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 3, 'ooromt7GpFEPVqtznq32Cik2DNi8', 'T8y5lPN2', 1, 0, 0, 1436690527, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 3, 'ooromtxOSRWAoRaSeQggz27H2Iis', 'lQG2u422', 0, 0, 0, 1436691894, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 3, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', 'o2s0Sztz', 1, 0, 0, 1436704969, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 3, '13865949448', 'og454o5h', 1, 0, 0, 1436720766, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 3, '13865949442', 'HubzqOK6', 1, 0, 0, 1436720780, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 3, 'ooromtwnQXMu9xqDuMcsYoq7cVbo', 'N8P43VHM', 1, 0, 0, 1436752452, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 3, 'ooromt5zFpQZX776b9qSfBCFBnsQ', 'esybLbRb', 1, 0, 0, 1436773396, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 3, 'ooromt3zuWjC_11dGVOoH_GpKHNc', 'tiEBbiD8', 1, 0, 0, 1436796147, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 3, 'ooromtxJjifjXXFnjp30gccO7Fz8', 'RLLI6et6', 1, 0, 0, 1436807952, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 3, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'ehTKT7qz', 1, 0, 0, 1436809595, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 3, 'ooromt3U3q730AoL0K6Yk-6Z-Sis', 'yDZkci98', 1, 0, 0, 1436843749, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 3, 'ooromt5-0O8Al36LkR60cu7xZB1M', 'tEFe7CR2', 1, 0, 0, 1436846998, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 3, 'ooromtzesdBjtsfRvPwUTs3iAGhk', 'UetWqco1', 1, 0, 0, 1436847390, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 3, 'ooromtzCjtDE8kYpVkNqStsMKVp8', 'Nn0Bjgbz', 1, 0, 0, 1436855239, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 3, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 'H1Wj1CoD', 1, 0, 0, 1436857190, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 3, 'ooromtzklwZ-r4qVOaeMNCZBh1Ts', 'VgwWZwId', 1, 0, 0, 1436857985, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_members`
--

CREATE TABLE IF NOT EXISTS `ims_members` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `ims_members`
--

INSERT INTO `ims_members` (`uid`, `groupid`, `username`, `password`, `salt`, `status`, `joindate`, `joinip`, `lastvisit`, `lastip`, `remark`) VALUES
(1, 0, 'admin', '89959d3a6ed30550a4d3ab21599c195debb9f59c', 'JChVv8av', 0, 1429787314, '', 1436864583, '114.96.128.231', ''),
(2, 0, 'cocomyyz', 'a15a5ef26b92324078a14e59feea87eecbb9051b', 'JChVv8av', 0, 1429794660, '60.168.94.129', 1436801925, '114.96.128.231', ''),
(3, 0, 'test', 'd960127cad57975a1f792179727146542503a2da', 'p79Jv690', 0, 1435971501, '223.240.108.80', 1435971509, '223.240.108.80', ''),
(4, 0, 'ioihoo', '39340ecc6803a8284b26b5e2430cd75bc0f2f689', 'dumWMmkM', 0, 1435993357, '61.154.78.230', 1435993390, '61.154.78.230', ''),
(5, 0, 'ioihoo2', 'bf4fc4413084f3b35e842eb03d85ad63af030549', 'Fd9bn63k', 0, 1436008138, '61.154.78.230', 1436008138, '61.154.78.230', ''),
(6, 0, '12345', '2214c6a73d2d9727417679c7bbce86a5666c81b0', 'Ew9SZBkf', 0, 1436127491, '202.120.121.73', 1436127503, '202.120.121.73', ''),
(7, 0, '916212124', 'f85670caa0d685b5ccf72d1b63affa69506a3305', 'YZ7IQOQj', 0, 1436154730, '58.42.182.134', 1436154736, '58.42.182.134', ''),
(8, 0, 'y7676767', '0919a56c71de7f66b47c7d01f62963f0357f5445', 'X3m4y336', 0, 1436155945, '182.141.156.108', 1436155953, '182.141.156.108', ''),
(9, 0, 'aaaaa', '8c262cc5260f21dd2e20b750bd912ce47110e164', 'TOCL3OCL', 0, 1436167127, '183.129.210.4', 1436167135, '183.129.210.4', ''),
(10, 0, 'ffffffff', 'ae932df881d921346ac6f960b0431319064a7136', 'em46MOr6', 0, 1436177260, '125.118.221.142', 1436177273, '125.118.221.142', ''),
(11, 0, 'qjw777', 'df0ad6b7f433d3faf72819fac814c7125a7b0ab2', 'LU8pLupU', 0, 1436235151, '61.146.159.162', 1436235159, '61.146.159.162', ''),
(12, 0, 'hongtaomama', '629762b58daa2290f3579a256b34bd0b827d9e25', 'l61mg6An', 0, 1436237915, '182.149.204.87', 1436237923, '182.149.204.87', ''),
(13, 0, 'cannuo', '4b3018bb9796629a482de148794d10aa965a96f2', 'SxUGZENE', 0, 1436238307, '106.39.248.216', 1436238316, '106.39.248.216', ''),
(14, 0, '2577717725', 'b4488f869417f226aed48165436a3487b8d5c140', 'i4VNGn56', 0, 1436261795, '123.150.217.11', 1436275235, '123.151.175.214', ''),
(15, 0, 'fengzi1231', 'a63e65234014ff86c6adf4eaa5689d115ea69a58', 'K6J1bHhF', 0, 1436326115, '110.253.222.166', 1436326180, '110.253.222.166', ''),
(16, 0, '703237730', '54aad5a44adf0ec5820fed3ca3b2107647577c15', 'L0H2CSoB', 0, 1436330973, '121.25.15.32', 1436330984, '121.25.15.32', ''),
(17, 0, 'shengxiansheng', 'ea1dc388fbf5482230c3ddeaeb27843810d56c9c', 'd76ZB6fL', 0, 1436351316, '58.248.141.211', 1436351327, '58.248.141.211', ''),
(18, 0, 'bsj2873', '965f0109814309e10a91b6262fb1a9ec0148e976', 'd53U3bqQ', 0, 1436364864, '116.1.123.16', 1436364874, '116.1.123.16', ''),
(19, 0, '562365656', 'f33179ba38fb62b2cc5d4d7f4e26c9085646a128', 'JGhNo0NF', 0, 1436369906, '115.212.151.102', 1436369906, '115.212.151.102', ''),
(20, 0, 'qisel', '133ea672f22ce05013a206d8995c42ba6dd7d58f', 'T1Q4U71N', 0, 1436373387, '112.93.24.141', 1436373397, '112.93.24.141', ''),
(21, 0, 'cannuo1', '2015686f2db2af51a441be37cced6f3e7ac4ef0c', 'h0MmzDoQ', 0, 1436375571, '61.148.242.169', 1436538098, '123.120.53.192', ''),
(22, 0, '715080756', '4fd85be523608d2d8d911806c8bb8679fa257dd4', 'QpyqcCJE', 0, 1436415391, '27.42.60.150', 1436415400, '27.42.60.150', ''),
(23, 0, 'cntest', '10be9c1f68ca7c990ec2d592623232aea60ace74', 'ULh3mp6h', 0, 1436425477, '182.38.39.165', 1436425489, '182.38.39.165', ''),
(24, 0, '1111', 'ee30995ea5db7011480be519e40e82d22d277727', 'fpe3wmDf', 0, 1436428498, '117.84.5.131', 1436428508, '117.84.5.131', ''),
(25, 0, 'tshr1118', 'ecdd46a7a951b4a051fbd955e9eba80456cacf72', 'b8cawXx9', 0, 1436444704, '106.39.252.137', 1436445359, '106.38.214.230', ''),
(26, 0, 'cocomyyz1', '40fc4703b7f24b6c19f27dd216030cbd2b8c4cd8', 'B90PaSy7', 0, 1436445393, '60.168.82.17', 1436445406, '60.168.82.17', ''),
(27, 0, 'spin001', '73f8bcf11993c1c9828801138490e0c6a64bda52', 'Qd64G8l5', 0, 1436543428, '49.74.5.34', 1436543628, '49.74.5.34', ''),
(28, 0, 'a123456', 'da700ba27cba42fe5ebe2c4dfb9df27419cd898d', 'h7iTSYmi', 0, 1436596551, '58.39.76.29', 1436596562, '58.39.76.29', ''),
(29, 0, 'alwyn', '91605606ab9b099df9eebc2d768b86199d20e9fe', 'LU2qiKui', 0, 1436598183, '113.119.210.181', 1436598189, '113.119.210.181', ''),
(30, 0, 'abc110', 'e4e2d28527d08c3b2a2e96e3b7c3210c7b502cb3', 'xrXB3Ul1', 0, 1436660889, '125.92.231.189', 1436660909, '125.92.231.189', ''),
(31, 0, '汉阴爱尚实业有限公司', '1b24498ffda58767f453fbfebe16e21a32c18fc5', 'kGp3h2Ga', 0, 1436682456, '123.139.179.37', 1436682532, '123.139.179.37', ''),
(32, 0, '123456', '6c302fe7441a889c8b8d7aa50820b71ee0f26287', 'GRwDXWWI', 0, 1436691676, '111.127.123.113', 1436691685, '111.127.123.113', ''),
(33, 0, 'ajaxyuren', 'e9d6d2744a8c27af7bbbd23842ad577731e1c014', 'T61E8cwE', 0, 1436704428, '116.112.214.154', 1436704438, '116.112.214.154', ''),
(34, 0, 'shundeshi', '6da031604a1866a0695693179e6c4f6fa5061812', 'NcbMp4cu', 0, 1436772985, '183.26.208.238', 1436773173, '183.26.208.238', ''),
(35, 0, 'liuchanyes', 'e8cdc9535ac79bf01bebb23ee610ed76bed35d5e', 'MjjN5Yl2', 0, 1436778533, '123.150.240.19', 1436778556, '123.150.240.19', ''),
(36, 0, '6577453', '551d208039faa4ee7eecedb1b420998b4a529fc5', 'h7iP44iJ', 0, 1436796014, '123.166.87.3', 1436796024, '123.166.87.3', ''),
(37, 0, 'mcxiaoshou', '15c1fb16f4c2cd96d950afc2c6ad1984c3416099', 'dD0j8ZU1', 0, 1436796024, '106.39.254.59', 1436796030, '106.39.254.59', ''),
(38, 0, 'testuser', 'd73b1eae1f72486931213491c1e9f5347212fcfc', 'eFwJDDCF', 0, 1436798695, '114.96.128.231', 1436798704, '114.96.128.231', ''),
(39, 0, 'nqj123', '47011f7b08ece9c61a735fb13097093c91c5007f', 'QZDGHfhH', 0, 1436819358, '117.57.51.224', 1436819370, '117.57.51.224', ''),
(40, 0, 'xiaoyuan', '12cd86ddb70e41c1c3bf3032ea8cbf656f6b29dc', 'MK1XApzR', 0, 1436843710, '27.20.232.67', 1436858410, '27.20.232.67', ''),
(41, 0, 'fdw21cn', 'd5e04aaa0f38302fa619be170d8bad1ca3b0e31b', 'SdR505ZF', 0, 1436847101, '222.41.164.107', 1436847109, '222.41.164.107', ''),
(42, 0, 'donghaibo', '5b5f50f8296e9ea29314f8041e22fb476150caae', 'eLOAZ5KT', 0, 1436855351, '115.234.131.140', 1436855357, '115.234.131.140', ''),
(43, 0, 'a853343321', '0fd8da5d316df3fe168c962fd3e0bc1e684e17e6', 'Y8ns0L85', 0, 1436859900, '111.17.165.211', 1436859909, '111.17.165.211', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_members_group`
--

CREATE TABLE IF NOT EXISTS `ims_members_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(5000) NOT NULL DEFAULT '',
  `templates` varchar(5000) NOT NULL DEFAULT '',
  `maxaccount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0为不限制',
  `maxsubaccount` int(10) unsigned NOT NULL COMMENT '子公号最多添加数量，为0为不可以添加',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_members_permission`
--

CREATE TABLE IF NOT EXISTS `ims_members_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `resourceid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为模块,2为模板',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `ims_members_permission`
--

INSERT INTO `ims_members_permission` (`id`, `uid`, `resourceid`, `type`) VALUES
(1, 2, 16, 1),
(2, 2, 2, 2),
(3, 2, 3, 2),
(4, 2, 4, 2),
(5, 2, 5, 2),
(6, 2, 7, 2),
(7, 2, 6, 2),
(8, 2, 8, 2),
(9, 2, 9, 2),
(10, 2, 10, 2),
(11, 2, 11, 2),
(12, 2, 12, 2),
(13, 2, 21, 1),
(14, 2, 5, 1),
(15, 2, 7, 1),
(16, 2, 9, 1),
(17, 2, 10, 1),
(18, 2, 11, 1),
(19, 2, 12, 1),
(20, 2, 13, 1),
(21, 2, 14, 1),
(22, 2, 17, 1),
(23, 2, 18, 1),
(24, 2, 19, 1),
(25, 2, 20, 1),
(26, 2, 22, 1),
(27, 2, 23, 1),
(28, 2, 24, 1),
(29, 2, 29, 1),
(30, 2, 28, 1),
(31, 2, 27, 1),
(32, 2, 26, 1),
(33, 2, 25, 1),
(34, 2, 13, 2),
(35, 2, 14, 2),
(36, 2, 15, 2),
(37, 2, 16, 2),
(38, 2, 17, 2),
(39, 2, 18, 2),
(40, 2, 19, 2),
(41, 2, 20, 2),
(42, 2, 21, 2),
(43, 2, 23, 2),
(44, 2, 24, 2),
(45, 2, 22, 2),
(46, 2, 25, 2),
(47, 2, 26, 2),
(48, 2, 27, 2),
(49, 2, 43, 2),
(50, 2, 42, 2),
(51, 2, 41, 2),
(52, 2, 40, 2),
(53, 2, 39, 2),
(54, 2, 38, 2),
(55, 2, 37, 2),
(56, 2, 36, 2),
(57, 2, 35, 2),
(58, 2, 34, 2),
(59, 2, 33, 2),
(60, 2, 32, 2),
(61, 2, 31, 2),
(62, 2, 30, 2),
(63, 2, 29, 2),
(64, 2, 28, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ims_members_profile`
--

CREATE TABLE IF NOT EXISTS `ims_members_profile` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `ims_members_profile`
--

INSERT INTO `ims_members_profile` (`id`, `uid`, `createtime`, `realname`, `nickname`, `avatar`, `qq`, `mobile`, `fakeid`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `email`, `taobao`, `site`, `bio`, `interest`) VALUES
(1, 2, 1429794660, '李明', '椰子', '', '446881654', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 3, 1435971501, '李明', '椰子', '', '446881654', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 4, 1435993357, '谢祥辉', 'ioi', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 5, 1436008138, '谢祥辉', 'ioihoo', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 6, 1436127491, 'dwadw132', 'dawda1', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 7, 1436154730, '916212124', '916212124', '', '916212124', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 8, 1436155945, '周银林', '周周', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 9, 1436167127, 'a', 'a', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 10, 1436177260, 'ffffffff', 'ffffffff', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 11, 1436235151, '大幅度释放', '得瑟得瑟', '', '771593377', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 12, 1436237915, '宏涛', '涛涛', '', '15066220', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 13, 1436238307, '123', '123', '', '123456', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 14, 1436261795, '2577717725', '2577717725', '', '2577717725', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 15, 1436326115, '试试', '试试', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 16, 1436330973, '天天', '雨天', '', '703237730', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 17, 1436351316, 'shengxians', 'shengxiansheng', '', '20093333', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 18, 1436364864, '就是他', 'BSJ123456', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 19, 1436369906, 'cocomyyzco', 'cocomyyzcocomyyz', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 20, 1436373387, '125', '花儿科技', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 21, 1436375571, '李三', '李三', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 22, 1436415391, '丽丽', '715080756', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 23, 1436425477, '测试', '测试毛毛', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 24, 1436428498, '1111', '1111', '', '1111', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 25, 1436444704, '李里', '李里', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 26, 1436445393, '耶耶', '耶耶', '', '896335626', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 27, 1436543428, '陈熙', 'spin001', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 28, 1436596551, '夺标地', 'a1123', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 29, 1436598183, '梁生', 'alwyn', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 30, 1436660889, '李华', '冰雨', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 31, 1436682456, '尹行东', '爱尚实业点餐中心', '', '258545810', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 32, 1436691676, '杨超', '123456', '', '1827030992@qq.c', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 33, 1436704428, 'zhang123', 'zhang123', '', '31243', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 34, 1436772985, '123456', '123456', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 35, 1436778533, '刘婵', 'liuchanyes', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 36, 1436796014, '张红', '飘零的记忆', '', '28685821', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 37, 1436796024, '大萌', '大萌山货', '', '340560', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 38, 1436798695, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 39, 1436819358, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 40, 1436843710, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 41, 1436847101, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 42, 1436855351, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 43, 1436859900, '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_menu_event`
--

CREATE TABLE IF NOT EXISTS `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL COMMENT '事件类型',
  `picmd5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`weid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules`
--

CREATE TABLE IF NOT EXISTS `ims_modules` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `ims_modules`
--

INSERT INTO `ims_modules` (`mid`, `name`, `type`, `title`, `version`, `ability`, `description`, `author`, `url`, `settings`, `subscribes`, `handles`, `isrulefields`, `issystem`) VALUES
(1, 'basic', '', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1),
(2, 'news', '', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1),
(3, 'music', '', '基本语音回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1),
(4, 'userapi', '', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1),
(5, 'fans', 'customer', '粉丝管理', '1.2', '关注的粉丝管理', '', 'WeEngine Team', 'http://bbs.we7.cc/forum.php?mod=forumdisplay&fid=36&filter=typeid&typeid=1', 0, 'a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:5:"video";i:4;s:8:"location";i:5;s:4:"link";i:6;s:9:"subscribe";i:7;s:11:"unsubscribe";}', 'a:0:{}', 0, 0),
(6, 'member', 'customer', '微会员', '1.2', '会员管理', '会员管理', 'WeEngine Team', '', 0, 'a:0:{}', '', 0, 1),
(7, 'bigwheel', 'activity', '大转盘', '1.1.2', '大转盘营销抽奖', '大转盘营销抽奖', 'ewei', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(24, 'multisearch', 'services', '万能查询', '1.8', '万能查询数据', '万能查询数据', 'WeEngine Team', 'http://we7.cc', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(9, 'fujin', 'other', '附近商服', '1.2', '搜索附近商家，以及服务地点', '通过回复地理位置，检索附近的商户，服务场所以及其他地点信息。', 'topone4tvs', '', 0, 'a:0:{}', 'a:2:{i:0;s:4:"text";i:1;s:8:"location";}', 1, 0),
(10, 'izc_strcoupon', 'customer', '优惠券', '1.3', '各种券', '各种券', '智策&strai', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 0, 0),
(11, 'panorama', 'other', '360全景', '1.9', '360全景', '360全景', '晓锋', 'wx.qfinfo.cn', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 0, 0),
(12, 'qrcode', 'services', '二维码推广', '1.0', '二维码推广', '二维码推广', '珊瑚海 &amp; WeEngine Team', '#', 0, 'a:2:{i:0;s:4:"scan";i:1;s:9:"subscribe";}', 'a:2:{i:0;s:4:"text";i:1;s:9:"subscribe";}', 0, 0),
(13, 'research', 'customer', '预约与调查', '1.51', '可以快速生成调查表单或则预约记录', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(14, 'scratch', 'activity', '刮刮卡', '1.2', '刮刮卡营销抽奖', '刮刮卡是指卡上的一种覆盖数字和字母密码等文字的涂层，因此刮刮卡也叫密码覆膜卡、帐户卡或记账密码卡。客户端可兑奖', '超级无聊', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(16, 'shopping3', 'business', '新微餐饮', '3.2', '微商城(餐饮版)', '微商城 for 餐饮', '超级无聊', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 0, 0),
(17, 'site', 'business', '微文章(CMS)', '2.1', '展示一个手机网页来介绍你的公众号', '', 'WeEngine Team', 'http://www.we7.cc', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(18, 'smashegg', 'activity', '砸金蛋', '1.1', '砸金蛋，抽奖营销活动', '砸金蛋，抽奖营销活动', '超级无聊', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(19, 'stat', 'other', '数据统计', '1.3', '提供消息记录及分析统计功能', '能够提供按公众号码查询, 分析统计消息记录, 以及规则关键字命中情况统计', 'WeEngine Team', 'http://www.we7.cc', 1, 'a:7:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:8:"location";i:3;s:4:"link";i:4;s:9:"subscribe";i:5;s:11:"unsubscribe";i:6;s:5:"click";}', 'a:0:{}', 0, 0),
(20, 'timeaxis', 'other', '时光轴', '1.0', '时光轴展示', '通过类似时光轴的形式，对某些活动流程或重要的事件进行展示', 'topone4tvs', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(21, 'wcha', 'business', '微餐饮查单', '1.0', '结合微餐饮的商家商家查单功能', '结合微餐饮的商家商家查单功能', '超级无聊', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(22, 'yyy', 'activity', '摇一摇现场版', '2.6', '现场大屏互动类活动', '摇一摇，让你在现场迅速引爆人气。', '皓蓝', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(23, 'credit', 'business', '积分兑换', '1.0', '积分兑换', '积分兑换，签到积分，购物积分，酒店积分兑换。通过本模块进行营销活动，可以获得用户的真实姓名、手机号码、邮寄地址等。', '晓楚', 'http://blog.csdn.net/maray', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 0, 0),
(25, 'ppcrmtransfer', 'other', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}', 1, 0),
(26, 'shopping', 'business', '微商城', '2.9.3', '微商城', '微商城', 'WeEngine Team & ewei', '', 1, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 0, 0),
(27, 'vote', 'activity', '微投票', '1.04', '投票系统', '图片、文字，单选，多选', 'WeEngine Team & ewei', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(28, 'we7_photomaker', 'activity', '微擎微拍', '1.7', '微拍', '微拍', '微擎团队', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0),
(29, 'weihaom_wb', 'activity', '踩白块', '1.0', '拆包装,踩虫子,抽老板耳光...无所不能', '拆包装,踩虫子,抽老板耳光...无所不能', '皓蓝 & WeEngine Team', '', 0, 'a:1:{i:0;s:4:"text";}', 'a:1:{i:0;s:4:"text";}', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_bindings`
--

CREATE TABLE IF NOT EXISTS `ims_modules_bindings` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- 转存表中的数据 `ims_modules_bindings`
--

INSERT INTO `ims_modules_bindings` (`eid`, `module`, `entry`, `call`, `title`, `do`, `state`, `direct`) VALUES
(4, 'fans', 'menu', '', '粉丝列表', 'display', '', 0),
(5, 'fans', 'profile', '', '我的资料', 'profile', '', 0),
(6, 'member', 'menu', '', '消费密码管理', 'password', '', 0),
(7, 'member', 'profile', '', '我的会员卡', 'mycard', '', 0),
(8, 'member', 'menu', '', '优惠券管理', 'coupon', '', 0),
(9, 'member', 'menu', '', '商家设置', 'store', '', 0),
(10, 'member', 'menu', '', '会员管理', 'member', '', 0),
(11, 'member', 'menu', '', '会员卡设置', 'card', '', 0),
(12, 'member', 'cover', '', '优惠券入口设置', 'entrycoupon', '', 0),
(13, 'member', 'cover', '', '会员卡入口设置', 'card', '', 0),
(14, 'member', 'profile', '', '我的充值记录', 'mycredit', '', 0),
(15, 'member', 'profile', '', '我的优惠券', 'entrycoupon', '', 0),
(16, 'bigwheel', 'menu', '', '大转盘管理', 'manage', '', 0),
(17, 'bigwheel', 'home', '', '大转盘微站', 'index', '', 0),
(80, 'shopping', 'menu', '', '物流管理', 'express', '', 0),
(79, 'shopping', 'menu', '', '商品分类', 'category', '', 0),
(78, 'shopping', 'menu', '', '商品管理', 'goods', '', 0),
(77, 'shopping', 'menu', '', '订单管理', 'order', '', 0),
(22, 'izc_strcoupon', 'cover', '', '入口设置', 'index', '', 0),
(23, 'izc_strcoupon', 'menu', '', '优惠券管理', 'manage', '', 0),
(24, 'izc_strcoupon', 'menu', '', '领取记录', 'receive', '', 0),
(25, 'izc_strcoupon', 'menu', '', '使用记录', 'record', '', 0),
(26, 'izc_strcoupon', 'profile', '', '我的优惠券', 'myCoupon', '', 0),
(27, 'panorama', 'cover', '', '全景入口设置', 'Index', '', 0),
(28, 'panorama', 'menu', '', '全景管理', 'Panoramaset', '', 0),
(29, 'qrcode', 'menu', '', '生成二维码', 'post', '', 0),
(30, 'qrcode', 'menu', '', '管理二维码', 'list', '', 0),
(31, 'qrcode', 'menu', '', '扫描统计', 'display', '', 0),
(32, 'research', 'menu', '', '预约活动列表', 'display', '', 0),
(33, 'research', 'menu', '', '新建预约活动', 'post', '', 0),
(34, 'research', 'home', 'gethometiles', '', '', '', 0),
(35, 'research', 'profile', '', '我的预约', 'myresearch', '', 0),
(36, 'scratch', 'menu', '', '刮刮卡管理', 'manage', '', 0),
(37, 'scratch', 'home', '', '刮刮卡微站', 'index', '', 0),
(76, 'shopping', 'cover', '', '商城入口设置', 'list', '', 0),
(75, 'multisearch', 'menu', '', '查询数据结构管理', 'struct', '', 0),
(74, 'multisearch', 'menu', 'getMenuTiles', '', '', '', 0),
(73, 'credit', 'profile', '', '我的积分', 'mycredit', '', 0),
(72, 'credit', 'menu', '', '兑换请求管理', 'credit', '', 0),
(45, 'shopping3', 'cover', '', '微餐饮入口设置', 'wlindex', '', 0),
(46, 'shopping3', 'cover', '', '订单查询入口设置', 'wlmember', '', 0),
(47, 'shopping3', 'menu', '', '基本设置', 'shopset', '', 0),
(48, 'shopping3', 'menu', '', '订单管理', 'order', '', 0),
(49, 'shopping3', 'menu', '', '商品分类', 'category', '', 0),
(50, 'shopping3', 'menu', '', '商品管理', 'goods', '', 0),
(51, 'shopping3', 'menu', '', '智能选餐', 'genius', '', 0),
(52, 'shopping3', 'menu', '', '会员管理', 'member', '', 0),
(53, 'shopping3', 'home', '', '微餐饮', 'wlindex', '', 0),
(54, 'shopping3', 'profile', '', '我的订单', 'wlorder', '', 0),
(55, 'site', 'menu', '', '文章管理', 'article', '', 0),
(56, 'site', 'menu', '', '文章分类', 'category', '', 0),
(57, 'site', 'home', 'getCategoryTiles', '', '', '', 0),
(58, 'smashegg', 'menu', '', '砸金蛋管理', 'manage', '', 0),
(59, 'smashegg', 'home', '', '砸金蛋微站', 'index', '', 0),
(60, 'stat', 'menu', '', '聊天记录', 'history', '', 0),
(61, 'stat', 'menu', '', '规则使用率', 'rule', '', 0),
(62, 'stat', 'menu', '', '关键字命中率', 'keyword', '', 0),
(63, 'timeaxis', 'menu', '', '活动管理', 'list', '', 0),
(64, 'timeaxis', 'home', 'getAxisTitles', '', '', '', 0),
(65, 'yyy', 'rule', '', '中奖名单', 'awardlist', '', 0),
(66, 'yyy', 'rule', '', '大屏幕', 'Bigscreen', '', 0),
(71, 'credit', 'menu', '', '兑换商品管理', 'award', '', 0),
(70, 'credit', 'cover', '', '积分兑换设置', 'award', '', 0),
(81, 'shopping', 'menu', '', '配送方式', 'dispatch', '', 0),
(82, 'shopping', 'menu', '', '幻灯片管理', 'adv', '', 0),
(83, 'shopping', 'menu', '', '维权与告警', 'notice', '', 0),
(84, 'shopping', 'home', '', '商城', 'list', '', 0),
(85, 'shopping', 'profile', '', '我的订单', 'myorder', '', 0),
(86, 'vote', 'rule', '', '查看投票记录', 'votelist', '', 0),
(87, 'vote', 'menu', '', '微投票管理', 'manage', '', 0),
(88, 'vote', 'home', 'getItemTiles', '', '', '', 0),
(89, 'we7_photomaker', 'menu', '', '设备管理', 'device', '', 0),
(90, 'we7_photomaker', 'menu', '', '打印管理', 'print', '', 0),
(91, 'bigwheel', 'home', 'getItemTiles', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_multisearch`
--

CREATE TABLE IF NOT EXISTS `ims_multisearch` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_multisearch_fields`
--

CREATE TABLE IF NOT EXISTS `ims_multisearch_fields` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_multisearch_reply`
--

CREATE TABLE IF NOT EXISTS `ims_multisearch_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_multisearch_research`
--

CREATE TABLE IF NOT EXISTS `ims_multisearch_research` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_music_reply`
--

CREATE TABLE IF NOT EXISTS `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '介绍',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '音乐地址',
  `hqurl` varchar(300) NOT NULL DEFAULT '' COMMENT '高清地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_news_reply`
--

CREATE TABLE IF NOT EXISTS `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_panorama_manage`
--

CREATE TABLE IF NOT EXISTS `ims_panorama_manage` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_paylog` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_paylog`
--

INSERT INTO `ims_paylog` (`plid`, `type`, `weid`, `openid`, `tid`, `fee`, `status`, `module`, `tag`) VALUES
(1, 'alipay', 3, 'ooromtyG6i4fDGbilytTjyQreGgs', '1', '15.00', 0, 'shopping3', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_profile_fields`
--

CREATE TABLE IF NOT EXISTS `ims_profile_fields` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `ims_profile_fields`
--

INSERT INTO `ims_profile_fields` (`id`, `field`, `available`, `title`, `description`, `displayorder`, `required`, `unchangeable`, `showinregister`) VALUES
(1, 'realname', 1, '真实姓名', '', 0, 0, 1, 0),
(2, 'nickname', 1, '昵称', '', 1, 0, 0, 0),
(3, 'avatar', 1, '头像', '', 1, 0, 0, 0),
(4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1),
(5, 'mobile', 1, '手机号码', '', 0, 0, 0, 1),
(6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0),
(7, 'gender', 1, '性别', '', 0, 0, 0, 0),
(8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0),
(9, 'constellation', 1, '星座', '', 0, 0, 0, 0),
(10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0),
(11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0),
(12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0),
(13, 'studentid', 1, '学号', '', 0, 0, 0, 0),
(14, 'grade', 1, '班级', '', 0, 0, 0, 0),
(15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0),
(16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0),
(17, 'nationality', 1, '国籍', '', 0, 0, 0, 0),
(18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0),
(19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0),
(20, 'company', 1, '公司', '', 0, 0, 0, 0),
(21, 'education', 1, '学历', '', 0, 0, 0, 0),
(22, 'occupation', 1, '职业', '', 0, 0, 0, 0),
(23, 'position', 1, '职位', '', 0, 0, 0, 0),
(24, 'revenue', 1, '年收入', '', 0, 0, 0, 0),
(25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0),
(26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0),
(27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0),
(28, 'height', 1, '身高', '', 0, 0, 0, 0),
(29, 'weight', 1, '体重', '', 0, 0, 0, 0),
(30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0),
(31, 'msn', 1, 'MSN', '', 0, 0, 0, 0),
(32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0),
(33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0),
(34, 'site', 1, '主页', '', 0, 0, 0, 0),
(35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0),
(36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode_stat`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户的唯一身份ID',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发生在订阅时',
  `qrcid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码场景ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '场景名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_research`
--

CREATE TABLE IF NOT EXISTS `ims_research` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_research_data`
--

CREATE TABLE IF NOT EXISTS `ims_research_data` (
  `redid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `rerid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  PRIMARY KEY (`redid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_research_fields`
--

CREATE TABLE IF NOT EXISTS `ims_research_fields` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(4) NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`refid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_research_reply`
--

CREATE TABLE IF NOT EXISTS `ims_research_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_research_rows`
--

CREATE TABLE IF NOT EXISTS `ims_research_rows` (
  `rerid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rerid`),
  KEY `reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule`
--

CREATE TABLE IF NOT EXISTS `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `name` varchar(50) NOT NULL DEFAULT '',
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '规则排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '规则状态，0禁用，1启用，2置顶',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_rule`
--

INSERT INTO `ims_rule` (`id`, `weid`, `cid`, `name`, `module`, `displayorder`, `status`) VALUES
(14, 3, 0, '订单查询入口设置', 'cover', 0, 1),
(3, 0, 0, '城市天气', 'userapi', 255, 1),
(4, 0, 0, '百度百科', 'userapi', 255, 1),
(5, 0, 0, '即时翻译', 'userapi', 255, 1),
(6, 0, 0, '今日老黄历', 'userapi', 255, 1),
(7, 0, 0, '看新闻', 'userapi', 255, 1),
(8, 0, 0, '快递查询', 'userapi', 255, 1),
(13, 3, 0, '商城入口设置', 'cover', 0, 1),
(10, 3, 0, '大转盘管理', 'cover', 0, 1),
(11, 3, 0, '松松快餐微站', 'cover', 0, 1),
(12, 3, 0, '微餐饮入口设置', 'cover', 0, 1),
(15, 3, 0, '关注', 'basic', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_rule_keyword` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `ims_rule_keyword`
--

INSERT INTO `ims_rule_keyword` (`id`, `rid`, `weid`, `module`, `content`, `type`, `displayorder`, `status`) VALUES
(1, 1, 1, 'basic', '文字', 2, 1, 1),
(2, 2, 1, 'news', '图文', 2, 1, 1),
(3, 3, 0, 'userapi', '^.+天气$', 3, 255, 1),
(4, 4, 0, 'userapi', '^百科.+$', 3, 255, 1),
(5, 4, 0, 'userapi', '^定义.+$', 3, 255, 1),
(6, 5, 0, 'userapi', '^@.+$', 3, 255, 1),
(7, 6, 0, 'userapi', '日历', 1, 255, 1),
(8, 6, 0, 'userapi', '万年历', 1, 255, 1),
(9, 6, 0, 'userapi', '黄历', 1, 255, 1),
(10, 6, 0, 'userapi', '几号', 1, 255, 1),
(11, 7, 0, 'userapi', '新闻', 1, 255, 1),
(12, 8, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1),
(23, 13, 3, 'cover', '商城', 1, 0, 1),
(14, 10, 3, 'cover', '你好', 1, 0, 1),
(21, 11, 3, 'cover', '微站', 1, 0, 1),
(24, 12, 3, 'cover', '订餐', 1, 0, 1),
(25, 14, 3, 'cover', '订单', 1, 0, 1),
(27, 15, 3, 'basic', '关注', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_scratch_fans`
--

CREATE TABLE IF NOT EXISTS `ims_scratch_fans` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_scratch_reply`
--

CREATE TABLE IF NOT EXISTS `ims_scratch_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_sessions`
--

CREATE TABLE IF NOT EXISTS `ims_sessions` (
  `sid` char(32) NOT NULL DEFAULT '' COMMENT 'sessionid唯一标识',
  `weid` int(10) unsigned NOT NULL COMMENT '所属公众号',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一标识',
  `data` varchar(500) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '超时时间',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_sessions`
--

INSERT INTO `ims_sessions` (`sid`, `weid`, `from_user`, `data`, `expiretime`) VALUES
('6ddb591435761288d1dec8955db68a97', 3, 'fromUser', '', 1435228017),
('5b04bba3e36c18eeb128206d32ffee6f', 3, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', '', 1436813195),
('cbbf60d49b7821a189b1f050675d2543', 3, 'ooromtyG6i4fDGbilytTjyQreGgs', '', 1436811306),
('46c687123f0ce18757155232de9f6d0e', 3, 'ooromt6fmq6v-x3_xHz54elh0Y_k', '', 1433926762),
('9145c0fa8a1b5df3ab08bc6a5161b4b5', 3, 'ooromt1yGYb0rtTMb5fK87LcgvB0', '', 1434967494),
('8ff71b114240e32c634a98de1922e8b1', 3, 'ooromt4mY6CTsqBbtO7WERRjZnk0', '', 1435150694),
('0825cba733296927360c5e3d4cf578ad', 6, 'fromUser', '', 1435228007),
('beda1ff9fa23d5d3d91181933818ae0d', 3, 'ooromt1YiaZqcmgjco3zEvmHeQHI', '', 1435511614),
('6bf2ed1eba22a10c6a55a7fcb6881e76', 3, 'ooromt_Qcw5kbCTrFe3wuYVoLnBc', '', 1435599182),
('fa395ea32c2ae99bf5b0e54e089996db', 3, 'ooromt2rKRhHaL_EpezRyphjerq8', '', 1435637488),
('d816a65d1e8be6b35690a4910cb44cd3', 3, 'ooromt3W9YoidcHQRTr4XQn2p2go', '', 1435807174),
('a57175b8b05e88beaa679e42720e680c', 3, 'ooromt5pvXgKVM-3ub6sA9ZQ9UKM', '', 1435934288),
('46ca6cb775b43d3939ff2d8c5845936b', 3, 'ooromt3ynKFAmmZTQLB_T5T3EVIY', '', 1435978245),
('4ca801d0340bad4f248f4e3b3855e11b', 3, 'ooromt90Jb0erZTkAvW3hUjzVeCY', '', 1436152176),
('35f77378d45ebd066f6956dbc9632480', 3, 'ooromtxABlhF90lXGH0Wo-st1tfU', '', 1436202794),
('a74d9a92ca8cd40edd4436415661585b', 3, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', '', 1436182180),
('146a0cc10df74648745821f6fd6f0176', 3, 'ooromt_-9PlHLBIWK_tlSJIx9Zs0', '', 1436239669),
('11883feacdf9f441aac4a030d972f155', 3, 'ooromt_CtXn3-9ZSlZwjZ0v8gxqQ', '', 1436278510),
('df9b9671a74380d856183c2c6200dd5d', 3, 'ooromt5vuNWdYZ-B26bbZRjE87HU', '', 1436379782),
('924b50117d9ccf297ea26616893e07c6', 3, 'ooromt0goFcGyonnqF0cWxl0SsQ4', '', 1436419152),
('31909e1f87f202bc15723470b8b4677c', 3, 'ooromt20UMNaajJJXJPV6FKMVAS4', '', 1436448148),
('db80f24b8727948ae086324e89ac47c7', 3, 'ooromt1YOggQMYaYIILoFPz2-5Jo', '', 1436516844),
('t1tfsua2efqs953gp03mdsdfq2', 0, '', 'phone|s:11:"18655955562";code|s:6:"780262";', 1436595501),
('d42c120d476bd6c1bf32e0425b763ce7', 3, 'ooromtwYzcPU-YMvlP9QyrbDqH28', '', 1436617704),
('n4ul9nlc6d8djc29snk19pqig0', 0, '', '', 1436621446),
('4ebe4581ba60ab7888aef178a93eb9d4', 3, 'ooromt7GpFEPVqtznq32Cik2DNi8', '', 1436694127),
('ae0978a8323d0033dce232e4e2d810df', 3, 'ooromtxOSRWAoRaSeQggz27H2Iis', '', 1436695494),
('635bf63b5626028bbdd5e7243c534309', 3, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', '', 1436708569),
('24135dea72417b8d7c1dc97cc5350128', 3, '13865949448', '', 1436724366),
('93bd16529193b65a2eefc056bc8664a8', 3, '13865949442', '', 1436724380),
('09muq8hd8u285231rdi853t9n1', 0, '', '', 1436722062),
('4j70h46o3e240e07cdq3edp192', 0, '', '', 1436722158),
('tedr2tjrhpfv42pdhlc3kna7g6', 0, '', '', 1436722258),
('hvrp7efgrrc4n6q9iu03vgf1d7', 0, '', '', 1436747967),
('1618a71764419b94e56811870120c949', 3, 'ooromtwnQXMu9xqDuMcsYoq7cVbo', '', 1436756052),
('kbbqrnhm5rcvj1787ebhk6s3q2', 0, '', '', 1436753059),
('a65ath0qk243424b90mo880s15', 0, '', 'phone|s:11:"13895085599";code|s:6:"684358";', 1436753067),
('qbfpdggp00t959dsb5ausi9uo7', 0, '', '', 1436753871),
('a2c175c1fe1713669861b839808ddde9', 3, 'ooromt5zFpQZX776b9qSfBCFBnsQ', '', 1436776996),
('a675b3ed86fdbb302bfcca80881e899a', 3, 'ooromt3zuWjC_11dGVOoH_GpKHNc', '', 1436799747),
('d9rjbkojste5b73k3d5rj0mlg3', 0, '', '', 1436803465),
('tdslvm8eqd4i50qq5q51ojjfi2', 0, '', '', 1436803465),
('njqmf4hgiid118h35b7c2pm1v2', 0, '', '', 1436803475),
('s26mpcqedccl01jndrg969ddd3', 0, '', '', 1436804117),
('6rvn4j8qt862r2mf0ur6h8lk50', 0, '', 'phone|s:11:"13865949448";code|s:6:"157624";', 1436805252),
('g4cqns42l2jajv6n5589dn7gb4', 0, '', '', 1436804826),
('cc1e67a3c4c4ae367595231aba94e010', 3, 'ooromtxJjifjXXFnjp30gccO7Fz8', '', 1436811552),
('4a1458c8d927dfef1e74427c86aa4ea4', 3, 'ooromt3U3q730AoL0K6Yk-6Z-Sis', '', 1436847349),
('b7af238c43ff14701b1f6c5515dd9ee6', 3, 'ooromt5-0O8Al36LkR60cu7xZB1M', '', 1436850598),
('63bce4f2c272e42b7e298cb73f22d7d8', 3, 'ooromtzesdBjtsfRvPwUTs3iAGhk', '', 1436850990),
('f2be59cfcf949ff61deb6c092cbc587e', 3, 'ooromtzCjtDE8kYpVkNqStsMKVp8', '', 1436858839),
('9a701ab8a6b319286c4ad27e0f844901', 3, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', '', 1436860790),
('5791d700a03c7c4a2c25d841a06a65ae', 3, 'ooromtzklwZ-r4qVOaeMNCZBh1Ts', '', 1436861585);

-- --------------------------------------------------------

--
-- 表的结构 `ims_settings`
--

CREATE TABLE IF NOT EXISTS `ims_settings` (
  `key` varchar(200) NOT NULL COMMENT '设置键名',
  `value` text NOT NULL COMMENT '设置内容，大量数据将序列化',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_settings`
--

INSERT INTO `ims_settings` (`key`, `value`) VALUES
('basic', 'a:1:{s:8:"template";s:10:"haochimall";}'),
('site', 'a:2:{s:3:"key";s:5:"35007";s:5:"token";s:32:"ffa539472df101ba22da7633777d3474";}'),
('register', 'a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:0;s:7:"groupid";i:0;}'),
('mail', 'a:5:{s:8:"username";s:19:"service@hfyefan.com";s:8:"password";s:13:"Abc1q2w3easdQ";s:4:"smtp";a:4:{s:4:"type";s:1:"2";s:6:"server";s:21:"mail4.myhostadmin.net";s:4:"port";s:2:"25";s:8:"authmode";s:1:"0";}s:6:"sender";s:19:"service@hfyefan.com";s:9:"signature";s:44:"&lt;p&gt;叶凡网络 400-0551-422&lt;/p&gt;";}'),
('authmode', 'i:1;');

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_address`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_cart`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `price` varchar(10) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ims_shopping3_cart`
--

INSERT INTO `ims_shopping3_cart` (`id`, `weid`, `goodsid`, `goodstype`, `price`, `from_user`, `total`, `create_time`) VALUES
(3, 3, 1, 1, '5', 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 6, 1436809544),
(4, 3, 1, 1, '5', 'ooromtzCjtDE8kYpVkNqStsMKVp8', 3, 1436855222),
(5, 3, 1, 1, '5', 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 2, 1436857204),
(6, 3, 1, 1, '5', 'ooromtzklwZ-r4qVOaeMNCZBh1Ts', 6, 1436857997),
(7, 3, 1, 1, '5', 'ooromtyG6i4fDGbilytTjyQreGgs', 2, 1436862731);

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_category`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_shopping3_category`
--

INSERT INTO `ims_shopping3_category` (`id`, `weid`, `name`, `parentid`, `displayorder`, `enabled`) VALUES
(2, 3, '午餐类', 0, 1, 1),
(3, 3, '晚餐类', 0, 2, 1),
(4, 3, '其他类', 0, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_express`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `express_name` varchar(50) DEFAULT NULL,
  `displayorder` int(11) NOT NULL,
  `express_price` varchar(10) DEFAULT NULL,
  `express_area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_fans`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_fans` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_fans_like`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_fans_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `fansid` int(11) NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `goodsid` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_genius`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_genius` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_goods`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_goods` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_shopping3_goods`
--

INSERT INTO `ims_shopping3_goods` (`id`, `weid`, `pcate`, `ccate`, `type`, `status`, `displayorder`, `isindex`, `title`, `thumb`, `unit`, `description`, `content`, `goodssn`, `productsn`, `marketprice`, `productprice`, `total`, `sellnums`, `thumb_url`, `createtime`, `hits`, `label`) VALUES
(1, 3, 4, 0, 0, 1, 1, 0, '樱桃橙汁', '/resource/attachment/images/3/2015/07/p6APp16S51tPAa69Z50tSHP6H5Hwat.jpg', '杯', '樱桃橙汁', '', '', '', '5', '8', 199, 121, '/resource/attachment/images/3/2015/07/p6APp16S51tPAa69Z50tSHP6H5Hwat.jpg', 1436593092, NULL, '新品');

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_order`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_order` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_shopping3_order`
--

INSERT INTO `ims_shopping3_order` (`id`, `weid`, `from_user`, `ordersn`, `expressprice`, `totalnum`, `totalprice`, `status`, `sendtype`, `sendstatus`, `order_type`, `ispay`, `paytype`, `seat_type`, `guest_name`, `tel`, `sex`, `guest_address`, `time_day`, `time_hour`, `time_second`, `remark`, `secretid`, `print_sta`, `sms_sta`, `createtime`, `desk`, `nums`) VALUES
(2, 3, 'ooromtyG6i4fDGbilytTjyQreGgs', '071400027382', '', 1, '5', 2, 0, 0, 1, 0, 3, 2, '李明', '18655955562', 1, '十里庙商圈金徽阳光', '2015/7/14', '01', '00', '加冰', '9192', 0, '', 1436806912, '牡丹亭', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_order_goods`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `description` varchar(30) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_shopping3_order_goods`
--

INSERT INTO `ims_shopping3_order_goods` (`id`, `weid`, `orderid`, `goodsid`, `total`, `description`, `createtime`) VALUES
(2, 3, 2, 1, 1, '', 1436806912);

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping3_set`
--

CREATE TABLE IF NOT EXISTS `ims_shopping3_set` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_shopping3_set`
--

INSERT INTO `ims_shopping3_set` (`id`, `weid`, `shop_name`, `thumb`, `shop_tel`, `shop_address`, `shop_notice`, `lng`, `lat`, `paytype1`, `paytype2`, `paytype3`, `mail_status`, `mail_smtp`, `mail_user`, `mail_psw`, `mail_to`, `print_status`, `print_type`, `print_usr`, `print_nums`, `print_top`, `print_bottom`, `sms_status`, `sms_type`, `sms_phone`, `sms_from`, `sms_secret`, `sms_text`, `sms_resgister`, `order_limit`, `sms_user`, `address_list`, `desk_list`, `room_list`, `ordretype1`, `ordretype2`, `ordretype3`, `yy_start_time`, `yy_end_time`) VALUES
(1, 3, '松松快餐', '', '181-3002-6323', '合肥市蜀山区长江路与西二环交叉口', '每天为您提供最及时新鲜的快餐，合肥市十里庙商圈快餐预，点击进入松松快餐订餐界面，订餐电话：181-3002-6323', '117.233095', '31.852912', 0, 0, 0, 1, 'mail4.myhostadmin.net', 'service@hfyefan.com', 'Abc1q2w3easdQ', 'service@hfyefan.com', 0, 0, '', 0, '', '', 0, 0, '18130026323', 0, 'hfyefan.com', '', 0, 0, 'admin', '十里庙商圈\r\n黄山路与西二环商圈\r\n怀宁路商圈', '玫瑰厅', '牡丹亭\r\n月季厅\r\n桂花厅', 1, 0, 0, ' 00:0', '23:59');

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_address`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_address` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_adv`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_adv` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_cart`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_cart` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_category`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_category` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_shopping_category`
--

INSERT INTO `ims_shopping_category` (`id`, `weid`, `name`, `parentid`, `displayorder`, `enabled`, `thumb`, `isrecommand`, `description`) VALUES
(1, 3, '美味肉食', 0, 0, 0, '', 0, '美味肉食'),
(2, 3, '蔬果制品', 0, 0, 0, '', 0, '蔬果制品'),
(3, 3, '休闲饮品', 0, 0, 0, '', 0, '休闲饮品'),
(4, 3, '生活超市', 0, 0, 0, '', 0, '生活超市');

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_dispatch`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_dispatch` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_express`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_express` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_feedback`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_feedback` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_goods`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_goods` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_shopping_goods`
--

INSERT INTO `ims_shopping_goods` (`id`, `weid`, `pcate`, `ccate`, `type`, `status`, `displayorder`, `title`, `thumb`, `unit`, `description`, `content`, `goodssn`, `productsn`, `marketprice`, `productprice`, `total`, `sales`, `spec`, `createtime`, `costprice`, `weight`, `totalcnf`, `credit`, `hasoption`, `maxbuy`, `thumb_url`, `dispatch`, `isrecommand`, `isnew`, `ishot`, `istime`, `timestart`, `timeend`, `isdiscount`, `viewcount`, `deleted`) VALUES
(1, 3, 3, 0, 1, 1, 0, '咖啡', 'images/2015/07/Z3TJ9fM9sKFcp7z33BSMTt1kEbKj1T.jpg', '包', '', '<p style="margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">中原G7咖啡系列是出口装中英文版，中英文版是二条专供出口的生产线生产、保证高品质生产原材料、稳定生产工艺流程及符合国际食品卫生标准；其它越文版则含 有T1～T7各条生产线生产的咖啡，是符越南本国食品卫生标准。中原G7咖啡进入国际市场销售的咖啡香浓度及口感上会跟越文版有微小差异，请各位买家熟知 了解。</p><p style="margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">G7咖啡叫中原咖啡，给G7会议（G7会议是美国、英国、法国、德国、日本、意大利、加拿大为研究经济形势、协调政策而举行的首脑会议,开始于1975年）做过一次指定咖啡之后，上面就印了G7的标识，其实那不是它的商标，它的商标叫“中原trung nguyen”。</p><p><br/></p>', 'kf0001', '', '20.00', '30.00', 222, 20, '', 1436806116, '12.00', '20.00', 1, 20, 0, 0, 'N;', 0, 1, 1, 1, 0, 1436806020, 1467654300, 1, 2, 0),
(2, 3, 3, 0, 1, 1, 0, '咖啡伴侣', 'images/2015/07/Za2izAmXLGKUz2i2jaj3Ub863M34K2.jpg', '', '', '<p>咖啡伴侣</p>', 'kf0002', '', '10.00', '20.00', 223, 17, '', 1436806368, '6.00', '10.00', 1, 10, 0, 0, 'N;', 0, 1, 1, 1, 1, 1436806260, 1459981800, 1, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_goods_option`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_goods_option` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_goods_param`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_order`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_order` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_order_goods`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_order_goods` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_product`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_product` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_spec`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_shopping_spec_item`
--

CREATE TABLE IF NOT EXISTS `ims_shopping_spec_item` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_nav`
--

CREATE TABLE IF NOT EXISTS `ims_site_nav` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ims_site_nav`
--

INSERT INTO `ims_site_nav` (`id`, `weid`, `module`, `displayorder`, `name`, `description`, `position`, `url`, `icon`, `css`, `status`) VALUES
(7, 3, '', 2, '晚餐', '晚餐', 1, '', '', 'a:2:{s:4:"icon";a:4:{s:9:"font-size";s:2:"35";s:5:"color";s:0:"";s:5:"width";s:2:"35";s:4:"icon";s:0:"";}s:4:"name";a:1:{s:5:"color";N;}}', 1),
(6, 3, '', 1, '午餐', '午餐', 1, '', '', 'a:2:{s:4:"icon";a:4:{s:9:"font-size";s:2:"35";s:5:"color";s:0:"";s:5:"width";s:2:"35";s:4:"icon";s:0:"";}s:4:"name";a:1:{s:5:"color";N;}}', 1),
(8, 3, '', 3, '其他', '其他', 1, '', '', 'a:2:{s:4:"icon";a:4:{s:9:"font-size";s:2:"35";s:5:"color";s:0:"";s:5:"width";s:2:"35";s:4:"icon";s:0:"";}s:4:"name";a:1:{s:5:"color";N;}}', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_slide`
--

CREATE TABLE IF NOT EXISTS `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0',
  `templateid` int(10) unsigned NOT NULL COMMENT '风格ID',
  `variable` varchar(50) NOT NULL COMMENT '模板预设变量',
  `content` text NOT NULL COMMENT '变量值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `ims_site_styles`
--

INSERT INTO `ims_site_styles` (`id`, `weid`, `templateid`, `variable`, `content`) VALUES
(1, 1, 1, 'indexbgcolor', '#e06666'),
(2, 1, 1, 'fontfamily', 'Tahoma,Helvetica,''SimSun'',sans-serif'),
(3, 1, 1, 'fontsize', '12px/1.5'),
(4, 1, 1, 'fontcolor', '#434343'),
(5, 1, 1, 'fontnavcolor', '#ffffff'),
(6, 1, 1, 'linkcolor', '#ffffff'),
(7, 1, 1, 'indexbgimg', 'bg_index.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_templates`
--

CREATE TABLE IF NOT EXISTS `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(30) NOT NULL COMMENT '名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '描述',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '发布页面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `ims_site_templates`
--

INSERT INTO `ims_site_templates` (`id`, `name`, `title`, `description`, `author`, `url`) VALUES
(1, 'default', '微站默认模板', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc'),
(2, 'dstyle01', '炫动win8', '炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(3, 'dstyle02', '炫动win8系列02', '炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(4, 'dstyle04', '圆角卡片', '圆圆的小角，圆圆的卡片，刷新看事例，请自行上传30*30px大小的png格式分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(5, 'dstyle05', '炫动win8系列04', '炫动win8系列04，请自行上传png格式分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(6, 'dstyle03', '炫动win8', '炫动win8淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(7, 'dstyle06', '冒泡的对话框', '冒泡的对话框，请自行上传png格式分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(8, 'dstyle07', '炫动win8系列05', '炫动win8系列05淡淡的小调调，刷新看事例，请自行上传30*30px大小的png格式透明分类图片', 'Hooyo', 'http://bbs.we7.cc/?396'),
(9, 'rain1', 'rain系列模板', '由江苏小雨提供微站模板套系', '江苏小雨', 'http://jsxxhelper.com'),
(10, 'rain4', 'rain系列模板', '由江苏小雨提供微站模板套系', '江苏小雨', 'http://jsxxhelper.com'),
(11, 'rain5', 'rain系列模板', '由江苏小雨提供微站模板套系', '江苏小雨', 'http://jsxxhelper.com'),
(12, 'rain6', 'rain系列模板', '由江苏小雨提供微站模板套系', '江苏小雨', 'http://jsxxhelper.com'),
(13, 'rain8', 'rain系列模板', '由江苏小雨提供微站模板套系', '江苏小雨', 'http://jsxxhelper.com'),
(14, 'style1', '微站默认模板1', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(15, 'style10', '微站默认模板10', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(16, 'style11', '微站默认模板11', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(17, 'style12', '微站默认模板12', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(18, 'style13', '微站默认模板13', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(19, 'style14', '微站默认模板14', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(20, 'style15', '微站默认模板15', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(21, 'style16', '微站默认模板16', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(22, 'style17', '微站默认模板17', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(23, 'style2', '微站默认模板2', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(24, 'style23', '模板23', '别具一格系列', '别具一格', ''),
(25, 'style24', '微站默认模板24', '由微漾提供默认微站模板套系', 'WeiYang Team', 'http://wx.mosen.cc'),
(26, 'style25', '模板25', '', '', ''),
(27, 'style3', '微站默认模板3', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(28, 'style35', '模板35', '', 'bjue', ''),
(29, 'style4', '微站默认模板4', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(30, 'style5', '微站默认模板5', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(31, 'style55', 'bjue', '', 'bjue', ''),
(32, 'style6', '微站默认模板6', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(33, 'style7', '微站默认模板7', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(34, 'style8', '微站默认模板8', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(35, 'style88', '模板88', '8', '', ''),
(36, 'style9', '微站默认模板9', '由微擎提供默认微站模板套系', 'WeEngine Team', 'http://bbs.we7.cc'),
(37, 'stylex1', '微站默认模板x1', '由Easydo提供默认微站模板套系', 'Easydo', 'http://mp.lywnds.com'),
(38, 'stylex2', '微站默认模板x2', '由Easydo提供默认微站模板套系', 'Easydo', 'http://mp.lywnds.com'),
(39, 'stylex3', '微站默认模板x3', '由Easydo提供默认微站模板套系', 'Easydo', 'http://mp.lywnds.com'),
(40, 'taorui1', '韬睿网络微站模板1', '由韬睿网络微站模板套系', 'taorui Team', 'http://www.taoruinet.com'),
(41, 'taoruis1', '韬睿网络微站模板s1', '由韬睿网络微站模板套系', 'taorui Team', 'http://www.taoruinet.com'),
(42, 'taoruis2', '韬睿网络微站模板s2', '由韬睿网络微站模板套系', 'taorui Team', 'http://www.taoruinet.com'),
(43, 'taoruis3', '韬睿网络微站模板s3', '由韬睿网络微站模板套系', 'taorui Team', 'http://www.taoruinet.com');

-- --------------------------------------------------------

--
-- 表的结构 `ims_smashegg_fans`
--

CREATE TABLE IF NOT EXISTS `ims_smashegg_fans` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_smashegg_reply`
--

CREATE TABLE IF NOT EXISTS `ims_smashegg_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `kid` int(10) unsigned NOT NULL COMMENT '关键字ID',
  `hit` int(10) unsigned NOT NULL COMMENT '命中次数',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后触发时间',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `ims_stat_keyword`
--

INSERT INTO `ims_stat_keyword` (`id`, `weid`, `rid`, `kid`, `hit`, `lastupdate`, `createtime`) VALUES
(9, 0, 7, 11, 1, 1436802535, 1436716800),
(2, 3, 10, 14, 3, 1436546291, 1436544000),
(3, 3, 11, 15, 1, 1436545958, 1436544000),
(4, 3, 12, 16, 1, 1436579962, 1436544000),
(5, 3, 12, 17, 1, 1436580075, 1436544000),
(6, 3, 11, 15, 1, 1436704931, 1436630400),
(7, 3, 12, 17, 3, 1436802849, 1436716800),
(8, 3, 10, 14, 1, 1436802473, 1436716800),
(10, 3, 11, 15, 1, 1436802780, 1436716800),
(11, 3, 11, 20, 1, 1436803271, 1436803200),
(12, 3, 11, 21, 4, 1436857155, 1436803200),
(13, 3, 12, 22, 1, 1436803697, 1436803200),
(14, 3, 13, 23, 4, 1436855239, 1436803200),
(15, 3, 14, 25, 4, 1436857190, 1436803200),
(16, 3, 10, 14, 1, 1436807596, 1436803200),
(17, 3, 12, 24, 9, 1436857985, 1436803200);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_msg_history`
--

CREATE TABLE IF NOT EXISTS `ims_stat_msg_history` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `ims_stat_msg_history`
--

INSERT INTO `ims_stat_msg_history` (`id`, `weid`, `rid`, `kid`, `from_user`, `module`, `message`, `type`, `createtime`) VALUES
(1, 3, 0, 0, 'ooromt3ynKFAmmZTQLB_T5T3EVIY', 'welcome', '', 'event', 1435974517),
(2, 3, 0, 0, 'ooromt3ynKFAmmZTQLB_T5T3EVIY', 'default', '你好请问是提供点餐后台服务吗', 'text', 1435974644),
(3, 3, 9, 13, 'ooromtyG6i4fDGbilytTjyQreGgs', 'basic', '你好', 'text', 1436034107),
(4, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '', 'event', 1436034121),
(5, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'welcome', '', 'event', 1436034148),
(6, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '订餐', 'text', 1436034173),
(7, 3, 9, 13, 'ooromtyG6i4fDGbilytTjyQreGgs', 'basic', '你好', 'text', 1436034180),
(8, 3, 0, 0, 'ooromt90Jb0erZTkAvW3hUjzVeCY', 'welcome', '', 'event', 1436148574),
(9, 3, 0, 0, 'ooromtxABlhF90lXGH0Wo-st1tfU', 'welcome', '', 'event', 1436160716),
(10, 3, 0, 0, 'ooromtxABlhF90lXGH0Wo-st1tfU', 'default', '订餐', 'text', 1436160724),
(11, 3, 0, 0, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', 'welcome', '', 'event', 1436177375),
(12, 3, 0, 0, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', 'default', '点餐', 'text', 1436177396),
(13, 3, 0, 0, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', 'default', '外卖', 'text', 1436177402),
(14, 3, 0, 0, 'ooromtzoGcv_zjuTmqZo_OS0J9Vw', 'default', '', 'event', 1436178579),
(15, 3, 0, 0, 'ooromtxABlhF90lXGH0Wo-st1tfU', 'default', '', 'event', 1436199192),
(16, 3, 0, 0, 'ooromt_-9PlHLBIWK_tlSJIx9Zs0', 'welcome', '', 'event', 1436236062),
(17, 3, 0, 0, 'ooromt_-9PlHLBIWK_tlSJIx9Zs0', 'default', '/:,@P', 'text', 1436236068),
(18, 3, 0, 0, 'ooromt_CtXn3-9ZSlZwjZ0v8gxqQ', 'welcome', '', 'event', 1436274900),
(19, 3, 0, 0, 'ooromt_CtXn3-9ZSlZwjZ0v8gxqQ', 'default', '订餐', 'text', 1436274909),
(20, 3, 0, 0, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'welcome', '', 'event', 1436373807),
(21, 3, 0, 0, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'default', '餐', 'text', 1436373821),
(22, 3, 0, 0, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'default', '微点餐', 'text', 1436376172),
(23, 3, 0, 0, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'default', '微订餐', 'text', 1436376178),
(24, 3, 0, 0, 'ooromt5vuNWdYZ-B26bbZRjE87HU', 'default', '订餐', 'text', 1436376181),
(25, 3, 0, 0, 'ooromt0goFcGyonnqF0cWxl0SsQ4', 'welcome', '', 'event', 1436415217),
(26, 3, 0, 0, 'ooromt0goFcGyonnqF0cWxl0SsQ4', 'default', '订餐', 'text', 1436415552),
(27, 3, 0, 0, 'ooromt20UMNaajJJXJPV6FKMVAS4', 'welcome', '', 'event', 1436444509),
(28, 3, 0, 0, 'ooromt20UMNaajJJXJPV6FKMVAS4', 'default', '', 'event', 1436444547),
(29, 3, 0, 0, 'ooromt1YOggQMYaYIILoFPz2-5Jo', 'welcome', '', 'event', 1436513230),
(30, 3, 0, 0, 'ooromt1YOggQMYaYIILoFPz2-5Jo', 'default', '', 'event', 1436513243),
(31, 3, 10, 14, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '你好', 'text', 1436545164),
(32, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '订餐', 'text', 1436545538),
(33, 3, 10, 14, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '你好', 'text', 1436545547),
(34, 3, 11, 15, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '首页', 'text', 1436545958),
(35, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '订餐', 'text', 1436546284),
(36, 3, 10, 14, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '你好', 'text', 1436546290),
(37, 3, 12, 16, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436579962),
(38, 3, 12, 17, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436580075),
(39, 3, 0, 0, 'ooromtwYzcPU-YMvlP9QyrbDqH28', 'welcome', '', 'event', 1436596683),
(40, 3, 0, 0, 'ooromtwYzcPU-YMvlP9QyrbDqH28', 'default', ' ''''', 'text', 1436596693),
(41, 3, 0, 0, 'ooromtwYzcPU-YMvlP9QyrbDqH28', 'default', ' 快餐', 'text', 1436596711),
(42, 3, 0, 0, 'ooromtwYzcPU-YMvlP9QyrbDqH28', 'default', '', 'event', 1436614103),
(43, 3, 0, 0, 'ooromt7GpFEPVqtznq32Cik2DNi8', 'welcome', '', 'event', 1436690504),
(44, 3, 0, 0, 'ooromt7GpFEPVqtznq32Cik2DNi8', 'default', '哥', 'text', 1436690526),
(45, 3, 0, 0, 'ooromtxOSRWAoRaSeQggz27H2Iis', 'welcome', '', 'event', 1436691884),
(46, 3, 0, 0, 'ooromtxOSRWAoRaSeQggz27H2Iis', 'default', '', 'event', 1436691893),
(47, 3, 0, 0, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', 'welcome', '', 'event', 1436704923),
(48, 3, 11, 15, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', 'cover', '首页', 'text', 1436704931),
(49, 3, 0, 0, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', 'default', '点餐', 'text', 1436704960),
(50, 3, 0, 0, 'ooromt6GMzahn9Ws8IIE18DFg8Lg', 'default', '点餐', 'text', 1436704960),
(51, 3, 0, 0, '13865949448', 'default', '测试内容', 'text', 1436721073),
(52, 3, 0, 0, '13865949448', 'default', '测试内容', 'text', 1436721078),
(53, 3, 0, 0, '13865949448', 'default', '测试内容', 'text', 1436721079),
(54, 3, 0, 0, '13865949442', 'default', '测试内容', 'text', 1436721084),
(55, 3, 0, 0, '13865949442', 'default', '测试内容11111111111', 'text', 1436721093),
(56, 3, 0, 0, 'ooromtwnQXMu9xqDuMcsYoq7cVbo', 'welcome', '', 'event', 1436752418),
(57, 3, 0, 0, 'ooromtwnQXMu9xqDuMcsYoq7cVbo', 'default', '/::D', 'text', 1436752442),
(58, 3, 12, 17, 'ooromtwnQXMu9xqDuMcsYoq7cVbo', 'cover', '订餐', 'text', 1436752451),
(59, 3, 0, 0, 'ooromt5zFpQZX776b9qSfBCFBnsQ', 'welcome', '', 'event', 1436773303),
(60, 3, 0, 0, 'ooromt5zFpQZX776b9qSfBCFBnsQ', 'default', '', 'voice', 1436773395),
(61, 3, 0, 0, 'ooromt3zuWjC_11dGVOoH_GpKHNc', 'welcome', '', 'event', 1436796146),
(62, 3, 10, 14, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '你好', 'text', 1436802473),
(63, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '新闻', 'text', 1436802516),
(64, 0, 7, 11, 'ooromtyG6i4fDGbilytTjyQreGgs', 'userapi', '新闻', 'text', 1436802535),
(65, 3, 12, 17, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436802617),
(66, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '？首页', 'text', 1436802776),
(67, 3, 11, 15, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '首页', 'text', 1436802780),
(68, 3, 12, 17, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436802848),
(69, 3, 11, 20, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '微站', 'text', 1436803271),
(70, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '首页', 'text', 1436803345),
(71, 3, 11, 21, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '微站', 'text', 1436803351),
(72, 3, 12, 22, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436803697),
(73, 3, 13, 23, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '商城', 'text', 1436805438),
(74, 3, 14, 25, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订单', 'text', 1436807097),
(75, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '', 'event', 1436807576),
(76, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'welcome', '', 'event', 1436807588),
(77, 3, 10, 14, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '你好', 'text', 1436807596),
(78, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '过道', 'text', 1436807612),
(79, 3, 0, 0, 'ooromtyG6i4fDGbilytTjyQreGgs', 'default', '我日', 'text', 1436807673),
(80, 3, 12, 24, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订餐', 'text', 1436807680),
(81, 3, 13, 23, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '商城', 'text', 1436807689),
(82, 3, 11, 21, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '微站', 'text', 1436807701),
(83, 3, 14, 25, 'ooromtyG6i4fDGbilytTjyQreGgs', 'cover', '订单', 'text', 1436807706),
(84, 3, 0, 0, 'ooromtxJjifjXXFnjp30gccO7Fz8', 'welcome', '', 'event', 1436807942),
(85, 3, 12, 24, 'ooromtxJjifjXXFnjp30gccO7Fz8', 'cover', '订餐', 'text', 1436807952),
(86, 3, 0, 0, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'default', '', 'event', 1436809491),
(87, 3, 0, 0, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'welcome', '', 'event', 1436809508),
(88, 3, 12, 24, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'cover', '订餐', 'text', 1436809517),
(89, 3, 13, 23, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'cover', '商城', 'text', 1436809567),
(90, 3, 11, 21, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'cover', '微站', 'text', 1436809585),
(91, 3, 14, 25, 'ooromtxdyGGy5XuJGIZ-StUQNZ5A', 'cover', '订单', 'text', 1436809594),
(92, 3, 0, 0, 'ooromt3U3q730AoL0K6Yk-6Z-Sis', 'welcome', '', 'event', 1436843740),
(93, 3, 12, 24, 'ooromt3U3q730AoL0K6Yk-6Z-Sis', 'cover', '订餐', 'text', 1436843748),
(94, 3, 0, 0, 'ooromt5-0O8Al36LkR60cu7xZB1M', 'welcome', '', 'event', 1436846957),
(95, 3, 12, 24, 'ooromt5-0O8Al36LkR60cu7xZB1M', 'cover', '订餐', 'text', 1436846997),
(96, 3, 0, 0, 'ooromtzesdBjtsfRvPwUTs3iAGhk', 'welcome', '', 'event', 1436847379),
(97, 3, 12, 24, 'ooromtzesdBjtsfRvPwUTs3iAGhk', 'cover', '订餐', 'text', 1436847389),
(98, 3, 0, 0, 'ooromtzCjtDE8kYpVkNqStsMKVp8', 'welcome', '', 'event', 1436855199),
(99, 3, 12, 24, 'ooromtzCjtDE8kYpVkNqStsMKVp8', 'cover', '订餐', 'text', 1436855205),
(100, 3, 13, 23, 'ooromtzCjtDE8kYpVkNqStsMKVp8', 'cover', '商城', 'text', 1436855238),
(101, 3, 0, 0, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 'welcome', '', 'event', 1436857102),
(102, 3, 12, 24, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 'cover', '订餐', 'text', 1436857111),
(103, 3, 11, 21, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 'cover', '微站', 'text', 1436857154),
(104, 3, 14, 25, 'ooromt9vGKjcGFxFzjLEVMNP7pr8', 'cover', '订单', 'text', 1436857189),
(105, 3, 0, 0, 'ooromtzklwZ-r4qVOaeMNCZBh1Ts', 'welcome', '', 'event', 1436857974),
(106, 3, 12, 24, 'ooromtzklwZ-r4qVOaeMNCZBh1Ts', 'cover', '订餐', 'text', 1436857984);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_rule`
--

CREATE TABLE IF NOT EXISTS `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL COMMENT '所属帐号ID',
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `hit` int(10) unsigned NOT NULL COMMENT '命中次数',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后触发时间',
  `createtime` int(10) unsigned NOT NULL COMMENT '记录新建的日期',
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- 转存表中的数据 `ims_stat_rule`
--

INSERT INTO `ims_stat_rule` (`id`, `weid`, `rid`, `hit`, `lastupdate`, `createtime`) VALUES
(1, 3, 0, 1, 1435974517, 1435939200),
(2, 3, 0, 1, 1435974644, 1435939200),
(59, 3, 0, 1, 1436802516, 1436716800),
(4, 3, 0, 1, 1436034121, 1436025600),
(5, 3, 0, 1, 1436034148, 1436025600),
(6, 3, 0, 1, 1436034173, 1436025600),
(7, 3, 0, 1, 1436148574, 1436112000),
(8, 3, 0, 1, 1436160716, 1436112000),
(9, 3, 0, 1, 1436160724, 1436112000),
(10, 3, 0, 1, 1436177375, 1436112000),
(11, 3, 0, 1, 1436177396, 1436112000),
(12, 3, 0, 1, 1436177402, 1436112000),
(13, 3, 0, 1, 1436178579, 1436112000),
(14, 3, 0, 1, 1436199192, 1436198400),
(15, 3, 0, 1, 1436236062, 1436198400),
(16, 3, 0, 1, 1436236068, 1436198400),
(17, 3, 0, 1, 1436274900, 1436198400),
(18, 3, 0, 1, 1436274909, 1436198400),
(19, 3, 0, 1, 1436373807, 1436371200),
(20, 3, 0, 1, 1436373821, 1436371200),
(21, 3, 0, 1, 1436376172, 1436371200),
(22, 3, 0, 1, 1436376178, 1436371200),
(23, 3, 0, 1, 1436376181, 1436371200),
(24, 3, 0, 1, 1436415217, 1436371200),
(25, 3, 0, 1, 1436415552, 1436371200),
(26, 3, 0, 1, 1436444509, 1436371200),
(27, 3, 0, 1, 1436444547, 1436371200),
(28, 3, 0, 1, 1436513230, 1436457600),
(29, 3, 0, 1, 1436513243, 1436457600),
(30, 3, 10, 3, 1436546291, 1436544000),
(31, 3, 0, 1, 1436545538, 1436544000),
(32, 3, 11, 1, 1436545958, 1436544000),
(33, 3, 0, 1, 1436546284, 1436544000),
(34, 3, 12, 2, 1436580076, 1436544000),
(35, 3, 0, 1, 1436596683, 1436544000),
(36, 3, 0, 1, 1436596693, 1436544000),
(37, 3, 0, 1, 1436596711, 1436544000),
(38, 3, 0, 1, 1436614103, 1436544000),
(39, 3, 0, 1, 1436690504, 1436630400),
(40, 3, 0, 1, 1436690526, 1436630400),
(41, 3, 0, 1, 1436691884, 1436630400),
(42, 3, 0, 1, 1436691893, 1436630400),
(43, 3, 0, 1, 1436704923, 1436630400),
(44, 3, 11, 1, 1436704931, 1436630400),
(45, 3, 0, 1, 1436704960, 1436630400),
(46, 3, 0, 1, 1436704960, 1436630400),
(47, 3, 0, 1, 1436721073, 1436716800),
(48, 3, 0, 1, 1436721078, 1436716800),
(49, 3, 0, 1, 1436721079, 1436716800),
(50, 3, 0, 1, 1436721084, 1436716800),
(51, 3, 0, 1, 1436721093, 1436716800),
(52, 3, 0, 1, 1436752418, 1436716800),
(53, 3, 0, 1, 1436752442, 1436716800),
(54, 3, 12, 3, 1436802849, 1436716800),
(55, 3, 0, 1, 1436773303, 1436716800),
(56, 3, 0, 1, 1436773395, 1436716800),
(57, 3, 0, 1, 1436796146, 1436716800),
(58, 3, 10, 1, 1436802473, 1436716800),
(60, 0, 7, 1, 1436802535, 1436716800),
(61, 3, 0, 1, 1436802776, 1436716800),
(62, 3, 11, 1, 1436802780, 1436716800),
(63, 3, 11, 5, 1436857155, 1436803200),
(64, 3, 0, 1, 1436803345, 1436803200),
(65, 3, 12, 10, 1436857985, 1436803200),
(66, 3, 13, 4, 1436855239, 1436803200),
(67, 3, 14, 4, 1436857190, 1436803200),
(68, 3, 0, 1, 1436807576, 1436803200),
(69, 3, 0, 1, 1436807588, 1436803200),
(70, 3, 10, 1, 1436807596, 1436803200),
(71, 3, 0, 1, 1436807612, 1436803200),
(72, 3, 0, 1, 1436807673, 1436803200),
(73, 3, 0, 1, 1436807942, 1436803200),
(74, 3, 0, 1, 1436809491, 1436803200),
(75, 3, 0, 1, 1436809508, 1436803200),
(76, 3, 0, 1, 1436843740, 1436803200),
(77, 3, 0, 1, 1436846957, 1436803200),
(78, 3, 0, 1, 1436847379, 1436803200),
(79, 3, 0, 1, 1436855199, 1436803200),
(80, 3, 0, 1, 1436857102, 1436803200),
(81, 3, 0, 1, 1436857974, 1436803200);

-- --------------------------------------------------------

--
-- 表的结构 `ims_strcoupon`
--

CREATE TABLE IF NOT EXISTS `ims_strcoupon` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_strcoupon_fans`
--

CREATE TABLE IF NOT EXISTS `ims_strcoupon_fans` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_strcoupon_fans_log`
--

CREATE TABLE IF NOT EXISTS `ims_strcoupon_fans_log` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_strcoupon_shop`
--

CREATE TABLE IF NOT EXISTS `ims_strcoupon_shop` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_timeaxis`
--

CREATE TABLE IF NOT EXISTS `ims_timeaxis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '活动名称',
  `time` int(11) unsigned NOT NULL,
  `bgimg` varchar(255) NOT NULL COMMENT '背景图片或颜色',
  `bgcol` varchar(30) NOT NULL COMMENT '内容背景色',
  `items` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`,`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_timeaxis_rep`
--

CREATE TABLE IF NOT EXISTS `ims_timeaxis_rep` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `weid` int(10) unsigned NOT NULL,
  `reptitle` varchar(100) NOT NULL DEFAULT '',
  `repinfo` varchar(255) DEFAULT '',
  `repimg` varchar(255) DEFAULT NULL,
  `axisid` int(10) unsigned NOT NULL COMMENT '时光轴活动id',
  PRIMARY KEY (`id`,`rid`,`weid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_cache`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL COMMENT 'apiurl缓存标识',
  `content` text NOT NULL COMMENT '回复内容',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_reply`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `description` varchar(300) NOT NULL DEFAULT '',
  `apiurl` varchar(300) NOT NULL DEFAULT '' COMMENT '接口地址',
  `token` varchar(32) NOT NULL DEFAULT '',
  `default_text` varchar(100) NOT NULL DEFAULT '' COMMENT '默认回复文字',
  `cachetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '返回数据的缓存时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_userapi_reply`
--

INSERT INTO `ims_userapi_reply` (`id`, `rid`, `description`, `apiurl`, `token`, `default_text`, `cachetime`) VALUES
(1, 3, '"城市名+天气", 如: "北京天气"', 'weather.php', '', '', 0),
(2, 4, '"百科+查询内容" 或 "定义+查询内容", 如: "百科姚明", "定义自行车"', 'baike.php', '', '', 0),
(3, 5, '"@查询内容(中文或英文)"', 'translate.php', '', '', 0),
(4, 6, '"日历", "万年历", "黄历"或"几号"', 'calendar.php', '', '', 0),
(5, 7, '"新闻"', 'news.php', '', '', 0),
(6, 8, '"快递+单号", 如: "申通1200041125"', 'express.php', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_vote_fans`
--

CREATE TABLE IF NOT EXISTS `ims_vote_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) DEFAULT '',
  `rid` int(11) DEFAULT '0',
  `votes` varchar(255) DEFAULT '',
  `votetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_votetime` (`votetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_vote_option`
--

CREATE TABLE IF NOT EXISTS `ims_vote_option` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `content` text,
  `vote_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_vote_reply`
--

CREATE TABLE IF NOT EXISTS `ims_vote_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wcha_reply`
--

CREATE TABLE IF NOT EXISTS `ims_wcha_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wtype` tinyint(4) NOT NULL COMMENT '0是查单 1是统计',
  `openidstr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_we7_photomaker`
--

CREATE TABLE IF NOT EXISTS `ims_we7_photomaker` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_we7_photomaker_log`
--

CREATE TABLE IF NOT EXISTS `ims_we7_photomaker_log` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechats`
--

CREATE TABLE IF NOT EXISTS `ims_wechats` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `ims_wechats`
--

INSERT INTO `ims_wechats` (`weid`, `hash`, `type`, `uid`, `token`, `EncodingAESKey`, `access_token`, `level`, `name`, `account`, `original`, `signature`, `country`, `province`, `city`, `username`, `password`, `welcome`, `default`, `default_message`, `default_period`, `lastupdate`, `key`, `secret`, `styleid`, `payment`, `shortcuts`, `quickmenu`, `parentid`, `subwechats`, `siteinfo`, `menuset`, `jsapi_ticket`) VALUES
(3, 'W185A', 1, 2, 'E2K17w2ZX9r9z9BJJw92R0jX1qRm1XH1', 'Xsd76aP7cDsIfFqDzQ22DpCP2793d67ZGWoFf7A2F9G', 'a:2:{s:5:"token";s:107:"I9jhmHRUIhG443lbWu3iGaUR1WIbs8IwtAA8z_G5_cJsC-1L3Oqp1FkRURHBDgEh2AOYpbS0hDu1THoMTzayX19FOkX8G4v0Vv4GjBGpzUs";s:6:"expire";i:1436869910;}', 0, '松松快餐', 'songkccn', 'gh_aef724084cc8', '', '', '', '', '', '', 'a:2:{s:6:"module";s:5:"basic";s:2:"id";i:15;}', 'a:2:{s:6:"module";s:5:"basic";s:2:"id";i:15;}', '', 0, 0, 'wx2a0be5a81a46b76e', 'c978be80d23753f2745fbd843d7f5009', 20, 'a:5:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:15:"web@hfyefan.com";s:7:"partner";s:16:"2088011073027928";s:6:"secret";s:32:"zudh8v769rwblhhy4d0yeujcojlo0y6i";}s:6:"wechat";a:8:{s:6:"switch";b:0;s:5:"appid";s:18:"wx2a0be5a81a46b76e";s:6:"secret";s:32:"c978be80d23753f2745fbd843d7f5009";s:7:"signkey";s:32:"o5Tj7GGzdg5K8K1ckDeWz4KTWt8Y75GG";s:7:"partner";s:0:"";s:3:"key";s:0:"";s:7:"version";s:1:"2";s:5:"mchid";s:0:"";}s:7:"offline";a:2:{s:6:"switch";b:0;s:7:"account";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:1;}}', 'a:2:{s:9:"shopping3";a:2:{s:3:"mid";s:2:"16";s:4:"link";s:25:"rule.php?act=cover&eid=45";}s:4:"fans";a:2:{s:3:"mid";s:1:"5";s:4:"link";s:24:"rule.php?act=cover&eid=4";}}', '', 0, '', 'a:4:{s:8:"sitename";s:13:"-网站首页";s:8:"keywords";s:24:"合肥市十里庙商圈";s:11:"description";s:28:"订餐电话：181-3002-6323";s:6:"footer";s:26:"松松快餐 181-3002-6323";}', '', 'a:2:{s:6:"ticket";s:86:"sM4AOVdWfPE4DxkXGEs8VLpGTbML4T4kh91w2qCzsuM-tYKkk8oKhTa0bagMZPdYHmwcMv70s60MGkYEauxVXw";s:6:"expire";i:1436869910;}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechats_modules`
--

CREATE TABLE IF NOT EXISTS `ims_wechats_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_wechats_modules`
--

INSERT INTO `ims_wechats_modules` (`id`, `weid`, `mid`, `enabled`, `settings`) VALUES
(1, 3, 4, 1, 'a:1:{i:0;b:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_weihaom_wb_reply`
--

CREATE TABLE IF NOT EXISTS `ims_weihaom_wb_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weihaom_wb_user`
--

CREATE TABLE IF NOT EXISTS `ims_weihaom_wb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_yyy_reply`
--

CREATE TABLE IF NOT EXISTS `ims_yyy_reply` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_yyy_winner`
--

CREATE TABLE IF NOT EXISTS `ims_yyy_winner` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
