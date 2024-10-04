/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot7w3d0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot7w3d0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot7w3d0`;

/*Table structure for table `cepingjieguofenxi` */

DROP TABLE IF EXISTS `cepingjieguofenxi`;

CREATE TABLE `cepingjieguofenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `ceshishijuan` varchar(200) DEFAULT NULL COMMENT '测试试卷',
  `ceshichengji` varchar(200) DEFAULT NULL COMMENT '测试成绩',
  `cepingjieguofenxi` longtext COMMENT '测评结果分析',
  `ceshiriqi` date DEFAULT NULL COMMENT '测试日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289320585 DEFAULT CHARSET=utf8 COMMENT='测评结果分析';

/*Data for the table `cepingjieguofenxi` */

insert  into `cepingjieguofenxi`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`ceshishijuan`,`ceshichengji`,`cepingjieguofenxi`,`ceshiriqi`) values (51,'2021-03-09 11:34:29','学生号1','学生姓名1','测试试卷1','测试成绩1','测评结果分析1','2021-03-09'),(52,'2021-03-09 11:34:29','学生号2','学生姓名2','测试试卷2','测试成绩2','测评结果分析2','2021-03-09'),(53,'2021-03-09 11:34:29','学生号3','学生姓名3','测试试卷3','测试成绩3','测评结果分析3','2021-03-09'),(54,'2021-03-09 11:34:29','学生号4','学生姓名4','测试试卷4','测试成绩4','测评结果分析4','2021-03-09'),(55,'2021-03-09 11:34:29','学生号5','学生姓名5','测试试卷5','测试成绩5','测评结果分析5','2021-03-09'),(56,'2021-03-09 11:34:29','学生号6','学生姓名6','测试试卷6','测试成绩6','测评结果分析6','2021-03-09'),(1615289320584,'2021-03-09 19:28:39','学生1','学生姓名1','心理测试','75','sdgsdsfgsg','2021-03-09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot7w3d0/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot7w3d0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot7w3d0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289399179 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1615289399178,'2021-03-09 19:29:58','心理测试',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289491242 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1615289440836,'2021-03-09 19:30:40',1615289399178,'心理测试','sdfsdfsdfsdgg','[{\"text\":\"A.sd\",\"code\":\"A\"},{\"text\":\"B.sdff\",\"code\":\"B\"},{\"text\":\"C.ssd\",\"code\":\"C\"}]',3,'B','fgdfgg',0,1),(1615289491241,'2021-03-09 19:31:30',1615289399178,'心理测试','sdfgjhgdfdgh','[{\"text\":\"A.cxv\",\"code\":\"A\"},{\"text\":\"B.xb\",\"code\":\"B\"},{\"text\":\"C.xccb\",\"code\":\"C\"}]',3,'A','sdgsfgdfgdg',0,2);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289562277 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1615289547284,'2021-03-09 19:32:26',11,NULL,1615289399178,'心理测试',1615289440836,'sdfsdfsdfsdgg','[{\"text\":\"A.sd\",\"code\":\"A\"},{\"text\":\"B.sdff\",\"code\":\"B\"},{\"text\":\"C.ssd\",\"code\":\"C\"}]',3,'B','fgdfgg',0,'A'),(1615289562276,'2021-03-09 19:32:41',11,NULL,1615289399178,'心理测试',1615289491241,'sdfgjhgdfdgh','[{\"text\":\"A.cxv\",\"code\":\"A\"},{\"text\":\"B.xb\",\"code\":\"B\"},{\"text\":\"C.xccb\",\"code\":\"C\"}]',3,'A','sdgsfgdfgdg',3,'A');

/*Table structure for table `fudaoyuyue` */

DROP TABLE IF EXISTS `fudaoyuyue`;

CREATE TABLE `fudaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289621019 DEFAULT CHARSET=utf8 COMMENT='辅导预约';

/*Data for the table `fudaoyuyue` */

insert  into `fudaoyuyue`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`shoujihaoma`,`yuyueshijian`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`) values (31,'2021-03-09 11:34:29','学生号1','学生姓名1','手机号码1','2021-03-09 11:34:29','教师工号1','教师姓名1','是',''),(32,'2021-03-09 11:34:29','学生号2','学生姓名2','手机号码2','2021-03-09 11:34:29','教师工号2','教师姓名2','是',''),(33,'2021-03-09 11:34:29','学生号3','学生姓名3','手机号码3','2021-03-09 11:34:29','教师工号3','教师姓名3','是',''),(34,'2021-03-09 11:34:29','学生号4','学生姓名4','手机号码4','2021-03-09 11:34:29','教师工号4','教师姓名4','是',''),(35,'2021-03-09 11:34:29','学生号5','学生姓名5','手机号码5','2021-03-09 11:34:29','教师工号5','教师姓名5','是',''),(36,'2021-03-09 11:34:29','学生号6','学生姓名6','手机号码6','2021-03-09 11:34:29','教师工号6','教师姓名6','是',''),(1615289621018,'2021-03-09 19:33:40','学生1','学生姓名1','13823888881','2021-03-11 08:00:00','教师1','教师姓名1','是',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`touxiang`,`xingbie`,`lianxifangshi`,`youxiang`,`shenfenzhenghao`) values (21,'2021-03-09 11:34:29','教师1','123456','教师姓名1','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang1.jpg','男','13823888881','773890001@qq.com','440300199101010001'),(22,'2021-03-09 11:34:29','教师2','123456','教师姓名2','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang2.jpg','男','13823888882','773890002@qq.com','440300199202020002'),(23,'2021-03-09 11:34:29','教师3','123456','教师姓名3','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang3.jpg','男','13823888883','773890003@qq.com','440300199303030003'),(24,'2021-03-09 11:34:29','教师4','123456','教师姓名4','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang4.jpg','男','13823888884','773890004@qq.com','440300199404040004'),(25,'2021-03-09 11:34:29','教师5','123456','教师姓名5','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang5.jpg','男','13823888885','773890005@qq.com','440300199505050005'),(26,'2021-03-09 11:34:29','教师6','123456','教师姓名6','http://localhost:8080/springboot7w3d0/upload/jiaoshi_touxiang6.jpg','男','13823888886','773890006@qq.com','440300199606060006');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-03-09 11:34:29',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-09 11:34:29',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-09 11:34:29',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-09 11:34:29',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-09 11:34:29',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-09 11:34:29',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-09 11:34:29','标题1','简介1','http://localhost:8080/springboot7w3d0/upload/news_picture1.jpg','内容1'),(102,'2021-03-09 11:34:29','标题2','简介2','http://localhost:8080/springboot7w3d0/upload/news_picture2.jpg','内容2'),(103,'2021-03-09 11:34:29','标题3','简介3','http://localhost:8080/springboot7w3d0/upload/news_picture3.jpg','内容3'),(104,'2021-03-09 11:34:29','标题4','简介4','http://localhost:8080/springboot7w3d0/upload/news_picture4.jpg','内容4'),(105,'2021-03-09 11:34:29','标题5','简介5','http://localhost:8080/springboot7w3d0/upload/news_picture5.jpg','内容5'),(106,'2021-03-09 11:34:29','标题6','简介6','http://localhost:8080/springboot7w3d0/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,13,'学生3','xuesheng','学生','2znv9xgowgrnncrd12e4kvrhpkcn8sop','2021-03-09 11:54:37','2021-03-09 12:54:38'),(2,11,'学生1','xuesheng','学生','iaa3g8vkb0ugq35y1glqy1ywnkg8pt1h','2021-03-09 19:25:12','2021-03-09 20:34:24'),(3,21,'教师1','jiaoshi','管理员','dpbukavevw2aisy45xbdf8huz89rob7m','2021-03-09 19:27:32','2021-03-09 20:33:57'),(4,1,'abo','users','管理员','62vxd73ik9i912ln40l25evo83zsfkfb','2021-03-09 19:34:58','2021-03-09 20:34:59');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 11:34:29');

/*Table structure for table `xinlijiankangxuexi` */

DROP TABLE IF EXISTS `xinlijiankangxuexi`;

CREATE TABLE `xinlijiankangxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289375050 DEFAULT CHARSET=utf8 COMMENT='心理健康学习';

/*Data for the table `xinlijiankangxuexi` */

insert  into `xinlijiankangxuexi`(`id`,`addtime`,`wenzhangbiaoti`,`tupian`,`wenzhangneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (61,'2021-03-09 11:34:29','文章标题1','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian1.jpg','文章内容1','2021-03-09','教师工号1','教师姓名1'),(62,'2021-03-09 11:34:29','文章标题2','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian2.jpg','文章内容2','2021-03-09','教师工号2','教师姓名2'),(63,'2021-03-09 11:34:29','文章标题3','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian3.jpg','文章内容3','2021-03-09','教师工号3','教师姓名3'),(64,'2021-03-09 11:34:29','文章标题4','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian4.jpg','文章内容4','2021-03-09','教师工号4','教师姓名4'),(65,'2021-03-09 11:34:29','文章标题5','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian5.jpg','文章内容5','2021-03-09','教师工号5','教师姓名5'),(66,'2021-03-09 11:34:29','文章标题6','http://localhost:8080/springboot7w3d0/upload/xinlijiankangxuexi_tupian6.jpg','文章内容6','2021-03-09','教师工号6','教师姓名6'),(1615289375049,'2021-03-09 19:29:34','心理健康学习','http://localhost:8080/springboot7w3d0/upload/1615289366298.jpg','<p>sdgsdfdsdf</p>','2021-03-09','教师1','教师姓名1');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xueshenghao`,`mima`,`xueshengxingming`,`touxiang`,`xingbie`,`shoujihaoma`,`youxiang`,`shenfenzhenghao`) values (11,'2021-03-09 11:34:29','学生1','123456','学生姓名1','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang1.jpg','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-03-09 11:34:29','学生2','123456','学生姓名2','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang2.jpg','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-03-09 11:34:29','学生3','123456','学生姓名3','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang3.jpg','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-03-09 11:34:29','学生4','123456','学生姓名4','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang4.jpg','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-03-09 11:34:29','学生5','123456','学生姓名5','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang5.jpg','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-03-09 11:34:29','学生6','123456','学生姓名6','http://localhost:8080/springboot7w3d0/upload/xuesheng_touxiang6.jpg','男','13823888886','773890006@qq.com','440300199606060006');

/*Table structure for table `xueshengxinxi` */

DROP TABLE IF EXISTS `xueshengxinxi`;

CREATE TABLE `xueshengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xinliwentibeizhu` longtext COMMENT '心理问题备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615289280528 DEFAULT CHARSET=utf8 COMMENT='学生信息';

/*Data for the table `xueshengxinxi` */

insert  into `xueshengxinxi`(`id`,`addtime`,`xueshenghao`,`xueshengxingming`,`xingbie`,`shoujihaoma`,`shenfenzhenghao`,`xinliwentibeizhu`) values (41,'2021-03-09 11:34:29','学生号1','学生姓名1','性别1','手机号码1','身份证号1','心理问题备注1'),(42,'2021-03-09 11:34:29','学生号2','学生姓名2','性别2','手机号码2','身份证号2','心理问题备注2'),(43,'2021-03-09 11:34:29','学生号3','学生姓名3','性别3','手机号码3','身份证号3','心理问题备注3'),(44,'2021-03-09 11:34:29','学生号4','学生姓名4','性别4','手机号码4','身份证号4','心理问题备注4'),(45,'2021-03-09 11:34:29','学生号5','学生姓名5','性别5','手机号码5','身份证号5','心理问题备注5'),(46,'2021-03-09 11:34:29','学生号6','学生姓名6','性别6','手机号码6','身份证号6','心理问题备注6'),(1615289280527,'2021-03-09 19:28:00','学生1','学生姓名1','男','13823888881','440300199101010001','dfggdgdfg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
