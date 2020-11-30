-- MySQL dump 10.13  Distrib 8.0.16, for osx10.13 (x86_64)
--
-- Host: 192.168.3.81    Database: dev_df_kzhd
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 地址',7,'add_address'),(26,'Can change 地址',7,'change_address'),(27,'Can delete 地址',7,'delete_address'),(28,'Can view 地址',7,'view_address'),(29,'Can add 计价货品',8,'add_cargocategory'),(30,'Can change 计价货品',8,'change_cargocategory'),(31,'Can delete 计价货品',8,'delete_cargocategory'),(32,'Can view 计价货品',8,'view_cargocategory'),(33,'Can add 货物保险',9,'add_cargoinsure'),(34,'Can change 货物保险',9,'change_cargoinsure'),(35,'Can delete 货物保险',9,'delete_cargoinsure'),(36,'Can view 货物保险',9,'view_cargoinsure'),(37,'Can add 市',10,'add_city'),(38,'Can change 市',10,'change_city'),(39,'Can delete 市',10,'delete_city'),(40,'Can view 市',10,'view_city'),(41,'Can add 区县',11,'add_county'),(42,'Can change 区县',11,'change_county'),(43,'Can delete 区县',11,'delete_county'),(44,'Can view 区县',11,'view_county'),(45,'Can add 客户',12,'add_customer'),(46,'Can change 客户',12,'change_customer'),(47,'Can delete 客户',12,'delete_customer'),(48,'Can view 客户',12,'view_customer'),(49,'Can add 一般账号',13,'add_generalprofile'),(50,'Can change 一般账号',13,'change_generalprofile'),(51,'Can delete 一般账号',13,'delete_generalprofile'),(52,'Can view 一般账号',13,'view_generalprofile'),(53,'Can add 订单',14,'add_order'),(54,'Can change 订单',14,'change_order'),(55,'Can delete 订单',14,'delete_order'),(56,'Can view 订单',14,'view_order'),(57,'Can add 物流公司',15,'add_partner'),(58,'Can change 物流公司',15,'change_partner'),(59,'Can delete 物流公司',15,'delete_partner'),(60,'Can view 物流公司',15,'view_partner'),(61,'Can add 省',16,'add_province'),(62,'Can change 省',16,'change_province'),(63,'Can delete 省',16,'delete_province'),(64,'Can view 省',16,'view_province'),(65,'Can add 车辆',17,'add_truck'),(66,'Can change 车辆',17,'change_truck'),(67,'Can delete 车辆',17,'delete_truck'),(68,'Can view 车辆',17,'view_truck'),(69,'Can add 车品牌',18,'add_truckbrand'),(70,'Can change 车品牌',18,'change_truckbrand'),(71,'Can delete 车品牌',18,'delete_truckbrand'),(72,'Can view 车品牌',18,'view_truckbrand'),(73,'Can add 车型类别',19,'add_truckmodeltype'),(74,'Can change 车型类别',19,'change_truckmodeltype'),(75,'Can delete 车型类别',19,'delete_truckmodeltype'),(76,'Can view 车型类别',19,'view_truckmodeltype'),(77,'Can add 车系',20,'add_truckseries'),(78,'Can change 车系',20,'change_truckseries'),(79,'Can delete 车系',20,'delete_truckseries'),(80,'Can view 车系',20,'view_truckseries'),(81,'Can add 挂靠车辆',21,'add_affiliatetruck'),(82,'Can change 挂靠车辆',21,'change_affiliatetruck'),(83,'Can delete 挂靠车辆',21,'delete_affiliatetruck'),(84,'Can view 挂靠车辆',21,'view_affiliatetruck'),(85,'Can add 司机',22,'add_driver'),(86,'Can change 司机',22,'change_driver'),(87,'Can delete 司机',22,'delete_driver'),(88,'Can view 司机',22,'view_driver'),(89,'Can add 自有车辆',23,'add_owntruck'),(90,'Can change 自有车辆',23,'change_owntruck'),(91,'Can delete 自有车辆',23,'delete_owntruck'),(92,'Can view 自有车辆',23,'view_owntruck'),(93,'Can add 物流公司员工',24,'add_partnerstaff'),(94,'Can change 物流公司员工',24,'change_partnerstaff'),(95,'Can delete 物流公司员工',24,'delete_partnerstaff'),(96,'Can view 物流公司员工',24,'view_partnerstaff'),(97,'Can add 平台员工',25,'add_platformstaff'),(98,'Can change 平台员工',25,'change_platformstaff'),(99,'Can delete 平台员工',25,'delete_platformstaff'),(100,'Can view 平台员工',25,'view_platformstaff'),(101,'Can add 计价车型',26,'add_truckmodelcategory'),(102,'Can change 计价车型',26,'change_truckmodelcategory'),(103,'Can delete 计价车型',26,'delete_truckmodelcategory'),(104,'Can view 计价车型',26,'view_truckmodelcategory'),(105,'Can add 车型',27,'add_truckmodel'),(106,'Can change 车型',27,'change_truckmodel'),(107,'Can delete 车型',27,'delete_truckmodel'),(108,'Can view 车型',27,'view_truckmodel'),(109,'Can add 收货区域',28,'add_shippingarea'),(110,'Can change 收货区域',28,'change_shippingarea'),(111,'Can delete 收货区域',28,'delete_shippingarea'),(112,'Can view 收货区域',28,'view_shippingarea'),(113,'Can add 收货地址',29,'add_shippingaddress'),(114,'Can change 收货地址',29,'change_shippingaddress'),(115,'Can delete 收货地址',29,'delete_shippingaddress'),(116,'Can view 收货地址',29,'view_shippingaddress'),(117,'Can add 发货地址',30,'add_shipaddress'),(118,'Can change 发货地址',30,'change_shipaddress'),(119,'Can delete 发货地址',30,'delete_shipaddress'),(120,'Can view 发货地址',30,'view_shipaddress'),(121,'Can add 途径地址',31,'add_routeaddress'),(122,'Can change 途径地址',31,'change_routeaddress'),(123,'Can delete 途径地址',31,'delete_routeaddress'),(124,'Can view 途径地址',31,'view_routeaddress'),(125,'Can add 按重量计价',32,'add_priceweight'),(126,'Can change 按重量计价',32,'change_priceweight'),(127,'Can delete 按重量计价',32,'delete_priceweight'),(128,'Can view 按重量计价',32,'view_priceweight'),(129,'Can add 按方量计价',33,'add_pricevolume'),(130,'Can change 按方量计价',33,'change_pricevolume'),(131,'Can delete 按方量计价',33,'delete_pricevolume'),(132,'Can view 按方量计价',33,'view_pricevolume'),(133,'Can add 按车次计价',34,'add_pricetrucktime'),(134,'Can change 按车次计价',34,'change_pricetrucktime'),(135,'Can delete 按车次计价',34,'delete_pricetrucktime'),(136,'Can view 按车次计价',34,'view_pricetrucktime'),(137,'Can add 按货品件数计价',35,'add_pricepackagesnumber'),(138,'Can change 按货品件数计价',35,'change_pricepackagesnumber'),(139,'Can delete 按货品件数计价',35,'delete_pricepackagesnumber'),(140,'Can view 按货品件数计价',35,'view_pricepackagesnumber'),(141,'Can add 里程计价',36,'add_pricemileage'),(142,'Can change 里程计价',36,'change_pricemileage'),(143,'Can delete 里程计价',36,'delete_pricemileage'),(144,'Can view 里程计价',36,'view_pricemileage'),(145,'Can add 计价方式',37,'add_pricemethod'),(146,'Can change 计价方式',37,'change_pricemethod'),(147,'Can delete 计价方式',37,'delete_pricemethod'),(148,'Can view 计价方式',37,'view_pricemethod'),(149,'Can add 配价基本信息（用于方量配价，和体积配价）',38,'add_pricebaseinfo'),(150,'Can change 配价基本信息（用于方量配价，和体积配价）',38,'change_pricebaseinfo'),(151,'Can delete 配价基本信息（用于方量配价，和体积配价）',38,'delete_pricebaseinfo'),(152,'Can view 配价基本信息（用于方量配价，和体积配价）',38,'view_pricebaseinfo'),(153,'Can add (物流公司－客户)中间表',39,'add_partnercustomerthrough'),(154,'Can change (物流公司－客户)中间表',39,'change_partnercustomerthrough'),(155,'Can delete (物流公司－客户)中间表',39,'delete_partnercustomerthrough'),(156,'Can view (物流公司－客户)中间表',39,'view_partnercustomerthrough'),(157,'Can add 管理货单额外费用',40,'add_othercost'),(158,'Can change 管理货单额外费用',40,'change_othercost'),(159,'Can delete 管理货单额外费用',40,'delete_othercost'),(160,'Can view 管理货单额外费用',40,'view_othercost'),(161,'Can add 公告',41,'add_notice'),(162,'Can change 公告',41,'change_notice'),(163,'Can delete 公告',41,'delete_notice'),(164,'Can view 公告',41,'view_notice'),(165,'Can add 司机-车辆绑定记录',42,'add_drivertruckbindrecord'),(166,'Can change 司机-车辆绑定记录',42,'change_drivertruckbindrecord'),(167,'Can delete 司机-车辆绑定记录',42,'delete_drivertruckbindrecord'),(168,'Can view 司机-车辆绑定记录',42,'view_drivertruckbindrecord'),(169,'Can add 客户分组名',43,'add_customergroup'),(170,'Can change 客户分组名',43,'change_customergroup'),(171,'Can delete 客户分组名',43,'delete_customergroup'),(172,'Can view 客户分组名',43,'view_customergroup'),(173,'Can add 商圈',44,'add_circle'),(174,'Can change 商圈',44,'change_circle'),(175,'Can delete 商圈',44,'delete_circle'),(176,'Can view 商圈',44,'view_circle'),(177,'Can add 建议',45,'add_advice'),(178,'Can change 建议',45,'change_advice'),(179,'Can delete 建议',45,'delete_advice'),(180,'Can view 建议',45,'view_advice'),(181,'Can add 挂靠司机',46,'add_affiliatedriver'),(182,'Can change 挂靠司机',46,'change_affiliatedriver'),(183,'Can delete 挂靠司机',46,'delete_affiliatedriver'),(184,'Can view 挂靠司机',46,'view_affiliatedriver'),(185,'Can add 自有司机',47,'add_employdriver'),(186,'Can change 自有司机',47,'change_employdriver'),(187,'Can delete 自有司机',47,'delete_employdriver'),(188,'Can view 自有司机',47,'view_employdriver'),(189,'Can add 年审记录',48,'add_yearcheck'),(190,'Can change 年审记录',48,'change_yearcheck'),(191,'Can delete 年审记录',48,'delete_yearcheck'),(192,'Can view 年审记录',48,'view_yearcheck'),(193,'Can add 保养记录',49,'add_truckmaintain'),(194,'Can change 保养记录',49,'change_truckmaintain'),(195,'Can delete 保养记录',49,'delete_truckmaintain'),(196,'Can view 保养记录',49,'view_truckmaintain'),(197,'Can add 维修记录',50,'add_truckfix'),(198,'Can change 维修记录',50,'change_truckfix'),(199,'Can delete 维修记录',50,'delete_truckfix'),(200,'Can view 维修记录',50,'view_truckfix'),(201,'Can add 车队模板',51,'add_templateteam'),(202,'Can change 车队模板',51,'change_templateteam'),(203,'Can delete 车队模板',51,'delete_templateteam'),(204,'Can view 车队模板',51,'view_templateteam'),(205,'Can add 车队',52,'add_team'),(206,'Can change 车队',52,'change_team'),(207,'Can delete 车队',52,'delete_team'),(208,'Can view 车队',52,'view_team'),(209,'Can add 路桥费',53,'add_roadbridgecharge'),(210,'Can change 路桥费',53,'change_roadbridgecharge'),(211,'Can delete 路桥费',53,'delete_roadbridgecharge'),(212,'Can view 路桥费',53,'view_roadbridgecharge'),(213,'Can add 续保记录',54,'add_renewalinsurance'),(214,'Can change 续保记录',54,'change_renewalinsurance'),(215,'Can delete 续保记录',54,'delete_renewalinsurance'),(216,'Can view 续保记录',54,'view_renewalinsurance'),(217,'Can add 其他维护',55,'add_othermaintain'),(218,'Can change 其他维护',55,'change_othermaintain'),(219,'Can delete 其他维护',55,'delete_othermaintain'),(220,'Can view 其他维护',55,'view_othermaintain'),(221,'Can add 加油记录',56,'add_fuelcharging'),(222,'Can change 加油记录',56,'change_fuelcharging'),(223,'Can delete 加油记录',56,'delete_fuelcharging'),(224,'Can view 加油记录',56,'view_fuelcharging'),(225,'Can add 罚款',57,'add_fine'),(226,'Can change 罚款',57,'change_fine'),(227,'Can delete 罚款',57,'delete_fine'),(228,'Can view 罚款',57,'view_fine'),(229,'Can add 客户员工',58,'add_customerstaff'),(230,'Can change 客户员工',58,'change_customerstaff'),(231,'Can delete 客户员工',58,'delete_customerstaff'),(232,'Can view 客户员工',58,'view_customerstaff'),(233,'Can add 发收货人',59,'add_cargor'),(234,'Can change 发收货人',59,'change_cargor'),(235,'Can delete 发收货人',59,'delete_cargor'),(236,'Can view 发收货人',59,'view_cargor'),(237,'Can add 车队存档',60,'add_archivedteam'),(238,'Can change 车队存档',60,'change_archivedteam'),(239,'Can delete 车队存档',60,'delete_archivedteam'),(240,'Can view 车队存档',60,'view_archivedteam'),(241,'Can add 货运业务收入账单',61,'add_cargobill'),(242,'Can change 货运业务收入账单',61,'change_cargobill'),(243,'Can delete 货运业务收入账单',61,'delete_cargobill'),(244,'Can view 货运业务收入账单',61,'view_cargobill'),(245,'Can add 货运账单收款记录',62,'add_cargobillreceive'),(246,'Can change 货运账单收款记录',62,'change_cargobillreceive'),(247,'Can delete 货运账单收款记录',62,'delete_cargobillreceive'),(248,'Can view 货运账单收款记录',62,'view_cargobillreceive'),(249,'Can add 挂靠账单',63,'add_attachfeerecord'),(250,'Can change 挂靠账单',63,'change_attachfeerecord'),(251,'Can delete 挂靠账单',63,'delete_attachfeerecord'),(252,'Can view 挂靠账单',63,'view_attachfeerecord'),(253,'Can add 车辆分组',64,'add_truckgroup'),(254,'Can change 车辆分组',64,'change_truckgroup'),(255,'Can delete 车辆分组',64,'delete_truckgroup'),(256,'Can view 车辆分组',64,'view_truckgroup'),(257,'Can add 货物类型',65,'add_ordercargotype'),(258,'Can change 货物类型',65,'change_ordercargotype'),(259,'Can delete 货物类型',65,'delete_ordercargotype'),(260,'Can view 货物类型',65,'view_ordercargotype');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$ebWkTZhojA0u$dkyJw6Crz/A/HJcYIcN3Hbks2hECL8cvUKaoK0Id4cU=','2020-10-23 15:42:29.467727',1,'admin','','','',1,1,'2020-10-15 17:34:12.166361'),(2,'pbkdf2_sha256$216000$t6uQwrJrvbWh$3UoUg3/kP2CoRjGoAewlVMBjsQ754kCJ1e2vWcLM33U=',NULL,0,'13911223344','','','',0,1,'2020-10-15 17:34:12.565939'),(3,'pbkdf2_sha256$216000$ON0pTDikmoQ5$4k9yxjEhtgtD6eNI05Dp0AZgSoDkgRIO+jKwCaLqyWY=',NULL,0,'Hy5GXSzJqN','','','',0,1,'2020-10-15 20:00:00.009902'),(4,'pbkdf2_sha256$216000$fpXxnaahTpnJ$aVvoRP4laDuuqGcRAQyYEGVzGuL/AbMQmPHpTACmwDg=',NULL,0,'KNBQ8T4NmM','','','',0,1,'2020-10-16 08:40:05.513554'),(5,'pbkdf2_sha256$216000$plgi0tsr7pLG$XbKiACj3EFTHzsBoeDwlqSe1IpaKLwC2bv73mCg38Qk=',NULL,0,'ANANtPDC8L','','','',0,1,'2020-10-16 10:49:27.293588'),(6,'pbkdf2_sha256$216000$guGLMtCHlMK3$8Lgr5OGyPPj+JlrdItoIG2d1cSDLydDQHB1J2OpUuhc=',NULL,0,'5qusiRrpWx','','','',0,1,'2020-10-16 11:25:40.950285'),(7,'pbkdf2_sha256$216000$fuOeWX1FXSEx$U1SdF7Fck9MaMyZNzopQKy7WAUnGKUSx1FZUSh7iotY=',NULL,0,'4ddcRdY5VU','','','',0,1,'2020-10-16 15:36:44.830791'),(8,'pbkdf2_sha256$216000$viM6p9E6KivF$k5JBEXS3e0EVsQ6SGfAu6y3nk1oC4ZwOhU3Axb4VAY8=',NULL,0,'Cqj8ucLoQk','','','',0,1,'2020-10-16 17:12:11.430962'),(9,'pbkdf2_sha256$216000$zbemiBLspPtN$iSuduoV85XB0RHE6pVvrNniVgruLzdgt1Prja9qUgpo=',NULL,0,'EUVvP93gcH','','','',0,1,'2020-10-16 17:14:56.311222'),(10,'pbkdf2_sha256$216000$bZicG5P2zFTh$Irriat7hNXLt+pdjOfM/Nv+ww+MMoEvgEv6vuPAcSe8=',NULL,0,'8DTwpVaiRF','','','',0,1,'2020-10-16 17:37:58.502426'),(11,'pbkdf2_sha256$216000$U24mhi6GwYwo$df73p4rMqJF9B0iGV5nDsMBttHOIx6iH9KHvIoZ2ItU=',NULL,0,'HmfUZjvB4S','','','',0,1,'2020-10-16 17:40:44.862976'),(12,'pbkdf2_sha256$216000$z1W3644FBPgi$VjSvZB25wKmQhKqpcXReEAUPA68zomAmyxLLJCu7jF4=',NULL,0,'HtPi5zmQMT','','','',0,1,'2020-10-16 18:40:02.047447'),(13,'pbkdf2_sha256$216000$xt2zU5RE9Qgz$sRLehEHLSaYJA0hIxwU3SrdXaVG8/KohU4of8EmTFrM=',NULL,0,'FRA3TisJ6a','','','',0,1,'2020-10-16 18:42:20.215775'),(14,'pbkdf2_sha256$216000$1s9c67F7ng92$meEsFDNMYzJGmVE7KOh5laOsl0UktP8u6F/I7O+x61E=',NULL,0,'L2hqAtM8VF','','','',0,1,'2020-10-19 09:27:11.452138'),(19,'pbkdf2_sha256$216000$gVYjsCj6G5nQ$UgcjH4FXxQ/HmujGTD79WwVLuoCy3IJVgTZxtPag7sA=',NULL,0,'Dd9bvrGBz7','','','',0,1,'2020-10-19 10:30:10.305511'),(20,'pbkdf2_sha256$216000$zCCAXbHdCI4T$ecDmDmplghQME0hvPSLPffKY4Bkm+5DGVepb9Bewsgk=',NULL,0,'HWHCWFkeAs','','','',0,1,'2020-10-19 10:49:22.448001'),(21,'pbkdf2_sha256$216000$iu0Atme40Euf$SpL8zvPArKzunkgBLwpXXNXxlX1r7cfnhajvs58wdgA=',NULL,0,'5JvWuctMF7','','','',0,1,'2020-10-19 13:31:54.555297'),(22,'pbkdf2_sha256$216000$lxrRyMyxsMzJ$HzKCB4+q2SwCRua21ECC43PMmUAzrbDcLJq3X9QmkfE=',NULL,0,'Jr5iESGiuw','','','',0,1,'2020-10-19 16:28:29.208113'),(25,'pbkdf2_sha256$216000$niPIrHLuo3S2$g7zU6R5ME3evC5Mrw8TqjCO+MNH2ZeyDtKh51WJ0/pE=',NULL,0,'9YGfcPDj5i','','','',0,1,'2020-10-20 09:03:31.255654'),(26,'pbkdf2_sha256$216000$AJO7q90lIO3c$84RqfTHXu93GMQAnL25PqrNVB6NdHUvf1LnyboXWgLE=',NULL,0,'DwMRwtEJJo','','','',0,1,'2020-10-20 09:08:07.845606'),(27,'pbkdf2_sha256$216000$K0LOSXpNUmOU$CIWS0q1NFXnxIgjZHpckbgp/MLgJ2W5Y89F1a2KN4jQ=',NULL,0,'18323177363','','','',0,1,'2020-10-20 10:34:11.242896'),(28,'pbkdf2_sha256$216000$buy3AnXjWed9$1A3Bj6e/rvxMWtMyv7wnrloKbKfC2gcMRhk/gq5X7OQ=',NULL,0,'qweiBD48L5','','','',0,1,'2020-10-20 11:31:38.826342'),(29,'pbkdf2_sha256$216000$D2rbPNuL6mO5$NlgP665swbNzo4nPL9LSJta33KemZDQd0920y8FaAFU=',NULL,0,'9VZbfnm4Y9','','','',0,1,'2020-11-30 13:56:54.012222'),(30,'pbkdf2_sha256$216000$nWs7SpMYnthI$AF+pg6pB5nFWhxqR95HCqVE7nupJTxqL4Y2Zo+CgC7w=',NULL,0,'466a6bw8TA','','','',0,1,'2020-11-30 15:39:45.191337');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_bin,
  `object_repr` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-15 17:47:33.737630','1','五菱宏光',1,'[{\"added\": {}}]',19,1),(2,'2020-10-15 17:48:00.944459','2','幻影',1,'[{\"added\": {}}]',19,1),(3,'2020-10-19 09:33:45.418823','3','普通',1,'[{\"added\": {}}]',19,1),(4,'2020-10-19 09:35:19.485323','2','车系2',1,'[{\"added\": {}}]',20,1),(5,'2020-10-19 09:36:36.339595','2','品牌2',1,'[{\"added\": {}}]',18,1),(6,'2020-10-20 10:34:11.478006','27','18323177363',1,'[{\"added\": {}}]',4,1),(7,'2020-10-20 10:34:19.276158','20','周黑鸭[18323177363]',1,'[{\"added\": {}}]',22,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'kzhd','address'),(45,'kzhd','advice'),(46,'kzhd','affiliatedriver'),(21,'kzhd','affiliatetruck'),(60,'kzhd','archivedteam'),(63,'kzhd','attachfeerecord'),(61,'kzhd','cargobill'),(62,'kzhd','cargobillreceive'),(8,'kzhd','cargocategory'),(9,'kzhd','cargoinsure'),(59,'kzhd','cargor'),(44,'kzhd','circle'),(10,'kzhd','city'),(11,'kzhd','county'),(12,'kzhd','customer'),(43,'kzhd','customergroup'),(58,'kzhd','customerstaff'),(22,'kzhd','driver'),(42,'kzhd','drivertruckbindrecord'),(47,'kzhd','employdriver'),(57,'kzhd','fine'),(56,'kzhd','fuelcharging'),(13,'kzhd','generalprofile'),(41,'kzhd','notice'),(14,'kzhd','order'),(65,'kzhd','ordercargotype'),(40,'kzhd','othercost'),(55,'kzhd','othermaintain'),(23,'kzhd','owntruck'),(15,'kzhd','partner'),(39,'kzhd','partnercustomerthrough'),(24,'kzhd','partnerstaff'),(25,'kzhd','platformstaff'),(38,'kzhd','pricebaseinfo'),(37,'kzhd','pricemethod'),(36,'kzhd','pricemileage'),(35,'kzhd','pricepackagesnumber'),(34,'kzhd','pricetrucktime'),(33,'kzhd','pricevolume'),(32,'kzhd','priceweight'),(16,'kzhd','province'),(54,'kzhd','renewalinsurance'),(53,'kzhd','roadbridgecharge'),(31,'kzhd','routeaddress'),(30,'kzhd','shipaddress'),(29,'kzhd','shippingaddress'),(28,'kzhd','shippingarea'),(52,'kzhd','team'),(51,'kzhd','templateteam'),(17,'kzhd','truck'),(18,'kzhd','truckbrand'),(50,'kzhd','truckfix'),(64,'kzhd','truckgroup'),(49,'kzhd','truckmaintain'),(27,'kzhd','truckmodel'),(26,'kzhd','truckmodelcategory'),(19,'kzhd','truckmodeltype'),(20,'kzhd','truckseries'),(48,'kzhd','yearcheck'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-15 17:29:10.099868'),(2,'auth','0001_initial','2020-10-15 17:29:11.318074'),(3,'admin','0001_initial','2020-10-15 17:29:15.298119'),(4,'admin','0002_logentry_remove_auto_add','2020-10-15 17:29:16.516860'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-15 17:29:16.556019'),(6,'contenttypes','0002_remove_content_type_name','2020-10-15 17:29:17.763301'),(7,'auth','0002_alter_permission_name_max_length','2020-10-15 17:29:18.239296'),(8,'auth','0003_alter_user_email_max_length','2020-10-15 17:29:18.328189'),(9,'auth','0004_alter_user_username_opts','2020-10-15 17:29:18.412518'),(10,'auth','0005_alter_user_last_login_null','2020-10-15 17:29:18.770264'),(11,'auth','0006_require_contenttypes_0002','2020-10-15 17:29:18.810536'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-15 17:29:18.913909'),(13,'auth','0008_alter_user_username_max_length','2020-10-15 17:29:19.440306'),(14,'auth','0009_alter_user_last_name_max_length','2020-10-15 17:29:19.835337'),(15,'auth','0010_alter_group_name_max_length','2020-10-15 17:29:19.909909'),(16,'auth','0011_update_proxy_permissions','2020-10-15 17:29:19.962836'),(17,'auth','0012_alter_user_first_name_max_length','2020-10-15 17:29:20.476616'),(18,'kzhd','0001_initial','2020-10-15 17:30:02.198849'),(19,'kzhd','0002_auto_20201015_1607','2020-10-15 17:31:10.960036'),(20,'kzhd','0003_attachfeerecord','2020-10-15 17:31:14.334490'),(21,'sessions','0001_initial','2020-10-15 17:31:15.674240'),(22,'kzhd','0004_remove_truckmodel_truck_model_name','2020-10-15 17:34:38.053747'),(23,'kzhd','0005_auto_20201016_1116','2020-10-16 11:17:13.116163'),(24,'kzhd','0006_auto_20201016_1811','2020-10-16 18:11:59.186409'),(25,'kzhd','0007_auto_20201019_1934','2020-10-19 19:34:22.550509'),(26,'kzhd','0008_remove_order_truck_model','2020-10-19 20:28:15.125841'),(27,'kzhd','0009_shipaddress_shipping_area_name','2020-10-19 20:28:15.778906'),(28,'kzhd','0010_auto_20201019_2012','2020-10-19 20:28:16.292952'),(29,'kzhd','0011_circle_partner','2020-10-20 09:31:18.460236');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `session_data` longtext COLLATE utf8mb4_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2j491ql5kox0ozcudxtzg7mrvsg4mcwv','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kTEWW:bB3Ljuu12Y2LUgTTafNlCIbp5lhKxBicO9AZRv9U1fg','2020-10-30 09:27:12.131268'),('6mit26mv54x0ndchdsqsnx6bypfzongu','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kULCo:Imcqobl1EUvw4DvhGZ65VkaL9dsObSimW9O4dGB70P0','2020-11-02 10:47:26.328278'),('gl4ky7k4lbxi9sspxodkyk0ir1dxj1q3','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kSzlZ:e4w0yurgETLoQYX5i-4IfGmGYWuo4RwGKDw275IPKeo','2020-10-29 17:41:45.658758'),('m82jh1aziq992hvtu1enrpgajl81qdos','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kUKpQ:YSSx_DAAXzP2xb14afsWy0ttPeUrqmtZLwcSzpvSha8','2020-11-02 10:23:16.807508'),('oxnzbrpytttey9zoh564em1rxwkgqwl2','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kTMx7:6GIcVLQsUL6jweRNpPQWARMB5UEwlUAWPhabvnvL0Oo','2020-10-30 18:27:13.690088'),('pf66mrfgx8vexhjbz4tc25piu14fs8bc','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kUhVw:6n486jePiFBVnUno6GSEPIZd2JrN73UQUPjJDxNG-qA','2020-11-03 10:36:40.604221'),('tvvpqbz0e1ro7udw1a09cyfmitrxw5m2','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kUK1k:rx4ic7qwHWr5NetDjhNHAL9JgeqOlWqpaMPFYcT681o','2020-11-02 09:31:56.565308'),('waade7o6mxi3iq6lllqoy0ruhwy2xrwn','.eJxVjMEOwiAQRP-FsyGFbAE9evcbyC67SNVAUtqT8d9tkx70OPPezFtFXJcS1y5znFhdlFGn344wPaXugB9Y702nVpd5Ir0r-qBd3xrL63q4fwcFe9nWggkYU0pshtGes8Ngg9-Sd6OVLBIsOvIGDQwMJODRsYcA2VEmFvX5AhFdOSA:1kVriX:I6EMKrUA1OpzqnXpEZPXk9FN7jUbVAvAETt_dPzDsWM','2020-11-06 15:42:29.502183');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_address`
--

DROP TABLE IF EXISTS `kzhd_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `detailed_address` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `full_address` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `city_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `county_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_address_city_id_9a9565fc_fk_kzhd_city_id` (`city_id`),
  KEY `kzhd_address_county_id_dc6e66e7_fk_kzhd_county_id` (`county_id`),
  CONSTRAINT `kzhd_address_city_id_9a9565fc_fk_kzhd_city_id` FOREIGN KEY (`city_id`) REFERENCES `kzhd_city` (`id`),
  CONSTRAINT `kzhd_address_county_id_dc6e66e7_fk_kzhd_county_id` FOREIGN KEY (`county_id`) REFERENCES `kzhd_county` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_address`
--

LOCK TABLES `kzhd_address` WRITE;
/*!40000 ALTER TABLE `kzhd_address` DISABLE KEYS */;
INSERT INTO `kzhd_address` VALUES (1,'2020-10-15 17:34:12.936219','2020-10-15 17:34:12.936262',0,132,32,'中关村','中关村11区','110100','110101'),(2,'2020-10-15 19:59:59.902183','2020-10-15 19:59:59.902263',0,NULL,NULL,NULL,'2222',NULL,NULL),(3,'2020-10-19 16:28:21.837522','2020-10-19 16:28:21.837680',0,NULL,NULL,NULL,'3333',NULL,NULL),(4,'2020-10-19 16:28:29.076675','2020-10-19 16:28:29.077117',0,NULL,NULL,NULL,'3333',NULL,NULL);
/*!40000 ALTER TABLE `kzhd_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_advice`
--

DROP TABLE IF EXISTS `kzhd_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `context` longtext COLLATE utf8mb4_bin NOT NULL,
  `comment` longtext COLLATE utf8mb4_bin NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updator_id` int(11) DEFAULT NULL,
  `is_handled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_advice_creator_id_24ead7d8_fk_auth_user_id` (`creator_id`),
  KEY `kzhd_advice_updator_id_7847018d_fk_auth_user_id` (`updator_id`),
  CONSTRAINT `kzhd_advice_creator_id_24ead7d8_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `kzhd_advice_updator_id_7847018d_fk_auth_user_id` FOREIGN KEY (`updator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_advice`
--

LOCK TABLES `kzhd_advice` WRITE;
/*!40000 ALTER TABLE `kzhd_advice` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_affiliatedriver`
--

DROP TABLE IF EXISTS `kzhd_affiliatedriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_affiliatedriver` (
  `driver_ptr_id` int(11) NOT NULL,
  `affiliate_fee` decimal(8,2) NOT NULL,
  `overtime_debt` decimal(9,2) DEFAULT NULL,
  `affiliate_start_date` date NOT NULL,
  `affiliate_end_date` date NOT NULL,
  `detailed_address` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `is_sched` tinyint(1) NOT NULL,
  `qualification_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `driving_license_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `id_card_front_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `id_card_back_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `integrated` tinyint(1) NOT NULL,
  `next_fee_payment_date` date DEFAULT NULL,
  PRIMARY KEY (`driver_ptr_id`),
  CONSTRAINT `kzhd_affiliatedriver_driver_ptr_id_cdcc669c_fk_kzhd_driv` FOREIGN KEY (`driver_ptr_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_affiliatedriver`
--

LOCK TABLES `kzhd_affiliatedriver` WRITE;
/*!40000 ALTER TABLE `kzhd_affiliatedriver` DISABLE KEYS */;
INSERT INTO `kzhd_affiliatedriver` VALUES (5,-3.00,-3.00,'2020-10-16','2020-10-16','渝北区',1,'','','','',0,NULL),(6,-3.00,-3.00,'2020-10-16','2020-10-16','渝北区',1,'','','','',0,NULL);
/*!40000 ALTER TABLE `kzhd_affiliatedriver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_affiliatetruck`
--

DROP TABLE IF EXISTS `kzhd_affiliatetruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_affiliatetruck` (
  `truck_ptr_id` int(11) NOT NULL,
  `operation_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `document_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `engine_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation_no` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL,
  `power` double DEFAULT NULL,
  `wheelbase` double DEFAULT NULL,
  `curb_weight` double DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `scrap_date` date DEFAULT NULL,
  `operation_annual_audit_date` date DEFAULT NULL,
  PRIMARY KEY (`truck_ptr_id`),
  CONSTRAINT `kzhd_affiliatetruck_truck_ptr_id_20712555_fk_kzhd_truck_id` FOREIGN KEY (`truck_ptr_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_affiliatetruck`
--

LOCK TABLES `kzhd_affiliatetruck` WRITE;
/*!40000 ALTER TABLE `kzhd_affiliatetruck` DISABLE KEYS */;
INSERT INTO `kzhd_affiliatetruck` VALUES (2,'','string','string','string',0,0,0,'string','2020-10-16','2020-10-16','2020-10-16'),(4,'','string','string','string',0,0,0,'string','2020-10-16','2020-10-16','2020-10-16');
/*!40000 ALTER TABLE `kzhd_affiliatetruck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_archivedteam`
--

DROP TABLE IF EXISTS `kzhd_archivedteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_archivedteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `freight_order` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_archivedteam_partner_id_b25949ef_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_archivedteam_leader_id_fb353202_fk_kzhd_driv` (`leader_id`),
  CONSTRAINT `kzhd_archivedteam_leader_id_fb353202_fk_kzhd_driv` FOREIGN KEY (`leader_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_archivedteam_partner_id_b25949ef_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_archivedteam`
--

LOCK TABLES `kzhd_archivedteam` WRITE;
/*!40000 ALTER TABLE `kzhd_archivedteam` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_archivedteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_archivedteam_members`
--

DROP TABLE IF EXISTS `kzhd_archivedteam_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_archivedteam_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `archivedteam_id` int(11) NOT NULL,
  `drivertruckbindrecord_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kzhd_archivedteam_member_archivedteam_id_drivertr_8adbc67f_uniq` (`archivedteam_id`,`drivertruckbindrecord_id`),
  KEY `kzhd_archivedteam_me_drivertruckbindrecor_7a9c58a8_fk_kzhd_driv` (`drivertruckbindrecord_id`),
  CONSTRAINT `kzhd_archivedteam_me_archivedteam_id_a4a7418b_fk_kzhd_arch` FOREIGN KEY (`archivedteam_id`) REFERENCES `kzhd_archivedteam` (`id`),
  CONSTRAINT `kzhd_archivedteam_me_drivertruckbindrecor_7a9c58a8_fk_kzhd_driv` FOREIGN KEY (`drivertruckbindrecord_id`) REFERENCES `kzhd_drivertruckbindrecord` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_archivedteam_members`
--

LOCK TABLES `kzhd_archivedteam_members` WRITE;
/*!40000 ALTER TABLE `kzhd_archivedteam_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_archivedteam_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_attachfeerecord`
--

DROP TABLE IF EXISTS `kzhd_attachfeerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_attachfeerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `fee` decimal(9,2) NOT NULL,
  `pay_time` datetime(6) NOT NULL,
  `actual_pay_time` datetime(6) DEFAULT NULL,
  `bill_num` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `driver_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_attachfeerecord_driver_id_6720ab4d_fk_kzhd_affi` (`driver_id`),
  KEY `kzhd_attachfeerecord_partner_id_8e5f54ba_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_attachfeerecord_create_time_a151a993` (`create_time`),
  CONSTRAINT `kzhd_attachfeerecord_driver_id_6720ab4d_fk_kzhd_affi` FOREIGN KEY (`driver_id`) REFERENCES `kzhd_affiliatedriver` (`driver_ptr_id`),
  CONSTRAINT `kzhd_attachfeerecord_partner_id_8e5f54ba_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_attachfeerecord`
--

LOCK TABLES `kzhd_attachfeerecord` WRITE;
/*!40000 ALTER TABLE `kzhd_attachfeerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_attachfeerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargobill`
--

DROP TABLE IF EXISTS `kzhd_cargobill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargobill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo_bill_id` varchar(13) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `settle_method` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `should_receive` decimal(17,2) NOT NULL,
  `actual_receive` decimal(17,2) NOT NULL,
  `adjust` decimal(9,2) NOT NULL,
  `reason` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `pay_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `ensured` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `kzhd_cargobill_customer_id_c931f401_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_cargobill_partner_id_e480ee1e_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_cargobill_pay_no_8bf46e41` (`pay_no`),
  KEY `kzhd_cargobill_create_time_13cbf505` (`create_time`),
  KEY `kzhd_cargobill_update_time_6625bfe6` (`update_time`),
  CONSTRAINT `kzhd_cargobill_customer_id_c931f401_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_cargobill_order_id_ce7837df_fk_kzhd_order_id` FOREIGN KEY (`order_id`) REFERENCES `kzhd_order` (`id`),
  CONSTRAINT `kzhd_cargobill_partner_id_e480ee1e_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargobill`
--

LOCK TABLES `kzhd_cargobill` WRITE;
/*!40000 ALTER TABLE `kzhd_cargobill` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_cargobill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargobillreceive`
--

DROP TABLE IF EXISTS `kzhd_cargobillreceive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargobillreceive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_time` datetime(6) NOT NULL,
  `amount` decimal(17,2) NOT NULL,
  `remark` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `cargo_bill_id` int(11) NOT NULL,
  `operator_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_cargobillreceiv_cargo_bill_id_bf5aea92_fk_kzhd_carg` (`cargo_bill_id`),
  KEY `kzhd_cargobillreceiv_operator_user_id_64049c65_fk_kzhd_gene` (`operator_user_id`),
  KEY `kzhd_cargobillreceive_create_time_881b346f` (`create_time`),
  CONSTRAINT `kzhd_cargobillreceiv_cargo_bill_id_bf5aea92_fk_kzhd_carg` FOREIGN KEY (`cargo_bill_id`) REFERENCES `kzhd_cargobill` (`id`),
  CONSTRAINT `kzhd_cargobillreceiv_operator_user_id_64049c65_fk_kzhd_gene` FOREIGN KEY (`operator_user_id`) REFERENCES `kzhd_generalprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargobillreceive`
--

LOCK TABLES `kzhd_cargobillreceive` WRITE;
/*!40000 ALTER TABLE `kzhd_cargobillreceive` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_cargobillreceive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargocategory`
--

DROP TABLE IF EXISTS `kzhd_cargocategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargocategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `cargo_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `start_count` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_cargocategory_customer_id_2e667f69_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_cargocategory_partner_id_132fc22d_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_cargocategory_customer_id_2e667f69_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_cargocategory_partner_id_132fc22d_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargocategory`
--

LOCK TABLES `kzhd_cargocategory` WRITE;
/*!40000 ALTER TABLE `kzhd_cargocategory` DISABLE KEYS */;
INSERT INTO `kzhd_cargocategory` VALUES (1,'2020-10-16 09:32:39.946762','2020-10-16 09:32:39.947006',1,'烟酒',20,1,1),(2,'2020-10-19 11:16:21.822281','2020-10-19 16:00:22.049331',0,'333',22,1,1),(3,'2020-10-19 14:10:40.429906','2020-10-19 14:31:16.769215',1,'第二件',2,1,1),(4,'2020-10-19 15:50:37.870933','2020-10-19 15:50:37.871171',0,'333',444,1,1);
/*!40000 ALTER TABLE `kzhd_cargocategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargoinsure`
--

DROP TABLE IF EXISTS `kzhd_cargoinsure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargoinsure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(9,2) NOT NULL,
  `category` int(11) NOT NULL,
  `cargo_name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `insure_cost` decimal(9,2) NOT NULL,
  `pay_method` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargoinsure`
--

LOCK TABLES `kzhd_cargoinsure` WRITE;
/*!40000 ALTER TABLE `kzhd_cargoinsure` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_cargoinsure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargor`
--

DROP TABLE IF EXISTS `kzhd_cargor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargor` (
  `generalprofile_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_cargor_generalprofile_ptr_i_6128b2c1_fk_kzhd_gene` FOREIGN KEY (`generalprofile_ptr_id`) REFERENCES `kzhd_generalprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargor`
--

LOCK TABLES `kzhd_cargor` WRITE;
/*!40000 ALTER TABLE `kzhd_cargor` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_cargor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_cargor_customers`
--

DROP TABLE IF EXISTS `kzhd_cargor_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_cargor_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargor_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kzhd_cargor_customers_cargor_id_customer_id_ac953a8c_uniq` (`cargor_id`,`customer_id`),
  KEY `kzhd_cargor_customers_customer_id_ed92185c_fk_kzhd_customer_id` (`customer_id`),
  CONSTRAINT `kzhd_cargor_customer_cargor_id_ed8ff137_fk_kzhd_carg` FOREIGN KEY (`cargor_id`) REFERENCES `kzhd_cargor` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_cargor_customers_customer_id_ed92185c_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_cargor_customers`
--

LOCK TABLES `kzhd_cargor_customers` WRITE;
/*!40000 ALTER TABLE `kzhd_cargor_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_cargor_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_circle`
--

DROP TABLE IF EXISTS `kzhd_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_circle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `county_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_circle_county_id_86d7bc41_fk_kzhd_county_id` (`county_id`),
  KEY `kzhd_circle_partner_id_d2c457df_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_circle_county_id_86d7bc41_fk_kzhd_county_id` FOREIGN KEY (`county_id`) REFERENCES `kzhd_county` (`id`),
  CONSTRAINT `kzhd_circle_partner_id_d2c457df_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_circle`
--

LOCK TABLES `kzhd_circle` WRITE;
/*!40000 ALTER TABLE `kzhd_circle` DISABLE KEYS */;
INSERT INTO `kzhd_circle` VALUES (1,'重庆江北区','500105',1),(2,'重庆渝中商圈','500103',1),(3,'2','500103',1);
/*!40000 ALTER TABLE `kzhd_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_city`
--

DROP TABLE IF EXISTS `kzhd_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_city` (
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `province_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_city_province_id_9d116cf6_fk_kzhd_province_id` (`province_id`),
  CONSTRAINT `kzhd_city_province_id_9d116cf6_fk_kzhd_province_id` FOREIGN KEY (`province_id`) REFERENCES `kzhd_province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_city`
--

LOCK TABLES `kzhd_city` WRITE;
/*!40000 ALTER TABLE `kzhd_city` DISABLE KEYS */;
INSERT INTO `kzhd_city` VALUES ('2020-10-15 17:32:07.411331','2020-10-15 17:32:07.411544',0,'110100','北京市','110000'),('2020-10-15 17:32:07.449674','2020-10-15 17:32:07.449846',0,'120100','天津市','120000'),('2020-10-15 17:32:07.505056','2020-10-15 17:32:07.505466',0,'130100','石家庄市','130000'),('2020-10-15 17:32:07.544629','2020-10-15 17:32:07.545155',0,'130200','唐山市','130000'),('2020-10-15 17:32:07.582875','2020-10-15 17:32:07.583159',0,'130300','秦皇岛市','130000'),('2020-10-15 17:32:07.669930','2020-10-15 17:32:07.670238',0,'130400','邯郸市','130000'),('2020-10-15 17:32:07.701357','2020-10-15 17:32:07.701483',0,'130500','邢台市','130000'),('2020-10-15 17:32:07.736750','2020-10-15 17:32:07.736779',0,'130600','保定市','130000'),('2020-10-15 17:32:07.765549','2020-10-15 17:32:07.765576',0,'130681','涿州市','130000'),('2020-10-15 17:32:07.796012','2020-10-15 17:32:07.796049',0,'130682','定州市','130000'),('2020-10-15 17:32:07.823253','2020-10-15 17:32:07.823280',0,'130683','安国市','130000'),('2020-10-15 17:32:07.855116','2020-10-15 17:32:07.855143',0,'130684','高碑店市','130000'),('2020-10-15 17:32:07.881396','2020-10-15 17:32:07.881421',0,'130700','张家口市','130000'),('2020-10-15 17:32:07.915106','2020-10-15 17:32:07.915132',0,'130800','承德市','130000'),('2020-10-15 17:32:07.956584','2020-10-15 17:32:07.956610',0,'130900','沧州市','130000'),('2020-10-15 17:32:08.012475','2020-10-15 17:32:08.012502',0,'131000','廊坊市','130000'),('2020-10-15 17:32:08.049095','2020-10-15 17:32:08.049121',0,'131100','衡水市','130000'),('2020-10-15 17:32:08.083277','2020-10-15 17:32:08.083303',0,'140100','太原市','140000'),('2020-10-15 17:32:08.115960','2020-10-15 17:32:08.115983',0,'140200','大同市','140000'),('2020-10-15 17:32:08.140813','2020-10-15 17:32:08.140839',0,'140300','阳泉市','140000'),('2020-10-15 17:32:08.169485','2020-10-15 17:32:08.169640',0,'140400','长治市','140000'),('2020-10-15 17:32:08.199728','2020-10-15 17:32:08.199757',0,'140500','晋城市','140000'),('2020-10-15 17:32:08.228088','2020-10-15 17:32:08.228168',0,'140600','朔州市','140000'),('2020-10-15 17:32:08.257567','2020-10-15 17:32:08.257686',0,'140700','晋中市','140000'),('2020-10-15 17:32:08.297437','2020-10-15 17:32:08.297791',0,'140800','运城市','140000'),('2020-10-15 17:32:08.324534','2020-10-15 17:32:08.324560',0,'140900','忻州市','140000'),('2020-10-15 17:32:08.349367','2020-10-15 17:32:08.349398',0,'141000','临汾市','140000'),('2020-10-15 17:32:08.374236','2020-10-15 17:32:08.374272',0,'141100','吕梁市','140000'),('2020-10-15 17:32:08.401069','2020-10-15 17:32:08.401094',0,'150100','呼和浩特市','150000'),('2020-10-15 17:32:08.432735','2020-10-15 17:32:08.432762',0,'150200','包头市','150000'),('2020-10-15 17:32:08.458884','2020-10-15 17:32:08.458910',0,'150300','乌海市','150000'),('2020-10-15 17:32:08.483025','2020-10-15 17:32:08.483052',0,'150400','赤峰市','150000'),('2020-10-15 17:32:08.507831','2020-10-15 17:32:08.507864',0,'150500','通辽市','150000'),('2020-10-15 17:32:08.533506','2020-10-15 17:32:08.533532',0,'150600','鄂尔多斯市','150000'),('2020-10-15 17:32:08.557926','2020-10-15 17:32:08.557951',0,'150700','呼伦贝尔市','150000'),('2020-10-15 17:32:08.583199','2020-10-15 17:32:08.583224',0,'150800','巴彦淖尔市','150000'),('2020-10-15 17:32:08.616593','2020-10-15 17:32:08.616618',0,'150900','乌兰察布市','150000'),('2020-10-15 17:32:08.648595','2020-10-15 17:32:08.648633',0,'152200','兴安盟','150000'),('2020-10-15 17:32:08.691997','2020-10-15 17:32:08.692022',0,'152500','锡林郭勒盟','150000'),('2020-10-15 17:32:08.715911','2020-10-15 17:32:08.715936',0,'152900','阿拉善盟','150000'),('2020-10-15 17:32:08.740943','2020-10-15 17:32:08.740969',0,'210100','沈阳市','210000'),('2020-10-15 17:32:08.791428','2020-10-15 17:32:08.791454',0,'210200','大连市','210000'),('2020-10-15 17:32:08.815886','2020-10-15 17:32:08.815911',0,'210300','鞍山市','210000'),('2020-10-15 17:32:08.849715','2020-10-15 17:32:08.849745',0,'210400','抚顺市','210000'),('2020-10-15 17:32:08.875562','2020-10-15 17:32:08.875588',0,'210500','本溪市','210000'),('2020-10-15 17:32:08.899576','2020-10-15 17:32:08.899601',0,'210600','丹东市','210000'),('2020-10-15 17:32:08.924864','2020-10-15 17:32:08.924890',0,'210700','锦州市','210000'),('2020-10-15 17:32:08.954425','2020-10-15 17:32:08.954542',0,'210800','营口市','210000'),('2020-10-15 17:32:08.984036','2020-10-15 17:32:08.984090',0,'210900','阜新市','210000'),('2020-10-15 17:32:09.016842','2020-10-15 17:32:09.016872',0,'211000','辽阳市','210000'),('2020-10-15 17:32:09.041207','2020-10-15 17:32:09.041231',0,'211100','盘锦市','210000'),('2020-10-15 17:32:09.066594','2020-10-15 17:32:09.066619',0,'211200','铁岭市','210000'),('2020-10-15 17:32:09.091851','2020-10-15 17:32:09.091877',0,'211300','朝阳市','210000'),('2020-10-15 17:32:09.116462','2020-10-15 17:32:09.116488',0,'211400','葫芦岛市','210000'),('2020-10-15 17:32:09.148863','2020-10-15 17:32:09.148997',0,'220100','长春市','220000'),('2020-10-15 17:32:09.189029','2020-10-15 17:32:09.189059',0,'220200','吉林市','220000'),('2020-10-15 17:32:09.216316','2020-10-15 17:32:09.216344',0,'220300','四平市','220000'),('2020-10-15 17:32:09.242136','2020-10-15 17:32:09.242162',0,'220400','辽源市','220000'),('2020-10-15 17:32:09.266193','2020-10-15 17:32:09.266219',0,'220500','通化市','220000'),('2020-10-15 17:32:09.292990','2020-10-15 17:32:09.293017',0,'220600','白山市','220000'),('2020-10-15 17:32:09.316875','2020-10-15 17:32:09.316901',0,'220700','松原市','220000'),('2020-10-15 17:32:09.373090','2020-10-15 17:32:09.373138',0,'220800','白城市','220000'),('2020-10-15 17:32:09.402548','2020-10-15 17:32:09.402812',0,'222400','延边朝鲜族自治州','220000'),('2020-10-15 17:32:09.454489','2020-10-15 17:32:09.455133',0,'230100','哈尔滨市','230000'),('2020-10-15 17:32:09.531355','2020-10-15 17:32:09.531538',0,'230200','齐齐哈尔市','230000'),('2020-10-15 17:32:09.574759','2020-10-15 17:32:09.574995',0,'230300','鸡西市','230000'),('2020-10-15 17:32:09.609510','2020-10-15 17:32:09.609539',0,'230400','鹤岗市','230000'),('2020-10-15 17:32:09.653902','2020-10-15 17:32:09.654087',0,'230500','双鸭山市','230000'),('2020-10-15 17:32:09.713584','2020-10-15 17:32:09.714067',0,'230600','大庆市','230000'),('2020-10-15 17:32:09.746933','2020-10-15 17:32:09.746993',0,'230700','伊春市','230000'),('2020-10-15 17:32:09.775625','2020-10-15 17:32:09.775723',0,'230800','佳木斯市','230000'),('2020-10-15 17:32:09.802345','2020-10-15 17:32:09.802374',0,'230900','七台河市','230000'),('2020-10-15 17:32:09.833995','2020-10-15 17:32:09.834021',0,'231000','牡丹江市','230000'),('2020-10-15 17:32:09.858606','2020-10-15 17:32:09.858642',0,'231100','黑河市','230000'),('2020-10-15 17:32:09.883521','2020-10-15 17:32:09.883547',0,'231200','绥化市','230000'),('2020-10-15 17:32:09.915859','2020-10-15 17:32:09.915888',0,'232700','大兴安岭地区','230000'),('2020-10-15 17:32:09.942807','2020-10-15 17:32:09.942842',0,'310100','上海市','310000'),('2020-10-15 17:32:09.975409','2020-10-15 17:32:09.975434',0,'320100','南京市','320000'),('2020-10-15 17:32:10.000629','2020-10-15 17:32:10.000663',0,'320200','无锡市','320000'),('2020-10-15 17:32:10.025665','2020-10-15 17:32:10.025722',0,'320300','徐州市','320000'),('2020-10-15 17:32:10.050937','2020-10-15 17:32:10.050963',0,'320400','常州市','320000'),('2020-10-15 17:32:10.083910','2020-10-15 17:32:10.083952',0,'320500','苏州市','320000'),('2020-10-15 17:32:10.108895','2020-10-15 17:32:10.108920',0,'320600','南通市','320000'),('2020-10-15 17:32:10.134576','2020-10-15 17:32:10.134604',0,'320700','连云港市','320000'),('2020-10-15 17:32:10.170863','2020-10-15 17:32:10.170901',0,'320800','淮安市','320000'),('2020-10-15 17:32:10.202968','2020-10-15 17:32:10.202997',0,'320900','盐城市','320000'),('2020-10-15 17:32:10.250177','2020-10-15 17:32:10.250724',0,'321000','扬州市','320000'),('2020-10-15 17:32:10.289755','2020-10-15 17:32:10.289863',0,'321100','镇江市','320000'),('2020-10-15 17:32:10.318800','2020-10-15 17:32:10.319019',0,'321200','泰州市','320000'),('2020-10-15 17:32:10.351975','2020-10-15 17:32:10.352050',0,'321300','宿迁市','320000'),('2020-10-15 17:32:10.384315','2020-10-15 17:32:10.384340',0,'330100','杭州市','330000'),('2020-10-15 17:32:10.409366','2020-10-15 17:32:10.409392',0,'330200','宁波市','330000'),('2020-10-15 17:32:10.442247','2020-10-15 17:32:10.442272',0,'330300','温州市','330000'),('2020-10-15 17:32:10.467334','2020-10-15 17:32:10.467359',0,'330400','嘉兴市','330000'),('2020-10-15 17:32:10.492518','2020-10-15 17:32:10.492544',0,'330500','湖州市','330000'),('2020-10-15 17:32:10.516962','2020-10-15 17:32:10.516986',0,'330600','绍兴市','330000'),('2020-10-15 17:32:10.542112','2020-10-15 17:32:10.542138',0,'330700','金华市','330000'),('2020-10-15 17:32:10.566999','2020-10-15 17:32:10.567026',0,'330800','衢州市','330000'),('2020-10-15 17:32:10.598974','2020-10-15 17:32:10.599000',0,'330900','舟山市','330000'),('2020-10-15 17:32:10.634174','2020-10-15 17:32:10.634200',0,'331000','台州市','330000'),('2020-10-15 17:32:10.675934','2020-10-15 17:32:10.675962',0,'331100','丽水市','330000'),('2020-10-15 17:32:10.706648','2020-10-15 17:32:10.706676',0,'340100','合肥市','340000'),('2020-10-15 17:32:10.740217','2020-10-15 17:32:10.740243',0,'340200','芜湖市','340000'),('2020-10-15 17:32:10.773314','2020-10-15 17:32:10.773339',0,'340300','蚌埠市','340000'),('2020-10-15 17:32:10.806686','2020-10-15 17:32:10.806740',0,'340400','淮南市','340000'),('2020-10-15 17:32:10.840109','2020-10-15 17:32:10.840134',0,'340500','马鞍山市','340000'),('2020-10-15 17:32:10.873515','2020-10-15 17:32:10.873541',0,'340600','淮北市','340000'),('2020-10-15 17:32:10.906933','2020-10-15 17:32:10.906958',0,'340700','铜陵市','340000'),('2020-10-15 17:32:10.942064','2020-10-15 17:32:10.942094',0,'340800','安庆市','340000'),('2020-10-15 17:32:10.975196','2020-10-15 17:32:10.975290',0,'341000','黄山市','340000'),('2020-10-15 17:32:11.057191','2020-10-15 17:32:11.057245',0,'341100','滁州市','340000'),('2020-10-15 17:32:11.085621','2020-10-15 17:32:11.085673',0,'341200','阜阳市','340000'),('2020-10-15 17:32:11.118021','2020-10-15 17:32:11.118050',0,'341300','宿州市','340000'),('2020-10-15 17:32:11.148793','2020-10-15 17:32:11.148829',0,'341500','六安市','340000'),('2020-10-15 17:32:11.176267','2020-10-15 17:32:11.176325',0,'341600','亳州市','340000'),('2020-10-15 17:32:11.206829','2020-10-15 17:32:11.206855',0,'341700','池州市','340000'),('2020-10-15 17:32:11.234774','2020-10-15 17:32:11.234800',0,'341800','宣城市','340000'),('2020-10-15 17:32:11.265041','2020-10-15 17:32:11.265067',0,'350100','福州市','350000'),('2020-10-15 17:32:11.293029','2020-10-15 17:32:11.293055',0,'350200','厦门市','350000'),('2020-10-15 17:32:11.325637','2020-10-15 17:32:11.325674',0,'350300','莆田市','350000'),('2020-10-15 17:32:11.351609','2020-10-15 17:32:11.351637',0,'350400','三明市','350000'),('2020-10-15 17:32:11.382042','2020-10-15 17:32:11.382068',0,'350500','泉州市','350000'),('2020-10-15 17:32:11.409614','2020-10-15 17:32:11.409641',0,'350600','漳州市','350000'),('2020-10-15 17:32:11.434545','2020-10-15 17:32:11.434570',0,'350700','南平市','350000'),('2020-10-15 17:32:11.461088','2020-10-15 17:32:11.461146',0,'350800','龙岩市','350000'),('2020-10-15 17:32:11.496145','2020-10-15 17:32:11.496212',0,'350900','宁德市','350000'),('2020-10-15 17:32:11.526655','2020-10-15 17:32:11.526683',0,'360100','南昌市','360000'),('2020-10-15 17:32:11.560117','2020-10-15 17:32:11.560168',0,'360200','景德镇市','360000'),('2020-10-15 17:32:11.607798','2020-10-15 17:32:11.607885',0,'360300','萍乡市','360000'),('2020-10-15 17:32:11.724539','2020-10-15 17:32:11.724947',0,'360400','九江市','360000'),('2020-10-15 17:32:11.767972','2020-10-15 17:32:11.768096',0,'360500','新余市','360000'),('2020-10-15 17:32:11.807594','2020-10-15 17:32:11.807968',0,'360600','鹰潭市','360000'),('2020-10-15 17:32:11.863587','2020-10-15 17:32:11.864413',0,'360700','赣州市','360000'),('2020-10-15 17:32:11.903780','2020-10-15 17:32:11.903961',0,'360800','吉安市','360000'),('2020-10-15 17:32:11.937353','2020-10-15 17:32:11.937399',0,'360900','宜春市','360000'),('2020-10-15 17:32:11.971678','2020-10-15 17:32:11.971764',0,'361000','抚州市','360000'),('2020-10-15 17:32:12.006270','2020-10-15 17:32:12.006330',0,'361100','上饶市','360000'),('2020-10-15 17:32:12.039367','2020-10-15 17:32:12.039461',0,'370100','济南市','370000'),('2020-10-15 17:32:12.076463','2020-10-15 17:32:12.076683',0,'370200','青岛市','370000'),('2020-10-15 17:32:12.117318','2020-10-15 17:32:12.117540',0,'370300','淄博市','370000'),('2020-10-15 17:32:12.170073','2020-10-15 17:32:12.170763',0,'370400','枣庄市','370000'),('2020-10-15 17:32:12.211573','2020-10-15 17:32:12.211759',0,'370500','东营市','370000'),('2020-10-15 17:32:12.266096','2020-10-15 17:32:12.267110',0,'370600','烟台市','370000'),('2020-10-15 17:32:12.314822','2020-10-15 17:32:12.314988',0,'370700','潍坊市','370000'),('2020-10-15 17:32:12.381442','2020-10-15 17:32:12.381740',0,'370800','济宁市','370000'),('2020-10-15 17:32:12.430885','2020-10-15 17:32:12.431288',0,'370900','泰安市','370000'),('2020-10-15 17:32:12.478959','2020-10-15 17:32:12.479243',0,'371000','威海市','370000'),('2020-10-15 17:32:12.517090','2020-10-15 17:32:12.517190',0,'371100','日照市','370000'),('2020-10-15 17:32:12.571657','2020-10-15 17:32:12.572285',0,'371200','莱芜市','370000'),('2020-10-15 17:32:12.684498','2020-10-15 17:32:12.684899',0,'371300','临沂市','370000'),('2020-10-15 17:32:12.731962','2020-10-15 17:32:12.732756',0,'371400','德州市','370000'),('2020-10-15 17:32:12.761627','2020-10-15 17:32:12.761820',0,'371500','聊城市','370000'),('2020-10-15 17:32:12.794600','2020-10-15 17:32:12.794642',0,'371600','滨州市','370000'),('2020-10-15 17:32:12.827784','2020-10-15 17:32:12.827833',0,'371700','菏泽市','370000'),('2020-10-15 17:32:12.865622','2020-10-15 17:32:12.865876',0,'410100','郑州市','410000'),('2020-10-15 17:32:12.910752','2020-10-15 17:32:12.911100',0,'410200','开封市','410000'),('2020-10-15 17:32:12.944361','2020-10-15 17:32:12.944445',0,'410300','洛阳市','410000'),('2020-10-15 17:32:12.985363','2020-10-15 17:32:12.985623',0,'410400','平顶山市','410000'),('2020-10-15 17:32:13.025651','2020-10-15 17:32:13.025757',0,'410500','安阳市','410000'),('2020-10-15 17:32:13.051760','2020-10-15 17:32:13.051831',0,'410600','鹤壁市','410000'),('2020-10-15 17:32:13.088391','2020-10-15 17:32:13.088645',0,'410700','新乡市','410000'),('2020-10-15 17:32:13.124292','2020-10-15 17:32:13.124446',0,'410800','焦作市','410000'),('2020-10-15 17:32:13.153503','2020-10-15 17:32:13.153563',0,'410900','濮阳市','410000'),('2020-10-15 17:32:13.190336','2020-10-15 17:32:13.190425',0,'411000','许昌市','410000'),('2020-10-15 17:32:13.227161','2020-10-15 17:32:13.227279',0,'411100','漯河市','410000'),('2020-10-15 17:32:13.261749','2020-10-15 17:32:13.261799',0,'411200','三门峡市','410000'),('2020-10-15 17:32:13.293932','2020-10-15 17:32:13.293959',0,'411300','南阳市','410000'),('2020-10-15 17:32:13.334179','2020-10-15 17:32:13.334496',0,'411400','商丘市','410000'),('2020-10-15 17:32:13.369009','2020-10-15 17:32:13.369046',0,'411500','信阳市','410000'),('2020-10-15 17:32:13.400017','2020-10-15 17:32:13.400061',0,'411600','周口市','410000'),('2020-10-15 17:32:13.427294','2020-10-15 17:32:13.427320',0,'411700','驻马店市','410000'),('2020-10-15 17:32:13.458294','2020-10-15 17:32:13.458324',0,'419001','济源市','410000'),('2020-10-15 17:32:13.485632','2020-10-15 17:32:13.485657',0,'420100','武汉市','420000'),('2020-10-15 17:32:13.515999','2020-10-15 17:32:13.516029',0,'420200','黄石市','420000'),('2020-10-15 17:32:13.543302','2020-10-15 17:32:13.543332',0,'420300','十堰市','420000'),('2020-10-15 17:32:13.568634','2020-10-15 17:32:13.568660',0,'420500','宜昌市','420000'),('2020-10-15 17:32:13.606062','2020-10-15 17:32:13.606088',0,'420600','襄阳市','420000'),('2020-10-15 17:32:13.700345','2020-10-15 17:32:13.700376',0,'420700','鄂州市','420000'),('2020-10-15 17:32:13.727372','2020-10-15 17:32:13.727397',0,'420800','荆门市','420000'),('2020-10-15 17:32:13.761364','2020-10-15 17:32:13.761403',0,'420900','孝感市','420000'),('2020-10-15 17:32:13.795369','2020-10-15 17:32:13.795427',0,'421000','荆州市','420000'),('2020-10-15 17:32:13.826948','2020-10-15 17:32:13.826973',0,'421100','黄冈市','420000'),('2020-10-15 17:32:13.857960','2020-10-15 17:32:13.857990',0,'421200','咸宁市','420000'),('2020-10-15 17:32:13.885031','2020-10-15 17:32:13.885056',0,'421300','随州市','420000'),('2020-10-15 17:32:13.916669','2020-10-15 17:32:13.916723',0,'422800','恩施土家族苗族自治州','420000'),('2020-10-15 17:32:13.943554','2020-10-15 17:32:13.943579',0,'429004','仙桃市','420000'),('2020-10-15 17:32:13.975037','2020-10-15 17:32:13.975090',0,'429005','潜江市','420000'),('2020-10-15 17:32:14.002003','2020-10-15 17:32:14.002031',0,'429006','天门市','420000'),('2020-10-15 17:32:14.033201','2020-10-15 17:32:14.033226',0,'429021','神农架林区','420000'),('2020-10-15 17:32:14.060817','2020-10-15 17:32:14.060842',0,'430100','长沙市','430000'),('2020-10-15 17:32:14.093995','2020-10-15 17:32:14.094022',0,'430200','株洲市','430000'),('2020-10-15 17:32:14.124757','2020-10-15 17:32:14.124795',0,'430300','湘潭市','430000'),('2020-10-15 17:32:14.152435','2020-10-15 17:32:14.152460',0,'430400','衡阳市','430000'),('2020-10-15 17:32:14.183293','2020-10-15 17:32:14.183320',0,'430500','邵阳市','430000'),('2020-10-15 17:32:14.210643','2020-10-15 17:32:14.210668',0,'430600','岳阳市','430000'),('2020-10-15 17:32:14.241195','2020-10-15 17:32:14.241226',0,'430700','常德市','430000'),('2020-10-15 17:32:14.268595','2020-10-15 17:32:14.268621',0,'430800','张家界市','430000'),('2020-10-15 17:32:14.302923','2020-10-15 17:32:14.302953',0,'430900','益阳市','430000'),('2020-10-15 17:32:14.335636','2020-10-15 17:32:14.335661',0,'431000','郴州市','430000'),('2020-10-15 17:32:14.367721','2020-10-15 17:32:14.367749',0,'431100','永州市','430000'),('2020-10-15 17:32:14.399600','2020-10-15 17:32:14.399624',0,'431200','怀化市','430000'),('2020-10-15 17:32:14.427480','2020-10-15 17:32:14.427504',0,'431300','娄底市','430000'),('2020-10-15 17:32:14.458229','2020-10-15 17:32:14.458256',0,'433100','湘西土家族苗族自治州','430000'),('2020-10-15 17:32:14.488048','2020-10-15 17:32:14.488100',0,'440100','广州市','440000'),('2020-10-15 17:32:14.517017','2020-10-15 17:32:14.517041',0,'440200','韶关市','440000'),('2020-10-15 17:32:14.541588','2020-10-15 17:32:14.541613',0,'440300','深圳市','440000'),('2020-10-15 17:32:14.569659','2020-10-15 17:32:14.569687',0,'440400','珠海市','440000'),('2020-10-15 17:32:14.606343','2020-10-15 17:32:14.606369',0,'440500','汕头市','440000'),('2020-10-15 17:32:14.650051','2020-10-15 17:32:14.650076',0,'440600','佛山市','440000'),('2020-10-15 17:32:14.675026','2020-10-15 17:32:14.675052',0,'440700','江门市','440000'),('2020-10-15 17:32:14.699750','2020-10-15 17:32:14.699775',0,'440800','湛江市','440000'),('2020-10-15 17:32:14.725110','2020-10-15 17:32:14.725136',0,'440900','茂名市','440000'),('2020-10-15 17:32:14.751813','2020-10-15 17:32:14.751863',0,'441200','肇庆市','440000'),('2020-10-15 17:32:14.784972','2020-10-15 17:32:14.785002',0,'441300','惠州市','440000'),('2020-10-15 17:32:14.818019','2020-10-15 17:32:14.818044',0,'441400','梅州市','440000'),('2020-10-15 17:32:14.842778','2020-10-15 17:32:14.842808',0,'441500','汕尾市','440000'),('2020-10-15 17:32:14.866937','2020-10-15 17:32:14.866962',0,'441600','河源市','440000'),('2020-10-15 17:32:14.892560','2020-10-15 17:32:14.892586',0,'441700','阳江市','440000'),('2020-10-15 17:32:14.916907','2020-10-15 17:32:14.916932',0,'441800','清远市','440000'),('2020-10-15 17:32:14.941672','2020-10-15 17:32:14.941725',0,'441900','东莞市','440000'),('2020-10-15 17:32:14.970628','2020-10-15 17:32:14.970657',0,'442000','中山市','440000'),('2020-10-15 17:32:15.002721','2020-10-15 17:32:15.002843',0,'445100','潮州市','440000'),('2020-10-15 17:32:15.034044','2020-10-15 17:32:15.034069',0,'445200','揭阳市','440000'),('2020-10-15 17:32:15.058824','2020-10-15 17:32:15.058850',0,'445300','云浮市','440000'),('2020-10-15 17:32:15.083565','2020-10-15 17:32:15.083590',0,'450100','南宁市','450000'),('2020-10-15 17:32:15.108636','2020-10-15 17:32:15.108660',0,'450200','柳州市','450000'),('2020-10-15 17:32:15.133833','2020-10-15 17:32:15.133859',0,'450300','桂林市','450000'),('2020-10-15 17:32:15.158995','2020-10-15 17:32:15.159019',0,'450400','梧州市','450000'),('2020-10-15 17:32:15.183677','2020-10-15 17:32:15.183733',0,'450500','北海市','450000'),('2020-10-15 17:32:15.208788','2020-10-15 17:32:15.208817',0,'450600','防城港市','450000'),('2020-10-15 17:32:15.234591','2020-10-15 17:32:15.234628',0,'450700','钦州市','450000'),('2020-10-15 17:32:15.259059','2020-10-15 17:32:15.259094',0,'450800','贵港市','450000'),('2020-10-15 17:32:15.284235','2020-10-15 17:32:15.284260',0,'450900','玉林市','450000'),('2020-10-15 17:32:15.308804','2020-10-15 17:32:15.308832',0,'451000','百色市','450000'),('2020-10-15 17:32:15.334275','2020-10-15 17:32:15.334302',0,'451100','贺州市','450000'),('2020-10-15 17:32:15.444471','2020-10-15 17:32:15.444540',0,'451200','河池市','450000'),('2020-10-15 17:32:15.552577','2020-10-15 17:32:15.553719',0,'451300','来宾市','450000'),('2020-10-15 17:32:15.654929','2020-10-15 17:32:15.655718',0,'451400','崇左市','450000'),('2020-10-15 17:32:15.723989','2020-10-15 17:32:15.725131',0,'460100','海口市','460000'),('2020-10-15 17:32:15.791782','2020-10-15 17:32:15.792831',0,'460200','三亚市','460000'),('2020-10-15 17:32:15.868044','2020-10-15 17:32:15.868300',0,'460300','三沙市','460000'),('2020-10-15 17:32:15.924572','2020-10-15 17:32:15.925349',0,'460400','儋州市','460000'),('2020-10-15 17:32:15.985020','2020-10-15 17:32:15.985842',0,'469001','五指山市','460000'),('2020-10-15 17:32:16.059646','2020-10-15 17:32:16.059887',0,'469002','琼海市','460000'),('2020-10-15 17:32:16.087790','2020-10-15 17:32:16.087880',0,'469005','文昌市','460000'),('2020-10-15 17:32:16.118929','2020-10-15 17:32:16.118990',0,'469006','万宁市','460000'),('2020-10-15 17:32:16.153421','2020-10-15 17:32:16.153474',0,'469007','东方市','460000'),('2020-10-15 17:32:16.187164','2020-10-15 17:32:16.187374',0,'469021','定安县','460000'),('2020-10-15 17:32:16.218884','2020-10-15 17:32:16.218966',0,'469022','屯昌县','460000'),('2020-10-15 17:32:16.252970','2020-10-15 17:32:16.253159',0,'469023','澄迈县','460000'),('2020-10-15 17:32:16.287351','2020-10-15 17:32:16.287525',0,'469024','临高县','460000'),('2020-10-15 17:32:16.348064','2020-10-15 17:32:16.350395',0,'469025','白沙黎族自治县','460000'),('2020-10-15 17:32:16.413453','2020-10-15 17:32:16.413638',0,'469026','昌江黎族自治县','460000'),('2020-10-15 17:32:16.444152','2020-10-15 17:32:16.444245',0,'469027','乐东黎族自治县','460000'),('2020-10-15 17:32:16.482989','2020-10-15 17:32:16.483078',0,'469028','陵水黎族自治县','460000'),('2020-10-15 17:32:16.510185','2020-10-15 17:32:16.510224',0,'469029','保亭黎族苗族自治县','460000'),('2020-10-15 17:32:16.534619','2020-10-15 17:32:16.534645',0,'469030','琼中黎族苗族自治县','460000'),('2020-10-15 17:32:16.559492','2020-10-15 17:32:16.559524',0,'500100','重庆市','500000'),('2020-10-15 17:32:16.586917','2020-10-15 17:32:16.586977',0,'510100','成都市','510000'),('2020-10-15 17:32:16.645241','2020-10-15 17:32:16.645291',0,'510300','自贡市','510000'),('2020-10-15 17:32:16.725564','2020-10-15 17:32:16.725861',0,'510400','攀枝花市','510000'),('2020-10-15 17:32:16.825926','2020-10-15 17:32:16.827147',0,'510500','泸州市','510000'),('2020-10-15 17:32:16.889385','2020-10-15 17:32:16.890234',0,'510600','德阳市','510000'),('2020-10-15 17:32:16.930633','2020-10-15 17:32:16.930672',0,'510700','绵阳市','510000'),('2020-10-15 17:32:16.969476','2020-10-15 17:32:16.969779',0,'510800','广元市','510000'),('2020-10-15 17:32:17.030310','2020-10-15 17:32:17.030493',0,'510900','遂宁市','510000'),('2020-10-15 17:32:17.163963','2020-10-15 17:32:17.164055',0,'511000','内江市','510000'),('2020-10-15 17:32:17.226105','2020-10-15 17:32:17.226148',0,'511100','乐山市','510000'),('2020-10-15 17:32:17.258253','2020-10-15 17:32:17.258285',0,'511300','南充市','510000'),('2020-10-15 17:32:17.292935','2020-10-15 17:32:17.293138',0,'511400','眉山市','510000'),('2020-10-15 17:32:17.333370','2020-10-15 17:32:17.333670',0,'511500','宜宾市','510000'),('2020-10-15 17:32:17.548787','2020-10-15 17:32:17.548992',0,'511600','广安市','510000'),('2020-10-15 17:32:17.879583','2020-10-15 17:32:17.879852',0,'511700','达州市','510000'),('2020-10-15 17:32:17.927126','2020-10-15 17:32:17.927511',0,'511800','雅安市','510000'),('2020-10-15 17:32:17.970634','2020-10-15 17:32:17.970806',0,'511900','巴中市','510000'),('2020-10-15 17:32:18.011724','2020-10-15 17:32:18.011975',0,'512000','资阳市','510000'),('2020-10-15 17:32:18.046485','2020-10-15 17:32:18.046527',0,'513200','阿坝藏族羌族自治州','510000'),('2020-10-15 17:32:18.104238','2020-10-15 17:32:18.104305',0,'513300','甘孜藏族自治州','510000'),('2020-10-15 17:32:18.140080','2020-10-15 17:32:18.140144',0,'513400','凉山彝族自治州','510000'),('2020-10-15 17:32:18.169992','2020-10-15 17:32:18.170019',0,'520100','贵阳市','520000'),('2020-10-15 17:32:18.204979','2020-10-15 17:32:18.205053',0,'520200','六盘水市','520000'),('2020-10-15 17:32:18.242064','2020-10-15 17:32:18.242128',0,'520300','遵义市','520000'),('2020-10-15 17:32:18.296416','2020-10-15 17:32:18.297254',0,'520400','安顺市','520000'),('2020-10-15 17:32:18.404503','2020-10-15 17:32:18.405671',0,'520500','毕节市','520000'),('2020-10-15 17:32:18.462941','2020-10-15 17:32:18.463102',0,'520600','铜仁市','520000'),('2020-10-15 17:32:18.495783','2020-10-15 17:32:18.495809',0,'522300','黔西南布依族苗族自治州','520000'),('2020-10-15 17:32:18.532790','2020-10-15 17:32:18.532831',0,'522600','黔东南苗族侗族自治州','520000'),('2020-10-15 17:32:18.561534','2020-10-15 17:32:18.561559',0,'522700','黔南布依族苗族自治州','520000'),('2020-10-15 17:32:18.597647','2020-10-15 17:32:18.597674',0,'530100','昆明市','530000'),('2020-10-15 17:32:18.645992','2020-10-15 17:32:18.646017',0,'530300','曲靖市','530000'),('2020-10-15 17:32:18.679188','2020-10-15 17:32:18.679234',0,'530400','玉溪市','530000'),('2020-10-15 17:32:18.711878','2020-10-15 17:32:18.711915',0,'530500','保山市','530000'),('2020-10-15 17:32:18.745240','2020-10-15 17:32:18.745265',0,'530600','昭通市','530000'),('2020-10-15 17:32:18.778536','2020-10-15 17:32:18.778562',0,'530700','丽江市','530000'),('2020-10-15 17:32:18.812615','2020-10-15 17:32:18.812640',0,'530800','普洱市','530000'),('2020-10-15 17:32:18.845129','2020-10-15 17:32:18.845154',0,'530900','临沧市','530000'),('2020-10-15 17:32:18.878568','2020-10-15 17:32:18.878593',0,'532300','楚雄彝族自治州','530000'),('2020-10-15 17:32:18.911799','2020-10-15 17:32:18.911825',0,'532500','红河哈尼族彝族自治州','530000'),('2020-10-15 17:32:18.955130','2020-10-15 17:32:18.955166',0,'532600','文山壮族苗族自治州','530000'),('2020-10-15 17:32:18.990713','2020-10-15 17:32:18.990752',0,'532800','西双版纳傣族自治州','530000'),('2020-10-15 17:32:19.020417','2020-10-15 17:32:19.020445',0,'532900','大理白族自治州','530000'),('2020-10-15 17:32:19.054000','2020-10-15 17:32:19.054027',0,'533100','德宏傣族景颇族自治州','530000'),('2020-10-15 17:32:19.107471','2020-10-15 17:32:19.107595',0,'533300','怒江傈僳族自治州','530000'),('2020-10-15 17:32:19.163620','2020-10-15 17:32:19.163652',0,'533400','迪庆藏族自治州','530000'),('2020-10-15 17:32:19.212664','2020-10-15 17:32:19.212726',0,'540100','拉萨市','540000'),('2020-10-15 17:32:19.245823','2020-10-15 17:32:19.245849',0,'540200','日喀则市','540000'),('2020-10-15 17:32:19.278906','2020-10-15 17:32:19.278934',0,'540300','昌都市','540000'),('2020-10-15 17:32:19.311752','2020-10-15 17:32:19.311777',0,'540400','林芝市','540000'),('2020-10-15 17:32:19.339290','2020-10-15 17:32:19.339314',0,'540500','山南市','540000'),('2020-10-15 17:32:19.395762','2020-10-15 17:32:19.395788',0,'540600','那曲市','540000'),('2020-10-15 17:32:19.428833','2020-10-15 17:32:19.428859',0,'542500','阿里地区','540000'),('2020-10-15 17:32:19.463414','2020-10-15 17:32:19.463453',0,'610100','西安市','610000'),('2020-10-15 17:32:19.495754','2020-10-15 17:32:19.495780',0,'610200','铜川市','610000'),('2020-10-15 17:32:19.528788','2020-10-15 17:32:19.528823',0,'610300','宝鸡市','610000'),('2020-10-15 17:32:19.562300','2020-10-15 17:32:19.562324',0,'610400','咸阳市','610000'),('2020-10-15 17:32:19.621844','2020-10-15 17:32:19.621893',0,'610500','渭南市','610000'),('2020-10-15 17:32:19.682103','2020-10-15 17:32:19.682129',0,'610600','延安市','610000'),('2020-10-15 17:32:19.712547','2020-10-15 17:32:19.712576',0,'610700','汉中市','610000'),('2020-10-15 17:32:19.746750','2020-10-15 17:32:19.746803',0,'610800','榆林市','610000'),('2020-10-15 17:32:19.778964','2020-10-15 17:32:19.778990',0,'610900','安康市','610000'),('2020-10-15 17:32:19.812543','2020-10-15 17:32:19.812568',0,'611000','商洛市','610000'),('2020-10-15 17:32:19.907506','2020-10-15 17:32:19.907565',0,'620100','兰州市','620000'),('2020-10-15 17:32:19.991374','2020-10-15 17:32:19.991546',0,'620200','嘉峪关市','620000'),('2020-10-15 17:32:20.223167','2020-10-15 17:32:20.223304',0,'620300','金昌市','620000'),('2020-10-15 17:32:20.438855','2020-10-15 17:32:20.439007',0,'620400','白银市','620000'),('2020-10-15 17:32:20.843511','2020-10-15 17:32:20.843642',0,'620500','天水市','620000'),('2020-10-15 17:32:20.880949','2020-10-15 17:32:20.880978',0,'620600','武威市','620000'),('2020-10-15 17:32:20.938547','2020-10-15 17:32:20.938575',0,'620700','张掖市','620000'),('2020-10-15 17:32:21.058262','2020-10-15 17:32:21.058491',0,'620800','平凉市','620000'),('2020-10-15 17:32:21.109777','2020-10-15 17:32:21.109811',0,'620900','酒泉市','620000'),('2020-10-15 17:32:21.133432','2020-10-15 17:32:21.133457',0,'621000','庆阳市','620000'),('2020-10-15 17:32:21.161741','2020-10-15 17:32:21.161848',0,'621100','定西市','620000'),('2020-10-15 17:32:21.195564','2020-10-15 17:32:21.195635',0,'621200','陇南市','620000'),('2020-10-15 17:32:21.224733','2020-10-15 17:32:21.224760',0,'622900','临夏回族自治州','620000'),('2020-10-15 17:32:21.249783','2020-10-15 17:32:21.249810',0,'623000','甘南藏族自治州','620000'),('2020-10-15 17:32:21.274789','2020-10-15 17:32:21.274815',0,'630100','西宁市','630000'),('2020-10-15 17:32:21.300250','2020-10-15 17:32:21.300275',0,'630200','海东市','630000'),('2020-10-15 17:32:21.325049','2020-10-15 17:32:21.325074',0,'632200','海北藏族自治州','630000'),('2020-10-15 17:32:21.398603','2020-10-15 17:32:21.398635',0,'632300','黄南藏族自治州','630000'),('2020-10-15 17:32:21.427432','2020-10-15 17:32:21.427460',0,'632500','海南藏族自治州','630000'),('2020-10-15 17:32:21.459641','2020-10-15 17:32:21.459666',0,'632600','果洛藏族自治州','630000'),('2020-10-15 17:32:21.484798','2020-10-15 17:32:21.484824',0,'632700','玉树藏族自治州','630000'),('2020-10-15 17:32:21.517789','2020-10-15 17:32:21.517838',0,'632800','海西蒙古族藏族自治州','630000'),('2020-10-15 17:32:21.543808','2020-10-15 17:32:21.543834',0,'640100','银川市','640000'),('2020-10-15 17:32:21.567743','2020-10-15 17:32:21.567839',0,'640200','石嘴山市','640000'),('2020-10-15 17:32:21.592884','2020-10-15 17:32:21.592909',0,'640300','吴忠市','640000'),('2020-10-15 17:32:21.665540','2020-10-15 17:32:21.665566',0,'640400','固原市','640000'),('2020-10-15 17:32:21.705271','2020-10-15 17:32:21.705306',0,'640500','中卫市','640000'),('2020-10-15 17:32:21.734664','2020-10-15 17:32:21.734723',0,'650100','乌鲁木齐市','650000'),('2020-10-15 17:32:21.761666','2020-10-15 17:32:21.761752',0,'650200','克拉玛依市','650000'),('2020-10-15 17:32:21.801707','2020-10-15 17:32:21.801813',0,'650400','吐鲁番市','650000'),('2020-10-15 17:32:21.825838','2020-10-15 17:32:21.825893',0,'650500','哈密市','650000'),('2020-10-15 17:32:21.911135','2020-10-15 17:32:21.911172',0,'652300','昌吉回族自治州','650000'),('2020-10-15 17:32:21.943663','2020-10-15 17:32:21.943723',0,'652700','博尔塔拉蒙古自治州','650000'),('2020-10-15 17:32:21.967373','2020-10-15 17:32:21.967400',0,'652800','巴音郭楞蒙古自治州','650000'),('2020-10-15 17:32:21.994243','2020-10-15 17:32:21.994273',0,'652900','阿克苏地区','650000'),('2020-10-15 17:32:22.017667','2020-10-15 17:32:22.017726',0,'653000','克孜勒苏柯尔克孜自治州','650000'),('2020-10-15 17:32:22.050777','2020-10-15 17:32:22.050806',0,'653100','喀什地区','650000'),('2020-10-15 17:32:22.107919','2020-10-15 17:32:22.107984',0,'653200','和田地区','650000'),('2020-10-15 17:32:22.134139','2020-10-15 17:32:22.134164',0,'654000','伊犁哈萨克自治州','650000'),('2020-10-15 17:32:22.159018','2020-10-15 17:32:22.159045',0,'654200','塔城地区','650000'),('2020-10-15 17:32:22.184273','2020-10-15 17:32:22.184301',0,'654300','阿勒泰地区','650000'),('2020-10-15 17:32:22.209163','2020-10-15 17:32:22.209189',0,'659001','石河子市','650000'),('2020-10-15 17:32:22.234190','2020-10-15 17:32:22.234215',0,'659002','阿拉尔市','650000'),('2020-10-15 17:32:22.259065','2020-10-15 17:32:22.259090',0,'659003','图木舒克市','650000'),('2020-10-15 17:32:22.300863','2020-10-15 17:32:22.300891',0,'659004','五家渠市','650000'),('2020-10-15 17:32:22.325729','2020-10-15 17:32:22.325754',0,'659005','北屯市','650000'),('2020-10-15 17:32:22.351251','2020-10-15 17:32:22.351279',0,'659006','铁门关市','650000'),('2020-10-15 17:32:22.376341','2020-10-15 17:32:22.376367',0,'659007','双河市','650000'),('2020-10-15 17:32:22.461471','2020-10-15 17:32:22.461519',0,'659008','可克达拉市','650000'),('2020-10-15 17:32:22.503528','2020-10-15 17:32:22.503582',0,'659009','昆玉市','650000');
/*!40000 ALTER TABLE `kzhd_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_county`
--

DROP TABLE IF EXISTS `kzhd_county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_county` (
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `city_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_county_city_id_edd7e1a2_fk_kzhd_city_id` (`city_id`),
  CONSTRAINT `kzhd_county_city_id_edd7e1a2_fk_kzhd_city_id` FOREIGN KEY (`city_id`) REFERENCES `kzhd_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_county`
--

LOCK TABLES `kzhd_county` WRITE;
/*!40000 ALTER TABLE `kzhd_county` DISABLE KEYS */;
INSERT INTO `kzhd_county` VALUES ('2020-10-15 17:32:22.559624','2020-10-15 17:32:22.559720',0,'110101','东城区','110100'),('2020-10-15 17:32:22.594044','2020-10-15 17:32:22.594241',0,'110102','西城区','110100'),('2020-10-15 17:32:22.635451','2020-10-15 17:32:22.635481',0,'110105','朝阳区','110100'),('2020-10-15 17:32:22.708795','2020-10-15 17:32:22.708831',0,'110106','丰台区','110100'),('2020-10-15 17:32:22.735672','2020-10-15 17:32:22.735728',0,'110107','石景山区','110100'),('2020-10-15 17:32:22.760741','2020-10-15 17:32:22.760768',0,'110108','海淀区','110100'),('2020-10-15 17:32:22.786293','2020-10-15 17:32:22.786320',0,'110109','门头沟区','110100'),('2020-10-15 17:32:22.816755','2020-10-15 17:32:22.816781',0,'110111','房山区','110100'),('2020-10-15 17:32:22.844472','2020-10-15 17:32:22.844497',0,'110112','通州区','110100'),('2020-10-15 17:32:22.907831','2020-10-15 17:32:22.907963',0,'110113','顺义区','110100'),('2020-10-15 17:32:22.935611','2020-10-15 17:32:22.935637',0,'110114','昌平区','110100'),('2020-10-15 17:32:22.961858','2020-10-15 17:32:22.961883',0,'110115','大兴区','110100'),('2020-10-15 17:32:22.995200','2020-10-15 17:32:22.995236',0,'110116','怀柔区','110100'),('2020-10-15 17:32:23.028498','2020-10-15 17:32:23.028545',0,'110117','平谷区','110100'),('2020-10-15 17:32:23.058737','2020-10-15 17:32:23.058764',0,'110118','密云区','110100'),('2020-10-15 17:32:23.086105','2020-10-15 17:32:23.086130',0,'110119','延庆区','110100'),('2020-10-15 17:32:23.116975','2020-10-15 17:32:23.117004',0,'120101','和平区','120100'),('2020-10-15 17:32:23.144876','2020-10-15 17:32:23.144918',0,'120102','河东区','120100'),('2020-10-15 17:32:23.175391','2020-10-15 17:32:23.175417',0,'120103','河西区','120100'),('2020-10-15 17:32:23.204856','2020-10-15 17:32:23.204886',0,'120104','南开区','120100'),('2020-10-15 17:32:23.236444','2020-10-15 17:32:23.236470',0,'120105','河北区','120100'),('2020-10-15 17:32:23.268315','2020-10-15 17:32:23.268341',0,'120106','红桥区','120100'),('2020-10-15 17:32:23.295959','2020-10-15 17:32:23.295983',0,'120110','东丽区','120100'),('2020-10-15 17:32:23.328959','2020-10-15 17:32:23.328992',0,'120111','西青区','120100'),('2020-10-15 17:32:23.362412','2020-10-15 17:32:23.362437',0,'120112','津南区','120100'),('2020-10-15 17:32:23.400641','2020-10-15 17:32:23.400786',0,'120113','北辰区','120100'),('2020-10-15 17:32:23.425671','2020-10-15 17:32:23.425721',0,'120114','武清区','120100'),('2020-10-15 17:32:23.450641','2020-10-15 17:32:23.450666',0,'120115','宝坻区','120100'),('2020-10-15 17:32:23.478537','2020-10-15 17:32:23.478563',0,'120116','滨海新区','120100'),('2020-10-15 17:32:23.509786','2020-10-15 17:32:23.509826',0,'120117','宁河区','120100'),('2020-10-15 17:32:23.536595','2020-10-15 17:32:23.536618',0,'120118','静海区','120100'),('2020-10-15 17:32:23.569352','2020-10-15 17:32:23.569422',0,'120119','蓟州区','120100'),('2020-10-15 17:32:23.612721','2020-10-15 17:32:23.612916',0,'130102','长安区','130100'),('2020-10-15 17:32:23.651560','2020-10-15 17:32:23.651590',0,'130104','桥西区','130100'),('2020-10-15 17:32:23.724542','2020-10-15 17:32:23.724730',0,'130105','新华区','130100'),('2020-10-15 17:32:23.754215','2020-10-15 17:32:23.754347',0,'130107','井陉矿区','130100'),('2020-10-15 17:32:23.791894','2020-10-15 17:32:23.792286',0,'130108','裕华区','130100'),('2020-10-15 17:32:23.839393','2020-10-15 17:32:23.839679',0,'130109','藁城区','130100'),('2020-10-15 17:32:23.873434','2020-10-15 17:32:23.873489',0,'130110','鹿泉区','130100'),('2020-10-15 17:32:23.902321','2020-10-15 17:32:23.902355',0,'130111','栾城区','130100'),('2020-10-15 17:32:23.944385','2020-10-15 17:32:23.944543',0,'130121','井陉县','130100'),('2020-10-15 17:32:24.009994','2020-10-15 17:32:24.011232',0,'130123','正定县','130100'),('2020-10-15 17:32:24.062209','2020-10-15 17:32:24.062280',0,'130125','行唐县','130100'),('2020-10-15 17:32:24.155380','2020-10-15 17:32:24.156194',0,'130126','灵寿县','130100'),('2020-10-15 17:32:24.199682','2020-10-15 17:32:24.200091',0,'130127','高邑县','130100'),('2020-10-15 17:32:24.236052','2020-10-15 17:32:24.236172',0,'130128','深泽县','130100'),('2020-10-15 17:32:24.272220','2020-10-15 17:32:24.272294',0,'130129','赞皇县','130100'),('2020-10-15 17:32:24.303681','2020-10-15 17:32:24.303746',0,'130130','无极县','130100'),('2020-10-15 17:32:24.336880','2020-10-15 17:32:24.336924',0,'130131','平山县','130100'),('2020-10-15 17:32:24.473062','2020-10-15 17:32:24.473585',0,'130132','元氏县','130100'),('2020-10-15 17:32:24.509776','2020-10-15 17:32:24.509874',0,'130133','赵县','130100'),('2020-10-15 17:32:24.551117','2020-10-15 17:32:24.551654',0,'130181','辛集市','130100'),('2020-10-15 17:32:24.594679','2020-10-15 17:32:24.594777',0,'130183','晋州市','130100'),('2020-10-15 17:32:24.620264','2020-10-15 17:32:24.620299',0,'130184','新乐市','130100'),('2020-10-15 17:32:24.685526','2020-10-15 17:32:24.685658',0,'130202','路南区','130200'),('2020-10-15 17:32:24.721969','2020-10-15 17:32:24.722097',0,'130203','路北区','130200'),('2020-10-15 17:32:24.752967','2020-10-15 17:32:24.752994',0,'130204','古冶区','130200'),('2020-10-15 17:32:24.778482','2020-10-15 17:32:24.778507',0,'130205','开平区','130200'),('2020-10-15 17:32:24.811485','2020-10-15 17:32:24.811512',0,'130207','丰南区','130200'),('2020-10-15 17:32:24.844816','2020-10-15 17:32:24.844843',0,'130208','丰润区','130200'),('2020-10-15 17:32:24.877870','2020-10-15 17:32:24.877896',0,'130209','曹妃甸区','130200'),('2020-10-15 17:32:24.911672','2020-10-15 17:32:24.911728',0,'130223','滦县','130200'),('2020-10-15 17:32:24.944464','2020-10-15 17:32:24.944490',0,'130224','滦南县','130200'),('2020-10-15 17:32:24.969227','2020-10-15 17:32:24.969252',0,'130225','乐亭县','130200'),('2020-10-15 17:32:24.994559','2020-10-15 17:32:24.994584',0,'130227','迁西县','130200'),('2020-10-15 17:32:25.020812','2020-10-15 17:32:25.020851',0,'130229','玉田县','130200'),('2020-10-15 17:32:25.054498','2020-10-15 17:32:25.054634',0,'130281','遵化市','130200'),('2020-10-15 17:32:25.085892','2020-10-15 17:32:25.085919',0,'130283','迁安市','130200'),('2020-10-15 17:32:25.111412','2020-10-15 17:32:25.111442',0,'130302','海港区','130300'),('2020-10-15 17:32:25.144486','2020-10-15 17:32:25.144511',0,'130303','山海关区','130300'),('2020-10-15 17:32:25.180963','2020-10-15 17:32:25.180987',0,'130304','北戴河区','130300'),('2020-10-15 17:32:25.213897','2020-10-15 17:32:25.213935',0,'130306','抚宁区','130300'),('2020-10-15 17:32:25.262167','2020-10-15 17:32:25.262265',0,'130321','青龙满族自治县','130300'),('2020-10-15 17:32:25.295274','2020-10-15 17:32:25.295299',0,'130322','昌黎县','130300'),('2020-10-15 17:32:25.323244','2020-10-15 17:32:25.323271',0,'130324','卢龙县','130300'),('2020-10-15 17:32:25.353511','2020-10-15 17:32:25.353537',0,'130402','邯山区','130400'),('2020-10-15 17:32:25.394113','2020-10-15 17:32:25.394261',0,'130403','丛台区','130400'),('2020-10-15 17:32:25.422916','2020-10-15 17:32:25.422942',0,'130404','复兴区','130400'),('2020-10-15 17:32:25.453435','2020-10-15 17:32:25.453460',0,'130406','峰峰矿区','130400'),('2020-10-15 17:32:25.481566','2020-10-15 17:32:25.481591',0,'130407','肥乡区','130400'),('2020-10-15 17:32:25.512246','2020-10-15 17:32:25.512271',0,'130408','永年区','130400'),('2020-10-15 17:32:25.539585','2020-10-15 17:32:25.539608',0,'130423','临漳县','130400'),('2020-10-15 17:32:25.571152','2020-10-15 17:32:25.571179',0,'130424','成安县','130400'),('2020-10-15 17:32:25.612074','2020-10-15 17:32:25.612099',0,'130425','大名县','130400'),('2020-10-15 17:32:25.645311','2020-10-15 17:32:25.645337',0,'130426','涉县','130400'),('2020-10-15 17:32:25.689833','2020-10-15 17:32:25.689858',0,'130427','磁县','130400'),('2020-10-15 17:32:25.720365','2020-10-15 17:32:25.720390',0,'130430','邱县','130400'),('2020-10-15 17:32:25.748157','2020-10-15 17:32:25.748184',0,'130431','鸡泽县','130400'),('2020-10-15 17:32:25.778670','2020-10-15 17:32:25.778728',0,'130432','广平县','130400'),('2020-10-15 17:32:25.824452','2020-10-15 17:32:25.824499',0,'130433','馆陶县','130400'),('2020-10-15 17:32:25.877377','2020-10-15 17:32:25.877626',0,'130434','魏县','130400'),('2020-10-15 17:32:25.908451','2020-10-15 17:32:25.908527',0,'130435','曲周县','130400'),('2020-10-15 17:32:25.939723','2020-10-15 17:32:25.939759',0,'130481','武安市','130400'),('2020-10-15 17:32:25.971993','2020-10-15 17:32:25.972025',0,'130502','桥东区','130500'),('2020-10-15 17:32:26.045466','2020-10-15 17:32:26.045884',0,'130503','桥西区','130500'),('2020-10-15 17:32:26.136175','2020-10-15 17:32:26.136869',0,'130521','邢台县','130500'),('2020-10-15 17:32:26.231248','2020-10-15 17:32:26.232179',0,'130522','临城县','130500'),('2020-10-15 17:32:26.295067','2020-10-15 17:32:26.295335',0,'130523','内丘县','130500'),('2020-10-15 17:32:26.331508','2020-10-15 17:32:26.331677',0,'130524','柏乡县','130500'),('2020-10-15 17:32:26.370841','2020-10-15 17:32:26.370928',0,'130525','隆尧县','130500'),('2020-10-15 17:32:26.402226','2020-10-15 17:32:26.402263',0,'130526','任县','130500'),('2020-10-15 17:32:26.426959','2020-10-15 17:32:26.426988',0,'130527','南和县','130500'),('2020-10-15 17:32:26.451845','2020-10-15 17:32:26.451872',0,'130528','宁晋县','130500'),('2020-10-15 17:32:26.476632','2020-10-15 17:32:26.476659',0,'130529','巨鹿县','130500'),('2020-10-15 17:32:26.502167','2020-10-15 17:32:26.502194',0,'130530','新河县','130500'),('2020-10-15 17:32:26.555185','2020-10-15 17:32:26.555987',0,'130531','广宗县','130500'),('2020-10-15 17:32:26.600547','2020-10-15 17:32:26.600761',0,'130532','平乡县','130500'),('2020-10-15 17:32:26.677248','2020-10-15 17:32:26.677339',0,'130533','威县','130500'),('2020-10-15 17:32:26.716854','2020-10-15 17:32:26.717048',0,'130534','清河县','130500'),('2020-10-15 17:32:26.761770','2020-10-15 17:32:26.761883',0,'130535','临西县','130500'),('2020-10-15 17:32:26.796005','2020-10-15 17:32:26.796176',0,'130581','南宫市','130500'),('2020-10-15 17:32:26.828494','2020-10-15 17:32:26.828534',0,'130582','沙河市','130500'),('2020-10-15 17:32:26.861954','2020-10-15 17:32:26.862022',0,'130602','竞秀区','130600'),('2020-10-15 17:32:26.895638','2020-10-15 17:32:26.895678',0,'130606','莲池区','130600'),('2020-10-15 17:32:26.920117','2020-10-15 17:32:26.920145',0,'130607','满城区','130600'),('2020-10-15 17:32:26.952946','2020-10-15 17:32:26.952995',0,'130608','清苑区','130600'),('2020-10-15 17:32:26.981277','2020-10-15 17:32:26.981302',0,'130609','徐水区','130600'),('2020-10-15 17:32:27.012955','2020-10-15 17:32:27.012995',0,'130623','涞水县','130600'),('2020-10-15 17:32:27.049181','2020-10-15 17:32:27.049251',0,'130624','阜平县','130600'),('2020-10-15 17:32:27.079082','2020-10-15 17:32:27.079192',0,'130626','定兴县','130600'),('2020-10-15 17:32:27.138251','2020-10-15 17:32:27.138815',0,'130627','唐县','130600'),('2020-10-15 17:32:27.177480','2020-10-15 17:32:27.177525',0,'130628','高阳县','130600'),('2020-10-15 17:32:27.205279','2020-10-15 17:32:27.205340',0,'130629','容城县','130600'),('2020-10-15 17:32:27.242348','2020-10-15 17:32:27.242438',0,'130630','涞源县','130600'),('2020-10-15 17:32:27.270513','2020-10-15 17:32:27.270543',0,'130631','望都县','130600'),('2020-10-15 17:32:27.305072','2020-10-15 17:32:27.305194',0,'130632','安新县','130600'),('2020-10-15 17:32:27.361672','2020-10-15 17:32:27.362282',0,'130633','易县','130600'),('2020-10-15 17:32:27.407817','2020-10-15 17:32:27.407899',0,'130634','曲阳县','130600'),('2020-10-15 17:32:27.437094','2020-10-15 17:32:27.437129',0,'130635','蠡县','130600'),('2020-10-15 17:32:27.468082','2020-10-15 17:32:27.468116',0,'130636','顺平县','130600'),('2020-10-15 17:32:27.495629','2020-10-15 17:32:27.495658',0,'130637','博野县','130600'),('2020-10-15 17:32:27.529375','2020-10-15 17:32:27.529407',0,'130638','雄县','130600'),('2020-10-15 17:32:27.562520','2020-10-15 17:32:27.562554',0,'130702','桥东区','130700'),('2020-10-15 17:32:27.604516','2020-10-15 17:32:27.604889',0,'130703','桥西区','130700'),('2020-10-15 17:32:27.668777','2020-10-15 17:32:27.669058',0,'130705','宣化区','130700'),('2020-10-15 17:32:27.701603','2020-10-15 17:32:27.701664',0,'130706','下花园区','130700'),('2020-10-15 17:32:27.730136','2020-10-15 17:32:27.730199',0,'130708','万全区','130700'),('2020-10-15 17:32:27.780371','2020-10-15 17:32:27.780413',0,'130709','崇礼区','130700'),('2020-10-15 17:32:27.810201','2020-10-15 17:32:27.810226',0,'130722','张北县','130700'),('2020-10-15 17:32:27.834840','2020-10-15 17:32:27.834865',0,'130723','康保县','130700'),('2020-10-15 17:32:27.861602','2020-10-15 17:32:27.861646',0,'130724','沽源县','130700'),('2020-10-15 17:32:27.901486','2020-10-15 17:32:27.901624',0,'130725','尚义县','130700'),('2020-10-15 17:32:27.938704','2020-10-15 17:32:27.939024',0,'130726','蔚县','130700'),('2020-10-15 17:32:27.973457','2020-10-15 17:32:27.973536',0,'130727','阳原县','130700'),('2020-10-15 17:32:28.002308','2020-10-15 17:32:28.002345',0,'130728','怀安县','130700'),('2020-10-15 17:32:28.033754','2020-10-15 17:32:28.033940',0,'130730','怀来县','130700'),('2020-10-15 17:32:28.079959','2020-10-15 17:32:28.080374',0,'130731','涿鹿县','130700'),('2020-10-15 17:32:28.114105','2020-10-15 17:32:28.114167',0,'130732','赤城县','130700'),('2020-10-15 17:32:28.144995','2020-10-15 17:32:28.145037',0,'130802','双桥区','130800'),('2020-10-15 17:32:28.178673','2020-10-15 17:32:28.178819',0,'130803','双滦区','130800'),('2020-10-15 17:32:28.221277','2020-10-15 17:32:28.221820',0,'130804','鹰手营子矿区','130800'),('2020-10-15 17:32:28.291677','2020-10-15 17:32:28.292424',0,'130821','承德县','130800'),('2020-10-15 17:32:28.372212','2020-10-15 17:32:28.372718',0,'130822','兴隆县','130800'),('2020-10-15 17:32:28.514947','2020-10-15 17:32:28.516023',0,'130824','滦平县','130800'),('2020-10-15 17:32:28.607836','2020-10-15 17:32:28.608489',0,'130825','隆化县','130800'),('2020-10-15 17:32:28.713744','2020-10-15 17:32:28.714881',0,'130826','丰宁满族自治县','130800'),('2020-10-15 17:32:28.803389','2020-10-15 17:32:28.804236',0,'130827','宽城满族自治县','130800'),('2020-10-15 17:32:28.897045','2020-10-15 17:32:28.898112',0,'130828','围场满族蒙古族自治县','130800'),('2020-10-15 17:32:28.983007','2020-10-15 17:32:28.984360',0,'130881','平泉市','130800'),('2020-10-15 17:32:29.106884','2020-10-15 17:32:29.107674',0,'130902','新华区','130900'),('2020-10-15 17:32:29.186611','2020-10-15 17:32:29.187558',0,'130903','运河区','130900'),('2020-10-15 17:32:29.239022','2020-10-15 17:32:29.239275',0,'130921','沧县','130900'),('2020-10-15 17:32:29.295437','2020-10-15 17:32:29.295780',0,'130922','青县','130900'),('2020-10-15 17:32:29.336309','2020-10-15 17:32:29.336496',0,'130923','东光县','130900'),('2020-10-15 17:32:29.397944','2020-10-15 17:32:29.398206',0,'130924','海兴县','130900'),('2020-10-15 17:32:29.443630','2020-10-15 17:32:29.444078',0,'130925','盐山县','130900'),('2020-10-15 17:32:29.501834','2020-10-15 17:32:29.502209',0,'130926','肃宁县','130900'),('2020-10-15 17:32:29.576526','2020-10-15 17:32:29.576936',0,'130927','南皮县','130900'),('2020-10-15 17:32:29.626380','2020-10-15 17:32:29.626755',0,'130928','吴桥县','130900'),('2020-10-15 17:32:29.732626','2020-10-15 17:32:29.733920',0,'130929','献县','130900'),('2020-10-15 17:32:29.799115','2020-10-15 17:32:29.799790',0,'130930','孟村回族自治县','130900'),('2020-10-15 17:32:29.845488','2020-10-15 17:32:29.845861',0,'130981','泊头市','130900'),('2020-10-15 17:32:29.890250','2020-10-15 17:32:29.890779',0,'130982','任丘市','130900'),('2020-10-15 17:32:29.937470','2020-10-15 17:32:29.938005',0,'130983','黄骅市','130900'),('2020-10-15 17:32:29.995998','2020-10-15 17:32:29.996421',0,'130984','河间市','130900'),('2020-10-15 17:32:30.025899','2020-10-15 17:32:30.026063',0,'131002','安次区','131000'),('2020-10-15 17:32:30.056381','2020-10-15 17:32:30.056487',0,'131003','广阳区','131000'),('2020-10-15 17:32:30.127113','2020-10-15 17:32:30.127926',0,'131022','固安县','131000'),('2020-10-15 17:32:30.193576','2020-10-15 17:32:30.194173',0,'131023','永清县','131000'),('2020-10-15 17:32:30.261967','2020-10-15 17:32:30.262497',0,'131024','香河县','131000'),('2020-10-15 17:32:30.322677','2020-10-15 17:32:30.323856',0,'131025','大城县','131000'),('2020-10-15 17:32:30.459560','2020-10-15 17:32:30.460603',0,'131026','文安县','131000'),('2020-10-15 17:32:30.551051','2020-10-15 17:32:30.551937',0,'131028','大厂回族自治县','131000'),('2020-10-15 17:32:30.651612','2020-10-15 17:32:30.652537',0,'131081','霸州市','131000'),('2020-10-15 17:32:30.808863','2020-10-15 17:32:30.812037',0,'131082','三河市','131000'),('2020-10-15 17:32:30.885149','2020-10-15 17:32:30.885847',0,'131102','桃城区','131100'),('2020-10-15 17:32:30.982983','2020-10-15 17:32:30.983929',0,'131103','冀州区','131100'),('2020-10-15 17:32:31.052463','2020-10-15 17:32:31.053326',0,'131121','枣强县','131100'),('2020-10-15 17:32:31.140518','2020-10-15 17:32:31.141174',0,'131122','武邑县','131100'),('2020-10-15 17:32:31.201519','2020-10-15 17:32:31.202076',0,'131123','武强县','131100'),('2020-10-15 17:32:31.300362','2020-10-15 17:32:31.300892',0,'131124','饶阳县','131100'),('2020-10-15 17:32:31.354328','2020-10-15 17:32:31.354593',0,'131125','安平县','131100'),('2020-10-15 17:32:31.401454','2020-10-15 17:32:31.401956',0,'131126','故城县','131100'),('2020-10-15 17:32:31.436562','2020-10-15 17:32:31.436785',0,'131127','景县','131100'),('2020-10-15 17:32:31.538431','2020-10-15 17:32:31.539496',0,'131128','阜城县','131100'),('2020-10-15 17:32:31.605264','2020-10-15 17:32:31.605988',0,'131182','深州市','131100'),('2020-10-15 17:32:31.700334','2020-10-15 17:32:31.700905',0,'140105','小店区','140100'),('2020-10-15 17:32:31.777105','2020-10-15 17:32:31.777959',0,'140106','迎泽区','140100'),('2020-10-15 17:32:31.850553','2020-10-15 17:32:31.851266',0,'140107','杏花岭区','140100'),('2020-10-15 17:32:31.899530','2020-10-15 17:32:31.899878',0,'140108','尖草坪区','140100'),('2020-10-15 17:32:31.937413','2020-10-15 17:32:31.937594',0,'140109','万柏林区','140100'),('2020-10-15 17:32:31.985371','2020-10-15 17:32:31.985724',0,'140110','晋源区','140100'),('2020-10-15 17:32:32.044493','2020-10-15 17:32:32.044841',0,'140121','清徐县','140100'),('2020-10-15 17:32:32.092540','2020-10-15 17:32:32.092687',0,'140122','阳曲县','140100'),('2020-10-15 17:32:32.123405','2020-10-15 17:32:32.123464',0,'140123','娄烦县','140100'),('2020-10-15 17:32:32.169583','2020-10-15 17:32:32.169923',0,'140181','古交市','140100'),('2020-10-15 17:32:32.238444','2020-10-15 17:32:32.239463',0,'140202','城区','140200'),('2020-10-15 17:32:32.276615','2020-10-15 17:32:32.276838',0,'140203','矿区','140200'),('2020-10-15 17:32:32.308841','2020-10-15 17:32:32.308934',0,'140211','南郊区','140200'),('2020-10-15 17:32:32.341600','2020-10-15 17:32:32.341841',0,'140212','新荣区','140200'),('2020-10-15 17:32:32.400499','2020-10-15 17:32:32.400930',0,'140221','阳高县','140200'),('2020-10-15 17:32:32.449158','2020-10-15 17:32:32.449745',0,'140222','天镇县','140200'),('2020-10-15 17:32:32.512614','2020-10-15 17:32:32.513098',0,'140223','广灵县','140200'),('2020-10-15 17:32:32.560343','2020-10-15 17:32:32.560684',0,'140224','灵丘县','140200'),('2020-10-15 17:32:32.634870','2020-10-15 17:32:32.635873',0,'140225','浑源县','140200'),('2020-10-15 17:32:32.761598','2020-10-15 17:32:32.761815',0,'140226','左云县','140200'),('2020-10-15 17:32:32.790956','2020-10-15 17:32:32.790983',0,'140227','大同县','140200'),('2020-10-15 17:32:32.827105','2020-10-15 17:32:32.827162',0,'140302','城区','140300'),('2020-10-15 17:32:32.854546','2020-10-15 17:32:32.854571',0,'140303','矿区','140300'),('2020-10-15 17:32:32.887605','2020-10-15 17:32:32.887629',0,'140311','郊区','140300'),('2020-10-15 17:32:32.932354','2020-10-15 17:32:32.932468',0,'140321','平定县','140300'),('2020-10-15 17:32:32.963301','2020-10-15 17:32:32.963326',0,'140322','盂县','140300'),('2020-10-15 17:32:33.001703','2020-10-15 17:32:33.001855',0,'140402','城区','140400'),('2020-10-15 17:32:33.032233','2020-10-15 17:32:33.032315',0,'140411','郊区','140400'),('2020-10-15 17:32:33.062778','2020-10-15 17:32:33.062804',0,'140421','长治县','140400'),('2020-10-15 17:32:33.096674','2020-10-15 17:32:33.096729',0,'140423','襄垣县','140400'),('2020-10-15 17:32:33.129979','2020-10-15 17:32:33.130007',0,'140424','屯留县','140400'),('2020-10-15 17:32:33.162676','2020-10-15 17:32:33.162732',0,'140425','平顺县','140400'),('2020-10-15 17:32:33.196240','2020-10-15 17:32:33.196265',0,'140426','黎城县','140400'),('2020-10-15 17:32:33.229816','2020-10-15 17:32:33.229885',0,'140427','壶关县','140400'),('2020-10-15 17:32:33.268074','2020-10-15 17:32:33.268121',0,'140428','长子县','140400'),('2020-10-15 17:32:33.300185','2020-10-15 17:32:33.300227',0,'140429','武乡县','140400'),('2020-10-15 17:32:33.331067','2020-10-15 17:32:33.331119',0,'140430','沁县','140400'),('2020-10-15 17:32:33.394087','2020-10-15 17:32:33.394159',0,'140431','沁源县','140400'),('2020-10-15 17:32:33.423467','2020-10-15 17:32:33.423551',0,'140481','潞城市','140400'),('2020-10-15 17:32:33.466163','2020-10-15 17:32:33.466294',0,'140502','城区','140500'),('2020-10-15 17:32:33.509419','2020-10-15 17:32:33.509526',0,'140521','沁水县','140500'),('2020-10-15 17:32:33.551757','2020-10-15 17:32:33.551922',0,'140522','阳城县','140500'),('2020-10-15 17:32:33.583095','2020-10-15 17:32:33.583171',0,'140524','陵川县','140500'),('2020-10-15 17:32:33.709661','2020-10-15 17:32:33.710449',0,'140525','泽州县','140500'),('2020-10-15 17:32:33.761826','2020-10-15 17:32:33.762071',0,'140581','高平市','140500'),('2020-10-15 17:32:33.798297','2020-10-15 17:32:33.798523',0,'140602','朔城区','140600'),('2020-10-15 17:32:33.829878','2020-10-15 17:32:33.829911',0,'140603','平鲁区','140600'),('2020-10-15 17:32:33.863122','2020-10-15 17:32:33.863149',0,'140621','山阴县','140600'),('2020-10-15 17:32:33.896422','2020-10-15 17:32:33.896447',0,'140622','应县','140600'),('2020-10-15 17:32:33.929842','2020-10-15 17:32:33.929868',0,'140623','右玉县','140600'),('2020-10-15 17:32:33.967437','2020-10-15 17:32:33.967477',0,'140624','怀仁县','140600'),('2020-10-15 17:32:33.995990','2020-10-15 17:32:33.996015',0,'140702','榆次区','140700'),('2020-10-15 17:32:34.031089','2020-10-15 17:32:34.031140',0,'140721','榆社县','140700'),('2020-10-15 17:32:34.063880','2020-10-15 17:32:34.063920',0,'140722','左权县','140700'),('2020-10-15 17:32:34.096828','2020-10-15 17:32:34.096853',0,'140723','和顺县','140700'),('2020-10-15 17:32:34.129812','2020-10-15 17:32:34.129838',0,'140724','昔阳县','140700'),('2020-10-15 17:32:34.163485','2020-10-15 17:32:34.163510',0,'140725','寿阳县','140700'),('2020-10-15 17:32:34.198428','2020-10-15 17:32:34.198453',0,'140726','太谷县','140700'),('2020-10-15 17:32:34.229411','2020-10-15 17:32:34.229436',0,'140727','祁县','140700'),('2020-10-15 17:32:34.263332','2020-10-15 17:32:34.263361',0,'140728','平遥县','140700'),('2020-10-15 17:32:34.296048','2020-10-15 17:32:34.296073',0,'140729','灵石县','140700'),('2020-10-15 17:32:34.334095','2020-10-15 17:32:34.334263',0,'140781','介休市','140700'),('2020-10-15 17:32:34.365594','2020-10-15 17:32:34.365761',0,'140802','盐湖区','140800'),('2020-10-15 17:32:34.408074','2020-10-15 17:32:34.408161',0,'140821','临猗县','140800'),('2020-10-15 17:32:34.465230','2020-10-15 17:32:34.466309',0,'140822','万荣县','140800'),('2020-10-15 17:32:34.515165','2020-10-15 17:32:34.515282',0,'140823','闻喜县','140800'),('2020-10-15 17:32:34.551708','2020-10-15 17:32:34.551789',0,'140824','稷山县','140800'),('2020-10-15 17:32:34.592774','2020-10-15 17:32:34.592979',0,'140825','新绛县','140800'),('2020-10-15 17:32:34.666264','2020-10-15 17:32:34.666627',0,'140826','绛县','140800'),('2020-10-15 17:32:34.696920','2020-10-15 17:32:34.696950',0,'140827','垣曲县','140800'),('2020-10-15 17:32:34.729580','2020-10-15 17:32:34.729612',0,'140828','夏县','140800'),('2020-10-15 17:32:34.774370','2020-10-15 17:32:34.774741',0,'140829','平陆县','140800'),('2020-10-15 17:32:34.826392','2020-10-15 17:32:34.826881',0,'140830','芮城县','140800'),('2020-10-15 17:32:34.881681','2020-10-15 17:32:34.881983',0,'140881','永济市','140800'),('2020-10-15 17:32:34.933131','2020-10-15 17:32:34.933463',0,'140882','河津市','140800'),('2020-10-15 17:32:34.973495','2020-10-15 17:32:34.973748',0,'140902','忻府区','140900'),('2020-10-15 17:32:35.010566','2020-10-15 17:32:35.010656',0,'140921','定襄县','140900'),('2020-10-15 17:32:35.043999','2020-10-15 17:32:35.044116',0,'140922','五台县','140900'),('2020-10-15 17:32:35.073088','2020-10-15 17:32:35.073123',0,'140923','代县','140900'),('2020-10-15 17:32:35.106094','2020-10-15 17:32:35.106125',0,'140924','繁峙县','140900'),('2020-10-15 17:32:35.143244','2020-10-15 17:32:35.143373',0,'140925','宁武县','140900'),('2020-10-15 17:32:35.191049','2020-10-15 17:32:35.191527',0,'140926','静乐县','140900'),('2020-10-15 17:32:35.228902','2020-10-15 17:32:35.228945',0,'140927','神池县','140900'),('2020-10-15 17:32:35.269093','2020-10-15 17:32:35.269195',0,'140928','五寨县','140900'),('2020-10-15 17:32:35.305948','2020-10-15 17:32:35.306179',0,'140929','岢岚县','140900'),('2020-10-15 17:32:35.339094','2020-10-15 17:32:35.339132',0,'140930','河曲县','140900'),('2020-10-15 17:32:35.375228','2020-10-15 17:32:35.375292',0,'140931','保德县','140900'),('2020-10-15 17:32:35.410808','2020-10-15 17:32:35.411075',0,'140932','偏关县','140900'),('2020-10-15 17:32:35.446815','2020-10-15 17:32:35.446843',0,'140981','原平市','140900'),('2020-10-15 17:32:35.480093','2020-10-15 17:32:35.480121',0,'141002','尧都区','141000'),('2020-10-15 17:32:35.506899','2020-10-15 17:32:35.506923',0,'141021','曲沃县','141000'),('2020-10-15 17:32:35.539187','2020-10-15 17:32:35.539234',0,'141022','翼城县','141000'),('2020-10-15 17:32:35.571407','2020-10-15 17:32:35.571432',0,'141023','襄汾县','141000'),('2020-10-15 17:32:35.613015','2020-10-15 17:32:35.613039',0,'141024','洪洞县','141000'),('2020-10-15 17:32:35.657145','2020-10-15 17:32:35.657173',0,'141025','古县','141000'),('2020-10-15 17:32:35.691626','2020-10-15 17:32:35.691654',0,'141026','安泽县','141000'),('2020-10-15 17:32:35.715168','2020-10-15 17:32:35.715194',0,'141027','浮山县','141000'),('2020-10-15 17:32:35.741544','2020-10-15 17:32:35.741577',0,'141028','吉县','141000'),('2020-10-15 17:32:35.772086','2020-10-15 17:32:35.772114',0,'141029','乡宁县','141000'),('2020-10-15 17:32:35.799193','2020-10-15 17:32:35.799218',0,'141030','大宁县','141000'),('2020-10-15 17:32:35.825055','2020-10-15 17:32:35.825080',0,'141031','隰县','141000'),('2020-10-15 17:32:35.848826','2020-10-15 17:32:35.848852',0,'141032','永和县','141000'),('2020-10-15 17:32:35.873986','2020-10-15 17:32:35.874012',0,'141033','蒲县','141000'),('2020-10-15 17:32:35.899391','2020-10-15 17:32:35.899416',0,'141034','汾西县','141000'),('2020-10-15 17:32:35.954478','2020-10-15 17:32:35.954504',0,'141081','侯马市','141000'),('2020-10-15 17:32:35.988103','2020-10-15 17:32:35.988131',0,'141082','霍州市','141000'),('2020-10-15 17:32:36.075993','2020-10-15 17:32:36.076068',0,'141102','离石区','141100'),('2020-10-15 17:32:36.099283','2020-10-15 17:32:36.099315',0,'141121','文水县','141100'),('2020-10-15 17:32:36.124936','2020-10-15 17:32:36.124963',0,'141122','交城县','141100'),('2020-10-15 17:32:36.149739','2020-10-15 17:32:36.149813',0,'141123','兴县','141100'),('2020-10-15 17:32:36.174814','2020-10-15 17:32:36.174839',0,'141124','临县','141100'),('2020-10-15 17:32:36.205519','2020-10-15 17:32:36.205547',0,'141125','柳林县','141100'),('2020-10-15 17:32:36.232908','2020-10-15 17:32:36.232933',0,'141126','石楼县','141100'),('2020-10-15 17:32:36.264780','2020-10-15 17:32:36.264809',0,'141127','岚县','141100'),('2020-10-15 17:32:36.291639','2020-10-15 17:32:36.291665',0,'141128','方山县','141100'),('2020-10-15 17:32:36.316753','2020-10-15 17:32:36.316782',0,'141129','中阳县','141100'),('2020-10-15 17:32:36.341659','2020-10-15 17:32:36.341685',0,'141130','交口县','141100'),('2020-10-15 17:32:36.407394','2020-10-15 17:32:36.407477',0,'141181','孝义市','141100'),('2020-10-15 17:32:36.443187','2020-10-15 17:32:36.443387',0,'141182','汾阳市','141100'),('2020-10-15 17:32:36.478111','2020-10-15 17:32:36.478264',0,'150102','新城区','150100'),('2020-10-15 17:32:36.511560','2020-10-15 17:32:36.511646',0,'150103','回民区','150100'),('2020-10-15 17:32:36.547532','2020-10-15 17:32:36.547558',0,'150104','玉泉区','150100'),('2020-10-15 17:32:36.580605','2020-10-15 17:32:36.580664',0,'150105','赛罕区','150100'),('2020-10-15 17:32:36.607023','2020-10-15 17:32:36.607048',0,'150121','土默特左旗','150100'),('2020-10-15 17:32:36.671458','2020-10-15 17:32:36.671483',0,'150122','托克托县','150100'),('2020-10-15 17:32:36.699632','2020-10-15 17:32:36.699662',0,'150123','和林格尔县','150100'),('2020-10-15 17:32:36.725797','2020-10-15 17:32:36.725823',0,'150124','清水河县','150100'),('2020-10-15 17:32:36.756680','2020-10-15 17:32:36.756747',0,'150125','武川县','150100'),('2020-10-15 17:32:36.782629','2020-10-15 17:32:36.782653',0,'150202','东河区','150200'),('2020-10-15 17:32:36.807456','2020-10-15 17:32:36.807481',0,'150203','昆都仑区','150200'),('2020-10-15 17:32:36.832098','2020-10-15 17:32:36.832125',0,'150204','青山区','150200'),('2020-10-15 17:32:36.856795','2020-10-15 17:32:36.856824',0,'150205','石拐区','150200'),('2020-10-15 17:32:36.882516','2020-10-15 17:32:36.882558',0,'150206','白云鄂博矿区','150200'),('2020-10-15 17:32:36.907268','2020-10-15 17:32:36.907293',0,'150207','九原区','150200'),('2020-10-15 17:32:36.932419','2020-10-15 17:32:36.932444',0,'150221','土默特右旗','150200'),('2020-10-15 17:32:36.957608','2020-10-15 17:32:36.957634',0,'150222','固阳县','150200'),('2020-10-15 17:32:36.982608','2020-10-15 17:32:36.982633',0,'150223','达尔罕茂明安联合旗','150200'),('2020-10-15 17:32:37.023994','2020-10-15 17:32:37.024021',0,'150302','海勃湾区','150300'),('2020-10-15 17:32:37.049018','2020-10-15 17:32:37.049044',0,'150303','海南区','150300'),('2020-10-15 17:32:37.074039','2020-10-15 17:32:37.074064',0,'150304','乌达区','150300'),('2020-10-15 17:32:37.101514','2020-10-15 17:32:37.101541',0,'150402','红山区','150400'),('2020-10-15 17:32:37.124086','2020-10-15 17:32:37.124111',0,'150403','元宝山区','150400'),('2020-10-15 17:32:37.148822','2020-10-15 17:32:37.148847',0,'150404','松山区','150400'),('2020-10-15 17:32:37.173841','2020-10-15 17:32:37.173867',0,'150421','阿鲁科尔沁旗','150400'),('2020-10-15 17:32:37.200299','2020-10-15 17:32:37.200345',0,'150422','巴林左旗','150400'),('2020-10-15 17:32:37.224061','2020-10-15 17:32:37.224088',0,'150423','巴林右旗','150400'),('2020-10-15 17:32:37.251194','2020-10-15 17:32:37.251219',0,'150424','林西县','150400'),('2020-10-15 17:32:37.274388','2020-10-15 17:32:37.274414',0,'150425','克什克腾旗','150400'),('2020-10-15 17:32:37.302948','2020-10-15 17:32:37.302974',0,'150426','翁牛特旗','150400'),('2020-10-15 17:32:37.332352','2020-10-15 17:32:37.332378',0,'150428','喀喇沁旗','150400'),('2020-10-15 17:32:37.357171','2020-10-15 17:32:37.357196',0,'150429','宁城县','150400'),('2020-10-15 17:32:37.382373','2020-10-15 17:32:37.382398',0,'150430','敖汉旗','150400'),('2020-10-15 17:32:37.407221','2020-10-15 17:32:37.407246',0,'150502','科尔沁区','150500'),('2020-10-15 17:32:37.432220','2020-10-15 17:32:37.432259',0,'150521','科尔沁左翼中旗','150500'),('2020-10-15 17:32:37.457648','2020-10-15 17:32:37.457673',0,'150522','科尔沁左翼后旗','150500'),('2020-10-15 17:32:37.482497','2020-10-15 17:32:37.482522',0,'150523','开鲁县','150500'),('2020-10-15 17:32:37.507295','2020-10-15 17:32:37.507321',0,'150524','库伦旗','150500'),('2020-10-15 17:32:37.531827','2020-10-15 17:32:37.531853',0,'150525','奈曼旗','150500'),('2020-10-15 17:32:37.557118','2020-10-15 17:32:37.557143',0,'150526','扎鲁特旗','150500'),('2020-10-15 17:32:37.582495','2020-10-15 17:32:37.582521',0,'150581','霍林郭勒市','150500'),('2020-10-15 17:32:37.612834','2020-10-15 17:32:37.612865',0,'150602','东胜区','150600'),('2020-10-15 17:32:37.671514','2020-10-15 17:32:37.671540',0,'150603','康巴什区','150600'),('2020-10-15 17:32:37.699060','2020-10-15 17:32:37.699085',0,'150621','达拉特旗','150600'),('2020-10-15 17:32:37.724150','2020-10-15 17:32:37.724174',0,'150622','准格尔旗','150600'),('2020-10-15 17:32:37.753304','2020-10-15 17:32:37.753330',0,'150623','鄂托克前旗','150600'),('2020-10-15 17:32:37.785493','2020-10-15 17:32:37.785524',0,'150624','鄂托克旗','150600'),('2020-10-15 17:32:37.819865','2020-10-15 17:32:37.819894',0,'150625','杭锦旗','150600'),('2020-10-15 17:32:37.855589','2020-10-15 17:32:37.855872',0,'150626','乌审旗','150600'),('2020-10-15 17:32:37.886713','2020-10-15 17:32:37.886889',0,'150627','伊金霍洛旗','150600'),('2020-10-15 17:32:37.921517','2020-10-15 17:32:37.921617',0,'150702','海拉尔区','150700'),('2020-10-15 17:32:37.951964','2020-10-15 17:32:37.952008',0,'150703','扎赉诺尔区','150700'),('2020-10-15 17:32:37.983667','2020-10-15 17:32:37.983779',0,'150721','阿荣旗','150700'),('2020-10-15 17:32:38.012510','2020-10-15 17:32:38.012587',0,'150722','莫力达瓦达斡尔族自治旗','150700'),('2020-10-15 17:32:38.063771','2020-10-15 17:32:38.064555',0,'150723','鄂伦春自治旗','150700'),('2020-10-15 17:32:38.113030','2020-10-15 17:32:38.113413',0,'150724','鄂温克族自治旗','150700'),('2020-10-15 17:32:38.143284','2020-10-15 17:32:38.143508',0,'150725','陈巴尔虎旗','150700'),('2020-10-15 17:32:38.185103','2020-10-15 17:32:38.185763',0,'150726','新巴尔虎左旗','150700'),('2020-10-15 17:32:38.229509','2020-10-15 17:32:38.229925',0,'150727','新巴尔虎右旗','150700'),('2020-10-15 17:32:38.279482','2020-10-15 17:32:38.279598',0,'150781','满洲里市','150700'),('2020-10-15 17:32:38.320273','2020-10-15 17:32:38.320477',0,'150782','牙克石市','150700'),('2020-10-15 17:32:38.355418','2020-10-15 17:32:38.355452',0,'150783','扎兰屯市','150700'),('2020-10-15 17:32:38.387360','2020-10-15 17:32:38.387425',0,'150784','额尔古纳市','150700'),('2020-10-15 17:32:38.421095','2020-10-15 17:32:38.421407',0,'150785','根河市','150700'),('2020-10-15 17:32:38.454182','2020-10-15 17:32:38.454262',0,'150802','临河区','150800'),('2020-10-15 17:32:38.486425','2020-10-15 17:32:38.486480',0,'150821','五原县','150800'),('2020-10-15 17:32:38.568718','2020-10-15 17:32:38.569264',0,'150822','磴口县','150800'),('2020-10-15 17:32:38.608175','2020-10-15 17:32:38.608280',0,'150823','乌拉特前旗','150800'),('2020-10-15 17:32:38.650024','2020-10-15 17:32:38.650091',0,'150824','乌拉特中旗','150800'),('2020-10-15 17:32:38.673931','2020-10-15 17:32:38.673958',0,'150825','乌拉特后旗','150800'),('2020-10-15 17:32:38.699795','2020-10-15 17:32:38.699823',0,'150826','杭锦后旗','150800'),('2020-10-15 17:32:38.724988','2020-10-15 17:32:38.725015',0,'150902','集宁区','150900'),('2020-10-15 17:32:38.751095','2020-10-15 17:32:38.751146',0,'150921','卓资县','150900'),('2020-10-15 17:32:38.782424','2020-10-15 17:32:38.782497',0,'150922','化德县','150900'),('2020-10-15 17:32:38.807681','2020-10-15 17:32:38.807750',0,'150923','商都县','150900'),('2020-10-15 17:32:38.832917','2020-10-15 17:32:38.832948',0,'150924','兴和县','150900'),('2020-10-15 17:32:38.858001','2020-10-15 17:32:38.858037',0,'150925','凉城县','150900'),('2020-10-15 17:32:38.882819','2020-10-15 17:32:38.882886',0,'150926','察哈尔右翼前旗','150900'),('2020-10-15 17:32:38.934357','2020-10-15 17:32:38.934724',0,'150927','察哈尔右翼中旗','150900'),('2020-10-15 17:32:38.975577','2020-10-15 17:32:38.975912',0,'150928','察哈尔右翼后旗','150900'),('2020-10-15 17:32:39.010323','2020-10-15 17:32:39.010375',0,'150929','四子王旗','150900'),('2020-10-15 17:32:39.053757','2020-10-15 17:32:39.053936',0,'150981','丰镇市','150900'),('2020-10-15 17:32:39.084581','2020-10-15 17:32:39.084636',0,'152201','乌兰浩特市','152200'),('2020-10-15 17:32:39.118190','2020-10-15 17:32:39.118238',0,'152202','阿尔山市','152200'),('2020-10-15 17:32:39.158234','2020-10-15 17:32:39.158311',0,'152221','科尔沁右翼前旗','152200'),('2020-10-15 17:32:39.183362','2020-10-15 17:32:39.183397',0,'152222','科尔沁右翼中旗','152200'),('2020-10-15 17:32:39.215957','2020-10-15 17:32:39.216213',0,'152223','扎赉特旗','152200'),('2020-10-15 17:32:39.244083','2020-10-15 17:32:39.244137',0,'152224','突泉县','152200'),('2020-10-15 17:32:39.278436','2020-10-15 17:32:39.278482',0,'152501','二连浩特市','152500'),('2020-10-15 17:32:39.308405','2020-10-15 17:32:39.308434',0,'152502','锡林浩特市','152500'),('2020-10-15 17:32:39.352621','2020-10-15 17:32:39.352872',0,'152522','阿巴嘎旗','152500'),('2020-10-15 17:32:39.423320','2020-10-15 17:32:39.423429',0,'152523','苏尼特左旗','152500'),('2020-10-15 17:32:39.450993','2020-10-15 17:32:39.451019',0,'152524','苏尼特右旗','152500'),('2020-10-15 17:32:39.474893','2020-10-15 17:32:39.474922',0,'152525','东乌珠穆沁旗','152500'),('2020-10-15 17:32:39.499980','2020-10-15 17:32:39.500008',0,'152526','西乌珠穆沁旗','152500'),('2020-10-15 17:32:39.524784','2020-10-15 17:32:39.524818',0,'152527','太仆寺旗','152500'),('2020-10-15 17:32:39.550233','2020-10-15 17:32:39.550302',0,'152528','镶黄旗','152500'),('2020-10-15 17:32:39.584241','2020-10-15 17:32:39.584322',0,'152529','正镶白旗','152500'),('2020-10-15 17:32:39.639665','2020-10-15 17:32:39.639766',0,'152530','正蓝旗','152500'),('2020-10-15 17:32:39.699815','2020-10-15 17:32:39.699845',0,'152531','多伦县','152500'),('2020-10-15 17:32:39.724391','2020-10-15 17:32:39.724416',0,'152921','阿拉善左旗','152900'),('2020-10-15 17:32:39.749762','2020-10-15 17:32:39.749814',0,'152922','阿拉善右旗','152900'),('2020-10-15 17:32:39.774861','2020-10-15 17:32:39.774886',0,'152923','额济纳旗','152900'),('2020-10-15 17:32:39.799417','2020-10-15 17:32:39.799442',0,'210102','和平区','210100'),('2020-10-15 17:32:39.824382','2020-10-15 17:32:39.824408',0,'210103','沈河区','210100'),('2020-10-15 17:32:39.849846','2020-10-15 17:32:39.849872',0,'210104','大东区','210100'),('2020-10-15 17:32:39.874729','2020-10-15 17:32:39.874757',0,'210105','皇姑区','210100'),('2020-10-15 17:32:39.898933','2020-10-15 17:32:39.898959',0,'210106','铁西区','210100'),('2020-10-15 17:32:39.924190','2020-10-15 17:32:39.924216',0,'210111','苏家屯区','210100'),('2020-10-15 17:32:39.949800','2020-10-15 17:32:39.949826',0,'210112','浑南区','210100'),('2020-10-15 17:32:39.974295','2020-10-15 17:32:39.974321',0,'210113','沈北新区','210100'),('2020-10-15 17:32:40.000220','2020-10-15 17:32:40.000249',0,'210114','于洪区','210100'),('2020-10-15 17:32:40.024931','2020-10-15 17:32:40.024956',0,'210115','辽中区','210100'),('2020-10-15 17:32:40.049406','2020-10-15 17:32:40.049432',0,'210123','康平县','210100'),('2020-10-15 17:32:40.074580','2020-10-15 17:32:40.074605',0,'210124','法库县','210100'),('2020-10-15 17:32:40.099233','2020-10-15 17:32:40.099258',0,'210181','新民市','210100'),('2020-10-15 17:32:40.124653','2020-10-15 17:32:40.124679',0,'210202','中山区','210200'),('2020-10-15 17:32:40.149665','2020-10-15 17:32:40.149721',0,'210203','西岗区','210200'),('2020-10-15 17:32:40.174301','2020-10-15 17:32:40.174326',0,'210204','沙河口区','210200'),('2020-10-15 17:32:40.201000','2020-10-15 17:32:40.201071',0,'210211','甘井子区','210200'),('2020-10-15 17:32:40.232966','2020-10-15 17:32:40.232991',0,'210212','旅顺口区','210200'),('2020-10-15 17:32:40.259211','2020-10-15 17:32:40.259237',0,'210213','金州区','210200'),('2020-10-15 17:32:40.282557','2020-10-15 17:32:40.282582',0,'210214','普兰店区','210200'),('2020-10-15 17:32:40.307624','2020-10-15 17:32:40.307649',0,'210224','长海县','210200'),('2020-10-15 17:32:40.332668','2020-10-15 17:32:40.332723',0,'210281','瓦房店市','210200'),('2020-10-15 17:32:40.357460','2020-10-15 17:32:40.357485',0,'210283','庄河市','210200'),('2020-10-15 17:32:40.382782','2020-10-15 17:32:40.382806',0,'210302','铁东区','210300'),('2020-10-15 17:32:40.407519','2020-10-15 17:32:40.407543',0,'210303','铁西区','210300'),('2020-10-15 17:32:40.433485','2020-10-15 17:32:40.433522',0,'210304','立山区','210300'),('2020-10-15 17:32:40.457902','2020-10-15 17:32:40.457927',0,'210311','千山区','210300'),('2020-10-15 17:32:40.482622','2020-10-15 17:32:40.482649',0,'210321','台安县','210300'),('2020-10-15 17:32:40.508092','2020-10-15 17:32:40.508118',0,'210323','岫岩满族自治县','210300'),('2020-10-15 17:32:40.532827','2020-10-15 17:32:40.532852',0,'210381','海城市','210300'),('2020-10-15 17:32:40.560076','2020-10-15 17:32:40.560102',0,'210402','新抚区','210400'),('2020-10-15 17:32:40.590930','2020-10-15 17:32:40.590955',0,'210403','东洲区','210400'),('2020-10-15 17:32:40.616908','2020-10-15 17:32:40.616961',0,'210404','望花区','210400'),('2020-10-15 17:32:40.649627','2020-10-15 17:32:40.649652',0,'210411','顺城区','210400'),('2020-10-15 17:32:40.696949','2020-10-15 17:32:40.696976',0,'210421','抚顺县','210400'),('2020-10-15 17:32:40.724470','2020-10-15 17:32:40.724497',0,'210422','新宾满族自治县','210400'),('2020-10-15 17:32:40.749114','2020-10-15 17:32:40.749139',0,'210423','清原满族自治县','210400'),('2020-10-15 17:32:40.774337','2020-10-15 17:32:40.774362',0,'210502','平山区','210500'),('2020-10-15 17:32:40.799283','2020-10-15 17:32:40.799308',0,'210503','溪湖区','210500'),('2020-10-15 17:32:40.824340','2020-10-15 17:32:40.824365',0,'210504','明山区','210500'),('2020-10-15 17:32:40.883759','2020-10-15 17:32:40.883790',0,'210505','南芬区','210500'),('2020-10-15 17:32:40.916206','2020-10-15 17:32:40.916231',0,'210521','本溪满族自治县','210500'),('2020-10-15 17:32:40.941440','2020-10-15 17:32:40.941466',0,'210522','桓仁满族自治县','210500'),('2020-10-15 17:32:40.966445','2020-10-15 17:32:40.966472',0,'210602','元宝区','210600'),('2020-10-15 17:32:40.991382','2020-10-15 17:32:40.991407',0,'210603','振兴区','210600'),('2020-10-15 17:32:41.047651','2020-10-15 17:32:41.047678',0,'210604','振安区','210600'),('2020-10-15 17:32:41.083594','2020-10-15 17:32:41.083620',0,'210624','宽甸满族自治县','210600'),('2020-10-15 17:32:41.142081','2020-10-15 17:32:41.142107',0,'210681','东港市','210600'),('2020-10-15 17:32:41.175756','2020-10-15 17:32:41.175781',0,'210682','凤城市','210600'),('2020-10-15 17:32:41.209139','2020-10-15 17:32:41.209169',0,'210702','古塔区','210700'),('2020-10-15 17:32:41.240476','2020-10-15 17:32:41.240524',0,'210703','凌河区','210700'),('2020-10-15 17:32:41.267116','2020-10-15 17:32:41.267143',0,'210711','太和区','210700'),('2020-10-15 17:32:41.291709','2020-10-15 17:32:41.291744',0,'210726','黑山县','210700'),('2020-10-15 17:32:41.316982','2020-10-15 17:32:41.317011',0,'210727','义县','210700'),('2020-10-15 17:32:41.342262','2020-10-15 17:32:41.342288',0,'210781','凌海市','210700'),('2020-10-15 17:32:41.371814','2020-10-15 17:32:41.371840',0,'210782','北镇市','210700'),('2020-10-15 17:32:41.399553','2020-10-15 17:32:41.399578',0,'210802','站前区','210800'),('2020-10-15 17:32:41.429007','2020-10-15 17:32:41.429077',0,'210803','西市区','210800'),('2020-10-15 17:32:41.473775','2020-10-15 17:32:41.474019',0,'210804','鲅鱼圈区','210800'),('2020-10-15 17:32:41.528585','2020-10-15 17:32:41.528971',0,'210811','老边区','210800'),('2020-10-15 17:32:41.579072','2020-10-15 17:32:41.579237',0,'210881','盖州市','210800'),('2020-10-15 17:32:41.631502','2020-10-15 17:32:41.631971',0,'210882','大石桥市','210800'),('2020-10-15 17:32:41.687708','2020-10-15 17:32:41.687988',0,'210902','海州区','210900'),('2020-10-15 17:32:41.753884','2020-10-15 17:32:41.754261',0,'210903','新邱区','210900'),('2020-10-15 17:32:41.799261','2020-10-15 17:32:41.799641',0,'210904','太平区','210900'),('2020-10-15 17:32:41.853916','2020-10-15 17:32:41.854202',0,'210905','清河门区','210900'),('2020-10-15 17:32:41.894384','2020-10-15 17:32:41.894640',0,'210911','细河区','210900'),('2020-10-15 17:32:41.943995','2020-10-15 17:32:41.944356',0,'210921','阜新蒙古族自治县','210900'),('2020-10-15 17:32:41.980028','2020-10-15 17:32:41.980068',0,'210922','彰武县','210900'),('2020-10-15 17:32:42.016306','2020-10-15 17:32:42.016616',0,'211002','白塔区','211000'),('2020-10-15 17:32:42.065978','2020-10-15 17:32:42.066401',0,'211003','文圣区','211000'),('2020-10-15 17:32:42.115320','2020-10-15 17:32:42.115515',0,'211004','宏伟区','211000'),('2020-10-15 17:32:42.202326','2020-10-15 17:32:42.202657',0,'211005','弓长岭区','211000'),('2020-10-15 17:32:42.242182','2020-10-15 17:32:42.242618',0,'211011','太子河区','211000'),('2020-10-15 17:32:42.281279','2020-10-15 17:32:42.281387',0,'211021','辽阳县','211000'),('2020-10-15 17:32:42.327050','2020-10-15 17:32:42.327234',0,'211081','灯塔市','211000'),('2020-10-15 17:32:42.405682','2020-10-15 17:32:42.405850',0,'211102','双台子区','211100'),('2020-10-15 17:32:42.440785','2020-10-15 17:32:42.440864',0,'211103','兴隆台区','211100'),('2020-10-15 17:32:42.468995','2020-10-15 17:32:42.469122',0,'211104','大洼区','211100'),('2020-10-15 17:32:42.514745','2020-10-15 17:32:42.515338',0,'211122','盘山县','211100'),('2020-10-15 17:32:42.585850','2020-10-15 17:32:42.586424',0,'211202','银州区','211200'),('2020-10-15 17:32:42.655007','2020-10-15 17:32:42.655542',0,'211204','清河区','211200'),('2020-10-15 17:32:42.716132','2020-10-15 17:32:42.716474',0,'211221','铁岭县','211200'),('2020-10-15 17:32:42.753084','2020-10-15 17:32:42.753148',0,'211223','西丰县','211200'),('2020-10-15 17:32:42.783687','2020-10-15 17:32:42.783766',0,'211224','昌图县','211200'),('2020-10-15 17:32:42.827197','2020-10-15 17:32:42.827319',0,'211281','调兵山市','211200'),('2020-10-15 17:32:42.864459','2020-10-15 17:32:42.864490',0,'211282','开原市','211200'),('2020-10-15 17:32:42.891211','2020-10-15 17:32:42.891235',0,'211302','双塔区','211300'),('2020-10-15 17:32:42.916359','2020-10-15 17:32:42.916385',0,'211303','龙城区','211300'),('2020-10-15 17:32:42.943414','2020-10-15 17:32:42.943451',0,'211321','朝阳县','211300'),('2020-10-15 17:32:42.974320','2020-10-15 17:32:42.974347',0,'211322','建平县','211300'),('2020-10-15 17:32:43.000451','2020-10-15 17:32:43.000481',0,'211324','喀喇沁左翼蒙古族自治县','211300'),('2020-10-15 17:32:43.043208','2020-10-15 17:32:43.043515',0,'211381','北票市','211300'),('2020-10-15 17:32:43.103049','2020-10-15 17:32:43.103163',0,'211382','凌源市','211300'),('2020-10-15 17:32:43.143224','2020-10-15 17:32:43.143616',0,'211402','连山区','211400'),('2020-10-15 17:32:43.191283','2020-10-15 17:32:43.191503',0,'211403','龙港区','211400'),('2020-10-15 17:32:43.255487','2020-10-15 17:32:43.256877',0,'211404','南票区','211400'),('2020-10-15 17:32:43.301386','2020-10-15 17:32:43.301520',0,'211421','绥中县','211400'),('2020-10-15 17:32:43.340087','2020-10-15 17:32:43.340187',0,'211422','建昌县','211400'),('2020-10-15 17:32:43.378047','2020-10-15 17:32:43.378224',0,'211481','兴城市','211400'),('2020-10-15 17:32:43.410159','2020-10-15 17:32:43.410199',0,'220102','南关区','220100'),('2020-10-15 17:32:43.441992','2020-10-15 17:32:43.442018',0,'220103','宽城区','220100'),('2020-10-15 17:32:43.480444','2020-10-15 17:32:43.480783',0,'220104','朝阳区','220100'),('2020-10-15 17:32:43.515479','2020-10-15 17:32:43.515559',0,'220105','二道区','220100'),('2020-10-15 17:32:43.585444','2020-10-15 17:32:43.588194',0,'220106','绿园区','220100'),('2020-10-15 17:32:43.724367','2020-10-15 17:32:43.725202',0,'220112','双阳区','220100'),('2020-10-15 17:32:43.814707','2020-10-15 17:32:43.815049',0,'220113','九台区','220100'),('2020-10-15 17:32:43.861019','2020-10-15 17:32:43.861388',0,'220122','农安县','220100'),('2020-10-15 17:32:43.895362','2020-10-15 17:32:43.895421',0,'220182','榆树市','220100'),('2020-10-15 17:32:43.927482','2020-10-15 17:32:43.927555',0,'220183','德惠市','220100'),('2020-10-15 17:32:43.959179','2020-10-15 17:32:43.959244',0,'220202','昌邑区','220200'),('2020-10-15 17:32:43.993515','2020-10-15 17:32:43.993592',0,'220203','龙潭区','220200'),('2020-10-15 17:32:44.033904','2020-10-15 17:32:44.034328',0,'220204','船营区','220200'),('2020-10-15 17:32:44.099358','2020-10-15 17:32:44.099858',0,'220211','丰满区','220200'),('2020-10-15 17:32:44.137988','2020-10-15 17:32:44.138058',0,'220221','永吉县','220200'),('2020-10-15 17:32:44.169368','2020-10-15 17:32:44.169557',0,'220281','蛟河市','220200'),('2020-10-15 17:32:44.205078','2020-10-15 17:32:44.205358',0,'220282','桦甸市','220200'),('2020-10-15 17:32:44.233066','2020-10-15 17:32:44.233098',0,'220283','舒兰市','220200'),('2020-10-15 17:32:44.272267','2020-10-15 17:32:44.272641',0,'220284','磐石市','220200'),('2020-10-15 17:32:44.318827','2020-10-15 17:32:44.319291',0,'220302','铁西区','220300'),('2020-10-15 17:32:44.350627','2020-10-15 17:32:44.350676',0,'220303','铁东区','220300'),('2020-10-15 17:32:44.422645','2020-10-15 17:32:44.422724',0,'220322','梨树县','220300'),('2020-10-15 17:32:44.449797','2020-10-15 17:32:44.449823',0,'220323','伊通满族自治县','220300'),('2020-10-15 17:32:44.483163','2020-10-15 17:32:44.483188',0,'220381','公主岭市','220300'),('2020-10-15 17:32:44.513892','2020-10-15 17:32:44.513917',0,'220382','双辽市','220300'),('2020-10-15 17:32:44.541522','2020-10-15 17:32:44.541547',0,'220402','龙山区','220400'),('2020-10-15 17:32:44.572806','2020-10-15 17:32:44.572841',0,'220403','西安区','220400'),('2020-10-15 17:32:44.599527','2020-10-15 17:32:44.599553',0,'220421','东丰县','220400'),('2020-10-15 17:32:44.700514','2020-10-15 17:32:44.700573',0,'220422','东辽县','220400'),('2020-10-15 17:32:44.734512','2020-10-15 17:32:44.734566',0,'220502','东昌区','220500'),('2020-10-15 17:32:44.771604','2020-10-15 17:32:44.771796',0,'220503','二道江区','220500'),('2020-10-15 17:32:44.800054','2020-10-15 17:32:44.800096',0,'220521','通化县','220500'),('2020-10-15 17:32:44.833350','2020-10-15 17:32:44.833384',0,'220523','辉南县','220500'),('2020-10-15 17:32:44.866469','2020-10-15 17:32:44.866501',0,'220524','柳河县','220500'),('2020-10-15 17:32:44.902572','2020-10-15 17:32:44.902598',0,'220581','梅河口市','220500'),('2020-10-15 17:32:44.934374','2020-10-15 17:32:44.934411',0,'220582','集安市','220500'),('2020-10-15 17:32:44.970946','2020-10-15 17:32:44.971037',0,'220602','浑江区','220600'),('2020-10-15 17:32:45.000599','2020-10-15 17:32:45.000625',0,'220605','江源区','220600'),('2020-10-15 17:32:45.033256','2020-10-15 17:32:45.033281',0,'220621','抚松县','220600'),('2020-10-15 17:32:45.066904','2020-10-15 17:32:45.066930',0,'220622','靖宇县','220600'),('2020-10-15 17:32:45.099667','2020-10-15 17:32:45.099721',0,'220623','长白朝鲜族自治县','220600'),('2020-10-15 17:32:45.134048','2020-10-15 17:32:45.134073',0,'220681','临江市','220600'),('2020-10-15 17:32:45.167265','2020-10-15 17:32:45.167290',0,'220702','宁江区','220700'),('2020-10-15 17:32:45.201123','2020-10-15 17:32:45.201148',0,'220721','前郭尔罗斯蒙古族自治县','220700'),('2020-10-15 17:32:45.233676','2020-10-15 17:32:45.233733',0,'220722','长岭县','220700'),('2020-10-15 17:32:45.270255','2020-10-15 17:32:45.270326',0,'220723','乾安县','220700'),('2020-10-15 17:32:45.301445','2020-10-15 17:32:45.301499',0,'220781','扶余市','220700'),('2020-10-15 17:32:45.335034','2020-10-15 17:32:45.335074',0,'220802','洮北区','220800'),('2020-10-15 17:32:45.418517','2020-10-15 17:32:45.418556',0,'220821','镇赉县','220800'),('2020-10-15 17:32:45.500882','2020-10-15 17:32:45.500919',0,'220822','通榆县','220800'),('2020-10-15 17:32:45.567911','2020-10-15 17:32:45.568156',0,'220881','洮南市','220800'),('2020-10-15 17:32:45.601568','2020-10-15 17:32:45.601617',0,'220882','大安市','220800'),('2020-10-15 17:32:45.681057','2020-10-15 17:32:45.681102',0,'222401','延吉市','222400'),('2020-10-15 17:32:45.730476','2020-10-15 17:32:45.730502',0,'222402','图们市','222400'),('2020-10-15 17:32:45.755011','2020-10-15 17:32:45.755044',0,'222403','敦化市','222400'),('2020-10-15 17:32:45.783927','2020-10-15 17:32:45.783953',0,'222404','珲春市','222400'),('2020-10-15 17:32:45.814507','2020-10-15 17:32:45.814533',0,'222405','龙井市','222400'),('2020-10-15 17:32:45.841095','2020-10-15 17:32:45.841120',0,'222406','和龙市','222400'),('2020-10-15 17:32:45.874620','2020-10-15 17:32:45.874645',0,'222424','汪清县','222400'),('2020-10-15 17:32:45.910394','2020-10-15 17:32:45.910439',0,'222426','安图县','222400'),('2020-10-15 17:32:45.938440','2020-10-15 17:32:45.938465',0,'230102','道里区','230100'),('2020-10-15 17:32:45.966744','2020-10-15 17:32:45.966774',0,'230103','南岗区','230100'),('2020-10-15 17:32:45.998838','2020-10-15 17:32:45.998867',0,'230104','道外区','230100'),('2020-10-15 17:32:46.065842','2020-10-15 17:32:46.065883',0,'230108','平房区','230100'),('2020-10-15 17:32:46.110979','2020-10-15 17:32:46.111076',0,'230109','松北区','230100'),('2020-10-15 17:32:46.139148','2020-10-15 17:32:46.139175',0,'230110','香坊区','230100'),('2020-10-15 17:32:46.164168','2020-10-15 17:32:46.164212',0,'230111','呼兰区','230100'),('2020-10-15 17:32:46.190050','2020-10-15 17:32:46.190083',0,'230112','阿城区','230100'),('2020-10-15 17:32:46.227435','2020-10-15 17:32:46.227549',0,'230113','双城区','230100'),('2020-10-15 17:32:46.258044','2020-10-15 17:32:46.258071',0,'230123','依兰县','230100'),('2020-10-15 17:32:46.289233','2020-10-15 17:32:46.289302',0,'230124','方正县','230100'),('2020-10-15 17:32:46.324586','2020-10-15 17:32:46.324656',0,'230125','宾县','230100'),('2020-10-15 17:32:46.357538','2020-10-15 17:32:46.357589',0,'230126','巴彦县','230100'),('2020-10-15 17:32:46.389477','2020-10-15 17:32:46.389505',0,'230127','木兰县','230100'),('2020-10-15 17:32:46.413936','2020-10-15 17:32:46.413962',0,'230128','通河县','230100'),('2020-10-15 17:32:46.438560','2020-10-15 17:32:46.438584',0,'230129','延寿县','230100'),('2020-10-15 17:32:46.463892','2020-10-15 17:32:46.463918',0,'230183','尚志市','230100'),('2020-10-15 17:32:46.489026','2020-10-15 17:32:46.489051',0,'230184','五常市','230100'),('2020-10-15 17:32:46.513474','2020-10-15 17:32:46.513499',0,'230202','龙沙区','230200'),('2020-10-15 17:32:46.538609','2020-10-15 17:32:46.538634',0,'230203','建华区','230200'),('2020-10-15 17:32:46.564011','2020-10-15 17:32:46.564042',0,'230204','铁锋区','230200'),('2020-10-15 17:32:46.595097','2020-10-15 17:32:46.595151',0,'230205','昂昂溪区','230200'),('2020-10-15 17:32:46.650488','2020-10-15 17:32:46.651404',0,'230206','富拉尔基区','230200'),('2020-10-15 17:32:46.702208','2020-10-15 17:32:46.702381',0,'230207','碾子山区','230200'),('2020-10-15 17:32:46.734106','2020-10-15 17:32:46.734183',0,'230208','梅里斯达斡尔族区','230200'),('2020-10-15 17:32:46.786500','2020-10-15 17:32:46.787923',0,'230221','龙江县','230200'),('2020-10-15 17:32:46.830468','2020-10-15 17:32:46.830715',0,'230223','依安县','230200'),('2020-10-15 17:32:46.864989','2020-10-15 17:32:46.865020',0,'230224','泰来县','230200'),('2020-10-15 17:32:46.897563','2020-10-15 17:32:46.897657',0,'230225','甘南县','230200'),('2020-10-15 17:32:46.922435','2020-10-15 17:32:46.922488',0,'230227','富裕县','230200'),('2020-10-15 17:32:46.946637','2020-10-15 17:32:46.946663',0,'230229','克山县','230200'),('2020-10-15 17:32:46.972462','2020-10-15 17:32:46.972492',0,'230230','克东县','230200'),('2020-10-15 17:32:46.997133','2020-10-15 17:32:46.997160',0,'230231','拜泉县','230200'),('2020-10-15 17:32:47.022420','2020-10-15 17:32:47.022447',0,'230281','讷河市','230200'),('2020-10-15 17:32:47.047452','2020-10-15 17:32:47.047480',0,'230302','鸡冠区','230300'),('2020-10-15 17:32:47.072581','2020-10-15 17:32:47.072606',0,'230303','恒山区','230300'),('2020-10-15 17:32:47.098064','2020-10-15 17:32:47.098090',0,'230304','滴道区','230300'),('2020-10-15 17:32:47.130852','2020-10-15 17:32:47.130878',0,'230305','梨树区','230300'),('2020-10-15 17:32:47.155644','2020-10-15 17:32:47.155670',0,'230306','城子河区','230300'),('2020-10-15 17:32:47.180150','2020-10-15 17:32:47.180177',0,'230307','麻山区','230300'),('2020-10-15 17:32:47.230619','2020-10-15 17:32:47.230663',0,'230321','鸡东县','230300'),('2020-10-15 17:32:47.255607','2020-10-15 17:32:47.255646',0,'230381','虎林市','230300'),('2020-10-15 17:32:47.282680','2020-10-15 17:32:47.282752',0,'230382','密山市','230300'),('2020-10-15 17:32:47.316729','2020-10-15 17:32:47.316779',0,'230402','向阳区','230400'),('2020-10-15 17:32:47.347906','2020-10-15 17:32:47.347931',0,'230403','工农区','230400'),('2020-10-15 17:32:47.380238','2020-10-15 17:32:47.380265',0,'230404','南山区','230400'),('2020-10-15 17:32:47.407493','2020-10-15 17:32:47.407519',0,'230405','兴安区','230400'),('2020-10-15 17:32:47.678898','2020-10-15 17:32:47.679010',0,'230406','东山区','230400'),('2020-10-15 17:32:47.910053','2020-10-15 17:32:47.910092',0,'230407','兴山区','230400'),('2020-10-15 17:32:47.983290','2020-10-15 17:32:47.983321',0,'230421','萝北县','230400'),('2020-10-15 17:32:48.013827','2020-10-15 17:32:48.013868',0,'230422','绥滨县','230400'),('2020-10-15 17:32:48.064648','2020-10-15 17:32:48.064680',0,'230502','尖山区','230500'),('2020-10-15 17:32:48.096726','2020-10-15 17:32:48.096759',0,'230503','岭东区','230500'),('2020-10-15 17:32:48.121552','2020-10-15 17:32:48.121578',0,'230505','四方台区','230500'),('2020-10-15 17:32:48.146874','2020-10-15 17:32:48.146904',0,'230506','宝山区','230500'),('2020-10-15 17:32:48.172194','2020-10-15 17:32:48.172220',0,'230521','集贤县','230500'),('2020-10-15 17:32:48.196374','2020-10-15 17:32:48.196399',0,'230522','友谊县','230500'),('2020-10-15 17:32:48.221554','2020-10-15 17:32:48.221580',0,'230523','宝清县','230500'),('2020-10-15 17:32:48.246814','2020-10-15 17:32:48.246840',0,'230524','饶河县','230500'),('2020-10-15 17:32:48.277461','2020-10-15 17:32:48.277950',0,'230602','萨尔图区','230600'),('2020-10-15 17:32:48.306598','2020-10-15 17:32:48.306774',0,'230603','龙凤区','230600'),('2020-10-15 17:32:48.339050','2020-10-15 17:32:48.339074',0,'230604','让胡路区','230600'),('2020-10-15 17:32:48.388866','2020-10-15 17:32:48.388930',0,'230605','红岗区','230600'),('2020-10-15 17:32:48.421938','2020-10-15 17:32:48.421965',0,'230606','大同区','230600'),('2020-10-15 17:32:48.446608','2020-10-15 17:32:48.446633',0,'230621','肇州县','230600'),('2020-10-15 17:32:48.471543','2020-10-15 17:32:48.471569',0,'230622','肇源县','230600'),('2020-10-15 17:32:48.496743','2020-10-15 17:32:48.496769',0,'230623','林甸县','230600'),('2020-10-15 17:32:48.521677','2020-10-15 17:32:48.521734',0,'230624','杜尔伯特蒙古族自治县','230600'),('2020-10-15 17:32:48.546958','2020-10-15 17:32:48.546983',0,'230702','伊春区','230700'),('2020-10-15 17:32:48.571577','2020-10-15 17:32:48.571602',0,'230703','南岔区','230700'),('2020-10-15 17:32:48.597393','2020-10-15 17:32:48.597419',0,'230704','友好区','230700'),('2020-10-15 17:32:48.630384','2020-10-15 17:32:48.630410',0,'230705','西林区','230700'),('2020-10-15 17:32:48.675959','2020-10-15 17:32:48.676001',0,'230706','翠峦区','230700'),('2020-10-15 17:32:48.704812','2020-10-15 17:32:48.704838',0,'230707','新青区','230700'),('2020-10-15 17:32:48.729982','2020-10-15 17:32:48.730007',0,'230708','美溪区','230700'),('2020-10-15 17:32:48.755479','2020-10-15 17:32:48.755504',0,'230709','金山屯区','230700'),('2020-10-15 17:32:48.781574','2020-10-15 17:32:48.781603',0,'230710','五营区','230700'),('2020-10-15 17:32:48.813793','2020-10-15 17:32:48.813819',0,'230711','乌马河区','230700'),('2020-10-15 17:32:48.839145','2020-10-15 17:32:48.839179',0,'230712','汤旺河区','230700'),('2020-10-15 17:32:48.871545','2020-10-15 17:32:48.871569',0,'230713','带岭区','230700'),('2020-10-15 17:32:48.896459','2020-10-15 17:32:48.896487',0,'230714','乌伊岭区','230700'),('2020-10-15 17:32:48.921572','2020-10-15 17:32:48.921597',0,'230715','红星区','230700'),('2020-10-15 17:32:48.946457','2020-10-15 17:32:48.946482',0,'230716','上甘岭区','230700'),('2020-10-15 17:32:48.977037','2020-10-15 17:32:48.977097',0,'230722','嘉荫县','230700'),('2020-10-15 17:32:49.005760','2020-10-15 17:32:49.005791',0,'230781','铁力市','230700'),('2020-10-15 17:32:49.038564','2020-10-15 17:32:49.038592',0,'230803','向阳区','230800'),('2020-10-15 17:32:49.063456','2020-10-15 17:32:49.063514',0,'230804','前进区','230800'),('2020-10-15 17:32:49.091154','2020-10-15 17:32:49.091180',0,'230805','东风区','230800'),('2020-10-15 17:32:49.122031','2020-10-15 17:32:49.122056',0,'230811','郊区','230800'),('2020-10-15 17:32:49.147002','2020-10-15 17:32:49.147029',0,'230822','桦南县','230800'),('2020-10-15 17:32:49.172231','2020-10-15 17:32:49.172255',0,'230826','桦川县','230800'),('2020-10-15 17:32:49.205526','2020-10-15 17:32:49.205551',0,'230828','汤原县','230800'),('2020-10-15 17:32:49.240036','2020-10-15 17:32:49.240062',0,'230881','同江市','230800'),('2020-10-15 17:32:49.272104','2020-10-15 17:32:49.272131',0,'230882','富锦市','230800'),('2020-10-15 17:32:49.307431','2020-10-15 17:32:49.307470',0,'230883','抚远市','230800'),('2020-10-15 17:32:49.342226','2020-10-15 17:32:49.342454',0,'230902','新兴区','230900'),('2020-10-15 17:32:49.383063','2020-10-15 17:32:49.383101',0,'230903','桃山区','230900'),('2020-10-15 17:32:49.422275','2020-10-15 17:32:49.422301',0,'230904','茄子河区','230900'),('2020-10-15 17:32:49.455620','2020-10-15 17:32:49.455646',0,'230921','勃利县','230900'),('2020-10-15 17:32:49.488727','2020-10-15 17:32:49.488753',0,'231002','东安区','231000'),('2020-10-15 17:32:49.513748','2020-10-15 17:32:49.513773',0,'231003','阳明区','231000'),('2020-10-15 17:32:49.548226','2020-10-15 17:32:49.548254',0,'231004','爱民区','231000'),('2020-10-15 17:32:49.581410','2020-10-15 17:32:49.581441',0,'231005','西安区','231000'),('2020-10-15 17:32:49.626075','2020-10-15 17:32:49.626103',0,'231025','林口县','231000'),('2020-10-15 17:32:49.694683','2020-10-15 17:32:49.694784',0,'231081','绥芬河市','231000'),('2020-10-15 17:32:49.722436','2020-10-15 17:32:49.722462',0,'231083','海林市','231000'),('2020-10-15 17:32:49.758025','2020-10-15 17:32:49.758124',0,'231084','宁安市','231000'),('2020-10-15 17:32:49.793031','2020-10-15 17:32:49.793080',0,'231085','穆棱市','231000'),('2020-10-15 17:32:49.851287','2020-10-15 17:32:49.851680',0,'231086','东宁市','231000'),('2020-10-15 17:32:49.899128','2020-10-15 17:32:49.899583',0,'231102','爱辉区','231100'),('2020-10-15 17:32:49.934326','2020-10-15 17:32:49.934410',0,'231121','嫩江县','231100'),('2020-10-15 17:32:49.964049','2020-10-15 17:32:49.964079',0,'231123','逊克县','231100'),('2020-10-15 17:32:49.998856','2020-10-15 17:32:49.998908',0,'231124','孙吴县','231100'),('2020-10-15 17:32:50.034606','2020-10-15 17:32:50.034639',0,'231181','北安市','231100'),('2020-10-15 17:32:50.072322','2020-10-15 17:32:50.072469',0,'231182','五大连池市','231100'),('2020-10-15 17:32:50.119405','2020-10-15 17:32:50.119491',0,'231202','北林区','231200'),('2020-10-15 17:32:50.202030','2020-10-15 17:32:50.202614',0,'231221','望奎县','231200'),('2020-10-15 17:32:50.231914','2020-10-15 17:32:50.231949',0,'231222','兰西县','231200'),('2020-10-15 17:32:50.264498','2020-10-15 17:32:50.264527',0,'231223','青冈县','231200'),('2020-10-15 17:32:50.298138','2020-10-15 17:32:50.298191',0,'231224','庆安县','231200'),('2020-10-15 17:32:50.330851','2020-10-15 17:32:50.330894',0,'231225','明水县','231200'),('2020-10-15 17:32:50.364930','2020-10-15 17:32:50.364960',0,'231226','绥棱县','231200'),('2020-10-15 17:32:50.397095','2020-10-15 17:32:50.397123',0,'231281','安达市','231200'),('2020-10-15 17:32:50.425542','2020-10-15 17:32:50.425609',0,'231282','肇东市','231200'),('2020-10-15 17:32:50.456998','2020-10-15 17:32:50.457041',0,'231283','海伦市','231200'),('2020-10-15 17:32:50.489627','2020-10-15 17:32:50.489737',0,'232721','呼玛县','232700'),('2020-10-15 17:32:50.522128','2020-10-15 17:32:50.522153',0,'232722','塔河县','232700'),('2020-10-15 17:32:50.558312','2020-10-15 17:32:50.558638',0,'232723','漠河县','232700'),('2020-10-15 17:32:50.607951','2020-10-15 17:32:50.608261',0,'310101','黄浦区','310100'),('2020-10-15 17:32:50.677892','2020-10-15 17:32:50.677999',0,'310104','徐汇区','310100'),('2020-10-15 17:32:50.706992','2020-10-15 17:32:50.707052',0,'310105','长宁区','310100'),('2020-10-15 17:32:50.740126','2020-10-15 17:32:50.740163',0,'310106','静安区','310100'),('2020-10-15 17:32:50.773336','2020-10-15 17:32:50.773382',0,'310107','普陀区','310100'),('2020-10-15 17:32:50.806085','2020-10-15 17:32:50.806140',0,'310109','虹口区','310100'),('2020-10-15 17:32:50.839094','2020-10-15 17:32:50.839120',0,'310110','杨浦区','310100'),('2020-10-15 17:32:50.873973','2020-10-15 17:32:50.874017',0,'310112','闵行区','310100'),('2020-10-15 17:32:50.905621','2020-10-15 17:32:50.905654',0,'310113','宝山区','310100'),('2020-10-15 17:32:50.934132','2020-10-15 17:32:50.934163',0,'310114','嘉定区','310100'),('2020-10-15 17:32:50.963569','2020-10-15 17:32:50.963594',0,'310115','浦东新区','310100'),('2020-10-15 17:32:50.991360','2020-10-15 17:32:50.991385',0,'310116','金山区','310100'),('2020-10-15 17:32:51.022497','2020-10-15 17:32:51.022534',0,'310117','松江区','310100'),('2020-10-15 17:32:51.072112','2020-10-15 17:32:51.072138',0,'310118','青浦区','310100'),('2020-10-15 17:32:51.099897','2020-10-15 17:32:51.099933',0,'310120','奉贤区','310100'),('2020-10-15 17:32:51.130373','2020-10-15 17:32:51.130399',0,'310151','崇明区','310100'),('2020-10-15 17:32:51.158181','2020-10-15 17:32:51.158208',0,'320102','玄武区','320100'),('2020-10-15 17:32:51.189253','2020-10-15 17:32:51.189279',0,'320104','秦淮区','320100'),('2020-10-15 17:32:51.222570','2020-10-15 17:32:51.222598',0,'320105','建邺区','320100'),('2020-10-15 17:32:51.255632','2020-10-15 17:32:51.255659',0,'320106','鼓楼区','320100'),('2020-10-15 17:32:51.292898','2020-10-15 17:32:51.292950',0,'320111','浦口区','320100'),('2020-10-15 17:32:51.322018','2020-10-15 17:32:51.322045',0,'320113','栖霞区','320100'),('2020-10-15 17:32:51.389016','2020-10-15 17:32:51.389050',0,'320114','雨花台区','320100'),('2020-10-15 17:32:51.421817','2020-10-15 17:32:51.421851',0,'320115','江宁区','320100'),('2020-10-15 17:32:51.451397','2020-10-15 17:32:51.451425',0,'320116','六合区','320100'),('2020-10-15 17:32:51.480777','2020-10-15 17:32:51.480804',0,'320117','溧水区','320100'),('2020-10-15 17:32:51.513399','2020-10-15 17:32:51.513423',0,'320118','高淳区','320100'),('2020-10-15 17:32:51.546933','2020-10-15 17:32:51.546958',0,'320205','锡山区','320200'),('2020-10-15 17:32:51.574465','2020-10-15 17:32:51.574490',0,'320206','惠山区','320200'),('2020-10-15 17:32:51.613578','2020-10-15 17:32:51.613602',0,'320211','滨湖区','320200'),('2020-10-15 17:32:51.647147','2020-10-15 17:32:51.647172',0,'320213','梁溪区','320200'),('2020-10-15 17:32:51.699801','2020-10-15 17:32:51.699846',0,'320214','新吴区','320200'),('2020-10-15 17:32:51.738566','2020-10-15 17:32:51.738590',0,'320281','江阴市','320200'),('2020-10-15 17:32:51.772422','2020-10-15 17:32:51.772447',0,'320282','宜兴市','320200'),('2020-10-15 17:32:51.805429','2020-10-15 17:32:51.805455',0,'320302','鼓楼区','320300'),('2020-10-15 17:32:51.838671','2020-10-15 17:32:51.838830',0,'320303','云龙区','320300'),('2020-10-15 17:32:51.872659','2020-10-15 17:32:51.872685',0,'320305','贾汪区','320300'),('2020-10-15 17:32:51.909787','2020-10-15 17:32:51.909814',0,'320311','泉山区','320300'),('2020-10-15 17:32:51.939306','2020-10-15 17:32:51.939329',0,'320312','铜山区','320300'),('2020-10-15 17:32:51.975191','2020-10-15 17:32:51.975218',0,'320321','丰县','320300'),('2020-10-15 17:32:52.006195','2020-10-15 17:32:52.006231',0,'320322','沛县','320300'),('2020-10-15 17:32:52.038802','2020-10-15 17:32:52.038828',0,'320324','睢宁县','320300'),('2020-10-15 17:32:52.072277','2020-10-15 17:32:52.072304',0,'320381','新沂市','320300'),('2020-10-15 17:32:52.107454','2020-10-15 17:32:52.107506',0,'320382','邳州市','320300'),('2020-10-15 17:32:52.138845','2020-10-15 17:32:52.138870',0,'320402','天宁区','320400'),('2020-10-15 17:32:52.172917','2020-10-15 17:32:52.172943',0,'320404','钟楼区','320400'),('2020-10-15 17:32:52.205585','2020-10-15 17:32:52.205613',0,'320411','新北区','320400'),('2020-10-15 17:32:52.238651','2020-10-15 17:32:52.238676',0,'320412','武进区','320400'),('2020-10-15 17:32:52.274954','2020-10-15 17:32:52.274990',0,'320413','金坛区','320400'),('2020-10-15 17:32:52.308509','2020-10-15 17:32:52.308607',0,'320481','溧阳市','320400'),('2020-10-15 17:32:52.345049','2020-10-15 17:32:52.345114',0,'320505','虎丘区','320500'),('2020-10-15 17:32:52.374110','2020-10-15 17:32:52.374145',0,'320506','吴中区','320500'),('2020-10-15 17:32:52.405625','2020-10-15 17:32:52.405649',0,'320507','相城区','320500'),('2020-10-15 17:32:52.438605','2020-10-15 17:32:52.438630',0,'320508','姑苏区','320500'),('2020-10-15 17:32:52.471998','2020-10-15 17:32:52.472027',0,'320509','吴江区','320500'),('2020-10-15 17:32:52.506995','2020-10-15 17:32:52.507022',0,'320581','常熟市','320500'),('2020-10-15 17:32:52.539113','2020-10-15 17:32:52.539137',0,'320582','张家港市','320500'),('2020-10-15 17:32:52.571818','2020-10-15 17:32:52.571843',0,'320583','昆山市','320500'),('2020-10-15 17:32:52.615113','2020-10-15 17:32:52.615208',0,'320585','太仓市','320500'),('2020-10-15 17:32:52.689073','2020-10-15 17:32:52.689100',0,'320602','崇川区','320600'),('2020-10-15 17:32:52.722235','2020-10-15 17:32:52.722262',0,'320611','港闸区','320600'),('2020-10-15 17:32:52.755141','2020-10-15 17:32:52.755167',0,'320612','通州区','320600'),('2020-10-15 17:32:52.789623','2020-10-15 17:32:52.789649',0,'320621','海安县','320600'),('2020-10-15 17:32:52.823105','2020-10-15 17:32:52.823135',0,'320623','如东县','320600'),('2020-10-15 17:32:52.857308','2020-10-15 17:32:52.857389',0,'320681','启东市','320600'),('2020-10-15 17:32:52.903658','2020-10-15 17:32:52.903885',0,'320682','如皋市','320600'),('2020-10-15 17:32:52.953189','2020-10-15 17:32:52.953465',0,'320684','海门市','320600'),('2020-10-15 17:32:52.984836','2020-10-15 17:32:52.984907',0,'320703','连云区','320700'),('2020-10-15 17:32:53.016893','2020-10-15 17:32:53.017308',0,'320706','海州区','320700'),('2020-10-15 17:32:53.049129','2020-10-15 17:32:53.049176',0,'320707','赣榆区','320700'),('2020-10-15 17:32:53.084076','2020-10-15 17:32:53.084325',0,'320722','东海县','320700'),('2020-10-15 17:32:53.117324','2020-10-15 17:32:53.117739',0,'320723','灌云县','320700'),('2020-10-15 17:32:53.157920','2020-10-15 17:32:53.158087',0,'320724','灌南县','320700'),('2020-10-15 17:32:53.189927','2020-10-15 17:32:53.189974',0,'320803','淮安区','320800'),('2020-10-15 17:32:53.238850','2020-10-15 17:32:53.239562',0,'320804','淮阴区','320800'),('2020-10-15 17:32:53.299270','2020-10-15 17:32:53.300285',0,'320812','清江浦区','320800'),('2020-10-15 17:32:53.382048','2020-10-15 17:32:53.382727',0,'320813','洪泽区','320800'),('2020-10-15 17:32:53.429792','2020-10-15 17:32:53.430120',0,'320826','涟水县','320800'),('2020-10-15 17:32:53.479484','2020-10-15 17:32:53.479766',0,'320830','盱眙县','320800'),('2020-10-15 17:32:53.523073','2020-10-15 17:32:53.523223',0,'320831','金湖县','320800'),('2020-10-15 17:32:53.563710','2020-10-15 17:32:53.564159',0,'320902','亭湖区','320900'),('2020-10-15 17:32:53.626749','2020-10-15 17:32:53.627469',0,'320903','盐都区','320900'),('2020-10-15 17:32:53.666217','2020-10-15 17:32:53.666509',0,'320904','大丰区','320900'),('2020-10-15 17:32:53.702724','2020-10-15 17:32:53.702939',0,'320921','响水县','320900'),('2020-10-15 17:32:53.735221','2020-10-15 17:32:53.735570',0,'320922','滨海县','320900'),('2020-10-15 17:32:53.766501','2020-10-15 17:32:53.766645',0,'320923','阜宁县','320900'),('2020-10-15 17:32:53.810766','2020-10-15 17:32:53.811345',0,'320924','射阳县','320900'),('2020-10-15 17:32:53.842568','2020-10-15 17:32:53.842645',0,'320925','建湖县','320900'),('2020-10-15 17:32:53.872938','2020-10-15 17:32:53.872973',0,'320981','东台市','320900'),('2020-10-15 17:32:53.907229','2020-10-15 17:32:53.907292',0,'321002','广陵区','321000'),('2020-10-15 17:32:53.940996','2020-10-15 17:32:53.941082',0,'321003','邗江区','321000'),('2020-10-15 17:32:53.976823','2020-10-15 17:32:53.976860',0,'321012','江都区','321000'),('2020-10-15 17:32:54.005532','2020-10-15 17:32:54.005558',0,'321023','宝应县','321000'),('2020-10-15 17:32:54.038454','2020-10-15 17:32:54.038481',0,'321081','仪征市','321000'),('2020-10-15 17:32:54.071844','2020-10-15 17:32:54.071876',0,'321084','高邮市','321000'),('2020-10-15 17:32:54.106525','2020-10-15 17:32:54.106558',0,'321102','京口区','321100'),('2020-10-15 17:32:54.138537','2020-10-15 17:32:54.138562',0,'321111','润州区','321100'),('2020-10-15 17:32:54.171585','2020-10-15 17:32:54.171610',0,'321112','丹徒区','321100'),('2020-10-15 17:32:54.204747','2020-10-15 17:32:54.204773',0,'321181','丹阳市','321100'),('2020-10-15 17:32:54.238155','2020-10-15 17:32:54.238181',0,'321182','扬中市','321100'),('2020-10-15 17:32:54.271578','2020-10-15 17:32:54.271610',0,'321183','句容市','321100'),('2020-10-15 17:32:54.304920','2020-10-15 17:32:54.304945',0,'321202','海陵区','321200'),('2020-10-15 17:32:54.341454','2020-10-15 17:32:54.341480',0,'321203','高港区','321200'),('2020-10-15 17:32:54.400777','2020-10-15 17:32:54.400805',0,'321204','姜堰区','321200'),('2020-10-15 17:32:54.433235','2020-10-15 17:32:54.433262',0,'321281','兴化市','321200'),('2020-10-15 17:32:54.464792','2020-10-15 17:32:54.464819',0,'321282','靖江市','321200'),('2020-10-15 17:32:54.496664','2020-10-15 17:32:54.496715',0,'321283','泰兴市','321200'),('2020-10-15 17:32:54.530686','2020-10-15 17:32:54.530744',0,'321302','宿城区','321300'),('2020-10-15 17:32:54.566960','2020-10-15 17:32:54.567059',0,'321311','宿豫区','321300'),('2020-10-15 17:32:54.603539','2020-10-15 17:32:54.603575',0,'321322','沭阳县','321300'),('2020-10-15 17:32:54.666618','2020-10-15 17:32:54.666844',0,'321323','泗阳县','321300'),('2020-10-15 17:32:54.704855','2020-10-15 17:32:54.704963',0,'321324','泗洪县','321300'),('2020-10-15 17:32:54.753951','2020-10-15 17:32:54.754007',0,'330102','上城区','330100'),('2020-10-15 17:32:54.799605','2020-10-15 17:32:54.799858',0,'330103','下城区','330100'),('2020-10-15 17:32:54.831487','2020-10-15 17:32:54.831569',0,'330104','江干区','330100'),('2020-10-15 17:32:54.859487','2020-10-15 17:32:54.859549',0,'330105','拱墅区','330100'),('2020-10-15 17:32:54.893820','2020-10-15 17:32:54.893947',0,'330106','西湖区','330100'),('2020-10-15 17:32:54.918112','2020-10-15 17:32:54.918150',0,'330108','滨江区','330100'),('2020-10-15 17:32:54.943876','2020-10-15 17:32:54.943934',0,'330109','萧山区','330100'),('2020-10-15 17:32:54.966937','2020-10-15 17:32:54.966967',0,'330110','余杭区','330100'),('2020-10-15 17:32:54.998344','2020-10-15 17:32:54.998445',0,'330111','富阳区','330100'),('2020-10-15 17:32:55.045927','2020-10-15 17:32:55.046970',0,'330112','临安区','330100'),('2020-10-15 17:32:55.092074','2020-10-15 17:32:55.092381',0,'330122','桐庐县','330100'),('2020-10-15 17:32:55.123678','2020-10-15 17:32:55.123850',0,'330127','淳安县','330100'),('2020-10-15 17:32:55.154341','2020-10-15 17:32:55.154453',0,'330182','建德市','330100'),('2020-10-15 17:32:55.196161','2020-10-15 17:32:55.196388',0,'330203','海曙区','330200'),('2020-10-15 17:32:55.233512','2020-10-15 17:32:55.233677',0,'330205','江北区','330200'),('2020-10-15 17:32:55.263355','2020-10-15 17:32:55.263577',0,'330206','北仑区','330200'),('2020-10-15 17:32:55.327969','2020-10-15 17:32:55.328074',0,'330211','镇海区','330200'),('2020-10-15 17:32:55.359234','2020-10-15 17:32:55.359264',0,'330212','鄞州区','330200'),('2020-10-15 17:32:55.384802','2020-10-15 17:32:55.384858',0,'330213','奉化区','330200'),('2020-10-15 17:32:55.411119','2020-10-15 17:32:55.411179',0,'330225','象山县','330200'),('2020-10-15 17:32:55.444849','2020-10-15 17:32:55.444904',0,'330226','宁海县','330200'),('2020-10-15 17:32:55.479607','2020-10-15 17:32:55.479776',0,'330281','余姚市','330200'),('2020-10-15 17:32:55.516778','2020-10-15 17:32:55.516953',0,'330282','慈溪市','330200'),('2020-10-15 17:32:55.545437','2020-10-15 17:32:55.545466',0,'330302','鹿城区','330300'),('2020-10-15 17:32:55.576309','2020-10-15 17:32:55.576355',0,'330303','龙湾区','330300'),('2020-10-15 17:32:55.629254','2020-10-15 17:32:55.629490',0,'330304','瓯海区','330300'),('2020-10-15 17:32:55.716336','2020-10-15 17:32:55.717555',0,'330305','洞头区','330300'),('2020-10-15 17:32:55.782087','2020-10-15 17:32:55.782781',0,'330324','永嘉县','330300'),('2020-10-15 17:32:55.835570','2020-10-15 17:32:55.835956',0,'330326','平阳县','330300'),('2020-10-15 17:32:55.882623','2020-10-15 17:32:55.882823',0,'330327','苍南县','330300'),('2020-10-15 17:32:55.907951','2020-10-15 17:32:55.907976',0,'330328','文成县','330300'),('2020-10-15 17:32:55.933041','2020-10-15 17:32:55.933068',0,'330329','泰顺县','330300'),('2020-10-15 17:32:55.957910','2020-10-15 17:32:55.957935',0,'330381','瑞安市','330300'),('2020-10-15 17:32:55.982884','2020-10-15 17:32:55.982909',0,'330382','乐清市','330300'),('2020-10-15 17:32:56.007926','2020-10-15 17:32:56.007952',0,'330402','南湖区','330400'),('2020-10-15 17:32:56.033393','2020-10-15 17:32:56.033428',0,'330411','秀洲区','330400'),('2020-10-15 17:32:56.132335','2020-10-15 17:32:56.132389',0,'330421','嘉善县','330400'),('2020-10-15 17:32:56.191141','2020-10-15 17:32:56.191168',0,'330424','海盐县','330400'),('2020-10-15 17:32:56.216428','2020-10-15 17:32:56.216453',0,'330481','海宁市','330400'),('2020-10-15 17:32:56.240977','2020-10-15 17:32:56.241002',0,'330482','平湖市','330400'),('2020-10-15 17:32:56.270790','2020-10-15 17:32:56.270818',0,'330483','桐乡市','330400'),('2020-10-15 17:32:56.302301','2020-10-15 17:32:56.302326',0,'330502','吴兴区','330500'),('2020-10-15 17:32:56.327032','2020-10-15 17:32:56.327067',0,'330503','南浔区','330500'),('2020-10-15 17:32:56.350031','2020-10-15 17:32:56.350057',0,'330521','德清县','330500'),('2020-10-15 17:32:56.374410','2020-10-15 17:32:56.374435',0,'330522','长兴县','330500'),('2020-10-15 17:32:56.399786','2020-10-15 17:32:56.399812',0,'330523','安吉县','330500'),('2020-10-15 17:32:56.424727','2020-10-15 17:32:56.424754',0,'330602','越城区','330600'),('2020-10-15 17:32:56.449565','2020-10-15 17:32:56.449590',0,'330603','柯桥区','330600'),('2020-10-15 17:32:56.474727','2020-10-15 17:32:56.474754',0,'330604','上虞区','330600'),('2020-10-15 17:32:56.499988','2020-10-15 17:32:56.500015',0,'330624','新昌县','330600'),('2020-10-15 17:32:56.549573','2020-10-15 17:32:56.549600',0,'330681','诸暨市','330600'),('2020-10-15 17:32:56.575292','2020-10-15 17:32:56.575322',0,'330683','嵊州市','330600'),('2020-10-15 17:32:56.610534','2020-10-15 17:32:56.610575',0,'330702','婺城区','330700'),('2020-10-15 17:32:56.683878','2020-10-15 17:32:56.683903',0,'330703','金东区','330700'),('2020-10-15 17:32:56.708935','2020-10-15 17:32:56.708960',0,'330723','武义县','330700'),('2020-10-15 17:32:56.733026','2020-10-15 17:32:56.733051',0,'330726','浦江县','330700'),('2020-10-15 17:32:56.758479','2020-10-15 17:32:56.758509',0,'330727','磐安县','330700'),('2020-10-15 17:32:56.815215','2020-10-15 17:32:56.815257',0,'330781','兰溪市','330700'),('2020-10-15 17:32:56.850814','2020-10-15 17:32:56.850845',0,'330782','义乌市','330700'),('2020-10-15 17:32:56.884750','2020-10-15 17:32:56.884828',0,'330783','东阳市','330700'),('2020-10-15 17:32:56.911952','2020-10-15 17:32:56.912080',0,'330784','永康市','330700'),('2020-10-15 17:32:56.944879','2020-10-15 17:32:56.945086',0,'330802','柯城区','330800'),('2020-10-15 17:32:56.978372','2020-10-15 17:32:56.978545',0,'330803','衢江区','330800'),('2020-10-15 17:32:57.019365','2020-10-15 17:32:57.019643',0,'330822','常山县','330800'),('2020-10-15 17:32:57.056831','2020-10-15 17:32:57.057170',0,'330824','开化县','330800'),('2020-10-15 17:32:57.085589','2020-10-15 17:32:57.085666',0,'330825','龙游县','330800'),('2020-10-15 17:32:57.120601','2020-10-15 17:32:57.121013',0,'330881','江山市','330800'),('2020-10-15 17:32:57.150949','2020-10-15 17:32:57.150987',0,'330902','定海区','330900'),('2020-10-15 17:32:57.176028','2020-10-15 17:32:57.176060',0,'330903','普陀区','330900'),('2020-10-15 17:32:57.217634','2020-10-15 17:32:57.217728',0,'330921','岱山县','330900'),('2020-10-15 17:32:57.242580','2020-10-15 17:32:57.242826',0,'330922','嵊泗县','330900'),('2020-10-15 17:32:57.282316','2020-10-15 17:32:57.282496',0,'331002','椒江区','331000'),('2020-10-15 17:32:57.326090','2020-10-15 17:32:57.326955',0,'331003','黄岩区','331000'),('2020-10-15 17:32:57.389578','2020-10-15 17:32:57.389637',0,'331004','路桥区','331000'),('2020-10-15 17:32:57.425991','2020-10-15 17:32:57.426044',0,'331022','三门县','331000'),('2020-10-15 17:32:57.449563','2020-10-15 17:32:57.449587',0,'331023','天台县','331000'),('2020-10-15 17:32:57.475067','2020-10-15 17:32:57.475098',0,'331024','仙居县','331000'),('2020-10-15 17:32:57.499788','2020-10-15 17:32:57.499815',0,'331081','温岭市','331000'),('2020-10-15 17:32:57.524818','2020-10-15 17:32:57.524843',0,'331082','临海市','331000'),('2020-10-15 17:32:57.549544','2020-10-15 17:32:57.549568',0,'331083','玉环市','331000'),('2020-10-15 17:32:57.574563','2020-10-15 17:32:57.574597',0,'331102','莲都区','331100'),('2020-10-15 17:32:57.635749','2020-10-15 17:32:57.636036',0,'331121','青田县','331100'),('2020-10-15 17:32:57.687196','2020-10-15 17:32:57.687355',0,'331122','缙云县','331100'),('2020-10-15 17:32:57.716053','2020-10-15 17:32:57.716089',0,'331123','遂昌县','331100'),('2020-10-15 17:32:57.742572','2020-10-15 17:32:57.742597',0,'331124','松阳县','331100'),('2020-10-15 17:32:57.775527','2020-10-15 17:32:57.775565',0,'331125','云和县','331100'),('2020-10-15 17:32:57.800339','2020-10-15 17:32:57.800435',0,'331126','庆元县','331100'),('2020-10-15 17:32:57.825002','2020-10-15 17:32:57.825027',0,'331127','景宁畲族自治县','331100'),('2020-10-15 17:32:57.855490','2020-10-15 17:32:57.855517',0,'331181','龙泉市','331100'),('2020-10-15 17:32:57.883749','2020-10-15 17:32:57.883778',0,'340102','瑶海区','340100'),('2020-10-15 17:32:57.907887','2020-10-15 17:32:57.907912',0,'340103','庐阳区','340100'),('2020-10-15 17:32:57.933542','2020-10-15 17:32:57.933571',0,'340104','蜀山区','340100'),('2020-10-15 17:32:57.958385','2020-10-15 17:32:57.958422',0,'340111','包河区','340100'),('2020-10-15 17:32:57.992601','2020-10-15 17:32:57.992777',0,'340121','长丰县','340100'),('2020-10-15 17:32:58.048810','2020-10-15 17:32:58.049115',0,'340122','肥东县','340100'),('2020-10-15 17:32:58.076161','2020-10-15 17:32:58.076198',0,'340123','肥西县','340100'),('2020-10-15 17:32:58.101283','2020-10-15 17:32:58.101321',0,'340124','庐江县','340100'),('2020-10-15 17:32:58.126182','2020-10-15 17:32:58.126257',0,'340181','巢湖市','340100'),('2020-10-15 17:32:58.158984','2020-10-15 17:32:58.159030',0,'340202','镜湖区','340200'),('2020-10-15 17:32:58.183094','2020-10-15 17:32:58.183119',0,'340203','弋江区','340200'),('2020-10-15 17:32:58.208606','2020-10-15 17:32:58.208631',0,'340207','鸠江区','340200'),('2020-10-15 17:32:58.232972','2020-10-15 17:32:58.232997',0,'340208','三山区','340200'),('2020-10-15 17:32:58.257852','2020-10-15 17:32:58.257878',0,'340221','芜湖县','340200'),('2020-10-15 17:32:58.282818','2020-10-15 17:32:58.282843',0,'340222','繁昌县','340200'),('2020-10-15 17:32:58.313383','2020-10-15 17:32:58.313411',0,'340223','南陵县','340200'),('2020-10-15 17:32:58.344676','2020-10-15 17:32:58.344733',0,'340225','无为县','340200'),('2020-10-15 17:32:58.377965','2020-10-15 17:32:58.377990',0,'340302','龙子湖区','340300'),('2020-10-15 17:32:58.411195','2020-10-15 17:32:58.411221',0,'340303','蚌山区','340300'),('2020-10-15 17:32:58.441786','2020-10-15 17:32:58.441812',0,'340304','禹会区','340300'),('2020-10-15 17:32:58.472078','2020-10-15 17:32:58.472289',0,'340311','淮上区','340300'),('2020-10-15 17:32:58.500334','2020-10-15 17:32:58.500362',0,'340321','怀远县','340300'),('2020-10-15 17:32:58.524476','2020-10-15 17:32:58.524500',0,'340322','五河县','340300'),('2020-10-15 17:32:58.549764','2020-10-15 17:32:58.549790',0,'340323','固镇县','340300'),('2020-10-15 17:32:58.574559','2020-10-15 17:32:58.574586',0,'340402','大通区','340400'),('2020-10-15 17:32:58.608649','2020-10-15 17:32:58.608681',0,'340403','田家庵区','340400'),('2020-10-15 17:32:58.663872','2020-10-15 17:32:58.663902',0,'340404','谢家集区','340400'),('2020-10-15 17:32:58.695491','2020-10-15 17:32:58.695531',0,'340405','八公山区','340400'),('2020-10-15 17:32:58.728588','2020-10-15 17:32:58.728628',0,'340406','潘集区','340400'),('2020-10-15 17:32:58.760360','2020-10-15 17:32:58.760451',0,'340421','凤台县','340400'),('2020-10-15 17:32:58.795006','2020-10-15 17:32:58.795034',0,'340422','寿县','340400'),('2020-10-15 17:32:58.827083','2020-10-15 17:32:58.827111',0,'340503','花山区','340500'),('2020-10-15 17:32:58.858618','2020-10-15 17:32:58.858727',0,'340504','雨山区','340500'),('2020-10-15 17:32:58.883091','2020-10-15 17:32:58.883116',0,'340506','博望区','340500'),('2020-10-15 17:32:58.908157','2020-10-15 17:32:58.908182',0,'340521','当涂县','340500'),('2020-10-15 17:32:58.932920','2020-10-15 17:32:58.932945',0,'340522','含山县','340500'),('2020-10-15 17:32:58.958018','2020-10-15 17:32:58.958043',0,'340523','和县','340500'),('2020-10-15 17:32:58.982812','2020-10-15 17:32:58.982837',0,'340602','杜集区','340600'),('2020-10-15 17:32:59.009211','2020-10-15 17:32:59.009237',0,'340603','相山区','340600'),('2020-10-15 17:32:59.033779','2020-10-15 17:32:59.033806',0,'340604','烈山区','340600'),('2020-10-15 17:32:59.058589','2020-10-15 17:32:59.058620',0,'340621','濉溪县','340600'),('2020-10-15 17:32:59.082910','2020-10-15 17:32:59.082935',0,'340705','铜官区','340700'),('2020-10-15 17:32:59.108248','2020-10-15 17:32:59.108278',0,'340706','义安区','340700'),('2020-10-15 17:32:59.133661','2020-10-15 17:32:59.133724',0,'340711','郊区','340700'),('2020-10-15 17:32:59.161312','2020-10-15 17:32:59.161364',0,'340722','枞阳县','340700'),('2020-10-15 17:32:59.191670','2020-10-15 17:32:59.191749',0,'340802','迎江区','340800'),('2020-10-15 17:32:59.216576','2020-10-15 17:32:59.216604',0,'340803','大观区','340800'),('2020-10-15 17:32:59.241302','2020-10-15 17:32:59.241327',0,'340811','宜秀区','340800'),('2020-10-15 17:32:59.266585','2020-10-15 17:32:59.266611',0,'340822','怀宁县','340800'),('2020-10-15 17:32:59.291406','2020-10-15 17:32:59.291431',0,'340824','潜山县','340800'),('2020-10-15 17:32:59.316760','2020-10-15 17:32:59.316786',0,'340825','太湖县','340800'),('2020-10-15 17:32:59.342141','2020-10-15 17:32:59.342166',0,'340826','宿松县','340800'),('2020-10-15 17:32:59.366575','2020-10-15 17:32:59.366602',0,'340827','望江县','340800'),('2020-10-15 17:32:59.401658','2020-10-15 17:32:59.401684',0,'340828','岳西县','340800'),('2020-10-15 17:32:59.424955','2020-10-15 17:32:59.424980',0,'340881','桐城市','340800'),('2020-10-15 17:32:59.450344','2020-10-15 17:32:59.450369',0,'341002','屯溪区','341000'),('2020-10-15 17:32:59.475007','2020-10-15 17:32:59.475032',0,'341003','黄山区','341000'),('2020-10-15 17:32:59.500195','2020-10-15 17:32:59.500222',0,'341004','徽州区','341000'),('2020-10-15 17:32:59.525588','2020-10-15 17:32:59.525627',0,'341021','歙县','341000'),('2020-10-15 17:32:59.549718','2020-10-15 17:32:59.549747',0,'341022','休宁县','341000'),('2020-10-15 17:32:59.574572','2020-10-15 17:32:59.574597',0,'341023','黟县','341000'),('2020-10-15 17:32:59.608366','2020-10-15 17:32:59.608391',0,'341024','祁门县','341000'),('2020-10-15 17:32:59.675093','2020-10-15 17:32:59.675121',0,'341102','琅琊区','341100'),('2020-10-15 17:32:59.700806','2020-10-15 17:32:59.700834',0,'341103','南谯区','341100'),('2020-10-15 17:32:59.727219','2020-10-15 17:32:59.727244',0,'341122','来安县','341100'),('2020-10-15 17:32:59.758611','2020-10-15 17:32:59.758637',0,'341124','全椒县','341100'),('2020-10-15 17:32:59.783613','2020-10-15 17:32:59.783638',0,'341125','定远县','341100'),('2020-10-15 17:32:59.809318','2020-10-15 17:32:59.809382',0,'341126','凤阳县','341100'),('2020-10-15 17:32:59.833643','2020-10-15 17:32:59.833668',0,'341181','天长市','341100'),('2020-10-15 17:32:59.858479','2020-10-15 17:32:59.858504',0,'341182','明光市','341100'),('2020-10-15 17:32:59.884043','2020-10-15 17:32:59.884073',0,'341202','颍州区','341200'),('2020-10-15 17:32:59.908870','2020-10-15 17:32:59.908896',0,'341203','颍东区','341200'),('2020-10-15 17:32:59.934134','2020-10-15 17:32:59.934160',0,'341204','颍泉区','341200'),('2020-10-15 17:32:59.958432','2020-10-15 17:32:59.958457',0,'341221','临泉县','341200'),('2020-10-15 17:32:59.983518','2020-10-15 17:32:59.983544',0,'341222','太和县','341200'),('2020-10-15 17:33:00.008326','2020-10-15 17:33:00.008354',0,'341225','阜南县','341200'),('2020-10-15 17:33:00.033634','2020-10-15 17:33:00.033660',0,'341226','颍上县','341200'),('2020-10-15 17:33:00.058583','2020-10-15 17:33:00.058609',0,'341282','界首市','341200'),('2020-10-15 17:33:00.083763','2020-10-15 17:33:00.083788',0,'341302','埇桥区','341300'),('2020-10-15 17:33:00.109184','2020-10-15 17:33:00.109231',0,'341321','砀山县','341300'),('2020-10-15 17:33:00.134350','2020-10-15 17:33:00.134380',0,'341322','萧县','341300'),('2020-10-15 17:33:00.158627','2020-10-15 17:33:00.158657',0,'341323','灵璧县','341300'),('2020-10-15 17:33:00.183602','2020-10-15 17:33:00.183627',0,'341324','泗县','341300'),('2020-10-15 17:33:00.208627','2020-10-15 17:33:00.208654',0,'341502','金安区','341500'),('2020-10-15 17:33:00.233877','2020-10-15 17:33:00.233902',0,'341503','裕安区','341500'),('2020-10-15 17:33:00.267171','2020-10-15 17:33:00.267196',0,'341504','叶集区','341500'),('2020-10-15 17:33:00.291989','2020-10-15 17:33:00.292013',0,'341522','霍邱县','341500'),('2020-10-15 17:33:00.318012','2020-10-15 17:33:00.318038',0,'341523','舒城县','341500'),('2020-10-15 17:33:00.341892','2020-10-15 17:33:00.341918',0,'341524','金寨县','341500'),('2020-10-15 17:33:00.391826','2020-10-15 17:33:00.391852',0,'341525','霍山县','341500'),('2020-10-15 17:33:00.419321','2020-10-15 17:33:00.419366',0,'341602','谯城区','341600'),('2020-10-15 17:33:00.455763','2020-10-15 17:33:00.455890',0,'341621','涡阳县','341600'),('2020-10-15 17:33:00.484075','2020-10-15 17:33:00.484101',0,'341622','蒙城县','341600'),('2020-10-15 17:33:00.513894','2020-10-15 17:33:00.513934',0,'341623','利辛县','341600'),('2020-10-15 17:33:00.546889','2020-10-15 17:33:00.547004',0,'341702','贵池区','341700'),('2020-10-15 17:33:00.575961','2020-10-15 17:33:00.575994',0,'341721','东至县','341700'),('2020-10-15 17:33:00.613560','2020-10-15 17:33:00.613760',0,'341722','石台县','341700'),('2020-10-15 17:33:00.691583','2020-10-15 17:33:00.692331',0,'341723','青阳县','341700'),('2020-10-15 17:33:00.728950','2020-10-15 17:33:00.729074',0,'341802','宣州区','341800'),('2020-10-15 17:33:00.764405','2020-10-15 17:33:00.764462',0,'341821','郎溪县','341800'),('2020-10-15 17:33:00.798733','2020-10-15 17:33:00.798934',0,'341822','广德县','341800'),('2020-10-15 17:33:00.857554','2020-10-15 17:33:00.858485',0,'341823','泾县','341800'),('2020-10-15 17:33:00.917432','2020-10-15 17:33:00.917842',0,'341824','绩溪县','341800'),('2020-10-15 17:33:00.968662','2020-10-15 17:33:00.968961',0,'341825','旌德县','341800'),('2020-10-15 17:33:01.010606','2020-10-15 17:33:01.010872',0,'341881','宁国市','341800'),('2020-10-15 17:33:01.052447','2020-10-15 17:33:01.052675',0,'350102','鼓楼区','350100'),('2020-10-15 17:33:01.091862','2020-10-15 17:33:01.092109',0,'350103','台江区','350100'),('2020-10-15 17:33:01.178415','2020-10-15 17:33:01.179190',0,'350104','仓山区','350100'),('2020-10-15 17:33:01.227018','2020-10-15 17:33:01.227545',0,'350105','马尾区','350100'),('2020-10-15 17:33:01.272312','2020-10-15 17:33:01.272636',0,'350111','晋安区','350100'),('2020-10-15 17:33:01.303268','2020-10-15 17:33:01.303358',0,'350112','长乐区','350100'),('2020-10-15 17:33:01.338204','2020-10-15 17:33:01.338260',0,'350121','闽侯县','350100'),('2020-10-15 17:33:01.375809','2020-10-15 17:33:01.375967',0,'350122','连江县','350100'),('2020-10-15 17:33:01.429526','2020-10-15 17:33:01.429885',0,'350123','罗源县','350100'),('2020-10-15 17:33:01.487826','2020-10-15 17:33:01.488359',0,'350124','闽清县','350100'),('2020-10-15 17:33:01.539407','2020-10-15 17:33:01.540179',0,'350125','永泰县','350100'),('2020-10-15 17:33:01.590655','2020-10-15 17:33:01.591124',0,'350128','平潭县','350100'),('2020-10-15 17:33:01.704435','2020-10-15 17:33:01.705358',0,'350181','福清市','350100'),('2020-10-15 17:33:01.836598','2020-10-15 17:33:01.837672',0,'350203','思明区','350200'),('2020-10-15 17:33:01.887221','2020-10-15 17:33:01.887628',0,'350205','海沧区','350200'),('2020-10-15 17:33:01.928992','2020-10-15 17:33:01.929152',0,'350206','湖里区','350200'),('2020-10-15 17:33:01.968963','2020-10-15 17:33:01.969114',0,'350211','集美区','350200'),('2020-10-15 17:33:02.002823','2020-10-15 17:33:02.002891',0,'350212','同安区','350200'),('2020-10-15 17:33:02.036806','2020-10-15 17:33:02.036899',0,'350213','翔安区','350200'),('2020-10-15 17:33:02.067171','2020-10-15 17:33:02.067207',0,'350302','城厢区','350300'),('2020-10-15 17:33:02.093134','2020-10-15 17:33:02.093164',0,'350303','涵江区','350300'),('2020-10-15 17:33:02.129741','2020-10-15 17:33:02.129877',0,'350304','荔城区','350300'),('2020-10-15 17:33:02.164529','2020-10-15 17:33:02.164669',0,'350305','秀屿区','350300'),('2020-10-15 17:33:02.193853','2020-10-15 17:33:02.193887',0,'350322','仙游县','350300'),('2020-10-15 17:33:02.225969','2020-10-15 17:33:02.226039',0,'350402','梅列区','350400'),('2020-10-15 17:33:02.291686','2020-10-15 17:33:02.292229',0,'350403','三元区','350400'),('2020-10-15 17:33:02.369191','2020-10-15 17:33:02.369705',0,'350421','明溪县','350400'),('2020-10-15 17:33:02.438763','2020-10-15 17:33:02.439497',0,'350423','清流县','350400'),('2020-10-15 17:33:02.482962','2020-10-15 17:33:02.483150',0,'350424','宁化县','350400'),('2020-10-15 17:33:02.539728','2020-10-15 17:33:02.539986',0,'350425','大田县','350400'),('2020-10-15 17:33:02.602183','2020-10-15 17:33:02.602954',0,'350426','尤溪县','350400'),('2020-10-15 17:33:02.656173','2020-10-15 17:33:02.656325',0,'350427','沙县','350400'),('2020-10-15 17:33:02.696468','2020-10-15 17:33:02.696788',0,'350428','将乐县','350400'),('2020-10-15 17:33:02.735061','2020-10-15 17:33:02.735298',0,'350429','泰宁县','350400'),('2020-10-15 17:33:02.777025','2020-10-15 17:33:02.777365',0,'350430','建宁县','350400'),('2020-10-15 17:33:02.815734','2020-10-15 17:33:02.815990',0,'350481','永安市','350400'),('2020-10-15 17:33:02.853224','2020-10-15 17:33:02.853277',0,'350502','鲤城区','350500'),('2020-10-15 17:33:02.885382','2020-10-15 17:33:02.885413',0,'350503','丰泽区','350500'),('2020-10-15 17:33:02.921231','2020-10-15 17:33:02.921344',0,'350504','洛江区','350500'),('2020-10-15 17:33:02.954360','2020-10-15 17:33:02.954450',0,'350505','泉港区','350500'),('2020-10-15 17:33:02.998372','2020-10-15 17:33:02.998965',0,'350521','惠安县','350500'),('2020-10-15 17:33:03.049115','2020-10-15 17:33:03.049509',0,'350524','安溪县','350500'),('2020-10-15 17:33:03.092167','2020-10-15 17:33:03.092368',0,'350525','永春县','350500'),('2020-10-15 17:33:03.137598','2020-10-15 17:33:03.138150',0,'350526','德化县','350500'),('2020-10-15 17:33:03.180277','2020-10-15 17:33:03.180587',0,'350527','金门县','350500'),('2020-10-15 17:33:03.227440','2020-10-15 17:33:03.227644',0,'350581','石狮市','350500'),('2020-10-15 17:33:03.282364','2020-10-15 17:33:03.283061',0,'350582','晋江市','350500'),('2020-10-15 17:33:03.323995','2020-10-15 17:33:03.324292',0,'350583','南安市','350500'),('2020-10-15 17:33:03.397638','2020-10-15 17:33:03.397969',0,'350602','芗城区','350600'),('2020-10-15 17:33:03.438849','2020-10-15 17:33:03.439185',0,'350603','龙文区','350600'),('2020-10-15 17:33:03.495573','2020-10-15 17:33:03.496239',0,'350622','云霄县','350600'),('2020-10-15 17:33:03.540589','2020-10-15 17:33:03.541063',0,'350623','漳浦县','350600'),('2020-10-15 17:33:03.600367','2020-10-15 17:33:03.600721',0,'350624','诏安县','350600'),('2020-10-15 17:33:03.678932','2020-10-15 17:33:03.679329',0,'350625','长泰县','350600'),('2020-10-15 17:33:03.752134','2020-10-15 17:33:03.752842',0,'350626','东山县','350600'),('2020-10-15 17:33:03.790490','2020-10-15 17:33:03.790571',0,'350627','南靖县','350600'),('2020-10-15 17:33:03.823577','2020-10-15 17:33:03.823894',0,'350628','平和县','350600'),('2020-10-15 17:33:03.878683','2020-10-15 17:33:03.878936',0,'350629','华安县','350600'),('2020-10-15 17:33:03.914103','2020-10-15 17:33:03.914171',0,'350681','龙海市','350600'),('2020-10-15 17:33:03.945170','2020-10-15 17:33:03.945259',0,'350702','延平区','350700'),('2020-10-15 17:33:03.986682','2020-10-15 17:33:03.986926',0,'350703','建阳区','350700'),('2020-10-15 17:33:04.030033','2020-10-15 17:33:04.030375',0,'350721','顺昌县','350700'),('2020-10-15 17:33:04.070523','2020-10-15 17:33:04.070779',0,'350722','浦城县','350700'),('2020-10-15 17:33:04.102036','2020-10-15 17:33:04.102093',0,'350723','光泽县','350700'),('2020-10-15 17:33:04.139335','2020-10-15 17:33:04.139433',0,'350724','松溪县','350700'),('2020-10-15 17:33:04.169914','2020-10-15 17:33:04.169952',0,'350725','政和县','350700'),('2020-10-15 17:33:04.201289','2020-10-15 17:33:04.201332',0,'350781','邵武市','350700'),('2020-10-15 17:33:04.238961','2020-10-15 17:33:04.239206',0,'350782','武夷山市','350700'),('2020-10-15 17:33:04.292514','2020-10-15 17:33:04.292627',0,'350783','建瓯市','350700'),('2020-10-15 17:33:04.321357','2020-10-15 17:33:04.321520',0,'350802','新罗区','350800'),('2020-10-15 17:33:04.354274','2020-10-15 17:33:04.354350',0,'350803','永定区','350800'),('2020-10-15 17:33:04.413306','2020-10-15 17:33:04.413880',0,'350821','长汀县','350800'),('2020-10-15 17:33:04.485689','2020-10-15 17:33:04.486563',0,'350823','上杭县','350800'),('2020-10-15 17:33:04.545726','2020-10-15 17:33:04.546234',0,'350824','武平县','350800'),('2020-10-15 17:33:04.606532','2020-10-15 17:33:04.607302',0,'350825','连城县','350800'),('2020-10-15 17:33:04.740297','2020-10-15 17:33:04.741724',0,'350881','漳平市','350800'),('2020-10-15 17:33:04.834088','2020-10-15 17:33:04.835276',0,'350902','蕉城区','350900'),('2020-10-15 17:33:04.952343','2020-10-15 17:33:04.953507',0,'350921','霞浦县','350900'),('2020-10-15 17:33:05.112917','2020-10-15 17:33:05.114672',0,'350922','古田县','350900'),('2020-10-15 17:33:05.244174','2020-10-15 17:33:05.244941',0,'350923','屏南县','350900'),('2020-10-15 17:33:05.350067','2020-10-15 17:33:05.351488',0,'350924','寿宁县','350900'),('2020-10-15 17:33:05.480373','2020-10-15 17:33:05.481814',0,'350925','周宁县','350900'),('2020-10-15 17:33:05.547912','2020-10-15 17:33:05.548854',0,'350926','柘荣县','350900'),('2020-10-15 17:33:05.594981','2020-10-15 17:33:05.595595',0,'350981','福安市','350900'),('2020-10-15 17:33:05.709097','2020-10-15 17:33:05.709745',0,'350982','福鼎市','350900'),('2020-10-15 17:33:05.801944','2020-10-15 17:33:05.803036',0,'360102','东湖区','360100'),('2020-10-15 17:33:05.886860','2020-10-15 17:33:05.887858',0,'360103','西湖区','360100'),('2020-10-15 17:33:06.001259','2020-10-15 17:33:06.001801',0,'360104','青云谱区','360100'),('2020-10-15 17:33:06.078639','2020-10-15 17:33:06.079303',0,'360105','湾里区','360100'),('2020-10-15 17:33:06.129591','2020-10-15 17:33:06.129893',0,'360111','青山湖区','360100'),('2020-10-15 17:33:06.167367','2020-10-15 17:33:06.167596',0,'360112','新建区','360100'),('2020-10-15 17:33:06.225057','2020-10-15 17:33:06.225347',0,'360121','南昌县','360100'),('2020-10-15 17:33:06.265524','2020-10-15 17:33:06.265614',0,'360123','安义县','360100'),('2020-10-15 17:33:06.309004','2020-10-15 17:33:06.309302',0,'360124','进贤县','360100'),('2020-10-15 17:33:06.373768','2020-10-15 17:33:06.374240',0,'360202','昌江区','360200'),('2020-10-15 17:33:06.504276','2020-10-15 17:33:06.505842',0,'360203','珠山区','360200'),('2020-10-15 17:33:06.582710','2020-10-15 17:33:06.583484',0,'360222','浮梁县','360200'),('2020-10-15 17:33:06.670185','2020-10-15 17:33:06.671463',0,'360281','乐平市','360200'),('2020-10-15 17:33:06.826320','2020-10-15 17:33:06.826913',0,'360302','安源区','360300'),('2020-10-15 17:33:06.874762','2020-10-15 17:33:06.875246',0,'360313','湘东区','360300'),('2020-10-15 17:33:06.924034','2020-10-15 17:33:06.924247',0,'360321','莲花县','360300'),('2020-10-15 17:33:06.958591','2020-10-15 17:33:06.958753',0,'360322','上栗县','360300'),('2020-10-15 17:33:06.997222','2020-10-15 17:33:06.997416',0,'360323','芦溪县','360300'),('2020-10-15 17:33:07.047733','2020-10-15 17:33:07.048225',0,'360402','濂溪区','360400'),('2020-10-15 17:33:07.088913','2020-10-15 17:33:07.089048',0,'360403','浔阳区','360400'),('2020-10-15 17:33:07.158961','2020-10-15 17:33:07.159870',0,'360404','柴桑区','360400'),('2020-10-15 17:33:07.254984','2020-10-15 17:33:07.256901',0,'360423','武宁县','360400'),('2020-10-15 17:33:07.424303','2020-10-15 17:33:07.424918',0,'360424','修水县','360400'),('2020-10-15 17:33:07.477495','2020-10-15 17:33:07.477807',0,'360425','永修县','360400'),('2020-10-15 17:33:07.539286','2020-10-15 17:33:07.540844',0,'360426','德安县','360400'),('2020-10-15 17:33:07.614408','2020-10-15 17:33:07.615299',0,'360428','都昌县','360400'),('2020-10-15 17:33:07.708749','2020-10-15 17:33:07.709408',0,'360429','湖口县','360400'),('2020-10-15 17:33:07.748782','2020-10-15 17:33:07.749156',0,'360430','彭泽县','360400'),('2020-10-15 17:33:07.787808','2020-10-15 17:33:07.787919',0,'360481','瑞昌市','360400'),('2020-10-15 17:33:07.814601','2020-10-15 17:33:07.814645',0,'360482','共青城市','360400'),('2020-10-15 17:33:07.857926','2020-10-15 17:33:07.858030',0,'360483','庐山市','360400'),('2020-10-15 17:33:07.890030','2020-10-15 17:33:07.890083',0,'360502','渝水区','360500'),('2020-10-15 17:33:07.922894','2020-10-15 17:33:07.922990',0,'360521','分宜县','360500'),('2020-10-15 17:33:07.957275','2020-10-15 17:33:07.957334',0,'360602','月湖区','360600'),('2020-10-15 17:33:07.989910','2020-10-15 17:33:07.989984',0,'360622','余江县','360600'),('2020-10-15 17:33:08.023344','2020-10-15 17:33:08.023390',0,'360681','贵溪市','360600'),('2020-10-15 17:33:08.055254','2020-10-15 17:33:08.055280',0,'360702','章贡区','360700'),('2020-10-15 17:33:08.082871','2020-10-15 17:33:08.082977',0,'360703','南康区','360700'),('2020-10-15 17:33:08.113207','2020-10-15 17:33:08.113235',0,'360704','赣县区','360700'),('2020-10-15 17:33:08.138205','2020-10-15 17:33:08.138230',0,'360722','信丰县','360700'),('2020-10-15 17:33:08.177558','2020-10-15 17:33:08.177586',0,'360723','大余县','360700'),('2020-10-15 17:33:08.217765','2020-10-15 17:33:08.217800',0,'360724','上犹县','360700'),('2020-10-15 17:33:08.247046','2020-10-15 17:33:08.247072',0,'360725','崇义县','360700'),('2020-10-15 17:33:08.299738','2020-10-15 17:33:08.299813',0,'360726','安远县','360700'),('2020-10-15 17:33:08.339758','2020-10-15 17:33:08.339931',0,'360727','龙南县','360700'),('2020-10-15 17:33:08.384550','2020-10-15 17:33:08.384664',0,'360728','定南县','360700'),('2020-10-15 17:33:08.418683','2020-10-15 17:33:08.418776',0,'360729','全南县','360700'),('2020-10-15 17:33:08.453916','2020-10-15 17:33:08.454257',0,'360730','宁都县','360700'),('2020-10-15 17:33:08.491546','2020-10-15 17:33:08.491592',0,'360731','于都县','360700'),('2020-10-15 17:33:08.526262','2020-10-15 17:33:08.526330',0,'360732','兴国县','360700'),('2020-10-15 17:33:08.560557','2020-10-15 17:33:08.560664',0,'360733','会昌县','360700'),('2020-10-15 17:33:08.594429','2020-10-15 17:33:08.594557',0,'360734','寻乌县','360700'),('2020-10-15 17:33:08.626736','2020-10-15 17:33:08.626808',0,'360735','石城县','360700'),('2020-10-15 17:33:08.680804','2020-10-15 17:33:08.680933',0,'360781','瑞金市','360700'),('2020-10-15 17:33:08.722212','2020-10-15 17:33:08.723009',0,'360802','吉州区','360800'),('2020-10-15 17:33:08.783677','2020-10-15 17:33:08.785275',0,'360803','青原区','360800'),('2020-10-15 17:33:08.829990','2020-10-15 17:33:08.830163',0,'360821','吉安县','360800'),('2020-10-15 17:33:08.870780','2020-10-15 17:33:08.870841',0,'360822','吉水县','360800'),('2020-10-15 17:33:08.908328','2020-10-15 17:33:08.908361',0,'360823','峡江县','360800'),('2020-10-15 17:33:08.942272','2020-10-15 17:33:08.942298',0,'360824','新干县','360800'),('2020-10-15 17:33:08.973556','2020-10-15 17:33:08.973595',0,'360825','永丰县','360800'),('2020-10-15 17:33:09.005565','2020-10-15 17:33:09.005591',0,'360826','泰和县','360800'),('2020-10-15 17:33:09.038601','2020-10-15 17:33:09.038626',0,'360827','遂川县','360800'),('2020-10-15 17:33:09.072648','2020-10-15 17:33:09.072674',0,'360828','万安县','360800'),('2020-10-15 17:33:09.106005','2020-10-15 17:33:09.106032',0,'360829','安福县','360800'),('2020-10-15 17:33:09.139656','2020-10-15 17:33:09.139721',0,'360830','永新县','360800'),('2020-10-15 17:33:09.222082','2020-10-15 17:33:09.222490',0,'360881','井冈山市','360800'),('2020-10-15 17:33:09.257392','2020-10-15 17:33:09.257477',0,'360902','袁州区','360900'),('2020-10-15 17:33:09.292660','2020-10-15 17:33:09.292729',0,'360921','奉新县','360900'),('2020-10-15 17:33:09.322879','2020-10-15 17:33:09.322953',0,'360922','万载县','360900'),('2020-10-15 17:33:09.387119','2020-10-15 17:33:09.387191',0,'360923','上高县','360900'),('2020-10-15 17:33:09.418309','2020-10-15 17:33:09.418334',0,'360924','宜丰县','360900'),('2020-10-15 17:33:09.441818','2020-10-15 17:33:09.441843',0,'360925','靖安县','360900'),('2020-10-15 17:33:09.472081','2020-10-15 17:33:09.472109',0,'360926','铜鼓县','360900'),('2020-10-15 17:33:09.506375','2020-10-15 17:33:09.506402',0,'360981','丰城市','360900'),('2020-10-15 17:33:09.539208','2020-10-15 17:33:09.539246',0,'360982','樟树市','360900'),('2020-10-15 17:33:09.572573','2020-10-15 17:33:09.572617',0,'360983','高安市','360900'),('2020-10-15 17:33:09.606356','2020-10-15 17:33:09.606408',0,'361002','临川区','361000'),('2020-10-15 17:33:09.676738','2020-10-15 17:33:09.676906',0,'361003','东乡区','361000'),('2020-10-15 17:33:09.705666','2020-10-15 17:33:09.705939',0,'361021','南城县','361000'),('2020-10-15 17:33:09.740610','2020-10-15 17:33:09.740735',0,'361022','黎川县','361000'),('2020-10-15 17:33:09.773124','2020-10-15 17:33:09.773150',0,'361023','南丰县','361000'),('2020-10-15 17:33:09.805535','2020-10-15 17:33:09.805562',0,'361024','崇仁县','361000'),('2020-10-15 17:33:09.839292','2020-10-15 17:33:09.839326',0,'361025','乐安县','361000'),('2020-10-15 17:33:09.874511','2020-10-15 17:33:09.874575',0,'361026','宜黄县','361000'),('2020-10-15 17:33:09.908773','2020-10-15 17:33:09.908940',0,'361027','金溪县','361000'),('2020-10-15 17:33:09.945011','2020-10-15 17:33:09.945073',0,'361028','资溪县','361000'),('2020-10-15 17:33:09.974914','2020-10-15 17:33:09.974953',0,'361030','广昌县','361000'),('2020-10-15 17:33:10.005036','2020-10-15 17:33:10.005061',0,'361102','信州区','361100'),('2020-10-15 17:33:10.038989','2020-10-15 17:33:10.039030',0,'361103','广丰区','361100'),('2020-10-15 17:33:10.072501','2020-10-15 17:33:10.072526',0,'361121','上饶县','361100'),('2020-10-15 17:33:10.105098','2020-10-15 17:33:10.105123',0,'361123','玉山县','361100'),('2020-10-15 17:33:10.138766','2020-10-15 17:33:10.138797',0,'361124','铅山县','361100'),('2020-10-15 17:33:10.172238','2020-10-15 17:33:10.172268',0,'361125','横峰县','361100'),('2020-10-15 17:33:10.208358','2020-10-15 17:33:10.208391',0,'361126','弋阳县','361100'),('2020-10-15 17:33:10.241134','2020-10-15 17:33:10.241276',0,'361127','余干县','361100'),('2020-10-15 17:33:10.272008','2020-10-15 17:33:10.272033',0,'361128','鄱阳县','361100'),('2020-10-15 17:33:10.305113','2020-10-15 17:33:10.305139',0,'361129','万年县','361100'),('2020-10-15 17:33:10.338134','2020-10-15 17:33:10.338159',0,'361130','婺源县','361100'),('2020-10-15 17:33:10.371609','2020-10-15 17:33:10.371648',0,'361181','德兴市','361100'),('2020-10-15 17:33:10.404667','2020-10-15 17:33:10.404721',0,'370102','历下区','370100'),('2020-10-15 17:33:10.438904','2020-10-15 17:33:10.438930',0,'370103','市中区','370100'),('2020-10-15 17:33:10.471570','2020-10-15 17:33:10.471595',0,'370104','槐荫区','370100'),('2020-10-15 17:33:10.504551','2020-10-15 17:33:10.504576',0,'370105','天桥区','370100'),('2020-10-15 17:33:10.538214','2020-10-15 17:33:10.538237',0,'370112','历城区','370100'),('2020-10-15 17:33:10.571434','2020-10-15 17:33:10.571459',0,'370113','长清区','370100'),('2020-10-15 17:33:10.604724','2020-10-15 17:33:10.604751',0,'370114','章丘区','370100'),('2020-10-15 17:33:10.655390','2020-10-15 17:33:10.655416',0,'370124','平阴县','370100'),('2020-10-15 17:33:10.704846','2020-10-15 17:33:10.704872',0,'370125','济阳县','370100'),('2020-10-15 17:33:10.738679','2020-10-15 17:33:10.738734',0,'370126','商河县','370100'),('2020-10-15 17:33:10.770876','2020-10-15 17:33:10.770902',0,'370202','市南区','370200'),('2020-10-15 17:33:10.804434','2020-10-15 17:33:10.804459',0,'370203','市北区','370200'),('2020-10-15 17:33:10.837921','2020-10-15 17:33:10.837947',0,'370211','黄岛区','370200'),('2020-10-15 17:33:10.871171','2020-10-15 17:33:10.871197',0,'370212','崂山区','370200'),('2020-10-15 17:33:10.904638','2020-10-15 17:33:10.904663',0,'370213','李沧区','370200'),('2020-10-15 17:33:10.937997','2020-10-15 17:33:10.938021',0,'370214','城阳区','370200'),('2020-10-15 17:33:10.971386','2020-10-15 17:33:10.971411',0,'370215','即墨区','370200'),('2020-10-15 17:33:11.004052','2020-10-15 17:33:11.004078',0,'370281','胶州市','370200'),('2020-10-15 17:33:11.037750','2020-10-15 17:33:11.037776',0,'370283','平度市','370200'),('2020-10-15 17:33:11.090397','2020-10-15 17:33:11.090423',0,'370285','莱西市','370200'),('2020-10-15 17:33:11.121029','2020-10-15 17:33:11.121070',0,'370302','淄川区','370300'),('2020-10-15 17:33:11.156815','2020-10-15 17:33:11.156879',0,'370303','张店区','370300'),('2020-10-15 17:33:11.188106','2020-10-15 17:33:11.188134',0,'370304','博山区','370300'),('2020-10-15 17:33:11.224941','2020-10-15 17:33:11.225003',0,'370305','临淄区','370300'),('2020-10-15 17:33:11.265716','2020-10-15 17:33:11.265907',0,'370306','周村区','370300'),('2020-10-15 17:33:11.297989','2020-10-15 17:33:11.298015',0,'370321','桓台县','370300'),('2020-10-15 17:33:11.331728','2020-10-15 17:33:11.331758',0,'370322','高青县','370300'),('2020-10-15 17:33:11.386194','2020-10-15 17:33:11.386260',0,'370323','沂源县','370300'),('2020-10-15 17:33:11.416337','2020-10-15 17:33:11.416362',0,'370402','市中区','370400'),('2020-10-15 17:33:11.446575','2020-10-15 17:33:11.446605',0,'370403','薛城区','370400'),('2020-10-15 17:33:11.480736','2020-10-15 17:33:11.480782',0,'370404','峄城区','370400'),('2020-10-15 17:33:11.512974','2020-10-15 17:33:11.513006',0,'370405','台儿庄区','370400'),('2020-10-15 17:33:11.546309','2020-10-15 17:33:11.546335',0,'370406','山亭区','370400'),('2020-10-15 17:33:11.579934','2020-10-15 17:33:11.579960',0,'370481','滕州市','370400'),('2020-10-15 17:33:11.615256','2020-10-15 17:33:11.615281',0,'370502','东营区','370500'),('2020-10-15 17:33:11.689204','2020-10-15 17:33:11.689255',0,'370503','河口区','370500'),('2020-10-15 17:33:11.722630','2020-10-15 17:33:11.722679',0,'370505','垦利区','370500'),('2020-10-15 17:33:11.754623','2020-10-15 17:33:11.754649',0,'370522','利津县','370500'),('2020-10-15 17:33:11.789015','2020-10-15 17:33:11.789040',0,'370523','广饶县','370500'),('2020-10-15 17:33:11.822134','2020-10-15 17:33:11.822206',0,'370602','芝罘区','370600'),('2020-10-15 17:33:11.856168','2020-10-15 17:33:11.856196',0,'370611','福山区','370600'),('2020-10-15 17:33:11.887821','2020-10-15 17:33:11.887846',0,'370612','牟平区','370600'),('2020-10-15 17:33:11.922193','2020-10-15 17:33:11.922218',0,'370613','莱山区','370600'),('2020-10-15 17:33:11.955596','2020-10-15 17:33:11.955620',0,'370634','长岛县','370600'),('2020-10-15 17:33:11.987586','2020-10-15 17:33:11.987610',0,'370681','龙口市','370600'),('2020-10-15 17:33:12.020953','2020-10-15 17:33:12.020979',0,'370682','莱阳市','370600'),('2020-10-15 17:33:12.054493','2020-10-15 17:33:12.054519',0,'370683','莱州市','370600'),('2020-10-15 17:33:12.088474','2020-10-15 17:33:12.088499',0,'370684','蓬莱市','370600'),('2020-10-15 17:33:12.123577','2020-10-15 17:33:12.123644',0,'370685','招远市','370600'),('2020-10-15 17:33:12.157884','2020-10-15 17:33:12.157924',0,'370686','栖霞市','370600'),('2020-10-15 17:33:12.183171','2020-10-15 17:33:12.183205',0,'370687','海阳市','370600'),('2020-10-15 17:33:12.217738','2020-10-15 17:33:12.217929',0,'370702','潍城区','370700'),('2020-10-15 17:33:12.263254','2020-10-15 17:33:12.263565',0,'370703','寒亭区','370700'),('2020-10-15 17:33:12.306642','2020-10-15 17:33:12.306727',0,'370704','坊子区','370700'),('2020-10-15 17:33:12.340150','2020-10-15 17:33:12.340244',0,'370705','奎文区','370700'),('2020-10-15 17:33:12.402887','2020-10-15 17:33:12.403080',0,'370724','临朐县','370700'),('2020-10-15 17:33:12.441196','2020-10-15 17:33:12.441263',0,'370725','昌乐县','370700'),('2020-10-15 17:33:12.472581','2020-10-15 17:33:12.472763',0,'370781','青州市','370700'),('2020-10-15 17:33:12.499524','2020-10-15 17:33:12.499564',0,'370782','诸城市','370700'),('2020-10-15 17:33:12.524268','2020-10-15 17:33:12.524323',0,'370783','寿光市','370700'),('2020-10-15 17:33:12.548190','2020-10-15 17:33:12.548215',0,'370784','安丘市','370700'),('2020-10-15 17:33:12.573599','2020-10-15 17:33:12.573623',0,'370785','高密市','370700'),('2020-10-15 17:33:12.607877','2020-10-15 17:33:12.607917',0,'370786','昌邑市','370700'),('2020-10-15 17:33:12.665663','2020-10-15 17:33:12.665867',0,'370811','任城区','370800'),('2020-10-15 17:33:12.692248','2020-10-15 17:33:12.692274',0,'370812','兖州区','370800'),('2020-10-15 17:33:12.714942','2020-10-15 17:33:12.714967',0,'370826','微山县','370800'),('2020-10-15 17:33:12.741052','2020-10-15 17:33:12.741092',0,'370827','鱼台县','370800'),('2020-10-15 17:33:12.764472','2020-10-15 17:33:12.764497',0,'370828','金乡县','370800'),('2020-10-15 17:33:12.790109','2020-10-15 17:33:12.790134',0,'370829','嘉祥县','370800'),('2020-10-15 17:33:12.815606','2020-10-15 17:33:12.815632',0,'370830','汶上县','370800'),('2020-10-15 17:33:12.841301','2020-10-15 17:33:12.841328',0,'370831','泗水县','370800'),('2020-10-15 17:33:12.864526','2020-10-15 17:33:12.864552',0,'370832','梁山县','370800'),('2020-10-15 17:33:12.890108','2020-10-15 17:33:12.890133',0,'370881','曲阜市','370800'),('2020-10-15 17:33:12.914585','2020-10-15 17:33:12.914611',0,'370883','邹城市','370800'),('2020-10-15 17:33:12.939774','2020-10-15 17:33:12.939800',0,'370902','泰山区','370900'),('2020-10-15 17:33:12.967314','2020-10-15 17:33:12.967349',0,'370911','岱岳区','370900'),('2020-10-15 17:33:12.990042','2020-10-15 17:33:12.990069',0,'370921','宁阳县','370900'),('2020-10-15 17:33:13.014435','2020-10-15 17:33:13.014460',0,'370923','东平县','370900'),('2020-10-15 17:33:13.040050','2020-10-15 17:33:13.040084',0,'370982','新泰市','370900'),('2020-10-15 17:33:13.064587','2020-10-15 17:33:13.064613',0,'370983','肥城市','370900'),('2020-10-15 17:33:13.089976','2020-10-15 17:33:13.090013',0,'371002','环翠区','371000'),('2020-10-15 17:33:13.114756','2020-10-15 17:33:13.114784',0,'371003','文登区','371000'),('2020-10-15 17:33:13.139460','2020-10-15 17:33:13.139487',0,'371082','荣成市','371000'),('2020-10-15 17:33:13.182273','2020-10-15 17:33:13.182923',0,'371083','乳山市','371000'),('2020-10-15 17:33:13.230169','2020-10-15 17:33:13.230317',0,'371102','东港区','371100'),('2020-10-15 17:33:13.260566','2020-10-15 17:33:13.261032',0,'371103','岚山区','371100'),('2020-10-15 17:33:13.298056','2020-10-15 17:33:13.298164',0,'371121','五莲县','371100'),('2020-10-15 17:33:13.328161','2020-10-15 17:33:13.328364',0,'371122','莒县','371100'),('2020-10-15 17:33:13.370030','2020-10-15 17:33:13.370345',0,'371202','莱城区','371200'),('2020-10-15 17:33:13.404059','2020-10-15 17:33:13.404183',0,'371203','钢城区','371200'),('2020-10-15 17:33:13.437950','2020-10-15 17:33:13.438090',0,'371302','兰山区','371300'),('2020-10-15 17:33:13.469151','2020-10-15 17:33:13.469332',0,'371311','罗庄区','371300'),('2020-10-15 17:33:13.506472','2020-10-15 17:33:13.506777',0,'371312','河东区','371300'),('2020-10-15 17:33:13.540792','2020-10-15 17:33:13.540884',0,'371321','沂南县','371300'),('2020-10-15 17:33:13.581328','2020-10-15 17:33:13.581499',0,'371322','郯城县','371300'),('2020-10-15 17:33:13.707188','2020-10-15 17:33:13.708546',0,'371323','沂水县','371300'),('2020-10-15 17:33:13.804417','2020-10-15 17:33:13.805288',0,'371324','兰陵县','371300'),('2020-10-15 17:33:13.891973','2020-10-15 17:33:13.892528',0,'371325','费县','371300'),('2020-10-15 17:33:13.947972','2020-10-15 17:33:13.948141',0,'371326','平邑县','371300'),('2020-10-15 17:33:14.010094','2020-10-15 17:33:14.011920',0,'371327','莒南县','371300'),('2020-10-15 17:33:14.066784','2020-10-15 17:33:14.067150',0,'371328','蒙阴县','371300'),('2020-10-15 17:33:14.102676','2020-10-15 17:33:14.102862',0,'371329','临沭县','371300'),('2020-10-15 17:33:14.140452','2020-10-15 17:33:14.140994',0,'371402','德城区','371400'),('2020-10-15 17:33:14.194150','2020-10-15 17:33:14.194422',0,'371403','陵城区','371400'),('2020-10-15 17:33:14.233631','2020-10-15 17:33:14.233945',0,'371422','宁津县','371400'),('2020-10-15 17:33:14.297871','2020-10-15 17:33:14.298213',0,'371423','庆云县','371400'),('2020-10-15 17:33:14.330421','2020-10-15 17:33:14.330667',0,'371424','临邑县','371400'),('2020-10-15 17:33:14.384385','2020-10-15 17:33:14.385049',0,'371425','齐河县','371400'),('2020-10-15 17:33:14.437926','2020-10-15 17:33:14.438952',0,'371426','平原县','371400'),('2020-10-15 17:33:14.473963','2020-10-15 17:33:14.474295',0,'371427','夏津县','371400'),('2020-10-15 17:33:14.544014','2020-10-15 17:33:14.545255',0,'371428','武城县','371400'),('2020-10-15 17:33:14.619446','2020-10-15 17:33:14.620159',0,'371481','乐陵市','371400'),('2020-10-15 17:33:14.688843','2020-10-15 17:33:14.689468',0,'371482','禹城市','371400'),('2020-10-15 17:33:14.735742','2020-10-15 17:33:14.735878',0,'371502','东昌府区','371500'),('2020-10-15 17:33:14.766787','2020-10-15 17:33:14.766834',0,'371521','阳谷县','371500'),('2020-10-15 17:33:14.799552','2020-10-15 17:33:14.799616',0,'371522','莘县','371500'),('2020-10-15 17:33:14.843125','2020-10-15 17:33:14.843385',0,'371523','茌平县','371500'),('2020-10-15 17:33:14.896101','2020-10-15 17:33:14.896635',0,'371524','东阿县','371500'),('2020-10-15 17:33:14.944404','2020-10-15 17:33:14.944893',0,'371525','冠县','371500'),('2020-10-15 17:33:14.981787','2020-10-15 17:33:14.981951',0,'371526','高唐县','371500'),('2020-10-15 17:33:15.014192','2020-10-15 17:33:15.014448',0,'371581','临清市','371500'),('2020-10-15 17:33:15.050766','2020-10-15 17:33:15.051057',0,'371602','滨城区','371600'),('2020-10-15 17:33:15.093935','2020-10-15 17:33:15.094328',0,'371603','沾化区','371600'),('2020-10-15 17:33:15.126665','2020-10-15 17:33:15.126806',0,'371621','惠民县','371600'),('2020-10-15 17:33:15.162061','2020-10-15 17:33:15.162162',0,'371622','阳信县','371600'),('2020-10-15 17:33:15.193309','2020-10-15 17:33:15.193381',0,'371623','无棣县','371600'),('2020-10-15 17:33:15.226069','2020-10-15 17:33:15.226139',0,'371625','博兴县','371600'),('2020-10-15 17:33:15.259669','2020-10-15 17:33:15.259772',0,'371626','邹平县','371600'),('2020-10-15 17:33:15.298616','2020-10-15 17:33:15.298797',0,'371702','牡丹区','371700'),('2020-10-15 17:33:15.336510','2020-10-15 17:33:15.336596',0,'371703','定陶区','371700'),('2020-10-15 17:33:15.476924','2020-10-15 17:33:15.478196',0,'371721','曹县','371700'),('2020-10-15 17:33:15.526077','2020-10-15 17:33:15.526144',0,'371722','单县','371700'),('2020-10-15 17:33:15.634016','2020-10-15 17:33:15.635085',0,'371723','成武县','371700'),('2020-10-15 17:33:15.718139','2020-10-15 17:33:15.718653',0,'371724','巨野县','371700'),('2020-10-15 17:33:15.749180','2020-10-15 17:33:15.749228',0,'371725','郓城县','371700'),('2020-10-15 17:33:15.789610','2020-10-15 17:33:15.789922',0,'371726','鄄城县','371700'),('2020-10-15 17:33:15.816936','2020-10-15 17:33:15.817002',0,'371728','东明县','371700'),('2020-10-15 17:33:15.856325','2020-10-15 17:33:15.856645',0,'410102','中原区','410100'),('2020-10-15 17:33:15.899681','2020-10-15 17:33:15.900003',0,'410103','二七区','410100'),('2020-10-15 17:33:15.937182','2020-10-15 17:33:15.937285',0,'410104','管城回族区','410100'),('2020-10-15 17:33:15.969210','2020-10-15 17:33:15.969283',0,'410105','金水区','410100'),('2020-10-15 17:33:15.999185','2020-10-15 17:33:15.999231',0,'410106','上街区','410100'),('2020-10-15 17:33:16.030984','2020-10-15 17:33:16.031011',0,'410108','惠济区','410100'),('2020-10-15 17:33:16.055652','2020-10-15 17:33:16.055681',0,'410122','中牟县','410100'),('2020-10-15 17:33:16.106100','2020-10-15 17:33:16.106127',0,'410181','巩义市','410100'),('2020-10-15 17:33:16.135846','2020-10-15 17:33:16.135872',0,'410182','荥阳市','410100'),('2020-10-15 17:33:16.167177','2020-10-15 17:33:16.167236',0,'410183','新密市','410100'),('2020-10-15 17:33:16.197098','2020-10-15 17:33:16.197123',0,'410184','新郑市','410100'),('2020-10-15 17:33:16.222582','2020-10-15 17:33:16.222609',0,'410185','登封市','410100'),('2020-10-15 17:33:16.246985','2020-10-15 17:33:16.247010',0,'410202','龙亭区','410200'),('2020-10-15 17:33:16.274280','2020-10-15 17:33:16.274307',0,'410203','顺河回族区','410200'),('2020-10-15 17:33:16.305570','2020-10-15 17:33:16.305595',0,'410204','鼓楼区','410200'),('2020-10-15 17:33:16.330624','2020-10-15 17:33:16.330654',0,'410205','禹王台区','410200'),('2020-10-15 17:33:16.355119','2020-10-15 17:33:16.355144',0,'410212','祥符区','410200'),('2020-10-15 17:33:16.380876','2020-10-15 17:33:16.380903',0,'410221','杞县','410200'),('2020-10-15 17:33:16.405460','2020-10-15 17:33:16.405485',0,'410222','通许县','410200'),('2020-10-15 17:33:16.430028','2020-10-15 17:33:16.430053',0,'410223','尉氏县','410200'),('2020-10-15 17:33:16.455155','2020-10-15 17:33:16.455193',0,'410225','兰考县','410200'),('2020-10-15 17:33:16.480176','2020-10-15 17:33:16.480201',0,'410302','老城区','410300'),('2020-10-15 17:33:16.504992','2020-10-15 17:33:16.505019',0,'410303','西工区','410300'),('2020-10-15 17:33:16.529919','2020-10-15 17:33:16.529944',0,'410304','瀍河回族区','410300'),('2020-10-15 17:33:16.555989','2020-10-15 17:33:16.556014',0,'410305','涧西区','410300'),('2020-10-15 17:33:16.580678','2020-10-15 17:33:16.580732',0,'410306','吉利区','410300'),('2020-10-15 17:33:16.608076','2020-10-15 17:33:16.608113',0,'410311','洛龙区','410300'),('2020-10-15 17:33:16.672209','2020-10-15 17:33:16.672255',0,'410322','孟津县','410300'),('2020-10-15 17:33:16.712683','2020-10-15 17:33:16.713278',0,'410323','新安县','410300'),('2020-10-15 17:33:16.800609','2020-10-15 17:33:16.800964',0,'410324','栾川县','410300'),('2020-10-15 17:33:16.842266','2020-10-15 17:33:16.842335',0,'410325','嵩县','410300'),('2020-10-15 17:33:16.897476','2020-10-15 17:33:16.897603',0,'410326','汝阳县','410300'),('2020-10-15 17:33:16.955463','2020-10-15 17:33:16.955726',0,'410327','宜阳县','410300'),('2020-10-15 17:33:17.019724','2020-10-15 17:33:17.020015',0,'410328','洛宁县','410300'),('2020-10-15 17:33:17.093437','2020-10-15 17:33:17.094268',0,'410329','伊川县','410300'),('2020-10-15 17:33:17.197900','2020-10-15 17:33:17.198471',0,'410381','偃师市','410300'),('2020-10-15 17:33:17.286917','2020-10-15 17:33:17.287412',0,'410402','新华区','410400'),('2020-10-15 17:33:17.346629','2020-10-15 17:33:17.347027',0,'410403','卫东区','410400'),('2020-10-15 17:33:17.425876','2020-10-15 17:33:17.426835',0,'410404','石龙区','410400'),('2020-10-15 17:33:17.490120','2020-10-15 17:33:17.490409',0,'410411','湛河区','410400'),('2020-10-15 17:33:17.826204','2020-10-15 17:33:17.826528',0,'410421','宝丰县','410400'),('2020-10-15 17:33:17.904932','2020-10-15 17:33:17.905973',0,'410422','叶县','410400'),('2020-10-15 17:33:17.971584','2020-10-15 17:33:17.972259',0,'410423','鲁山县','410400'),('2020-10-15 17:33:18.003498','2020-10-15 17:33:18.003527',0,'410425','郏县','410400'),('2020-10-15 17:33:18.031239','2020-10-15 17:33:18.031330',0,'410481','舞钢市','410400'),('2020-10-15 17:33:18.061274','2020-10-15 17:33:18.061300',0,'410482','汝州市','410400'),('2020-10-15 17:33:18.086367','2020-10-15 17:33:18.086393',0,'410502','文峰区','410500'),('2020-10-15 17:33:18.111552','2020-10-15 17:33:18.111577',0,'410503','北关区','410500'),('2020-10-15 17:33:18.136253','2020-10-15 17:33:18.136279',0,'410505','殷都区','410500'),('2020-10-15 17:33:18.161806','2020-10-15 17:33:18.161834',0,'410506','龙安区','410500'),('2020-10-15 17:33:18.194302','2020-10-15 17:33:18.194335',0,'410522','安阳县','410500'),('2020-10-15 17:33:18.219491','2020-10-15 17:33:18.219517',0,'410523','汤阴县','410500'),('2020-10-15 17:33:18.244767','2020-10-15 17:33:18.244792',0,'410526','滑县','410500'),('2020-10-15 17:33:18.270997','2020-10-15 17:33:18.271026',0,'410527','内黄县','410500'),('2020-10-15 17:33:18.294549','2020-10-15 17:33:18.294576',0,'410581','林州市','410500'),('2020-10-15 17:33:18.319920','2020-10-15 17:33:18.319945',0,'410602','鹤山区','410600'),('2020-10-15 17:33:18.378840','2020-10-15 17:33:18.378874',0,'410603','山城区','410600'),('2020-10-15 17:33:18.441436','2020-10-15 17:33:18.441465',0,'410611','淇滨区','410600'),('2020-10-15 17:33:18.480627','2020-10-15 17:33:18.480658',0,'410621','浚县','410600'),('2020-10-15 17:33:18.511853','2020-10-15 17:33:18.511883',0,'410622','淇县','410600'),('2020-10-15 17:33:18.544467','2020-10-15 17:33:18.544492',0,'410702','红旗区','410700'),('2020-10-15 17:33:18.571947','2020-10-15 17:33:18.571972',0,'410703','卫滨区','410700'),('2020-10-15 17:33:18.612063','2020-10-15 17:33:18.612087',0,'410704','凤泉区','410700'),('2020-10-15 17:33:18.657105','2020-10-15 17:33:18.657130',0,'410711','牧野区','410700'),('2020-10-15 17:33:18.694977','2020-10-15 17:33:18.695008',0,'410721','新乡县','410700'),('2020-10-15 17:33:18.719146','2020-10-15 17:33:18.719170',0,'410724','获嘉县','410700'),('2020-10-15 17:33:18.744220','2020-10-15 17:33:18.744245',0,'410725','原阳县','410700'),('2020-10-15 17:33:18.768995','2020-10-15 17:33:18.769020',0,'410726','延津县','410700'),('2020-10-15 17:33:18.794400','2020-10-15 17:33:18.794425',0,'410727','封丘县','410700'),('2020-10-15 17:33:18.819389','2020-10-15 17:33:18.819414',0,'410728','长垣县','410700'),('2020-10-15 17:33:18.973385','2020-10-15 17:33:18.973535',0,'410781','卫辉市','410700'),('2020-10-15 17:33:19.011326','2020-10-15 17:33:19.011353',0,'410782','辉县市','410700'),('2020-10-15 17:33:19.035657','2020-10-15 17:33:19.035683',0,'410802','解放区','410800'),('2020-10-15 17:33:19.060519','2020-10-15 17:33:19.060544',0,'410803','中站区','410800'),('2020-10-15 17:33:19.087934','2020-10-15 17:33:19.087961',0,'410804','马村区','410800'),('2020-10-15 17:33:19.119227','2020-10-15 17:33:19.119253',0,'410811','山阳区','410800'),('2020-10-15 17:33:19.143723','2020-10-15 17:33:19.143751',0,'410821','修武县','410800'),('2020-10-15 17:33:19.169266','2020-10-15 17:33:19.169326',0,'410822','博爱县','410800'),('2020-10-15 17:33:19.193932','2020-10-15 17:33:19.193958',0,'410823','武陟县','410800'),('2020-10-15 17:33:19.219177','2020-10-15 17:33:19.219206',0,'410825','温县','410800'),('2020-10-15 17:33:19.244259','2020-10-15 17:33:19.244286',0,'410882','沁阳市','410800'),('2020-10-15 17:33:19.270475','2020-10-15 17:33:19.270521',0,'410883','孟州市','410800'),('2020-10-15 17:33:19.326484','2020-10-15 17:33:19.326529',0,'410902','华龙区','410900'),('2020-10-15 17:33:19.351792','2020-10-15 17:33:19.351817',0,'410922','清丰县','410900'),('2020-10-15 17:33:19.445940','2020-10-15 17:33:19.446388',0,'410923','南乐县','410900'),('2020-10-15 17:33:19.504340','2020-10-15 17:33:19.504773',0,'410926','范县','410900'),('2020-10-15 17:33:19.536586','2020-10-15 17:33:19.536625',0,'410927','台前县','410900'),('2020-10-15 17:33:19.560455','2020-10-15 17:33:19.560484',0,'410928','濮阳县','410900'),('2020-10-15 17:33:19.585366','2020-10-15 17:33:19.585391',0,'411002','魏都区','411000'),('2020-10-15 17:33:19.610264','2020-10-15 17:33:19.610289',0,'411003','建安区','411000'),('2020-10-15 17:33:19.652773','2020-10-15 17:33:19.652866',0,'411024','鄢陵县','411000'),('2020-10-15 17:33:19.686278','2020-10-15 17:33:19.686311',0,'411025','襄城县','411000'),('2020-10-15 17:33:19.709965','2020-10-15 17:33:19.709990',0,'411081','禹州市','411000'),('2020-10-15 17:33:19.737244','2020-10-15 17:33:19.737270',0,'411082','长葛市','411000'),('2020-10-15 17:33:19.768914','2020-10-15 17:33:19.768941',0,'411102','源汇区','411100'),('2020-10-15 17:33:19.794401','2020-10-15 17:33:19.794427',0,'411103','郾城区','411100'),('2020-10-15 17:33:19.818894','2020-10-15 17:33:19.818923',0,'411104','召陵区','411100'),('2020-10-15 17:33:19.858867','2020-10-15 17:33:19.858893',0,'411121','舞阳县','411100'),('2020-10-15 17:33:19.973669','2020-10-15 17:33:19.973971',0,'411122','临颍县','411100'),('2020-10-15 17:33:20.050909','2020-10-15 17:33:20.051010',0,'411202','湖滨区','411200'),('2020-10-15 17:33:20.230157','2020-10-15 17:33:20.230229',0,'411203','陕州区','411200'),('2020-10-15 17:33:20.260950','2020-10-15 17:33:20.260987',0,'411221','渑池县','411200'),('2020-10-15 17:33:20.285015','2020-10-15 17:33:20.285040',0,'411224','卢氏县','411200'),('2020-10-15 17:33:20.309996','2020-10-15 17:33:20.310021',0,'411281','义马市','411200'),('2020-10-15 17:33:20.334960','2020-10-15 17:33:20.334985',0,'411282','灵宝市','411200'),('2020-10-15 17:33:20.359933','2020-10-15 17:33:20.359958',0,'411302','宛城区','411300'),('2020-10-15 17:33:20.385210','2020-10-15 17:33:20.385246',0,'411303','卧龙区','411300'),('2020-10-15 17:33:20.413345','2020-10-15 17:33:20.413382',0,'411321','南召县','411300'),('2020-10-15 17:33:20.446324','2020-10-15 17:33:20.446363',0,'411322','方城县','411300'),('2020-10-15 17:33:20.495202','2020-10-15 17:33:20.495314',0,'411323','西峡县','411300'),('2020-10-15 17:33:20.529657','2020-10-15 17:33:20.529725',0,'411324','镇平县','411300'),('2020-10-15 17:33:20.560752','2020-10-15 17:33:20.560778',0,'411325','内乡县','411300'),('2020-10-15 17:33:20.584846','2020-10-15 17:33:20.584871',0,'411326','淅川县','411300'),('2020-10-15 17:33:20.609811','2020-10-15 17:33:20.609834',0,'411327','社旗县','411300'),('2020-10-15 17:33:20.642910','2020-10-15 17:33:20.642934',0,'411328','唐河县','411300'),('2020-10-15 17:33:20.684608','2020-10-15 17:33:20.684632',0,'411329','新野县','411300'),('2020-10-15 17:33:20.711236','2020-10-15 17:33:20.711290',0,'411330','桐柏县','411300'),('2020-10-15 17:33:20.743086','2020-10-15 17:33:20.743112',0,'411381','邓州市','411300'),('2020-10-15 17:33:20.768406','2020-10-15 17:33:20.768432',0,'411402','梁园区','411400'),('2020-10-15 17:33:20.793063','2020-10-15 17:33:20.793087',0,'411403','睢阳区','411400'),('2020-10-15 17:33:20.817862','2020-10-15 17:33:20.817887',0,'411421','民权县','411400'),('2020-10-15 17:33:20.843445','2020-10-15 17:33:20.843470',0,'411422','睢县','411400'),('2020-10-15 17:33:20.869614','2020-10-15 17:33:20.869646',0,'411423','宁陵县','411400'),('2020-10-15 17:33:20.903400','2020-10-15 17:33:20.903426',0,'411424','柘城县','411400'),('2020-10-15 17:33:20.938948','2020-10-15 17:33:20.938973',0,'411425','虞城县','411400'),('2020-10-15 17:33:20.975659','2020-10-15 17:33:20.975685',0,'411426','夏邑县','411400'),('2020-10-15 17:33:21.010251','2020-10-15 17:33:21.010282',0,'411481','永城市','411400'),('2020-10-15 17:33:21.034818','2020-10-15 17:33:21.034844',0,'411502','浉河区','411500'),('2020-10-15 17:33:21.059991','2020-10-15 17:33:21.060016',0,'411503','平桥区','411500'),('2020-10-15 17:33:21.184918','2020-10-15 17:33:21.184954',0,'411521','罗山县','411500'),('2020-10-15 17:33:21.218936','2020-10-15 17:33:21.218967',0,'411522','光山县','411500'),('2020-10-15 17:33:21.273508','2020-10-15 17:33:21.273536',0,'411523','新县','411500'),('2020-10-15 17:33:21.323578','2020-10-15 17:33:21.323604',0,'411524','商城县','411500'),('2020-10-15 17:33:21.391229','2020-10-15 17:33:21.391255',0,'411525','固始县','411500'),('2020-10-15 17:33:21.418802','2020-10-15 17:33:21.418828',0,'411526','潢川县','411500'),('2020-10-15 17:33:21.452157','2020-10-15 17:33:21.452183',0,'411527','淮滨县','411500'),('2020-10-15 17:33:21.485287','2020-10-15 17:33:21.485312',0,'411528','息县','411500'),('2020-10-15 17:33:21.511395','2020-10-15 17:33:21.511420',0,'411602','川汇区','411600'),('2020-10-15 17:33:21.544543','2020-10-15 17:33:21.544582',0,'411621','扶沟县','411600'),('2020-10-15 17:33:21.608529','2020-10-15 17:33:21.608578',0,'411622','西华县','411600'),('2020-10-15 17:33:21.764145','2020-10-15 17:33:21.764249',0,'411623','商水县','411600'),('2020-10-15 17:33:21.803672','2020-10-15 17:33:21.803728',0,'411624','沈丘县','411600'),('2020-10-15 17:33:21.887982','2020-10-15 17:33:21.888012',0,'411625','郸城县','411600'),('2020-10-15 17:33:21.916706','2020-10-15 17:33:21.916744',0,'411626','淮阳县','411600'),('2020-10-15 17:33:21.941623','2020-10-15 17:33:21.941650',0,'411627','太康县','411600'),('2020-10-15 17:33:21.967009','2020-10-15 17:33:21.967034',0,'411628','鹿邑县','411600'),('2020-10-15 17:33:21.991778','2020-10-15 17:33:21.991809',0,'411681','项城市','411600'),('2020-10-15 17:33:22.016395','2020-10-15 17:33:22.016421',0,'411702','驿城区','411700'),('2020-10-15 17:33:22.041992','2020-10-15 17:33:22.042021',0,'411721','西平县','411700'),('2020-10-15 17:33:22.066538','2020-10-15 17:33:22.066575',0,'411722','上蔡县','411700'),('2020-10-15 17:33:22.091316','2020-10-15 17:33:22.091341',0,'411723','平舆县','411700'),('2020-10-15 17:33:22.117790','2020-10-15 17:33:22.117826',0,'411724','正阳县','411700'),('2020-10-15 17:33:22.141675','2020-10-15 17:33:22.141729',0,'411725','确山县','411700'),('2020-10-15 17:33:22.168796','2020-10-15 17:33:22.168823',0,'411726','泌阳县','411700'),('2020-10-15 17:33:22.200029','2020-10-15 17:33:22.200056',0,'411727','汝南县','411700'),('2020-10-15 17:33:22.224625','2020-10-15 17:33:22.224652',0,'411728','遂平县','411700'),('2020-10-15 17:33:22.249544','2020-10-15 17:33:22.249568',0,'411729','新蔡县','411700'),('2020-10-15 17:33:22.275421','2020-10-15 17:33:22.275450',0,'420102','江岸区','420100'),('2020-10-15 17:33:22.299930','2020-10-15 17:33:22.299954',0,'420103','江汉区','420100'),('2020-10-15 17:33:22.324840','2020-10-15 17:33:22.324865',0,'420104','硚口区','420100'),('2020-10-15 17:33:22.349557','2020-10-15 17:33:22.349582',0,'420105','汉阳区','420100'),('2020-10-15 17:33:22.378384','2020-10-15 17:33:22.378450',0,'420106','武昌区','420100'),('2020-10-15 17:33:22.408374','2020-10-15 17:33:22.408400',0,'420107','青山区','420100'),('2020-10-15 17:33:22.433075','2020-10-15 17:33:22.433100',0,'420111','洪山区','420100'),('2020-10-15 17:33:22.458014','2020-10-15 17:33:22.458040',0,'420112','东西湖区','420100'),('2020-10-15 17:33:22.483382','2020-10-15 17:33:22.483407',0,'420113','汉南区','420100'),('2020-10-15 17:33:22.508316','2020-10-15 17:33:22.508341',0,'420114','蔡甸区','420100'),('2020-10-15 17:33:22.542110','2020-10-15 17:33:22.542136',0,'420115','江夏区','420100'),('2020-10-15 17:33:22.572043','2020-10-15 17:33:22.572068',0,'420116','黄陂区','420100'),('2020-10-15 17:33:22.611507','2020-10-15 17:33:22.611532',0,'420117','新洲区','420100'),('2020-10-15 17:33:22.664850','2020-10-15 17:33:22.664888',0,'420202','黄石港区','420200'),('2020-10-15 17:33:22.694383','2020-10-15 17:33:22.694413',0,'420203','西塞山区','420200'),('2020-10-15 17:33:22.736682','2020-10-15 17:33:22.736783',0,'420204','下陆区','420200'),('2020-10-15 17:33:22.776608','2020-10-15 17:33:22.776633',0,'420205','铁山区','420200'),('2020-10-15 17:33:22.809344','2020-10-15 17:33:22.809370',0,'420222','阳新县','420200'),('2020-10-15 17:33:22.834445','2020-10-15 17:33:22.834471',0,'420281','大冶市','420200'),('2020-10-15 17:33:22.859609','2020-10-15 17:33:22.859634',0,'420302','茅箭区','420300'),('2020-10-15 17:33:22.885256','2020-10-15 17:33:22.885281',0,'420303','张湾区','420300'),('2020-10-15 17:33:22.938470','2020-10-15 17:33:22.938496',0,'420304','郧阳区','420300'),('2020-10-15 17:33:22.963732','2020-10-15 17:33:22.963758',0,'420322','郧西县','420300'),('2020-10-15 17:33:22.988390','2020-10-15 17:33:22.988415',0,'420323','竹山县','420300'),('2020-10-15 17:33:23.018213','2020-10-15 17:33:23.018240',0,'420324','竹溪县','420300'),('2020-10-15 17:33:23.046580','2020-10-15 17:33:23.046621',0,'420325','房县','420300'),('2020-10-15 17:33:23.076815','2020-10-15 17:33:23.076842',0,'420381','丹江口市','420300'),('2020-10-15 17:33:23.104999','2020-10-15 17:33:23.105024',0,'420502','西陵区','420500'),('2020-10-15 17:33:23.134636','2020-10-15 17:33:23.134662',0,'420503','伍家岗区','420500'),('2020-10-15 17:33:23.159638','2020-10-15 17:33:23.159664',0,'420504','点军区','420500'),('2020-10-15 17:33:23.190217','2020-10-15 17:33:23.190244',0,'420505','猇亭区','420500'),('2020-10-15 17:33:23.218402','2020-10-15 17:33:23.218432',0,'420506','夷陵区','420500'),('2020-10-15 17:33:23.246614','2020-10-15 17:33:23.246639',0,'420525','远安县','420500'),('2020-10-15 17:33:23.276678','2020-10-15 17:33:23.276734',0,'420526','兴山县','420500'),('2020-10-15 17:33:23.335506','2020-10-15 17:33:23.335537',0,'420527','秭归县','420500'),('2020-10-15 17:33:23.363915','2020-10-15 17:33:23.363942',0,'420528','长阳土家族自治县','420500'),('2020-10-15 17:33:23.395050','2020-10-15 17:33:23.395077',0,'420529','五峰土家族自治县','420500'),('2020-10-15 17:33:23.421803','2020-10-15 17:33:23.421829',0,'420581','宜都市','420500'),('2020-10-15 17:33:23.451424','2020-10-15 17:33:23.451449',0,'420582','当阳市','420500'),('2020-10-15 17:33:23.480025','2020-10-15 17:33:23.480050',0,'420583','枝江市','420500'),('2020-10-15 17:33:23.510131','2020-10-15 17:33:23.510157',0,'420602','襄城区','420600'),('2020-10-15 17:33:23.544644','2020-10-15 17:33:23.544680',0,'420606','樊城区','420600'),('2020-10-15 17:33:23.573283','2020-10-15 17:33:23.573334',0,'420607','襄州区','420600'),('2020-10-15 17:33:23.636036','2020-10-15 17:33:23.636069',0,'420624','南漳县','420600'),('2020-10-15 17:33:23.664109','2020-10-15 17:33:23.664134',0,'420625','谷城县','420600'),('2020-10-15 17:33:23.701538','2020-10-15 17:33:23.701563',0,'420626','保康县','420600'),('2020-10-15 17:33:23.735084','2020-10-15 17:33:23.735111',0,'420682','老河口市','420600'),('2020-10-15 17:33:23.788409','2020-10-15 17:33:23.788435',0,'420683','枣阳市','420600'),('2020-10-15 17:33:23.813764','2020-10-15 17:33:23.813790',0,'420684','宜城市','420600'),('2020-10-15 17:33:23.838409','2020-10-15 17:33:23.838434',0,'420702','梁子湖区','420700'),('2020-10-15 17:33:23.863449','2020-10-15 17:33:23.863474',0,'420703','华容区','420700'),('2020-10-15 17:33:23.895270','2020-10-15 17:33:23.895407',0,'420704','鄂城区','420700'),('2020-10-15 17:33:23.921805','2020-10-15 17:33:23.921831',0,'420802','东宝区','420800'),('2020-10-15 17:33:23.950228','2020-10-15 17:33:23.950305',0,'420804','掇刀区','420800'),('2020-10-15 17:33:23.989897','2020-10-15 17:33:23.990147',0,'420821','京山县','420800'),('2020-10-15 17:33:24.013869','2020-10-15 17:33:24.013896',0,'420822','沙洋县','420800'),('2020-10-15 17:33:24.044059','2020-10-15 17:33:24.044088',0,'420881','钟祥市','420800'),('2020-10-15 17:33:24.074163','2020-10-15 17:33:24.074263',0,'420902','孝南区','420900'),('2020-10-15 17:33:24.096791','2020-10-15 17:33:24.096817',0,'420921','孝昌县','420900'),('2020-10-15 17:33:24.123725','2020-10-15 17:33:24.123767',0,'420922','大悟县','420900'),('2020-10-15 17:33:24.146535','2020-10-15 17:33:24.146560',0,'420923','云梦县','420900'),('2020-10-15 17:33:24.171590','2020-10-15 17:33:24.171617',0,'420981','应城市','420900'),('2020-10-15 17:33:24.197275','2020-10-15 17:33:24.197301',0,'420982','安陆市','420900'),('2020-10-15 17:33:24.221851','2020-10-15 17:33:24.221888',0,'420984','汉川市','420900'),('2020-10-15 17:33:24.246588','2020-10-15 17:33:24.246930',0,'421002','沙市区','421000'),('2020-10-15 17:33:24.271729','2020-10-15 17:33:24.271755',0,'421003','荆州区','421000'),('2020-10-15 17:33:24.296663','2020-10-15 17:33:24.296725',0,'421022','公安县','421000'),('2020-10-15 17:33:24.321879','2020-10-15 17:33:24.321904',0,'421023','监利县','421000'),('2020-10-15 17:33:24.396505','2020-10-15 17:33:24.396538',0,'421024','江陵县','421000'),('2020-10-15 17:33:24.421917','2020-10-15 17:33:24.421942',0,'421081','石首市','421000'),('2020-10-15 17:33:24.447501','2020-10-15 17:33:24.447528',0,'421083','洪湖市','421000'),('2020-10-15 17:33:24.471815','2020-10-15 17:33:24.471840',0,'421087','松滋市','421000'),('2020-10-15 17:33:24.496860','2020-10-15 17:33:24.496885',0,'421102','黄州区','421100'),('2020-10-15 17:33:24.521797','2020-10-15 17:33:24.521822',0,'421121','团风县','421100'),('2020-10-15 17:33:24.547061','2020-10-15 17:33:24.547085',0,'421122','红安县','421100'),('2020-10-15 17:33:24.571735','2020-10-15 17:33:24.571761',0,'421123','罗田县','421100'),('2020-10-15 17:33:24.605945','2020-10-15 17:33:24.605970',0,'421124','英山县','421100'),('2020-10-15 17:33:24.652119','2020-10-15 17:33:24.652144',0,'421125','浠水县','421100'),('2020-10-15 17:33:24.750127','2020-10-15 17:33:24.750194',0,'421126','蕲春县','421100'),('2020-10-15 17:33:24.795911','2020-10-15 17:33:24.795936',0,'421127','黄梅县','421100'),('2020-10-15 17:33:24.831806','2020-10-15 17:33:24.831833',0,'421181','麻城市','421100'),('2020-10-15 17:33:24.863525','2020-10-15 17:33:24.863550',0,'421182','武穴市','421100'),('2020-10-15 17:33:24.890679','2020-10-15 17:33:24.890750',0,'421202','咸安区','421200'),('2020-10-15 17:33:24.916482','2020-10-15 17:33:24.916507',0,'421221','嘉鱼县','421200'),('2020-10-15 17:33:24.939777','2020-10-15 17:33:24.939802',0,'421222','通城县','421200'),('2020-10-15 17:33:24.964971','2020-10-15 17:33:24.964997',0,'421223','崇阳县','421200'),('2020-10-15 17:33:24.989984','2020-10-15 17:33:24.990009',0,'421224','通山县','421200'),('2020-10-15 17:33:25.024170','2020-10-15 17:33:25.024198',0,'421281','赤壁市','421200'),('2020-10-15 17:33:25.050723','2020-10-15 17:33:25.050804',0,'421303','曾都区','421300'),('2020-10-15 17:33:25.082840','2020-10-15 17:33:25.082875',0,'421321','随县','421300'),('2020-10-15 17:33:25.115988','2020-10-15 17:33:25.116021',0,'421381','广水市','421300'),('2020-10-15 17:33:25.141638','2020-10-15 17:33:25.141679',0,'422801','恩施市','422800'),('2020-10-15 17:33:25.166298','2020-10-15 17:33:25.166324',0,'422802','利川市','422800'),('2020-10-15 17:33:25.192650','2020-10-15 17:33:25.192791',0,'422822','建始县','422800'),('2020-10-15 17:33:25.225162','2020-10-15 17:33:25.225203',0,'422823','巴东县','422800'),('2020-10-15 17:33:25.249727','2020-10-15 17:33:25.249755',0,'422825','宣恩县','422800'),('2020-10-15 17:33:25.274535','2020-10-15 17:33:25.274560',0,'422826','咸丰县','422800'),('2020-10-15 17:33:25.345626','2020-10-15 17:33:25.346020',0,'422827','来凤县','422800'),('2020-10-15 17:33:25.374728','2020-10-15 17:33:25.374780',0,'422828','鹤峰县','422800'),('2020-10-15 17:33:25.411341','2020-10-15 17:33:25.411402',0,'430102','芙蓉区','430100'),('2020-10-15 17:33:25.441754','2020-10-15 17:33:25.441791',0,'430103','天心区','430100'),('2020-10-15 17:33:25.491843','2020-10-15 17:33:25.491952',0,'430104','岳麓区','430100'),('2020-10-15 17:33:25.524516','2020-10-15 17:33:25.524542',0,'430105','开福区','430100'),('2020-10-15 17:33:25.550065','2020-10-15 17:33:25.550105',0,'430111','雨花区','430100'),('2020-10-15 17:33:25.581562','2020-10-15 17:33:25.581758',0,'430112','望城区','430100'),('2020-10-15 17:33:25.612337','2020-10-15 17:33:25.612393',0,'430121','长沙县','430100'),('2020-10-15 17:33:25.711250','2020-10-15 17:33:25.712030',0,'430181','浏阳市','430100'),('2020-10-15 17:33:25.753178','2020-10-15 17:33:25.753427',0,'430182','宁乡市','430100'),('2020-10-15 17:33:25.790146','2020-10-15 17:33:25.790286',0,'430202','荷塘区','430200'),('2020-10-15 17:33:25.822005','2020-10-15 17:33:25.822109',0,'430203','芦淞区','430200'),('2020-10-15 17:33:25.851237','2020-10-15 17:33:25.851284',0,'430204','石峰区','430200'),('2020-10-15 17:33:25.906794','2020-10-15 17:33:25.907165',0,'430211','天元区','430200'),('2020-10-15 17:33:25.945856','2020-10-15 17:33:25.945930',0,'430221','株洲县','430200'),('2020-10-15 17:33:25.981983','2020-10-15 17:33:25.982196',0,'430223','攸县','430200'),('2020-10-15 17:33:26.014050','2020-10-15 17:33:26.014090',0,'430224','茶陵县','430200'),('2020-10-15 17:33:26.041687','2020-10-15 17:33:26.041756',0,'430225','炎陵县','430200'),('2020-10-15 17:33:26.097182','2020-10-15 17:33:26.097419',0,'430281','醴陵市','430200'),('2020-10-15 17:33:26.154767','2020-10-15 17:33:26.155475',0,'430302','雨湖区','430300'),('2020-10-15 17:33:26.241865','2020-10-15 17:33:26.242547',0,'430304','岳塘区','430300'),('2020-10-15 17:33:26.295651','2020-10-15 17:33:26.296339',0,'430321','湘潭县','430300'),('2020-10-15 17:33:26.368182','2020-10-15 17:33:26.369018',0,'430381','湘乡市','430300'),('2020-10-15 17:33:26.464300','2020-10-15 17:33:26.465078',0,'430382','韶山市','430300'),('2020-10-15 17:33:26.529670','2020-10-15 17:33:26.530413',0,'430405','珠晖区','430400'),('2020-10-15 17:33:26.576816','2020-10-15 17:33:26.577288',0,'430406','雁峰区','430400'),('2020-10-15 17:33:26.613615','2020-10-15 17:33:26.613805',0,'430407','石鼓区','430400'),('2020-10-15 17:33:26.692425','2020-10-15 17:33:26.693429',0,'430408','蒸湘区','430400'),('2020-10-15 17:33:26.764961','2020-10-15 17:33:26.765842',0,'430412','南岳区','430400'),('2020-10-15 17:33:26.810171','2020-10-15 17:33:26.810314',0,'430421','衡阳县','430400'),('2020-10-15 17:33:26.843815','2020-10-15 17:33:26.843870',0,'430422','衡南县','430400'),('2020-10-15 17:33:26.887044','2020-10-15 17:33:26.887287',0,'430423','衡山县','430400'),('2020-10-15 17:33:26.935360','2020-10-15 17:33:26.935430',0,'430424','衡东县','430400'),('2020-10-15 17:33:26.975929','2020-10-15 17:33:26.976133',0,'430426','祁东县','430400'),('2020-10-15 17:33:27.024784','2020-10-15 17:33:27.024868',0,'430481','耒阳市','430400'),('2020-10-15 17:33:27.063486','2020-10-15 17:33:27.063556',0,'430482','常宁市','430400'),('2020-10-15 17:33:27.092921','2020-10-15 17:33:27.092947',0,'430502','双清区','430500'),('2020-10-15 17:33:27.125669','2020-10-15 17:33:27.125723',0,'430503','大祥区','430500'),('2020-10-15 17:33:27.160124','2020-10-15 17:33:27.160150',0,'430511','北塔区','430500'),('2020-10-15 17:33:27.193743','2020-10-15 17:33:27.193774',0,'430521','邵东县','430500'),('2020-10-15 17:33:27.225642','2020-10-15 17:33:27.225675',0,'430522','新邵县','430500'),('2020-10-15 17:33:27.259297','2020-10-15 17:33:27.259323',0,'430523','邵阳县','430500'),('2020-10-15 17:33:27.295888','2020-10-15 17:33:27.295914',0,'430524','隆回县','430500'),('2020-10-15 17:33:27.325681','2020-10-15 17:33:27.325737',0,'430525','洞口县','430500'),('2020-10-15 17:33:27.384564','2020-10-15 17:33:27.384622',0,'430527','绥宁县','430500'),('2020-10-15 17:33:27.417589','2020-10-15 17:33:27.417618',0,'430528','新宁县','430500'),('2020-10-15 17:33:27.450732','2020-10-15 17:33:27.450758',0,'430529','城步苗族自治县','430500'),('2020-10-15 17:33:27.483723','2020-10-15 17:33:27.483752',0,'430581','武冈市','430500'),('2020-10-15 17:33:27.517439','2020-10-15 17:33:27.517465',0,'430602','岳阳楼区','430600'),('2020-10-15 17:33:27.550657','2020-10-15 17:33:27.550682',0,'430603','云溪区','430600'),('2020-10-15 17:33:27.583962','2020-10-15 17:33:27.583989',0,'430611','君山区','430600'),('2020-10-15 17:33:27.614334','2020-10-15 17:33:27.614362',0,'430621','岳阳县','430600'),('2020-10-15 17:33:27.704785','2020-10-15 17:33:27.704906',0,'430623','华容县','430600'),('2020-10-15 17:33:27.734594','2020-10-15 17:33:27.734619',0,'430624','湘阴县','430600'),('2020-10-15 17:33:27.767320','2020-10-15 17:33:27.767347',0,'430626','平江县','430600'),('2020-10-15 17:33:27.800462','2020-10-15 17:33:27.800488',0,'430681','汨罗市','430600'),('2020-10-15 17:33:27.834446','2020-10-15 17:33:27.834472',0,'430682','临湘市','430600'),('2020-10-15 17:33:27.867445','2020-10-15 17:33:27.867470',0,'430702','武陵区','430700'),('2020-10-15 17:33:27.902025','2020-10-15 17:33:27.902056',0,'430703','鼎城区','430700'),('2020-10-15 17:33:27.933935','2020-10-15 17:33:27.933960',0,'430721','安乡县','430700'),('2020-10-15 17:33:27.977905','2020-10-15 17:33:27.978164',0,'430722','汉寿县','430700'),('2020-10-15 17:33:28.016961','2020-10-15 17:33:28.017227',0,'430723','澧县','430700'),('2020-10-15 17:33:28.082521','2020-10-15 17:33:28.082965',0,'430724','临澧县','430700'),('2020-10-15 17:33:28.130674','2020-10-15 17:33:28.131054',0,'430725','桃源县','430700'),('2020-10-15 17:33:28.167713','2020-10-15 17:33:28.168268',0,'430726','石门县','430700'),('2020-10-15 17:33:28.234225','2020-10-15 17:33:28.234661',0,'430781','津市市','430700'),('2020-10-15 17:33:28.302663','2020-10-15 17:33:28.303359',0,'430802','永定区','430800'),('2020-10-15 17:33:28.373785','2020-10-15 17:33:28.374454',0,'430811','武陵源区','430800'),('2020-10-15 17:33:28.421266','2020-10-15 17:33:28.421386',0,'430821','慈利县','430800'),('2020-10-15 17:33:28.461531','2020-10-15 17:33:28.461774',0,'430822','桑植县','430800'),('2020-10-15 17:33:28.502481','2020-10-15 17:33:28.502629',0,'430902','资阳区','430900'),('2020-10-15 17:33:28.539327','2020-10-15 17:33:28.539439',0,'430903','赫山区','430900'),('2020-10-15 17:33:28.570936','2020-10-15 17:33:28.571068',0,'430921','南县','430900'),('2020-10-15 17:33:28.611346','2020-10-15 17:33:28.611457',0,'430922','桃江县','430900'),('2020-10-15 17:33:28.722675','2020-10-15 17:33:28.722916',0,'430923','安化县','430900'),('2020-10-15 17:33:28.756365','2020-10-15 17:33:28.756450',0,'430981','沅江市','430900'),('2020-10-15 17:33:28.788718','2020-10-15 17:33:28.788809',0,'431002','北湖区','431000'),('2020-10-15 17:33:28.855529','2020-10-15 17:33:28.856302',0,'431003','苏仙区','431000'),('2020-10-15 17:33:28.942485','2020-10-15 17:33:28.943470',0,'431021','桂阳县','431000'),('2020-10-15 17:33:29.050148','2020-10-15 17:33:29.050755',0,'431022','宜章县','431000'),('2020-10-15 17:33:29.123154','2020-10-15 17:33:29.124853',0,'431023','永兴县','431000'),('2020-10-15 17:33:29.201244','2020-10-15 17:33:29.202600',0,'431024','嘉禾县','431000'),('2020-10-15 17:33:29.284533','2020-10-15 17:33:29.285052',0,'431025','临武县','431000'),('2020-10-15 17:33:29.343100','2020-10-15 17:33:29.343530',0,'431026','汝城县','431000'),('2020-10-15 17:33:29.381775','2020-10-15 17:33:29.381953',0,'431027','桂东县','431000'),('2020-10-15 17:33:29.420472','2020-10-15 17:33:29.420659',0,'431028','安仁县','431000'),('2020-10-15 17:33:29.451074','2020-10-15 17:33:29.451119',0,'431081','资兴市','431000'),('2020-10-15 17:33:29.484999','2020-10-15 17:33:29.485061',0,'431102','零陵区','431100'),('2020-10-15 17:33:29.546851','2020-10-15 17:33:29.546960',0,'431103','冷水滩区','431100'),('2020-10-15 17:33:29.574204','2020-10-15 17:33:29.574302',0,'431121','祁阳县','431100'),('2020-10-15 17:33:29.631546','2020-10-15 17:33:29.631924',0,'431122','东安县','431100'),('2020-10-15 17:33:29.695662','2020-10-15 17:33:29.696136',0,'431123','双牌县','431100'),('2020-10-15 17:33:29.728050','2020-10-15 17:33:29.728107',0,'431124','道县','431100'),('2020-10-15 17:33:29.758947','2020-10-15 17:33:29.759083',0,'431125','江永县','431100'),('2020-10-15 17:33:29.792629','2020-10-15 17:33:29.792715',0,'431126','宁远县','431100'),('2020-10-15 17:33:29.824387','2020-10-15 17:33:29.824441',0,'431127','蓝山县','431100'),('2020-10-15 17:33:29.858844','2020-10-15 17:33:29.858913',0,'431128','新田县','431100'),('2020-10-15 17:33:29.890979','2020-10-15 17:33:29.891015',0,'431129','江华瑶族自治县','431100'),('2020-10-15 17:33:29.923935','2020-10-15 17:33:29.924011',0,'431202','鹤城区','431200'),('2020-10-15 17:33:29.957402','2020-10-15 17:33:29.957427',0,'431221','中方县','431200'),('2020-10-15 17:33:29.992427','2020-10-15 17:33:29.992458',0,'431222','沅陵县','431200'),('2020-10-15 17:33:30.024097','2020-10-15 17:33:30.024133',0,'431223','辰溪县','431200'),('2020-10-15 17:33:30.057236','2020-10-15 17:33:30.057265',0,'431224','溆浦县','431200'),('2020-10-15 17:33:30.084630','2020-10-15 17:33:30.084669',0,'431225','会同县','431200'),('2020-10-15 17:33:30.116933','2020-10-15 17:33:30.117091',0,'431226','麻阳苗族自治县','431200'),('2020-10-15 17:33:30.148513','2020-10-15 17:33:30.148540',0,'431227','新晃侗族自治县','431200'),('2020-10-15 17:33:30.173556','2020-10-15 17:33:30.173582',0,'431228','芷江侗族自治县','431200'),('2020-10-15 17:33:30.198489','2020-10-15 17:33:30.198513',0,'431229','靖州苗族侗族自治县','431200'),('2020-10-15 17:33:30.223556','2020-10-15 17:33:30.223583',0,'431230','通道侗族自治县','431200'),('2020-10-15 17:33:30.251240','2020-10-15 17:33:30.251265',0,'431281','洪江市','431200'),('2020-10-15 17:33:30.281584','2020-10-15 17:33:30.281609',0,'431302','娄星区','431300'),('2020-10-15 17:33:30.306567','2020-10-15 17:33:30.306593',0,'431321','双峰县','431300'),('2020-10-15 17:33:30.331536','2020-10-15 17:33:30.331562',0,'431322','新化县','431300'),('2020-10-15 17:33:30.384981','2020-10-15 17:33:30.385007',0,'431381','冷水江市','431300'),('2020-10-15 17:33:30.416531','2020-10-15 17:33:30.416562',0,'431382','涟源市','431300'),('2020-10-15 17:33:30.456897','2020-10-15 17:33:30.456923',0,'433101','吉首市','433100'),('2020-10-15 17:33:30.481834','2020-10-15 17:33:30.481859',0,'433122','泸溪县','433100'),('2020-10-15 17:33:30.506573','2020-10-15 17:33:30.506597',0,'433123','凤凰县','433100'),('2020-10-15 17:33:30.531414','2020-10-15 17:33:30.531439',0,'433124','花垣县','433100'),('2020-10-15 17:33:30.556873','2020-10-15 17:33:30.556898',0,'433125','保靖县','433100'),('2020-10-15 17:33:30.582941','2020-10-15 17:33:30.582966',0,'433126','古丈县','433100'),('2020-10-15 17:33:30.676411','2020-10-15 17:33:30.676437',0,'433127','永顺县','433100'),('2020-10-15 17:33:30.711183','2020-10-15 17:33:30.711213',0,'433130','龙山县','433100'),('2020-10-15 17:33:30.739630','2020-10-15 17:33:30.739656',0,'440103','荔湾区','440100'),('2020-10-15 17:33:30.765283','2020-10-15 17:33:30.765308',0,'440104','越秀区','440100'),('2020-10-15 17:33:30.792341','2020-10-15 17:33:30.792367',0,'440105','海珠区','440100'),('2020-10-15 17:33:30.823030','2020-10-15 17:33:30.823055',0,'440106','天河区','440100'),('2020-10-15 17:33:30.848716','2020-10-15 17:33:30.848743',0,'440111','白云区','440100'),('2020-10-15 17:33:30.881883','2020-10-15 17:33:30.881912',0,'440112','黄埔区','440100'),('2020-10-15 17:33:30.910112','2020-10-15 17:33:30.910149',0,'440113','番禺区','440100'),('2020-10-15 17:33:30.939654','2020-10-15 17:33:30.939679',0,'440114','花都区','440100'),('2020-10-15 17:33:30.964958','2020-10-15 17:33:30.964983',0,'440115','南沙区','440100'),('2020-10-15 17:33:30.990620','2020-10-15 17:33:30.990646',0,'440117','从化区','440100'),('2020-10-15 17:33:31.023614','2020-10-15 17:33:31.023646',0,'440118','增城区','440100'),('2020-10-15 17:33:31.050845','2020-10-15 17:33:31.050869',0,'440203','武江区','440200'),('2020-10-15 17:33:31.081755','2020-10-15 17:33:31.081780',0,'440204','浈江区','440200'),('2020-10-15 17:33:31.132009','2020-10-15 17:33:31.132034',0,'440205','曲江区','440200'),('2020-10-15 17:33:31.164621','2020-10-15 17:33:31.164646',0,'440222','始兴县','440200'),('2020-10-15 17:33:31.189990','2020-10-15 17:33:31.190015',0,'440224','仁化县','440200'),('2020-10-15 17:33:31.210844','2020-10-15 17:33:31.210879',0,'440229','翁源县','440200'),('2020-10-15 17:33:31.240466','2020-10-15 17:33:31.240492',0,'440232','乳源瑶族自治县','440200'),('2020-10-15 17:33:31.273333','2020-10-15 17:33:31.273359',0,'440233','新丰县','440200'),('2020-10-15 17:33:31.301106','2020-10-15 17:33:31.301131',0,'440281','乐昌市','440200'),('2020-10-15 17:33:31.325681','2020-10-15 17:33:31.325734',0,'440282','南雄市','440200'),('2020-10-15 17:33:31.350988','2020-10-15 17:33:31.351012',0,'440303','罗湖区','440300'),('2020-10-15 17:33:31.375995','2020-10-15 17:33:31.376020',0,'440304','福田区','440300'),('2020-10-15 17:33:31.400666','2020-10-15 17:33:31.400729',0,'440305','南山区','440300'),('2020-10-15 17:33:31.426071','2020-10-15 17:33:31.426105',0,'440306','宝安区','440300'),('2020-10-15 17:33:31.450927','2020-10-15 17:33:31.450952',0,'440307','龙岗区','440300'),('2020-10-15 17:33:31.475616','2020-10-15 17:33:31.475641',0,'440308','盐田区','440300'),('2020-10-15 17:33:31.500640','2020-10-15 17:33:31.500665',0,'440309','龙华区','440300'),('2020-10-15 17:33:31.526796','2020-10-15 17:33:31.526825',0,'440310','坪山区','440300'),('2020-10-15 17:33:31.554447','2020-10-15 17:33:31.554522',0,'440402','香洲区','440400'),('2020-10-15 17:33:31.577059','2020-10-15 17:33:31.577092',0,'440403','斗门区','440400'),('2020-10-15 17:33:31.608769','2020-10-15 17:33:31.608818',0,'440404','金湾区','440400'),('2020-10-15 17:33:31.637148','2020-10-15 17:33:31.637243',0,'440507','龙湖区','440500'),('2020-10-15 17:33:31.692130','2020-10-15 17:33:31.692316',0,'440511','金平区','440500'),('2020-10-15 17:33:31.726378','2020-10-15 17:33:31.726463',0,'440512','濠江区','440500'),('2020-10-15 17:33:31.762179','2020-10-15 17:33:31.762291',0,'440513','潮阳区','440500'),('2020-10-15 17:33:31.790788','2020-10-15 17:33:31.790828',0,'440514','潮南区','440500'),('2020-10-15 17:33:31.823823','2020-10-15 17:33:31.823993',0,'440515','澄海区','440500'),('2020-10-15 17:33:31.854125','2020-10-15 17:33:31.854167',0,'440523','南澳县','440500'),('2020-10-15 17:33:31.878483','2020-10-15 17:33:31.878516',0,'440604','禅城区','440600'),('2020-10-15 17:33:31.903439','2020-10-15 17:33:31.903586',0,'440605','南海区','440600'),('2020-10-15 17:33:31.928210','2020-10-15 17:33:31.928257',0,'440606','顺德区','440600'),('2020-10-15 17:33:31.968477','2020-10-15 17:33:31.968868',0,'440607','三水区','440600'),('2020-10-15 17:33:32.002612','2020-10-15 17:33:32.002676',0,'440608','高明区','440600'),('2020-10-15 17:33:32.042367','2020-10-15 17:33:32.042528',0,'440703','蓬江区','440700'),('2020-10-15 17:33:32.071669','2020-10-15 17:33:32.071757',0,'440704','江海区','440700'),('2020-10-15 17:33:32.113663','2020-10-15 17:33:32.113901',0,'440705','新会区','440700'),('2020-10-15 17:33:32.160519','2020-10-15 17:33:32.161152',0,'440781','台山市','440700'),('2020-10-15 17:33:32.194326','2020-10-15 17:33:32.194437',0,'440783','开平市','440700'),('2020-10-15 17:33:32.230683','2020-10-15 17:33:32.230796',0,'440784','鹤山市','440700'),('2020-10-15 17:33:32.262821','2020-10-15 17:33:32.262853',0,'440785','恩平市','440700'),('2020-10-15 17:33:32.288206','2020-10-15 17:33:32.288256',0,'440802','赤坎区','440800'),('2020-10-15 17:33:32.311143','2020-10-15 17:33:32.311173',0,'440803','霞山区','440800'),('2020-10-15 17:33:32.342993','2020-10-15 17:33:32.343055',0,'440804','坡头区','440800'),('2020-10-15 17:33:32.379084','2020-10-15 17:33:32.379191',0,'440811','麻章区','440800'),('2020-10-15 17:33:32.417646','2020-10-15 17:33:32.418361',0,'440823','遂溪县','440800'),('2020-10-15 17:33:32.475041','2020-10-15 17:33:32.475356',0,'440825','徐闻县','440800'),('2020-10-15 17:33:32.508493','2020-10-15 17:33:32.508540',0,'440881','廉江市','440800'),('2020-10-15 17:33:32.536124','2020-10-15 17:33:32.536158',0,'440882','雷州市','440800'),('2020-10-15 17:33:32.585190','2020-10-15 17:33:32.585402',0,'440883','吴川市','440800'),('2020-10-15 17:33:32.623238','2020-10-15 17:33:32.623374',0,'440902','茂南区','440900'),('2020-10-15 17:33:32.676183','2020-10-15 17:33:32.676316',0,'440904','电白区','440900'),('2020-10-15 17:33:32.715181','2020-10-15 17:33:32.715646',0,'440981','高州市','440900'),('2020-10-15 17:33:32.747204','2020-10-15 17:33:32.747247',0,'440982','化州市','440900'),('2020-10-15 17:33:32.782974','2020-10-15 17:33:32.783108',0,'440983','信宜市','440900'),('2020-10-15 17:33:32.811226','2020-10-15 17:33:32.811281',0,'441202','端州区','441200'),('2020-10-15 17:33:32.835107','2020-10-15 17:33:32.835134',0,'441203','鼎湖区','441200'),('2020-10-15 17:33:32.859301','2020-10-15 17:33:32.859326',0,'441204','高要区','441200'),('2020-10-15 17:33:32.884546','2020-10-15 17:33:32.884570',0,'441223','广宁县','441200'),('2020-10-15 17:33:32.911823','2020-10-15 17:33:32.911885',0,'441224','怀集县','441200'),('2020-10-15 17:33:32.934127','2020-10-15 17:33:32.934153',0,'441225','封开县','441200'),('2020-10-15 17:33:32.959713','2020-10-15 17:33:32.959743',0,'441226','德庆县','441200'),('2020-10-15 17:33:32.984305','2020-10-15 17:33:32.984330',0,'441284','四会市','441200'),('2020-10-15 17:33:33.008996','2020-10-15 17:33:33.009021',0,'441302','惠城区','441300'),('2020-10-15 17:33:33.034031','2020-10-15 17:33:33.034057',0,'441303','惠阳区','441300'),('2020-10-15 17:33:33.060065','2020-10-15 17:33:33.060094',0,'441322','博罗县','441300'),('2020-10-15 17:33:33.083981','2020-10-15 17:33:33.084007',0,'441323','惠东县','441300'),('2020-10-15 17:33:33.109495','2020-10-15 17:33:33.109520',0,'441324','龙门县','441300'),('2020-10-15 17:33:33.134411','2020-10-15 17:33:33.134436',0,'441402','梅江区','441400'),('2020-10-15 17:33:33.159249','2020-10-15 17:33:33.159273',0,'441403','梅县区','441400'),('2020-10-15 17:33:33.184487','2020-10-15 17:33:33.184512',0,'441422','大埔县','441400'),('2020-10-15 17:33:33.209174','2020-10-15 17:33:33.209212',0,'441423','丰顺县','441400'),('2020-10-15 17:33:33.234327','2020-10-15 17:33:33.234354',0,'441424','五华县','441400'),('2020-10-15 17:33:33.260011','2020-10-15 17:33:33.260057',0,'441426','平远县','441400'),('2020-10-15 17:33:33.284143','2020-10-15 17:33:33.284168',0,'441427','蕉岭县','441400'),('2020-10-15 17:33:33.317589','2020-10-15 17:33:33.317614',0,'441481','兴宁市','441400'),('2020-10-15 17:33:33.373560','2020-10-15 17:33:33.373587',0,'441502','城区','441500'),('2020-10-15 17:33:33.410142','2020-10-15 17:33:33.410174',0,'441521','海丰县','441500'),('2020-10-15 17:33:33.434035','2020-10-15 17:33:33.434062',0,'441523','陆河县','441500'),('2020-10-15 17:33:33.459682','2020-10-15 17:33:33.459736',0,'441581','陆丰市','441500'),('2020-10-15 17:33:33.483922','2020-10-15 17:33:33.483947',0,'441602','源城区','441600'),('2020-10-15 17:33:33.509271','2020-10-15 17:33:33.509296',0,'441621','紫金县','441600'),('2020-10-15 17:33:33.534321','2020-10-15 17:33:33.534389',0,'441622','龙川县','441600'),('2020-10-15 17:33:33.558972','2020-10-15 17:33:33.558997',0,'441623','连平县','441600'),('2020-10-15 17:33:33.586097','2020-10-15 17:33:33.586127',0,'441624','和平县','441600'),('2020-10-15 17:33:33.612161','2020-10-15 17:33:33.612218',0,'441625','东源县','441600'),('2020-10-15 17:33:33.648926','2020-10-15 17:33:33.649012',0,'441702','江城区','441700'),('2020-10-15 17:33:33.738928','2020-10-15 17:33:33.739057',0,'441704','阳东区','441700'),('2020-10-15 17:33:33.787511','2020-10-15 17:33:33.788247',0,'441721','阳西县','441700'),('2020-10-15 17:33:33.826096','2020-10-15 17:33:33.826260',0,'441781','阳春市','441700'),('2020-10-15 17:33:33.857419','2020-10-15 17:33:33.857649',0,'441802','清城区','441800'),('2020-10-15 17:33:33.890779','2020-10-15 17:33:33.890950',0,'441803','清新区','441800'),('2020-10-15 17:33:33.939484','2020-10-15 17:33:33.940125',0,'441821','佛冈县','441800'),('2020-10-15 17:33:34.006202','2020-10-15 17:33:34.006837',0,'441823','阳山县','441800'),('2020-10-15 17:33:34.050197','2020-10-15 17:33:34.050360',0,'441825','连山壮族瑶族自治县','441800'),('2020-10-15 17:33:34.087748','2020-10-15 17:33:34.087985',0,'441826','连南瑶族自治县','441800'),('2020-10-15 17:33:34.131008','2020-10-15 17:33:34.131507',0,'441881','英德市','441800'),('2020-10-15 17:33:34.175825','2020-10-15 17:33:34.176073',0,'441882','连州市','441800'),('2020-10-15 17:33:34.215358','2020-10-15 17:33:34.215787',0,'445102','湘桥区','445100'),('2020-10-15 17:33:34.267044','2020-10-15 17:33:34.267505',0,'445103','潮安区','445100'),('2020-10-15 17:33:34.344625','2020-10-15 17:33:34.345221',0,'445122','饶平县','445100'),('2020-10-15 17:33:34.401547','2020-10-15 17:33:34.401662',0,'445202','榕城区','445200'),('2020-10-15 17:33:34.430932','2020-10-15 17:33:34.430983',0,'445203','揭东区','445200'),('2020-10-15 17:33:34.467226','2020-10-15 17:33:34.467283',0,'445222','揭西县','445200'),('2020-10-15 17:33:34.501236','2020-10-15 17:33:34.501475',0,'445224','惠来县','445200'),('2020-10-15 17:33:34.529653','2020-10-15 17:33:34.529685',0,'445281','普宁市','445200'),('2020-10-15 17:33:34.554959','2020-10-15 17:33:34.555012',0,'445302','云城区','445300'),('2020-10-15 17:33:34.590676','2020-10-15 17:33:34.590852',0,'445303','云安区','445300'),('2020-10-15 17:33:34.620753','2020-10-15 17:33:34.620860',0,'445321','新兴县','445300'),('2020-10-15 17:33:34.679993','2020-10-15 17:33:34.680180',0,'445322','郁南县','445300'),('2020-10-15 17:33:34.720082','2020-10-15 17:33:34.720314',0,'445381','罗定市','445300'),('2020-10-15 17:33:34.742735','2020-10-15 17:33:34.742762',0,'450102','兴宁区','450100'),('2020-10-15 17:33:34.771913','2020-10-15 17:33:34.771955',0,'450103','青秀区','450100'),('2020-10-15 17:33:34.812729','2020-10-15 17:33:34.812965',0,'450105','江南区','450100'),('2020-10-15 17:33:34.843388','2020-10-15 17:33:34.843414',0,'450107','西乡塘区','450100'),('2020-10-15 17:33:34.867970','2020-10-15 17:33:34.867998',0,'450108','良庆区','450100'),('2020-10-15 17:33:34.895287','2020-10-15 17:33:34.895315',0,'450109','邕宁区','450100'),('2020-10-15 17:33:34.920098','2020-10-15 17:33:34.920141',0,'450110','武鸣区','450100'),('2020-10-15 17:33:34.942766','2020-10-15 17:33:34.942791',0,'450123','隆安县','450100'),('2020-10-15 17:33:34.967844','2020-10-15 17:33:34.967901',0,'450124','马山县','450100'),('2020-10-15 17:33:34.992832','2020-10-15 17:33:34.992857',0,'450125','上林县','450100'),('2020-10-15 17:33:35.017672','2020-10-15 17:33:35.017728',0,'450126','宾阳县','450100'),('2020-10-15 17:33:35.044590','2020-10-15 17:33:35.044618',0,'450127','横县','450100'),('2020-10-15 17:33:35.068108','2020-10-15 17:33:35.068135',0,'450202','城中区','450200'),('2020-10-15 17:33:35.092919','2020-10-15 17:33:35.092944',0,'450203','鱼峰区','450200'),('2020-10-15 17:33:35.120446','2020-10-15 17:33:35.120501',0,'450204','柳南区','450200'),('2020-10-15 17:33:35.143548','2020-10-15 17:33:35.143572',0,'450205','柳北区','450200'),('2020-10-15 17:33:35.167819','2020-10-15 17:33:35.167846',0,'450206','柳江区','450200'),('2020-10-15 17:33:35.192654','2020-10-15 17:33:35.192678',0,'450222','柳城县','450200'),('2020-10-15 17:33:35.220165','2020-10-15 17:33:35.220205',0,'450223','鹿寨县','450200'),('2020-10-15 17:33:35.242679','2020-10-15 17:33:35.242733',0,'450224','融安县','450200'),('2020-10-15 17:33:35.268378','2020-10-15 17:33:35.268409',0,'450225','融水苗族自治县','450200'),('2020-10-15 17:33:35.292770','2020-10-15 17:33:35.292795',0,'450226','三江侗族自治县','450200'),('2020-10-15 17:33:35.318020','2020-10-15 17:33:35.318044',0,'450302','秀峰区','450300'),('2020-10-15 17:33:35.343425','2020-10-15 17:33:35.343450',0,'450303','叠彩区','450300'),('2020-10-15 17:33:35.367647','2020-10-15 17:33:35.367672',0,'450304','象山区','450300'),('2020-10-15 17:33:35.393521','2020-10-15 17:33:35.393551',0,'450305','七星区','450300'),('2020-10-15 17:33:35.419568','2020-10-15 17:33:35.419604',0,'450311','雁山区','450300'),('2020-10-15 17:33:35.442722','2020-10-15 17:33:35.442751',0,'450312','临桂区','450300'),('2020-10-15 17:33:35.467739','2020-10-15 17:33:35.467765',0,'450321','阳朔县','450300'),('2020-10-15 17:33:35.492995','2020-10-15 17:33:35.493020',0,'450323','灵川县','450300'),('2020-10-15 17:33:35.517686','2020-10-15 17:33:35.517737',0,'450324','全州县','450300'),('2020-10-15 17:33:35.542917','2020-10-15 17:33:35.542942',0,'450325','兴安县','450300'),('2020-10-15 17:33:35.567902','2020-10-15 17:33:35.567927',0,'450326','永福县','450300'),('2020-10-15 17:33:35.601710','2020-10-15 17:33:35.601741',0,'450327','灌阳县','450300'),('2020-10-15 17:33:35.660739','2020-10-15 17:33:35.660766',0,'450328','龙胜各族自治县','450300'),('2020-10-15 17:33:35.685997','2020-10-15 17:33:35.686030',0,'450329','资源县','450300'),('2020-10-15 17:33:35.729441','2020-10-15 17:33:35.729489',0,'450330','平乐县','450300'),('2020-10-15 17:33:35.751196','2020-10-15 17:33:35.751224',0,'450331','荔浦县','450300'),('2020-10-15 17:33:35.777468','2020-10-15 17:33:35.777493',0,'450332','恭城瑶族自治县','450300'),('2020-10-15 17:33:35.801756','2020-10-15 17:33:35.801795',0,'450403','万秀区','450400'),('2020-10-15 17:33:35.826853','2020-10-15 17:33:35.826879',0,'450405','长洲区','450400'),('2020-10-15 17:33:35.851842','2020-10-15 17:33:35.851879',0,'450406','龙圩区','450400'),('2020-10-15 17:33:35.876912','2020-10-15 17:33:35.876960',0,'450421','苍梧县','450400'),('2020-10-15 17:33:35.902309','2020-10-15 17:33:35.902335',0,'450422','藤县','450400'),('2020-10-15 17:33:35.959866','2020-10-15 17:33:35.959951',0,'450423','蒙山县','450400'),('2020-10-15 17:33:35.993998','2020-10-15 17:33:35.994023',0,'450481','岑溪市','450400'),('2020-10-15 17:33:36.018476','2020-10-15 17:33:36.018503',0,'450502','海城区','450500'),('2020-10-15 17:33:36.044134','2020-10-15 17:33:36.044159',0,'450503','银海区','450500'),('2020-10-15 17:33:36.068060','2020-10-15 17:33:36.068084',0,'450512','铁山港区','450500'),('2020-10-15 17:33:36.101922','2020-10-15 17:33:36.101954',0,'450521','合浦县','450500'),('2020-10-15 17:33:36.168221','2020-10-15 17:33:36.168249',0,'450602','港口区','450600'),('2020-10-15 17:33:36.193187','2020-10-15 17:33:36.193217',0,'450603','防城区','450600'),('2020-10-15 17:33:36.219103','2020-10-15 17:33:36.219141',0,'450621','上思县','450600'),('2020-10-15 17:33:36.242993','2020-10-15 17:33:36.243017',0,'450681','东兴市','450600'),('2020-10-15 17:33:36.268177','2020-10-15 17:33:36.268201',0,'450702','钦南区','450700'),('2020-10-15 17:33:36.292961','2020-10-15 17:33:36.292986',0,'450703','钦北区','450700'),('2020-10-15 17:33:36.317840','2020-10-15 17:33:36.317865',0,'450721','灵山县','450700'),('2020-10-15 17:33:36.376954','2020-10-15 17:33:36.376991',0,'450722','浦北县','450700'),('2020-10-15 17:33:36.419557','2020-10-15 17:33:36.419661',0,'450802','港北区','450800'),('2020-10-15 17:33:36.445006','2020-10-15 17:33:36.445039',0,'450803','港南区','450800'),('2020-10-15 17:33:36.469584','2020-10-15 17:33:36.469611',0,'450804','覃塘区','450800'),('2020-10-15 17:33:36.493827','2020-10-15 17:33:36.493855',0,'450821','平南县','450800'),('2020-10-15 17:33:36.518544','2020-10-15 17:33:36.518569',0,'450881','桂平市','450800'),('2020-10-15 17:33:36.543459','2020-10-15 17:33:36.543490',0,'450902','玉州区','450900'),('2020-10-15 17:33:36.568271','2020-10-15 17:33:36.568320',0,'450903','福绵区','450900'),('2020-10-15 17:33:36.601940','2020-10-15 17:33:36.601964',0,'450921','容县','450900'),('2020-10-15 17:33:36.652093','2020-10-15 17:33:36.652125',0,'450922','陆川县','450900'),('2020-10-15 17:33:36.685821','2020-10-15 17:33:36.685847',0,'450923','博白县','450900'),('2020-10-15 17:33:36.710457','2020-10-15 17:33:36.710481',0,'450924','兴业县','450900'),('2020-10-15 17:33:36.735874','2020-10-15 17:33:36.735900',0,'450981','北流市','450900'),('2020-10-15 17:33:36.762249','2020-10-15 17:33:36.762280',0,'451002','右江区','451000'),('2020-10-15 17:33:36.797221','2020-10-15 17:33:36.797286',0,'451021','田阳县','451000'),('2020-10-15 17:33:36.827269','2020-10-15 17:33:36.827307',0,'451022','田东县','451000'),('2020-10-15 17:33:36.853963','2020-10-15 17:33:36.854028',0,'451023','平果县','451000'),('2020-10-15 17:33:36.887817','2020-10-15 17:33:36.888006',0,'451024','德保县','451000'),('2020-10-15 17:33:36.923062','2020-10-15 17:33:36.923289',0,'451026','那坡县','451000'),('2020-10-15 17:33:36.953171','2020-10-15 17:33:36.953209',0,'451027','凌云县','451000'),('2020-10-15 17:33:36.998054','2020-10-15 17:33:36.998723',0,'451028','乐业县','451000'),('2020-10-15 17:33:37.064371','2020-10-15 17:33:37.065353',0,'451029','田林县','451000'),('2020-10-15 17:33:37.094958','2020-10-15 17:33:37.095002',0,'451030','西林县','451000'),('2020-10-15 17:33:37.118868','2020-10-15 17:33:37.118917',0,'451031','隆林各族自治县','451000'),('2020-10-15 17:33:37.149203','2020-10-15 17:33:37.149236',0,'451081','靖西市','451000'),('2020-10-15 17:33:37.177406','2020-10-15 17:33:37.177441',0,'451102','八步区','451100'),('2020-10-15 17:33:37.201878','2020-10-15 17:33:37.201905',0,'451103','平桂区','451100'),('2020-10-15 17:33:37.231971','2020-10-15 17:33:37.232014',0,'451121','昭平县','451100'),('2020-10-15 17:33:37.265323','2020-10-15 17:33:37.265382',0,'451122','钟山县','451100'),('2020-10-15 17:33:37.302197','2020-10-15 17:33:37.302348',0,'451123','富川瑶族自治县','451100'),('2020-10-15 17:33:37.339182','2020-10-15 17:33:37.339256',0,'451202','金城江区','451200'),('2020-10-15 17:33:37.405095','2020-10-15 17:33:37.406594',0,'451203','宜州区','451200'),('2020-10-15 17:33:37.455503','2020-10-15 17:33:37.455785',0,'451221','南丹县','451200'),('2020-10-15 17:33:37.502601','2020-10-15 17:33:37.502932',0,'451222','天峨县','451200'),('2020-10-15 17:33:37.540374','2020-10-15 17:33:37.540518',0,'451223','凤山县','451200'),('2020-10-15 17:33:37.571787','2020-10-15 17:33:37.571903',0,'451224','东兰县','451200'),('2020-10-15 17:33:37.608253','2020-10-15 17:33:37.608470',0,'451225','罗城仫佬族自治县','451200'),('2020-10-15 17:33:37.690184','2020-10-15 17:33:37.690528',0,'451226','环江毛南族自治县','451200'),('2020-10-15 17:33:37.736825','2020-10-15 17:33:37.736934',0,'451227','巴马瑶族自治县','451200'),('2020-10-15 17:33:37.772275','2020-10-15 17:33:37.772364',0,'451228','都安瑶族自治县','451200'),('2020-10-15 17:33:37.810487','2020-10-15 17:33:37.810810',0,'451229','大化瑶族自治县','451200'),('2020-10-15 17:33:37.854526','2020-10-15 17:33:37.854902',0,'451302','兴宾区','451300'),('2020-10-15 17:33:37.918208','2020-10-15 17:33:37.919438',0,'451321','忻城县','451300'),('2020-10-15 17:33:38.043179','2020-10-15 17:33:38.044819',0,'451322','象州县','451300'),('2020-10-15 17:33:38.188221','2020-10-15 17:33:38.189277',0,'451323','武宣县','451300'),('2020-10-15 17:33:38.266544','2020-10-15 17:33:38.267432',0,'451324','金秀瑶族自治县','451300'),('2020-10-15 17:33:38.308827','2020-10-15 17:33:38.308937',0,'451381','合山市','451300'),('2020-10-15 17:33:38.345925','2020-10-15 17:33:38.346046',0,'451402','江州区','451400'),('2020-10-15 17:33:38.379536','2020-10-15 17:33:38.379614',0,'451421','扶绥县','451400'),('2020-10-15 17:33:38.430537','2020-10-15 17:33:38.432247',0,'451422','宁明县','451400'),('2020-10-15 17:33:38.514186','2020-10-15 17:33:38.515071',0,'451423','龙州县','451400'),('2020-10-15 17:33:38.587319','2020-10-15 17:33:38.587894',0,'451424','大新县','451400'),('2020-10-15 17:33:38.671569','2020-10-15 17:33:38.672213',0,'451425','天等县','451400'),('2020-10-15 17:33:38.727956','2020-10-15 17:33:38.728724',0,'451481','凭祥市','451400'),('2020-10-15 17:33:38.775840','2020-10-15 17:33:38.776161',0,'460105','秀英区','460100'),('2020-10-15 17:33:38.802642','2020-10-15 17:33:38.802680',0,'460106','龙华区','460100'),('2020-10-15 17:33:38.831917','2020-10-15 17:33:38.832085',0,'460107','琼山区','460100'),('2020-10-15 17:33:38.870581','2020-10-15 17:33:38.871051',0,'460108','美兰区','460100'),('2020-10-15 17:33:38.902461','2020-10-15 17:33:38.902507',0,'460202','海棠区','460200'),('2020-10-15 17:33:38.929507','2020-10-15 17:33:38.929558',0,'460203','吉阳区','460200'),('2020-10-15 17:33:38.969058','2020-10-15 17:33:38.969473',0,'460204','天涯区','460200'),('2020-10-15 17:33:39.009545','2020-10-15 17:33:39.009629',0,'460205','崖州区','460200'),('2020-10-15 17:33:39.065955','2020-10-15 17:33:39.066577',0,'500101','万州区','500100'),('2020-10-15 17:33:39.095807','2020-10-15 17:33:39.095844',0,'500102','涪陵区','500100'),('2020-10-15 17:33:39.136462','2020-10-15 17:33:39.136749',0,'500103','渝中区','500100'),('2020-10-15 17:33:39.172227','2020-10-15 17:33:39.172285',0,'500104','大渡口区','500100'),('2020-10-15 17:33:39.201547','2020-10-15 17:33:39.201573',0,'500105','江北区','500100'),('2020-10-15 17:33:39.228578','2020-10-15 17:33:39.228664',0,'500106','沙坪坝区','500100'),('2020-10-15 17:33:39.260158','2020-10-15 17:33:39.260183',0,'500107','九龙坡区','500100'),('2020-10-15 17:33:39.284937','2020-10-15 17:33:39.284963',0,'500108','南岸区','500100'),('2020-10-15 17:33:39.330963','2020-10-15 17:33:39.330990',0,'500109','北碚区','500100'),('2020-10-15 17:33:39.394424','2020-10-15 17:33:39.394459',0,'500110','綦江区','500100'),('2020-10-15 17:33:39.425498','2020-10-15 17:33:39.425853',0,'500111','大足区','500100'),('2020-10-15 17:33:39.451749','2020-10-15 17:33:39.451781',0,'500112','渝北区','500100'),('2020-10-15 17:33:39.476597','2020-10-15 17:33:39.476622',0,'500113','巴南区','500100'),('2020-10-15 17:33:39.502215','2020-10-15 17:33:39.502241',0,'500114','黔江区','500100'),('2020-10-15 17:33:39.527752','2020-10-15 17:33:39.527778',0,'500115','长寿区','500100'),('2020-10-15 17:33:39.551864','2020-10-15 17:33:39.551890',0,'500116','江津区','500100'),('2020-10-15 17:33:39.577139','2020-10-15 17:33:39.577165',0,'500117','合川区','500100'),('2020-10-15 17:33:39.658615','2020-10-15 17:33:39.658657',0,'500118','永川区','500100'),('2020-10-15 17:33:39.696408','2020-10-15 17:33:39.696478',0,'500119','南川区','500100'),('2020-10-15 17:33:39.746234','2020-10-15 17:33:39.746479',0,'500120','璧山区','500100'),('2020-10-15 17:33:39.795272','2020-10-15 17:33:39.795973',0,'500151','铜梁区','500100'),('2020-10-15 17:33:39.830672','2020-10-15 17:33:39.830739',0,'500152','潼南区','500100'),('2020-10-15 17:33:39.861296','2020-10-15 17:33:39.861348',0,'500153','荣昌区','500100'),('2020-10-15 17:33:39.897918','2020-10-15 17:33:39.898230',0,'500154','开州区','500100'),('2020-10-15 17:33:39.930547','2020-10-15 17:33:39.930659',0,'500155','梁平区','500100'),('2020-10-15 17:33:39.970052','2020-10-15 17:33:39.970421',0,'500156','武隆区','500100'),('2020-10-15 17:33:40.012450','2020-10-15 17:33:40.012610',0,'500229','城口县','500100'),('2020-10-15 17:33:40.048144','2020-10-15 17:33:40.048373',0,'500230','丰都县','500100'),('2020-10-15 17:33:40.088514','2020-10-15 17:33:40.088956',0,'500231','垫江县','500100'),('2020-10-15 17:33:40.130779','2020-10-15 17:33:40.131359',0,'500233','忠县','500100'),('2020-10-15 17:33:40.172181','2020-10-15 17:33:40.172523',0,'500235','云阳县','500100'),('2020-10-15 17:33:40.205645','2020-10-15 17:33:40.205780',0,'500236','奉节县','500100'),('2020-10-15 17:33:40.246313','2020-10-15 17:33:40.246413',0,'500237','巫山县','500100'),('2020-10-15 17:33:40.293261','2020-10-15 17:33:40.293638',0,'500238','巫溪县','500100'),('2020-10-15 17:33:40.419315','2020-10-15 17:33:40.419976',0,'500240','石柱土家族自治县','500100'),('2020-10-15 17:33:40.464109','2020-10-15 17:33:40.464483',0,'500241','秀山土家族苗族自治县','500100'),('2020-10-15 17:33:40.503411','2020-10-15 17:33:40.503541',0,'500242','酉阳土家族苗族自治县','500100'),('2020-10-15 17:33:40.547463','2020-10-15 17:33:40.547567',0,'500243','彭水苗族土家族自治县','500100'),('2020-10-15 17:33:40.584424','2020-10-15 17:33:40.584583',0,'510104','锦江区','510100'),('2020-10-15 17:33:40.701336','2020-10-15 17:33:40.701439',0,'510105','青羊区','510100'),('2020-10-15 17:33:40.729350','2020-10-15 17:33:40.729470',0,'510106','金牛区','510100'),('2020-10-15 17:33:40.761138','2020-10-15 17:33:40.761178',0,'510107','武侯区','510100'),('2020-10-15 17:33:40.795193','2020-10-15 17:33:40.795237',0,'510108','成华区','510100'),('2020-10-15 17:33:40.826666','2020-10-15 17:33:40.826715',0,'510112','龙泉驿区','510100'),('2020-10-15 17:33:40.851124','2020-10-15 17:33:40.851149',0,'510113','青白江区','510100'),('2020-10-15 17:33:40.876163','2020-10-15 17:33:40.876189',0,'510114','新都区','510100'),('2020-10-15 17:33:40.901436','2020-10-15 17:33:40.901461',0,'510115','温江区','510100'),('2020-10-15 17:33:40.926208','2020-10-15 17:33:40.926234',0,'510116','双流区','510100'),('2020-10-15 17:33:40.951588','2020-10-15 17:33:40.951617',0,'510117','郫都区','510100'),('2020-10-15 17:33:40.975977','2020-10-15 17:33:40.976001',0,'510121','金堂县','510100'),('2020-10-15 17:33:41.001442','2020-10-15 17:33:41.001468',0,'510129','大邑县','510100'),('2020-10-15 17:33:41.028616','2020-10-15 17:33:41.028836',0,'510131','蒲江县','510100'),('2020-10-15 17:33:41.060106','2020-10-15 17:33:41.060133',0,'510132','新津县','510100'),('2020-10-15 17:33:41.088807','2020-10-15 17:33:41.088943',0,'510181','都江堰市','510100'),('2020-10-15 17:33:41.177031','2020-10-15 17:33:41.177110',0,'510182','彭州市','510100'),('2020-10-15 17:33:41.210012','2020-10-15 17:33:41.210037',0,'510183','邛崃市','510100'),('2020-10-15 17:33:41.237143','2020-10-15 17:33:41.237201',0,'510184','崇州市','510100'),('2020-10-15 17:33:41.267969','2020-10-15 17:33:41.267994',0,'510185','简阳市','510100'),('2020-10-15 17:33:41.292987','2020-10-15 17:33:41.293012',0,'510302','自流井区','510300'),('2020-10-15 17:33:41.327596','2020-10-15 17:33:41.327680',0,'510303','贡井区','510300'),('2020-10-15 17:33:41.359562','2020-10-15 17:33:41.359588',0,'510304','大安区','510300'),('2020-10-15 17:33:41.384898','2020-10-15 17:33:41.384925',0,'510311','沿滩区','510300'),('2020-10-15 17:33:41.409585','2020-10-15 17:33:41.409611',0,'510321','荣县','510300'),('2020-10-15 17:33:41.436882','2020-10-15 17:33:41.436925',0,'510322','富顺县','510300'),('2020-10-15 17:33:41.467862','2020-10-15 17:33:41.467887',0,'510402','东区','510400'),('2020-10-15 17:33:41.492990','2020-10-15 17:33:41.493014',0,'510403','西区','510400'),('2020-10-15 17:33:41.519613','2020-10-15 17:33:41.519638',0,'510411','仁和区','510400'),('2020-10-15 17:33:41.551464','2020-10-15 17:33:41.551489',0,'510421','米易县','510400'),('2020-10-15 17:33:41.576325','2020-10-15 17:33:41.576351',0,'510422','盐边县','510400'),('2020-10-15 17:33:41.609583','2020-10-15 17:33:41.609607',0,'510502','江阳区','510500'),('2020-10-15 17:33:41.669080','2020-10-15 17:33:41.669119',0,'510503','纳溪区','510500'),('2020-10-15 17:33:41.701476','2020-10-15 17:33:41.701500',0,'510504','龙马潭区','510500'),('2020-10-15 17:33:41.726461','2020-10-15 17:33:41.726487',0,'510521','泸县','510500'),('2020-10-15 17:33:41.751283','2020-10-15 17:33:41.751309',0,'510522','合江县','510500'),('2020-10-15 17:33:41.778143','2020-10-15 17:33:41.778170',0,'510524','叙永县','510500'),('2020-10-15 17:33:41.810076','2020-10-15 17:33:41.810102',0,'510525','古蔺县','510500'),('2020-10-15 17:33:41.835605','2020-10-15 17:33:41.835635',0,'510603','旌阳区','510600'),('2020-10-15 17:33:41.868040','2020-10-15 17:33:41.868066',0,'510604','罗江区','510600'),('2020-10-15 17:33:41.893499','2020-10-15 17:33:41.893538',0,'510623','中江县','510600'),('2020-10-15 17:33:41.918843','2020-10-15 17:33:41.918868',0,'510681','广汉市','510600'),('2020-10-15 17:33:41.952020','2020-10-15 17:33:41.952045',0,'510682','什邡市','510600'),('2020-10-15 17:33:41.984814','2020-10-15 17:33:41.984839',0,'510683','绵竹市','510600'),('2020-10-15 17:33:42.009832','2020-10-15 17:33:42.009860',0,'510703','涪城区','510700'),('2020-10-15 17:33:42.034985','2020-10-15 17:33:42.035011',0,'510704','游仙区','510700'),('2020-10-15 17:33:42.059628','2020-10-15 17:33:42.059653',0,'510705','安州区','510700'),('2020-10-15 17:33:42.084740','2020-10-15 17:33:42.084777',0,'510722','三台县','510700'),('2020-10-15 17:33:42.151664','2020-10-15 17:33:42.151757',0,'510723','盐亭县','510700'),('2020-10-15 17:33:42.185606','2020-10-15 17:33:42.185631',0,'510725','梓潼县','510700'),('2020-10-15 17:33:42.218410','2020-10-15 17:33:42.218436',0,'510726','北川羌族自治县','510700'),('2020-10-15 17:33:42.251816','2020-10-15 17:33:42.251846',0,'510727','平武县','510700'),('2020-10-15 17:33:42.276883','2020-10-15 17:33:42.276908',0,'510781','江油市','510700'),('2020-10-15 17:33:42.310200','2020-10-15 17:33:42.310225',0,'510802','利州区','510800'),('2020-10-15 17:33:42.368864','2020-10-15 17:33:42.368890',0,'510811','昭化区','510800'),('2020-10-15 17:33:42.418086','2020-10-15 17:33:42.418114',0,'510812','朝天区','510800'),('2020-10-15 17:33:42.446833','2020-10-15 17:33:42.446859',0,'510821','旺苍县','510800'),('2020-10-15 17:33:42.475945','2020-10-15 17:33:42.475970',0,'510822','青川县','510800'),('2020-10-15 17:33:42.501024','2020-10-15 17:33:42.501049',0,'510823','剑阁县','510800'),('2020-10-15 17:33:42.526044','2020-10-15 17:33:42.526069',0,'510824','苍溪县','510800'),('2020-10-15 17:33:42.551574','2020-10-15 17:33:42.551599',0,'510903','船山区','510900'),('2020-10-15 17:33:42.605180','2020-10-15 17:33:42.605630',0,'510904','安居区','510900'),('2020-10-15 17:33:42.701286','2020-10-15 17:33:42.701977',0,'510921','蓬溪县','510900'),('2020-10-15 17:33:42.738551','2020-10-15 17:33:42.738624',0,'510922','射洪县','510900'),('2020-10-15 17:33:42.767990','2020-10-15 17:33:42.768015',0,'510923','大英县','510900'),('2020-10-15 17:33:42.794089','2020-10-15 17:33:42.794114',0,'511002','市中区','511000'),('2020-10-15 17:33:42.829149','2020-10-15 17:33:42.829179',0,'511011','东兴区','511000'),('2020-10-15 17:33:42.861148','2020-10-15 17:33:42.861179',0,'511024','威远县','511000'),('2020-10-15 17:33:42.894641','2020-10-15 17:33:42.894669',0,'511025','资中县','511000'),('2020-10-15 17:33:42.926829','2020-10-15 17:33:42.926854',0,'511083','隆昌市','511000'),('2020-10-15 17:33:42.962330','2020-10-15 17:33:42.962361',0,'511102','市中区','511100'),('2020-10-15 17:33:42.994016','2020-10-15 17:33:42.994043',0,'511111','沙湾区','511100'),('2020-10-15 17:33:43.026881','2020-10-15 17:33:43.026908',0,'511112','五通桥区','511100'),('2020-10-15 17:33:43.060007','2020-10-15 17:33:43.060038',0,'511113','金口河区','511100'),('2020-10-15 17:33:43.095526','2020-10-15 17:33:43.095565',0,'511123','犍为县','511100'),('2020-10-15 17:33:43.127034','2020-10-15 17:33:43.127077',0,'511124','井研县','511100'),('2020-10-15 17:33:43.160192','2020-10-15 17:33:43.160219',0,'511126','夹江县','511100'),('2020-10-15 17:33:43.193510','2020-10-15 17:33:43.193536',0,'511129','沐川县','511100'),('2020-10-15 17:33:43.226488','2020-10-15 17:33:43.226514',0,'511132','峨边彝族自治县','511100'),('2020-10-15 17:33:43.259913','2020-10-15 17:33:43.259942',0,'511133','马边彝族自治县','511100'),('2020-10-15 17:33:43.292888','2020-10-15 17:33:43.292912',0,'511181','峨眉山市','511100'),('2020-10-15 17:33:43.317921','2020-10-15 17:33:43.317946',0,'511302','顺庆区','511300'),('2020-10-15 17:33:43.353013','2020-10-15 17:33:43.353042',0,'511303','高坪区','511300'),('2020-10-15 17:33:43.384916','2020-10-15 17:33:43.384942',0,'511304','嘉陵区','511300'),('2020-10-15 17:33:43.418240','2020-10-15 17:33:43.418265',0,'511321','南部县','511300'),('2020-10-15 17:33:43.453601','2020-10-15 17:33:43.453640',0,'511322','营山县','511300'),('2020-10-15 17:33:43.485333','2020-10-15 17:33:43.485360',0,'511323','蓬安县','511300'),('2020-10-15 17:33:43.517981','2020-10-15 17:33:43.518006',0,'511324','仪陇县','511300'),('2020-10-15 17:33:43.551737','2020-10-15 17:33:43.551763',0,'511325','西充县','511300'),('2020-10-15 17:33:43.584973','2020-10-15 17:33:43.584999',0,'511381','阆中市','511300'),('2020-10-15 17:33:43.616244','2020-10-15 17:33:43.616287',0,'511402','东坡区','511400'),('2020-10-15 17:33:43.680582','2020-10-15 17:33:43.680618',0,'511403','彭山区','511400'),('2020-10-15 17:33:43.710037','2020-10-15 17:33:43.710062',0,'511421','仁寿县','511400'),('2020-10-15 17:33:43.768570','2020-10-15 17:33:43.768596',0,'511423','洪雅县','511400'),('2020-10-15 17:33:43.801891','2020-10-15 17:33:43.801917',0,'511424','丹棱县','511400'),('2020-10-15 17:33:43.835081','2020-10-15 17:33:43.835106',0,'511425','青神县','511400'),('2020-10-15 17:33:43.868490','2020-10-15 17:33:43.868515',0,'511502','翠屏区','511500'),('2020-10-15 17:33:43.901523','2020-10-15 17:33:43.901548',0,'511503','南溪区','511500'),('2020-10-15 17:33:43.932962','2020-10-15 17:33:43.932993',0,'511521','宜宾县','511500'),('2020-10-15 17:33:43.960945','2020-10-15 17:33:43.960976',0,'511523','江安县','511500'),('2020-10-15 17:33:43.992840','2020-10-15 17:33:43.992868',0,'511524','长宁县','511500'),('2020-10-15 17:33:44.027783','2020-10-15 17:33:44.027819',0,'511525','高县','511500'),('2020-10-15 17:33:44.072345','2020-10-15 17:33:44.074058',0,'511526','珙县','511500'),('2020-10-15 17:33:44.151651','2020-10-15 17:33:44.152318',0,'511527','筠连县','511500'),('2020-10-15 17:33:44.187761','2020-10-15 17:33:44.187848',0,'511528','兴文县','511500'),('2020-10-15 17:33:44.222507','2020-10-15 17:33:44.222630',0,'511529','屏山县','511500'),('2020-10-15 17:33:44.261508','2020-10-15 17:33:44.261713',0,'511602','广安区','511600'),('2020-10-15 17:33:44.293997','2020-10-15 17:33:44.294034',0,'511603','前锋区','511600'),('2020-10-15 17:33:44.337221','2020-10-15 17:33:44.337447',0,'511621','岳池县','511600'),('2020-10-15 17:33:44.411633','2020-10-15 17:33:44.412250',0,'511622','武胜县','511600'),('2020-10-15 17:33:44.447627','2020-10-15 17:33:44.447801',0,'511623','邻水县','511600'),('2020-10-15 17:33:44.488852','2020-10-15 17:33:44.489082',0,'511681','华蓥市','511600'),('2020-10-15 17:33:44.526096','2020-10-15 17:33:44.526462',0,'511702','通川区','511700'),('2020-10-15 17:33:44.576001','2020-10-15 17:33:44.576403',0,'511703','达川区','511700'),('2020-10-15 17:33:44.614521','2020-10-15 17:33:44.614735',0,'511722','宣汉县','511700'),('2020-10-15 17:33:44.651858','2020-10-15 17:33:44.651883',0,'511723','开江县','511700'),('2020-10-15 17:33:44.707339','2020-10-15 17:33:44.707459',0,'511724','大竹县','511700'),('2020-10-15 17:33:44.743315','2020-10-15 17:33:44.743612',0,'511725','渠县','511700'),('2020-10-15 17:33:44.785501','2020-10-15 17:33:44.785922',0,'511781','万源市','511700'),('2020-10-15 17:33:44.818549','2020-10-15 17:33:44.818576',0,'511802','雨城区','511800'),('2020-10-15 17:33:44.852126','2020-10-15 17:33:44.852155',0,'511803','名山区','511800'),('2020-10-15 17:33:44.889835','2020-10-15 17:33:44.889861',0,'511822','荥经县','511800'),('2020-10-15 17:33:44.919021','2020-10-15 17:33:44.919065',0,'511823','汉源县','511800'),('2020-10-15 17:33:44.954326','2020-10-15 17:33:44.954352',0,'511824','石棉县','511800'),('2020-10-15 17:33:44.985065','2020-10-15 17:33:44.985090',0,'511825','天全县','511800'),('2020-10-15 17:33:45.018947','2020-10-15 17:33:45.018975',0,'511826','芦山县','511800'),('2020-10-15 17:33:45.068512','2020-10-15 17:33:45.068538',0,'511827','宝兴县','511800'),('2020-10-15 17:33:45.102197','2020-10-15 17:33:45.102222',0,'511902','巴州区','511900'),('2020-10-15 17:33:45.134972','2020-10-15 17:33:45.134997',0,'511903','恩阳区','511900'),('2020-10-15 17:33:45.168315','2020-10-15 17:33:45.168343',0,'511921','通江县','511900'),('2020-10-15 17:33:45.201641','2020-10-15 17:33:45.201666',0,'511922','南江县','511900'),('2020-10-15 17:33:45.235149','2020-10-15 17:33:45.235177',0,'511923','平昌县','511900'),('2020-10-15 17:33:45.269029','2020-10-15 17:33:45.269054',0,'512002','雁江区','512000'),('2020-10-15 17:33:45.301798','2020-10-15 17:33:45.301826',0,'512021','安岳县','512000'),('2020-10-15 17:33:45.334769','2020-10-15 17:33:45.334794',0,'512022','乐至县','512000'),('2020-10-15 17:33:45.465219','2020-10-15 17:33:45.465260',0,'513201','马尔康市','513200'),('2020-10-15 17:33:45.518654','2020-10-15 17:33:45.518680',0,'513221','汶川县','513200'),('2020-10-15 17:33:45.555420','2020-10-15 17:33:45.555559',0,'513222','理县','513200'),('2020-10-15 17:33:45.607327','2020-10-15 17:33:45.607729',0,'513223','茂县','513200'),('2020-10-15 17:33:45.688646','2020-10-15 17:33:45.689026',0,'513224','松潘县','513200'),('2020-10-15 17:33:45.722441','2020-10-15 17:33:45.722542',0,'513225','九寨沟县','513200'),('2020-10-15 17:33:45.755473','2020-10-15 17:33:45.755502',0,'513226','金川县','513200'),('2020-10-15 17:33:45.806992','2020-10-15 17:33:45.807307',0,'513227','小金县','513200'),('2020-10-15 17:33:45.852570','2020-10-15 17:33:45.852908',0,'513228','黑水县','513200'),('2020-10-15 17:33:45.886058','2020-10-15 17:33:45.886088',0,'513230','壤塘县','513200'),('2020-10-15 17:33:45.920830','2020-10-15 17:33:45.920886',0,'513231','阿坝县','513200'),('2020-10-15 17:33:45.962633','2020-10-15 17:33:45.962813',0,'513232','若尔盖县','513200'),('2020-10-15 17:33:46.000852','2020-10-15 17:33:46.000996',0,'513233','红原县','513200'),('2020-10-15 17:33:46.040152','2020-10-15 17:33:46.040295',0,'513301','康定市','513300'),('2020-10-15 17:33:46.083606','2020-10-15 17:33:46.083850',0,'513322','泸定县','513300'),('2020-10-15 17:33:46.183527','2020-10-15 17:33:46.184045',0,'513323','丹巴县','513300'),('2020-10-15 17:33:46.229840','2020-10-15 17:33:46.229951',0,'513324','九龙县','513300'),('2020-10-15 17:33:46.261780','2020-10-15 17:33:46.261809',0,'513325','雅江县','513300'),('2020-10-15 17:33:46.294102','2020-10-15 17:33:46.294164',0,'513326','道孚县','513300'),('2020-10-15 17:33:46.332867','2020-10-15 17:33:46.333068',0,'513327','炉霍县','513300'),('2020-10-15 17:33:46.368865','2020-10-15 17:33:46.369001',0,'513328','甘孜县','513300'),('2020-10-15 17:33:46.420762','2020-10-15 17:33:46.421047',0,'513329','新龙县','513300'),('2020-10-15 17:33:46.473298','2020-10-15 17:33:46.473349',0,'513330','德格县','513300'),('2020-10-15 17:33:46.503875','2020-10-15 17:33:46.503911',0,'513331','白玉县','513300'),('2020-10-15 17:33:46.554878','2020-10-15 17:33:46.555011',0,'513332','石渠县','513300'),('2020-10-15 17:33:46.584623','2020-10-15 17:33:46.584667',0,'513333','色达县','513300'),('2020-10-15 17:33:46.655396','2020-10-15 17:33:46.655866',0,'513334','理塘县','513300'),('2020-10-15 17:33:46.708743','2020-10-15 17:33:46.708791',0,'513335','巴塘县','513300'),('2020-10-15 17:33:46.753274','2020-10-15 17:33:46.753308',0,'513336','乡城县','513300'),('2020-10-15 17:33:46.788171','2020-10-15 17:33:46.788474',0,'513337','稻城县','513300'),('2020-10-15 17:33:46.818518','2020-10-15 17:33:46.818554',0,'513338','得荣县','513300'),('2020-10-15 17:33:46.851478','2020-10-15 17:33:46.851503',0,'513401','西昌市','513400'),('2020-10-15 17:33:46.884910','2020-10-15 17:33:46.884936',0,'513422','木里藏族自治县','513400'),('2020-10-15 17:33:46.918122','2020-10-15 17:33:46.918147',0,'513423','盐源县','513400'),('2020-10-15 17:33:46.952669','2020-10-15 17:33:46.952754',0,'513424','德昌县','513400'),('2020-10-15 17:33:46.984741','2020-10-15 17:33:46.984767',0,'513425','会理县','513400'),('2020-10-15 17:33:47.018788','2020-10-15 17:33:47.018819',0,'513426','会东县','513400'),('2020-10-15 17:33:47.051121','2020-10-15 17:33:47.051147',0,'513427','宁南县','513400'),('2020-10-15 17:33:47.084747','2020-10-15 17:33:47.084774',0,'513428','普格县','513400'),('2020-10-15 17:33:47.121126','2020-10-15 17:33:47.121154',0,'513429','布拖县','513400'),('2020-10-15 17:33:47.151273','2020-10-15 17:33:47.151298',0,'513430','金阳县','513400'),('2020-10-15 17:33:47.184800','2020-10-15 17:33:47.184829',0,'513431','昭觉县','513400'),('2020-10-15 17:33:47.218821','2020-10-15 17:33:47.218880',0,'513432','喜德县','513400'),('2020-10-15 17:33:47.252119','2020-10-15 17:33:47.252156',0,'513433','冕宁县','513400'),('2020-10-15 17:33:47.284893','2020-10-15 17:33:47.284919',0,'513434','越西县','513400'),('2020-10-15 17:33:47.318082','2020-10-15 17:33:47.318107',0,'513435','甘洛县','513400'),('2020-10-15 17:33:47.351971','2020-10-15 17:33:47.351997',0,'513436','美姑县','513400'),('2020-10-15 17:33:47.390183','2020-10-15 17:33:47.390248',0,'513437','雷波县','513400'),('2020-10-15 17:33:47.419259','2020-10-15 17:33:47.419290',0,'520102','南明区','520100'),('2020-10-15 17:33:47.452443','2020-10-15 17:33:47.452476',0,'520103','云岩区','520100'),('2020-10-15 17:33:47.485557','2020-10-15 17:33:47.485586',0,'520111','花溪区','520100'),('2020-10-15 17:33:47.518982','2020-10-15 17:33:47.519009',0,'520112','乌当区','520100'),('2020-10-15 17:33:47.551610','2020-10-15 17:33:47.551636',0,'520113','白云区','520100'),('2020-10-15 17:33:47.855023','2020-10-15 17:33:47.855102',0,'520115','观山湖区','520100'),('2020-10-15 17:33:48.141560','2020-10-15 17:33:48.141799',0,'520121','开阳县','520100'),('2020-10-15 17:33:48.184820','2020-10-15 17:33:48.184847',0,'520122','息烽县','520100'),('2020-10-15 17:33:48.217990','2020-10-15 17:33:48.218014',0,'520123','修文县','520100'),('2020-10-15 17:33:48.252424','2020-10-15 17:33:48.252473',0,'520181','清镇市','520100'),('2020-10-15 17:33:48.290979','2020-10-15 17:33:48.291171',0,'520201','钟山区','520200'),('2020-10-15 17:33:48.343912','2020-10-15 17:33:48.344300',0,'520203','六枝特区','520200'),('2020-10-15 17:33:48.409198','2020-10-15 17:33:48.409556',0,'520221','水城县','520200'),('2020-10-15 17:33:48.446856','2020-10-15 17:33:48.446899',0,'520281','盘州市','520200'),('2020-10-15 17:33:48.478619','2020-10-15 17:33:48.478651',0,'520302','红花岗区','520300'),('2020-10-15 17:33:48.511603','2020-10-15 17:33:48.511673',0,'520303','汇川区','520300'),('2020-10-15 17:33:48.545533','2020-10-15 17:33:48.545576',0,'520304','播州区','520300'),('2020-10-15 17:33:48.587931','2020-10-15 17:33:48.588331',0,'520322','桐梓县','520300'),('2020-10-15 17:33:48.654354','2020-10-15 17:33:48.654471',0,'520323','绥阳县','520300'),('2020-10-15 17:33:48.699185','2020-10-15 17:33:48.699450',0,'520324','正安县','520300'),('2020-10-15 17:33:48.743906','2020-10-15 17:33:48.744132',0,'520325','道真仡佬族苗族自治县','520300'),('2020-10-15 17:33:48.780288','2020-10-15 17:33:48.780465',0,'520326','务川仡佬族苗族自治县','520300'),('2020-10-15 17:33:48.813523','2020-10-15 17:33:48.813756',0,'520327','凤冈县','520300'),('2020-10-15 17:33:48.852995','2020-10-15 17:33:48.853436',0,'520328','湄潭县','520300'),('2020-10-15 17:33:48.922954','2020-10-15 17:33:48.923512',0,'520329','余庆县','520300'),('2020-10-15 17:33:48.989369','2020-10-15 17:33:48.989922',0,'520330','习水县','520300'),('2020-10-15 17:33:49.037828','2020-10-15 17:33:49.037974',0,'520381','赤水市','520300'),('2020-10-15 17:33:49.079974','2020-10-15 17:33:49.080234',0,'520382','仁怀市','520300'),('2020-10-15 17:33:49.132111','2020-10-15 17:33:49.134397',0,'520402','西秀区','520400'),('2020-10-15 17:33:49.216514','2020-10-15 17:33:49.217341',0,'520403','平坝区','520400'),('2020-10-15 17:33:49.269106','2020-10-15 17:33:49.269435',0,'520422','普定县','520400'),('2020-10-15 17:33:49.300263','2020-10-15 17:33:49.300302',0,'520423','镇宁布依族苗族自治县','520400'),('2020-10-15 17:33:49.335090','2020-10-15 17:33:49.335118',0,'520424','关岭布依族苗族自治县','520400'),('2020-10-15 17:33:49.377081','2020-10-15 17:33:49.377134',0,'520425','紫云苗族布依族自治县','520400'),('2020-10-15 17:33:49.408538','2020-10-15 17:33:49.408567',0,'520502','七星关区','520500'),('2020-10-15 17:33:49.441790','2020-10-15 17:33:49.441820',0,'520521','大方县','520500'),('2020-10-15 17:33:49.475999','2020-10-15 17:33:49.476031',0,'520522','黔西县','520500'),('2020-10-15 17:33:49.508565','2020-10-15 17:33:49.508611',0,'520523','金沙县','520500'),('2020-10-15 17:33:49.568730','2020-10-15 17:33:49.569445',0,'520524','织金县','520500'),('2020-10-15 17:33:49.642201','2020-10-15 17:33:49.642446',0,'520525','纳雍县','520500'),('2020-10-15 17:33:49.707062','2020-10-15 17:33:49.707224',0,'520526','威宁彝族回族苗族自治县','520500'),('2020-10-15 17:33:49.742133','2020-10-15 17:33:49.742177',0,'520527','赫章县','520500'),('2020-10-15 17:33:49.770418','2020-10-15 17:33:49.770451',0,'520602','碧江区','520600'),('2020-10-15 17:33:49.800117','2020-10-15 17:33:49.800156',0,'520603','万山区','520600'),('2020-10-15 17:33:49.833709','2020-10-15 17:33:49.833751',0,'520621','江口县','520600'),('2020-10-15 17:33:49.866754','2020-10-15 17:33:49.866788',0,'520622','玉屏侗族自治县','520600'),('2020-10-15 17:33:49.893031','2020-10-15 17:33:49.893071',0,'520623','石阡县','520600'),('2020-10-15 17:33:49.918578','2020-10-15 17:33:49.918611',0,'520624','思南县','520600'),('2020-10-15 17:33:49.952651','2020-10-15 17:33:49.952792',0,'520625','印江土家族苗族自治县','520600'),('2020-10-15 17:33:49.989409','2020-10-15 17:33:49.989566',0,'520626','德江县','520600'),('2020-10-15 17:33:50.018574','2020-10-15 17:33:50.018639',0,'520627','沿河土家族自治县','520600'),('2020-10-15 17:33:50.058065','2020-10-15 17:33:50.058134',0,'520628','松桃苗族自治县','520600'),('2020-10-15 17:33:50.084891','2020-10-15 17:33:50.084927',0,'522301','兴义市','522300'),('2020-10-15 17:33:50.115950','2020-10-15 17:33:50.116065',0,'522322','兴仁县','522300'),('2020-10-15 17:33:50.173759','2020-10-15 17:33:50.174232',0,'522323','普安县','522300'),('2020-10-15 17:33:50.211097','2020-10-15 17:33:50.211263',0,'522324','晴隆县','522300'),('2020-10-15 17:33:50.237493','2020-10-15 17:33:50.237579',0,'522325','贞丰县','522300'),('2020-10-15 17:33:50.260908','2020-10-15 17:33:50.261053',0,'522326','望谟县','522300'),('2020-10-15 17:33:50.295857','2020-10-15 17:33:50.296184',0,'522327','册亨县','522300'),('2020-10-15 17:33:50.320749','2020-10-15 17:33:50.320806',0,'522328','安龙县','522300'),('2020-10-15 17:33:50.344812','2020-10-15 17:33:50.344845',0,'522601','凯里市','522600'),('2020-10-15 17:33:50.367861','2020-10-15 17:33:50.367888',0,'522622','黄平县','522600'),('2020-10-15 17:33:50.394000','2020-10-15 17:33:50.394032',0,'522623','施秉县','522600'),('2020-10-15 17:33:50.418108','2020-10-15 17:33:50.418140',0,'522624','三穗县','522600'),('2020-10-15 17:33:50.442684','2020-10-15 17:33:50.442744',0,'522625','镇远县','522600'),('2020-10-15 17:33:50.470752','2020-10-15 17:33:50.470835',0,'522626','岑巩县','522600'),('2020-10-15 17:33:50.493741','2020-10-15 17:33:50.493771',0,'522627','天柱县','522600'),('2020-10-15 17:33:50.517997','2020-10-15 17:33:50.518024',0,'522628','锦屏县','522600'),('2020-10-15 17:33:50.543747','2020-10-15 17:33:50.543785',0,'522629','剑河县','522600'),('2020-10-15 17:33:50.575331','2020-10-15 17:33:50.575356',0,'522630','台江县','522600'),('2020-10-15 17:33:50.611456','2020-10-15 17:33:50.611496',0,'522631','黎平县','522600'),('2020-10-15 17:33:50.651006','2020-10-15 17:33:50.651037',0,'522632','榕江县','522600'),('2020-10-15 17:33:50.677329','2020-10-15 17:33:50.677409',0,'522633','从江县','522600'),('2020-10-15 17:33:50.702494','2020-10-15 17:33:50.702519',0,'522634','雷山县','522600'),('2020-10-15 17:33:50.725926','2020-10-15 17:33:50.725951',0,'522635','麻江县','522600'),('2020-10-15 17:33:50.751190','2020-10-15 17:33:50.751215',0,'522636','丹寨县','522600'),('2020-10-15 17:33:50.776920','2020-10-15 17:33:50.776946',0,'522701','都匀市','522700'),('2020-10-15 17:33:50.801169','2020-10-15 17:33:50.801194',0,'522702','福泉市','522700'),('2020-10-15 17:33:50.836426','2020-10-15 17:33:50.836654',0,'522722','荔波县','522700'),('2020-10-15 17:33:50.872661','2020-10-15 17:33:50.872891',0,'522723','贵定县','522700'),('2020-10-15 17:33:50.919504','2020-10-15 17:33:50.919711',0,'522725','瓮安县','522700'),('2020-10-15 17:33:50.961407','2020-10-15 17:33:50.961815',0,'522726','独山县','522700'),('2020-10-15 17:33:51.030367','2020-10-15 17:33:51.031003',0,'522727','平塘县','522700'),('2020-10-15 17:33:51.102156','2020-10-15 17:33:51.103270',0,'522728','罗甸县','522700'),('2020-10-15 17:33:51.197779','2020-10-15 17:33:51.198604',0,'522729','长顺县','522700'),('2020-10-15 17:33:51.262157','2020-10-15 17:33:51.262790',0,'522730','龙里县','522700'),('2020-10-15 17:33:51.320304','2020-10-15 17:33:51.320945',0,'522731','惠水县','522700'),('2020-10-15 17:33:51.420052','2020-10-15 17:33:51.420675',0,'522732','三都水族自治县','522700'),('2020-10-15 17:33:51.455473','2020-10-15 17:33:51.455739',0,'530102','五华区','530100'),('2020-10-15 17:33:51.494294','2020-10-15 17:33:51.494429',0,'530103','盘龙区','530100'),('2020-10-15 17:33:51.521033','2020-10-15 17:33:51.521152',0,'530111','官渡区','530100'),('2020-10-15 17:33:51.545686','2020-10-15 17:33:51.545781',0,'530112','西山区','530100'),('2020-10-15 17:33:51.572590','2020-10-15 17:33:51.572649',0,'530113','东川区','530100'),('2020-10-15 17:33:51.613271','2020-10-15 17:33:51.613379',0,'530114','呈贡区','530100'),('2020-10-15 17:33:51.678180','2020-10-15 17:33:51.678362',0,'530115','晋宁区','530100'),('2020-10-15 17:33:51.706371','2020-10-15 17:33:51.706550',0,'530124','富民县','530100'),('2020-10-15 17:33:51.745741','2020-10-15 17:33:51.745967',0,'530125','宜良县','530100'),('2020-10-15 17:33:51.793020','2020-10-15 17:33:51.793254',0,'530126','石林彝族自治县','530100'),('2020-10-15 17:33:51.819667','2020-10-15 17:33:51.819743',0,'530127','嵩明县','530100'),('2020-10-15 17:33:51.844571','2020-10-15 17:33:51.844625',0,'530128','禄劝彝族苗族自治县','530100'),('2020-10-15 17:33:51.884374','2020-10-15 17:33:51.885000',0,'530129','寻甸回族彝族自治县','530100'),('2020-10-15 17:33:51.931115','2020-10-15 17:33:51.931415',0,'530181','安宁市','530100'),('2020-10-15 17:33:51.969828','2020-10-15 17:33:51.970288',0,'530302','麒麟区','530300'),('2020-10-15 17:33:52.006075','2020-10-15 17:33:52.006248',0,'530303','沾益区','530300'),('2020-10-15 17:33:52.041707','2020-10-15 17:33:52.041816',0,'530321','马龙县','530300'),('2020-10-15 17:33:52.080739','2020-10-15 17:33:52.080968',0,'530322','陆良县','530300'),('2020-10-15 17:33:52.137123','2020-10-15 17:33:52.138023',0,'530323','师宗县','530300'),('2020-10-15 17:33:52.199628','2020-10-15 17:33:52.200590',0,'530324','罗平县','530300'),('2020-10-15 17:33:52.245201','2020-10-15 17:33:52.245529',0,'530325','富源县','530300'),('2020-10-15 17:33:52.289607','2020-10-15 17:33:52.289794',0,'530326','会泽县','530300'),('2020-10-15 17:33:52.322003','2020-10-15 17:33:52.322223',0,'530381','宣威市','530300'),('2020-10-15 17:33:52.345003','2020-10-15 17:33:52.345058',0,'530402','红塔区','530400'),('2020-10-15 17:33:52.368844','2020-10-15 17:33:52.368877',0,'530403','江川区','530400'),('2020-10-15 17:33:52.393870','2020-10-15 17:33:52.393935',0,'530422','澄江县','530400'),('2020-10-15 17:33:52.418349','2020-10-15 17:33:52.418408',0,'530423','通海县','530400'),('2020-10-15 17:33:52.443006','2020-10-15 17:33:52.443038',0,'530424','华宁县','530400'),('2020-10-15 17:33:52.468306','2020-10-15 17:33:52.468427',0,'530425','易门县','530400'),('2020-10-15 17:33:52.492631','2020-10-15 17:33:52.492657',0,'530426','峨山彝族自治县','530400'),('2020-10-15 17:33:52.518462','2020-10-15 17:33:52.518487',0,'530427','新平彝族傣族自治县','530400'),('2020-10-15 17:33:52.542992','2020-10-15 17:33:52.543017',0,'530428','元江哈尼族彝族傣族自治县','530400'),('2020-10-15 17:33:52.567597','2020-10-15 17:33:52.567622',0,'530502','隆阳区','530500'),('2020-10-15 17:33:52.600280','2020-10-15 17:33:52.600305',0,'530521','施甸县','530500'),('2020-10-15 17:33:52.625775','2020-10-15 17:33:52.625801',0,'530523','龙陵县','530500'),('2020-10-15 17:33:52.659605','2020-10-15 17:33:52.659636',0,'530524','昌宁县','530500'),('2020-10-15 17:33:52.692892','2020-10-15 17:33:52.692918',0,'530581','腾冲市','530500'),('2020-10-15 17:33:52.718807','2020-10-15 17:33:52.718832',0,'530602','昭阳区','530600'),('2020-10-15 17:33:52.743052','2020-10-15 17:33:52.743078',0,'530621','鲁甸县','530600'),('2020-10-15 17:33:52.768396','2020-10-15 17:33:52.768422',0,'530622','巧家县','530600'),('2020-10-15 17:33:52.793228','2020-10-15 17:33:52.793252',0,'530623','盐津县','530600'),('2020-10-15 17:33:52.817659','2020-10-15 17:33:52.817684',0,'530624','大关县','530600'),('2020-10-15 17:33:52.842052','2020-10-15 17:33:52.842078',0,'530625','永善县','530600'),('2020-10-15 17:33:52.867433','2020-10-15 17:33:52.867458',0,'530626','绥江县','530600'),('2020-10-15 17:33:52.893091','2020-10-15 17:33:52.893120',0,'530627','镇雄县','530600'),('2020-10-15 17:33:52.921237','2020-10-15 17:33:52.921294',0,'530628','彝良县','530600'),('2020-10-15 17:33:52.944038','2020-10-15 17:33:52.944174',0,'530629','威信县','530600'),('2020-10-15 17:33:52.967771','2020-10-15 17:33:52.967795',0,'530630','水富县','530600'),('2020-10-15 17:33:52.992564','2020-10-15 17:33:52.992589',0,'530702','古城区','530700'),('2020-10-15 17:33:53.017581','2020-10-15 17:33:53.017607',0,'530721','玉龙纳西族自治县','530700'),('2020-10-15 17:33:53.042226','2020-10-15 17:33:53.042251',0,'530722','永胜县','530700'),('2020-10-15 17:33:53.067676','2020-10-15 17:33:53.067733',0,'530723','华坪县','530700'),('2020-10-15 17:33:53.092884','2020-10-15 17:33:53.092915',0,'530724','宁蒗彝族自治县','530700'),('2020-10-15 17:33:53.117560','2020-10-15 17:33:53.117585',0,'530802','思茅区','530800'),('2020-10-15 17:33:53.142793','2020-10-15 17:33:53.142818',0,'530821','宁洱哈尼族彝族自治县','530800'),('2020-10-15 17:33:53.167314','2020-10-15 17:33:53.167338',0,'530822','墨江哈尼族自治县','530800'),('2020-10-15 17:33:53.192972','2020-10-15 17:33:53.192998',0,'530823','景东彝族自治县','530800'),('2020-10-15 17:33:53.218087','2020-10-15 17:33:53.218116',0,'530824','景谷傣族彝族自治县','530800'),('2020-10-15 17:33:53.242498','2020-10-15 17:33:53.242523',0,'530825','镇沅彝族哈尼族拉祜族自治县','530800'),('2020-10-15 17:33:53.267185','2020-10-15 17:33:53.267214',0,'530826','江城哈尼族彝族自治县','530800'),('2020-10-15 17:33:53.292479','2020-10-15 17:33:53.292506',0,'530827','孟连傣族拉祜族佤族自治县','530800'),('2020-10-15 17:33:53.317485','2020-10-15 17:33:53.317511',0,'530828','澜沧拉祜族自治县','530800'),('2020-10-15 17:33:53.342905','2020-10-15 17:33:53.342982',0,'530829','西盟佤族自治县','530800'),('2020-10-15 17:33:53.367461','2020-10-15 17:33:53.367485',0,'530902','临翔区','530900'),('2020-10-15 17:33:53.392528','2020-10-15 17:33:53.392554',0,'530921','凤庆县','530900'),('2020-10-15 17:33:53.418176','2020-10-15 17:33:53.418201',0,'530922','云县','530900'),('2020-10-15 17:33:53.442406','2020-10-15 17:33:53.442431',0,'530923','永德县','530900'),('2020-10-15 17:33:53.467422','2020-10-15 17:33:53.467447',0,'530924','镇康县','530900'),('2020-10-15 17:33:53.493142','2020-10-15 17:33:53.493169',0,'530925','双江拉祜族佤族布朗族傣族自治县','530900'),('2020-10-15 17:33:53.518279','2020-10-15 17:33:53.518305',0,'530926','耿马傣族佤族自治县','530900'),('2020-10-15 17:33:53.542244','2020-10-15 17:33:53.542269',0,'530927','沧源佤族自治县','530900'),('2020-10-15 17:33:53.567276','2020-10-15 17:33:53.567301',0,'532301','楚雄市','532300'),('2020-10-15 17:33:53.599844','2020-10-15 17:33:53.599869',0,'532322','双柏县','532300'),('2020-10-15 17:33:53.649495','2020-10-15 17:33:53.649521',0,'532323','牟定县','532300'),('2020-10-15 17:33:53.676062','2020-10-15 17:33:53.676109',0,'532324','南华县','532300'),('2020-10-15 17:33:53.701660','2020-10-15 17:33:53.701686',0,'532325','姚安县','532300'),('2020-10-15 17:33:53.725767','2020-10-15 17:33:53.725792',0,'532326','大姚县','532300'),('2020-10-15 17:33:53.751384','2020-10-15 17:33:53.751409',0,'532327','永仁县','532300'),('2020-10-15 17:33:53.777092','2020-10-15 17:33:53.777138',0,'532328','元谋县','532300'),('2020-10-15 17:33:53.816168','2020-10-15 17:33:53.816194',0,'532329','武定县','532300'),('2020-10-15 17:33:53.842805','2020-10-15 17:33:53.842831',0,'532331','禄丰县','532300'),('2020-10-15 17:33:53.867804','2020-10-15 17:33:53.867829',0,'532501','个旧市','532500'),('2020-10-15 17:33:53.894560','2020-10-15 17:33:53.894601',0,'532502','开远市','532500'),('2020-10-15 17:33:53.917763','2020-10-15 17:33:53.917789',0,'532503','蒙自市','532500'),('2020-10-15 17:33:53.942508','2020-10-15 17:33:53.942532',0,'532504','弥勒市','532500'),('2020-10-15 17:33:53.968969','2020-10-15 17:33:53.969009',0,'532523','屏边苗族自治县','532500'),('2020-10-15 17:33:53.993951','2020-10-15 17:33:53.994025',0,'532524','建水县','532500'),('2020-10-15 17:33:54.018248','2020-10-15 17:33:54.018276',0,'532525','石屏县','532500'),('2020-10-15 17:33:54.043127','2020-10-15 17:33:54.043156',0,'532527','泸西县','532500'),('2020-10-15 17:33:54.068249','2020-10-15 17:33:54.068275',0,'532528','元阳县','532500'),('2020-10-15 17:33:54.092836','2020-10-15 17:33:54.092862',0,'532529','红河县','532500'),('2020-10-15 17:33:54.117555','2020-10-15 17:33:54.117580',0,'532530','金平苗族瑶族傣族自治县','532500'),('2020-10-15 17:33:54.142517','2020-10-15 17:33:54.142542',0,'532531','绿春县','532500'),('2020-10-15 17:33:54.176125','2020-10-15 17:33:54.176175',0,'532532','河口瑶族自治县','532500'),('2020-10-15 17:33:54.200818','2020-10-15 17:33:54.200843',0,'532601','文山市','532600'),('2020-10-15 17:33:54.226440','2020-10-15 17:33:54.226466',0,'532622','砚山县','532600'),('2020-10-15 17:33:54.267643','2020-10-15 17:33:54.267669',0,'532623','西畴县','532600'),('2020-10-15 17:33:54.301230','2020-10-15 17:33:54.301257',0,'532624','麻栗坡县','532600'),('2020-10-15 17:33:54.326409','2020-10-15 17:33:54.326436',0,'532625','马关县','532600'),('2020-10-15 17:33:54.427120','2020-10-15 17:33:54.427150',0,'532626','丘北县','532600'),('2020-10-15 17:33:54.451074','2020-10-15 17:33:54.451098',0,'532627','广南县','532600'),('2020-10-15 17:33:54.477909','2020-10-15 17:33:54.477983',0,'532628','富宁县','532600'),('2020-10-15 17:33:54.502272','2020-10-15 17:33:54.502299',0,'532801','景洪市','532800'),('2020-10-15 17:33:54.527157','2020-10-15 17:33:54.527183',0,'532822','勐海县','532800'),('2020-10-15 17:33:54.551523','2020-10-15 17:33:54.551548',0,'532823','勐腊县','532800'),('2020-10-15 17:33:54.576474','2020-10-15 17:33:54.576499',0,'532901','大理市','532900'),('2020-10-15 17:33:54.618387','2020-10-15 17:33:54.618424',0,'532922','漾濞彝族自治县','532900'),('2020-10-15 17:33:54.661683','2020-10-15 17:33:54.661820',0,'532923','祥云县','532900'),('2020-10-15 17:33:54.687005','2020-10-15 17:33:54.687043',0,'532924','宾川县','532900'),('2020-10-15 17:33:54.723266','2020-10-15 17:33:54.723363',0,'532925','弥渡县','532900'),('2020-10-15 17:33:54.756092','2020-10-15 17:33:54.756543',0,'532926','南涧彝族自治县','532900'),('2020-10-15 17:33:54.795477','2020-10-15 17:33:54.795935',0,'532927','巍山彝族回族自治县','532900'),('2020-10-15 17:33:54.827296','2020-10-15 17:33:54.827323',0,'532928','永平县','532900'),('2020-10-15 17:33:54.851284','2020-10-15 17:33:54.851308',0,'532929','云龙县','532900'),('2020-10-15 17:33:54.876533','2020-10-15 17:33:54.876561',0,'532930','洱源县','532900'),('2020-10-15 17:33:54.902065','2020-10-15 17:33:54.902092',0,'532931','剑川县','532900'),('2020-10-15 17:33:54.927491','2020-10-15 17:33:54.927596',0,'532932','鹤庆县','532900'),('2020-10-15 17:33:54.961606','2020-10-15 17:33:54.961657',0,'533102','瑞丽市','533100'),('2020-10-15 17:33:54.993358','2020-10-15 17:33:54.993432',0,'533103','芒市','533100'),('2020-10-15 17:33:55.017857','2020-10-15 17:33:55.017886',0,'533122','梁河县','533100'),('2020-10-15 17:33:55.043189','2020-10-15 17:33:55.043214',0,'533123','盈江县','533100'),('2020-10-15 17:33:55.068673','2020-10-15 17:33:55.068730',0,'533124','陇川县','533100'),('2020-10-15 17:33:55.092728','2020-10-15 17:33:55.092756',0,'533301','泸水市','533300'),('2020-10-15 17:33:55.117651','2020-10-15 17:33:55.117676',0,'533323','福贡县','533300'),('2020-10-15 17:33:55.142891','2020-10-15 17:33:55.142916',0,'533324','贡山独龙族怒族自治县','533300'),('2020-10-15 17:33:55.167944','2020-10-15 17:33:55.167970',0,'533325','兰坪白族普米族自治县','533300'),('2020-10-15 17:33:55.193212','2020-10-15 17:33:55.193237',0,'533401','香格里拉市','533400'),('2020-10-15 17:33:55.219380','2020-10-15 17:33:55.219407',0,'533422','德钦县','533400'),('2020-10-15 17:33:55.242922','2020-10-15 17:33:55.242948',0,'533423','维西傈僳族自治县','533400'),('2020-10-15 17:33:55.268004','2020-10-15 17:33:55.268030',0,'540102','城关区','540100'),('2020-10-15 17:33:55.293185','2020-10-15 17:33:55.293209',0,'540103','堆龙德庆区','540100'),('2020-10-15 17:33:55.317659','2020-10-15 17:33:55.317685',0,'540104','达孜区','540100'),('2020-10-15 17:33:55.343128','2020-10-15 17:33:55.343155',0,'540121','林周县','540100'),('2020-10-15 17:33:55.368301','2020-10-15 17:33:55.368326',0,'540122','当雄县','540100'),('2020-10-15 17:33:55.393131','2020-10-15 17:33:55.393157',0,'540123','尼木县','540100'),('2020-10-15 17:33:55.418002','2020-10-15 17:33:55.418027',0,'540124','曲水县','540100'),('2020-10-15 17:33:55.442726','2020-10-15 17:33:55.442752',0,'540127','墨竹工卡县','540100'),('2020-10-15 17:33:55.468294','2020-10-15 17:33:55.468319',0,'540202','桑珠孜区','540200'),('2020-10-15 17:33:55.492957','2020-10-15 17:33:55.492983',0,'540221','南木林县','540200'),('2020-10-15 17:33:55.518464','2020-10-15 17:33:55.518490',0,'540222','江孜县','540200'),('2020-10-15 17:33:55.543309','2020-10-15 17:33:55.543335',0,'540223','定日县','540200'),('2020-10-15 17:33:55.568323','2020-10-15 17:33:55.568347',0,'540224','萨迦县','540200'),('2020-10-15 17:33:55.600163','2020-10-15 17:33:55.600189',0,'540225','拉孜县','540200'),('2020-10-15 17:33:55.651008','2020-10-15 17:33:55.651034',0,'540226','昂仁县','540200'),('2020-10-15 17:33:55.692029','2020-10-15 17:33:55.692055',0,'540227','谢通门县','540200'),('2020-10-15 17:33:55.718160','2020-10-15 17:33:55.718200',0,'540228','白朗县','540200'),('2020-10-15 17:33:55.742977','2020-10-15 17:33:55.743002',0,'540229','仁布县','540200'),('2020-10-15 17:33:55.767788','2020-10-15 17:33:55.767813',0,'540230','康马县','540200'),('2020-10-15 17:33:55.793484','2020-10-15 17:33:55.793510',0,'540231','定结县','540200'),('2020-10-15 17:33:55.818196','2020-10-15 17:33:55.818221',0,'540232','仲巴县','540200'),('2020-10-15 17:33:55.851144','2020-10-15 17:33:55.851170',0,'540233','亚东县','540200'),('2020-10-15 17:33:55.876004','2020-10-15 17:33:55.876030',0,'540234','吉隆县','540200'),('2020-10-15 17:33:55.901976','2020-10-15 17:33:55.902000',0,'540235','聂拉木县','540200'),('2020-10-15 17:33:55.926619','2020-10-15 17:33:55.926645',0,'540236','萨嘎县','540200'),('2020-10-15 17:33:55.951330','2020-10-15 17:33:55.951364',0,'540237','岗巴县','540200'),('2020-10-15 17:33:55.976513','2020-10-15 17:33:55.976541',0,'540302','卡若区','540300'),('2020-10-15 17:33:56.001448','2020-10-15 17:33:56.001475',0,'540321','江达县','540300'),('2020-10-15 17:33:56.026244','2020-10-15 17:33:56.026270',0,'540322','贡觉县','540300'),('2020-10-15 17:33:56.051564','2020-10-15 17:33:56.051590',0,'540323','类乌齐县','540300'),('2020-10-15 17:33:56.076111','2020-10-15 17:33:56.076136',0,'540324','丁青县','540300'),('2020-10-15 17:33:56.101504','2020-10-15 17:33:56.101530',0,'540325','察雅县','540300'),('2020-10-15 17:33:56.204547','2020-10-15 17:33:56.204580',0,'540326','八宿县','540300'),('2020-10-15 17:33:56.235168','2020-10-15 17:33:56.235193',0,'540327','左贡县','540300'),('2020-10-15 17:33:56.268107','2020-10-15 17:33:56.268132',0,'540328','芒康县','540300'),('2020-10-15 17:33:56.300970','2020-10-15 17:33:56.300996',0,'540329','洛隆县','540300'),('2020-10-15 17:33:56.326606','2020-10-15 17:33:56.326632',0,'540330','边坝县','540300'),('2020-10-15 17:33:56.353310','2020-10-15 17:33:56.353341',0,'540402','巴宜区','540400'),('2020-10-15 17:33:56.376462','2020-10-15 17:33:56.376490',0,'540421','工布江达县','540400'),('2020-10-15 17:33:56.401093','2020-10-15 17:33:56.401118',0,'540422','米林县','540400'),('2020-10-15 17:33:56.426849','2020-10-15 17:33:56.426874',0,'540423','墨脱县','540400'),('2020-10-15 17:33:56.451412','2020-10-15 17:33:56.451445',0,'540424','波密县','540400'),('2020-10-15 17:33:56.476896','2020-10-15 17:33:56.476922',0,'540425','察隅县','540400'),('2020-10-15 17:33:56.506549','2020-10-15 17:33:56.506584',0,'540426','朗县','540400'),('2020-10-15 17:33:56.537101','2020-10-15 17:33:56.537177',0,'540502','乃东区','540500'),('2020-10-15 17:33:56.559837','2020-10-15 17:33:56.559862',0,'540521','扎囊县','540500'),('2020-10-15 17:33:56.589050','2020-10-15 17:33:56.589074',0,'540522','贡嘎县','540500'),('2020-10-15 17:33:56.679762','2020-10-15 17:33:56.679838',0,'540523','桑日县','540500'),('2020-10-15 17:33:56.709854','2020-10-15 17:33:56.709882',0,'540524','琼结县','540500'),('2020-10-15 17:33:56.734593','2020-10-15 17:33:56.734619',0,'540525','曲松县','540500'),('2020-10-15 17:33:56.759876','2020-10-15 17:33:56.759903',0,'540526','措美县','540500'),('2020-10-15 17:33:56.785675','2020-10-15 17:33:56.785743',0,'540527','洛扎县','540500'),('2020-10-15 17:33:56.823511','2020-10-15 17:33:56.823836',0,'540528','加查县','540500'),('2020-10-15 17:33:56.857415','2020-10-15 17:33:56.857533',0,'540529','隆子县','540500'),('2020-10-15 17:33:56.888286','2020-10-15 17:33:56.888351',0,'540530','错那县','540500'),('2020-10-15 17:33:56.923583','2020-10-15 17:33:56.923657',0,'540531','浪卡子县','540500'),('2020-10-15 17:33:56.955131','2020-10-15 17:33:56.955201',0,'540602','色尼区','540600'),('2020-10-15 17:33:57.005082','2020-10-15 17:33:57.005493',0,'540621','嘉黎县','540600'),('2020-10-15 17:33:57.043489','2020-10-15 17:33:57.043597',0,'540622','比如县','540600'),('2020-10-15 17:33:57.072877','2020-10-15 17:33:57.072958',0,'540623','聂荣县','540600'),('2020-10-15 17:33:57.107252','2020-10-15 17:33:57.107327',0,'540624','安多县','540600'),('2020-10-15 17:33:57.141322','2020-10-15 17:33:57.141457',0,'540625','申扎县','540600'),('2020-10-15 17:33:57.175768','2020-10-15 17:33:57.176006',0,'540626','索县','540600'),('2020-10-15 17:33:57.202041','2020-10-15 17:33:57.202075',0,'540627','班戈县','540600'),('2020-10-15 17:33:57.227620','2020-10-15 17:33:57.227753',0,'540628','巴青县','540600'),('2020-10-15 17:33:57.256024','2020-10-15 17:33:57.256085',0,'540629','尼玛县','540600'),('2020-10-15 17:33:57.292292','2020-10-15 17:33:57.292519',0,'540630','双湖县','540600'),('2020-10-15 17:33:57.329230','2020-10-15 17:33:57.329365',0,'542521','普兰县','542500'),('2020-10-15 17:33:57.402346','2020-10-15 17:33:57.402816',0,'542522','札达县','542500'),('2020-10-15 17:33:57.449841','2020-10-15 17:33:57.450105',0,'542523','噶尔县','542500'),('2020-10-15 17:33:57.490328','2020-10-15 17:33:57.490784',0,'542524','日土县','542500'),('2020-10-15 17:33:57.522968','2020-10-15 17:33:57.523054',0,'542525','革吉县','542500'),('2020-10-15 17:33:57.553806','2020-10-15 17:33:57.553867',0,'542526','改则县','542500'),('2020-10-15 17:33:57.578228','2020-10-15 17:33:57.578254',0,'542527','措勤县','542500'),('2020-10-15 17:33:57.611112','2020-10-15 17:33:57.611151',0,'610102','新城区','610100'),('2020-10-15 17:33:57.721610','2020-10-15 17:33:57.722042',0,'610103','碑林区','610100'),('2020-10-15 17:33:57.752732','2020-10-15 17:33:57.752761',0,'610104','莲湖区','610100'),('2020-10-15 17:33:57.780430','2020-10-15 17:33:57.780573',0,'610111','灞桥区','610100'),('2020-10-15 17:33:57.814861','2020-10-15 17:33:57.814959',0,'610112','未央区','610100'),('2020-10-15 17:33:57.844014','2020-10-15 17:33:57.844057',0,'610113','雁塔区','610100'),('2020-10-15 17:33:57.871236','2020-10-15 17:33:57.871318',0,'610114','阎良区','610100'),('2020-10-15 17:33:57.908069','2020-10-15 17:33:57.908165',0,'610115','临潼区','610100'),('2020-10-15 17:33:57.936335','2020-10-15 17:33:57.936387',0,'610116','长安区','610100'),('2020-10-15 17:33:57.959839','2020-10-15 17:33:57.959866',0,'610117','高陵区','610100'),('2020-10-15 17:33:57.984742','2020-10-15 17:33:57.984767',0,'610118','鄠邑区','610100'),('2020-10-15 17:33:58.009747','2020-10-15 17:33:58.009774',0,'610122','蓝田县','610100'),('2020-10-15 17:33:58.068801','2020-10-15 17:33:58.068828',0,'610124','周至县','610100'),('2020-10-15 17:33:58.092882','2020-10-15 17:33:58.092907',0,'610202','王益区','610200'),('2020-10-15 17:33:58.118201','2020-10-15 17:33:58.118226',0,'610203','印台区','610200'),('2020-10-15 17:33:58.142727','2020-10-15 17:33:58.142753',0,'610204','耀州区','610200'),('2020-10-15 17:33:58.168223','2020-10-15 17:33:58.168248',0,'610222','宜君县','610200'),('2020-10-15 17:33:58.192970','2020-10-15 17:33:58.192995',0,'610302','渭滨区','610300'),('2020-10-15 17:33:58.218901','2020-10-15 17:33:58.218926',0,'610303','金台区','610300'),('2020-10-15 17:33:58.242848','2020-10-15 17:33:58.242874',0,'610304','陈仓区','610300'),('2020-10-15 17:33:58.268074','2020-10-15 17:33:58.268100',0,'610322','凤翔县','610300'),('2020-10-15 17:33:58.294476','2020-10-15 17:33:58.294501',0,'610323','岐山县','610300'),('2020-10-15 17:33:58.318101','2020-10-15 17:33:58.318126',0,'610324','扶风县','610300'),('2020-10-15 17:33:58.342930','2020-10-15 17:33:58.342955',0,'610326','眉县','610300'),('2020-10-15 17:33:58.368182','2020-10-15 17:33:58.368211',0,'610327','陇县','610300'),('2020-10-15 17:33:58.393005','2020-10-15 17:33:58.393030',0,'610328','千阳县','610300'),('2020-10-15 17:33:58.418737','2020-10-15 17:33:58.418771',0,'610329','麟游县','610300'),('2020-10-15 17:33:58.443205','2020-10-15 17:33:58.443230',0,'610330','凤县','610300'),('2020-10-15 17:33:58.467942','2020-10-15 17:33:58.467966',0,'610331','太白县','610300'),('2020-10-15 17:33:58.494597','2020-10-15 17:33:58.494654',0,'610402','秦都区','610400'),('2020-10-15 17:33:58.518257','2020-10-15 17:33:58.518283',0,'610403','杨陵区','610400'),('2020-10-15 17:33:58.543095','2020-10-15 17:33:58.543120',0,'610404','渭城区','610400'),('2020-10-15 17:33:58.568239','2020-10-15 17:33:58.568265',0,'610422','三原县','610400'),('2020-10-15 17:33:58.593658','2020-10-15 17:33:58.593684',0,'610423','泾阳县','610400'),('2020-10-15 17:33:58.625533','2020-10-15 17:33:58.625557',0,'610424','乾县','610400'),('2020-10-15 17:33:58.667245','2020-10-15 17:33:58.667272',0,'610425','礼泉县','610400'),('2020-10-15 17:33:58.708927','2020-10-15 17:33:58.708954',0,'610426','永寿县','610400'),('2020-10-15 17:33:58.734356','2020-10-15 17:33:58.734381',0,'610427','彬县','610400'),('2020-10-15 17:33:58.759919','2020-10-15 17:33:58.759944',0,'610428','长武县','610400'),('2020-10-15 17:33:58.784760','2020-10-15 17:33:58.784786',0,'610429','旬邑县','610400'),('2020-10-15 17:33:58.809941','2020-10-15 17:33:58.809966',0,'610430','淳化县','610400'),('2020-10-15 17:33:58.834986','2020-10-15 17:33:58.835011',0,'610431','武功县','610400'),('2020-10-15 17:33:58.859574','2020-10-15 17:33:58.859598',0,'610481','兴平市','610400'),('2020-10-15 17:33:58.884571','2020-10-15 17:33:58.884597',0,'610502','临渭区','610500'),('2020-10-15 17:33:58.909602','2020-10-15 17:33:58.909627',0,'610503','华州区','610500'),('2020-10-15 17:33:58.934645','2020-10-15 17:33:58.934669',0,'610522','潼关县','610500'),('2020-10-15 17:33:58.959784','2020-10-15 17:33:58.959809',0,'610523','大荔县','610500'),('2020-10-15 17:33:58.984353','2020-10-15 17:33:58.984377',0,'610524','合阳县','610500'),('2020-10-15 17:33:59.009999','2020-10-15 17:33:59.010026',0,'610525','澄城县','610500'),('2020-10-15 17:33:59.034890','2020-10-15 17:33:59.034918',0,'610526','蒲城县','610500'),('2020-10-15 17:33:59.060141','2020-10-15 17:33:59.060168',0,'610527','白水县','610500'),('2020-10-15 17:33:59.084742','2020-10-15 17:33:59.084772',0,'610528','富平县','610500'),('2020-10-15 17:33:59.109491','2020-10-15 17:33:59.109523',0,'610581','韩城市','610500'),('2020-10-15 17:33:59.135004','2020-10-15 17:33:59.135030',0,'610582','华阴市','610500'),('2020-10-15 17:33:59.159572','2020-10-15 17:33:59.159597',0,'610602','宝塔区','610600'),('2020-10-15 17:33:59.195527','2020-10-15 17:33:59.196168',0,'610603','安塞区','610600'),('2020-10-15 17:33:59.240632','2020-10-15 17:33:59.240895',0,'610621','延长县','610600'),('2020-10-15 17:33:59.278547','2020-10-15 17:33:59.278769',0,'610622','延川县','610600'),('2020-10-15 17:33:59.320131','2020-10-15 17:33:59.320342',0,'610623','子长县','610600'),('2020-10-15 17:33:59.359500','2020-10-15 17:33:59.359734',0,'610625','志丹县','610600'),('2020-10-15 17:33:59.393409','2020-10-15 17:33:59.393451',0,'610626','吴起县','610600'),('2020-10-15 17:33:59.418108','2020-10-15 17:33:59.418134',0,'610627','甘泉县','610600'),('2020-10-15 17:33:59.443113','2020-10-15 17:33:59.443138',0,'610628','富县','610600'),('2020-10-15 17:33:59.468438','2020-10-15 17:33:59.468465',0,'610629','洛川县','610600'),('2020-10-15 17:33:59.506101','2020-10-15 17:33:59.506195',0,'610630','宜川县','610600'),('2020-10-15 17:33:59.534992','2020-10-15 17:33:59.535017',0,'610631','黄龙县','610600'),('2020-10-15 17:33:59.560265','2020-10-15 17:33:59.560296',0,'610632','黄陵县','610600'),('2020-10-15 17:33:59.585135','2020-10-15 17:33:59.585160',0,'610702','汉台区','610700'),('2020-10-15 17:33:59.617929','2020-10-15 17:33:59.617954',0,'610703','南郑区','610700'),('2020-10-15 17:33:59.694843','2020-10-15 17:33:59.694902',0,'610722','城固县','610700'),('2020-10-15 17:33:59.760637','2020-10-15 17:33:59.760673',0,'610723','洋县','610700'),('2020-10-15 17:33:59.785325','2020-10-15 17:33:59.785351',0,'610724','西乡县','610700'),('2020-10-15 17:33:59.810650','2020-10-15 17:33:59.810733',0,'610725','勉县','610700'),('2020-10-15 17:33:59.870137','2020-10-15 17:33:59.870230',0,'610726','宁强县','610700'),('2020-10-15 17:33:59.902651','2020-10-15 17:33:59.902677',0,'610727','略阳县','610700'),('2020-10-15 17:33:59.926987','2020-10-15 17:33:59.927019',0,'610728','镇巴县','610700'),('2020-10-15 17:33:59.951982','2020-10-15 17:33:59.952008',0,'610729','留坝县','610700'),('2020-10-15 17:33:59.978427','2020-10-15 17:33:59.978458',0,'610730','佛坪县','610700'),('2020-10-15 17:34:00.016512','2020-10-15 17:34:00.016732',0,'610802','榆阳区','610800'),('2020-10-15 17:34:00.044047','2020-10-15 17:34:00.044074',0,'610803','横山区','610800'),('2020-10-15 17:34:00.070065','2020-10-15 17:34:00.070153',0,'610822','府谷县','610800'),('2020-10-15 17:34:00.102155','2020-10-15 17:34:00.102181',0,'610824','靖边县','610800'),('2020-10-15 17:34:00.127231','2020-10-15 17:34:00.127258',0,'610825','定边县','610800'),('2020-10-15 17:34:00.152041','2020-10-15 17:34:00.152067',0,'610826','绥德县','610800'),('2020-10-15 17:34:00.177028','2020-10-15 17:34:00.177054',0,'610827','米脂县','610800'),('2020-10-15 17:34:00.203212','2020-10-15 17:34:00.203324',0,'610828','佳县','610800'),('2020-10-15 17:34:00.236239','2020-10-15 17:34:00.236273',0,'610829','吴堡县','610800'),('2020-10-15 17:34:00.260722','2020-10-15 17:34:00.260751',0,'610830','清涧县','610800'),('2020-10-15 17:34:00.287655','2020-10-15 17:34:00.287684',0,'610831','子洲县','610800'),('2020-10-15 17:34:00.338068','2020-10-15 17:34:00.338750',0,'610881','神木市','610800'),('2020-10-15 17:34:00.407890','2020-10-15 17:34:00.408190',0,'610902','汉滨区','610900'),('2020-10-15 17:34:00.437247','2020-10-15 17:34:00.437356',0,'610921','汉阴县','610900'),('2020-10-15 17:34:00.471049','2020-10-15 17:34:00.471167',0,'610922','石泉县','610900'),('2020-10-15 17:34:00.508390','2020-10-15 17:34:00.508453',0,'610923','宁陕县','610900'),('2020-10-15 17:34:00.537092','2020-10-15 17:34:00.537202',0,'610924','紫阳县','610900'),('2020-10-15 17:34:00.575541','2020-10-15 17:34:00.575919',0,'610925','岚皋县','610900'),('2020-10-15 17:34:00.632259','2020-10-15 17:34:00.633168',0,'610926','平利县','610900'),('2020-10-15 17:34:00.688520','2020-10-15 17:34:00.688960',0,'610927','镇坪县','610900'),('2020-10-15 17:34:00.720122','2020-10-15 17:34:00.720163',0,'610928','旬阳县','610900'),('2020-10-15 17:34:00.753871','2020-10-15 17:34:00.754132',0,'610929','白河县','610900'),('2020-10-15 17:34:00.788223','2020-10-15 17:34:00.788264',0,'611002','商州区','611000'),('2020-10-15 17:34:00.820005','2020-10-15 17:34:00.820048',0,'611021','洛南县','611000'),('2020-10-15 17:34:00.856311','2020-10-15 17:34:00.856436',0,'611022','丹凤县','611000'),('2020-10-15 17:34:00.922374','2020-10-15 17:34:00.922605',0,'611023','商南县','611000'),('2020-10-15 17:34:01.037782','2020-10-15 17:34:01.038799',0,'611024','山阳县','611000'),('2020-10-15 17:34:01.118119','2020-10-15 17:34:01.118942',0,'611025','镇安县','611000'),('2020-10-15 17:34:01.223749','2020-10-15 17:34:01.224287',0,'611026','柞水县','611000'),('2020-10-15 17:34:01.273311','2020-10-15 17:34:01.273557',0,'620102','城关区','620100'),('2020-10-15 17:34:01.312434','2020-10-15 17:34:01.313053',0,'620103','七里河区','620100'),('2020-10-15 17:34:01.350846','2020-10-15 17:34:01.351028',0,'620104','西固区','620100'),('2020-10-15 17:34:01.378848','2020-10-15 17:34:01.378882',0,'620105','安宁区','620100'),('2020-10-15 17:34:01.435043','2020-10-15 17:34:01.436045',0,'620111','红古区','620100'),('2020-10-15 17:34:01.473302','2020-10-15 17:34:01.473368',0,'620121','永登县','620100'),('2020-10-15 17:34:01.503244','2020-10-15 17:34:01.503277',0,'620122','皋兰县','620100'),('2020-10-15 17:34:01.539411','2020-10-15 17:34:01.539497',0,'620123','榆中县','620100'),('2020-10-15 17:34:01.569043','2020-10-15 17:34:01.569073',0,'620302','金川区','620300'),('2020-10-15 17:34:01.595346','2020-10-15 17:34:01.595373',0,'620321','永昌县','620300'),('2020-10-15 17:34:01.620131','2020-10-15 17:34:01.620157',0,'620402','白银区','620400'),('2020-10-15 17:34:01.660579','2020-10-15 17:34:01.660606',0,'620403','平川区','620400'),('2020-10-15 17:34:01.694487','2020-10-15 17:34:01.694514',0,'620421','靖远县','620400'),('2020-10-15 17:34:01.747107','2020-10-15 17:34:01.748025',0,'620422','会宁县','620400'),('2020-10-15 17:34:01.788027','2020-10-15 17:34:01.788160',0,'620423','景泰县','620400'),('2020-10-15 17:34:01.825463','2020-10-15 17:34:01.825637',0,'620502','秦州区','620500'),('2020-10-15 17:34:01.853205','2020-10-15 17:34:01.853269',0,'620503','麦积区','620500'),('2020-10-15 17:34:01.887073','2020-10-15 17:34:01.887126',0,'620521','清水县','620500'),('2020-10-15 17:34:01.922827','2020-10-15 17:34:01.922902',0,'620522','秦安县','620500'),('2020-10-15 17:34:01.965281','2020-10-15 17:34:01.965492',0,'620523','甘谷县','620500'),('2020-10-15 17:34:02.004417','2020-10-15 17:34:02.004921',0,'620524','武山县','620500'),('2020-10-15 17:34:02.038274','2020-10-15 17:34:02.038326',0,'620525','张家川回族自治县','620500'),('2020-10-15 17:34:02.074469','2020-10-15 17:34:02.074563',0,'620602','凉州区','620600'),('2020-10-15 17:34:02.120003','2020-10-15 17:34:02.120359',0,'620621','民勤县','620600'),('2020-10-15 17:34:02.152837','2020-10-15 17:34:02.152871',0,'620622','古浪县','620600'),('2020-10-15 17:34:02.186674','2020-10-15 17:34:02.186733',0,'620623','天祝藏族自治县','620600'),('2020-10-15 17:34:02.220219','2020-10-15 17:34:02.220268',0,'620702','甘州区','620700'),('2020-10-15 17:34:02.253187','2020-10-15 17:34:02.253231',0,'620721','肃南裕固族自治县','620700'),('2020-10-15 17:34:02.285474','2020-10-15 17:34:02.285501',0,'620722','民乐县','620700'),('2020-10-15 17:34:02.313431','2020-10-15 17:34:02.313460',0,'620723','临泽县','620700'),('2020-10-15 17:34:02.345294','2020-10-15 17:34:02.345348',0,'620724','高台县','620700'),('2020-10-15 17:34:02.381362','2020-10-15 17:34:02.381432',0,'620725','山丹县','620700'),('2020-10-15 17:34:02.410393','2020-10-15 17:34:02.410425',0,'620802','崆峒区','620800'),('2020-10-15 17:34:02.435766','2020-10-15 17:34:02.435792',0,'620821','泾川县','620800'),('2020-10-15 17:34:02.470297','2020-10-15 17:34:02.470324',0,'620822','灵台县','620800'),('2020-10-15 17:34:02.540846','2020-10-15 17:34:02.541652',0,'620823','崇信县','620800'),('2020-10-15 17:34:02.607980','2020-10-15 17:34:02.608908',0,'620824','华亭县','620800'),('2020-10-15 17:34:02.752618','2020-10-15 17:34:02.753671',0,'620825','庄浪县','620800'),('2020-10-15 17:34:02.791800','2020-10-15 17:34:02.791921',0,'620826','静宁县','620800'),('2020-10-15 17:34:02.828379','2020-10-15 17:34:02.828486',0,'620902','肃州区','620900'),('2020-10-15 17:34:02.863229','2020-10-15 17:34:02.863380',0,'620921','金塔县','620900'),('2020-10-15 17:34:02.908253','2020-10-15 17:34:02.908493',0,'620922','瓜州县','620900'),('2020-10-15 17:34:02.977571','2020-10-15 17:34:02.978624',0,'620923','肃北蒙古族自治县','620900'),('2020-10-15 17:34:03.053948','2020-10-15 17:34:03.054263',0,'620924','阿克塞哈萨克族自治县','620900'),('2020-10-15 17:34:03.092042','2020-10-15 17:34:03.092161',0,'620981','玉门市','620900'),('2020-10-15 17:34:03.134199','2020-10-15 17:34:03.134401',0,'620982','敦煌市','620900'),('2020-10-15 17:34:03.186779','2020-10-15 17:34:03.187298',0,'621002','西峰区','621000'),('2020-10-15 17:34:03.245520','2020-10-15 17:34:03.246586',0,'621021','庆城县','621000'),('2020-10-15 17:34:03.361359','2020-10-15 17:34:03.362397',0,'621022','环县','621000'),('2020-10-15 17:34:03.456411','2020-10-15 17:34:03.457326',0,'621023','华池县','621000'),('2020-10-15 17:34:03.518108','2020-10-15 17:34:03.518880',0,'621024','合水县','621000'),('2020-10-15 17:34:03.582406','2020-10-15 17:34:03.582975',0,'621025','正宁县','621000'),('2020-10-15 17:34:03.621958','2020-10-15 17:34:03.622012',0,'621026','宁县','621000'),('2020-10-15 17:34:03.687266','2020-10-15 17:34:03.687671',0,'621027','镇原县','621000'),('2020-10-15 17:34:03.737295','2020-10-15 17:34:03.737742',0,'621102','安定区','621100'),('2020-10-15 17:34:03.778014','2020-10-15 17:34:03.778155',0,'621121','通渭县','621100'),('2020-10-15 17:34:03.831653','2020-10-15 17:34:03.832173',0,'621122','陇西县','621100'),('2020-10-15 17:34:03.890138','2020-10-15 17:34:03.890752',0,'621123','渭源县','621100'),('2020-10-15 17:34:03.967004','2020-10-15 17:34:03.968115',0,'621124','临洮县','621100'),('2020-10-15 17:34:04.056015','2020-10-15 17:34:04.056923',0,'621125','漳县','621100'),('2020-10-15 17:34:04.133180','2020-10-15 17:34:04.134299',0,'621126','岷县','621100'),('2020-10-15 17:34:04.184575','2020-10-15 17:34:04.185017',0,'621202','武都区','621200'),('2020-10-15 17:34:04.276555','2020-10-15 17:34:04.279578',0,'621221','成县','621200'),('2020-10-15 17:34:04.343306','2020-10-15 17:34:04.343879',0,'621222','文县','621200'),('2020-10-15 17:34:04.414563','2020-10-15 17:34:04.415503',0,'621223','宕昌县','621200'),('2020-10-15 17:34:04.503638','2020-10-15 17:34:04.504057',0,'621224','康县','621200'),('2020-10-15 17:34:04.551297','2020-10-15 17:34:04.551481',0,'621225','西和县','621200'),('2020-10-15 17:34:04.590342','2020-10-15 17:34:04.590477',0,'621226','礼县','621200'),('2020-10-15 17:34:04.621214','2020-10-15 17:34:04.621427',0,'621227','徽县','621200'),('2020-10-15 17:34:04.671263','2020-10-15 17:34:04.671847',0,'621228','两当县','621200'),('2020-10-15 17:34:04.745500','2020-10-15 17:34:04.746553',0,'622901','临夏市','622900'),('2020-10-15 17:34:04.809186','2020-10-15 17:34:04.810159',0,'622921','临夏县','622900'),('2020-10-15 17:34:04.870541','2020-10-15 17:34:04.871539',0,'622922','康乐县','622900'),('2020-10-15 17:34:04.977156','2020-10-15 17:34:04.978727',0,'622923','永靖县','622900'),('2020-10-15 17:34:05.084683','2020-10-15 17:34:05.087375',0,'622924','广河县','622900'),('2020-10-15 17:34:05.213349','2020-10-15 17:34:05.214799',0,'622925','和政县','622900'),('2020-10-15 17:34:05.383147','2020-10-15 17:34:05.384206',0,'622926','东乡族自治县','622900'),('2020-10-15 17:34:05.459136','2020-10-15 17:34:05.459751',0,'622927','积石山保安族东乡族撒拉族自治县','622900'),('2020-10-15 17:34:05.558169','2020-10-15 17:34:05.559078',0,'623001','合作市','623000'),('2020-10-15 17:34:05.680026','2020-10-15 17:34:05.681511',0,'623021','临潭县','623000'),('2020-10-15 17:34:05.779181','2020-10-15 17:34:05.780171',0,'623022','卓尼县','623000'),('2020-10-15 17:34:05.863382','2020-10-15 17:34:05.863907',0,'623023','舟曲县','623000'),('2020-10-15 17:34:05.943902','2020-10-15 17:34:05.944755',0,'623024','迭部县','623000'),('2020-10-15 17:34:06.042372','2020-10-15 17:34:06.043603',0,'623025','玛曲县','623000'),('2020-10-15 17:34:06.099559','2020-10-15 17:34:06.100192',0,'623026','碌曲县','623000'),('2020-10-15 17:34:06.170633','2020-10-15 17:34:06.171520',0,'623027','夏河县','623000'),('2020-10-15 17:34:06.375901','2020-10-15 17:34:06.376811',0,'630102','城东区','630100'),('2020-10-15 17:34:06.469070','2020-10-15 17:34:06.470033',0,'630103','城中区','630100'),('2020-10-15 17:34:06.571191','2020-10-15 17:34:06.572805',0,'630104','城西区','630100'),('2020-10-15 17:34:06.646146','2020-10-15 17:34:06.646892',0,'630105','城北区','630100'),('2020-10-15 17:34:06.687420','2020-10-15 17:34:06.687517',0,'630121','大通回族土族自治县','630100'),('2020-10-15 17:34:06.725518','2020-10-15 17:34:06.725754',0,'630122','湟中县','630100'),('2020-10-15 17:34:06.763306','2020-10-15 17:34:06.763392',0,'630123','湟源县','630100'),('2020-10-15 17:34:06.799032','2020-10-15 17:34:06.799324',0,'630202','乐都区','630200'),('2020-10-15 17:34:06.851626','2020-10-15 17:34:06.852097',0,'630203','平安区','630200'),('2020-10-15 17:34:06.908298','2020-10-15 17:34:06.908957',0,'630222','民和回族土族自治县','630200'),('2020-10-15 17:34:06.968925','2020-10-15 17:34:06.969249',0,'630223','互助土族自治县','630200'),('2020-10-15 17:34:07.006660','2020-10-15 17:34:07.006769',0,'630224','化隆回族自治县','630200'),('2020-10-15 17:34:07.043550','2020-10-15 17:34:07.044013',0,'630225','循化撒拉族自治县','630200'),('2020-10-15 17:34:07.123964','2020-10-15 17:34:07.124792',0,'632221','门源回族自治县','632200'),('2020-10-15 17:34:07.179594','2020-10-15 17:34:07.179867',0,'632222','祁连县','632200'),('2020-10-15 17:34:07.219824','2020-10-15 17:34:07.220161',0,'632223','海晏县','632200'),('2020-10-15 17:34:07.259436','2020-10-15 17:34:07.260027',0,'632224','刚察县','632200'),('2020-10-15 17:34:07.302588','2020-10-15 17:34:07.302810',0,'632321','同仁县','632300'),('2020-10-15 17:34:07.341947','2020-10-15 17:34:07.342091',0,'632322','尖扎县','632300'),('2020-10-15 17:34:07.404511','2020-10-15 17:34:07.404984',0,'632323','泽库县','632300'),('2020-10-15 17:34:07.445184','2020-10-15 17:34:07.445344',0,'632324','河南蒙古族自治县','632300'),('2020-10-15 17:34:07.504955','2020-10-15 17:34:07.505305',0,'632521','共和县','632500'),('2020-10-15 17:34:07.547243','2020-10-15 17:34:07.547361',0,'632522','同德县','632500'),('2020-10-15 17:34:07.586807','2020-10-15 17:34:07.586860',0,'632523','贵德县','632500'),('2020-10-15 17:34:07.640868','2020-10-15 17:34:07.641093',0,'632524','兴海县','632500'),('2020-10-15 17:34:07.673780','2020-10-15 17:34:07.673849',0,'632525','贵南县','632500'),('2020-10-15 17:34:07.739023','2020-10-15 17:34:07.739446',0,'632621','玛沁县','632600'),('2020-10-15 17:34:07.770955','2020-10-15 17:34:07.770988',0,'632622','班玛县','632600'),('2020-10-15 17:34:07.793598','2020-10-15 17:34:07.793627',0,'632623','甘德县','632600'),('2020-10-15 17:34:07.818842','2020-10-15 17:34:07.818893',0,'632624','达日县','632600'),('2020-10-15 17:34:07.844119','2020-10-15 17:34:07.844145',0,'632625','久治县','632600'),('2020-10-15 17:34:07.869445','2020-10-15 17:34:07.869472',0,'632626','玛多县','632600'),('2020-10-15 17:34:07.893484','2020-10-15 17:34:07.893509',0,'632701','玉树市','632700'),('2020-10-15 17:34:07.919910','2020-10-15 17:34:07.919936',0,'632722','杂多县','632700'),('2020-10-15 17:34:07.970780','2020-10-15 17:34:07.970806',0,'632723','称多县','632700'),('2020-10-15 17:34:07.994223','2020-10-15 17:34:07.994248',0,'632724','治多县','632700'),('2020-10-15 17:34:08.018988','2020-10-15 17:34:08.019014',0,'632725','囊谦县','632700'),('2020-10-15 17:34:08.043514','2020-10-15 17:34:08.043540',0,'632726','曲麻莱县','632700'),('2020-10-15 17:34:08.070064','2020-10-15 17:34:08.070089',0,'632801','格尔木市','632800'),('2020-10-15 17:34:08.094159','2020-10-15 17:34:08.094185',0,'632802','德令哈市','632800'),('2020-10-15 17:34:08.120014','2020-10-15 17:34:08.120039',0,'632821','乌兰县','632800'),('2020-10-15 17:34:08.143756','2020-10-15 17:34:08.143781',0,'632822','都兰县','632800'),('2020-10-15 17:34:08.170644','2020-10-15 17:34:08.170675',0,'632823','天峻县','632800'),('2020-10-15 17:34:08.196658','2020-10-15 17:34:08.196719',0,'640104','兴庆区','640100'),('2020-10-15 17:34:08.223017','2020-10-15 17:34:08.223065',0,'640105','西夏区','640100'),('2020-10-15 17:34:08.243320','2020-10-15 17:34:08.243345',0,'640106','金凤区','640100'),('2020-10-15 17:34:08.268898','2020-10-15 17:34:08.268924',0,'640121','永宁县','640100'),('2020-10-15 17:34:08.293976','2020-10-15 17:34:08.294002',0,'640122','贺兰县','640100'),('2020-10-15 17:34:08.318730','2020-10-15 17:34:08.318758',0,'640181','灵武市','640100'),('2020-10-15 17:34:08.343511','2020-10-15 17:34:08.343536',0,'640202','大武口区','640200'),('2020-10-15 17:34:08.371018','2020-10-15 17:34:08.371047',0,'640205','惠农区','640200'),('2020-10-15 17:34:08.394089','2020-10-15 17:34:08.394114',0,'640221','平罗县','640200'),('2020-10-15 17:34:08.421085','2020-10-15 17:34:08.421112',0,'640302','利通区','640300'),('2020-10-15 17:34:08.443972','2020-10-15 17:34:08.443998',0,'640303','红寺堡区','640300'),('2020-10-15 17:34:08.468577','2020-10-15 17:34:08.468603',0,'640323','盐池县','640300'),('2020-10-15 17:34:08.494552','2020-10-15 17:34:08.494580',0,'640324','同心县','640300'),('2020-10-15 17:34:08.519339','2020-10-15 17:34:08.519392',0,'640381','青铜峡市','640300'),('2020-10-15 17:34:08.544337','2020-10-15 17:34:08.544362',0,'640402','原州区','640400'),('2020-10-15 17:34:08.568811','2020-10-15 17:34:08.568836',0,'640422','西吉县','640400'),('2020-10-15 17:34:08.602453','2020-10-15 17:34:08.602478',0,'640423','隆德县','640400'),('2020-10-15 17:34:08.638574','2020-10-15 17:34:08.638605',0,'640424','泾源县','640400'),('2020-10-15 17:34:08.661212','2020-10-15 17:34:08.661254',0,'640425','彭阳县','640400'),('2020-10-15 17:34:08.687091','2020-10-15 17:34:08.687121',0,'640502','沙坡头区','640500'),('2020-10-15 17:34:08.716114','2020-10-15 17:34:08.716621',0,'640521','中宁县','640500'),('2020-10-15 17:34:08.746388','2020-10-15 17:34:08.746503',0,'640522','海原县','640500'),('2020-10-15 17:34:08.790505','2020-10-15 17:34:08.791289',0,'650102','天山区','650100'),('2020-10-15 17:34:08.824813','2020-10-15 17:34:08.824959',0,'650103','沙依巴克区','650100'),('2020-10-15 17:34:08.862370','2020-10-15 17:34:08.863000',0,'650104','新市区','650100'),('2020-10-15 17:34:08.922120','2020-10-15 17:34:08.922624',0,'650105','水磨沟区','650100'),('2020-10-15 17:34:08.984178','2020-10-15 17:34:08.985245',0,'650106','头屯河区','650100'),('2020-10-15 17:34:09.057186','2020-10-15 17:34:09.057744',0,'650107','达坂城区','650100'),('2020-10-15 17:34:09.087347','2020-10-15 17:34:09.087400',0,'650109','米东区','650100'),('2020-10-15 17:34:09.123124','2020-10-15 17:34:09.123410',0,'650121','乌鲁木齐县','650100'),('2020-10-15 17:34:09.158068','2020-10-15 17:34:09.158151',0,'650202','独山子区','650200'),('2020-10-15 17:34:09.194801','2020-10-15 17:34:09.195108',0,'650203','克拉玛依区','650200'),('2020-10-15 17:34:09.224578','2020-10-15 17:34:09.224789',0,'650204','白碱滩区','650200'),('2020-10-15 17:34:09.255187','2020-10-15 17:34:09.255251',0,'650205','乌尔禾区','650200'),('2020-10-15 17:34:09.280627','2020-10-15 17:34:09.280675',0,'650402','高昌区','650400'),('2020-10-15 17:34:09.331586','2020-10-15 17:34:09.332533',0,'650421','鄯善县','650400'),('2020-10-15 17:34:09.406764','2020-10-15 17:34:09.407189',0,'650422','托克逊县','650400'),('2020-10-15 17:34:09.456837','2020-10-15 17:34:09.457469',0,'650502','伊州区','650500'),('2020-10-15 17:34:09.511080','2020-10-15 17:34:09.511567',0,'650521','巴里坤哈萨克自治县','650500'),('2020-10-15 17:34:09.562214','2020-10-15 17:34:09.563808',0,'650522','伊吾县','650500'),('2020-10-15 17:34:09.632263','2020-10-15 17:34:09.632839',0,'652301','昌吉市','652300'),('2020-10-15 17:34:09.736631','2020-10-15 17:34:09.737424',0,'652302','阜康市','652300'),('2020-10-15 17:34:09.773253','2020-10-15 17:34:09.773399',0,'652323','呼图壁县','652300'),('2020-10-15 17:34:09.810463','2020-10-15 17:34:09.810716',0,'652324','玛纳斯县','652300'),('2020-10-15 17:34:09.850456','2020-10-15 17:34:09.850897',0,'652325','奇台县','652300'),('2020-10-15 17:34:09.880567','2020-10-15 17:34:09.880620',0,'652327','吉木萨尔县','652300'),('2020-10-15 17:34:09.916612','2020-10-15 17:34:09.917097',0,'652328','木垒哈萨克自治县','652300'),('2020-10-15 17:34:09.946245','2020-10-15 17:34:09.946318',0,'652701','博乐市','652700'),('2020-10-15 17:34:09.976062','2020-10-15 17:34:09.976117',0,'652702','阿拉山口市','652700'),('2020-10-15 17:34:10.015441','2020-10-15 17:34:10.015742',0,'652722','精河县','652700'),('2020-10-15 17:34:10.086516','2020-10-15 17:34:10.087405',0,'652723','温泉县','652700'),('2020-10-15 17:34:10.148767','2020-10-15 17:34:10.149193',0,'652801','库尔勒市','652800'),('2020-10-15 17:34:10.185298','2020-10-15 17:34:10.185371',0,'652822','轮台县','652800'),('2020-10-15 17:34:10.216248','2020-10-15 17:34:10.216380',0,'652823','尉犁县','652800'),('2020-10-15 17:34:10.250420','2020-10-15 17:34:10.250532',0,'652824','若羌县','652800'),('2020-10-15 17:34:10.282173','2020-10-15 17:34:10.282262',0,'652825','且末县','652800'),('2020-10-15 17:34:10.316427','2020-10-15 17:34:10.316631',0,'652826','焉耆回族自治县','652800'),('2020-10-15 17:34:10.385432','2020-10-15 17:34:10.385903',0,'652827','和静县','652800'),('2020-10-15 17:34:10.424076','2020-10-15 17:34:10.424216',0,'652828','和硕县','652800'),('2020-10-15 17:34:10.467549','2020-10-15 17:34:10.467883',0,'652829','博湖县','652800'),('2020-10-15 17:34:10.495934','2020-10-15 17:34:10.496047',0,'652901','阿克苏市','652900'),('2020-10-15 17:34:10.526289','2020-10-15 17:34:10.526352',0,'652922','温宿县','652900'),('2020-10-15 17:34:10.557569','2020-10-15 17:34:10.557663',0,'652923','库车县','652900'),('2020-10-15 17:34:10.587958','2020-10-15 17:34:10.588003',0,'652924','沙雅县','652900'),('2020-10-15 17:34:10.613532','2020-10-15 17:34:10.613559',0,'652925','新和县','652900'),('2020-10-15 17:34:10.645134','2020-10-15 17:34:10.645160',0,'652926','拜城县','652900'),('2020-10-15 17:34:10.671402','2020-10-15 17:34:10.671427',0,'652927','乌什县','652900'),('2020-10-15 17:34:10.695663','2020-10-15 17:34:10.695711',0,'652928','阿瓦提县','652900'),('2020-10-15 17:34:10.721820','2020-10-15 17:34:10.721878',0,'652929','柯坪县','652900'),('2020-10-15 17:34:10.745728','2020-10-15 17:34:10.745754',0,'653001','阿图什市','653000'),('2020-10-15 17:34:10.769929','2020-10-15 17:34:10.769954',0,'653022','阿克陶县','653000'),('2020-10-15 17:34:10.795593','2020-10-15 17:34:10.795618',0,'653023','阿合奇县','653000'),('2020-10-15 17:34:10.820918','2020-10-15 17:34:10.820944',0,'653024','乌恰县','653000'),('2020-10-15 17:34:10.844685','2020-10-15 17:34:10.844740',0,'653101','喀什市','653100'),('2020-10-15 17:34:10.869609','2020-10-15 17:34:10.869634',0,'653121','疏附县','653100'),('2020-10-15 17:34:10.895037','2020-10-15 17:34:10.895062',0,'653122','疏勒县','653100'),('2020-10-15 17:34:10.921090','2020-10-15 17:34:10.921114',0,'653123','英吉沙县','653100'),('2020-10-15 17:34:10.944853','2020-10-15 17:34:10.944878',0,'653124','泽普县','653100'),('2020-10-15 17:34:10.970479','2020-10-15 17:34:10.970504',0,'653125','莎车县','653100'),('2020-10-15 17:34:10.995539','2020-10-15 17:34:10.995564',0,'653126','叶城县','653100'),('2020-10-15 17:34:11.021366','2020-10-15 17:34:11.021395',0,'653127','麦盖提县','653100'),('2020-10-15 17:34:11.045026','2020-10-15 17:34:11.045051',0,'653128','岳普湖县','653100'),('2020-10-15 17:34:11.070668','2020-10-15 17:34:11.070734',0,'653129','伽师县','653100'),('2020-10-15 17:34:11.097846','2020-10-15 17:34:11.097983',0,'653130','巴楚县','653100'),('2020-10-15 17:34:11.123180','2020-10-15 17:34:11.123251',0,'653131','塔什库尔干塔吉克自治县','653100'),('2020-10-15 17:34:11.146946','2020-10-15 17:34:11.147076',0,'653201','和田市','653200'),('2020-10-15 17:34:11.194505','2020-10-15 17:34:11.194615',0,'653221','和田县','653200'),('2020-10-15 17:34:11.221807','2020-10-15 17:34:11.221835',0,'653222','墨玉县','653200'),('2020-10-15 17:34:11.244800','2020-10-15 17:34:11.244838',0,'653223','皮山县','653200'),('2020-10-15 17:34:11.269914','2020-10-15 17:34:11.269939',0,'653224','洛浦县','653200'),('2020-10-15 17:34:11.295192','2020-10-15 17:34:11.295217',0,'653225','策勒县','653200'),('2020-10-15 17:34:11.321240','2020-10-15 17:34:11.321266',0,'653226','于田县','653200'),('2020-10-15 17:34:11.353414','2020-10-15 17:34:11.353440',0,'653227','民丰县','653200'),('2020-10-15 17:34:11.378916','2020-10-15 17:34:11.378944',0,'654002','伊宁市','654000'),('2020-10-15 17:34:11.403544','2020-10-15 17:34:11.403569',0,'654003','奎屯市','654000'),('2020-10-15 17:34:11.428472','2020-10-15 17:34:11.428497',0,'654004','霍尔果斯市','654000'),('2020-10-15 17:34:11.453760','2020-10-15 17:34:11.453784',0,'654021','伊宁县','654000'),('2020-10-15 17:34:11.478525','2020-10-15 17:34:11.478550',0,'654022','察布查尔锡伯自治县','654000'),('2020-10-15 17:34:11.508534','2020-10-15 17:34:11.508559',0,'654023','霍城县','654000'),('2020-10-15 17:34:11.537495','2020-10-15 17:34:11.537520',0,'654024','巩留县','654000'),('2020-10-15 17:34:11.561802','2020-10-15 17:34:11.561827',0,'654025','新源县','654000'),('2020-10-15 17:34:11.587157','2020-10-15 17:34:11.587194',0,'654026','昭苏县','654000'),('2020-10-15 17:34:11.646161','2020-10-15 17:34:11.646221',0,'654027','特克斯县','654000'),('2020-10-15 17:34:11.695787','2020-10-15 17:34:11.695814',0,'654028','尼勒克县','654000'),('2020-10-15 17:34:11.720279','2020-10-15 17:34:11.720320',0,'654201','塔城市','654200'),('2020-10-15 17:34:11.745952','2020-10-15 17:34:11.745977',0,'654202','乌苏市','654200'),('2020-10-15 17:34:11.770984','2020-10-15 17:34:11.771009',0,'654221','额敏县','654200'),('2020-10-15 17:34:11.795809','2020-10-15 17:34:11.795834',0,'654223','沙湾县','654200'),('2020-10-15 17:34:11.821226','2020-10-15 17:34:11.821254',0,'654224','托里县','654200'),('2020-10-15 17:34:11.846665','2020-10-15 17:34:11.846732',0,'654225','裕民县','654200'),('2020-10-15 17:34:11.875952','2020-10-15 17:34:11.876017',0,'654226','和布克赛尔蒙古自治县','654200'),('2020-10-15 17:34:11.904009','2020-10-15 17:34:11.904036',0,'654301','阿勒泰市','654300'),('2020-10-15 17:34:11.928903','2020-10-15 17:34:11.928928',0,'654321','布尔津县','654300'),('2020-10-15 17:34:11.955122','2020-10-15 17:34:11.955147',0,'654322','富蕴县','654300'),('2020-10-15 17:34:11.980229','2020-10-15 17:34:11.980254',0,'654323','福海县','654300'),('2020-10-15 17:34:12.007563','2020-10-15 17:34:12.007601',0,'654324','哈巴河县','654300'),('2020-10-15 17:34:12.029540','2020-10-15 17:34:12.029565',0,'654325','青河县','654300'),('2020-10-15 17:34:12.081343','2020-10-15 17:34:12.081483',0,'654326','吉木乃县','654300');
/*!40000 ALTER TABLE `kzhd_county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_customer`
--

DROP TABLE IF EXISTS `kzhd_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `customer_type` int(11) NOT NULL,
  `customer_name` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `contact_name` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_id` (`address_id`),
  KEY `kzhd_customer_customer_name_3dd2ef3b` (`customer_name`),
  CONSTRAINT `kzhd_customer_address_id_42a0c300_fk_kzhd_address_id` FOREIGN KEY (`address_id`) REFERENCES `kzhd_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_customer`
--

LOCK TABLES `kzhd_customer` WRITE;
/*!40000 ALTER TABLE `kzhd_customer` DISABLE KEYS */;
INSERT INTO `kzhd_customer` VALUES (1,'2020-10-15 19:59:59.962516','2020-10-15 19:59:59.962600',0,10,'1111','2222','13636363636',2),(2,'2020-10-19 16:28:29.112193','2020-10-19 16:28:29.112517',0,20,'1222','333','13636363639',4);
/*!40000 ALTER TABLE `kzhd_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_customergroup`
--

DROP TABLE IF EXISTS `kzhd_customergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_customergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `group_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_customergroup_partner_id_bfbbdaf0_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_customergroup_partner_id_bfbbdaf0_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_customergroup`
--

LOCK TABLES `kzhd_customergroup` WRITE;
/*!40000 ALTER TABLE `kzhd_customergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_customergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_customergroup_customer`
--

DROP TABLE IF EXISTS `kzhd_customergroup_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_customergroup_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customergroup_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kzhd_customergroup_custo_customergroup_id_custome_ff47243c_uniq` (`customergroup_id`,`customer_id`),
  KEY `kzhd_customergroup_c_customer_id_73ba5203_fk_kzhd_cust` (`customer_id`),
  CONSTRAINT `kzhd_customergroup_c_customer_id_73ba5203_fk_kzhd_cust` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_customergroup_c_customergroup_id_6c2c2474_fk_kzhd_cust` FOREIGN KEY (`customergroup_id`) REFERENCES `kzhd_customergroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_customergroup_customer`
--

LOCK TABLES `kzhd_customergroup_customer` WRITE;
/*!40000 ALTER TABLE `kzhd_customergroup_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_customergroup_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_customerstaff`
--

DROP TABLE IF EXISTS `kzhd_customerstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_customerstaff` (
  `generalprofile_ptr_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`generalprofile_ptr_id`),
  KEY `kzhd_customerstaff_customer_id_29c1ed64_fk_kzhd_customer_id` (`customer_id`),
  CONSTRAINT `kzhd_customerstaff_customer_id_29c1ed64_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_customerstaff_generalprofile_ptr_i_04ea6635_fk_kzhd_gene` FOREIGN KEY (`generalprofile_ptr_id`) REFERENCES `kzhd_generalprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_customerstaff`
--

LOCK TABLES `kzhd_customerstaff` WRITE;
/*!40000 ALTER TABLE `kzhd_customerstaff` DISABLE KEYS */;
INSERT INTO `kzhd_customerstaff` VALUES (2,1,1),(17,1,2);
/*!40000 ALTER TABLE `kzhd_customerstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_driver`
--

DROP TABLE IF EXISTS `kzhd_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_driver` (
  `generalprofile_ptr_id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `citizen_id` varchar(18) COLLATE utf8mb4_bin NOT NULL,
  `score_cargo` double NOT NULL,
  `score_time` double NOT NULL,
  `score_service` double NOT NULL,
  `score_sum` double NOT NULL,
  `partner_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`generalprofile_ptr_id`),
  UNIQUE KEY `truck_id` (`truck_id`),
  KEY `kzhd_driver_partner_id_e01a2686_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_driver_team_id_e3c743bd_fk_kzhd_team_id` (`team_id`),
  CONSTRAINT `kzhd_driver_generalprofile_ptr_i_543aaf49_fk_kzhd_gene` FOREIGN KEY (`generalprofile_ptr_id`) REFERENCES `kzhd_generalprofile` (`id`),
  CONSTRAINT `kzhd_driver_partner_id_e01a2686_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_driver_team_id_e3c743bd_fk_kzhd_team_id` FOREIGN KEY (`team_id`) REFERENCES `kzhd_team` (`id`),
  CONSTRAINT `kzhd_driver_truck_id_f21d7cb0_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_driver`
--

LOCK TABLES `kzhd_driver` WRITE;
/*!40000 ALTER TABLE `kzhd_driver` DISABLE KEYS */;
INSERT INTO `kzhd_driver` VALUES (3,'','356846198703193698',0,0,0,0,1,NULL,NULL),(4,'','139559944661395599',0,0,0,0,1,NULL,NULL),(5,'','500113202012147522',0,0,0,0,1,NULL,2),(6,'','500113202012147522',0,0,0,0,1,NULL,4),(7,'','137998855661379988',0,0,0,0,1,NULL,7),(8,'','136363636361363636',0,0,0,0,1,NULL,6),(9,'','111111111111111111',0,0,0,0,1,NULL,3),(10,'','136363363911363633',0,0,0,0,1,NULL,5),(13,'','500113202015164512',0,0,0,0,1,NULL,8),(16,'','500111111111111112',0,0,0,0,1,NULL,NULL),(20,'','510522199109220255',5,5,5,5,1,NULL,NULL),(22,'','500113199811157621',0,0,0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `kzhd_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_drivertruckbindrecord`
--

DROP TABLE IF EXISTS `kzhd_drivertruckbindrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_drivertruckbindrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `unbind_time` datetime(6) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_drivertruckbind_partner_id_a4cfa362_fk_kzhd_part` (`partner_id`),
  KEY `kzhd_drivertruckbindrecord_truck_id_fe8e79d7_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_drivertruckbind_driver_id_c0e9693f_fk_kzhd_driv` (`driver_id`),
  CONSTRAINT `kzhd_drivertruckbind_driver_id_c0e9693f_fk_kzhd_driv` FOREIGN KEY (`driver_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_drivertruckbind_partner_id_a4cfa362_fk_kzhd_part` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_drivertruckbindrecord_truck_id_fe8e79d7_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_drivertruckbindrecord`
--

LOCK TABLES `kzhd_drivertruckbindrecord` WRITE;
/*!40000 ALTER TABLE `kzhd_drivertruckbindrecord` DISABLE KEYS */;
INSERT INTO `kzhd_drivertruckbindrecord` VALUES (1,'2020-10-16 11:25:41.242343','2020-10-16 11:25:41.242414',0,NULL,1,2,5),(2,'2020-10-16 15:36:45.240989','2020-10-16 15:36:45.241186',0,NULL,1,4,6),(9,'2020-10-20 09:18:28.742409','2020-10-20 09:32:12.591831',0,'2020-10-20 09:32:12.591497',1,8,13),(10,'2020-10-20 09:33:02.029892','2020-10-20 09:33:02.030214',0,NULL,1,8,13);
/*!40000 ALTER TABLE `kzhd_drivertruckbindrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_employdriver`
--

DROP TABLE IF EXISTS `kzhd_employdriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_employdriver` (
  `driver_ptr_id` int(11) NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`driver_ptr_id`),
  CONSTRAINT `kzhd_employdriver_driver_ptr_id_421e1870_fk_kzhd_driv` FOREIGN KEY (`driver_ptr_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_employdriver`
--

LOCK TABLES `kzhd_employdriver` WRITE;
/*!40000 ALTER TABLE `kzhd_employdriver` DISABLE KEYS */;
INSERT INTO `kzhd_employdriver` VALUES (3,'2020-10-16'),(4,'2020-10-12'),(7,'2020-10-16'),(8,'2020-10-07'),(9,'2020-10-08'),(10,'2020-10-07'),(13,'2020-10-19'),(16,'2020-10-13'),(22,'2020-11-04');
/*!40000 ALTER TABLE `kzhd_employdriver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_fine`
--

DROP TABLE IF EXISTS `kzhd_fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_fine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `bill_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_fine_partner_id_a5dc9742_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_fine_truck_id_c9cc754d_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_fine_fill_name_id_89597048_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_fine_maintain_time_51473e4d` (`maintain_time`),
  CONSTRAINT `kzhd_fine_fill_name_id_89597048_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_fine_partner_id_a5dc9742_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_fine_truck_id_c9cc754d_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_fine`
--

LOCK TABLES `kzhd_fine` WRITE;
/*!40000 ALTER TABLE `kzhd_fine` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_fuelcharging`
--

DROP TABLE IF EXISTS `kzhd_fuelcharging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_fuelcharging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `trip_distance` decimal(9,2) NOT NULL,
  `unit_price` decimal(9,2) NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_fuelcharging_partner_id_a3363053_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_fuelcharging_truck_id_01f14a94_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_fuelcharging_fill_name_id_9229e27b_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_fuelcharging_maintain_time_a7de9d13` (`maintain_time`),
  CONSTRAINT `kzhd_fuelcharging_fill_name_id_9229e27b_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_fuelcharging_partner_id_a3363053_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_fuelcharging_truck_id_01f14a94_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_fuelcharging`
--

LOCK TABLES `kzhd_fuelcharging` WRITE;
/*!40000 ALTER TABLE `kzhd_fuelcharging` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_fuelcharging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_generalprofile`
--

DROP TABLE IF EXISTS `kzhd_generalprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_generalprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `recent_use_time` datetime(6) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `kzhd_generalprofile_polymorphic_ctype_id_3e1c356b_fk_django_co` (`polymorphic_ctype_id`),
  CONSTRAINT `kzhd_generalprofile_polymorphic_ctype_id_3e1c356b_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `kzhd_generalprofile_user_id_b2f25522_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_generalprofile`
--

LOCK TABLES `kzhd_generalprofile` WRITE;
/*!40000 ALTER TABLE `kzhd_generalprofile` DISABLE KEYS */;
INSERT INTO `kzhd_generalprofile` VALUES (1,'2020-10-15 17:34:12.907625','2020-11-30 15:49:39.458017',0,'13911223344','张无忌',NULL,24,2),(2,'2020-10-15 20:00:00.235585','2020-10-15 20:00:00.235738',0,'13636363636','2222',NULL,58,3),(3,'2020-10-16 08:40:05.748712','2020-10-19 15:55:25.941833',0,'16798462566','string',NULL,47,4),(4,'2020-10-16 10:49:27.490709','2020-10-19 13:51:12.130231',1,'13955994466','李四',NULL,47,5),(5,'2020-10-16 11:25:41.158109','2020-10-16 17:22:25.288401',0,'13200000002','挂靠司机2',NULL,46,6),(6,'2020-10-16 15:36:45.057710','2020-10-16 15:37:50.047792',1,'13200000002','挂靠司机2',NULL,46,7),(7,'2020-10-16 17:12:11.611072','2020-11-30 14:21:54.477457',0,'13799885566','aaa',NULL,47,8),(8,'2020-10-16 17:14:56.516573','2020-10-16 18:22:32.967263',0,'13636363636','1111',NULL,47,9),(9,'2020-10-16 17:37:58.680262','2020-10-16 17:37:58.680305',0,'13636363631','绑定车辆',NULL,47,10),(10,'2020-10-16 17:40:45.049095','2020-10-19 11:22:44.521468',0,'13636336391','自有司机',NULL,47,11),(11,'2020-10-16 18:40:02.571914','2020-10-19 10:32:03.024040',1,'13636363636','11',NULL,24,12),(12,'2020-10-16 18:42:20.453752','2020-11-30 15:56:09.717270',0,'13636363631','111',NULL,24,13),(13,'2020-10-19 09:27:11.768422','2020-10-20 09:57:01.153683',0,'13800000002','司机2',NULL,47,14),(14,'2020-10-19 10:30:10.858843','2020-10-19 11:07:42.856680',0,'15972990000','管理员',NULL,24,19),(15,'2020-10-19 10:49:22.668401','2020-10-19 10:49:22.668465',0,'17845689788','碧血剑',NULL,24,20),(16,'2020-10-19 13:31:54.774739','2020-11-30 15:18:43.305186',0,'13500000002','张三',NULL,47,21),(17,'2020-10-19 16:28:29.428536','2020-10-19 16:28:29.428648',0,'13636363639','333',NULL,58,22),(18,'2020-10-20 09:03:31.518354','2020-10-20 09:07:02.182435',1,'13272654816','赵6',NULL,24,25),(19,'2020-10-20 09:08:08.118619','2020-11-30 15:35:13.182429',0,'13272654816','赵6',NULL,24,26),(20,'2020-10-20 10:34:19.272996','2020-10-20 10:34:19.273183',0,'18323177363','周黑鸭',NULL,22,27),(21,'2020-10-20 11:31:39.066886','2020-10-20 11:31:46.097954',1,'16798462566','1',NULL,24,28),(22,'2020-11-30 13:56:54.190896','2020-11-30 14:07:23.324926',1,'13200000001','自有司机',NULL,47,29),(23,'2020-11-30 15:39:45.436891','2020-11-30 15:39:45.437092',0,'13254621321','测试',NULL,24,30);
/*!40000 ALTER TABLE `kzhd_generalprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_notice`
--

DROP TABLE IF EXISTS `kzhd_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `context` longtext COLLATE utf8mb4_bin NOT NULL,
  `num_of_comments` int(11) NOT NULL,
  `to_own_driver` tinyint(1) DEFAULT NULL,
  `to_aff_driver` tinyint(1) DEFAULT NULL,
  `to_mobile_customer` tinyint(1) DEFAULT NULL,
  `to_web_customer` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_notice_creator_id_c3b37f1c_fk_auth_user_id` (`creator_id`),
  KEY `kzhd_notice_updator_id_21044db8_fk_auth_user_id` (`updator_id`),
  CONSTRAINT `kzhd_notice_creator_id_c3b37f1c_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `kzhd_notice_updator_id_21044db8_fk_auth_user_id` FOREIGN KEY (`updator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_notice`
--

LOCK TABLES `kzhd_notice` WRITE;
/*!40000 ALTER TABLE `kzhd_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_order`
--

DROP TABLE IF EXISTS `kzhd_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `ship_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `ship_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `shipping_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `shipping_name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ship_time` datetime(6) NOT NULL,
  `required_shipping_time` datetime(6) NOT NULL,
  `estimated_shipping_time` datetime(6) DEFAULT NULL,
  `is_insure` tinyint(1) NOT NULL,
  `shipping_cost_discount` decimal(9,2) DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `order_status` int(11) NOT NULL,
  `cargo_type` int(11) NOT NULL,
  `cargo_insure_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `price_method_id` int(11) NOT NULL,
  `ship_address_id` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `truck_model_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price_method_id` (`price_method_id`),
  UNIQUE KEY `cargo_insure_id` (`cargo_insure_id`),
  KEY `kzhd_order_partner_id_03f03537_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_order_shipping_address_id_c707966a_fk_kzhd_ship` (`shipping_address_id`),
  KEY `kzhd_order_truck_model_type_id_dfa8e57c_fk_kzhd_truc` (`truck_model_type_id`),
  KEY `kzhd_order_customer_id_02213350_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_order_ship_address_id_402a642d_fk_kzhd_shipaddress_id` (`ship_address_id`),
  CONSTRAINT `kzhd_order_cargo_insure_id_5557d5a2_fk_kzhd_cargoinsure_id` FOREIGN KEY (`cargo_insure_id`) REFERENCES `kzhd_cargoinsure` (`id`),
  CONSTRAINT `kzhd_order_customer_id_02213350_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_order_partner_id_03f03537_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_order_price_method_id_c616a21c_fk_kzhd_pricemethod_id` FOREIGN KEY (`price_method_id`) REFERENCES `kzhd_pricemethod` (`id`),
  CONSTRAINT `kzhd_order_ship_address_id_402a642d_fk_kzhd_shipaddress_id` FOREIGN KEY (`ship_address_id`) REFERENCES `kzhd_shipaddress` (`id`),
  CONSTRAINT `kzhd_order_shipping_address_id_c707966a_fk_kzhd_ship` FOREIGN KEY (`shipping_address_id`) REFERENCES `kzhd_shippingaddress` (`id`),
  CONSTRAINT `kzhd_order_truck_model_type_id_dfa8e57c_fk_kzhd_truc` FOREIGN KEY (`truck_model_type_id`) REFERENCES `kzhd_truckmodeltype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_order`
--

LOCK TABLES `kzhd_order` WRITE;
/*!40000 ALTER TABLE `kzhd_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_ordercargotype`
--

DROP TABLE IF EXISTS `kzhd_ordercargotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_ordercargotype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_ordercargotype`
--

LOCK TABLES `kzhd_ordercargotype` WRITE;
/*!40000 ALTER TABLE `kzhd_ordercargotype` DISABLE KEYS */;
INSERT INTO `kzhd_ordercargotype` VALUES (1,'普货',0),(2,'冷链',0),(3,'轻抛',0),(4,'贵重',0),(5,'危险',0),(6,'大件',0),(7,'重货',0),(8,'药品',0);
/*!40000 ALTER TABLE `kzhd_ordercargotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_othercost`
--

DROP TABLE IF EXISTS `kzhd_othercost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_othercost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `cost_value` decimal(9,2) NOT NULL,
  `cost_remark` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_othercost_customer_id_5242f619_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_othercost_order_id_2df14e78_fk_kzhd_order_id` (`order_id`),
  KEY `kzhd_othercost_partner_id_35ccb15c_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_othercost_customer_id_5242f619_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_othercost_order_id_2df14e78_fk_kzhd_order_id` FOREIGN KEY (`order_id`) REFERENCES `kzhd_order` (`id`),
  CONSTRAINT `kzhd_othercost_partner_id_35ccb15c_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_othercost`
--

LOCK TABLES `kzhd_othercost` WRITE;
/*!40000 ALTER TABLE `kzhd_othercost` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_othercost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_othermaintain`
--

DROP TABLE IF EXISTS `kzhd_othermaintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_othermaintain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_othermaintain_partner_id_64bf89de_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_othermaintain_truck_id_c8080783_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_othermaintain_fill_name_id_ee5e567a_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_othermaintain_maintain_time_aba0b92e` (`maintain_time`),
  CONSTRAINT `kzhd_othermaintain_fill_name_id_ee5e567a_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_othermaintain_partner_id_64bf89de_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_othermaintain_truck_id_c8080783_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_othermaintain`
--

LOCK TABLES `kzhd_othermaintain` WRITE;
/*!40000 ALTER TABLE `kzhd_othermaintain` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_othermaintain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_owntruck`
--

DROP TABLE IF EXISTS `kzhd_owntruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_owntruck` (
  `truck_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`truck_ptr_id`),
  CONSTRAINT `kzhd_owntruck_truck_ptr_id_ec65d949_fk_kzhd_truck_id` FOREIGN KEY (`truck_ptr_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_owntruck`
--

LOCK TABLES `kzhd_owntruck` WRITE;
/*!40000 ALTER TABLE `kzhd_owntruck` DISABLE KEYS */;
INSERT INTO `kzhd_owntruck` VALUES (1),(3),(5),(6),(7),(8);
/*!40000 ALTER TABLE `kzhd_owntruck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_partner`
--

DROP TABLE IF EXISTS `kzhd_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `partner_name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `contact_name` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact_phone` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `legal_person` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `legal_person_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `business_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `operation_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `tax_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `company_size` int(11) DEFAULT NULL,
  `fail_reason` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `other_reason` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_id` (`address_id`),
  KEY `kzhd_partner_updator_id_b1776812_fk_auth_user_id` (`updator_id`),
  KEY `kzhd_partner_creator_id_09feb155_fk_auth_user_id` (`creator_id`),
  KEY `kzhd_partner_partner_name_0dd998e0` (`partner_name`),
  CONSTRAINT `kzhd_partner_address_id_641fe43f_fk_kzhd_address_id` FOREIGN KEY (`address_id`) REFERENCES `kzhd_address` (`id`),
  CONSTRAINT `kzhd_partner_creator_id_09feb155_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `kzhd_partner_updator_id_b1776812_fk_auth_user_id` FOREIGN KEY (`updator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_partner`
--

LOCK TABLES `kzhd_partner` WRITE;
/*!40000 ALTER TABLE `kzhd_partner` DISABLE KEYS */;
INSERT INTO `kzhd_partner` VALUES (1,'2020-10-15 17:34:12.538156','2020-10-15 17:34:12.538290',0,'new','找找物流公司',NULL,'13911223344',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kzhd_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_partnercustomerthrough`
--

DROP TABLE IF EXISTS `kzhd_partnercustomerthrough`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_partnercustomerthrough` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `assign_date` date DEFAULT NULL,
  `settlement_day` int(11) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_partnercustomer_customer_id_b24e88c1_fk_kzhd_cust` (`customer_id`),
  KEY `kzhd_partnercustomer_partner_id_05245e69_fk_kzhd_part` (`partner_id`),
  CONSTRAINT `kzhd_partnercustomer_customer_id_b24e88c1_fk_kzhd_cust` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_partnercustomer_partner_id_05245e69_fk_kzhd_part` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_partnercustomerthrough`
--

LOCK TABLES `kzhd_partnercustomerthrough` WRITE;
/*!40000 ALTER TABLE `kzhd_partnercustomerthrough` DISABLE KEYS */;
INSERT INTO `kzhd_partnercustomerthrough` VALUES (1,'2020-10-15 20:00:00.004949','2020-10-15 20:00:00.005013',NULL,NULL,0,1,1),(2,'2020-10-19 16:28:29.169662','2020-10-19 16:28:29.169726','2020-10-07',3,0,2,1);
/*!40000 ALTER TABLE `kzhd_partnercustomerthrough` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_partnerstaff`
--

DROP TABLE IF EXISTS `kzhd_partnerstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_partnerstaff` (
  `generalprofile_ptr_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `department` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`generalprofile_ptr_id`),
  KEY `kzhd_partnerstaff_partner_id_13ccae58_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_partnerstaff_generalprofile_ptr_i_bbe9d7aa_fk_kzhd_gene` FOREIGN KEY (`generalprofile_ptr_id`) REFERENCES `kzhd_generalprofile` (`id`),
  CONSTRAINT `kzhd_partnerstaff_partner_id_13ccae58_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_partnerstaff`
--

LOCK TABLES `kzhd_partnerstaff` WRITE;
/*!40000 ALTER TABLE `kzhd_partnerstaff` DISABLE KEYS */;
INSERT INTO `kzhd_partnerstaff` VALUES (1,1,'运营',1),(11,2,'22',1),(12,2,'111',1),(14,2,'运营',1),(15,1,'不知道',1),(18,2,'运营',1),(19,2,'运营',1),(21,1,'11',1),(23,2,'销售',1);
/*!40000 ALTER TABLE `kzhd_partnerstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_platformstaff`
--

DROP TABLE IF EXISTS `kzhd_platformstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_platformstaff` (
  `generalprofile_ptr_id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_platformstaff_generalprofile_ptr_i_13e9b9d3_fk_kzhd_gene` FOREIGN KEY (`generalprofile_ptr_id`) REFERENCES `kzhd_generalprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_platformstaff`
--

LOCK TABLES `kzhd_platformstaff` WRITE;
/*!40000 ALTER TABLE `kzhd_platformstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_platformstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricebaseinfo`
--

DROP TABLE IF EXISTS `kzhd_pricebaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricebaseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_volume` decimal(6,3) NOT NULL,
  `start_weight` decimal(6,3) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricebaseinfo_customer_id_558ac826_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_pricebaseinfo_partner_id_768e9a84_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_pricebaseinfo_customer_id_558ac826_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_pricebaseinfo_partner_id_768e9a84_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricebaseinfo`
--

LOCK TABLES `kzhd_pricebaseinfo` WRITE;
/*!40000 ALTER TABLE `kzhd_pricebaseinfo` DISABLE KEYS */;
INSERT INTO `kzhd_pricebaseinfo` VALUES (1,991.000,999.000,1,1),(2,0.000,0.000,2,1);
/*!40000 ALTER TABLE `kzhd_pricebaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricemethod`
--

DROP TABLE IF EXISTS `kzhd_pricemethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricemethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `price_type` int(11) NOT NULL,
  `cargo_weight` decimal(6,3) NOT NULL,
  `cargo_volume` decimal(6,3) NOT NULL,
  `cargo_packages_number` int(10) unsigned NOT NULL,
  `cargo_model_truck_times` int(10) unsigned NOT NULL,
  `cargo_mileage_truck_times` int(10) unsigned NOT NULL,
  `cargo_mileage_number` decimal(9,2) NOT NULL,
  `price_mileage_id` int(11) DEFAULT NULL,
  `price_packages_number_id` int(11) DEFAULT NULL,
  `price_truck_time_id` int(11) DEFAULT NULL,
  `price_volume_id` int(11) DEFAULT NULL,
  `price_weight_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricemethod_price_mileage_id_414886cd_fk_kzhd_pric` (`price_mileage_id`),
  KEY `kzhd_pricemethod_price_packages_numbe_7528d4c6_fk_kzhd_pric` (`price_packages_number_id`),
  KEY `kzhd_pricemethod_price_truck_time_id_3c1f3bf3_fk_kzhd_pric` (`price_truck_time_id`),
  KEY `kzhd_pricemethod_price_volume_id_105b7b54_fk_kzhd_pricevolume_id` (`price_volume_id`),
  KEY `kzhd_pricemethod_price_weight_id_8ecb611f_fk_kzhd_priceweight_id` (`price_weight_id`),
  CONSTRAINT `kzhd_pricemethod_price_mileage_id_414886cd_fk_kzhd_pric` FOREIGN KEY (`price_mileage_id`) REFERENCES `kzhd_pricemileage` (`id`),
  CONSTRAINT `kzhd_pricemethod_price_packages_numbe_7528d4c6_fk_kzhd_pric` FOREIGN KEY (`price_packages_number_id`) REFERENCES `kzhd_pricepackagesnumber` (`id`),
  CONSTRAINT `kzhd_pricemethod_price_truck_time_id_3c1f3bf3_fk_kzhd_pric` FOREIGN KEY (`price_truck_time_id`) REFERENCES `kzhd_pricetrucktime` (`id`),
  CONSTRAINT `kzhd_pricemethod_price_volume_id_105b7b54_fk_kzhd_pricevolume_id` FOREIGN KEY (`price_volume_id`) REFERENCES `kzhd_pricevolume` (`id`),
  CONSTRAINT `kzhd_pricemethod_price_weight_id_8ecb611f_fk_kzhd_priceweight_id` FOREIGN KEY (`price_weight_id`) REFERENCES `kzhd_priceweight` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricemethod`
--

LOCK TABLES `kzhd_pricemethod` WRITE;
/*!40000 ALTER TABLE `kzhd_pricemethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_pricemethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricemileage`
--

DROP TABLE IF EXISTS `kzhd_pricemileage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricemileage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `crate_length` double NOT NULL,
  `load_capacity` double NOT NULL,
  `start_mileage` double NOT NULL,
  `start_price` decimal(9,2) NOT NULL,
  `extra_price` decimal(9,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `truck_model_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricemileage_customer_id_cae3ab6c_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_pricemileage_partner_id_ad99b3e3_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_pricemileage_truck_model_type_id_9d943f9b_fk_kzhd_truc` (`truck_model_type_id`),
  CONSTRAINT `kzhd_pricemileage_customer_id_cae3ab6c_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_pricemileage_partner_id_ad99b3e3_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_pricemileage_truck_model_type_id_9d943f9b_fk_kzhd_truc` FOREIGN KEY (`truck_model_type_id`) REFERENCES `kzhd_truckmodeltype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricemileage`
--

LOCK TABLES `kzhd_pricemileage` WRITE;
/*!40000 ALTER TABLE `kzhd_pricemileage` DISABLE KEYS */;
INSERT INTO `kzhd_pricemileage` VALUES (1,'2020-10-19 15:17:44.757652','2020-10-19 15:39:20.204267',1,2,11,20,2.00,2.00,1,1,1),(2,'2020-10-19 15:37:10.290196','2020-10-19 15:37:10.290357',0,2,2,2,2.00,2.00,1,1,3),(3,'2020-10-19 17:29:00.283353','2020-10-19 17:29:00.283497',0,2,3,4,4.00,4.00,2,1,3);
/*!40000 ALTER TABLE `kzhd_pricemileage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricepackagesnumber`
--

DROP TABLE IF EXISTS `kzhd_pricepackagesnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricepackagesnumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `shipping_forth_receive_cost` decimal(9,2) NOT NULL,
  `cargo_category_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `ship_address_id` int(11) NOT NULL,
  `shipping_area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricepackagesnu_cargo_category_id_1b35a53f_fk_kzhd_carg` (`cargo_category_id`),
  KEY `kzhd_pricepackagesnu_customer_id_a92f1b4b_fk_kzhd_cust` (`customer_id`),
  KEY `kzhd_pricepackagesnumber_partner_id_73d2d11a_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_pricepackagesnu_ship_address_id_612154e1_fk_kzhd_ship` (`ship_address_id`),
  KEY `kzhd_pricepackagesnu_shipping_area_id_cc43d7d2_fk_kzhd_ship` (`shipping_area_id`),
  CONSTRAINT `kzhd_pricepackagesnu_cargo_category_id_1b35a53f_fk_kzhd_carg` FOREIGN KEY (`cargo_category_id`) REFERENCES `kzhd_cargocategory` (`id`),
  CONSTRAINT `kzhd_pricepackagesnu_customer_id_a92f1b4b_fk_kzhd_cust` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_pricepackagesnu_ship_address_id_612154e1_fk_kzhd_ship` FOREIGN KEY (`ship_address_id`) REFERENCES `kzhd_shipaddress` (`id`),
  CONSTRAINT `kzhd_pricepackagesnu_shipping_area_id_cc43d7d2_fk_kzhd_ship` FOREIGN KEY (`shipping_area_id`) REFERENCES `kzhd_shippingarea` (`id`),
  CONSTRAINT `kzhd_pricepackagesnumber_partner_id_73d2d11a_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricepackagesnumber`
--

LOCK TABLES `kzhd_pricepackagesnumber` WRITE;
/*!40000 ALTER TABLE `kzhd_pricepackagesnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_pricepackagesnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricetrucktime`
--

DROP TABLE IF EXISTS `kzhd_pricetrucktime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricetrucktime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `shipping_forth_receive_cost` decimal(9,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `ship_address_id` int(11) NOT NULL,
  `shipping_area_id` int(11) NOT NULL,
  `truck_model_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricetrucktime_customer_id_ac4b6827_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_pricetrucktime_partner_id_2e822801_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_pricetrucktime_ship_address_id_7b845c2a_fk_kzhd_ship` (`ship_address_id`),
  KEY `kzhd_pricetrucktime_shipping_area_id_0b3e58d4_fk_kzhd_ship` (`shipping_area_id`),
  KEY `kzhd_pricetrucktime_truck_model_category_e2ade82d_fk_kzhd_truc` (`truck_model_category_id`),
  CONSTRAINT `kzhd_pricetrucktime_customer_id_ac4b6827_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_pricetrucktime_partner_id_2e822801_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_pricetrucktime_ship_address_id_7b845c2a_fk_kzhd_ship` FOREIGN KEY (`ship_address_id`) REFERENCES `kzhd_shipaddress` (`id`),
  CONSTRAINT `kzhd_pricetrucktime_shipping_area_id_0b3e58d4_fk_kzhd_ship` FOREIGN KEY (`shipping_area_id`) REFERENCES `kzhd_shippingarea` (`id`),
  CONSTRAINT `kzhd_pricetrucktime_truck_model_category_e2ade82d_fk_kzhd_truc` FOREIGN KEY (`truck_model_category_id`) REFERENCES `kzhd_truckmodelcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricetrucktime`
--

LOCK TABLES `kzhd_pricetrucktime` WRITE;
/*!40000 ALTER TABLE `kzhd_pricetrucktime` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_pricetrucktime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_pricevolume`
--

DROP TABLE IF EXISTS `kzhd_pricevolume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_pricevolume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `shipping_forth_receive_cost` decimal(9,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `ship_address_id` int(11) NOT NULL,
  `shipping_area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_pricevolume_customer_id_116500b3_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_pricevolume_partner_id_07c099cf_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_pricevolume_ship_address_id_5bace7e3_fk_kzhd_shipaddress_id` (`ship_address_id`),
  KEY `kzhd_pricevolume_shipping_area_id_07ecb6a3_fk_kzhd_ship` (`shipping_area_id`),
  CONSTRAINT `kzhd_pricevolume_customer_id_116500b3_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_pricevolume_partner_id_07c099cf_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_pricevolume_ship_address_id_5bace7e3_fk_kzhd_shipaddress_id` FOREIGN KEY (`ship_address_id`) REFERENCES `kzhd_shipaddress` (`id`),
  CONSTRAINT `kzhd_pricevolume_shipping_area_id_07ecb6a3_fk_kzhd_ship` FOREIGN KEY (`shipping_area_id`) REFERENCES `kzhd_shippingarea` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_pricevolume`
--

LOCK TABLES `kzhd_pricevolume` WRITE;
/*!40000 ALTER TABLE `kzhd_pricevolume` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_pricevolume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_priceweight`
--

DROP TABLE IF EXISTS `kzhd_priceweight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_priceweight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `shipping_forth_receive_cost` decimal(9,2) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `ship_address_id` int(11) NOT NULL,
  `shipping_area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_priceweight_customer_id_b086e9a4_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_priceweight_partner_id_4110bf43_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_priceweight_ship_address_id_fccf9837_fk_kzhd_shipaddress_id` (`ship_address_id`),
  KEY `kzhd_priceweight_shipping_area_id_e4f45362_fk_kzhd_ship` (`shipping_area_id`),
  CONSTRAINT `kzhd_priceweight_customer_id_b086e9a4_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_priceweight_partner_id_4110bf43_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_priceweight_ship_address_id_fccf9837_fk_kzhd_shipaddress_id` FOREIGN KEY (`ship_address_id`) REFERENCES `kzhd_shipaddress` (`id`),
  CONSTRAINT `kzhd_priceweight_shipping_area_id_e4f45362_fk_kzhd_ship` FOREIGN KEY (`shipping_area_id`) REFERENCES `kzhd_shippingarea` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_priceweight`
--

LOCK TABLES `kzhd_priceweight` WRITE;
/*!40000 ALTER TABLE `kzhd_priceweight` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_priceweight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_province`
--

DROP TABLE IF EXISTS `kzhd_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_province` (
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_province`
--

LOCK TABLES `kzhd_province` WRITE;
/*!40000 ALTER TABLE `kzhd_province` DISABLE KEYS */;
INSERT INTO `kzhd_province` VALUES ('2020-10-15 17:32:05.748782','2020-10-15 17:32:05.750410',0,'110000','北京市'),('2020-10-15 17:32:05.806758','2020-10-15 17:32:05.807078',0,'120000','天津市'),('2020-10-15 17:32:05.869572','2020-10-15 17:32:05.869816',0,'130000','河北省'),('2020-10-15 17:32:05.950351','2020-10-15 17:32:05.950628',0,'140000','山西省'),('2020-10-15 17:32:05.998381','2020-10-15 17:32:05.998980',0,'150000','内蒙古自治区'),('2020-10-15 17:32:06.055923','2020-10-15 17:32:06.056160',0,'210000','辽宁省'),('2020-10-15 17:32:06.095546','2020-10-15 17:32:06.095999',0,'220000','吉林省'),('2020-10-15 17:32:06.130561','2020-10-15 17:32:06.130795',0,'230000','黑龙江省'),('2020-10-15 17:32:06.165361','2020-10-15 17:32:06.165452',0,'310000','上海市'),('2020-10-15 17:32:06.198950','2020-10-15 17:32:06.199064',0,'320000','江苏省'),('2020-10-15 17:32:06.237766','2020-10-15 17:32:06.238022',0,'330000','浙江省'),('2020-10-15 17:32:06.274341','2020-10-15 17:32:06.274520',0,'340000','安徽省'),('2020-10-15 17:32:06.306412','2020-10-15 17:32:06.306533',0,'350000','福建省'),('2020-10-15 17:32:06.339078','2020-10-15 17:32:06.339272',0,'360000','江西省'),('2020-10-15 17:32:06.413217','2020-10-15 17:32:06.414243',0,'370000','山东省'),('2020-10-15 17:32:06.455121','2020-10-15 17:32:06.455297',0,'410000','河南省'),('2020-10-15 17:32:06.530130','2020-10-15 17:32:06.530689',0,'420000','湖北省'),('2020-10-15 17:32:06.574720','2020-10-15 17:32:06.574935',0,'430000','湖南省'),('2020-10-15 17:32:06.669952','2020-10-15 17:32:06.670950',0,'440000','广东省'),('2020-10-15 17:32:06.726592','2020-10-15 17:32:06.726929',0,'450000','广西壮族自治区'),('2020-10-15 17:32:06.804463','2020-10-15 17:32:06.805462',0,'460000','海南省'),('2020-10-15 17:32:06.847084','2020-10-15 17:32:06.847350',0,'500000','重庆市'),('2020-10-15 17:32:06.885583','2020-10-15 17:32:06.886397',0,'510000','四川省'),('2020-10-15 17:32:06.931598','2020-10-15 17:32:06.932208',0,'520000','贵州省'),('2020-10-15 17:32:06.973928','2020-10-15 17:32:06.974148',0,'530000','云南省'),('2020-10-15 17:32:07.008985','2020-10-15 17:32:07.009091',0,'540000','西藏自治区'),('2020-10-15 17:32:07.084346','2020-10-15 17:32:07.084538',0,'610000','陕西省'),('2020-10-15 17:32:07.117398','2020-10-15 17:32:07.117481',0,'620000','甘肃省'),('2020-10-15 17:32:07.169517','2020-10-15 17:32:07.169927',0,'630000','青海省'),('2020-10-15 17:32:07.208848','2020-10-15 17:32:07.208977',0,'640000','宁夏回族自治区'),('2020-10-15 17:32:07.254828','2020-10-15 17:32:07.254908',0,'650000','新疆维吾尔自治区'),('2020-10-15 17:32:07.287970','2020-10-15 17:32:07.288093',0,'710000','台湾'),('2020-10-15 17:32:07.318256','2020-10-15 17:32:07.318298',0,'810000','香港'),('2020-10-15 17:32:07.354117','2020-10-15 17:32:07.354238',0,'820000','澳门');
/*!40000 ALTER TABLE `kzhd_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_renewalinsurance`
--

DROP TABLE IF EXISTS `kzhd_renewalinsurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_renewalinsurance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `site` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_renewalinsurance_partner_id_87404c83_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_renewalinsurance_truck_id_dfd3459c_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_renewalinsuranc_fill_name_id_db04e49e_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_renewalinsurance_maintain_time_fa28e483` (`maintain_time`),
  CONSTRAINT `kzhd_renewalinsuranc_fill_name_id_db04e49e_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_renewalinsurance_partner_id_87404c83_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_renewalinsurance_truck_id_dfd3459c_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_renewalinsurance`
--

LOCK TABLES `kzhd_renewalinsurance` WRITE;
/*!40000 ALTER TABLE `kzhd_renewalinsurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_renewalinsurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_roadbridgecharge`
--

DROP TABLE IF EXISTS `kzhd_roadbridgecharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_roadbridgecharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `bill_no` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_roadbridgecharge_partner_id_bd17dac7_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_roadbridgecharge_truck_id_0a254680_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_roadbridgecharg_fill_name_id_8a13b887_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_roadbridgecharge_maintain_time_c3b0f5d4` (`maintain_time`),
  CONSTRAINT `kzhd_roadbridgecharg_fill_name_id_8a13b887_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_roadbridgecharge_partner_id_bd17dac7_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_roadbridgecharge_truck_id_0a254680_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_roadbridgecharge`
--

LOCK TABLES `kzhd_roadbridgecharge` WRITE;
/*!40000 ALTER TABLE `kzhd_roadbridgecharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_roadbridgecharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_routeaddress`
--

DROP TABLE IF EXISTS `kzhd_routeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_routeaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `route_cost` decimal(9,2) NOT NULL,
  `route_order` smallint(5) unsigned NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_routeaddress_customer_id_a42ae682_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_routeaddress_order_id_46cd797f_fk_kzhd_order_id` (`order_id`),
  KEY `kzhd_routeaddress_partner_id_65b28a15_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_routeaddress_shipping_address_id_e90b1682_fk_kzhd_ship` (`shipping_address_id`),
  CONSTRAINT `kzhd_routeaddress_customer_id_a42ae682_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_routeaddress_order_id_46cd797f_fk_kzhd_order_id` FOREIGN KEY (`order_id`) REFERENCES `kzhd_order` (`id`),
  CONSTRAINT `kzhd_routeaddress_partner_id_65b28a15_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_routeaddress_shipping_address_id_e90b1682_fk_kzhd_ship` FOREIGN KEY (`shipping_address_id`) REFERENCES `kzhd_shippingaddress` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_routeaddress`
--

LOCK TABLES `kzhd_routeaddress` WRITE;
/*!40000 ALTER TABLE `kzhd_routeaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_routeaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_shipaddress`
--

DROP TABLE IF EXISTS `kzhd_shipaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_shipaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `detailed_address` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `full_address` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ship_address_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `city_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `county_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `province_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `shipping_area_name` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_shipaddress_city_id_0f887930_fk_kzhd_city_id` (`city_id`),
  KEY `kzhd_shipaddress_county_id_51240d00_fk_kzhd_county_id` (`county_id`),
  KEY `kzhd_shipaddress_customer_id_9bbe0a9d_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_shipaddress_partner_id_f1173c7c_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_shipaddress_province_id_3d0381a7_fk_kzhd_province_id` (`province_id`),
  CONSTRAINT `kzhd_shipaddress_city_id_0f887930_fk_kzhd_city_id` FOREIGN KEY (`city_id`) REFERENCES `kzhd_city` (`id`),
  CONSTRAINT `kzhd_shipaddress_county_id_51240d00_fk_kzhd_county_id` FOREIGN KEY (`county_id`) REFERENCES `kzhd_county` (`id`),
  CONSTRAINT `kzhd_shipaddress_customer_id_9bbe0a9d_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_shipaddress_partner_id_f1173c7c_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_shipaddress_province_id_3d0381a7_fk_kzhd_province_id` FOREIGN KEY (`province_id`) REFERENCES `kzhd_province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_shipaddress`
--

LOCK TABLES `kzhd_shipaddress` WRITE;
/*!40000 ALTER TABLE `kzhd_shipaddress` DISABLE KEYS */;
INSERT INTO `kzhd_shipaddress` VALUES (1,'2020-10-20 10:13:38.260664','2020-10-20 11:06:33.448604',0,29.57965,106.544295,'13636363636','1363','观音桥街道北城天街37-2号',NULL,'重庆江北区','500100','500105',2,1,'500000','重庆江北区'),(2,'2020-10-20 10:28:13.887883','2020-10-20 11:23:20.122479',0,29.559151,106.583132,'13689596968','王明','解放碑街道新华路86附17号',NULL,'重庆渝中发货地址','500100','500103',2,1,'500000','重庆渝中商圈'),(3,'2020-10-20 10:29:08.721537','2020-10-20 11:23:58.595354',0,29.548874,106.546062,'13636363636','1366','菜园坝街道菜袁路36附19号',NULL,'渝中区的商圈2','500100','500103',2,1,'500000','2');
/*!40000 ALTER TABLE `kzhd_shipaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_shippingaddress`
--

DROP TABLE IF EXISTS `kzhd_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_shippingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `detailed_address` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `full_address` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `shipping_area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_shippingaddress_customer_id_4d591b84_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_shippingaddress_partner_id_86997bab_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_shippingaddress_shipping_area_id_6be1fd52_fk_kzhd_ship` (`shipping_area_id`),
  CONSTRAINT `kzhd_shippingaddress_customer_id_4d591b84_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_shippingaddress_partner_id_86997bab_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_shippingaddress_shipping_area_id_6be1fd52_fk_kzhd_ship` FOREIGN KEY (`shipping_area_id`) REFERENCES `kzhd_shippingarea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_shippingaddress`
--

LOCK TABLES `kzhd_shippingaddress` WRITE;
/*!40000 ALTER TABLE `kzhd_shippingaddress` DISABLE KEYS */;
INSERT INTO `kzhd_shippingaddress` VALUES (1,'2020-10-16 10:14:15.941825','2020-10-16 10:14:15.942060',0,1,1,'13200000000','111','江北观音桥',NULL,1,1,1);
/*!40000 ALTER TABLE `kzhd_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_shippingarea`
--

DROP TABLE IF EXISTS `kzhd_shippingarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_shippingarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `shipping_area_type` int(11) NOT NULL,
  `shipping_area_name` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `city_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `county_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `province_id` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_shippingarea_city_id_acd3b6ea_fk_kzhd_city_id` (`city_id`),
  KEY `kzhd_shippingarea_county_id_9189588b_fk_kzhd_county_id` (`county_id`),
  KEY `kzhd_shippingarea_customer_id_9f1b74ac_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_shippingarea_partner_id_f5004599_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_shippingarea_province_id_16a3fc79_fk_kzhd_province_id` (`province_id`),
  CONSTRAINT `kzhd_shippingarea_city_id_acd3b6ea_fk_kzhd_city_id` FOREIGN KEY (`city_id`) REFERENCES `kzhd_city` (`id`),
  CONSTRAINT `kzhd_shippingarea_county_id_9189588b_fk_kzhd_county_id` FOREIGN KEY (`county_id`) REFERENCES `kzhd_county` (`id`),
  CONSTRAINT `kzhd_shippingarea_customer_id_9f1b74ac_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_shippingarea_partner_id_f5004599_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_shippingarea_province_id_16a3fc79_fk_kzhd_province_id` FOREIGN KEY (`province_id`) REFERENCES `kzhd_province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_shippingarea`
--

LOCK TABLES `kzhd_shippingarea` WRITE;
/*!40000 ALTER TABLE `kzhd_shippingarea` DISABLE KEYS */;
INSERT INTO `kzhd_shippingarea` VALUES (1,'2020-10-16 10:11:44.104811','2020-10-16 10:11:44.104856',0,2,'江北','500100',NULL,1,1,'500000');
/*!40000 ALTER TABLE `kzhd_shippingarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_team`
--

DROP TABLE IF EXISTS `kzhd_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `freight_order` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_team_partner_id_15f7f83a_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_team_leader_id_5a7e9822_fk_kzhd_driv` (`leader_id`),
  CONSTRAINT `kzhd_team_leader_id_5a7e9822_fk_kzhd_driv` FOREIGN KEY (`leader_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_team_partner_id_15f7f83a_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_team`
--

LOCK TABLES `kzhd_team` WRITE;
/*!40000 ALTER TABLE `kzhd_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_templateteam`
--

DROP TABLE IF EXISTS `kzhd_templateteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_templateteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `team_name` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_templateteam_partner_id_7ce807c0_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_templateteam_leader_id_b28d9552_fk_kzhd_driv` (`leader_id`),
  CONSTRAINT `kzhd_templateteam_leader_id_b28d9552_fk_kzhd_driv` FOREIGN KEY (`leader_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_templateteam_partner_id_7ce807c0_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_templateteam`
--

LOCK TABLES `kzhd_templateteam` WRITE;
/*!40000 ALTER TABLE `kzhd_templateteam` DISABLE KEYS */;
INSERT INTO `kzhd_templateteam` VALUES (1,'2020-10-16 11:02:53.513730','2020-10-19 09:31:55.102588',1,'q1111',1,NULL),(2,'2020-10-16 11:14:58.512227','2020-10-16 14:02:27.268728',1,'444',1,NULL),(3,'2020-10-16 14:02:49.547370','2020-10-16 14:07:00.729899',1,'3333',1,NULL),(4,'2020-10-16 14:03:26.588028','2020-10-19 09:31:59.070955',1,'在增加一个',1,NULL),(5,'2020-10-16 14:18:08.993434','2020-10-19 09:42:38.739339',1,'333',1,NULL),(6,'2020-10-16 18:05:26.139792','2020-10-19 09:31:40.432730',1,'22',1,NULL),(7,'2020-10-16 18:14:09.714647','2020-10-16 18:34:03.585260',1,'111',1,NULL),(8,'2020-10-19 09:43:46.169187','2020-10-19 09:44:23.508952',1,'333',1,NULL),(9,'2020-10-19 09:45:34.021097','2020-10-19 09:45:50.166348',1,'222',1,NULL),(10,'2020-10-19 09:46:15.727942','2020-10-19 09:46:42.393970',1,'999',1,NULL),(11,'2020-10-19 09:46:53.233470','2020-10-19 09:48:13.031833',1,'9999',1,NULL),(12,'2020-10-19 11:08:11.623263','2020-10-20 10:19:12.282663',0,'第一个车队',1,13),(13,'2020-10-19 11:08:52.418864','2020-11-30 15:23:42.821904',0,'第二个车队',1,8);
/*!40000 ALTER TABLE `kzhd_templateteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_templateteam_drivers`
--

DROP TABLE IF EXISTS `kzhd_templateteam_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_templateteam_drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateteam_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kzhd_templateteam_driver_templateteam_id_driver_i_86c8a159_uniq` (`templateteam_id`,`driver_id`),
  KEY `kzhd_templateteam_dr_driver_id_453d39b5_fk_kzhd_driv` (`driver_id`),
  CONSTRAINT `kzhd_templateteam_dr_driver_id_453d39b5_fk_kzhd_driv` FOREIGN KEY (`driver_id`) REFERENCES `kzhd_driver` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_templateteam_dr_templateteam_id_9547a64e_fk_kzhd_temp` FOREIGN KEY (`templateteam_id`) REFERENCES `kzhd_templateteam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_templateteam_drivers`
--

LOCK TABLES `kzhd_templateteam_drivers` WRITE;
/*!40000 ALTER TABLE `kzhd_templateteam_drivers` DISABLE KEYS */;
INSERT INTO `kzhd_templateteam_drivers` VALUES (13,3,4),(39,12,10),(40,12,13),(41,13,8);
/*!40000 ALTER TABLE `kzhd_templateteam_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truck`
--

DROP TABLE IF EXISTS `kzhd_truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `plate_number` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `vin` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL,
  `check_date` date DEFAULT NULL,
  `insurance_date` date DEFAULT NULL,
  `annual_audit_date` date DEFAULT NULL,
  `truck_license_image` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  `truck_model_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truck_truck_model_id_b2300365_fk_kzhd_truckmodel_id` (`truck_model_id`),
  KEY `kzhd_truck_partner_id_6af61525_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_truck_polymorphic_ctype_id_52926fe0_fk_django_co` (`polymorphic_ctype_id`),
  KEY `kzhd_truck_group_id_26490dca_fk_kzhd_truckgroup_id` (`group_id`),
  CONSTRAINT `kzhd_truck_group_id_26490dca_fk_kzhd_truckgroup_id` FOREIGN KEY (`group_id`) REFERENCES `kzhd_truckgroup` (`id`),
  CONSTRAINT `kzhd_truck_partner_id_6af61525_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_truck_polymorphic_ctype_id_52926fe0_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `kzhd_truck_truck_model_id_b2300365_fk_kzhd_truckmodel_id` FOREIGN KEY (`truck_model_id`) REFERENCES `kzhd_truckmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truck`
--

LOCK TABLES `kzhd_truck` WRITE;
/*!40000 ALTER TABLE `kzhd_truck` DISABLE KEYS */;
INSERT INTO `kzhd_truck` VALUES (1,'2020-10-16 11:25:07.276742','2020-10-16 16:02:50.785063',0,'渝DA3210','111','2020-10-16','2020-10-16','2020-10-16','1_YRBlx8S.jpg',1,23,2,1),(2,'2020-10-16 11:25:41.187690','2020-10-16 17:22:25.285154',0,'111','string','2020-10-16','2020-10-16','2020-10-16','',1,21,1,NULL),(3,'2020-10-16 14:24:46.047493','2020-10-16 14:24:46.047597',0,'22',NULL,'2020-10-16','2020-09-30','2020-10-08','图层_12_lKdBIwC.png',1,23,3,NULL),(4,'2020-10-16 15:36:45.118128','2020-10-16 15:37:50.042284',1,'111','string','2020-10-16','2020-10-16','2020-10-16','',1,21,1,NULL),(5,'2020-10-16 17:05:28.585768','2020-10-16 17:05:28.585817',0,'1111',NULL,'2020-10-01','2020-10-07','2020-10-02','图层_12_C4d5NNS.png',1,23,3,NULL),(6,'2020-10-16 18:17:45.478184','2020-10-16 18:17:45.478552',0,'绑定出测量2',NULL,'2020-10-08','2020-10-07','2020-10-14','图层_12_GnuNFcz.png',1,23,2,NULL),(7,'2020-10-19 09:52:41.070599','2020-10-19 09:52:41.070729',0,'1111',NULL,'2020-10-08','2020-10-08','2020-10-08','图层_12_JnaSNSF.png',1,23,4,NULL),(8,'2020-10-19 11:40:35.645346','2020-10-19 11:40:35.645461',0,'渝A123456',NULL,'2020-10-19','2020-10-19','2020-10-19','1_LJ4UeEU.jpg',1,23,7,NULL);
/*!40000 ALTER TABLE `kzhd_truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckbrand`
--

DROP TABLE IF EXISTS `kzhd_truckbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `truck_brand_name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckbrand`
--

LOCK TABLES `kzhd_truckbrand` WRITE;
/*!40000 ALTER TABLE `kzhd_truckbrand` DISABLE KEYS */;
INSERT INTO `kzhd_truckbrand` VALUES (1,'2020-10-15 20:15:03.329405','2020-10-15 20:16:23.146566',0,'车品牌1'),(2,'2020-10-19 09:36:36.335254','2020-10-19 09:36:36.335350',0,'品牌2');
/*!40000 ALTER TABLE `kzhd_truckbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckfix`
--

DROP TABLE IF EXISTS `kzhd_truckfix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckfix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `site` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truckfix_partner_id_2c2e1076_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_truckfix_truck_id_6f875593_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_truckfix_fill_name_id_336cd4f6_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_truckfix_maintain_time_1596bae6` (`maintain_time`),
  CONSTRAINT `kzhd_truckfix_fill_name_id_336cd4f6_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_truckfix_partner_id_2c2e1076_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_truckfix_truck_id_6f875593_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckfix`
--

LOCK TABLES `kzhd_truckfix` WRITE;
/*!40000 ALTER TABLE `kzhd_truckfix` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_truckfix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckgroup`
--

DROP TABLE IF EXISTS `kzhd_truckgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truckgroup_partner_id_a909f387_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_truckgroup_partner_id_a909f387_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckgroup`
--

LOCK TABLES `kzhd_truckgroup` WRITE;
/*!40000 ALTER TABLE `kzhd_truckgroup` DISABLE KEYS */;
INSERT INTO `kzhd_truckgroup` VALUES (1,'2020-10-16 11:24:58.210207','2020-10-16 11:24:58.210331',0,'车组1',1);
/*!40000 ALTER TABLE `kzhd_truckgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckmaintain`
--

DROP TABLE IF EXISTS `kzhd_truckmaintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckmaintain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `proof` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `site` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truckmaintain_partner_id_06d2f96f_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_truckmaintain_truck_id_5d77bf88_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_truckmaintain_fill_name_id_147b6771_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_truckmaintain_maintain_time_285cc79e` (`maintain_time`),
  CONSTRAINT `kzhd_truckmaintain_fill_name_id_147b6771_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_truckmaintain_partner_id_06d2f96f_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_truckmaintain_truck_id_5d77bf88_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckmaintain`
--

LOCK TABLES `kzhd_truckmaintain` WRITE;
/*!40000 ALTER TABLE `kzhd_truckmaintain` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_truckmaintain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckmodel`
--

DROP TABLE IF EXISTS `kzhd_truckmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `crate_length` double NOT NULL,
  `crate_width` double NOT NULL,
  `crate_height` double NOT NULL,
  `load_capacity` double NOT NULL,
  `other_info` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `truck_brand_id` int(11) NOT NULL,
  `truck_model_type_id` int(11) NOT NULL,
  `truck_series_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truckmodel_partner_id_f0a5afb1_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_truckmodel_truck_brand_id_5dfadfc8_fk_kzhd_truckbrand_id` (`truck_brand_id`),
  KEY `kzhd_truckmodel_truck_series_id_bea28bb0_fk_kzhd_truckseries_id` (`truck_series_id`),
  KEY `kzhd_truckmodel_truck_model_type_id_25352c54_fk_kzhd_truc` (`truck_model_type_id`),
  CONSTRAINT `kzhd_truckmodel_partner_id_f0a5afb1_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_truckmodel_truck_brand_id_5dfadfc8_fk_kzhd_truckbrand_id` FOREIGN KEY (`truck_brand_id`) REFERENCES `kzhd_truckbrand` (`id`),
  CONSTRAINT `kzhd_truckmodel_truck_model_type_id_25352c54_fk_kzhd_truc` FOREIGN KEY (`truck_model_type_id`) REFERENCES `kzhd_truckmodeltype` (`id`),
  CONSTRAINT `kzhd_truckmodel_truck_series_id_bea28bb0_fk_kzhd_truckseries_id` FOREIGN KEY (`truck_series_id`) REFERENCES `kzhd_truckseries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckmodel`
--

LOCK TABLES `kzhd_truckmodel` WRITE;
/*!40000 ALTER TABLE `kzhd_truckmodel` DISABLE KEYS */;
INSERT INTO `kzhd_truckmodel` VALUES (1,'2020-10-15 20:18:56.546302','2020-11-30 11:31:31.766831',0,0.5,2,2,2,'修改',1,1,2,1),(2,'2020-10-16 09:01:29.092839','2020-10-16 09:01:29.092918',0,1,2.5,1,120,'22',1,1,2,1),(3,'2020-10-16 14:22:08.128079','2020-10-19 10:19:56.800324',0,18,2.5,4.5,11,'11',1,1,2,1),(4,'2020-10-19 09:37:32.989323','2020-10-19 10:05:47.087337',1,0.5,0.5,0.4,0.5,'233',1,2,3,2),(5,'2020-10-19 09:38:32.587153','2020-10-19 10:05:36.494991',0,18,2.5,4.5,120,'233',1,2,3,2),(6,'2020-10-19 10:25:41.900138','2020-10-19 10:29:15.646293',0,18,2.5,4.5,120,'无',1,2,1,2),(7,'2020-10-19 10:28:15.135655','2020-10-19 10:28:41.965356',0,0.5,0.5,0.4,0.5,'233',1,2,1,2),(8,'2020-11-30 11:30:28.503440','2020-11-30 11:30:28.505280',0,18,2.5,4.5,120,'无',1,2,3,2),(9,'2020-11-30 11:31:30.565688','2020-11-30 11:31:30.565870',0,18,2.5,4.5,120,'无',1,2,3,2);
/*!40000 ALTER TABLE `kzhd_truckmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckmodelcategory`
--

DROP TABLE IF EXISTS `kzhd_truckmodelcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckmodelcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `truck_length` double NOT NULL,
  `truck_weight` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_truckmodelcategory_customer_id_f8fae832_fk_kzhd_customer_id` (`customer_id`),
  KEY `kzhd_truckmodelcategory_partner_id_81d3695d_fk_kzhd_partner_id` (`partner_id`),
  CONSTRAINT `kzhd_truckmodelcategory_customer_id_f8fae832_fk_kzhd_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `kzhd_customer` (`id`),
  CONSTRAINT `kzhd_truckmodelcategory_partner_id_81d3695d_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckmodelcategory`
--

LOCK TABLES `kzhd_truckmodelcategory` WRITE;
/*!40000 ALTER TABLE `kzhd_truckmodelcategory` DISABLE KEYS */;
INSERT INTO `kzhd_truckmodelcategory` VALUES (1,'2020-10-19 14:56:11.583867','2020-10-19 17:29:28.509738',0,4,2,1,1),(2,'2020-10-19 17:29:41.792931','2020-10-19 17:29:41.793110',0,6,60,2,1);
/*!40000 ALTER TABLE `kzhd_truckmodelcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckmodeltype`
--

DROP TABLE IF EXISTS `kzhd_truckmodeltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckmodeltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `truck_box_type` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckmodeltype`
--

LOCK TABLES `kzhd_truckmodeltype` WRITE;
/*!40000 ALTER TABLE `kzhd_truckmodeltype` DISABLE KEYS */;
INSERT INTO `kzhd_truckmodeltype` VALUES (1,'2020-10-15 17:47:33.734026','2020-10-15 17:47:33.734056',0,6,'五菱宏光'),(2,'2020-10-15 17:48:00.942754','2020-10-15 17:48:00.942784',0,1,'幻影'),(3,'2020-10-19 09:33:45.389031','2020-10-19 09:33:45.389811',0,2,'普通');
/*!40000 ALTER TABLE `kzhd_truckmodeltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_truckseries`
--

DROP TABLE IF EXISTS `kzhd_truckseries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_truckseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `truck_series_name` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_truckseries`
--

LOCK TABLES `kzhd_truckseries` WRITE;
/*!40000 ALTER TABLE `kzhd_truckseries` DISABLE KEYS */;
INSERT INTO `kzhd_truckseries` VALUES (1,'2020-10-15 20:15:32.481299','2020-10-15 20:15:32.481345',0,'车系1'),(2,'2020-10-19 09:35:19.476249','2020-10-19 09:35:19.476782',0,'车系2');
/*!40000 ALTER TABLE `kzhd_truckseries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kzhd_yearcheck`
--

DROP TABLE IF EXISTS `kzhd_yearcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kzhd_yearcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `kilometer` double NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `maintain_time` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_bin,
  `operator` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `fill_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kzhd_yearcheck_partner_id_24efe052_fk_kzhd_partner_id` (`partner_id`),
  KEY `kzhd_yearcheck_truck_id_e128437d_fk_kzhd_truck_id` (`truck_id`),
  KEY `kzhd_yearcheck_fill_name_id_4997feac_fk_kzhd_part` (`fill_name_id`),
  KEY `kzhd_yearcheck_maintain_time_a5f411d7` (`maintain_time`),
  CONSTRAINT `kzhd_yearcheck_fill_name_id_4997feac_fk_kzhd_part` FOREIGN KEY (`fill_name_id`) REFERENCES `kzhd_partnerstaff` (`generalprofile_ptr_id`),
  CONSTRAINT `kzhd_yearcheck_partner_id_24efe052_fk_kzhd_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `kzhd_partner` (`id`),
  CONSTRAINT `kzhd_yearcheck_truck_id_e128437d_fk_kzhd_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `kzhd_truck` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kzhd_yearcheck`
--

LOCK TABLES `kzhd_yearcheck` WRITE;
/*!40000 ALTER TABLE `kzhd_yearcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `kzhd_yearcheck` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 16:09:26
