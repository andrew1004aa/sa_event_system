-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: db_events
-- ------------------------------------------------------
-- Server version	8.0.40
DROP DATABASE IF EXISTS db_events;
CREATE DATABASE db_events;
use db_events;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `registered_count` int DEFAULT '0',
  `capacity` int NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `organizer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_organizer` (`organizer_id`),
  CONSTRAINT `fk_organizer` FOREIGN KEY (`organizer_id`) REFERENCES `organizer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'資源循環斷捨離，簡單生活護身心 - 研習','https://i.pinimg.com/736x/08/3c/bf/083cbf3ea9b531a00aee9296ceb1343e.jpg','2025-04-25','08:00:00','12:00:00','中台資源科技有限公司',153,500,'了解人類對地球與環境所造成的傷害，以及大自然可能會有的反噬','2024-12-16 06:23:17','2024-12-18 20:36:06',1),(2,'【職涯中心企業導師計劃】– 第七屆期末成果展暨第八屆招生宣傳','https://i.pinimg.com/736x/97/98/3c/97983cb8cc6c356c5a567a0803b23fc0.jpg','2024-12-25','09:00:00','11:00:00','教研大樓北棟1樓活動空間',27,100,'📌第七屆期末成果展：來自不同系所的學生，在本計畫中與各專業領域的企業導師結成師徒關係，透過「師徒制、手把手」的教學模式，展開為期一學期的深度學習與指導。各組學生在導師的引領下，不僅獲得專業技能的提升，更累積了寶貴的實務經驗。第七屆活動成果豐碩，學生們將分享學習心得與成長歷程，邀請您一起見證他們的精彩表現！     📌第八屆企業導師計畫招生宣傳：由擔任企業高階主管的學長姐擔任導師帶領學生，提供實習、求職及生涯規劃等各項職涯活動，並且深入認識企業文化，累積實戰訓練經驗，培養其進入社會前之職場軟硬實力。當日會於現場公告第八屆重要時程以及申請辦法，建議有興趣報名下一屆的你非來不可！','2024-12-16 06:23:17','2024-12-18 20:36:06',2),(3,'資料掌握術：研究生圖書館資源運用','https://i.pinimg.com/736x/66/ea/6b/66ea6bf7904c4389f26f1e71a12c4796.jpg','2024-12-30','12:00:00','15:00:00','線上課程',74,200,'本講座將分享如何運用圖書館資源，輕鬆找到、整理和分析學術文獻。','2024-12-16 06:23:17','2024-12-18 20:36:06',3),(4,'【地科院週會】李家維：《五洲尋奇—我的榔頭之旅》','https://i.pinimg.com/736x/de/42/50/de4250445ff63fd99645258eb5f3329a.jpg','2024-11-30','12:00:00','13:00:00','中央大學科一館2樓秉文堂',96,99,'12/17(二)10:00【地科院週會】，我們邀請到了國際知名的清華大學侯金堆講座教授李家維  教授 為我們演講，請大家幫忙宣傳，屆時一起來共襄盛舉唷!','2024-12-16 06:23:17','2024-12-18 20:36:06',4),(5,'【學生】國立中央大學地球科學學院 新任院長候選人與本院教職員生 座談會','https://i.pinimg.com/736x/96/96/3c/96963c10028745aeee12586f2722fac7.jpg','2024-12-01','08:00:00','13:00:00','科一館S123會議室',210,210,'一、座談時間： 113年12月19日（星期四）二、座談地點：科一館S123會議室  三、主    席：綦振瀛副校長  四、出席人員：本院教職員生自由報名，因場地限制，錄取40名(備取10名)，以教研人員優先 ','2024-12-16 06:23:17','2024-12-18 20:36:06',5),(6,'2024《跨域自主學習聯展-創新無界限.等你來挑戰》','https://i.pinimg.com/736x/57/dd/03/57dd03807bb577cb116e7309c56fde9d.jpg','2024-12-25','08:00:00','15:00:00','教研大樓一樓',17,50,'為鼓勵學生自主學習，中大規劃眾多跨域學習課程聯展，其中包含培育跨域數位科技應用人才為主軸「微學程」，以及學生自主打造課程內容的「微課程」 、具有跨域學習創新的「 社群團隊」、通識中心創新學分學程下之AI、創意、社會參與學生團隊以及今年新加入教學創新學生團隊作品。    本學期擴大舉辦「跨域自主學習」聯合成果展，一次向您展現學本校生無窮創意，此次成果展有多組學生團隊在活動中呈現學習成果，本次共約有42組學生團隊成果+2組行政團隊闖關集章活動以及簡報競賽，歡迎全校師生一起參與學生跨域成果展，是您今年決定不能錯過的創意展，一定要來報名參加優。     ','2024-12-16 06:23:17','2024-12-18 20:36:06',6),(7,'【博士生】114學年度「學科能力測驗」中壢考區監試人力','https://i.pinimg.com/736x/cd/65/f6/cd65f668994b56ce408dba952e4625fd.jpg','2025-04-25','08:00:00','13:00:00','中大壢中、育達高中',17,20,'本次開放自由報名，依報名次序錄取，額滿為止，請於報名前詳讀下列注意事項：  一、大學入學考試中心(以下簡稱大考中心)主辦各項考試聘任之監試人員，工作時間係為短期專案工作，未達7日，無一例一休及調移例假日相關問題，具勞保身分者，將由大考中心統一加保，勞保自付額統一由監試工作費扣除。 二、 本考試一律由網路報名，「報名人數」僅為序號排序，原則上依「報名次序」錄取，有監考經驗者優先，本校將依實際情況做最後調整安排。確定名單將於114年1月6日(一)前以簡訊及email告知。超過需求之人數列為候補，如有需要將於考前另行個別通知。  ','2024-12-16 06:23:17','2024-12-18 20:36:06',7),(8,'【2024年12月份 CPAS諮詢】一對一解測','https://i.pinimg.com/736x/5f/30/dd/5f30dd9e794a5a509398b45cd38274c2.jpg','2024-12-01','08:00:00','11:00:00','C2-430 (文學院二館)',205,210,'ＣＰＡＳ測驗：具象化你的天賦獨特性，發掘自身的強項與適配的職場領域。','2024-12-16 06:23:17','2024-12-18 20:36:06',8);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizer`
--

DROP TABLE IF EXISTS `organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `organizer` varchar(255) NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizer`
--

LOCK TABLES `organizer` WRITE;
/*!40000 ALTER TABLE `organizer` DISABLE KEYS */;
INSERT INTO `organizer` VALUES (1,'學生事務處諮商輔導中心','viva@cc.ncu.edu.tw'),(2,'學生事務處職涯發展中心','chiyujie28@g.ncu.edu.tw'),(3,'圖書館推廣服務組','wenhsinlin@ncu.edu.tw'),(4,'地球科學學院','sfchiang@ncu.edu.tw'),(5,'地球科學學院','yuhsien@ncu.edu.tw'),(6,'教務處課務組','som526@cc.ncu.edu.tw'),(7,'人事室第二組','sss23816@ncu.edu.tw'),(8,'學生事務處職涯發展中心','chiyujie28@g.ncu.edu.tw');
/*!40000 ALTER TABLE `organizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `event_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'123@gmail.com'),(1,'julie4037yang@gmail.com'),(4,'will71102@gmail.com'),(3,'yutang09270927@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-19  4:53:10
