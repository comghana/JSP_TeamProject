-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airflying
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airline_info`
--

DROP TABLE IF EXISTS `airline_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airline_info` (
  `name` varchar(20) NOT NULL,
  `file` varchar(15) DEFAULT 'noairline.jpg',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airline_info`
--

LOCK TABLES `airline_info` WRITE;
/*!40000 ALTER TABLE `airline_info` DISABLE KEYS */;
INSERT INTO `airline_info` VALUES ('노스웨스트항공','nwa.png'),('대한항공','koreanair.png'),('델타항공','delta.png'),('라오항공','lao.png'),('럭키항공','noairline.jpg'),('루프트한자항공(독일항공)','lufthansa.png'),('루프트한자화물항공(독일화물항공)','lufthansa.png'),('몽골항공','mongol.png'),('바닐라항공','noairline.jpg'),('베트남항공','vietnam.png'),('부흥항공','noairline.jpg'),('북경수도항공','noairline.jpg'),('블라디보스톡항공','noairline.jpg'),('비엣젯항공','vietjet.png'),('비즈니스에어','noairline.jpg'),('사천항공','sacheon.png'),('산동항공','sandong.png'),('상해항공','shanghai.png'),('세부퍼시픽항공','cebupacific.png'),('스카이스타','noairline.jpg'),('스카이앙코르항공','noairline.jpg'),('스타플라이어항공','noairline.jpg'),('실크에어','noairline.jpg'),('싱가폴항공','singapore.png'),('아시아나항공','asiana.png'),('야쿠티아항공','noairline.jpg'),('에바항공(장영항공)','evaair.png'),('에어마카오','noairline.jpg'),('에어부산','airbusan.png'),('에어서울','airseoul.png'),('에어아시아엑스','noairline.jpg'),('에어필립','noairline.jpg'),('영남에어','noairline.jpg'),('오로라항공','noairline.jpg'),('오케이항공','noairline.jpg'),('원동항공','noairline.jpg'),('이스타항공','estarjet.png'),('이스트아시아에어라인','noairline.jpg'),('이즈니스항공','noairline.jpg'),('일본항공','noairline.jpg'),('전일본항공','ana.png'),('제주항공','jejuair.png'),('제트아시아항공','noairline.jpg'),('젯스타퍼시픽항공','noairline.jpg'),('중국국제항공','noairline.jpg'),('중국길상항공(준야오항공)','noairline.jpg'),('중국남방항공','noairline.jpg'),('중국동방항공','noairline.jpg'),('중국심천항공','noairline.jpg'),('중국하이난항공','noairline.jpg'),('중화항공','noairline.jpg'),('진에어','jinair.png'),('천진항공','noairline.jpg'),('춘추항공','noairline.jpg'),('케세이드래곤항공','dragonair.png'),('코리아익스프레스에어','noairline.jpg'),('타이거에어 타이완','noairline.jpg'),('타이항공','thai.png'),('티웨이항공','tway.png'),('팬퍼시픽항공','panp.png'),('플라이강원','noairline.jpg'),('피치항공','peach.png'),('필리핀에어아시아','noairline.jpg'),('필리핀항공','philippine.png'),('하문항공','noairline.jpg'),('홍콩익스프레스','hke.png');
/*!40000 ALTER TABLE `airline_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10  4:27:35
