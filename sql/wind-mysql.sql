/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26-log : Database - wind
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wind` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `wind`;

/*Table structure for table `email_send_log` */

DROP TABLE IF EXISTS `email_send_log`;

CREATE TABLE `email_send_log` (
  `id` varchar(32) NOT NULL,
  `email` longtext NOT NULL COMMENT '联系电话',
  `subject` varchar(255) DEFAULT NULL COMMENT '主题',
  `content` text COMMENT '模板类型',
  `send_data` varchar(255) DEFAULT NULL,
  `send_code` varchar(255) NOT NULL COMMENT '发送编码',
  `response_date` datetime DEFAULT NULL COMMENT '响应时间',
  `try_num` int(2) DEFAULT NULL COMMENT '重发次数',
  `msg` varchar(250) DEFAULT NULL COMMENT '返回消息',
  `status` varchar(4) DEFAULT NULL COMMENT '发送状态',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `tenant_id` varchar(64) DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `email_send_log` */

insert  into `email_send_log`(`id`,`email`,`subject`,`content`,`send_data`,`send_code`,`response_date`,`try_num`,`msg`,`status`,`del_flag`,`remarks`,`tenant_id`) values ('05df11ef6fd8467d865d8bc350ca0967','502079461@qq.com','测试模板','<p>测试模板123456</p>','{\"code\":\"123456\"}','2p6dl894ur','2018-11-09 11:44:00',3,'发送失败','-1','0',NULL,'00000000'),('1bd18fc2fb4309841e230c0a99bbda8c','dothegod@gmail.com','测试模板','<p>测试模板1111111</p>','{\"code\":\"1111111\"}','2p6dl894ur','2020-02-05 02:13:34',0,'发送失败','-1','0',NULL,'00000000'),('4287a548d8d988957c03f9ede01c7651','dothegod@163.com','测试模板','<p>测试模板123,123,123</p>','{\"code\":123123123}','2p6dl894ur','2020-02-05 02:31:12',0,'发送成功','1','0',NULL,'00000000'),('ae75ade7429e80edddcb46ba1d9e330f','dothegod@163.com','测试模板','<p>测试模板1111111</p>','{\"code\":\"1111111\"}','2p6dl894ur','2020-02-05 02:18:15',0,'发送成功','1','0',NULL,'00000000');

/*Table structure for table `email_template` */

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '模版名称',
  `code` varchar(255) NOT NULL COMMENT '模版编码',
  `template_subject` varchar(20) NOT NULL COMMENT '模版主题',
  `template_content` text NOT NULL COMMENT '模版内容',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `create_date` varchar(19) DEFAULT NULL COMMENT '创建时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `update_date` varchar(19) DEFAULT NULL COMMENT '更新时间',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件发送模板';

/*Data for the table `email_template` */

insert  into `email_template`(`id`,`name`,`code`,`template_subject`,`template_content`,`remarks`,`update_by`,`create_date`,`del_flag`,`create_by`,`update_date`,`tenant_id`) values ('4c7bc6a0b20c41a6be9a6495f65b10f3','JeeWeb社区找回密码','7e6cww7l5t','JeeWeb社区找回密码','&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width: 600px; border: 1px solid #ddd; border-radius: 3px; color: #555; font-family: \'Helvetica Neue Regular\',Helvetica,Arial,Tahoma,\'Microsoft YaHei\',\'San Francisco\',\'微软雅黑\',\'Hiragino Sans GB\',STHeitiSC-Light; font-size: 12px; height: auto; margin: auto; overflow: hidden; text-align: left; word-break: break-all; word-wrap: break-word;&quot;&gt; \r\n    &lt;tbody style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n     &lt;tr style=&quot;background-color: #393D49; height: 60px; margin: 0; padding: 0;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n       &lt;div style=&quot;color: #5EB576; margin: 0; margin-left: 30px; padding: 0;&quot;&gt;\r\n&lt;a style=&quot;font-size: 14px; margin: 0; padding: 0; color: #5EB576; text-decoration: none;&quot; href=&quot;http://www.jeeweb.cn/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;JeeWeb社区 - JeeWeb快速开发平台框架官方社区&lt;/a&gt;&lt;br&gt;&lt;/div&gt; &lt;/td&gt; \r\n     &lt;/tr&gt; \r\n     &lt;tr style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 30px;&quot;&gt; &lt;p style=&quot;line-height: 20px; margin: 0; margin-bottom: 10px; padding: 0;&quot;&gt; Hi，&lt;em style=&quot;font-weight: 700;&quot;&gt;${realname}&lt;/em&gt;，童鞋，请在30分钟内重置您的密码： &lt;/p&gt; \r\n       &lt;div style=&quot;&quot;&gt; \r\n        &lt;a href=&quot;http://192.168.10.56:8080/user/reset?token=${token}&amp;amp;key=email&amp;amp;value=${email}&quot; style=&quot;background-color: #009E94; color: #fff; display: inline-block; height: 32px; line-height: 32px; margin: 0 15px 0 0; padding: 0 15px; text-decoration: none;&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;立即重置密码&lt;/a&gt; \r\n       &lt;/div&gt; &lt;p style=&quot;line-height: 20px; margin-top: 20px; padding: 10px; background-color: #f2f2f2; font-size: 12px;&quot;&gt; 如果该邮件不是由你本人操作，请勿进行激活！否则你的邮箱将会被他人绑定。 &lt;/p&gt; &lt;/td&gt; \r\n     &lt;/tr&gt; \r\n     &lt;tr style=&quot;background-color: #fafafa; color: #999; height: 35px; margin: 0; padding: 0; text-align: center;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 0;&quot;&gt;系统邮件，请勿直接回复。&lt;/td&gt; \r\n     &lt;/tr&gt; \r\n    &lt;/tbody&gt; \r\n   &lt;/table&gt; \r\n   &lt;style type=&quot;text/css&quot;&gt;\r\n      .qmbox style, .qmbox script, .qmbox head, .qmbox link, .qmbox meta {display: none !important;}\r\n   &lt;/style&gt;',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-12 11:44:12','0','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-12 14:46:35','00000000'),('e67c81395da3448782da1771f37ab840','测试模板','2p6dl894ur','测试模板','&lt;p&gt;测试模板${code}&lt;/p&gt;',NULL,NULL,'2018-11-09 11:39:07','0','4028ea815a3d2a8c015a3d2f8d2a0002',NULL,'00000000'),('fc38a13d91c0408ebc3ff4710ddffb20','JeeWeb社区激活邮件','l2g4ywbs0l','JeeWeb社区激活邮件','&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; style=&quot;width: 600px; border: 1px solid #ddd; border-radius: 3px; color: #555; font-family: \'Helvetica Neue Regular\',Helvetica,Arial,Tahoma,\'Microsoft YaHei\',\'San Francisco\',\'微软雅黑\',\'Hiragino Sans GB\',STHeitiSC-Light; font-size: 12px; height: auto; margin: auto; overflow: hidden; text-align: left; word-break: break-all; word-wrap: break-word;&quot;&gt; \r\n    &lt;tbody style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n     &lt;tr style=&quot;background-color: #393D49; height: 60px; margin: 0; padding: 0;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n       &lt;div style=&quot;color: #5EB576; margin: 0; margin-left: 30px; padding: 0;&quot;&gt;\r\n&lt;a style=&quot;font-size: 14px; margin: 0; padding: 0; color: #5EB576; text-decoration: none;&quot; href=&quot;http://www.jeeweb.cn/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;JeeWeb社区 - JeeWeb快速开发平台框架官方社区&lt;/a&gt;\r\n&lt;br&gt;&lt;/div&gt; &lt;/td&gt; \r\n     &lt;/tr&gt; \r\n     &lt;tr style=&quot;margin: 0; padding: 0;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 30px;&quot;&gt; &lt;p style=&quot;line-height: 20px; margin: 0; margin-bottom: 10px; padding: 0;&quot;&gt; Hi，&lt;em style=&quot;font-weight: 700;&quot;&gt;${realname}&lt;/em&gt;，请完成以下操作： &lt;/p&gt; \r\n       &lt;div style=&quot;&quot;&gt; \r\n        &lt;a href=&quot;http://192.168.10.56:8080/user/activate?token=${token}&quot; style=&quot;background-color: #009E94; color: #fff; display: inline-block; height: 32px; line-height: 32px; margin: 0 15px 0 0; padding: 0 15px; text-decoration: none;&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;立即激活邮箱&lt;/a&gt; \r\n       &lt;/div&gt; &lt;p style=&quot;line-height: 20px; margin-top: 20px; padding: 10px; background-color: #f2f2f2; font-size: 12px;&quot;&gt; 如果该邮件不是由你本人操作，请勿进行激活！否则你的邮箱将会被他人绑定。 &lt;/p&gt; &lt;/td&gt; \r\n     &lt;/tr&gt; \r\n     &lt;tr style=&quot;background-color: #fafafa; color: #999; height: 35px; margin: 0; padding: 0; text-align: center;&quot;&gt; \r\n      &lt;td style=&quot;margin: 0; padding: 0;&quot;&gt;系统邮件，请勿直接回复。&lt;/td&gt; \r\n     &lt;/tr&gt; \r\n    &lt;/tbody&gt; \r\n   &lt;/table&gt; \r\n   &lt;style type=&quot;text/css&quot;&gt;\r\n      .qmbox style, .qmbox script, .qmbox head, .qmbox link, .qmbox meta {display: none !important;}\r\n   &lt;/style&gt;',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-12 11:41:05','0','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-14 17:16:06','00000000');

/*Table structure for table `oa_notification` */

DROP TABLE IF EXISTS `oa_notification`;

CREATE TABLE `oa_notification` (
  `id` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '内容',
  `status` varchar(4) NOT NULL COMMENT '发布状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `oa_notification` */

insert  into `oa_notification`(`id`,`title`,`content`,`status`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`remarks`,`tenant_id`) values ('40281e815c912406015c914e3e27006b','测试通知1','测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知测试通知','1','4028ea815a3d2a8c015a3d2f8d2a0002','2017-06-10 17:20:43','4028ea815a3d2a8c015a3d2f8d2a0002','2017-07-22 23:27:22','0',NULL,'00000000'),('40281e815c914f07015c91548e690000','测试通知2','测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2测试通知2','1','4028ea815a3d2a8c015a3d2f8d2a0002','2017-06-10 17:27:36','4028ea815a3d2a8c015a3d2f8d2a0002','2017-07-22 23:27:25','0',NULL,'00000000'),('40281e815c914f07015c9154aa010001','测试通知3','测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3测试通知3','1','4028ea815a3d2a8c015a3d2f8d2a0002','2017-06-10 17:27:43','4028ea815a3d2a8c015a3d2f8d2a0002','2017-07-22 23:27:28','0',NULL,'00000000'),('40281e815c914f07015c9154c1b30002','测试通知4','测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4测试通知4','1','4028ea815a3d2a8c015a3d2f8d2a0002','2017-06-10 17:27:49','4028ea815a3d2a8c015a3d2f8d2a0002','2018-03-06 10:29:46','0',NULL,'00000000'),('40288ab85cf356ef015cf35c67ae0004','1111','11111','1','4028ea815a3d2a8c015a3d2f8d2a0002','2017-06-29 18:18:58','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-24 14:20:16','0',NULL,'00000000');

/*Table structure for table `oss_attachment` */

DROP TABLE IF EXISTS `oss_attachment`;

CREATE TABLE `oss_attachment` (
  `id` varchar(32) NOT NULL,
  `file_name` varchar(50) NOT NULL COMMENT '文件名称',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `upload_time` datetime NOT NULL COMMENT '上传时间',
  `upload_ip` varchar(30) NOT NULL COMMENT '上传的ID',
  `file_extension` varchar(10) NOT NULL COMMENT '文件扩展名',
  `file_path` varchar(200) NOT NULL COMMENT '文件路径',
  `file_size` int(10) NOT NULL DEFAULT '0' COMMENT '文件大小',
  `content_type` varchar(100) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `base_path` varchar(250) DEFAULT NULL COMMENT 'oss的根路径',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `oss_attachment` */

insert  into `oss_attachment`(`id`,`file_name`,`user_id`,`upload_time`,`upload_ip`,`file_extension`,`file_path`,`file_size`,`content_type`,`status`,`base_path`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`tenant_id`) values ('048ae89ba6e0cda8eb7b294b4839e040','logo1',NULL,'2020-02-04 08:38:25','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/20200204223824716.png',42300,'image/png','1',NULL,NULL,'2020-02-04 08:38:26',NULL,NULL,NULL,'0','00000000'),('08a541990c550031a4b5c84bc19b0a05','疫情公告',NULL,'2020-02-04 19:47:30','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/20200205094729693.png',11098,'image/png','1',NULL,NULL,'2020-02-04 19:47:30',NULL,NULL,NULL,'0','00000000'),('0ae88bc610694384aecc425b1346be52','未标题-14',NULL,'2019-05-18 16:26:20','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558167979749.png',4250,'image/png','1','',NULL,'2019-05-18 16:26:20',NULL,NULL,NULL,'0','00000000'),('2a6a09ecc28043dd837c03ff1e3a2cd7','未命名',NULL,'2019-05-18 16:13:21','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558167200777.png',10591,'image/png','1','',NULL,'2019-05-18 16:13:21',NULL,NULL,NULL,'0','00000000'),('38bd759e0cfd40400503044028577916','一键报警',NULL,'2020-02-04 19:56:58','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/test/20200205095657434.png',10385,'image/png','1','test',NULL,'2020-02-04 19:56:59',NULL,NULL,NULL,'0','00000000'),('3a04882c8bf1452a9a880d5b3f3d32e9','未标题-14',NULL,'2019-05-18 16:28:22','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558168101498.png',4250,'image/png','1','',NULL,'2019-05-18 16:28:22',NULL,NULL,NULL,'0','00000000'),('45853f6cff714e17bd3742f8baf9097a','未标题-14',NULL,'2019-05-18 16:34:10','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558168448251.png',4250,'image/png','1','',NULL,'2019-05-18 16:34:10',NULL,NULL,NULL,'0','00000000'),('4df750134102368340d550a322f4cc66','本地疫情',NULL,'2020-02-04 07:30:55','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/2020/02/04/1580822952887.png',18351,'image/png','1',NULL,NULL,'2020-02-04 07:30:55',NULL,NULL,NULL,'0','00000000'),('4eb63491f4bd6111ebbdd7b812006880','防护指南',NULL,'2020-02-04 09:02:23','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/20200204230222687.png',13621,'image/png','1',NULL,NULL,'2020-02-04 09:02:23',NULL,NULL,NULL,'0','00000000'),('50a3c0af3f97425094be83dce6239f0d','屏幕截图(1)',NULL,'2018-11-06 15:50:18','127.0.0.1','png','jeewebbbs.oss-cn-beijing.aliyuncs.com/user/portrait/2018/11/06/1541490618213.png',270806,'image/png','1','/user/portrait',NULL,'2018-11-06 15:50:18',NULL,NULL,NULL,'0','00000000'),('5f533ee06cc30510d40d384b09b4426f','疑似上报',NULL,'2020-02-04 19:53:26','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/20200205095325043.png',10349,'image/png','1','',NULL,'2020-02-04 19:53:27',NULL,NULL,NULL,'0','00000000'),('68216b84c0a2405d829dd046ba7bd267','屏幕截图(1)',NULL,'2018-11-06 15:57:09','127.0.0.1','png','http://jeewebbbs.oss-cn-beijing.aliyuncs.com/user/portrait/2018/11/06/1541491028415.png',270806,'image/png','1','/user/portrait',NULL,'2018-11-06 15:57:09',NULL,NULL,NULL,'0','00000000'),('6901f6a94805484a9117edd98e8ece89','未标题-14',NULL,'2019-05-18 16:36:29','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558168588826.png',4250,'image/png','1','',NULL,'2019-05-18 16:36:29',NULL,NULL,NULL,'0','00000000'),('69d6ff3f22055bffb43630d05c972595','疫情公告',NULL,'2020-02-04 07:27:47','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/2020/02/04/1580822866443.png',11098,'image/png','1',NULL,NULL,'2020-02-04 07:27:47',NULL,NULL,NULL,'0','00000000'),('6d235457c508116443ce979b573ad6b4','logo1',NULL,'2020-02-04 07:57:44','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/20200204215743819.png',42300,'image/png','1',NULL,NULL,'2020-02-04 07:57:44',NULL,NULL,NULL,'0','00000000'),('6f920a55ff094d37895e71d6a5f8a0e3','未标题-14',NULL,'2019-05-18 16:38:10','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558168689991.png',4250,'image/png','1','',NULL,'2019-05-18 16:38:10',NULL,NULL,NULL,'0','00000000'),('8bcf1ec98ee624786ee6ab437f62c6dc','防护指南',NULL,'2020-02-04 09:22:42','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/gangwanvuetest/2020/02/04/20200204232242045.png',13621,'image/png','1',NULL,NULL,'2020-02-04 09:22:42',NULL,NULL,NULL,'0','00000000'),('bc0efa88543c45c0b62f460f32539dee','未标题-14',NULL,'2019-05-18 16:37:22','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558168642074.png',4250,'image/png','1','',NULL,'2019-05-18 16:37:22',NULL,NULL,NULL,'0','00000000'),('bfc31c1c0ba835d56c2126790fb00f1f','本地疫情',NULL,'2020-02-04 07:32:37','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/2020/02/04/1580823156746.png',18351,'image/png','1',NULL,NULL,'2020-02-04 07:32:37',NULL,NULL,NULL,'0','00000000'),('c5e4697deb134072aafb032c5941870d','未标题-14',NULL,'2019-05-18 16:25:47','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558167947101.png',4250,'image/png','1','',NULL,'2019-05-18 16:25:47',NULL,NULL,NULL,'0','00000000'),('cbae2f4be5b0adbc23d9c6d3d01f4ef0','疫情公告',NULL,'2020-02-04 07:23:07','127.0.0.1','png','http://gangwantest.oss-cn-beijing.aliyuncs.com/2020/02/04/1580822586600.png',11098,'image/png','1',NULL,NULL,'2020-02-04 07:23:09',NULL,NULL,NULL,'0','00000000'),('e8e6985e798f4c6a9997a1e948d24264','未标题-14',NULL,'2019-05-18 16:11:52','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558167111350.png',4250,'image/png','1','',NULL,'2019-05-18 16:11:52',NULL,NULL,NULL,'0','00000000'),('f2119774227c41b3be8d3ac8a99e898e','未标题-14',NULL,'2019-05-18 16:43:26','127.0.0.1','png','http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558169005633.png',4250,'image/png','1','',NULL,'2019-05-18 16:43:26',NULL,NULL,NULL,'0','00000000');

/*Table structure for table `sms_send_log` */

DROP TABLE IF EXISTS `sms_send_log`;

CREATE TABLE `sms_send_log` (
  `id` varchar(32) NOT NULL,
  `phone` longtext NOT NULL COMMENT '联系电话',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `send_data` varchar(255) DEFAULT NULL COMMENT '发送数据',
  `send_code` varchar(20) DEFAULT NULL,
  `try_num` int(2) DEFAULT NULL,
  `status` varchar(4) NOT NULL COMMENT '发送状态',
  `smsid` varchar(50) DEFAULT NULL COMMENT '发送响应消息ID',
  `code` varchar(40) DEFAULT NULL COMMENT '返回码',
  `msg` varchar(600) DEFAULT NULL COMMENT '返回消息',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `response_date` datetime DEFAULT NULL COMMENT '响应时间',
  `tenant_id` varchar(64) DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sms_send_log` */

