-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: welove_gw
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(99) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '原图片',
  `position` tinyint(4) NOT NULL DEFAULT '1' COMMENT '所处位置：1首页 2下载APP二码....',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除 1正常 2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `new_window` tinyint(4) DEFAULT '0' COMMENT '链接是否在新窗口打开？',
  `img_mobile` varchar(100) DEFAULT '' COMMENT '手机上图片(这个没用)',
  `word` varchar(100) DEFAULT '广告图上文字',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='广告(所有图片设置)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (51,'logo','','/upload/ad/20171227/65815a51295c54fc2816e18c03c1f329.png',1,1,1514196477,1514342474,0,'','广告图上文字'),(52,'首页图1－背景','','/upload/ad/20171227/1f4cc5ac4b64a2db8780f6bc02acf292.jpg',2,1,1514342533,1514342533,0,'','广告图上文字'),(53,'首页图1－手机','','/upload/ad/20171227/0ab4fd1e599a53b6f870111f2d1cd311.png',3,1,1514342737,1514342737,0,'','广告图上文字'),(54,'首页图1－美工字','','/upload/ad/20171227/1be76a2496cdf68e64a6bd12eef6ca01.png',4,1,1514344955,1514344955,0,'','广告图上文字'),(55,'','','/upload/ad/20171227/8d82d28db85650e5b784bb97de6d2adc.png',5,1,1514344990,1514344990,0,'','广告图上文字'),(56,'首页图2－背景','','/upload/ad/20171227/15304f7be76d9430d19463d1d55c1ff2.jpg',6,1,1514346050,1514346050,0,'','广告图上文字'),(57,'首页图2－美工字','','/upload/ad/20171227/1a5093678af021600c68d1c3420a5cb0.png',7,1,1514346076,1514346076,0,'','广告图上文字'),(58,'首页图3－背景','','/upload/ad/20171227/8fa5c8404d85979a445eff27a02c23fd.jpg',8,1,1514346107,1514346107,0,'','广告图上文字'),(59,'首页图3－美工字','','/upload/ad/20171227/7297c32813793279a55f895a3571cee6.png',9,1,1514346127,1514346127,0,'','广告图上文字'),(60,'首页图4－背景','','/upload/ad/20171227/3e74c21b20fdcd395c290eded150d2ec.jpg',10,1,1514346146,1514346146,0,'','广告图上文字'),(61,'首页图4－美工字','','/upload/ad/20171227/5f91575e502c1572cde12ee89e4aadc9.png',11,1,1514346196,1514346196,0,'','广告图上文字'),(62,'下载APP－背景','','/upload/ad/20171227/356ef5d9c54b7a9d67cfa69e2f064349.jpg',12,1,1514346660,1514346660,0,'','广告图上文字'),(63,'','','/upload/ad/20171227/d6643f3bf38371f2a87a820e94370673.png',13,1,1514346694,1514346694,0,'','广告图上文字'),(64,'下载APP－美工字','','/upload/ad/20171227/0dde049a9d2363ebdb54d052493663ae.png',14,1,1514346851,1514346851,0,'','广告图上文字'),(65,'下载APP－苹果下载','','/upload/ad/20171227/ed7ebad3c4a8f533b26e3c5b107192ab.png',15,1,1514346925,1514346925,0,'','广告图上文字'),(66,'下载APP－案桌下载','','/upload/ad/20171227/9732d028bee771742728e665f7b2248a.png',16,1,1514346946,1514346946,0,'','广告图上文字'),(67,'下载APP－APP二维码','','/upload/ad/20171227/3a7e9530a7c0cbdd60b31fe0f447ad2c.png',17,1,1514346978,1514346978,0,'','广告图上文字'),(68,'新闻报道－banner','','/upload/ad/20171227/e03e143945fe78db4ce09a64caa91ec5.jpg',20,1,1514350836,1514350836,0,'','广告图上文字'),(69,'关于我们－banner','','/upload/ad/20171227/1aa795fa75b12220c27634de18caf834.jpg',21,1,1514350974,1514350974,0,'','广告图上文字'),(70,'关于我们－左侧奖状','','/upload/ad/20171227/3b71e75b770f384ed4b3bb8ecb7c00f2.jpg',22,1,1514351025,1514351025,0,'','广告图上文字'),(71,'关注我们－wx二维码','','/upload/ad/20171227/ac909107cbdace1a2a08a067233daccb.png',18,1,1514351274,1514351504,0,'','广告图上文字'),(72,'关注我们－weibo二维码','','/upload/ad/20171227/31bf8c1fae8fc3c06c9e98076fa29a9c.png',19,1,1514351293,1514351293,0,'','广告图上文字');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '账号',
  `pwd` char(32) DEFAULT NULL COMMENT '密码',
  `times` int(11) DEFAULT '0' COMMENT '登录次数',
  `last_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','5b94734d0c266fafab796bcdcb20d8a8',11,0,0,1514436063);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '1' COMMENT 'admin_id',
  `ip` varchar(50) DEFAULT '' COMMENT '上次登录ip',
  `last_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='后台管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT '1' COMMENT '分类id',
  `name` varchar(100) NOT NULL,
  `click` int(11) DEFAULT '0' COMMENT '点击量',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `cont` text,
  `keywords` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `sort` int(11) DEFAULT '1000' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除 1正常 2不显示',
  `index_show` tinyint(4) DEFAULT '0' COMMENT '首页或置顶',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `charm` varchar(255) NOT NULL COMMENT '摘要',
  `tp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1资讯 2案例',
  `img_erwei` varchar(255) DEFAULT '' COMMENT '案例二维码',
  PRIMARY KEY (`id`),
  KEY `cate` (`cate_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='资讯表';
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `cate`
--

