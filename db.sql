/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssma5pf3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssma5pf3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssma5pf3`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (91,'2021-04-19 00:33:50',1,1,'提问1','回复1',1),(92,'2021-04-19 00:33:50',2,2,'提问2','回复2',2),(93,'2021-04-19 00:33:50',3,3,'提问3','回复3',3),(94,'2021-04-19 00:33:50',4,4,'提问4','回复4',4),(95,'2021-04-19 00:33:50',5,5,'提问5','回复5',5),(96,'2021-04-19 00:33:50',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssma5pf3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssma5pf3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssma5pf3/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `diaobanshenqing` */

DROP TABLE IF EXISTS `diaobanshenqing`;

CREATE TABLE `diaobanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhibanshijian` varchar(200) DEFAULT NULL COMMENT '值班时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `diaobanyuanyin` longtext COMMENT '调班原因',
  `diaobanshijian` varchar(200) DEFAULT NULL COMMENT '调班时间',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='调班申请';

/*Data for the table `diaobanshenqing` */

insert  into `diaobanshenqing`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`keshi`,`zhicheng`,`touxiang`,`zhibanshijian`,`lianxidianhua`,`diaobanyuanyin`,`diaobanshijian`,`shenqingshijian`,`sfsh`,`shhf`,`userid`) values (81,'2021-04-19 00:33:50','医生','医生姓名1','科室1','职称1','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang1.jpg','值班时间1','13823888881','调班原因1','调班时间1','2021-04-19 00:33:50','是','',1),(82,'2021-04-19 00:33:50','医生','医生姓名2','科室2','职称2','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang2.jpg','值班时间2','13823888882','调班原因2','调班时间2','2021-04-19 00:33:50','是','',2),(83,'2021-04-19 00:33:50','医生','医生姓名3','科室3','职称3','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang3.jpg','值班时间3','13823888883','调班原因3','调班时间3','2021-04-19 00:33:50','是','',3),(84,'2021-04-19 00:33:50','医生','医生姓名4','科室4','职称4','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang4.jpg','值班时间4','13823888884','调班原因4','调班时间4','2021-04-19 00:33:50','是','',4),(85,'2021-04-19 00:33:50','医生','医生姓名5','科室5','职称5','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang5.jpg','值班时间5','13823888885','调班原因5','调班时间5','2021-04-19 00:33:50','是','',5),(86,'2021-04-19 00:33:50','医生','医生姓名6','科室6','职称6','http://localhost:8080/ssma5pf3/upload/diaobanshenqing_touxiang6.jpg','值班时间6','13823888886','调班原因6','调班时间6','2021-04-19 00:33:50','是','',6);

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshixinxi` varchar(200) DEFAULT NULL COMMENT '科室信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshixinxi`) values (31,'2021-04-19 00:33:50','科室信息1'),(32,'2021-04-19 00:33:50','科室信息2'),(33,'2021-04-19 00:33:50','科室信息3'),(34,'2021-04-19 00:33:50','科室信息4'),(35,'2021-04-19 00:33:50','科室信息5'),(36,'2021-04-19 00:33:50','科室信息6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-19 00:33:50','标题1','简介1','http://localhost:8080/ssma5pf3/upload/news_picture1.jpg','内容1'),(102,'2021-04-19 00:33:50','标题2','简介2','http://localhost:8080/ssma5pf3/upload/news_picture2.jpg','内容2'),(103,'2021-04-19 00:33:50','标题3','简介3','http://localhost:8080/ssma5pf3/upload/news_picture3.jpg','内容3'),(104,'2021-04-19 00:33:50','标题4','简介4','http://localhost:8080/ssma5pf3/upload/news_picture4.jpg','内容4'),(105,'2021-04-19 00:33:50','标题5','简介5','http://localhost:8080/ssma5pf3/upload/news_picture5.jpg','内容5'),(106,'2021-04-19 00:33:50','标题6','简介6','http://localhost:8080/ssma5pf3/upload/news_picture6.jpg','内容6');

/*Table structure for table `paibanxinxi` */

DROP TABLE IF EXISTS `paibanxinxi`;

CREATE TABLE `paibanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhibanshijian` varchar(200) DEFAULT NULL COMMENT '值班时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='排班信息';

/*Data for the table `paibanxinxi` */

insert  into `paibanxinxi`(`id`,`addtime`,`zhibanshijian`) values (51,'2021-04-19 00:33:50','值班时间1'),(52,'2021-04-19 00:33:50','值班时间2'),(53,'2021-04-19 00:33:50','值班时间3'),(54,'2021-04-19 00:33:50','值班时间4'),(55,'2021-04-19 00:33:50','值班时间5'),(56,'2021-04-19 00:33:50','值班时间6');

/*Table structure for table `quxiaoyuyue` */

DROP TABLE IF EXISTS `quxiaoyuyue`;

CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='取消预约';

/*Data for the table `quxiaoyuyue` */

insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`yishenggonghao`,`yishengxingming`,`touxiang`,`quxiaoyuanyin`,`zhanghao`,`xingming`,`userid`) values (71,'2021-04-19 00:33:50','预约编号1','医生工号1','医生姓名1','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang1.jpg','取消原因1','账号1','姓名1',1),(72,'2021-04-19 00:33:50','预约编号2','医生工号2','医生姓名2','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang2.jpg','取消原因2','账号2','姓名2',2),(73,'2021-04-19 00:33:50','预约编号3','医生工号3','医生姓名3','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang3.jpg','取消原因3','账号3','姓名3',3),(74,'2021-04-19 00:33:50','预约编号4','医生工号4','医生姓名4','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang4.jpg','取消原因4','账号4','姓名4',4),(75,'2021-04-19 00:33:50','预约编号5','医生工号5','医生姓名5','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang5.jpg','取消原因5','账号5','姓名5',5),(76,'2021-04-19 00:33:50','预约编号6','医生工号6','医生姓名6','http://localhost:8080/ssma5pf3/upload/quxiaoyuyue_touxiang6.jpg','取消原因6','账号6','姓名6',6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 00:33:50');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yishengxiangqing` longtext COMMENT '医生详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`keshi`,`zhicheng`,`xingbie`,`touxiang`,`lianxidianhua`,`yishengxiangqing`) values (21,'2021-04-19 00:33:50','医生1','123456','医生姓名1','科室1','职称1','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang1.jpg','13823888881','医生详情1'),(22,'2021-04-19 00:33:50','医生2','123456','医生姓名2','科室2','职称2','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang2.jpg','13823888882','医生详情2'),(23,'2021-04-19 00:33:50','医生3','123456','医生姓名3','科室3','职称3','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang3.jpg','13823888883','医生详情3'),(24,'2021-04-19 00:33:50','医生4','123456','医生姓名4','科室4','职称4','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang4.jpg','13823888884','医生详情4'),(25,'2021-04-19 00:33:50','医生5','123456','医生姓名5','科室5','职称5','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang5.jpg','13823888885','医生详情5'),(26,'2021-04-19 00:33:50','医生6','123456','医生姓名6','科室6','职称6','男','http://localhost:8080/ssma5pf3/upload/yisheng_touxiang6.jpg','13823888886','医生详情6');

/*Table structure for table `yishengxinxi` */

DROP TABLE IF EXISTS `yishengxinxi`;

CREATE TABLE `yishengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhibanshijian` varchar(200) DEFAULT NULL COMMENT '值班时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yishengxiangqing` longtext COMMENT '医生详情',
  `yuyuexuzhi` longtext COMMENT '预约须知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='医生信息';

/*Data for the table `yishengxinxi` */

insert  into `yishengxinxi`(`id`,`addtime`,`yishenggonghao`,`yishengxingming`,`keshi`,`zhicheng`,`touxiang`,`zhibanshijian`,`lianxidianhua`,`yishengxiangqing`,`yuyuexuzhi`) values (41,'2021-04-19 00:33:50','医生工号1','医生姓名1','科室1','职称1','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang1.jpg','值班时间1','13823888881','医生详情1','预约须知1'),(42,'2021-04-19 00:33:50','医生工号2','医生姓名2','科室2','职称2','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang2.jpg','值班时间2','13823888882','医生详情2','预约须知2'),(43,'2021-04-19 00:33:50','医生工号3','医生姓名3','科室3','职称3','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang3.jpg','值班时间3','13823888883','医生详情3','预约须知3'),(44,'2021-04-19 00:33:50','医生工号4','医生姓名4','科室4','职称4','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang4.jpg','值班时间4','13823888884','医生详情4','预约须知4'),(45,'2021-04-19 00:33:50','医生工号5','医生姓名5','科室5','职称5','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang5.jpg','值班时间5','13823888885','医生详情5','预约须知5'),(46,'2021-04-19 00:33:50','医生工号6','医生姓名6','科室6','职称6','http://localhost:8080/ssma5pf3/upload/yishengxinxi_touxiang6.jpg','值班时间6','13823888886','医生详情6','预约须知6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`dizhi`,`zhaopian`) values (11,'2021-04-19 00:33:50','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','地址1','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-19 00:33:50','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','地址2','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-19 00:33:50','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','地址3','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-19 00:33:50','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','地址4','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-19 00:33:50','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','地址5','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-19 00:33:50','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','地址6','http://localhost:8080/ssma5pf3/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `yuyuexinxi` */

DROP TABLE IF EXISTS `yuyuexinxi`;

CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) NOT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhibanshijian` varchar(200) DEFAULT NULL COMMENT '值班时间',
  `yuyuexuzhi` longtext COMMENT '预约须知',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='预约信息';

/*Data for the table `yuyuexinxi` */

insert  into `yuyuexinxi`(`id`,`addtime`,`yuyuebianhao`,`yishenggonghao`,`yishengxingming`,`keshi`,`zhicheng`,`touxiang`,`zhibanshijian`,`yuyuexuzhi`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-19 00:33:50','预约编号1','医生工号1','医生姓名1','科室1','职称1','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang1.jpg','值班时间1','预约须知1','账号1','姓名1','是','',1),(62,'2021-04-19 00:33:50','预约编号2','医生工号2','医生姓名2','科室2','职称2','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang2.jpg','值班时间2','预约须知2','账号2','姓名2','是','',2),(63,'2021-04-19 00:33:50','预约编号3','医生工号3','医生姓名3','科室3','职称3','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang3.jpg','值班时间3','预约须知3','账号3','姓名3','是','',3),(64,'2021-04-19 00:33:50','预约编号4','医生工号4','医生姓名4','科室4','职称4','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang4.jpg','值班时间4','预约须知4','账号4','姓名4','是','',4),(65,'2021-04-19 00:33:50','预约编号5','医生工号5','医生姓名5','科室5','职称5','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang5.jpg','值班时间5','预约须知5','账号5','姓名5','是','',5),(66,'2021-04-19 00:33:50','预约编号6','医生工号6','医生姓名6','科室6','职称6','http://localhost:8080/ssma5pf3/upload/yuyuexinxi_touxiang6.jpg','值班时间6','预约须知6','账号6','姓名6','是','',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