insert  into `sms_send_log`(`id`,`phone`,`template_name`,`send_data`,`send_code`,`try_num`,`status`,`smsid`,`code`,`msg`,`del_flag`,`response_date`,`tenant_id`) values ('809291e1091c4784ac5cc006d6f7061a','15085980308','用户注册验证码','{\"code\":\"123456\"}','7hch8lsi8w',0,'1','8852983',NULL,'OK','0','2018-11-09 11:47:35','00000000'),('a576246cab47469997e76b3de666238f','15085980308','用户注册验证码','{\"code\":\"49156\"}','7hch8lsi8w',1,'1','7653143',NULL,'OK','0','2018-11-09 11:26:38','00000000'),('a65867c85f97474fbdc2414d1b77cf97','15085980308','找回密码验证码','{\"code\":\"88814\"}','oal0up6qo2',3,'-1','5365487',NULL,'触发分钟级流控Permits:1','0','2018-11-09 11:27:00','00000000');

/*Table structure for table `sms_template` */

DROP TABLE IF EXISTS `sms_template`;

CREATE TABLE `sms_template` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '模版名称',
  `code` varchar(255) NOT NULL COMMENT '模版编码',
  `business_type` varchar(4) NOT NULL COMMENT '业务类型',
  `template_content` varchar(255) NOT NULL COMMENT '模版内容',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sms_template` */

insert  into `sms_template`(`id`,`name`,`code`,`business_type`,`template_content`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`remarks`,`tenant_id`) values ('6c625030d72e45b181ce689a2ca9afde','用户注册验证码','7hch8lsi8w','1','SMS_119805068','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-14 10:34:21','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-16 13:01:35','0',NULL,'00000000'),('a170787aa90c495d858401a36428999f','找回密码验证码','oal0up6qo2','1','SMS_119805067','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-14 10:34:38','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 16:32:43','0',NULL,'00000000');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `name` varchar(64) NOT NULL COMMENT '名称',
  `code` varchar(64) NOT NULL COMMENT '编码',
  `value` text NOT NULL COMMENT '值',
  `del_flag` int(2) NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是系统配置，如果是，该配置不可以删除',
  `tenant_id` varchar(11) NOT NULL DEFAULT '00000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_config` */

insert  into `sys_config`(`id`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`name`,`code`,`value`,`del_flag`,`is_sys`,`tenant_id`) values ('1',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-27 11:10:20','请勿随便设置','使用许可','license','123654',0,1,'00000000'),('107410e99915b184ba30aa34f2294a77','4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 04:36:39','4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 07:34:02','11','测试','test','11',0,0,'00000000'),('2',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-27 10:47:13',NULL,'产品ID','productId','wind',0,0,'00000000');

/*Table structure for table `sys_data_rule` */

DROP TABLE IF EXISTS `sys_data_rule`;

CREATE TABLE `sys_data_rule` (
  `id` varchar(64) DEFAULT NULL COMMENT '主键',
  `menu_id` varchar(64) DEFAULT NULL COMMENT '菜单主键',
  `resource_code` varchar(255) NOT NULL COMMENT '资源编号',
  `scope_name` varchar(255) NOT NULL COMMENT '数据权限名称',
  `scope_field` varchar(255) NOT NULL COMMENT '数据权限字段',
  `scope_class` varchar(500) NOT NULL COMMENT '数据权限类名',
  `scope_column` varchar(255) NOT NULL COMMENT '数据权限字段',
  `scope_type` int(2) NOT NULL COMMENT '数据权限类型',
  `scope_value` varchar(2000) DEFAULT NULL COMMENT '数据权限值域',
  `remarks` varchar(255) DEFAULT NULL COMMENT '数据权限备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_dept` varchar(64) DEFAULT NULL COMMENT '创建部门',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `del_flag` int(2) DEFAULT NULL COMMENT '是否已删除',
  `table_name` varchar(64) DEFAULT NULL COMMENT '数据库表',
  `user_column` varchar(64) DEFAULT NULL COMMENT '用户表对应字段',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  `user_entity_field` varchar(64) DEFAULT NULL COMMENT 'user实体类对应字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据权限表';

/*Data for the table `sys_data_rule` */

insert  into `sys_data_rule`(`id`,`menu_id`,`resource_code`,`scope_name`,`scope_field`,`scope_class`,`scope_column`,`scope_type`,`scope_value`,`remarks`,`create_by`,`create_dept`,`create_date`,`update_by`,`update_date`,`status`,`del_flag`,`table_name`,`user_column`,`tenant_id`,`user_entity_field`) values ('dfc71dbeb4f8f15f9e00a945c177d2a6',NULL,'table','test','id,title,author,type,level,content','com.sunseagear.wind.modules.test.table.mapper.TableMapper.selectPage','create_by',2,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002',NULL,'2019-11-29 15:18:25','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-30 00:23:40',NULL,0,'sys_organization','organization_id','00000000','organizationId'),('2d1d11805de287aa9b9108350cf45eac',NULL,'expandTable','test1','*','com.sunseagear.wind.modules.test.expandtable.mapper.ExpandTableMapper.selectPage','organization_id',4,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002',NULL,'2019-12-03 07:30:19','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-29 22:54:32',NULL,0,'sys_organization','organizationId','00000000',NULL);

/*Table structure for table `sys_data_source` */

DROP TABLE IF EXISTS `sys_data_source`;

CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `db_key` varchar(50) NOT NULL COMMENT '索引关键字',
  `description` varchar(50) NOT NULL COMMENT '描述',
  `driver_class` varchar(50) NOT NULL COMMENT '驱动',
  `url` varchar(200) NOT NULL COMMENT 'URL',
  `db_user` varchar(50) NOT NULL COMMENT '帐号',
  `db_password` varchar(50) DEFAULT NULL COMMENT '密码',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库类型',
  `db_name` varchar(50) DEFAULT NULL COMMENT '数据库名称',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_data_source` */

insert  into `sys_data_source`(`id`,`db_key`,`description`,`driver_class`,`url`,`db_user`,`db_password`,`db_type`,`db_name`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`tenant_id`) values ('402880e74e064fc5014e0652f72b0001','neiwangbaogong','微信运营数据库','com.mysql.jdbc.Driver','jdbc:mysql://localhost:3306/attendance?useUnicode=true&amp;amp;amp;amp;amp;characterEncoding=UTF-8','root','gliwang123456','mysql','attendance',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2017-08-03 08:40:26',NULL,'0','00000000'),('8a8aada9486347c001486401180a0003','PMS','sap db','oracle.jdbc.driver.OracleDriver','jdbc:oracle:thin:@localhost:1521:oral','PMS','tz','oracle','PMS',NULL,NULL,NULL,NULL,NULL,'0','00000000');

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `gid` varchar(32) DEFAULT NULL COMMENT '分组ID',
  `label` varchar(100) DEFAULT NULL COMMENT '键值键',
  `value` varchar(100) DEFAULT NULL COMMENT '值',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_dict_groupid_key` (`gid`),
  CONSTRAINT `sys_dict_groupid_key` FOREIGN KEY (`gid`) REFERENCES `sys_dict_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`gid`,`label`,`value`,`sort`,`remarks`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`) values ('04e4a4b8af5b6590f609ab29f1d920f1','e4ed989ab589d1be4b708bd285c24f1e','所在机构及下级可见','4',4,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:35:36','4028ea815a3d2a8c015a3d2f8d2a0002','2020-01-25 21:44:43','0'),('0578673152dd43afb7e2c65a4e3463b5',NULL,'wey7','002',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 00:02:02',NULL,NULL,'0'),('0b05a99bb7c24053bb06ddb9b41068c8','9dc0d8aceb9046559f0fcd3acfd4fb8d','按钮','3',3,'','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:47:23','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:38:29','0'),('2a6cb5048f204a6d99f5ea6e8cf450bf','0bf0a5f4378748c1b6b759aea7da9c72','修改','update',2,'修改','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:55:04',NULL,NULL,'0'),('2abd99f7a44e4ef0937b97109b31db87','9f28ef405c63412f9ef6524edb4adc68','继续执行','1',1,'继续执行','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-17 15:37:58',NULL,NULL,'0'),('30bf1683c3a54772bbc75193d8cc48ab','0bf0a5f4378748c1b6b759aea7da9c72','删除','delete',5,'删除','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:55:29',NULL,NULL,'0'),('32143ca22bd14795910255281934c340',NULL,'H6','001',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 00:01:36',NULL,NULL,'0'),('33a22077c3b8e79d93a1c78e23a0a050','e4ed989ab589d1be4b708bd285c24f1e','本人可见','2',2,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:35:00',NULL,NULL,'0'),('35f74a4053fa4880af41819297c9823f','69c0d7e407184b339b055215b3b719a5','25','25',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 11:32:20',NULL,NULL,'0'),('3e285e6650cb47f88f452e156b5bf903','0bf0a5f4378748c1b6b759aea7da9c72','导出','export',7,'导出','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:56:28',NULL,NULL,'0'),('3eb18e509ffb4dd5a069e6ea10a14001','1044ab256fd2468289c6f876905ff8aa','是','true',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:41:25',NULL,NULL,'0'),('40281e815ced1f27015ced2f83bc000b','40281e815ced1f27015ced2be5330003','男','1',1,'1',NULL,NULL,NULL,NULL,'0'),('40281e815cef4f99015cef6f7d070005','40281e815ced1f27015ced2be5330003','女','2',1,'女',NULL,NULL,NULL,NULL,'0'),('40288ab85a20b609015a20c422e90003','40288ab85a20b609015a20c3f7bf0002','是','1',1,'1',NULL,NULL,NULL,NULL,'0'),('40288ab85a5eecc6015a5eede8720000','40288ab85a20b609015a20c3f7bf0002','否','0',2,'否',NULL,NULL,NULL,NULL,'0'),('40288ab85bf1549e015bf175152a0001','40288ab85bf1549e015bf17370ff0000','在线','on_line',1,'在线',NULL,NULL,NULL,NULL,'0'),('40288ab85bf1549e015bf17559ac0002','40288ab85bf1549e015bf17370ff0000','隐身','hidden',2,'隐身',NULL,NULL,NULL,NULL,'0'),('40288ab85bf1549e015bf17590820003','40288ab85bf1549e015bf17370ff0000','强制退出','force_logout',3,'强制退出',NULL,NULL,NULL,NULL,'0'),('40288ab85c8593cd015c859b70010011','40288ab85c8593cd015c859b1fcf0010','验证码','1',1,'验证码',NULL,NULL,NULL,NULL,'0'),('40288ab85c8593cd015c859b8ff50012','40288ab85c8593cd015c859b1fcf0010','通知','2',2,'通知',NULL,NULL,NULL,NULL,'0'),('40288ab85c86382b015c863993a30002','40288ab85c8593cd015c859b1fcf0010','其他','99',99,'其他',NULL,NULL,NULL,NULL,'0'),('4e23f0cd2a154d62bdd9417610ca2679','0bf0a5f4378748c1b6b759aea7da9c72','新增','insert',1,'新增','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:54:48',NULL,NULL,'0'),('5b905a49c182491988865986e4cc48e3','9f28ef405c63412f9ef6524edb4adc68','放弃执行','3',3,'放弃执行','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-17 15:38:20',NULL,NULL,'0'),('6aeb216b950740c9ba61ba2994b4ce98','9f28ef405c63412f9ef6524edb4adc68','一次执行','2',2,'一次执行','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-17 15:38:10',NULL,NULL,'0'),('72a55df5480c48b79e095eb5c6a4728f','d8fd027d0743468c828d7d068239d483','成功','1',1,'成功','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-28 13:15:31',NULL,NULL,'0'),('7da9613b9af54ea19fd6b2ba349fc8ea','9dc0d8aceb9046559f0fcd3acfd4fb8d','菜单','2',2,'','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:47:13','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:38:26','0'),('821adedf100644382102418b6bb9fd9f','e4ed989ab589d1be4b708bd285c24f1e','全部可见','1',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:34:43',NULL,NULL,'0'),('839273eee78947759bd8a980fcf77e99','0bf0a5f4378748c1b6b759aea7da9c72','查询','select',3,'查询','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:55:13',NULL,NULL,'0'),('90f97d607fb745019c88e126b989fa8d','7a4ed165f128484787a119179b7c18fd','普通类','2',2,'普通类','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-20 15:00:56','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-17 17:57:04','0'),('929342ef5d29f0db17df321cb48d54b5','e4ed989ab589d1be4b708bd285c24f1e','所在机构可见','3',3,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:35:10',NULL,NULL,'0'),('94be09dc54b345e7b170711b14003b48','69c0d7e407184b339b055215b3b719a5','50','50',2,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 11:32:30',NULL,NULL,'0'),('97a7d2a2669a47b5a55565d906eef341','9dc0d8aceb9046559f0fcd3acfd4fb8d','目录','1',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:47:01','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:38:23','0'),('a94650c480914ad69f4820b01086a8be','7a4ed165f128484787a119179b7c18fd','SpringBean','1',1,'SpringBean','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-20 15:00:31','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-24 12:36:33','0'),('aa6aeaf0fcaa42098f039b5e15494ebb','0bf0a5f4378748c1b6b759aea7da9c72','其他','other',6,'其他','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:55:59',NULL,NULL,'0'),('b568561ffaa5459e8c79fd71d58eede2','0bf0a5f4378748c1b6b759aea7da9c72','导入','import',8,'导入','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:56:44',NULL,NULL,'0'),('b9e6addb28b8487299413f5346bb621f','69c0d7e407184b339b055215b3b719a5','150','150',4,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 15:18:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 15:29:22','0'),('bbaa5726c9dd4e33bd9aa8b6003ec6e0','69c0d7e407184b339b055215b3b719a5','100','100',3,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 11:33:15',NULL,NULL,'0'),('de1ad2226ae04bb98f6db78ff9e7fee0','d8fd027d0743468c828d7d068239d483','失败','-1',1,'失败','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-28 13:15:39',NULL,NULL,'0'),('e64158128fd1400fb9f834c7a96a1046','d8fd027d0743468c828d7d068239d483','退出','0',0,'退出','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-28 13:15:54',NULL,NULL,'0'),('e76f306325a0675d51f1dc25359a568e','e4ed989ab589d1be4b708bd285c24f1e','自定义','5',5,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:36:04','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:36:18','0'),('e7a5f8f4fbb94cc2a3db0487340cccb4','1044ab256fd2468289c6f876905ff8aa','否','false',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:41:31',NULL,NULL,'0');