DROP TABLE IF EXISTS `cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL COMMENT '名称',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `tp` tinyint(4) NOT NULL DEFAULT '1' COMMENT '分类类型 1资讯 2案例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cate`
--

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;
INSERT INTO `cate` VALUES (1,'产品展示',1,1,1514353614,1514353614,1),(2,'公司动态',2,1,1514353767,1514353767,1),(3,'最新资讯',3,1,1514353781,1514353804,1),(4,'12',0,0,1514430917,1514430921,1);
/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `name` varchar(99) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `st` tinyint(4) DEFAULT NULL COMMENT '0删除状态,1正常',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='合作(包括友情链接)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1,1,'新浪','http://www.sina.com/','',1,1514351569,1514351909),(2,1,'今日头条','http://toutiao.com','',1,1514351604,1514351604);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_admin`
--

DROP TABLE IF EXISTS `menu_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '导航名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '导航上级id，总分两级,0表示一级',
  `controller` varchar(100) DEFAULT '' COMMENT '控制器,为一级时为""',
  `action` varchar(100) DEFAULT '' COMMENT '控制器中方法,为一级时为""',
  `param` varchar(100) DEFAULT '' COMMENT '参数',
  `sort` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='后台左侧导航';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_admin`
--

LOCK TABLES `menu_admin` WRITE;
/*!40000 ALTER TABLE `menu_admin` DISABLE KEYS */;
INSERT INTO `menu_admin` VALUES (34,'相关设置',23,'Setting','index','',0,1514352003,1514352018),(19,'主要管理',0,'','','',0,1505358580,1505358580),(20,'资讯',19,'Article','index','',0,1505358628,1505358628),(22,'广告图',19,'Ad','index','',2,1505358704,1505985350),(23,'其它管理',0,'','','',1,1505358751,1505358751),(35,'导航',23,'Nav','index','',0,1514430549,1514430549),(25,'改后台密码',32,'Admin','edit','',5,1505358851,1506056478),(26,'资讯分类',23,'Cate','index','',0,1505369468,1513937565),(28,'友情链接',23,'friend','index','',2,1505438054,1514351543),(32,'账号管帐',0,'','','',2,1506056449,1506056470);
/*!40000 ALTER TABLE `menu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav`
--

DROP TABLE IF EXISTS `nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '1',
  `route` varchar(50) DEFAULT '' COMMENT '路由 eg:(/news)',
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `st` tinyint(4) DEFAULT '1' COMMENT '0删除 1正常 2不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `contr` varchar(20) DEFAULT NULL COMMENT '控制器名称',
  `title` varchar(100) DEFAULT NULL COMMENT 'seo标题',
  `keywords` varchar(150) DEFAULT NULL COMMENT 'seo关键词',
  `description` varchar(200) DEFAULT NULL COMMENT 'seo描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='导航（只能修改名称、排序）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav`
--

LOCK TABLES `nav` WRITE;
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
INSERT INTO `nav` VALUES (1,'首页','/',1,1,1514430981,1514433008,'Index','首页','welove-index,welove-index,welove-index','welove-indexdesc,welove-indexdesc,welove-indexdesc,welove-indexdesc,welove-indexdesc,'),(2,'下载APP','/app',2,1,1514431048,1514433014,'App','下载APP','app-index,app-indexapp-index','app-index,app-indexapp-indexdescapp-index,app-indexapp-indexdesc'),(3,'新闻报道','/news',3,1,1514431071,1514432985,'Article','新闻报道','新闻报道新闻报道zzzzzzzzzzzzzz','新闻报道新闻报道ddddddddddd'),(4,'关于我们','/about',4,1,1514431094,1514434029,'About','关于我们','关于我们关于我们关于我们','关于我们关于我们5555555555555');
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_set`
--


--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kefu` varchar(50) NOT NULL DEFAULT '' COMMENT 'kefu电话',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `company_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `info` text COMMENT '公司介绍',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `beian` varchar(100) DEFAULT NULL COMMENT '备案号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='相关设置文字信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'010-82596388','132465＠163.com','北京慰衡国际贸易有限公司','<h3>\r\n	北京慰衡国际贸易有限公司\r\n</h3>\r\n<p>\r\n	北京慰衡国际贸易有限公司座落于祖国的首都北京-通州，是一家中外合资企业，主要经营纽澳冰淇淋粉、酸奶粉及蜂蜜酒等系列产品，公司总部位于大洋洲最新美丽的国家之一-新西兰。\r\n</p>\r\n<p>\r\n	公司坚持以人为本，诚信立业的经营原则，将纽澳最好、最优的产品奉献给广大消费者；公司致力于为消费者提供“绿色健康的食品”为己任，不断进取，开拓创新，创造一个绿色、有机、健康的食品环境。\r\n</p>\r\n<div class=\"txt-red-wrap\">\r\n	<p class=\"txt-red\">\r\n		企业精神：诚信在前、质量为先、合作共赢。\r\n	</p>\r\n	<p class=\"txt-red\">\r\n		企业愿景：愿每一们消费者都能食用绿色健康的食品\r\n	</p>\r\n</div>',1514352455,1514433241,'粤网文[2016]2975-618号 粤ICP备12026999号-5');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-28 13:24:49
