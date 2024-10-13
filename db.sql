/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zxsguanliyuyue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zxsguanliyuyue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zxsguanliyuyue`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'在线咨询','2023-03-24 17:32:18',NULL,NULL,2,1,'2023-03-24 17:32:19'),(2,1,NULL,NULL,'回复23123123','2023-03-24 17:33:42',NULL,2,'2023-03-24 17:33:43');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (103,'zixishi_types','自习室类型',1,'自习室类型1',NULL,NULL,'2023-03-24 16:57:57'),(104,'zixishi_types','自习室类型',2,'自习室类型2',NULL,NULL,'2023-03-24 16:57:57'),(105,'zixishi_types','自习室类型',3,'自习室类型3',NULL,NULL,'2023-03-24 16:57:57'),(106,'zixishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-24 16:57:57'),(107,'zixishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-24 16:57:57'),(108,'zixishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-24 16:57:57'),(109,'zixishi_order_types','订单类型',101,'已预约',NULL,NULL,'2023-03-24 16:57:57'),(110,'zixishi_order_types','订单类型',102,'已取消',NULL,NULL,'2023-03-24 16:57:57'),(111,'zixishi_order_types','订单类型',103,'已完成',NULL,NULL,'2023-03-24 16:57:57'),(112,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-24 16:57:57'),(113,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-24 16:57:57'),(114,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-24 16:57:57'),(115,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-24 16:57:57'),(116,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-24 16:57:58'),(117,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-24 16:57:58'),(118,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-24 16:57:58'),(119,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-24 16:57:58'),(120,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-24 16:57:58'),(121,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-24 16:57:58'),(122,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-24 16:57:58');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',254,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(2,'帖子标题2',1,NULL,'发布内容2',34,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(3,'帖子标题3',2,NULL,'发布内容3',191,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(4,'帖子标题4',3,NULL,'发布内容4',284,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(5,'帖子标题5',2,NULL,'发布内容5',120,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(6,'帖子标题6',1,NULL,'发布内容6',44,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(7,'帖子标题7',1,NULL,'发布内容7',263,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(8,'帖子标题8',3,NULL,'发布内容8',408,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(9,'帖子标题9',2,NULL,'发布内容9',51,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(10,'帖子标题10',3,NULL,'发布内容10',358,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(11,'帖子标题11',2,NULL,'发布内容11',388,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(12,'帖子标题12',3,NULL,'发布内容12',421,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(13,'帖子标题13',1,NULL,'发布内容13',398,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(14,'帖子标题14',1,NULL,'发布内容14',112,1,'2023-03-24 16:58:05','2023-03-24 16:58:05','2023-03-24 16:58:05'),(15,NULL,1,NULL,'123123123',14,2,'2023-03-24 17:31:55',NULL,'2023-03-24 17:31:55'),(16,NULL,NULL,1,'论坛回复',14,2,'2023-03-24 17:33:55',NULL,'2023-03-24 17:33:55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-24 16:58:05','公告详情1','2023-03-24 16:58:05'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-24 16:58:05','公告详情2','2023-03-24 16:58:05'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-24 16:58:05','公告详情3','2023-03-24 16:58:05'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-24 16:58:05','公告详情4','2023-03-24 16:58:05'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-24 16:58:05','公告详情5','2023-03-24 16:58:05'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-24 16:58:05','公告详情6','2023-03-24 16:58:05'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-24 16:58:05','公告详情7','2023-03-24 16:58:05'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-24 16:58:05','公告详情8','2023-03-24 16:58:05'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-24 16:58:05','公告详情9','2023-03-24 16:58:05'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-24 16:58:05','公告详情10','2023-03-24 16:58:05'),(11,'公告标题11',1,'upload/news11.jpg','2023-03-24 16:58:05','公告详情11','2023-03-24 16:58:05'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-24 16:58:05','公告详情12','2023-03-24 16:58:05'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-24 16:58:05','公告详情13','2023-03-24 16:58:05'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-24 16:58:05','公告详情14','2023-03-24 16:58:05');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','lc3utui3iam2kbp77vlksaxawlykkl2v','2023-03-24 17:16:11','2023-03-24 18:30:24'),(2,1,'admin','users','管理员','78q3kltlr34ai4kz30d3pxxhqp8tznjf','2023-03-24 17:27:27','2023-03-24 18:33:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-24 16:57:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001',2,1,'2023-03-24 16:58:05'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002',1,1,'2023-03-24 16:58:05'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003',2,1,'2023-03-24 16:58:05');

/*Table structure for table `zixishi` */

DROP TABLE IF EXISTS `zixishi`;

CREATE TABLE `zixishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zixishi_name` varchar(200) DEFAULT NULL COMMENT '自习室标题 Search111 ',
  `zixishi_photo` varchar(200) DEFAULT NULL COMMENT '自习室照片',
  `zixishi_types` int(11) DEFAULT NULL COMMENT '自习室类型 Search111',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `zixishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `zixishi_content` longtext COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='自习室信息';

/*Data for the table `zixishi` */

