/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoxuexizhushou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoxuexizhushou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoxuexizhushou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaoxuexizhushou/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaoxuexizhushou/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaoxuexizhushou/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kecheng_types','资源类型',1,'资源类型1',NULL,NULL,'2022-04-20 09:46:26'),(2,'kecheng_types','资源类型',2,'资源类型2',NULL,NULL,'2022-04-20 09:46:26'),(3,'kecheng_types','资源类型',3,'资源类型3',NULL,NULL,'2022-04-20 09:46:26'),(7,'sex_types','性别',1,'男',NULL,NULL,'2022-04-20 09:46:26'),(8,'sex_types','性别',2,'女',NULL,NULL,'2022-04-20 09:46:26'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-20 09:46:26'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-20 09:46:26'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-20 09:46:26'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-20 09:46:26'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-20 09:46:26'),(17,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2022-04-20 09:46:26'),(18,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2022-04-20 09:46:26'),(19,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2022-04-20 09:46:26'),(20,'huida_types','批改状态',1,'未批改',NULL,NULL,'2022-04-20 09:46:26'),(21,'huida_types','批改状态',2,'已批改',NULL,NULL,'2022-04-20 09:46:26'),(31,'jiaoanxinxi_types','教案类型',1,'教案类型1',NULL,NULL,'2022-04-20 09:46:26'),(32,'jiaoanxinxi_types','教案类型',2,'教案类型2',NULL,NULL,'2022-04-20 09:46:26'),(33,'jiaoanxinxi_types','教案类型',3,'教案类型3',NULL,NULL,'2022-04-20 09:46:26'),(34,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-20 09:46:26'),(35,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-20 09:46:26'),(36,'banji_types','班级',3,'班级3',NULL,NULL,'2022-04-20 09:46:26');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',NULL,1,'2022-04-20 17:05:07','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,'帖子标题2',NULL,3,NULL,'发布内容2',NULL,1,'2022-04-20 17:05:07','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',NULL,1,'2022-04-20 17:05:07','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,'帖子标题4',NULL,1,NULL,'发布内容4',NULL,1,'2022-04-20 17:05:07','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',NULL,1,'2022-04-20 17:05:07','2022-04-20 17:05:07','2022-04-20 17:05:07'),(9,NULL,NULL,NULL,1,'123',5,2,'2022-04-20 20:08:50',NULL,'2022-04-20 20:08:50'),(10,NULL,1,NULL,NULL,'321',5,2,'2022-04-20 20:21:12',NULL,'2022-04-20 20:21:12');

/*Table structure for table `huida` */

DROP TABLE IF EXISTS `huida`;

CREATE TABLE `huida` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `huifu_file` varchar(200) DEFAULT NULL COMMENT '回答文件',
  `huida_types` int(11) DEFAULT NULL COMMENT '批改状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='回答';

/*Data for the table `huida` */

insert  into `huida`(`id`,`zuoye_id`,`yonghu_id`,`huifu_file`,`huida_types`,`create_time`) values (1,1,3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,'2022-04-20 17:05:07'),(2,2,2,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,'2022-04-20 17:05:07'),(3,3,3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,'2022-04-20 17:05:07'),(4,4,1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,'2022-04-20 17:05:07'),(5,5,1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',2,'2022-04-20 17:05:07'),(20,2,1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/1650455629227.xls',2,'2022-04-20 19:53:50'),(21,1,1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/1650457299667.doc',1,'2022-04-20 20:21:40');

/*Table structure for table `jiaoanxinxi` */

DROP TABLE IF EXISTS `jiaoanxinxi`;

CREATE TABLE `jiaoanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoanxinxi_name` varchar(200) DEFAULT NULL COMMENT '教案标题 Search111 ',
  `jiaoanxinxi_types` int(11) DEFAULT NULL COMMENT '教案类型 Search111',
  `jiaoanxinxi_file` varchar(200) DEFAULT NULL COMMENT '课件下载',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `jiaoanxinxi_content` text COMMENT '教案详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教案信息';

/*Data for the table `jiaoanxinxi` */

insert  into `jiaoanxinxi`(`id`,`jiaoanxinxi_name`,`jiaoanxinxi_types`,`jiaoanxinxi_file`,`jiaoshi_id`,`jiaoanxinxi_content`,`insert_time`,`create_time`) values (1,'教案标题1',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',2,'教案详情1','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,'教案标题2',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',3,'教案详情2','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,'教案标题3',3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,'教案详情3','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,'教案标题4',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',3,'教案详情4','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,'教案标题5',3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',2,'教案详情5','2022-04-20 17:05:07','2022-04-20 17:05:07');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'a1','123456','教师姓名1','http://localhost:8080/gaoxiaoxuexizhushou/upload/jiaoshi1.jpg',2,'17703786901','1@qq.com',1,'2022-04-20 17:05:07'),(2,'a2','123456','教师姓名2','http://localhost:8080/gaoxiaoxuexizhushou/upload/jiaoshi2.jpg',2,'17703786902','2@qq.com',1,'2022-04-20 17:05:07'),(3,'a3','123456','教师姓名3','http://localhost:8080/gaoxiaoxuexizhushou/upload/jiaoshi3.jpg',1,'17703786903','3@qq.com',1,'2022-04-20 17:05:07');

