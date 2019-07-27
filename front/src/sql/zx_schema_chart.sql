-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: zx_schema
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chart`
--

DROP TABLE IF EXISTS `chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chart` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `dataType` varchar(45) NOT NULL,
  `count` varchar(45) NOT NULL DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chart`
--

LOCK TABLES `chart` WRITE;
/*!40000 ALTER TABLE `chart` DISABLE KEYS */;
INSERT INTO `chart` VALUES (1,'brain','0',NULL),(2,'brainF','0',NULL),(3,'test','6','猫'),(4,'testF1','1','狗'),(5,'testF2','5','猴'),(6,'redBook','1','皮筋'),(7,'baoHan','1','爆汗服'),(8,'compony','1','创业'),(9,'run','1','跑团'),(10,'drive','1','教练我想学开车'),(11,'guiyi','5','教练我想皈依'),(12,'xuqiu','2','教练我想给你加需求'),(13,'xiong','1','教练怎么练胸'),(14,'free','1','教练你有freestyle吗'),(15,'dance','2','教练我想学街舞'),(16,'bei','1','教练怎么练背'),(17,'year','3','year！body'),(18,'code','1','讲下代码吧'),(19,'luan','2','健身房乱吗'),(25,'xianchang','1','教练我建议你听下自己的现场'),(26,'caixukun','1','唱 跳 rap 篮球'),(27,'xiuxian','1','体悟天道 潜心修仙'),(28,'xiongmao','1','一丝不挂 引体向上'),(29,'maicai','1','陪妈妈买菜 并加入一些sauce'),(30,'bili','1','约好朋友 练习摔跤');
/*!40000 ALTER TABLE `chart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-27 14:44:55