insert  into `zixishi`(`id`,`zixishi_name`,`zixishi_photo`,`zixishi_types`,`zuowei_number`,`zan_number`,`cai_number`,`zixishi_delete`,`zixishi_content`,`create_time`) values (1,'自习室标题1','upload/zixishi1.jpg',2,20,22,13,1,'详情1','2023-03-24 16:58:05'),(2,'自习室标题2','upload/zixishi2.jpg',1,20,163,125,1,'详情2','2023-03-24 16:58:05'),(3,'自习室标题3','upload/zixishi3.jpg',1,20,425,474,1,'详情3','2023-03-24 16:58:05'),(4,'自习室标题4','upload/zixishi4.jpg',2,20,378,96,1,'详情4','2023-03-24 16:58:05'),(5,'自习室标题5','upload/zixishi5.jpg',3,20,264,40,1,'详情5','2023-03-24 16:58:05'),(6,'自习室标题6','upload/zixishi6.jpg',3,20,418,459,1,'详情6','2023-03-24 16:58:05'),(7,'自习室标题7','upload/zixishi7.jpg',2,20,288,473,1,'详情7','2023-03-24 16:58:05'),(8,'自习室标题8','upload/zixishi1.jpg',3,20,234,334,1,'详情8','2023-03-24 16:58:05'),(9,'自习室标题9','upload/zixishi2.jpg',3,20,61,29,1,'详情9','2023-03-24 16:58:05'),(10,'自习室标题10','upload/zixishi3.jpg',1,20,427,98,1,'详情10','2023-03-24 16:58:05'),(11,'自习室标题11','upload/zixishi4.jpg',1,20,154,98,1,'详情11','2023-03-24 16:58:05'),(12,'自习室标题12','upload/zixishi5.jpg',1,20,268,227,1,'详情12','2023-03-24 16:58:05'),(13,'自习室标题13','upload/zixishi6.jpg',2,20,161,258,1,'详情13','2023-03-24 16:58:05'),(14,'自习室标题14','upload/zixishi7.jpg',1,20,247,282,1,'详情14','2023-03-24 16:58:05');

/*Table structure for table `zixishi_collection` */

DROP TABLE IF EXISTS `zixishi_collection`;

CREATE TABLE `zixishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zixishi_id` int(11) DEFAULT NULL COMMENT '自习室',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zixishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='自习室收藏';

/*Data for the table `zixishi_collection` */

insert  into `zixishi_collection`(`id`,`zixishi_id`,`yonghu_id`,`zixishi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(2,2,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(3,3,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(4,4,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(5,5,1,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(6,6,2,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(7,7,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(8,8,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(9,9,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(10,10,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(11,11,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(13,13,3,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(14,14,1,1,'2023-03-24 16:58:05','2023-03-24 16:58:05'),(15,11,1,2,'2023-03-24 17:31:39','2023-03-24 17:31:39'),(16,11,1,1,'2023-03-24 17:31:43','2023-03-24 17:31:43');

/*Table structure for table `zixishi_liuyan` */

DROP TABLE IF EXISTS `zixishi_liuyan`;

CREATE TABLE `zixishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zixishi_id` int(11) DEFAULT NULL COMMENT '自习室',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zixishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='自习室留言';

/*Data for the table `zixishi_liuyan` */

insert  into `zixishi_liuyan`(`id`,`zixishi_id`,`yonghu_id`,`zixishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-24 16:58:05','回复信息1','2023-03-24 16:58:05','2023-03-24 16:58:05'),(2,2,2,'留言内容2','2023-03-24 16:58:05','回复信息2','2023-03-24 16:58:05','2023-03-24 16:58:05'),(3,3,2,'留言内容3','2023-03-24 16:58:05','回复信息3','2023-03-24 16:58:05','2023-03-24 16:58:05'),(4,4,2,'留言内容4','2023-03-24 16:58:05','回复信息4','2023-03-24 16:58:05','2023-03-24 16:58:05'),(5,5,1,'留言内容5','2023-03-24 16:58:05','回复信息5','2023-03-24 16:58:05','2023-03-24 16:58:05'),(6,6,3,'留言内容6','2023-03-24 16:58:05','回复信息6','2023-03-24 16:58:05','2023-03-24 16:58:05'),(7,7,1,'留言内容7','2023-03-24 16:58:05','回复信息7','2023-03-24 16:58:05','2023-03-24 16:58:05'),(8,8,1,'留言内容8','2023-03-24 16:58:05','回复信息8','2023-03-24 16:58:05','2023-03-24 16:58:05'),(9,9,3,'留言内容9','2023-03-24 16:58:05','回复信息9','2023-03-24 16:58:05','2023-03-24 16:58:05'),(10,10,2,'留言内容10','2023-03-24 16:58:05','回复信息10','2023-03-24 16:58:05','2023-03-24 16:58:05'),(11,11,1,'留言内容11','2023-03-24 16:58:05','回复信息11','2023-03-24 16:58:05','2023-03-24 16:58:05'),(12,12,3,'留言内容12','2023-03-24 16:58:05','回复信息12','2023-03-24 16:58:05','2023-03-24 16:58:05'),(13,13,2,'留言内容13','2023-03-24 16:58:05','回复信息13','2023-03-24 16:58:05','2023-03-24 16:58:05'),(14,14,3,'留言内容14','2023-03-24 16:58:05','回复信息14留言回复2123123','2023-03-24 17:34:13','2023-03-24 16:58:05');

/*Table structure for table `zixishi_order` */

DROP TABLE IF EXISTS `zixishi_order`;

CREATE TABLE `zixishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zixishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `zixishi_id` int(11) DEFAULT NULL COMMENT '自习室',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zixishi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '预定的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '预定日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订座订单';

/*Data for the table `zixishi_order` */

insert  into `zixishi_order`(`id`,`zixishi_order_uuid_number`,`zixishi_id`,`yonghu_id`,`zixishi_order_types`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1679649720873',13,1,103,'6,7','2023-03-24','2023-03-24 17:22:01','2023-03-24 17:22:01'),(2,'1679650256500',11,1,102,'4,5,6','2023-03-24','2023-03-24 17:30:57','2023-03-24 17:30:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
