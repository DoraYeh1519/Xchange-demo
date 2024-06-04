-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `blogpost`
--

DROP TABLE IF EXISTS `blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogpost` (
  `blogpost_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `upload_date` varchar(250) NOT NULL,
  `body` text,
  `views` int NOT NULL DEFAULT '0',
  `author_id` int NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `likes` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogpost_id`,`author_id`),
  KEY `author_idx` (`author_id`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogpost`
--

LOCK TABLES `blogpost` WRITE;
/*!40000 ALTER TABLE `blogpost` DISABLE KEYS */;
INSERT INTO `blogpost` VALUES (12,'Our First Post!','June 03, 2024','<p><strong>Welcome to Xchange !!!</strong></p>\r\n\r\n<p>This is a platform for exchange students to communicate with each other.</p>\r\n\r\n<p>We will provide more information about the exchange or platform in this account, please stay tuned!</p>\r\n\r\n<p><strong><a href=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fcoming-soon&amp;psig=AOvVaw2QGgTz9M8_2Wd0ce2zY34i&amp;ust=1717601917505000&amp;source=images&amp;cd=vfe&amp;opi=89978449&amp;ved=0CBIQjRxqFwoTCJDIkuOjwoYDFQAAAAAdAAAAABAI\"><img alt=\"\" src=\"https://img.freepik.com/free-vector/abstract-coming-soon-halftone-style-background-design_1017-27282.jpg\" style=\"height:300px; width:450px\" /></a></strong></p>\r\n',64,1,'https://img.freepik.com/free-photo/energetic-dance-floor-with-people-celebrating-birthday_1268-30665.jpg?size=626&ext=jpg&ga=GA1.1.1518270500.1717372800&semt=sph',1),(14,'Hi','June 03, 2024','<p>Hello</p>\r\n',79,111306000,'https://i.etsystatic.com/29488153/r/il/e0f22b/3860244894/il_fullxfull.3860244894_p9az.jpg',0),(15,'This is my new posts!','June 04, 2024','<p>This is my first post with my friend!</p>\r\n',34,111306120,'https://images.unsplash.com/photo-1715509790057-a44470a63cc2?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',0),(16,'Introduction of OIC!','June 04, 2024','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Internationalization has been one of the endeavors of National Chengchi University (NCCU). As a result, the Center of International Education and Exchange (IEE) was established in 2004, which later became the Office of International Cooperation (OIC). Under the leadership of the first director of the Center, Dr. Yeh-Yun Lin, numerous goals were set, which included increasing the quantity and quality of English-taught courses and programs at NCCU, creating an international learning environment, and expanding international student and faculty exchange.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In 2006, Dr. Shu-Heng Chen took over the leadership of IEE. Under his guidance and management, IEE/OIC has continued to carry forward and enhance the goals and ideals of globalization. In 2012/2013 academic year, the total numbers of NCCU&rsquo;s university level partners have been increased to over 260, the total numbers of incoming and outgoing exchange students have been increased to 1,000 each year, and there are over 500 degree seeking international students at NCCU.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In order to receive and manage the large number of international students, extensive efforts have been developed to create an &nbsp;international environment, e.g. the establishment of over 600 English taught courses, Chinese language teaching, numerous social, cultural, and academic activities to service foreign students. In addition, OIC has initiated programs to encourage Faculty Ambassador and Faculty/Researcher Exchange.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What&rsquo;s driven the OIC leader and staff to initiate and continue to develop this endeavor is the strong sense of vision and mission - to benefit students and faculty to expand their global academic and cultural horizon, and to provide opportunities for them to be trained as valuable social leaders and global citizens. The numbers of exchange activities may continue to vary, but the unity of vision and mission will never waiver.</p>\r\n',3,1,'https://yt3.googleusercontent.com/AMHUUNI2DntbSJXUtWfB18Yu0KsFDw7jsgq07QBaI_q-oIR8JmKv_rsDRb5OVfxMD5Zff-CJ=s900-c-k-c0x00ffffff-no-rj',0);
/*!40000 ALTER TABLE `blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment_time` varchar(250) DEFAULT NULL,
  `comment` text,
  `anonymous` tinyint NOT NULL,
  PRIMARY KEY (`comment_id`,`user_id`,`post_id`),
  KEY `cUser_id_idx` (`user_id`),
  KEY `cBlog_id_idx` (`post_id`),
  CONSTRAINT `Cpost_id` FOREIGN KEY (`post_id`) REFERENCES `blogpost` (`blogpost_id`),
  CONSTRAINT `Cuser_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtag` (
  `hashtag_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `totoal_views` int NOT NULL,
  PRIMARY KEY (`hashtag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incoming_user`
--

DROP TABLE IF EXISTS `incoming_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incoming_user` (
  `incoming_user_id` int NOT NULL,
  `origin_school` varchar(250) NOT NULL,
  `continent` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `region` varchar(250) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`incoming_user_id`),
  CONSTRAINT `incoming_user_id` FOREIGN KEY (`incoming_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoming_user`
--

LOCK TABLES `incoming_user` WRITE;
/*!40000 ALTER TABLE `incoming_user` DISABLE KEYS */;
INSERT INTO `incoming_user` VALUES (111306120,'UCLA','americas','USA','NewYork','Hey');
/*!40000 ALTER TABLE `incoming_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `keyword_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outgoing_user`
--

DROP TABLE IF EXISTS `outgoing_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outgoing_user` (
  `outgoing_user_id` int NOT NULL,
  `exchanging_school` varchar(250) NOT NULL,
  `continent` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `region` varchar(250) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`outgoing_user_id`),
  CONSTRAINT `outgoing_user_id` FOREIGN KEY (`outgoing_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outgoing_user`
--

LOCK TABLES `outgoing_user` WRITE;
/*!40000 ALTER TABLE `outgoing_user` DISABLE KEYS */;
INSERT INTO `outgoing_user` VALUES (111306000,'NCCU','asia','Taiwan','Taipei','Welcome to my profile!');
/*!40000 ALTER TABLE `outgoing_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `put`
--

DROP TABLE IF EXISTS `put`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `put` (
  `blog_id` int NOT NULL,
  `hashtag_id` int NOT NULL,
  `upload_date` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`,`hashtag_id`),
  KEY `pHastag_id_idx` (`hashtag_id`),
  CONSTRAINT `pBlog_id` FOREIGN KEY (`blog_id`) REFERENCES `blogpost` (`blogpost_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pHastag_id` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtag` (`hashtag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `put`
--

LOCK TABLES `put` WRITE;
/*!40000 ALTER TABLE `put` DISABLE KEYS */;
/*!40000 ALTER TABLE `put` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `react`
--

DROP TABLE IF EXISTS `react`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `react` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`),
  KEY `rBlog_id_idx` (`post_id`),
  CONSTRAINT `Rpost_id` FOREIGN KEY (`post_id`) REFERENCES `blogpost` (`blogpost_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Ruser_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `react`
--

LOCK TABLES `react` WRITE;
/*!40000 ALTER TABLE `react` DISABLE KEYS */;
INSERT INTO `react` VALUES (1,12);
/*!40000 ALTER TABLE `react` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagged_user`
--

DROP TABLE IF EXISTS `tagged_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagged_user` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`),
  KEY `Tpost_id_idx` (`post_id`),
  CONSTRAINT `Tpost_id` FOREIGN KEY (`post_id`) REFERENCES `blogpost` (`blogpost_id`),
  CONSTRAINT `Tuser_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagged_user`
--

LOCK TABLES `tagged_user` WRITE;
/*!40000 ALTER TABLE `tagged_user` DISABLE KEYS */;
INSERT INTO `tagged_user` VALUES (1,12),(111306000,14),(111306000,15);
/*!40000 ALTER TABLE `tagged_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_img_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Xchange Official','dorayeh011093@gmail.com','pbkdf2:sha256:600000$1e2Kgps2$48b1d9accb5674b9010a3549a3aeccbe58d204c59ab972616c856589b8d45b18','..\\static\\uploads\\depositphotos_320055112-stock-illustration-x-icon-vector-illustration-design.jpg'),(111306000,'王曉明','321@gmail.com','pbkdf2:sha256:600000$7SrQFYxo$155ee01afeef08dfb55d9fbee7c60f625a93fe88857a875935006e8e80068495','..\\static\\uploads\\depositphotos_20077545-stock-illustration-stick-man-cartoon.jpg'),(111306120,'林一二','012@gmail.com','pbkdf2:sha256:600000$hpB9y1Om$ca4232f29691eaa54a450e9425fe1f918501f028371569f8fa685b00faaedc97',NULL);
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

-- Dump completed on 2024-06-05  1:05:18