/*Table structure for table `jiaoshi_liuyan` */

DROP TABLE IF EXISTS `jiaoshi_liuyan`;

CREATE TABLE `jiaoshi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaoshi_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='教师评论';

/*Data for the table `jiaoshi_liuyan` */

insert  into `jiaoshi_liuyan`(`id`,`jiaoshi_id`,`yonghu_id`,`jiaoshi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2022-04-20 17:05:07','回复信息1','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,3,1,'评论内容2','2022-04-20 17:05:07','回复信息2','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,3,3,'评论内容3','2022-04-20 17:05:07','回复信息3','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,3,2,'评论内容4','2022-04-20 17:05:07','回复信息4','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,2,1,'评论内容5','2022-04-20 17:05:07','回复信息5','2022-04-20 17:05:07','2022-04-20 17:05:07'),(6,3,1,'评论内容或者问题','2022-04-20 20:16:42','',NULL,'2022-04-20 20:16:42');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '资源标题 Search111 ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '资源类型 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '资源图片 ',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '资源视频 ',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课件下载',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '资源教师',
  `kecheng_content` text COMMENT '资源详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_types`,`kecheng_photo`,`kecheng_video`,`kecheng_file`,`banji_types`,`jiaoshi_id`,`kecheng_content`,`insert_time`,`create_time`) values (1,'资源标题1',3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/kecheng1.jpg','http://localhost:8080/gaoxiaoxuexizhushou/upload/video.mp4','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,2,'资源详情1','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,'资源标题2',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/kecheng2.jpg','http://localhost:8080/gaoxiaoxuexizhushou/upload/video.mp4','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',3,2,'资源详情2','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,'资源标题3',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/kecheng3.jpg','http://localhost:8080/gaoxiaoxuexizhushou/upload/video.mp4','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',1,3,'资源详情3','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,'资源标题4',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/kecheng4.jpg','http://localhost:8080/gaoxiaoxuexizhushou/upload/video.mp4','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',2,3,'资源详情4','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,'资源标题5',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/kecheng5.jpg','http://localhost:8080/gaoxiaoxuexizhushou/upload/video.mp4','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar',3,3,'资源详情5','2022-04-20 17:05:07','2022-04-20 17:05:07');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='课程信息评论';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2022-04-20 17:05:07','回复信息1','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,2,1,'评论内容2','2022-04-20 17:05:07','回复信息2','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,3,1,'评论内容3','2022-04-20 17:05:07','回复信息3','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,4,1,'评论内容4','2022-04-20 17:05:07','回复信息4','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,5,2,'评论内容5','2022-04-20 17:05:07','回复信息5','2022-04-20 17:05:07','2022-04-20 17:05:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/news1.jpg','2022-04-20 17:05:07','公告详情1','2022-04-20 17:05:07'),(2,'公告标题2',2,'http://localhost:8080/gaoxiaoxuexizhushou/upload/news2.jpg','2022-04-20 17:05:07','公告详情2','2022-04-20 17:05:07'),(3,'公告标题3',3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/news3.jpg','2022-04-20 17:05:07','公告详情3','2022-04-20 17:05:07'),(4,'公告标题4',3,'http://localhost:8080/gaoxiaoxuexizhushou/upload/news4.jpg','2022-04-20 17:05:07','公告详情4','2022-04-20 17:05:07'),(5,'公告标题5',1,'http://localhost:8080/gaoxiaoxuexizhushou/upload/news5.jpg','2022-04-20 17:05:07','公告详情5','2022-04-20 17:05:07');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (12,1,'a1','yonghu','学生','45xnqthdj1in3c1ms1140kor7w6pb48a','2022-04-20 17:20:51','2022-04-20 21:16:54'),(13,1,'a1','jiaoshi','教师','m5krjbzsekdbnq0ygmrj3zivrkayn70f','2022-04-20 19:57:02','2022-04-20 21:09:30'),(14,1,'admin','users','管理员','jn8mobmddblqrnr7pmr8dsi1xwj7m9kc','2022-04-20 20:08:32','2022-04-20 21:08:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`banji_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','学生姓名1','http://localhost:8080/gaoxiaoxuexizhushou/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,1,'2022-04-20 17:05:07'),(2,'a2','123456','学生姓名2','http://localhost:8080/gaoxiaoxuexizhushou/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',2,1,'2022-04-20 17:05:07'),(3,'a3','123456','学生姓名3','http://localhost:8080/gaoxiaoxuexizhushou/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',3,1,'2022-04-20 17:05:07');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业唯一编号 Search111 ',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称 Search111 ',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 ',
  `zuoye_types` int(11) NOT NULL COMMENT '作业类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业发布时间 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_content` text COMMENT '作业详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`jiaoshi_id`,`zuoye_uuid_number`,`zuoye_name`,`zuoye_photo`,`banji_types`,`zuoye_types`,`insert_time`,`zuoye_file`,`zuoye_content`,`create_time`) values (1,3,'16504455079098','作业名称1','http://localhost:8080/gaoxiaoxuexizhushou/upload/zuoye1.jpg',3,1,'2022-04-20 17:05:07','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar','作业详情1','2022-04-20 17:05:07'),(2,1,'16504455079093','作业名称2','http://localhost:8080/gaoxiaoxuexizhushou/upload/zuoye2.jpg',3,1,'2022-04-20 17:05:07','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar','作业详情2','2022-04-20 17:05:07'),(3,3,'16504455079098','作业名称3','http://localhost:8080/gaoxiaoxuexizhushou/upload/zuoye3.jpg',3,2,'2022-04-20 17:05:07','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar','作业详情3','2022-04-20 17:05:07'),(4,2,'165044550790920','作业名称4','http://localhost:8080/gaoxiaoxuexizhushou/upload/zuoye4.jpg',1,3,'2022-04-20 17:05:07','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar','作业详情4','2022-04-20 17:05:07'),(5,1,'165044550790912','作业名称5','http://localhost:8080/gaoxiaoxuexizhushou/upload/zuoye5.jpg',1,2,'2022-04-20 17:05:07','http://localhost:8080/gaoxiaoxuexizhushou/upload/file.rar','作业详情5','2022-04-20 17:05:07');

/*Table structure for table `zuoye_liuyan` */

DROP TABLE IF EXISTS `zuoye_liuyan`;

CREATE TABLE `zuoye_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuoye_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='作业评论';

/*Data for the table `zuoye_liuyan` */

insert  into `zuoye_liuyan`(`id`,`zuoye_id`,`yonghu_id`,`zuoye_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评论内容1','2022-04-20 17:05:07','回复信息1','2022-04-20 17:05:07','2022-04-20 17:05:07'),(2,2,1,'评论内容2','2022-04-20 17:05:07','回复信息2','2022-04-20 17:05:07','2022-04-20 17:05:07'),(3,3,1,'评论内容3','2022-04-20 17:05:07','回复信息3','2022-04-20 17:05:07','2022-04-20 17:05:07'),(4,4,3,'评论内容4','2022-04-20 17:05:07','回复信息4','2022-04-20 17:05:07','2022-04-20 17:05:07'),(5,5,3,'评论内容5','2022-04-20 17:05:07','回复信息5','2022-04-20 17:05:07','2022-04-20 17:05:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