/*Table structure for table `sys_dict_group` */

DROP TABLE IF EXISTS `sys_dict_group`;

CREATE TABLE `sys_dict_group` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `code` varchar(100) DEFAULT NULL COMMENT '分组编码',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典分组';

/*Data for the table `sys_dict_group` */

insert  into `sys_dict_group`(`id`,`name`,`code`,`remarks`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`) values ('0bf0a5f4378748c1b6b759aea7da9c72','日志类型','logType','日志类型','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-30 23:54:01',NULL,NULL,'0'),('1044ab256fd2468289c6f876905ff8aa','是否','sf_bool','是否','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:41:17',NULL,NULL,'0'),('40281e815ced1f27015ced2be5330003','性别','sex','性别',NULL,NULL,NULL,NULL,'0'),('40288ab85a20b609015a20c3f7bf0002','是否','sf','是否',NULL,NULL,NULL,NULL,'0'),('40288ab85bf1549e015bf17370ff0000','用户登陆状态','onlinestatus','',NULL,NULL,NULL,NULL,'0'),('40288ab85c8593cd015c859b1fcf0010','短信业务类型','businesstype','短信业务类型',NULL,NULL,NULL,NULL,'0'),('69c0d7e407184b339b055215b3b719a5','分页数组','page','','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 11:31:44','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 14:13:28','0'),('7a4ed165f128484787a119179b7c18fd','任务加载方式','loadway','任务加载方式','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-20 15:00:01','4028ea815a3d2a8c015a3d2f8d2a0002','2018-08-27 16:46:02','0'),('9dc0d8aceb9046559f0fcd3acfd4fb8d','菜单类型','menutype','','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 14:46:50','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:42:07','0'),('9f28ef405c63412f9ef6524edb4adc68','执行策略','misfirePolicy','执行策略','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-17 15:37:42',NULL,NULL,'0'),('d8fd027d0743468c828d7d068239d483','登陆状态','loginstatus','登陆状态','4028ea815a3d2a8c015a3d2f8d2a0002','2018-09-28 13:15:00',NULL,NULL,'0'),('e4ed989ab589d1be4b708bd285c24f1e','数据权限类型','dataRuleType','','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:32:40',NULL,NULL,'0');

/*Table structure for table `sys_login_log` */

DROP TABLE IF EXISTS `sys_login_log`;

CREATE TABLE `sys_login_log` (
  `id` varchar(32) NOT NULL COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `login_ip` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(2) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_login_log` */

insert  into `sys_login_log`(`id`,`login_name`,`login_ip`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`,`tenant_id`) values ('5f204382ae29371802424581039b2f75','admin','127.0.0.1','','Chrome 8','Windows 10','1','登陆成功','2020-05-30 22:05:09','00000000'),('7b05b1e6373de1e13ea864d6fa6258de','admin','127.0.0.1','','Chrome 8','Windows 10','1','登陆成功','2020-05-29 22:05:34','00000000'),('a1159307e3529a19df84e6996e48ce3a','admin','127.0.0.1','','Chrome','Windows 10','1','登陆成功','2020-05-30 22:06:12','00000000'),('c53ec8402c9f63d597f2416f13eea33a','admin','127.0.0.1','','Chrome 8','Windows 10','1','登陆成功','2020-05-30 22:30:16','00000000'),('df319f088777d985253325a0256588ae','admin','127.0.0.1','','Chrome 8','Windows 10','1','登陆成功','2020-05-29 22:51:57','00000000'),('fc6fa22ce0cc9764a1d8dd5091ab7800','admin','127.0.0.1','','Chrome 8','Windows 10','1','登陆成功','2020-05-29 17:31:59','00000000');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(32) NOT NULL,
  `permission` varchar(100) DEFAULT NULL COMMENT '权限ID',
  `name` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `type` varchar(50) DEFAULT NULL COMMENT '菜单类型',
  `path` varchar(200) DEFAULT NULL COMMENT '路径编码',
  `url` varchar(200) DEFAULT NULL COMMENT '访问路由',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(1000) DEFAULT NULL COMMENT '父编号列表',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否显示',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `redirect` varchar(255) DEFAULT NULL COMMENT '跳转URL',
  `cacheable` tinyint(1) DEFAULT NULL COMMENT '是否缓存',
  `require_auth` tinyint(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL COMMENT '前端资源路径',
  `remarks` varchar(255) DEFAULT NULL COMMENT '摘要',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`permission`,`name`,`type`,`path`,`url`,`parent_id`,`parent_ids`,`enabled`,`sort`,`icon`,`redirect`,`cacheable`,`require_auth`,`component`,`remarks`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`) values ('008c004de43a4ebab36deb9b9a11a790','oss:attachment:update','更新','3',NULL,NULL,'203aacd2a474445d8d4fb22199a7fe40',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:45:43',NULL,NULL,'0'),('0b73fc6442d3484ebfcc0e945916a38c','sms:sendlog:delete','删除','3',NULL,NULL,'5a7fb16c87f745dfb3185be1e65673a5',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:52:00',NULL,NULL,'0'),('0ce52312cd294c5a95ffec7e7abe0ef1','sys:role:update','更新','3',NULL,NULL,'f3938743bdab4c64bfa99c5c9e5341e1',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:52:50',NULL,NULL,'0'),('10dbd0f844d04bbcbc394dcdd6b9f258','test:treetable:treetable:delete','删除','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:26',NULL,NULL,'0'),('1307a3dd0f934efba63b2ba4b04ffd08','test:expandtable:expandtable:detail','详情','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,6,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:20:05',NULL,NULL,'0'),('13dbeacf57934abe970497ed34ea6e59','monitor:login:log:list','查询','3',NULL,NULL,'48663b3b2eb5457e8a79a6a105b8fb69',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:46:46',NULL,NULL,'0'),('153c8847203a4df5bd8ff08e20fb6e3b','sys:datarule:detail','详情','3',NULL,NULL,'9f8897e23c5b4c4e924ec983404834a6','a2da339ab8014bb1a0600bd20149bbbd/9f8897e23c5b4c4e924ec983404834a6/',1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16',NULL,NULL,'0'),('1c41720eeea94e59aeb2ea84b2cd3b00','sys:datarule:delete','删除','3',NULL,NULL,'9f8897e23c5b4c4e924ec983404834a6','a2da339ab8014bb1a0600bd20149bbbd/9f8897e23c5b4c4e924ec983404834a6/',1,5,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16',NULL,NULL,'0'),('1c6cfbfc836f4c588375458bb0968c12','test:twotable:carmodel:export','汽车型号导出','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:50:24','0'),('1e46d1cc27f248fb880cc887639e2e4e','sys:user:export','导出','3',NULL,NULL,'bedb1eeccf294d98ba2f636365d01928',NULL,1,4,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:45:14',NULL,NULL,'0'),('1fa22fa16d6140ffbddb5747e33e7205','sms:template:delete','删除','3',NULL,NULL,'5534c207669f4ba3af912622a8b5fee6',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:51:09',NULL,NULL,'0'),('203aacd2a474445d8d4fb22199a7fe40',NULL,'附件日志','2','/monitor/attachment','','4cfdb4c51e144a34957e2a2ceca7fae9','4cfdb4c51e144a34957e2a2ceca7fae9/',1,0,'',NULL,1,1,'views/monitor/attachment/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:23:20','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:48:40','0'),('21c83bb40edd4a9e95a2392f4ed8394a','test:expandtable:expandtable:update','更新','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('247c9f811073431da881a8f90972e1c8','','树形表格','2','/demo/treeTable','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,3,'',NULL,1,1,'views/demo/treeTable/treeTableList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 13:17:20','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:52:21','0'),('26ab0c0a2cff4bf49079bc6ee3462f27',NULL,'表格级联','2','/demo/twoTable','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,2,'',NULL,1,1,'views/demo/twoTable/twoTable',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 13:21:24','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:52:13','0'),('27b5cf637a964a4a97b716739056c8e4','sys:tenant:list','列表','3',NULL,NULL,'9de6b62cb95e483c8e57392213a87f77','a2da339ab8014bb1a0600bd20149bbbd/9de6b62cb95e483c8e57392213a87f77/',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20',NULL,NULL,'0'),('2821d2f3dc5042459a4b975e1cba929a',NULL,'源码更新','2','https://gitee.com/sunseagear/wind','','3f4c3063841641319d95412352db5a35','3f4c3063841641319d95412352db5a35/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:08:00','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 18:25:25','0'),('2954fb967419410fb281857ec86db428','task:schedule:job:add','添加','3',NULL,NULL,'38edc1e2843d411b99a05b721a2f778a',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:05',NULL,NULL,'0'),('2eef0abf5d414d9589576c30b8202dcd','task:schedule:job:list','查询','3',NULL,NULL,'38edc1e2843d411b99a05b721a2f778a',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:05',NULL,NULL,'0'),('3135bcb72d324ac8aad4a42823545570','test:expandtable:expandtable:delete','删除','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('35850e938efe413f9ddcc7821225266b','oss:attachment:list','查询','3',NULL,NULL,'203aacd2a474445d8d4fb22199a7fe40',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:45:43',NULL,NULL,'0'),('35af237befdb46b097070599470c8eed','sys:dict:add','添加','3',NULL,NULL,'6dd8f9cceaf04ce5959e961a59ab91fc',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:28',NULL,NULL,'0'),('3864b314549e4a9cb9e540fba21852a3','test:table:table:import','导入','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,5,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('38edc1e2843d411b99a05b721a2f778a',NULL,'计划任务','2','/tool/task','','88b25c355bdc4a7b8b8bfdb307918eb5','88b25c355bdc4a7b8b8bfdb307918eb5/',1,1,'',NULL,1,1,'views/tool/task/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:03:13','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:49:40','0'),('39883d8ee458426d8890dbc0a61dc3ac','test:table:table:update','更新','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('3b980e49ec4d4d208eec8f4dd433ca6c','sys:menu:update','更新','3',NULL,NULL,'64a6cd14e86f434db5bc6bd3f947398f',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:04',NULL,NULL,'0'),('3eaf2534601a4eac9cda4b17c333eee3','test:treeandtable:treeandtable','左树右表','2','/demo/treeAndTable','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,4,'',NULL,1,1,'views/demo/treeAndTable/treeAndTableList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 13:20:39','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-13 16:36:25','0'),('3f4c3063841641319d95412352db5a35',NULL,'系统帮助','1','','',NULL,NULL,1,70,'fas fa-question-circle',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:05:04','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:53:05','0'),('40a71f551a18416a850063d42250e09f','sys:organization:list','查询','3',NULL,NULL,'8402e9bc967144d0988386a54c912548',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:03:07',NULL,NULL,'0'),('41141cd290874c76968cee0ac9932f67','sys:tenant:detail','详情','3',NULL,NULL,'9de6b62cb95e483c8e57392213a87f77','a2da339ab8014bb1a0600bd20149bbbd/9de6b62cb95e483c8e57392213a87f77/',1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20',NULL,NULL,'0'),('41529f653db84afaaf9ef4b16845842e','sys:user:list','查询','3',NULL,NULL,'bedb1eeccf294d98ba2f636365d01928',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:45:14',NULL,NULL,'0'),('41b543b75bcc4feca88f8b2e34c8c8c4','test:twotable:car:detail','详情','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,14,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:01','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:35','0'),('42cba67a7200910918ed3d6b2cf897e3',NULL,'网络通信','2','/demo/websocket','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,6,'',NULL,1,1,'views/demo/websocket/websocket',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-23 23:15:29','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-23 23:17:36','0'),('4548f01cbbf0427e8bb47243d4a546e9','sys:dict:delete','删除','3',NULL,NULL,'6dd8f9cceaf04ce5959e961a59ab91fc',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:28',NULL,NULL,'0'),('467202a879c0455d948185ad52ee871b','sys:config:update','更新','3',NULL,NULL,'ea3bf0ab4bd042e0be6416680f66e19c',NULL,1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-23 16:43:32',NULL,NULL,'0'),('46ddbbabf30445e3a75ff2294e06ec50','test:treetable:treetable:detail','详情','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,10,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:54',NULL,NULL,'0'),('48663b3b2eb5457e8a79a6a105b8fb69',NULL,'登陆日志','2','/monitor/loginLog','','4cfdb4c51e144a34957e2a2ceca7fae9','4cfdb4c51e144a34957e2a2ceca7fae9/',1,1,'',NULL,1,1,'views/monitor/log/login',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:24:25','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:48:48','0'),('4870363dbd084cdc99840732a26d9c4a','test:twotable:car:import','导入','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,12,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:32','0'),('498016d4913446deb6415785befd3480','sys:dict:group:delete','删除分组','3','','','6dd8f9cceaf04ce5959e961a59ab91fc','a2da339ab8014bb1a0600bd20149bbbd/6dd8f9cceaf04ce5959e961a59ab91fc/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:41:12',NULL,NULL,'0'),('49e01ae88046460484d262d47fa30719','sys:dict:list','查询','3',NULL,NULL,'6dd8f9cceaf04ce5959e961a59ab91fc',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:28',NULL,NULL,'0'),('4b96d6bd8bf542ca888cdb64b1006c69','task:schedule:job:refresh:job','刷新任务','3','','','38edc1e2843d411b99a05b721a2f778a','88b25c355bdc4a7b8b8bfdb307918eb5/38edc1e2843d411b99a05b721a2f778a/',1,0,'',NULL,1,1,'','刷新任务','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:55:19',NULL,NULL,'0'),('4cfdb4c51e144a34957e2a2ceca7fae9',NULL,'系统监控','1','','',NULL,NULL,1,40,'fas fa-chart-line',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:13:37','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:49:28','0'),('4d559f775fb94b20b87c22c6643b3180','sys:dict:group:list','查询分组','3','','','6dd8f9cceaf04ce5959e961a59ab91fc','a2da339ab8014bb1a0600bd20149bbbd/6dd8f9cceaf04ce5959e961a59ab91fc/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:39:48','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:41:20','0'),('4de1c247dc8d4adfa48beb27e4e5696d','sys:menu:generate:button','生成按钮','3','','','64a6cd14e86f434db5bc6bd3f947398f','a2da339ab8014bb1a0600bd20149bbbd/64a6cd14e86f434db5bc6bd3f947398f/',1,0,'',NULL,1,1,'','备注','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:01:31','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:01:52','0'),('4ee35f7f1db2420e82f8ce6833ba885e','sys:datarule:list','列表','3',NULL,NULL,'9f8897e23c5b4c4e924ec983404834a6','a2da339ab8014bb1a0600bd20149bbbd/9f8897e23c5b4c4e924ec983404834a6/',1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16',NULL,NULL,'0'),('50e2814c16ac4bef821cb0af6bea1e2b','test:expandtable:expandtable:list','查询','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('5534c207669f4ba3af912622a8b5fee6',NULL,'短信模板','2','/sms/template','','699fbeee7c914b619485f259f83a2e6d','699fbeee7c914b619485f259f83a2e6d/',1,0,'',NULL,1,1,'views/sms/template/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:50:14','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:46:54','0'),('55c0e037734a4f4d803e881cd7204692','sys:config:detail','详情','3',NULL,NULL,'ea3bf0ab4bd042e0be6416680f66e19c','a2da339ab8014bb1a0600bd20149bbbd/ea3bf0ab4bd042e0be6416680f66e19c/',1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-23 16:43:32','4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 04:12:19','0'),('56e87bb7ee424e6999b27cb2a4cbc96d','test:expandtable:expandtable:import','导入','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,5,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('57b666b69b554c8d80da32b0141776af','test:treetable:treetable:add','添加','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:26',NULL,NULL,'0'),('5a7fb16c87f745dfb3185be1e65673a5',NULL,'发送日志','2','/sms/sendlog','','699fbeee7c914b619485f259f83a2e6d','699fbeee7c914b619485f259f83a2e6d/',1,1,'',NULL,1,1,'views/sms/send/log',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:50:47','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:47:06','0'),('5a92b11ad8434ff68b588767417c6b58','sys:datarule:add','添加','3',NULL,NULL,'9f8897e23c5b4c4e924ec983404834a6','a2da339ab8014bb1a0600bd20149bbbd/9f8897e23c5b4c4e924ec983404834a6/',1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16',NULL,NULL,'0'),('5b85cfebd56141d1a100102727395556','test:treeandtable:treeandtable:import','导入','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,5,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('608629d6bfa7461f9ca258a4393523a1','sys:user:add','添加','3',NULL,NULL,'bedb1eeccf294d98ba2f636365d01928',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:45:14',NULL,NULL,'0'),('64a6cd14e86f434db5bc6bd3f947398f',NULL,'菜单管理','2','/sys/menu','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,30,'',NULL,1,1,'views/sys/menu/menuList','菜单管理','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:12:53','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:16:55','0'),('650fa5a8ccd04deeb656321311410606','monitor:operation:log:list','查询','3',NULL,NULL,'fdb08c18a73648ddb77d2558167a764a',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:47:04',NULL,NULL,'0'),('653c7b79ebdf4054b3a7233ad6168d49',NULL,'在线用户','2','/monitor/onlineUser','','4cfdb4c51e144a34957e2a2ceca7fae9','4cfdb4c51e144a34957e2a2ceca7fae9/',1,3,'',NULL,1,1,'views/monitor/user/online',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:24:02','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:49:11','0'),('6869b6f955594ab2a8d10b0b130120b4','test:twotable:carmodel:add','汽车型号添加','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:48:07','0'),('69039de89fb94c54be70543475b995ad','test:twotable:car:delete','删除','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,10,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:28','0'),('699fbeee7c914b619485f259f83a2e6d',NULL,'短信管理','1','','',NULL,NULL,1,20,'fas fa-sms',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:49:28','4028ea815a3d2a8c015a3d2f8d2a0002','2019-09-09 21:07:24','0'),('6c46f6d5f6cd4cc094cc295737c3ace6','test:table:table:export','导出','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('6dd8f9cceaf04ce5959e961a59ab91fc','','字典管理','2','/sys/dict','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,60,'',NULL,1,1,'views/sys/dict/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:12:18','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:17:14','0'),('6e36c83436e34bfbb316058453e3205f','task:schedule:job:update','更新','3',NULL,NULL,'38edc1e2843d411b99a05b721a2f778a',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:05',NULL,NULL,'0'),('70466fa5271d45dc99cccea0027c3dc2','sys:tenant:update','更新','3',NULL,NULL,'9de6b62cb95e483c8e57392213a87f77','a2da339ab8014bb1a0600bd20149bbbd/9de6b62cb95e483c8e57392213a87f77/',1,4,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20',NULL,NULL,'0'),('7230458979a149d48ff88544ce985809','monitor:operation:log:delete','删除','3',NULL,NULL,'fdb08c18a73648ddb77d2558167a764a',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:47:04',NULL,NULL,'0'),('760dd42695984c15a0db3f1e4ed0a4af','test:table:table:delete','删除','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('76fd71b67d784ed9bd02e320a387e834','','邮件管理','1','','',NULL,NULL,1,30,'fas fa-mail-bulk',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:22:57','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:48:16','0'),('779d64b7717c4f3a99fc96ed7ccd075d','sms:template:list','查询','3',NULL,NULL,'5534c207669f4ba3af912622a8b5fee6',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:51:09',NULL,NULL,'0'),('7811944f996a441e9b3a761b18cb88bf','test:treetable:treetable:update','更新','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,6,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('79059d522a11459394c23c6f29092c41','sys:organization:add','添加','3',NULL,NULL,'8402e9bc967144d0988386a54c912548',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:03:07',NULL,NULL,'0'),('8386bfdcf52547c1a091e71873eedfdf',NULL,'任务日志','2','/tool/tasklog','','88b25c355bdc4a7b8b8bfdb307918eb5','88b25c355bdc4a7b8b8bfdb307918eb5/',1,2,'',NULL,1,1,'views/tool/task/log',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:03:34','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:49:51','0'),('83aea54a484b4bc8a19259352badaceb','sys:user:update','更新','3',NULL,NULL,'bedb1eeccf294d98ba2f636365d01928',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:45:14',NULL,NULL,'0'),('83da63a6359e494cbbaffa678274ec19','sys:user:change:password','修改密码','3','','','bedb1eeccf294d98ba2f636365d01928','a2da339ab8014bb1a0600bd20149bbbd/bedb1eeccf294d98ba2f636365d01928/',1,0,'',NULL,1,1,'','修改密码','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:02:30','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:03:03','0'),('8402e9bc967144d0988386a54c912548',NULL,'组织机构','2','/sys/organization','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,50,'',NULL,1,1,'views/sys/organization/organizationList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:09:52','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:17:06','0'),('86d49f3cd426463080e0ac13bdfbc28d','sys:organization:delete','删除','3',NULL,NULL,'8402e9bc967144d0988386a54c912548',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:03:07',NULL,NULL,'0'),('86f65f1677184cc5b92201bbb63618d7',NULL,'发送日志','2','/email/sendlog','','76fd71b67d784ed9bd02e320a387e834','76fd71b67d784ed9bd02e320a387e834/',1,1,'',NULL,1,1,'views/email/send/log',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:24:04','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:48:06','0'),('86fcadeb0950427b8a4819a4229bbd74','test:treetable:treetable:delete','删除','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,9,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('87c10320fb46431e8e2900d45d9f6dad','task:schedule:job:change:job:status','变更状态','3','','','38edc1e2843d411b99a05b721a2f778a','88b25c355bdc4a7b8b8bfdb307918eb5/38edc1e2843d411b99a05b721a2f778a/',1,0,'',NULL,1,1,'','变更状态','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 13:00:19',NULL,NULL,'0'),('88b25c355bdc4a7b8b8bfdb307918eb5',NULL,'定时任务','1','','',NULL,NULL,1,60,'fas fa-clock',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:02:41','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:50:12','0'),('8a13a95a71b948208d31acb590112440','sys:menu:add','添加','3',NULL,NULL,'64a6cd14e86f434db5bc6bd3f947398f',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:04',NULL,NULL,'0'),('8b226abad44047b6aa2a164b441a3815','test:expandtable:expandtable:add','添加','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('91b33be150b3416d82ba38128590c507','monitor:login:log:export','导出','3','','','48663b3b2eb5457e8a79a6a105b8fb69','4cfdb4c51e144a34957e2a2ceca7fae9/48663b3b2eb5457e8a79a6a105b8fb69/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 14:07:10','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 14:07:26','0'),('91fccb99710f4f2e97567653a8ef14d6','task:schedule:joblog:list','查询','3',NULL,NULL,'8386bfdcf52547c1a091e71873eedfdf',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:25',NULL,NULL,'0'),('93669750fdad4979b658408e13675b30','sys:dict:group:add','添加分组','3','','','6dd8f9cceaf04ce5959e961a59ab91fc','a2da339ab8014bb1a0600bd20149bbbd/6dd8f9cceaf04ce5959e961a59ab91fc/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:39:23','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:41:27','0'),('936b2acedf194ed3bfc403acc4c5aa71','test:twotable:car:list','查询','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,7,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:18','0'),('9406154d48144fe0971880bb9d79f3a8','sys:tenant:delete','删除','3',NULL,NULL,'9de6b62cb95e483c8e57392213a87f77','a2da339ab8014bb1a0600bd20149bbbd/9de6b62cb95e483c8e57392213a87f77/',1,5,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20',NULL,NULL,'0'),('97194b12b19248c79336a634a0ed9ac3','task:schedule:joblog:delete','删除','3',NULL,NULL,'8386bfdcf52547c1a091e71873eedfdf',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:25',NULL,NULL,'0'),('9a42181d7301459b935871b921e1a89a','test:treeandtable:treeandtable:add','添加','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('9afdab469e1f4f3fab4b242a2d5679e9','test:treetable:treetable:list','查询','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('9c44133cf8d14addbb4b024f3515f4df','task:schedule:job:delete','删除','3',NULL,NULL,'38edc1e2843d411b99a05b721a2f778a',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:48:05',NULL,NULL,'0'),('9c59bd5de46b48a4911047bf3307ebbc','test:treeandtable:treeandtable:update','更新','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('9de6b62cb95e483c8e57392213a87f77','sys:tenant:list','租户管理','2','/sys/tenant','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,0,NULL,NULL,1,1,'views/sys/tenant/tenantList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-04 08:32:25','0'),('9f4f6568e9a54623b52657bcc6a6f478','test:twotable:car:update','更新','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,9,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:26','0'),('9f8897e23c5b4c4e924ec983404834a6','sys:datarule:list','数据权限','2','/sys/dataRule','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,40,NULL,NULL,1,1,'views/sys/dataRule/dataRuleList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-04 09:06:43','0'),('9fbb210970df4024bfb1e9eaaa9de6ac','sys:menu:delete','删除','3',NULL,NULL,'64a6cd14e86f434db5bc6bd3f947398f',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:04',NULL,NULL,'0'),('a2da339ab8014bb1a0600bd20149bbbd',NULL,'系统设置','1','','',NULL,NULL,1,10,'fas fa-cog',NULL,1,1,'','系统设置','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:08:45','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:17:37','0'),('a3bb826296174bb7b7bfdd0fcb2d33fc','sys:role:delete','删除','3',NULL,NULL,'f3938743bdab4c64bfa99c5c9e5341e1',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:52:50',NULL,NULL,'0'),('a9d4028655c945eba33546ff3df634e4','test:treeandtable:treeandtable:detail','详情','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,6,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:19:40',NULL,NULL,'0'),('abc8dc302b1540f69f2a8c24a5612c2a','sms:template:update','更新','3',NULL,NULL,'5534c207669f4ba3af912622a8b5fee6',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:51:09',NULL,NULL,'0'),('abe099fdb4144a88b6635eea23d0bd01',NULL,'代码样例','1','','',NULL,NULL,1,80,'fas fa-code',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 10:56:31','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:51:46','0'),('ac793681eab74d2d99e3e6d335a79826',NULL,'表格展开','2','/demo/expendTable','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,5,'',NULL,1,1,'views/demo/expandTable/expandTableList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 13:24:13','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-13 14:56:40','0'),('ae18e571ddd44dbaa0384f685b3e357a',NULL,'开发文档','2','https://panjiachen.github.io/vue-element-admin-site/zh/','','3f4c3063841641319d95412352db5a35','3f4c3063841641319d95412352db5a35/',1,1,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:05:48','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 18:24:53','0'),('afa4277041cb454ab789b55d4b4b824a','test:twotable:car:add','添加','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,8,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:24','0'),('b0da410e900944aa84d3ad2a170ec006','sys:datarule:update','更新','3',NULL,NULL,'9f8897e23c5b4c4e924ec983404834a6','a2da339ab8014bb1a0600bd20149bbbd/9f8897e23c5b4c4e924ec983404834a6/',1,4,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 03:25:16',NULL,NULL,'0'),('b338552c1eee4313b1a21a880df97e81','sys:user:dddd','设置角色','3','','','bedb1eeccf294d98ba2f636365d01928','a2da339ab8014bb1a0600bd20149bbbd/bedb1eeccf294d98ba2f636365d01928/',1,0,'',NULL,1,1,'','设置角色','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:02:55',NULL,NULL,'0'),('b899735bed7744c2a27c5bf3c35a3e1e','test:treetable:treetable:export','导出','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,7,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('b8faa3f2cdc9499e814be30e218a88f5','test:table:table:add','添加','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,1,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('ba46b8b6d27c4f0cabea1598d15cad27','test:twotable:carmodel:import','汽车型号导入','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,5,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:50:39','0'),('bb2e6d8d88cb4685a33a27823dd09a30','test:treeandtable:treeandtable:list','查询','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('bc3c57bb7d954de7a64956e6df718fe2','sys:dict:group:update','添加分组','3','','','6dd8f9cceaf04ce5959e961a59ab91fc','a2da339ab8014bb1a0600bd20149bbbd/6dd8f9cceaf04ce5959e961a59ab91fc/',1,0,'',NULL,1,1,'',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:39:04','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:41:37','0'),('be2ececee58e4f5ba7cf13ac35a51fbe','email:template:add','添加','3',NULL,NULL,'d4272a1fac244950acc93dac7ac1c7cf',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:24:49',NULL,NULL,'0'),('be85d873590d4a10b490bf9174c707df','oss:attachment:delete','删除','3',NULL,NULL,'203aacd2a474445d8d4fb22199a7fe40',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:45:43',NULL,NULL,'0'),('bedb1eeccf294d98ba2f636365d01928',NULL,'用户管理','2','/sys/user','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,10,'',NULL,1,1,'views/sys/user/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:10:29','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:16:30','0'),('c2fa9d559e744df9971f0321e218e125','sys:user:role:list','用户角色','3','','','f3938743bdab4c64bfa99c5c9e5341e1','a2da339ab8014bb1a0600bd20149bbbd/f3938743bdab4c64bfa99c5c9e5341e1/',1,0,'',NULL,1,1,'','用户角色','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:03:49',NULL,NULL,'0'),('c5280ea2f36b44e192643c1cfd63918c','test:treeandtable:treeandtable:delete','删除','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('c782a018e34947aeae172a1fc05506a6','sys:user:role:delete','删除用户角色','3','','','bedb1eeccf294d98ba2f636365d01928','a2da339ab8014bb1a0600bd20149bbbd/bedb1eeccf294d98ba2f636365d01928/',1,0,'',NULL,1,1,'','删除用户角色','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:05:43',NULL,NULL,'0'),('c7f55a648f974247bec0dd0745be6492','test:treetable:treetable:import','导入','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,8,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('c8dacf03f6f34c1dad41bc05f85cc9e9','sms:template:add','添加','3',NULL,NULL,'5534c207669f4ba3af912622a8b5fee6',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:51:09',NULL,NULL,'0'),('c8fdf84fa0aa4372b930ba57d0277ab9','email:template:update','更新','3',NULL,NULL,'d4272a1fac244950acc93dac7ac1c7cf',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:24:49',NULL,NULL,'0'),('c97c4ff1abc5436da415047d450fdb88','test:table:table:list','查询','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:12',NULL,NULL,'0'),('cb6f769427554df58229b65ae6038544','monitor:login:log:delete','删除','3',NULL,NULL,'48663b3b2eb5457e8a79a6a105b8fb69',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:46:46',NULL,NULL,'0'),('cdf0fe2958434b40be1fff8145cba08b','sys:role:add','添加','3',NULL,NULL,'f3938743bdab4c64bfa99c5c9e5341e1',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:52:50',NULL,NULL,'0'),('d1069347e4374ddaab932656e27a2772','sys:organization:update','更新','3',NULL,NULL,'8402e9bc967144d0988386a54c912548',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:03:07',NULL,NULL,'0'),('d4272a1fac244950acc93dac7ac1c7cf',NULL,'邮件模板','2','/email/template','','76fd71b67d784ed9bd02e320a387e834','76fd71b67d784ed9bd02e320a387e834/',1,0,'',NULL,1,1,'views/email/template/index',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:23:33','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:47:53','0'),('d4bc391e2d6b4d619435da7c37021212','test:twotable:carmodel:list','汽车型号查询','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:47:58','0'),('d4e076ece76e4c109c794ee354133ef3','sys:user:delete','删除','3',NULL,NULL,'bedb1eeccf294d98ba2f636365d01928',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:45:14',NULL,NULL,'0'),('d50770e755564f15a32c2b798cdbb2de','test:expandtable:expandtable:export','导出','3',NULL,NULL,'ac793681eab74d2d99e3e6d335a79826',NULL,1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-04 13:21:02',NULL,NULL,'0'),('d67f9a69cce040d0b28000e988a489c7','sys:menu:list','查询','3',NULL,NULL,'64a6cd14e86f434db5bc6bd3f947398f',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:04',NULL,NULL,'0'),('da7f94c7087b42359e34c703cd2ed30f','test:table:table:list','综合表格','2','/demo/table','','abe099fdb4144a88b6635eea23d0bd01','abe099fdb4144a88b6635eea23d0bd01/',1,1,'',NULL,1,1,'views/demo/table/tableList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-23 10:59:35','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-10 13:10:30','0'),('dce5ce1a87e3417692a8b1225d90d121','email:template:delete','删除','3',NULL,NULL,'d4272a1fac244950acc93dac7ac1c7cf',NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:24:49',NULL,NULL,'0'),('dd2b6238d3304fcf926b9e389175ad42','sys:tenant:add','添加','3',NULL,NULL,'9de6b62cb95e483c8e57392213a87f77','a2da339ab8014bb1a0600bd20149bbbd/9de6b62cb95e483c8e57392213a87f77/',1,3,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-28 06:30:20',NULL,NULL,'0'),('deca5f90b4a74a3ca243ee81a798801f','test:table:table:detail','详情','3',NULL,NULL,'da7f94c7087b42359e34c703cd2ed30f',NULL,1,6,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-25 13:23:00',NULL,NULL,'0'),('df07014114924135a875782fcaf40333','test:treetable:treetable:update','更新','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:26',NULL,NULL,'0'),('df3307b6f9884a2ea9c4aa32ec0388fa','oss:attachment:add','添加','3',NULL,NULL,'203aacd2a474445d8d4fb22199a7fe40',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 12:45:43',NULL,NULL,'0'),('e052e5772bb74b4b8791d79732677eb1','test:treeandtable:treeandtable:export','导出','3',NULL,NULL,'3eaf2534601a4eac9cda4b17c333eee3',NULL,1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-03 01:33:11',NULL,NULL,'0'),('e198425d45ba6b6e31a6db4b7763f716','sys:config:delete','删除','3',NULL,NULL,'ea3bf0ab4bd042e0be6416680f66e19c',NULL,1,4,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 04:12:46',NULL,NULL,'0'),('e49f6dfe7973326a6ed21512ee42bae0','sys:config:add','添加','3',NULL,NULL,'ea3bf0ab4bd042e0be6416680f66e19c',NULL,1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 04:12:46',NULL,NULL,'0'),('e57d4c7de46d4a12911f1c0880608fdb','sys:role:list','查询','3',NULL,NULL,'f3938743bdab4c64bfa99c5c9e5341e1',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:52:50',NULL,NULL,'0'),('e6d19f6b484e4fdb8b05ed34457fd594','monitor:user:online:list','查询','3',NULL,NULL,'653c7b79ebdf4054b3a7233ad6168d49',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 12:59:22',NULL,NULL,'0'),('e746144939314619827be86fbd3efe50','email:template:list','查询','3',NULL,NULL,'d4272a1fac244950acc93dac7ac1c7cf',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:24:49',NULL,NULL,'0'),('ea3bf0ab4bd042e0be6416680f66e19c',NULL,'系统参数','2','/sys/config','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,70,'',NULL,1,1,'views/sys/config/configList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-23 16:42:13','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:17:22','0'),('edf9c54876d8424b9ea7edb9b992a3a3','test:twotable:carmodel:delete','汽车型号删除','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,3,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:48:25','0'),('ee8e03adf46f4377b03e4f81176b9640','test:twotable:carmodel:detail','汽车型号详情','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,6,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:17:05','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:17:27','0'),('ef66722b109e4b44badded26ddc129ba','sys:user:role:add','添加用户角色','3','','','bedb1eeccf294d98ba2f636365d01928','a2da339ab8014bb1a0600bd20149bbbd/bedb1eeccf294d98ba2f636365d01928/',1,0,'',NULL,1,1,'','添加用户角色','4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 15:04:38',NULL,NULL,'0'),('ef68f37ced434f319797e3f26ef202d2','test:twotable:carmodel:update','汽车型号更新','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:36:46','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 22:48:16','0'),('efe69c7d51f140abbfc1c1e05975ecae','sms:sendlog:list','查询','3',NULL,NULL,'5a7fb16c87f745dfb3185be1e65673a5',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:52:00',NULL,NULL,'0'),('eff0c65a539846f59b2046b279833dae','test:treetable:treetable:list','查询','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,0,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:26',NULL,NULL,'0'),('f219d0b6f8144f0eab326b53f3323dd7','email:sendlog:delete','删除','3',NULL,NULL,'86f65f1677184cc5b92201bbb63618d7',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:25:07',NULL,NULL,'0'),('f38443b4da684b7d8e81614d8180021e','test:treetable:treetable:add','添加','3',NULL,NULL,'247c9f811073431da881a8f90972e1c8',NULL,1,5,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 21:45:49',NULL,NULL,'0'),('f3938743bdab4c64bfa99c5c9e5341e1',NULL,'角色管理','2','/sys/role','','a2da339ab8014bb1a0600bd20149bbbd','a2da339ab8014bb1a0600bd20149bbbd/',1,20,'',NULL,1,1,'views/sys/role/roleList',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-30 15:11:36','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-26 21:16:45','0'),('f5ea5f1f8c1d4cf1abafd1f6c4efab69','test:twotable:car:export','导出','3',NULL,NULL,'26ab0c0a2cff4bf49079bc6ee3462f27','abe099fdb4144a88b6635eea23d0bd01/26ab0c0a2cff4bf49079bc6ee3462f27/',1,11,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-24 23:03:51','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:18:30','0'),('f6226a63129a4141adbe6805324dabdd','email:sendlog:list','查询','3',NULL,NULL,'86f65f1677184cc5b92201bbb63618d7',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-09 10:25:07',NULL,NULL,'0'),('f9b2cdabb11d429884a5465e754c4e06','sys:dict:update','更新','3',NULL,NULL,'6dd8f9cceaf04ce5959e961a59ab91fc',NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-11-06 11:53:28',NULL,NULL,'0'),('fdb08c18a73648ddb77d2558167a764a',NULL,'操作日志','2','/monitor/operationLog','','4cfdb4c51e144a34957e2a2ceca7fae9','4cfdb4c51e144a34957e2a2ceca7fae9/',1,2,'',NULL,1,1,'views/monitor/log/operation',NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:25:04','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-28 17:49:00','0'),('fedca180ec4e9822d718026cd83817f4','sys:config:list','列表','3',NULL,NULL,'ea3bf0ab4bd042e0be6416680f66e19c',NULL,1,2,NULL,NULL,1,1,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-16 04:12:46',NULL,NULL,'0');

/*Table structure for table `sys_message` */

DROP TABLE IF EXISTS `sys_message`;

CREATE TABLE `sys_message` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '模版内容',
  `is_read` tinyint(1) DEFAULT NULL COMMENT '是否阅读',
  `read_uid` varchar(32) DEFAULT NULL COMMENT '阅读的用户ID',
  `read_uname` varchar(250) DEFAULT NULL COMMENT '阅读的人',
  `read_date` datetime DEFAULT NULL COMMENT '阅读时间',
  `send_date` datetime DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`),
  KEY `sys_message_read_uid` (`read_uid`),
  CONSTRAINT `sys_message_read_uid` FOREIGN KEY (`read_uid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送消息';

/*Data for the table `sys_message` */

insert  into `sys_message`(`id`,`title`,`content`,`is_read`,`read_uid`,`read_uname`,`read_date`,`send_date`,`tenant_id`) values ('34d90ff1d82c40c1b24d9598310d4174','回答了求解','<p><a href=\"/user/4028ea815a3d2a8c015a3d2f8d2a0002\" target=\"_self\" title=\"系统管理员\"><cite>系统管理员</cite></a>回答了您的求解<a href=\"/posts/3c69b5d3676e42a5ba8adbf9a3133813/detail\" target=\"_self\" title=\"dasdadasd\"><cite>dasdadasd</cite></a></p>',1,'4028ea815a3d2a8c015a3d2f8d2a0002','系统管理员',NULL,'2018-09-21 17:12:24','00000000'),('3daf4c6501354c64bc54d5dae1cc8532','回答了求解','<p><a href=\"/user/703ab3b65dd940708d191a19fb64632c\" target=\"_self\" title=\"王存见\"><cite>王存见</cite></a>回答了您的求解<a href=\"/posts/b27a9f2296b5490c92b86eceac13f692/detail\" target=\"_self\" title=\"标题标题标题标题标题标题标题标题标题标题\"><cite>标题标题标题标题标题标题标题标题标题标题</cite></a></p>',0,'703ab3b65dd940708d191a19fb64632c','王存见',NULL,'2018-09-20 11:37:39','00000000'),('67185c781b0541ad975ed740df5fdfd7','回答了求解','<p><a href=\"/user/d7bdacb99d8746548c0882417ae3abbd\" target=\"_self\" title=\"白猫\"><cite>白猫</cite></a>回答了您的求解<a href=\"/posts/b2dcc675fb5d48a88120c5900ff1a4fd/detail\" target=\"_self\" title=\"测试一个标题哈哈哈哈\"><cite>测试一个标题哈哈哈哈</cite></a></p>',1,'d7bdacb99d8746548c0882417ae3abbd','白猫',NULL,'2018-09-13 13:42:47','00000000'),('7730bb741c9341c2869dfaaf70665c06','回答了求解','<p><a href=\"/user/d7bdacb99d8746548c0882417ae3abbd\" target=\"_self\" title=\"白猫\"><cite>白猫</cite></a>回答了您的求解<a href=\"/posts/b2dcc675fb5d48a88120c5900ff1a4fd/detail\" target=\"_self\" title=\"测试一个标题哈哈哈哈\"><cite>测试一个标题哈哈哈哈</cite></a></p>',0,'d7bdacb99d8746548c0882417ae3abbd','白猫',NULL,'2018-09-13 13:52:10','00000000'),('9a311d6e471544d9b07c4d966c9b86e3','回答了求解','<p><a href=\"/user/4028ea815a3d2a8c015a3d2f8d2a0002\" target=\"_self\" title=\"系统管理员\"><cite>系统管理员</cite></a>回答了您的求解<a href=\"/posts/3c69b5d3676e42a5ba8adbf9a3133813/detail\" target=\"_self\" title=\"dasdadasd\"><cite>dasdadasd</cite></a></p>',1,'4028ea815a3d2a8c015a3d2f8d2a0002','系统管理员',NULL,'2018-09-21 17:12:36','00000000'),('9fb5dd93108340f9a8e108fa150e4dc0','回答了求解','<p><a href=\"/user/703ab3b65dd940708d191a19fb64632c\" target=\"_self\" title=\"王存见\"><cite>王存见</cite></a>回答了您的求解<a href=\"/posts/b27a9f2296b5490c92b86eceac13f692/detail\" target=\"_self\" title=\"标题标题标题标题标题标题标题标题标题标题\"><cite>标题标题标题标题标题标题标题标题标题标题</cite></a></p>',0,'703ab3b65dd940708d191a19fb64632c','王存见',NULL,'2018-09-21 17:12:05','00000000');

/*Table structure for table `sys_message_template` */

DROP TABLE IF EXISTS `sys_message_template`;

CREATE TABLE `sys_message_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '模版名称',
  `code` varchar(255) NOT NULL COMMENT '模版编码',
  `template_title` varchar(255) NOT NULL COMMENT '模版标题',
  `template_content` text NOT NULL COMMENT '模版内容',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送消息模板';

/*Data for the table `sys_message_template` */

insert  into `sys_message_template`(`id`,`name`,`code`,`template_title`,`template_content`,`tenant_id`) values ('980000eda2bf4644b099404cc4b8cd68','产品付款成功模板','ur780e3fjt','产品付款成功模板','&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;在求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;。中回复了你&lt;/p&gt;','00000000'),('c1fc105870bc4e3b8252973cc557ad75','回答了求解','iheyj2har8','回答了求解','&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;回答了您的求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;&lt;/p&gt;','00000000'),('f5f928d3d7354a73a73bd67e21bc54dd','回复中AT了你','yfsidsne12','回复中AT了你','&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;在求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;。中回复了你&lt;/p&gt;','00000000');

/*Table structure for table `sys_operation_log` */

DROP TABLE IF EXISTS `sys_operation_log`;

CREATE TABLE `sys_operation_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `content` varchar(1000) DEFAULT '' COMMENT '日志内容',
  `log_type` varchar(10) DEFAULT '' COMMENT '操作方式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URL',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(100) DEFAULT NULL COMMENT '操作系统',
  `operation_ip` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `operation_name` varchar(255) DEFAULT NULL COMMENT '操作人',
  `method` varchar(255) DEFAULT NULL COMMENT '操作方法',
  `params` text COMMENT '数据',
  `msg` text COMMENT '异常信息',
  `status` varchar(1) DEFAULT NULL COMMENT '请求状态',
  `tenant_id` varchar(64) DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`operation_ip`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

/*Data for the table `sys_operation_log` */

/*Table structure for table `sys_organization` */

DROP TABLE IF EXISTS `sys_organization`;

CREATE TABLE `sys_organization` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点',
  `parent_ids` varchar(1000) DEFAULT NULL COMMENT '父节点路径',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(64) DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_organization` */

insert  into `sys_organization`(`id`,`name`,`parent_id`,`parent_ids`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`remarks`,`tenant_id`) values ('05fa0ccf85e2dac369445c927fed4ed9','西游网络',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-17 11:07:53',NULL,NULL,'0',NULL,'89013384'),('103c59b6e4dcdb4a00c4d128c431a3d5','飞廉','40288ab85b6080e1015b60996d690005','40288ab85b6080e1015b60996d690005/','4028ea815a3d2a8c015a3d2f8d2a0002','2020-01-25 21:26:56','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-26 23:25:41','0',NULL,'00000000'),('40288ab85b6080e1015b60996d690005','山海',NULL,NULL,NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-30 22:08:30','0',NULL,'00000000'),('82e352cab34c0c5d45fb048f99a1d93f','后台开发','103c59b6e4dcdb4a00c4d128c431a3d5','40288ab85b6080e1015b60996d690005/103c59b6e4dcdb4a00c4d128c431a3d5/','4028ea815a3d2a8c015a3d2f8d2a0002','2020-01-25 21:27:12',NULL,NULL,'0',NULL,'00000000'),('d269cc34a28843303a8863dde83a3d3a','山海科技',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-13 10:01:07',NULL,NULL,'0',NULL,'35798760'),('d2cae9f8eefd5c0941bf44dcb57cec5b','仓颉','40288ab85b6080e1015b60996d690005','40288ab85b6080e1015b60996d690005/','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-26 23:25:53',NULL,NULL,'0',NULL,'00000000'),('ea33ae995d2daa7f41843eeca8976c65','九州科技',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-16 09:28:50',NULL,NULL,'0',NULL,'86865558');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `code` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `usable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`code`,`is_sys`,`usable`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`tenant_id`) values ('0','总系统管理员','admin','1','1',NULL,'2017-02-13 15:52:53','4028ea815a3d2a8c015a3d2f8d2a0002','2018-10-31 21:32:43','总系统管理员','0','00000000'),('1','系统管理员','tenantAdmin','0','1',NULL,'2017-02-13 15:52:53','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-13 11:10:20','租户系统管理员','0','00000000'),('43b7e6d70640e2b577e1b2dbbdca1032','用户','user','1','1','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-17 07:37:14','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-27 10:34:39',NULL,'0','00000000'),('9e69dd6647d2b156afcd962473f05a58','山海角色','shanhairole','0','1','49cc47c9a5646525345621673dbc10fc','2019-12-17 10:56:41',NULL,NULL,NULL,'0','35798760');

/*Table structure for table `sys_role_data_rule` */

DROP TABLE IF EXISTS `sys_role_data_rule`;

CREATE TABLE `sys_role_data_rule` (
  `id` varchar(64) DEFAULT NULL COMMENT '主键',
  `data_rule_category` int(2) DEFAULT NULL COMMENT '权限类型(1:数据权限、2:接口权限)',
  `data_rule_id` varchar(64) DEFAULT NULL COMMENT '权限id',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色数据权限关联表';

/*Data for the table `sys_role_data_rule` */

insert  into `sys_role_data_rule`(`id`,`data_rule_category`,`data_rule_id`,`role_id`) values ('f8382f237f9a87f7f775ea42708a03d3',NULL,'2d1d11805de287aa9b9108350cf45eac','0'),('fb7de9d6f0e84b7d1aa81d6d358a6eaf',NULL,'dfc71dbeb4f8f15f9e00a945c177d2a6','0');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `menu_id` varchar(32) NOT NULL COMMENT '菜单编号',
  `role_id` varchar(32) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  KEY `sys_role_menu_menuid` (`menu_id`),
  KEY `sys_role_menu_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`id`,`menu_id`,`role_id`) values ('002e5ca38ba7f8b4464506d5b4b1b183','936b2acedf194ed3bfc403acc4c5aa71','0'),('00f23b57bc80b00d2170c45c58ee9e9b','ba46b8b6d27c4f0cabea1598d15cad27','43b7e6d70640e2b577e1b2dbbdca1032'),('015b457d8bb512709477f4295422b0d7','6c46f6d5f6cd4cc094cc295737c3ace6','43b7e6d70640e2b577e1b2dbbdca1032'),('027ec44978064d9074f3e1d08e18c119','46ddbbabf30445e3a75ff2294e06ec50','0'),('042b87c2ed538df4aca804ef0c719822','e49f6dfe7973326a6ed21512ee42bae0','0'),('04b057a3724b87976d2d9f851289aa9d','7811944f996a441e9b3a761b18cb88bf','43b7e6d70640e2b577e1b2dbbdca1032'),('05a969db3d97dc591f8a43c2dc23aced','79059d522a11459394c23c6f29092c41','0'),('05e45bfb8c584c0b147707aa00e99c3e','41141cd290874c76968cee0ac9932f67','0'),('0a1ed29e0367b5e15b3fd696e23697e9','27b5cf637a964a4a97b716739056c8e4','0'),('0a8c38d271b8a3d24a99e4281376ae12','64a6cd14e86f434db5bc6bd3f947398f','0'),('0a9cddc0e3917bea33c8003a3058cc65','3135bcb72d324ac8aad4a42823545570','43b7e6d70640e2b577e1b2dbbdca1032'),('0c6791bfa06fb1be8b8151525d0cbd63','91fccb99710f4f2e97567653a8ef14d6','0'),('0d702988bbb847dbb85939725681d7e1','760dd42695984c15a0db3f1e4ed0a4af','0'),('0da76037c544ce17a8cfeb37756c25f6','5534c207669f4ba3af912622a8b5fee6','0'),('0dc50ca8b941d1c2618076f1e1ade817','4d559f775fb94b20b87c22c6643b3180','0'),('0dde5fb58d32c2de50ac3c453a252dba','f219d0b6f8144f0eab326b53f3323dd7','0'),('116dd4b9c0d1edd1ef649d0744197556','86d49f3cd426463080e0ac13bdfbc28d','0'),('117eda605801189565e6b49b6299614d','df07014114924135a875782fcaf40333','0'),('119f85368c47b745d05b9cb5d19e6bd1','d50770e755564f15a32c2b798cdbb2de','0'),('133e3c275165fefbeb5caf2598b06a17','b338552c1eee4313b1a21a880df97e81','0'),('137ec8f91806ba8a1b2da39f66cfa682','afa4277041cb454ab789b55d4b4b824a','0'),('16771a91c9c3cfd7d2b67457009b0676','7230458979a149d48ff88544ce985809','0'),('19c59e80b60ba471551c016ef79fcf31','779d64b7717c4f3a99fc96ed7ccd075d','0'),('1a5f52e37ae30eb3f7ee211f82455772','df3307b6f9884a2ea9c4aa32ec0388fa','0'),('1b0ed229f6019037e0df03190fe90401','e57d4c7de46d4a12911f1c0880608fdb','1'),('1b7c677d5eef3d2d212939a924210975','b8faa3f2cdc9499e814be30e218a88f5','0'),('1ca731c3ac05db848c8226125d3b0e16','76fd71b67d784ed9bd02e320a387e834','0'),('1d7f0b2a53206f7760bda2204e5a1689','35850e938efe413f9ddcc7821225266b','0'),('1dbb146de605e5963c94682d213188a6','10dbd0f844d04bbcbc394dcdd6b9f258','0'),('1e70c2d1227314bef6a260140b7f0425','ac793681eab74d2d99e3e6d335a79826','0'),('1f86478706ae676e029334f6137d199e','2954fb967419410fb281857ec86db428','0'),('2097e8027d411b0a07a2f0abdd342e09','46ddbbabf30445e3a75ff2294e06ec50','43b7e6d70640e2b577e1b2dbbdca1032'),('22b52a619e68c22fd529b5c656f62d5b','41b543b75bcc4feca88f8b2e34c8c8c4','0'),('23d2e19907c14a2c9dac199dc9e8a52c','39883d8ee458426d8890dbc0a61dc3ac','0'),('25221df6306ebf19ac17714313dae6a3','8386bfdcf52547c1a091e71873eedfdf','0'),('276a1d7a294a7cc3eb164c6182ede96d','e052e5772bb74b4b8791d79732677eb1','0'),('27926d46d1706bb81fc1d472624379c4','50e2814c16ac4bef821cb0af6bea1e2b','0'),('296b6696d645b4fff24affb57332ba01','f38443b4da684b7d8e81614d8180021e','0'),('2a684d0fc49cfa8240299dcdd808dea4','6869b6f955594ab2a8d10b0b130120b4','43b7e6d70640e2b577e1b2dbbdca1032'),('2b1ae8527e4b8c50f477970c2d9f9593','56e87bb7ee424e6999b27cb2a4cbc96d','0'),('2bf1f1af8d84912193e6eb593f17297f','f5ea5f1f8c1d4cf1abafd1f6c4efab69','43b7e6d70640e2b577e1b2dbbdca1032'),('2c651e62e85e1888be5c6dfccdd544d7','650fa5a8ccd04deeb656321311410606','0'),('2d0bd199099db22fabe2402fb3dc67f8','79059d522a11459394c23c6f29092c41','1'),('2dc0a94ac38c6e7aff3fa07811caa688','3eaf2534601a4eac9cda4b17c333eee3','43b7e6d70640e2b577e1b2dbbdca1032'),('2dd9e4e7e62e9b75fffbfb98c72c9448','5b85cfebd56141d1a100102727395556','43b7e6d70640e2b577e1b2dbbdca1032'),('2f32f661f5456b46b209075ebd2db9b3','5a92b11ad8434ff68b588767417c6b58','0'),('2fdba9abeb9c5fa0b6812a29bf3d37ed','f38443b4da684b7d8e81614d8180021e','43b7e6d70640e2b577e1b2dbbdca1032'),('2ffc3c0c76ab67112ca108dffc0e6048','da7f94c7087b42359e34c703cd2ed30f','0'),('3068befb3c9ff66bc9170fcc46c58f32','7811944f996a441e9b3a761b18cb88bf','0'),('30d584bba3fdbe2be1ca37003ce0d264','3eaf2534601a4eac9cda4b17c333eee3','0'),('31b58ae749bf459a9047be7c53fd945e','247c9f811073431da881a8f90972e1c8','43b7e6d70640e2b577e1b2dbbdca1032'),('327004511ee0364e81b0e33d2776cd4c','83aea54a484b4bc8a19259352badaceb','0'),('341ed4c2c34c9ec6a79a3ebb98e8805d','56e87bb7ee424e6999b27cb2a4cbc96d','43b7e6d70640e2b577e1b2dbbdca1032'),('34c81a25f22cd0042f4b39966c248ff0','c5280ea2f36b44e192643c1cfd63918c','0'),('39c6e03236296d600fe12bd62ecf65f4','edf9c54876d8424b9ea7edb9b992a3a3','43b7e6d70640e2b577e1b2dbbdca1032'),('39ddd6bf55a16d642386056f7c5b2dbd','a2da339ab8014bb1a0600bd20149bbbd','0'),('3a0a8740f50edbbf834c963b631bbe41','1fa22fa16d6140ffbddb5747e33e7205','0'),('3be32b5eb58e9f258abe16f500017fbd','9c59bd5de46b48a4911047bf3307ebbc','0'),('3d4289c028b4abe264d075b0b03ad905','1c41720eeea94e59aeb2ea84b2cd3b00','0'),('3de58f860cf40aaeea00002f629e15e9','b0da410e900944aa84d3ad2a170ec006','0'),('44cc86cff25dd9d6f253951f40782632','70466fa5271d45dc99cccea0027c3dc2','0'),('472abc8d8344797e7c986f132c9b0128','dce5ce1a87e3417692a8b1225d90d121','0'),('4744bce6f573d01f5f706d77e49b14a3','edf9c54876d8424b9ea7edb9b992a3a3','0'),('4827f7a4b732c4a453e19815f80f2395','c5280ea2f36b44e192643c1cfd63918c','43b7e6d70640e2b577e1b2dbbdca1032'),('489de8e38d8bb0ba0e9a28f9251c3ebf','ac793681eab74d2d99e3e6d335a79826','43b7e6d70640e2b577e1b2dbbdca1032'),('48d4eed05195342a5e031ea2600fbe8b','40a71f551a18416a850063d42250e09f','0'),('4b0ce3339426597e6dea87364d0a1707','ef66722b109e4b44badded26ddc129ba','0'),('4bdeb7d6d49b958079d70d4030878265','6dd8f9cceaf04ce5959e961a59ab91fc','0'),('4be180c999b5eda26c7cf9f12a57329e','d50770e755564f15a32c2b798cdbb2de','43b7e6d70640e2b577e1b2dbbdca1032'),('4ca8ab5e74ede6bf16118eb3f658e15b','97194b12b19248c79336a634a0ed9ac3','0'),('4d76db89497e99feac1394c4ff1edac9','c8fdf84fa0aa4372b930ba57d0277ab9','0'),('4e4d792e78c88b2b4ac4dab9577a03d4','c97c4ff1abc5436da415047d450fdb88','43b7e6d70640e2b577e1b2dbbdca1032'),('4f023820c1c5c6eee11fce4a5c570c18','f3938743bdab4c64bfa99c5c9e5341e1','1'),('510a2bf6dff44bfaa176ed5784a14c77','a3bb826296174bb7b7bfdd0fcb2d33fc','0'),('51561197c34495bb788bd9565cd44e4f','fedca180ec4e9822d718026cd83817f4','0'),('523c588bd66ff0db29266ad1aced04eb','b8faa3f2cdc9499e814be30e218a88f5','43b7e6d70640e2b577e1b2dbbdca1032'),('52ef6925be76ea6ed272e0ec050c0bdf','93669750fdad4979b658408e13675b30','0'),('5444be4d062291cfb2d28248b6fa33c0','6e36c83436e34bfbb316058453e3205f','0'),('55246763c96cb528da44999623d22713','a9d4028655c945eba33546ff3df634e4','43b7e6d70640e2b577e1b2dbbdca1032'),('556d100d7e81f8fbacc1d94bda71e80a','9afdab469e1f4f3fab4b242a2d5679e9','0'),('55b43be3e7bdab140219069c8d969dfb','69039de89fb94c54be70543475b995ad','43b7e6d70640e2b577e1b2dbbdca1032'),('597fad0f22e68117f4b597732233b855','1307a3dd0f934efba63b2ba4b04ffd08','43b7e6d70640e2b577e1b2dbbdca1032'),('5a3b21bf00d0ae5f869b5aadf95a5a59','3f4c3063841641319d95412352db5a35','43b7e6d70640e2b577e1b2dbbdca1032'),('5b3647c2b2de3aef900e05238620c3cb','48663b3b2eb5457e8a79a6a105b8fb69','0'),('5c0c819992a9cb6363a7d4b1e887fe2c','eff0c65a539846f59b2046b279833dae','43b7e6d70640e2b577e1b2dbbdca1032'),('5d7407980bab8c748ebe2911ff780e9c','55c0e037734a4f4d803e881cd7204692','0'),('5d851277c0ecd8b0bcb8bd8e01aeffa0','4ee35f7f1db2420e82f8ce6833ba885e','0'),('61cf4f62a031859d31b278375f7b5393','0ce52312cd294c5a95ffec7e7abe0ef1','1'),('640ecba2d2f3f50b2158d370f12b5dce','4548f01cbbf0427e8bb47243d4a546e9','0'),('6549c79e080478715390d9794a549f8a','1e46d1cc27f248fb880cc887639e2e4e','0'),('65c2351124d418675b343128b630660e','760dd42695984c15a0db3f1e4ed0a4af','43b7e6d70640e2b577e1b2dbbdca1032'),('666a0d4623012114f1ff450937fb5480','653c7b79ebdf4054b3a7233ad6168d49','0'),('68e71d903e071289d0bbd745a7b107a9','498016d4913446deb6415785befd3480','0'),('6c8832bff085fb5dd330ee1d5a499ad6','69039de89fb94c54be70543475b995ad','0'),('6dc2f547e43eba7ff1c926ef79694739','d4e076ece76e4c109c794ee354133ef3','0'),('6de1740803ecf6dda452bdeedf900dee','ba46b8b6d27c4f0cabea1598d15cad27','0'),('700b856e73ebcc88a0d1d254acb6d0a0','b899735bed7744c2a27c5bf3c35a3e1e','43b7e6d70640e2b577e1b2dbbdca1032'),('71e6353ec6cc7766228fe444d07cdac3','38edc1e2843d411b99a05b721a2f778a','0'),('72fdda5a315b82f846811fe8e2226a5a','da7f94c7087b42359e34c703cd2ed30f','43b7e6d70640e2b577e1b2dbbdca1032'),('73d2fda4553a8b3d82e99addcf0c046d','608629d6bfa7461f9ca258a4393523a1','0'),('744b1465ae6f046fb7c74a704f16e372','efe69c7d51f140abbfc1c1e05975ecae','0'),('75818494dd0be009e0fac43155b0df4d','d4e076ece76e4c109c794ee354133ef3','1'),('75af8f146cffc747213e4dcfaad2a4cc','2821d2f3dc5042459a4b975e1cba929a','43b7e6d70640e2b577e1b2dbbdca1032'),('76995996d96e37b450679c3612ec8599','c7f55a648f974247bec0dd0745be6492','0'),('773c7039d5e357552ee8d1f1834f860f','9a42181d7301459b935871b921e1a89a','0'),('78203c75120b396ccb67e73437db9139','b338552c1eee4313b1a21a880df97e81','1'),('7911e602fdf03b98515964497985ccfb','9de6b62cb95e483c8e57392213a87f77','0'),('7962498500abb9dc0d1516adea6a977c','4de1c247dc8d4adfa48beb27e4e5696d','0'),('7b2a966d6f70ddae90312435deee3883','0ce52312cd294c5a95ffec7e7abe0ef1','0'),('7bcf70e2bc55e183daa6e10b9f107736','35af237befdb46b097070599470c8eed','0'),('7be113299cd5493adc0bc44e4d4c0d61','1c6cfbfc836f4c588375458bb0968c12','0'),('7dd10bb7bffab2fb6b9ff6c7ac1cf3d4','86fcadeb0950427b8a4819a4229bbd74','0'),('7f6e932e5943313a031c199bda736cd5','f5ea5f1f8c1d4cf1abafd1f6c4efab69','0'),('7f728275d2748e32e964f0a1dab68c59','936b2acedf194ed3bfc403acc4c5aa71','43b7e6d70640e2b577e1b2dbbdca1032'),('80416b5e716454e387ebb277a505ef45','3f4c3063841641319d95412352db5a35','0'),('821037c822dbc1c0ce6df573b67f40f5','d67f9a69cce040d0b28000e988a489c7','0'),('835816c59fb307d3a207484c8c714ea3','1e46d1cc27f248fb880cc887639e2e4e','1'),('86b54c4da7ef12c408872480109b7417','9fbb210970df4024bfb1e9eaaa9de6ac','0'),('89e4ca27d786b37e4700c4c4f3ce5078','ef68f37ced434f319797e3f26ef202d2','43b7e6d70640e2b577e1b2dbbdca1032'),('8a746fba2ecc3183cde9ba7c31e0f759','9a42181d7301459b935871b921e1a89a','43b7e6d70640e2b577e1b2dbbdca1032'),('8bd38248236800cf81fa68d32e7ad8a1','cdf0fe2958434b40be1fff8145cba08b','0'),('8c585250c9ddfe44f551ecc5b707d8be','4cfdb4c51e144a34957e2a2ceca7fae9','0'),('8e6c94efa87948de7ef6caba57f9f82a','57b666b69b554c8d80da32b0141776af','0'),('8ec283bbd1433c59e6b32bd44ee949f7','13dbeacf57934abe970497ed34ea6e59','0'),('8efb8d491a39495d54c2268e21c75785','df07014114924135a875782fcaf40333','43b7e6d70640e2b577e1b2dbbdca1032'),('9046fa59fa5a5e479513f64d6c444d81','f6226a63129a4141adbe6805324dabdd','0'),('91dd14300525b52962aa5ebb685bcf39','4870363dbd084cdc99840732a26d9c4a','43b7e6d70640e2b577e1b2dbbdca1032'),('92a8288944d2ab2ef004dc9bd4918672','fdb08c18a73648ddb77d2558167a764a','0'),('9384a9be112e06f50ce76dde5c8db944','6869b6f955594ab2a8d10b0b130120b4','0'),('938b6e12810dc932ba94cf7042cc35d5','e746144939314619827be86fbd3efe50','0'),('94ab78bd2b8a075a4f462fedc5b113a2','8b226abad44047b6aa2a164b441a3815','0'),('95c13db47e2b3eb0603aa5586c64bbe3','008c004de43a4ebab36deb9b9a11a790','0'),('9632585a06b27dbb75d90c0acc6965bc','ae18e571ddd44dbaa0384f685b3e357a','43b7e6d70640e2b577e1b2dbbdca1032'),('9745210e200066b2b6083f684bd2bffb','ef68f37ced434f319797e3f26ef202d2','0'),('974c2c332df32268f93fcc7e238a9787','abc8dc302b1540f69f2a8c24a5612c2a','0'),('983069b4f9c19cf24a05987c0b83e664','c8dacf03f6f34c1dad41bc05f85cc9e9','0'),('988d293f58b1132b316dd29c1e206550','26ab0c0a2cff4bf49079bc6ee3462f27','0'),('9b29e7ff7e395b9a025b2e5899def566','d4bc391e2d6b4d619435da7c37021212','43b7e6d70640e2b577e1b2dbbdca1032'),('9c963436d31a5863b24821b7433df936','86d49f3cd426463080e0ac13bdfbc28d','1'),('9e6240f0300a64389d308653e2ad8871','42cba67a7200910918ed3d6b2cf897e3','0'),('9ee7dbd143df426f726908d4f0379f36','c97c4ff1abc5436da415047d450fdb88','0'),('9f0197e2eceb758e31e1f75fe4b638fb','deca5f90b4a74a3ca243ee81a798801f','0'),('9f2c4a8445b077ce8134b333d52e5f37','bedb1eeccf294d98ba2f636365d01928','0'),('9fd69369ece87274acbf26878b0cb99f','0b73fc6442d3484ebfcc0e945916a38c','0'),('a0278eaf2d89bc8cddd9a24057389416','d4272a1fac244950acc93dac7ac1c7cf','0'),('a46c851537f19ced84e45aca340361bd','3864b314549e4a9cb9e540fba21852a3','43b7e6d70640e2b577e1b2dbbdca1032'),('a52b330a678342d858a6a966b6d58a4e','bc3c57bb7d954de7a64956e6df718fe2','0'),('a54bc53331e55c4c57b82f7c5f090c3c','203aacd2a474445d8d4fb22199a7fe40','0'),('a855a7cb4060c1ace84bc3368b340c6e','50e2814c16ac4bef821cb0af6bea1e2b','43b7e6d70640e2b577e1b2dbbdca1032'),('ab10f4e57f89d6dabcf987b9abc88443','abe099fdb4144a88b6635eea23d0bd01','0'),('ad5a884f456e6fc7b5cfd9e91288905e','41529f653db84afaaf9ef4b16845842e','0'),('afba6e68cd5244761089089b1cae4904','49e01ae88046460484d262d47fa30719','0'),('afc43a686001bb41e928b8a11f403ffc','2821d2f3dc5042459a4b975e1cba929a','0'),('b00bb0671f545e201a963da7f8966954','9c44133cf8d14addbb4b024f3515f4df','0'),('b106f2c091b2a7dfad76d2ab2aa28b4b','41b543b75bcc4feca88f8b2e34c8c8c4','43b7e6d70640e2b577e1b2dbbdca1032'),('b11a1494cbde36d5484d58500ce94df7','88b25c355bdc4a7b8b8bfdb307918eb5','0'),('b1859d4f3744cf8a3f2cb8c9280e930e','e052e5772bb74b4b8791d79732677eb1','43b7e6d70640e2b577e1b2dbbdca1032'),('b3cf3af607493a485c75a765752647dc','eff0c65a539846f59b2046b279833dae','0'),('b50ab6d0ba00e278353eb4fbbe5cf57c','6c46f6d5f6cd4cc094cc295737c3ace6','0'),('b591924e0d3dd96777ba66d8bfded3d6','be2ececee58e4f5ba7cf13ac35a51fbe','0'),('b831ff58d9189631284b17d4ae4413d4','40a71f551a18416a850063d42250e09f','1'),('b94033fc4c68dd010ece27a1c52ff5ae','f9b2cdabb11d429884a5465e754c4e06','0'),('b9a939b36b69d60ab8663f5934a76496','5b85cfebd56141d1a100102727395556','0'),('baf76765bf36e4b5ca8ff4a2a2f41013','57b666b69b554c8d80da32b0141776af','43b7e6d70640e2b577e1b2dbbdca1032'),('bb60c8f285866fec1e5103bf9bf6479a','91b33be150b3416d82ba38128590c507','0'),('bc2e6af6ff55572af03675196864906a','a3bb826296174bb7b7bfdd0fcb2d33fc','1'),('bc51f7f09852bd0cb7cb974256a045a0','8b226abad44047b6aa2a164b441a3815','43b7e6d70640e2b577e1b2dbbdca1032'),('bf7d058868fcab37f16d5942a7524dc7','608629d6bfa7461f9ca258a4393523a1','1'),('bf7ec99e952a9ea9cdc814acb719abe6','be85d873590d4a10b490bf9174c707df','0'),('c2978feeb81e8c5eebe56249255d3046','bedb1eeccf294d98ba2f636365d01928','1'),('c2d2550f77c07e4276e11debfcd0fa64','9f4f6568e9a54623b52657bcc6a6f478','0'),('c5b095baca1d09ed9087f392a6cf2923','83aea54a484b4bc8a19259352badaceb','1'),('c5c6c6f93b557ee1121714ccde5d4c5c','ee8e03adf46f4377b03e4f81176b9640','0'),('c65b7a805955c709fffd76fa0cd0c492','2eef0abf5d414d9589576c30b8202dcd','0'),('c6984f487608cb6a645e4a38108754c5','c2fa9d559e744df9971f0321e218e125','1'),('c6b526f1416b0131c15f3881106c9976','cb6f769427554df58229b65ae6038544','0'),('c6dd7958852d952a03bfff4c542d2d28','86fcadeb0950427b8a4819a4229bbd74','43b7e6d70640e2b577e1b2dbbdca1032'),('c701b877922c49dbc361d58269f90367','d1069347e4374ddaab932656e27a2772','1'),('c9a47cc1084afd6c94dc3a0fa86780d7','153c8847203a4df5bd8ff08e20fb6e3b','0'),('ca09b157b1c4d0134dda876d4e2d892e','e6d19f6b484e4fdb8b05ed34457fd594','0'),('ca40e4691aa5bd67b0546d7fe7ad5b57','83da63a6359e494cbbaffa678274ec19','0'),('ca8ace58b384cee3e3d78064b33a0dcf','ef66722b109e4b44badded26ddc129ba','1'),('cadce7b864b31602646c7502cb91e827','4b96d6bd8bf542ca888cdb64b1006c69','0'),('cb0307977ef413728cbc43dfc2281f5c','467202a879c0455d948185ad52ee871b','0'),('cd5ce56fb63d723e8ca5f449a2b880ca','deca5f90b4a74a3ca243ee81a798801f','43b7e6d70640e2b577e1b2dbbdca1032'),('ceaeba0b6b3788469cd0a38ed7512905','c2fa9d559e744df9971f0321e218e125','0'),('cfa6bb24244224e0b9266ace55f42623','9c59bd5de46b48a4911047bf3307ebbc','43b7e6d70640e2b577e1b2dbbdca1032'),('d20170917664bee34ce7525f2496cb7b','8402e9bc967144d0988386a54c912548','0'),('d3a69063728f10ebba1f6d9cacdc4412','10dbd0f844d04bbcbc394dcdd6b9f258','43b7e6d70640e2b577e1b2dbbdca1032'),('d3cce3a074d6a0e298e2c1e2f4b8a750','dd2b6238d3304fcf926b9e389175ad42','0'),('d460e06b436f132945835971a31c4212','afa4277041cb454ab789b55d4b4b824a','43b7e6d70640e2b577e1b2dbbdca1032'),('d5f3315a60c2ac445f4cc82831d1d6ee','abe099fdb4144a88b6635eea23d0bd01','43b7e6d70640e2b577e1b2dbbdca1032'),('d6523968d12be3861d85703746735630','3135bcb72d324ac8aad4a42823545570','0'),('d9d289cfc90680fbab99a5498988b63a','9f8897e23c5b4c4e924ec983404834a6','0'),('da70842d765fec7b518b425121c4a23c','ae18e571ddd44dbaa0384f685b3e357a','0'),('da939e74d23802cee8597c6cbedaf607','f3938743bdab4c64bfa99c5c9e5341e1','0'),('dc1ebad98d128bbd982de5f7b48f485e','247c9f811073431da881a8f90972e1c8','0'),('dd2b6295d24ded12a95a6823f85cc36f','e57d4c7de46d4a12911f1c0880608fdb','0'),('de0306286a50eab258f4dcdda4065b23','d1069347e4374ddaab932656e27a2772','0'),('de22ee4a7a2d21d37c127168510efa85','8a13a95a71b948208d31acb590112440','0'),('dec39226eb1659b68625b52276e4ebe2','39883d8ee458426d8890dbc0a61dc3ac','43b7e6d70640e2b577e1b2dbbdca1032'),('deca7caf3227e22c7a907bf87948ef76','1c6cfbfc836f4c588375458bb0968c12','43b7e6d70640e2b577e1b2dbbdca1032'),('e0eebc56110d1bb2540b1be852b8de28','26ab0c0a2cff4bf49079bc6ee3462f27','43b7e6d70640e2b577e1b2dbbdca1032'),('e27966d430bd8ed3272177473a2e3f2a','42cba67a7200910918ed3d6b2cf897e3','43b7e6d70640e2b577e1b2dbbdca1032'),('e3b477130a4abcd175d62a61e0749f44','5a7fb16c87f745dfb3185be1e65673a5','0'),('e4e7321b20467cd399681b5f13c95fe1','c782a018e34947aeae172a1fc05506a6','1'),('e5b8fe5933cf3de77a83e0f9d0bd5a5c','ea3bf0ab4bd042e0be6416680f66e19c','0'),('e770901bfc399bed391164ae9d179718','83da63a6359e494cbbaffa678274ec19','1'),('e7d05fc19ab7eff957922de7c891a87d','9f4f6568e9a54623b52657bcc6a6f478','43b7e6d70640e2b577e1b2dbbdca1032'),('e8464975315a63cb05361344dd8dbf63','21c83bb40edd4a9e95a2392f4ed8394a','43b7e6d70640e2b577e1b2dbbdca1032'),('e85b00def994e65fadc51616332c05f4','bb2e6d8d88cb4685a33a27823dd09a30','43b7e6d70640e2b577e1b2dbbdca1032'),('e9a2c0fa643419108033bfbf55ebcc6d','e198425d45ba6b6e31a6db4b7763f716','0'),('e9facb27f90bc299fbff5c4af6baa8d4','b899735bed7744c2a27c5bf3c35a3e1e','0'),('ea5e27f825ead3040839e6a615806931','c7f55a648f974247bec0dd0745be6492','43b7e6d70640e2b577e1b2dbbdca1032'),('eab5844da1215138909f8280c69c5d02','cdf0fe2958434b40be1fff8145cba08b','1'),('eac73eb6093e692ae742434af33f3c19','9afdab469e1f4f3fab4b242a2d5679e9','43b7e6d70640e2b577e1b2dbbdca1032'),('eb5f0801b439e286284992e6c1bf35fc','1307a3dd0f934efba63b2ba4b04ffd08','0'),('ebd5a3820e8781d6254afbd6daf9bb61','4870363dbd084cdc99840732a26d9c4a','0'),('ed6a98a0c91aa27c04c280073e97fbd2','ee8e03adf46f4377b03e4f81176b9640','43b7e6d70640e2b577e1b2dbbdca1032'),('eed3a622cdf0c0017ac2d55f13e85c8d','bb2e6d8d88cb4685a33a27823dd09a30','0'),('efcabd4605fa2cd768506f9b9d7df7c0','86f65f1677184cc5b92201bbb63618d7','0'),('f0457a713dd12dc5bf2d548ce57cbc10','699fbeee7c914b619485f259f83a2e6d','0'),('f0c5a615c1bf1b02f80b44593efe6c8d','8402e9bc967144d0988386a54c912548','1'),('f3f8aad3cfa90130ad626828d00849cb','87c10320fb46431e8e2900d45d9f6dad','0'),('f540d6b0be8c071fb59938769ffeca6f','3b980e49ec4d4d208eec8f4dd433ca6c','0'),('f69f6c5e656258e17b1dc0db952f6b0d','c782a018e34947aeae172a1fc05506a6','0'),('f7c992d2358eebf740613c2d8b78a215','a9d4028655c945eba33546ff3df634e4','0'),('f7d3fed46c8d7105cfa277411bce57a6','21c83bb40edd4a9e95a2392f4ed8394a','0'),('f7db72414c47cbaad2e862570bdc097c','41529f653db84afaaf9ef4b16845842e','1'),('f9e07a9846fb8b6cfbeb3fa653106529','9406154d48144fe0971880bb9d79f3a8','0'),('fb7c3c5eae5e2076b0e878668423aef1','d4bc391e2d6b4d619435da7c37021212','0'),('ff50808774b32343e0d75bff2566bd80','3864b314549e4a9cb9e540fba21852a3','0');

/*Table structure for table `sys_sessions` */

DROP TABLE IF EXISTS `sys_sessions`;

CREATE TABLE `sys_sessions` (
  `id` varchar(200) NOT NULL DEFAULT '',
  `session` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_sessions` */

/*Table structure for table `sys_tenant` */

DROP TABLE IF EXISTS `sys_tenant`;

CREATE TABLE `sys_tenant` (
  `id` varchar(64) DEFAULT NULL COMMENT 'id主键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标识',
  `remarks` text COMMENT '备注',
  `tenant_id` varchar(64) DEFAULT NULL COMMENT '租户标识',
  `contact` varchar(64) NOT NULL COMMENT '联系人',
  `phone` varchar(64) NOT NULL COMMENT '电话',
  `name` varchar(64) NOT NULL COMMENT '租户名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户管理';

/*Data for the table `sys_tenant` */

insert  into `sys_tenant`(`id`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`remarks`,`tenant_id`,`contact`,`phone`,`name`) values ('487396777bf30416ee1ff5c22543512f','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-29 14:43:01','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-26 22:46:44','0',NULL,'00000000','boss','13111111111','山海科技'),('01a16c43838c176f59a8d152a071bff0','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-16 09:28:50',NULL,NULL,'0',NULL,'86865558','boss2','13311111111','九州科技'),('833590525a5386670b8396bc94b06b6c','4028ea815a3d2a8c015a3d2f8d2a0002','2019-12-17 11:08:08','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-26 18:41:37','0',NULL,'89013384','boss3','13311111111','西游网络');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `realname` varchar(255) NOT NULL COMMENT '真实名称',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `portrait` varchar(250) DEFAULT NULL COMMENT '头像',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(4) DEFAULT NULL COMMENT '系统用户的状态',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `organization_id` varchar(64) DEFAULT NULL COMMENT '所属组织ID',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`realname`,`username`,`portrait`,`password`,`salt`,`email`,`phone`,`status`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`create_by`,`organization_id`,`tenant_id`) values ('126657d9b6648cbd188cee3cbf713981','西游网络','xiyounet',NULL,'b5f276cc02f2b4b828504d158b6b2bb8','54a4380140d57ee1eb3b4c81c1b9a088',NULL,'13311111111',1,NULL,NULL,NULL,NULL,'0',NULL,'05fa0ccf85e2dac369445c927fed4ed9','89013384'),('13e929eff9596c22361e10e33e0b8234','白泽','baize',NULL,'45ab3cf06ef22078d03da623c6abdd98','8757269b239fc7bb838c2a4452817f90',NULL,'13211111111',1,NULL,NULL,NULL,NULL,NULL,NULL,'103c59b6e4dcdb4a00c4d128c431a3d5','00000000'),('4028ea815a3d2a8c015a3d2f8d2a0002','系统管理员','admin',NULL,'af3d2d2a4b2ae7c5b4f7784c8e0b8179','c1b32c88e4b29ff89add0324a51217e5','wind@sunseagear.com','13111111111',1,'2019-04-16 01:08:19','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-22 17:16:28',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002','40288ab85b6080e1015b60996d690005','00000000'),('44452a3f185f8fc03b63c75c5ba59fd9','九州科技','jiuzhoutech',NULL,'0bd15c3258ad1329e8c6bb84c8311b26','89a29974c8d5b72f4a75e3f072664ca9',NULL,'13311111111',1,NULL,NULL,NULL,NULL,'0',NULL,'ea33ae995d2daa7f41843eeca8976c65','86865558'),('c91a986a797a8b69d6e13e94e2c78740','帝江(hong)','dihong',NULL,'e4de1b719437fa086a5a6ddcdd2ddf93','add431e9e8c53d930c8ea771399b9f55',NULL,'13311111111',1,NULL,NULL,NULL,NULL,NULL,NULL,'d2cae9f8eefd5c0941bf44dcb57cec5b','00000000');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `user_id` varchar(32) NOT NULL COMMENT '用户编号',
  `role_id` varchar(32) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  KEY `sys_user_role_userid` (`user_id`),
  KEY `sys_user_role_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`user_id`,`role_id`) values ('43cdc2781bc2154e763d64ef6078a60b','126657d9b6648cbd188cee3cbf713981','1'),('59c47b010a09e4bd13b0d21992b994ea','c91a986a797a8b69d6e13e94e2c78740','1'),('5f7e5539f6b121438ce7dd9fbbfb556f','13e929eff9596c22361e10e33e0b8234','43b7e6d70640e2b577e1b2dbbdca1032'),('74b68ec1366bfcb15c6cab1930b31d6f','bb84e7d458644f9f81e9df4eecc39bd0','0'),('773d63b1c99449bd85fac6c270b8bd16','4028ea815a3d2a8c015a3d2f8d2a0002','0'),('773d63b1c99449bd85fac6c270b8bd17','49cc47c9a5646525345621673dbc10fc','1'),('d5b38ea853808238e57d8d0ba2062caa','bf5a446c42964ad6a42b2bbb04604190','0'),('e19d2e05ba915f9ce597712709d79b52','44452a3f185f8fc03b63c75c5ba59fd9','1'),('eb9201d6b80638c1c575a4ebb50f7707','092b7c63dfdd903132858bd100bb02c5','0');

/*Table structure for table `task_schedule_job` */

DROP TABLE IF EXISTS `task_schedule_job`;

CREATE TABLE `task_schedule_job` (
  `id` varchar(32) NOT NULL,
  `cron_expression` varchar(255) NOT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) NOT NULL COMMENT '任务调用的方法名',
  `method_params` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `misfire_policy` varchar(4) DEFAULT NULL COMMENT '执行策略',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `execute_class` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  `load_way` varchar(1) DEFAULT NULL COMMENT '加载任务方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_schedule_job` */

insert  into `task_schedule_job`(`id`,`cron_expression`,`method_name`,`method_params`,`misfire_policy`,`is_concurrent`,`description`,`update_by`,`create_date`,`job_status`,`job_group`,`update_date`,`create_by`,`execute_class`,`job_name`,`load_way`) values ('4ff760aa5e1042158f760fc41a225691','0/10 * * * * ?','run','','3','0','测试任务',NULL,NULL,'0','sys',NULL,NULL,'smsTask','短信修复发送定时任务','1'),('9d3449fe77f395da4e832a366d8c5e20','0 0 0 * * ?','run','','','1','',NULL,NULL,'1','system',NULL,NULL,'logTask','日志清除','1'),('b57316ae58234829b5602687180dfa28','0/10 * * * * ?','run','',NULL,'0','',NULL,NULL,'0','sys',NULL,NULL,'emailTask','邮件修复发送定时任务','1');

/*Table structure for table `task_schedule_job_log` */

DROP TABLE IF EXISTS `task_schedule_job_log`;

CREATE TABLE `task_schedule_job_log` (
  `id` varchar(32) NOT NULL COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `execute_class` varchar(500) DEFAULT NULL,
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(2) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` text COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

/*Data for the table `task_schedule_job_log` */

insert  into `task_schedule_job_log`(`id`,`job_name`,`job_group`,`execute_class`,`method_name`,`method_params`,`job_message`,`status`,`exception_info`,`create_time`) values ('173e53e17eb74ca9ba0706738ede3646','日志清除','system','logTask','run','','日志清除 总共耗时：1548毫秒','-1',NULL,'2020-05-24 00:39:50'),('230735755d6cdf98fca603c6e8392b05','日志清除','system','logTask','run','','日志清除运行开始!','0',NULL,'2020-05-26 00:00:00'),('41b0a078ca4d1eb9746f14c9b8b5549f','日志清除','system','logTask','run','','日志清除 总共耗时：1154毫秒','1',NULL,'2020-05-26 00:00:01'),('5c3b44456b1143c41e44a601f8532249','日志清除','system','logTask','run','','日志清除 总共耗时：923毫秒','1',NULL,'2020-05-30 00:00:57'),('7f79b7dc1eb07bdb5f2a8a32431424bf','日志清除','system','logTask','run','','日志清除运行开始!','0',NULL,'2020-05-30 00:00:56'),('941736b870b20bce0fc54e9f7e0310a1','日志清除','system','logTask','run','','日志清除运行开始!','0',NULL,'2020-05-24 00:39:48'),('97b922286aeb3121e3f0777361430005','日志清除','system','logTask','run','','日志清除 总共耗时：589毫秒','1',NULL,'2020-05-27 11:12:36'),('d25243e0bab08a169f0fe79af1acfaf0','日志清除','system','logTask','run','','日志清除运行开始!','0',NULL,'2020-05-27 11:12:35');

/*Table structure for table `test_car` */

DROP TABLE IF EXISTS `test_car`;

CREATE TABLE `test_car` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `code` varchar(100) DEFAULT NULL COMMENT '品牌代码',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典分组';

/*Data for the table `test_car` */

insert  into `test_car`(`id`,`name`,`code`,`remarks`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`tenant_id`) values ('1e53e2812aa34d9abd6bc7ded070e6ee','哈弗','002','阿三大声道','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-26 23:45:59','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:24:19','0','00000000'),('79e50f7cc7164e159b6128110ecf28bd','比亚迪','001','','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-26 23:37:16',NULL,NULL,'0','00000000');

/*Table structure for table `test_car_model` */

DROP TABLE IF EXISTS `test_car_model`;

CREATE TABLE `test_car_model` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `car_id` varchar(32) DEFAULT NULL COMMENT '汽车',
  `name` varchar(100) DEFAULT NULL COMMENT '型号名',
  `value` varchar(100) DEFAULT NULL COMMENT '型号代码',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_car_model_car_id` (`car_id`),
  CONSTRAINT `test_car_model_car_id` FOREIGN KEY (`car_id`) REFERENCES `test_car` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典';

/*Data for the table `test_car_model` */

insert  into `test_car_model`(`id`,`car_id`,`name`,`value`,`sort`,`remarks`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`) values ('2d8de06fc6774d159fa4ea3758a3758e','1e53e2812aa34d9abd6bc7ded070e6ee','h6','001',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 00:10:45','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 00:11:45','0'),('327f8ce636d3413c94ac9f44f0839b83','79e50f7cc7164e159b6128110ecf28bd','汉','003',3,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:49:23','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:51:33','0'),('77077b6f6cd54557acecf62b81979984','79e50f7cc7164e159b6128110ecf28bd','唐','001',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:49:02',NULL,NULL,'0'),('c6505ba95a304c47895307fea735e42d','1e53e2812aa34d9abd6bc7ded070e6ee','wey7','002',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 00:14:08',NULL,NULL,'0'),('c8374120bda044118580df60710174bd','1e53e2812aa34d9abd6bc7ded070e6ee','h9','003',1,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:44:05','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:48:44','0'),('f4dfd96542574a8ba3dc3be9880ca4d6','79e50f7cc7164e159b6128110ecf28bd','王朝','002',2,'','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:49:10','4028ea815a3d2a8c015a3d2f8d2a0002','2019-04-27 11:51:38','0');

/*Table structure for table `test_expand_table` */

DROP TABLE IF EXISTS `test_expand_table`;

CREATE TABLE `test_expand_table` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `shop` varchar(100) NOT NULL COMMENT '所属店铺',
  `category` varchar(100) DEFAULT NULL COMMENT '商品分类',
  `address` text COMMENT '店铺地址',
  `description` longtext COMMENT '商品描述',
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `organization_id` varchar(64) DEFAULT NULL COMMENT '组织ID',
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  `image` text COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test_expand_table` */

insert  into `test_expand_table`(`id`,`name`,`shop`,`category`,`address`,`description`,`tag`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`create_by`,`organization_id`,`tenant_id`,`image`) values ('08c7fa3112fab09a3d9007c3883e9caa','平板电脑','3C卖场','电子产品','智能手机卖场','大屏幕大尺寸，大有可为','大屏，语音助手','2020-05-30 22:19:35','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-30 22:19:52',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002',NULL,'00000000',NULL),('50a5699064ac49aeae0dbf50e8172f1d','智能手机','手机卖场','电子产品','阿斯达s\'d','最新的智能手机，最新的配置，最低的价格','手机','2019-05-04 14:02:11','4028ea815a3d2a8c015a3d2f8d2a0002','2020-05-30 22:18:12',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002','4028ea815a452f69015a45346f7b0001','00000000',NULL);

/*Table structure for table `test_table` */

DROP TABLE IF EXISTS `test_table`;

CREATE TABLE `test_table` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) NOT NULL COMMENT '作者',
  `type` varchar(250) DEFAULT NULL COMMENT '类型',
  `level` varchar(100) DEFAULT NULL COMMENT '密码',
  `content` longtext COMMENT '内容',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `readings` int(11) DEFAULT NULL COMMENT '阅读数',
  `publish_date` datetime DEFAULT NULL COMMENT '发布时间',
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_test_table_title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test_table` */

insert  into `test_table`(`id`,`title`,`author`,`type`,`level`,`content`,`status`,`tag`,`readings`,`publish_date`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`create_by`,`tenant_id`) values ('11af6bf658691874d4762267241a71e1','testuser','testuser','china','1','&lt;p&gt;testuser&lt;/p&gt;','published',NULL,NULL,'2020-01-26 03:05:00','2020-01-26 03:06:03',NULL,NULL,NULL,'0','bf5a446c42964ad6a42b2bbb04604190','00000000'),('2e12735f8b05b9d65338a393145c7f98','bbbb','bbbb','china','1','&lt;p&gt;asdas&amp;nbsp;&lt;/p&gt;','published',NULL,NULL,'2020-01-26 03:05:00','2020-01-26 03:05:31',NULL,NULL,NULL,'0','092b7c63dfdd903132858bd100bb02c5','00000000'),('7c059874514549459efe9da842b0ad5f','admin3','aaa','CN','1','&lt;p&gt;&lt;img class=&quot;wscnph&quot; src=&quot;http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558169005633.png&quot; /&gt;&lt;img class=&quot;wscnph&quot; src=&quot;http://harbouross.oss-cn-beijing.aliyuncs.com/2019/05/18/1558169051041.png&quot; /&gt;dfasdfdsf&lt;/p&gt;','published',NULL,NULL,'2019-04-03 00:37:00','2019-04-24 12:32:38','4028ea815a3d2a8c015a3d2f8d2a0002','2019-06-14 18:07:10',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002','00000000'),('9accf9bdc02f48a48facc321370541de','admin2','aa','US','1','aaaa','published',NULL,NULL,'2019-04-24 00:02:00','2019-04-23 23:20:23','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-25 19:07:07',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002','00000000'),('d0188d2e7d65e839f135ff5d476b7f10','西游网络文章','悟空','china','1','&lt;p&gt;阿斯顿发斯蒂芬&lt;/p&gt;','published',NULL,NULL,'2019-12-17 11:20:00','2019-12-17 11:23:42',NULL,NULL,NULL,'0','126657d9b6648cbd188cee3cbf713981','89013384'),('db4eaa99fb4642f3b3b1fbfc49713f58','admin1','bb84e7d458644f9f81e9df4eecc39bd0','china','1','&lt;p&gt;adasdasds&lt;/p&gt;\n&lt;p&gt;&lt;img class=&quot;wscnph&quot; src=&quot;data:image/png;base64,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&quot; /&gt;&lt;/p&gt;','published',NULL,NULL,'2019-06-13 00:00:00','2019-06-14 18:12:40','4028ea815a3d2a8c015a3d2f8d2a0002','2020-02-04 02:08:04',NULL,'0','4028ea815a3d2a8c015a3d2f8d2a0002','00000000'),('f67a8d7433ec8b4f7355191118845dc9','山海文章','九尾狐','china','3','&lt;p&gt;阿斯顿发送到，好像忘了标签&lt;/p&gt;','draft',NULL,NULL,'2019-12-17 11:25:00','2019-12-17 11:26:11',NULL,NULL,NULL,'0','49cc47c9a5646525345621673dbc10fc','35798760');

/*Table structure for table `test_tree_and_table` */

DROP TABLE IF EXISTS `test_tree_and_table`;

CREATE TABLE `test_tree_and_table` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `type` varchar(250) DEFAULT NULL COMMENT '类型',
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `area_id` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test_tree_and_table` */

insert  into `test_tree_and_table`(`id`,`name`,`type`,`tag`,`area_id`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`create_by`) values ('030181840a5f449daad2a78c5c6b0d76','市委','市委','','a25c56ceb3134e25abcd3f11241067b9',NULL,NULL,NULL,NULL,NULL,NULL),('c6201bd0a6534309a512575c3094ba7f','城管','城管','阿达是否','0246a2a1667c453fac27fa4fd118c18b',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `test_tree_table` */

DROP TABLE IF EXISTS `test_tree_table`;

CREATE TABLE `test_tree_table` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `geocoding` varchar(32) DEFAULT NULL COMMENT '是否叶子节点',
  `postal_code` varchar(32) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点',
  `parent_ids` varchar(1000) DEFAULT NULL COMMENT '父节点路径',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(64) NOT NULL DEFAULT '00000000' COMMENT '租户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test_tree_table` */

insert  into `test_tree_table`(`id`,`name`,`geocoding`,`postal_code`,`parent_id`,`parent_ids`,`create_by`,`create_date`,`update_by`,`update_date`,`del_flag`,`remarks`,`tenant_id`) values ('0246a2a1667c453fac27fa4fd118c18b','陕西','001001','710000',NULL,NULL,'4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 23:33:26','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-26 18:26:54','0','陕西','00000000'),('06cdf012b088513f11aeede4549ed121','河西','1123','123123','e26e805cfeeb2b772db3924fddcbc807','0246a2a1667c453fac27fa4fd118c18b/e26e805cfeeb2b772db3924fddcbc807/','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-13 12:02:21',NULL,NULL,'0',NULL,'00000000'),('9db9219474f6519913b3acd2f21554d4','雁塔区','1111','11111','a25c56ceb3134e25abcd3f11241067b9','0246a2a1667c453fac27fa4fd118c18b/a25c56ceb3134e25abcd3f11241067b9/','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-13 11:14:23',NULL,NULL,'0',NULL,'00000000'),('a25c56ceb3134e25abcd3f11241067b9','西安','2123165','123123','0246a2a1667c453fac27fa4fd118c18b','0246a2a1667c453fac27fa4fd118c18b/','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 23:38:28','4028ea815a3d2a8c015a3d2f8d2a0002','2019-05-02 23:49:15','0','西安','00000000'),('e26e805cfeeb2b772db3924fddcbc807','咸阳','11111','22222','0246a2a1667c453fac27fa4fd118c18b','0246a2a1667c453fac27fa4fd118c18b/','4028ea815a3d2a8c015a3d2f8d2a0002','2019-11-13 11:38:14',NULL,NULL,'0','咸阳','00000000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
