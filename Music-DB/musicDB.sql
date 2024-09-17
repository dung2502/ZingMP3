-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: music-web
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` bigint NOT NULL AUTO_INCREMENT,
  `cover_image_url` varchar(255) DEFAULT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `provide` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Flt.jpg?alt=media&token=99bd3734-7f2b-4c2a-b1c1-32e897ab38d9','2024-08-16 12:01:39.006924','M-TP Entertainment','M-TP'),(2,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fnnca.jpg?alt=media&token=88ec183c-225d-43ca-b592-758a01d19612','2024-08-16 15:45:20.617463','M-TP Entertainment','Nơi này có anh'),(3,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Ftvvn.jpg?alt=media&token=f943556d-2cbb-4a9f-83c0-7daca26694c4','2024-08-18 10:28:39.233922','LOOPS Music','Thịnh Vượng Việt Nam Sáng Ngời'),(4,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Floveyourselt.jpg?alt=media&token=9bdc43b6-5037-4da2-b371-fa670b6d4aaf','2024-08-23 10:30:42.330283','Universal','Love YourSelf'),(5,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=45e0637c-c16e-4077-8338-ef1a3dfbb796','2024-08-23 10:49:27.873677','My Music','Top songs: Lyly'),(6,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fnguoilaoi.jpg?alt=media&token=c6eb353f-0e2d-41c7-9e8b-b460a0c10a75','2024-08-24 14:55:22.784785','My Music','Người Lạ Ơi');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `APP_ROLE_UK` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_ASSISTANT'),(3,'ROLE_LISTENER');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_users`
--

DROP TABLE IF EXISTS `app_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `account_non_expired` bit(1) DEFAULT NULL,
  `account_non_locked` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `credentials_non_expired` bit(1) DEFAULT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `APP_USER_UK` (`email`),
  UNIQUE KEY `APP_USER_CODE_UK` (`user_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_users`
--

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;
INSERT INTO `app_users` VALUES (1,_binary '',_binary '',NULL,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fbabydoll2.jfif?alt=media&token=fe3d07bd-3710-46f8-9621-ef86e6a32556',_binary '',NULL,NULL,'admin@gmail.com',_binary '','Admin',NULL,'$2a$10$tSD7Nc6QCmhjZtLCugMCPeoAoEO/uEF9l4wilOUpz4xtjKlnwY0Xy',NULL,NULL),(2,_binary '',_binary '',NULL,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fbabydoll2.jfif?alt=media&token=fe3d07bd-3710-46f8-9621-ef86e6a32556',_binary '','2024-08-28 10:29:06.364927',NULL,'dvkhang49@gmail.com',_binary '','Văn Khang',NULL,'$2a$10$TDRid7cAFGmPLs7XpdKiDO1DiOMdX76Z8y9qTmGVn7tHi7.mHjnwe',NULL,'CU0001'),(3,_binary '',_binary '',NULL,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fsweater4.jfif?alt=media&token=2f155e76-1cbb-4b39-a602-f101e97f9efd',_binary '','2024-08-29 13:56:58.240129',NULL,'hoantt@gmail.com',_binary '','User1',NULL,'$2a$10$tSD7Nc6QCmhjZtLCugMCPeoAoEO/uEF9l4wilOUpz4xtjKlnwY0Xy',NULL,'CU0002'),(4,_binary '',_binary '',NULL,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Favatar.png?alt=media&token=abd25f8e-4a98-4e4e-9461-d08304d3051b',_binary '','2024-08-31 09:31:48.385922',NULL,'dvkhang4920@gmail.com',_binary '','Người dùng A',NULL,'$2a$10$YeV67v1qEqOpjAnrmY8L4OeK6feRkiRUHLvuhi1i0NQYNgMdrUp0a',NULL,'8QDRQ');
/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_album`
--

DROP TABLE IF EXISTS `artist_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_album` (
  `artist_id` bigint NOT NULL,
  `album_id` bigint NOT NULL,
  PRIMARY KEY (`album_id`,`artist_id`),
  KEY `FKpwqiyb8664n75tgd8al75cfkp` (`artist_id`),
  CONSTRAINT `FKct2a6ek3bfsc7tpnewtrojj8t` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `FKpwqiyb8664n75tgd8al75cfkp` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_album`
--

LOCK TABLES `artist_album` WRITE;
/*!40000 ALTER TABLE `artist_album` DISABLE KEYS */;
INSERT INTO `artist_album` VALUES (1,1),(1,2),(2,4),(5,5),(6,5),(7,5),(8,5),(8,6),(9,6),(10,3);
/*!40000 ALTER TABLE `artist_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_genre`
--

DROP TABLE IF EXISTS `artist_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_genre` (
  `artist_id` bigint NOT NULL,
  `genre_id` bigint NOT NULL,
  PRIMARY KEY (`artist_id`,`genre_id`),
  KEY `FK268c3w1s4sl33koktykvsys7s` (`genre_id`),
  CONSTRAINT `FK268c3w1s4sl33koktykvsys7s` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `FKq0okm9v81nfuren3e5y1i8dng` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_genre`
--

LOCK TABLES `artist_genre` WRITE;
/*!40000 ALTER TABLE `artist_genre` DISABLE KEYS */;
INSERT INTO `artist_genre` VALUES (1,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(2,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(8,10),(1,12);
/*!40000 ALTER TABLE `artist_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_song`
--

DROP TABLE IF EXISTS `artist_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_song` (
  `song_id` bigint NOT NULL,
  `artist_id` bigint NOT NULL,
  PRIMARY KEY (`artist_id`,`song_id`),
  KEY `FKdy69dl8vgiqo44907796eudrf` (`song_id`),
  CONSTRAINT `FKdy69dl8vgiqo44907796eudrf` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `FKl73d51pnpjhpwvedu7v94orky` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_song`
--

LOCK TABLES `artist_song` WRITE;
/*!40000 ALTER TABLE `artist_song` DISABLE KEYS */;
INSERT INTO `artist_song` VALUES (1,1),(2,1),(3,10),(4,1),(5,1),(6,2),(7,3),(7,4),(8,5),(8,6),(9,5),(9,7),(10,5),(10,6),(11,5),(12,5),(12,6),(13,5),(13,8),(14,8),(14,9);
/*!40000 ALTER TABLE `artist_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` bigint NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `biography` text,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Sơn Tùng M-TP','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2FS%C6%A1n%20T%C3%B9ng%20M-TP.jpg?alt=media&token=ce235092-fcc2-490d-8426-a4c12e3e68f9','<p>Thanh Tùng bắt đầu chơi nhạc từ cấp ba với nghệ danh M-TP và được biết đến với \"Cơn Mưa Ngang Qua\".</p><p>Năm 2012, anh đậu thủ khoa Nhạc viện TPHCM và ký hợp đồng với Văn Production, đổi nghệ danh sang Sơn Tùng M-TP.</p><p>Từ 2013 đến 2015, anh có nhiều bản hit như \"Em Của Ngày Hôm Qua\", \"Nắng Ấm Xa Dần\"...</p><p>Năm 2015, anh rời khỏi công ty cũ và gia nhập WePro, tổ chức minishow đầu tiên \"M-TP and Friends\".</p><p>Năm 2017, anh rời khỏi WePro để thành lập M-TP Entertainment, ra mắt \"Lạc Trôi\" và \"Nơi Này Có Anh\". Anh ra mắt album đầu tay \"m-tp M-TP\".</p><p>Năm 2018 anh ra mắt \"Chạy Ngay Đi\" và \"Hãy Trao Cho Anh\" năm 2019. Cả hai bài hát đều trở thành hit. Đặc biệt \"Hãy Trao Cho Anh\" kết hợp với Snopp Dogg đã đưa tên tuổi anh ra thế giới.</p><p><br></p>'),(2,'Justin Beiber','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2FjustinBeiber.jpg?alt=media&token=e16d52b1-fcde-44ac-973d-9877c761911a','<p>Justin Bieber tên khai sinh là Justin Drew Bieber, sinh ngày 1 tháng 3 năm 1994. Anh là một ca sĩ nhạc Pop/R&amp;B người Canada. Những clip của anh được Scooter Braun xem tại Youtube, hiện nay ông là quản lí của Justin Bieber. Braun và Justin đã đến Atlanta, Georgia để thảo luận với Usher. Anh là dự án đầu nối giữa Braun và Usher được gọi là Raymond-Braun Music Group, sau đó là L.A. Reid và Island Def Jam. Đĩa đơn đầu tiên của anh là One Time đã phát hành vào hè năm 2009, được lọt vào bảng xếp hạng 30 trong 10 quốc gia và nằm trong album đầu tiên My World ra mắt công chúng vào ngày 17-11-2009, nhận được nhiều lời khen từ RIAA, nơi đã đưa Justin lên đỉnh cao nhất của các nghệ sĩ mới trong năm. Bản thu đầy đủ đầu tiên của anh My World 2.0 đã được ra mắt vào ngày 23-3-2010 và được giới thiệu qua hit Baby. Anh sẽ bắt tay vào tour đầu tiên của minh có tên là My World Tour vào hè 2010. Justin Bieber còn là ngôi sao hot nhất của năm 2009 của tạp chí J-14, nghệ sĩ mới của năm do MuchMusic (một kênh truyền hình âm nhac của Canada bằng tiếng Anh) bình chọn và là 1 trong Top 10 ngôi sao trên Youtube của thập niên 2000 theo danh sách của Celebuzz.</p>'),(3,'Cường Seven','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2FCuonSeven.jpg?alt=media&token=b88fcc85-299d-4a08-a826-18574df78abf','<p>Cường Seven sinh năm 1989 tên thật là Nguyễn Việt Cường. Cường từng tốt nghiệp trường Cao Đẳng công nghệ thông tin. Hiện là dancer của công ty giải trí Sacred. Các giải thưởng Cường Seven từng đạt được: Giải nhất Hiphop tour 2007. Giải nhất Vũ điệu trẻ VTC 2008 Nhất Hiphop in the city 2008 Giải 3 solo Hiphop freestyle 2008</p>'),(4,'SooBin','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2FSooBin.jpg?alt=media&token=a78c88d0-d293-40aa-bde7-cb29423e0e4f','<p>Soobin Hoàng Sơn (tên thật Nguyễn Hoàng Sơn, sinh ngày 10/09/1992) là một ca sỹ, nhạc sỹ, rapper ở Việt Nam.</p><p>Sau khi đoạt ngôi á quân Ngôi sao Việt 2014 và để lại dấu ấn riêng với giải Bạc chung cuộc tại The Remix mùa hai, Soobin Hoàng Sơn bắt đầu tập trung cho con đường ca hát chuyên nghiệp.</p><p>Từ trước đến nay, giọng ca sinh năm 1992 theo đuổi dòng nhạc RnB và có chỗ đứng nhất định trên thị trường nhạc Việt. Dù vậy, phải đợi đến khi rẽ lối hát pop ballad, vào tháng 10/2016, anh mới có ca khúc \'hit\' đầu tiên trong sự nghiệp, \'Phía sau một cô gái, do nhạc sĩ Tiên Cookie sáng tác. Ca khúc nhanh chóng tạo được cơn sốt và được cộng đồng đón nhận, hưởng ứng nhiệt tình.</p><p>Tiếp nối thành công của bản hot \'Phía Sau Một Cô Gái\', Soobin tiếp tục cho ra mắt thêm những sản phẩm âm nhạc đầy chất lượng trong năm 2017: Đi Để Trở Về, Đi Và Yêu, Anh Đã Quen Với Cô Đơn.</p>'),(5,'Lyly','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Flyly.jpg?alt=media&token=e007c2b3-13a4-4fce-bba3-b25e56465844','<p>Lyly tên đầy đủ là Nguyễn Hoàng Ly.</p><p><br></p><p>Lyly từng là thành viên của nhóm nhạc Hello Yellow. Năm 2018, cô tham gia cuộc thi Sing My Song nhưng không giành được thành tích cao. Sau cuộc thi, cô không ra mắt sản phẩm nào mà chỉ cover những ca khúc nổi tiếng.</p><p><br></p><p>Đến tháng 11 năm 2018, cô debut bằng ca khúc mang màu sắc R&amp;B \"24h\" kết hợp cùng Magazine. Ca khúc lan tỏa trong cộng đồng yêu nhạc.</p><p><br></p><p>Tháng 7 năm 2019, cô trở lại với \"Không Yêu Đừng Gây Thương Nhớ\" cùng Karik, sau đó là \"Yêu Ai Phải Nói\" vào Lễ Tình Nhân năm 2020 cùng với Quang Hùng MasterD và Hằng BingBoong.</p><p><br></p><p>Ngoài ra, LyLy còn có khả năng sáng tác. Cô là tác giả của các ca khúc hit như \"Anh Nhà Ở Đâu Thế\", \"Đen Đá Không Đường\" của AMEE, \"Không Sao Mà Em Đây Rồi\" của Suni Hạ Linh.</p>'),(6,'Anh Tú','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fanhtu.jpg?alt=media&token=3421d41e-901d-497e-b9ae-ed331abe6cc9','<p>\'Không giống ai\' - đây chính là ấn tượng đầu tiên mà khán giả Giọng Hát Việt 2017 ghi nhớ sau màn trình diễn của Anh Tú trong tập 1 vừa lên sóng. Với một chút quậy phá, \'ngông ngông\', gương mặt điển trai cùng phong cách phóng khoáng, chàng hot boy sinh năm 1992 nhanh chóng khiến các HLV chú ý cùng bấm nút quay lại.</p><p><br></p><p>Khi mà Anh Tú xác định thi \'The Voice\' năm nay thì anh đã định hướng là mình sẽ tham gia vào làng giải trí. Từ trước đến nay, dòng nhạc mà Anh Tú theo đuổi không phải là dòng nhạc nhẹ mà là nhạc thính phòng nhưng mà về sau thì anh cảm nhận được mình thích dòng nhạc nhẹ hơn. Anh Tú thích Funky, R&amp;B... các thứ.</p>'),(7,'HIEUTHUHAI','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fhieuthu2.jpg?alt=media&token=34a8d820-3ea9-406b-ac94-c080fb973996','<p>HIEUTHUHAI tên đầy đủ là Trần Minh Hiếu.</p><p><br></p><p>Hiện đang là sinh viên Đại học Bách Khoa TP. Hồ Chí Minh. Trong làng rap, Hiếu lấy nghệ danh là HIEUTHUHAI (Hiếu Thứ Hai) vì ngày xưa ở trong lớp có tận 2 bạn tên Hiếu, Minh Hiếu học \"tệ hơn\" nên tự đặt biệt danh cho mình là Hiếu Thứ Hai.</p>'),(8,'Karik','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fkarik.jpg?alt=media&token=bb4fbc10-30ed-4f69-bf8d-e6d9330a2531','<p>Xuất thân: Bboy</p><p>Tính tình: Đối với bạn bè hơi giống con nít, hòa đồng, gặp đúng đối tượng thì nói chuyện không bao giờ ngừng</p><p>Thích: ăn Seafood soup và tất cả đồ ăn mom nấu, thích ăn canh rong biển</p><p>Ghét: nhiều không kể hết</p><p>Thói quen: lang thang 1 mình bắt buộc phải có ipod bất kể đi bộ hay đi xe</p><p>Về phong cách ăn mặc: Càng đơn giản càng tốt \'Simple is da best\'</p><p>Cách sống: Với gia đình đó là nơi tao lun tỏ lòng thành kính dù họ có mắng tao ra sao, với anh em tao sống hết mình và với chính mình tao không bao giờ tự lừa dối bản thân</p><p>Tại sao đến với rap: Đôi khi thấy mình tự kỷ nặng nhưng không cần người tâm sự (rap like talking to myself)</p><p>Tại sao những bài Rap luôn có cái nhìn tiêu cực.</p>'),(9,'Orange','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2FOrange.jpg?alt=media&token=dbc14aaa-f6e8-4e6b-b689-81d2971bd328','<p>Nữ nghệ sĩ có nghệ danh Orange, hay nhiều người vẫn gọi cô theo cách đáng yêu là Cam, có tên thật là Khương Hoàn Mỹ. Một tiết lộ thú vị đến từ “người lạ” Orange, cô nàng chính là một fan không-phải-dạng-mềm của nhóm nhạc EXID. Bật mí thêm, cô nàng sinh năm 1996 từng là cựu học sinh trường THPT chuyên Lê Hồng Phong (TP.HCM), thậm chí còn xuất sắc đạt giải Ba cuộc thi Học sinh giỏi Quốc gia môn Tiếng Anh.</p><p><br></p><p>Trên thực tế, Orange không hề là “người lạ” khi cô từng được biết đến với tư cách là học trò của đội Hồ Ngọc Hà tại chương trình X-Fator: Nhân Tố Bí Ẩn 2014. Cô nàng sở hữu giọng hát nội lực, truyền cảm và một bản năng âm nhạc không-phải-dạng-vừa. Tuy nhiên, Khương Hoàn Mỹ phải dừng chân ở Top 12 do cá tính âm nhạc chưa thực sự thuyết phục được số đông.</p><p><br></p><p>Năm 2016, cô gái cung Bảo Bình tiếp tục “tham chiến” ở cuộc thi Ai Tỏa Sáng nhưng lần này với một diện mạo mới hơn, mạnh mẽ hơn và có phần trưởng thành hơn. Cô được gọi vui là “bản sao” của Taylor Swift khi trình bày các hit của “The Old Taylor” như Love Story, We Are Never Getting Back Together và Safe And Sound vô cùng “ngọt”.v.v</p>'),(10,'Bùi Trường Linh','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fbuitruonglinh.jpg?alt=media&token=f675095f-18b3-4270-9159-8cb4ce26c249','');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_dislike`
--

DROP TABLE IF EXISTS `comment_dislike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_dislike` (
  `emotion_id` bigint NOT NULL,
  PRIMARY KEY (`emotion_id`),
  CONSTRAINT `FKhk6swly2rtathaf7ij5v6ifv7` FOREIGN KEY (`emotion_id`) REFERENCES `comment_emotion` (`emotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_dislike`
--

LOCK TABLES `comment_dislike` WRITE;
/*!40000 ALTER TABLE `comment_dislike` DISABLE KEYS */;
INSERT INTO `comment_dislike` VALUES (40);
/*!40000 ALTER TABLE `comment_dislike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_emotion`
--

DROP TABLE IF EXISTS `comment_emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_emotion` (
  `emotion_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `comment_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`emotion_id`),
  KEY `FKosnaxx0p81o1lgxp8anv75uu6` (`comment_id`),
  KEY `FKe7d0tpya7xohi5j3l1cox5ar3` (`user_id`),
  CONSTRAINT `FKe7d0tpya7xohi5j3l1cox5ar3` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`),
  CONSTRAINT `FKosnaxx0p81o1lgxp8anv75uu6` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_emotion`
--

LOCK TABLES `comment_emotion` WRITE;
/*!40000 ALTER TABLE `comment_emotion` DISABLE KEYS */;
INSERT INTO `comment_emotion` VALUES (27,'2024-08-31 19:07:03.188967',90,2),(34,'2024-08-31 19:30:41.759451',90,3),(36,'2024-08-31 19:30:52.617820',90,4),(38,'2024-08-31 19:42:03.313423',91,4),(39,'2024-08-31 19:42:12.042239',93,4),(40,'2024-08-31 19:42:56.468715',76,4),(41,'2024-09-02 15:26:34.667333',24,2),(42,'2024-09-04 13:39:56.231181',53,2);
/*!40000 ALTER TABLE `comment_emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_haha`
--

DROP TABLE IF EXISTS `comment_haha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_haha` (
  `emotion_id` bigint NOT NULL,
  PRIMARY KEY (`emotion_id`),
  CONSTRAINT `FKqb0g9odfv6pyp0vgs4skiccy9` FOREIGN KEY (`emotion_id`) REFERENCES `comment_emotion` (`emotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_haha`
--

LOCK TABLES `comment_haha` WRITE;
/*!40000 ALTER TABLE `comment_haha` DISABLE KEYS */;
INSERT INTO `comment_haha` VALUES (34),(39),(42);
/*!40000 ALTER TABLE `comment_haha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_heart`
--

DROP TABLE IF EXISTS `comment_heart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_heart` (
  `emotion_id` bigint NOT NULL,
  PRIMARY KEY (`emotion_id`),
  CONSTRAINT `FK5vjauf2cxbfqba8q4yy0mq2wd` FOREIGN KEY (`emotion_id`) REFERENCES `comment_emotion` (`emotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_heart`
--

LOCK TABLES `comment_heart` WRITE;
/*!40000 ALTER TABLE `comment_heart` DISABLE KEYS */;
INSERT INTO `comment_heart` VALUES (27),(38),(41);
/*!40000 ALTER TABLE `comment_heart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
  `emotion_id` bigint NOT NULL,
  PRIMARY KEY (`emotion_id`),
  CONSTRAINT `FKbq788e0y7f16ly41n371i0652` FOREIGN KEY (`emotion_id`) REFERENCES `comment_emotion` (`emotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_wow`
--

DROP TABLE IF EXISTS `comment_wow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_wow` (
  `emotion_id` bigint NOT NULL,
  PRIMARY KEY (`emotion_id`),
  CONSTRAINT `FKbc02ppsv8u86boq5cipk7696x` FOREIGN KEY (`emotion_id`) REFERENCES `comment_emotion` (`emotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_wow`
--

LOCK TABLES `comment_wow` WRITE;
/*!40000 ALTER TABLE `comment_wow` DISABLE KEYS */;
INSERT INTO `comment_wow` VALUES (36);
/*!40000 ALTER TABLE `comment_wow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `parent_comment_id` bigint DEFAULT NULL,
  `song_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK7h839m3lkvhbyv3bcdv7sm4fj` (`parent_comment_id`),
  KEY `FKjss5ndgf3fog24fnj5oo19712` (`song_id`),
  KEY `FK8wyom37kc61ad0jbha24mioo8` (`user_id`),
  CONSTRAINT `FK7h839m3lkvhbyv3bcdv7sm4fj` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`comment_id`),
  CONSTRAINT `FK8wyom37kc61ad0jbha24mioo8` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`),
  CONSTRAINT `FKjss5ndgf3fog24fnj5oo19712` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Bài hát rất hay','2024-08-27 14:56:48.329299',NULL,8,2),(2,'Đồng ý','2024-08-27 14:57:48.329299',1,NULL,1),(3,'Bài hát nghe buồn quá','2024-08-28 14:57:48.329299',NULL,8,2),(4,'Good','2024-08-28 16:15:14.023043',1,NULL,2),(5,'Yes','2024-08-28 16:39:51.050364',2,NULL,2),(15,'Good','2024-08-28 17:44:41.067779',NULL,8,2),(16,'This Song\'s lyrics is so beuti','2024-08-29 14:03:24.224342',NULL,8,3),(17,'This Song\'s lyrics is so beuti','2024-08-29 14:03:24.936162',NULL,8,3),(18,'This Song\'s lyrics is so beuti','2024-08-29 14:03:25.425409',NULL,8,3),(19,'This Song\'s lyrics is so beuti','2024-08-29 14:03:25.849171',NULL,8,3),(20,'This Song\'s lyrics is so beuti','2024-08-29 14:03:26.064127',NULL,8,3),(21,'This Song\'s lyrics is so beuti','2024-08-29 14:03:26.255294',NULL,8,3),(22,'This Song\'s lyrics is so beuti','2024-08-29 14:03:31.256369',NULL,8,3),(23,'This Song\'s lyrics is so beuti','2024-08-29 14:03:32.856086',NULL,8,3),(24,'So hot','2024-08-29 14:19:08.064198',NULL,8,3),(25,'Yes','2024-08-29 14:54:16.197872',1,NULL,3),(26,'Yes','2024-08-29 14:54:47.386756',1,NULL,3),(27,'Yes','2024-08-29 14:54:49.483164',1,NULL,3),(28,'Yes','2024-08-29 14:54:50.602967',1,NULL,3),(29,'Yes','2024-08-29 14:54:51.858606',1,NULL,3),(30,'Yes','2024-08-29 14:54:52.866656',1,NULL,3),(31,'Yes','2024-08-29 14:54:53.906020',1,NULL,3),(32,'Yes','2024-08-29 15:23:50.991465',24,NULL,3),(33,'Yes','2024-08-29 15:23:57.064932',32,NULL,3),(34,'Yes','2024-08-29 15:24:06.034139',32,NULL,3),(35,'Yes','2024-08-29 15:33:04.555875',34,NULL,3),(36,'Yes','2024-08-29 15:33:30.387139',34,NULL,3),(37,'Yes','2024-08-29 15:33:31.889761',34,NULL,3),(38,'Yes','2024-08-29 15:33:33.234510',34,NULL,3),(39,'Yes','2024-08-29 15:33:34.177079',34,NULL,3),(40,'Yes','2024-08-29 15:33:35.407787',34,NULL,3),(41,'Yes','2024-08-29 15:46:57.973822',34,NULL,3),(42,'Yes','2024-08-29 15:47:00.192696',34,NULL,3),(43,'Yes','2024-08-29 15:47:01.243135',34,NULL,3),(44,'Yes','2024-08-29 15:47:04.592872',34,NULL,3),(45,'Yes','2024-08-29 15:47:05.969154',34,NULL,3),(46,'Yes','2024-08-29 15:48:18.048887',24,NULL,3),(47,'Yes','2024-08-29 15:48:23.057916',24,NULL,3),(48,'Yes','2024-08-29 15:48:23.811727',24,NULL,3),(49,'Yes','2024-08-29 15:48:24.351120',24,NULL,3),(50,'Yes','2024-08-29 15:48:24.874511',24,NULL,3),(51,'Yes','2024-08-29 15:48:28.249242',24,NULL,3),(52,'So Good','2024-08-29 17:52:32.650368',NULL,4,3),(53,'Good','2024-08-29 17:52:47.797709',52,NULL,2),(54,'Good','2024-08-29 17:52:51.337655',NULL,4,2),(55,'Nghe cuốn quá','2024-08-30 14:31:37.684901',NULL,2,2),(56,'Thật','2024-08-30 14:31:49.235480',NULL,2,3),(57,'Yes','2024-08-30 14:32:06.716472',55,NULL,3),(58,'Good','2024-08-30 14:33:52.122237',56,NULL,2),(59,'Yes','2024-08-30 14:34:11.785949',55,NULL,3),(60,'Yes','2024-08-30 14:35:46.001885',58,NULL,3),(62,'thật không','2024-08-30 14:50:31.915953',58,NULL,3),(73,'ádasd','2024-08-30 15:02:49.472514',NULL,2,2),(76,'Big Tree','2024-08-30 15:03:30.003150',NULL,2,3),(77,'Good','2024-08-30 15:05:16.052105',76,NULL,2),(78,'Yes','2024-08-30 15:05:26.700130',73,NULL,3),(79,'No','2024-08-30 15:08:36.117237',76,NULL,2),(80,'Good','2024-08-30 15:13:11.350840',76,NULL,2),(81,'Good','2024-08-30 15:13:24.468673',77,NULL,2),(82,'Good','2024-08-30 15:13:29.100655',81,NULL,2),(83,'Good','2024-08-30 15:13:38.237228',76,NULL,2),(84,'thật không','2024-08-30 15:13:52.011606',77,NULL,3),(85,'thật không','2024-08-30 15:14:01.751651',76,NULL,3),(87,'Goodhi','2024-08-30 15:41:27.292444',76,NULL,2),(88,'Goodhi','2024-08-30 15:41:38.330305',55,NULL,2),(89,'Goodhi','2024-08-30 15:41:46.408709',57,NULL,2),(90,'Small Tree','2024-08-30 15:42:26.753558',NULL,2,2),(91,'big','2024-08-30 15:42:38.970759',90,NULL,3),(92,'Good','2024-08-31 14:48:05.238334',NULL,5,4),(93,'Good','2024-08-31 19:42:08.510138',91,NULL,4),(94,'so Good!!!!','2024-09-02 14:25:22.773708',NULL,9,2),(96,'Bài hát nghe buồn','2024-09-04 13:39:48.301144',NULL,4,2),(97,'Small Treewwwww','2024-09-04 14:48:38.215715',NULL,6,2);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `added_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `song_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FKm90a40i9r7twi2gkqmhr2ekkv` (`user_id`),
  KEY `FKqs8yha6nwtpmpq4xa0yro7gwj` (`song_id`),
  CONSTRAINT `FKm90a40i9r7twi2gkqmhr2ekkv` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`),
  CONSTRAINT `FKqs8yha6nwtpmpq4xa0yro7gwj` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` bigint NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Việt Nam'),(2,'Trung Quốc'),(3,'Hàn Quốc'),(4,'Châu Á'),(5,'Âu Mỹ'),(6,'Pop'),(7,'Thiếu nhi'),(8,'Cách mạng'),(9,'Dance'),(10,'Rap'),(11,'Bolero'),(12,'Ballad'),(13,'Nhạc phim'),(14,'EDM'),(15,'Remix');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_song`
--

DROP TABLE IF EXISTS `playlist_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_song` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_add` datetime(6) DEFAULT NULL,
  `playlist_id` bigint DEFAULT NULL,
  `song_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhimqe90is8m3m0mm8rmtmht6` (`playlist_id`),
  KEY `FKi0j8d774d3em1dgonqnc1x1g7` (`song_id`),
  CONSTRAINT `FKhimqe90is8m3m0mm8rmtmht6` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`),
  CONSTRAINT `FKi0j8d774d3em1dgonqnc1x1g7` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_song`
--

LOCK TABLES `playlist_song` WRITE;
/*!40000 ALTER TABLE `playlist_song` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `playlist_id` bigint NOT NULL AUTO_INCREMENT,
  `play_list_desc` text,
  `playlist_name` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `cover_image_url` varchar(255) DEFAULT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `playlist_code` varchar(255) DEFAULT NULL,
  `playlist_status` bit(1) NOT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `FK3e0wd5mwlbxv472os0tyro72v` (`user_id`),
  CONSTRAINT `FK3e0wd5mwlbxv472os0tyro72v` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_tokens` (
  `token_id` bigint NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  KEY `FKt72gijoak5yufxws745gwflis` (`user_id`),
  CONSTRAINT `FKt72gijoak5yufxws745gwflis` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
INSERT INTO `refresh_tokens` VALUES (38,'2024-09-05 08:39:09.360375','71303fcc-c2bc-4cf7-9ebb-68ce29c4bdb9',2),(39,'2024-09-07 06:32:28.463354','365cfa0c-0ba6-4e58-bc9a-f95247a6c46c',2);
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genre`
--

DROP TABLE IF EXISTS `song_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_genre` (
  `song_id` bigint NOT NULL,
  `genre_id` bigint NOT NULL,
  KEY `FKr8x68xd4yslf57jjn4rd35xai` (`genre_id`),
  KEY `FKifj618bjxya03fqk7o1q040t9` (`song_id`),
  CONSTRAINT `FKifj618bjxya03fqk7o1q040t9` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `FKr8x68xd4yslf57jjn4rd35xai` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genre`
--

LOCK TABLES `song_genre` WRITE;
/*!40000 ALTER TABLE `song_genre` DISABLE KEYS */;
INSERT INTO `song_genre` VALUES (1,1),(1,6),(2,1),(2,6),(3,1),(3,6),(4,1),(4,6),(5,1),(5,6),(5,12),(6,5),(6,6),(7,1),(7,6),(8,1),(8,6),(9,1),(9,6),(10,1),(10,6),(12,1),(12,6),(13,1),(13,6),(11,1),(11,6),(14,1),(14,6),(14,10);
/*!40000 ALTER TABLE `song_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` bigint NOT NULL AUTO_INCREMENT,
  `cover_image_url` varchar(255) DEFAULT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `duration` int NOT NULL,
  `lyrics` text,
  `song_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `album_id` bigint DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `FKte4gkb2cqtk2erfa87oopj2cj` (`album_id`),
  CONSTRAINT `FKte4gkb2cqtk2erfa87oopj2cj` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Flt.jpg?alt=media&token=e0cf5cd4-6fbe-4e6f-a2f8-120e66c96f2c',NULL,233,'<p>Người theo hương hoa mây mù giăng lối</p><p>Làn sương khói phôi phai đưa bước ai xa rồi</p><p>Đơn côi mình ta vấn vương</p><p>Hồi ức, trong men say chiều mưa buồn</p><p>Ngăn giọt lệ ngừng khiến khoé mi sầu bi</p><p>Đường xưa nơi cố nhân từ giã biệt li</p><p>Cánh hoa rụng rơi</p><p>Phận duyên mong manh rẽ lối trong mơ ngày tương phùng</p><p>Tiếng khóc cuốn theo làn gió bay</p><p>Thuyền ai qua sông lỡ quên vớt ánh trăng tàn nơi này</p><p>Trống vắng bóng ai dần hao gầy</p><p>♪</p><p>Lòng ta xin nguyện khắc ghi trong tim tình nồng mê say</p><p>Mặc cho tóc mây vương lên đôi môi cay</p><p>Bâng khuâng mình ta lạc trôi giữa đời</p><p>Ta lạc trôi giữa trời</p><p>Đôi chân lang thang về nơi đâu?</p><p>Bao yêu thương giờ nơi đâu?</p><p>Câu thơ tình xưa vội phai mờ</p><p>Theo làn sương tan biến trong cõi mơ</p><p>Mưa bụi vương trên làn mi mắt</p><p>Ngày chia lìa hoa rơi buồn hiu hắt</p><p>Tiếng đàn ai thêm sầu tương tư lặng mình trong chiều hoàng hôn,</p><p>Tan vào lời ca (Hey)</p><p>Lối mòn đường vắng một mình ta</p><p>Nắng chiều vàng úa nhuộm ngày qua</p><p>Xin đừng quay lưng xoá</p><p>Đừng mang câu hẹn ước kia rời xa</p><p>Yên bình nơi nào đây</p><p>Chôn vùi theo làn mây</p><p>Eh-h-h-h-h, la-la-la-la-a-a</p><p>Người theo hương hoa mây mù giăng lối</p><p>Làn sương khói phôi phai đưa bước ai xa rồi</p><p>Đơn côi mình ta vấn vương, hồi ức trong men say chiều mưa buồn</p><p>Ngăn giọt lệ ngừng khiến khoé mi sầu bi</p><p>Đường xưa nơi cố nhân từ giã biệt li</p><p>Cánh hoa rụng rơi</p><p>Phận duyên mong manh rẽ lối trong mơ ngày tương phùng</p><p>Tiếng khóc cuốn theo làn gió bay</p><p>Thuyền ai qua sông lỡ quên vớt ánh trăng tàn nơi này</p><p>Trống vắng bóng ai dần hao gầy</p><p>♪</p><p>Lòng ta xin nguyện khắc ghi trong tim tình nồng mê say</p><p>Mặc cho tóc mây vương lên đôi môi cay</p><p>Bâng khuâng mình ta lạc trôi giữa đời</p><p>Ta lạc trôi giữa trời</p><p>♪</p><p>Ta lạc trôi (Lạc trôi)</p><p>Ta lạc trôi giữa đời</p><p>Lạc trôi giữa trời</p><p>Yeah, ah-h-h-h-h-h</p><p>♪</p><p>Ta đang lạc nơi nào (Lạc nơi nào, lạc nơi nào)</p><p>♪</p><p>Ta đang lạc nơi nào</p><p><br></p><p>Lối mòn đường vắng một mình ta</p><p>Ta đang lạc nơi nào</p><p><br></p><p>Nắng chiều vàng úa nhuộm ngày qua</p><p>Ta đang lạc nơi nào</p>','https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/audios%2FLacTroi-SonTungMTP-4725907.mp3?alt=media&token=f60e405f-f8c1-4322-859a-36a7bba87207','Lạc Trôi',1),(2,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fnnca.jpg?alt=media&token=b124901c-70b9-4d26-a9fe-976ef2fccfbc','2024-08-16 15:44:40.528568',260,'<p>Em là ai từ đâu bước đến nơi đây dịu dàng chân phương</p><p>Em là ai tựa như ánh nắng ban mai ngọt ngào trong sương</p><p>Ngắm em thật lâu</p><p>Con tim anh yếu mềm</p><p>Đắm say từ phút đó</p><p>Từng giây trôi yêu thêm</p><p>Bao ngày qua bình minh đánh thức xua tan bộn bề nơi anh</p><p>Bao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh</p><p>Liếc đôi hàng mi</p><p>Mong manh anh thẫn thờ</p><p>Muốn hôn nhẹ mái tóc</p><p>Bờ môi em anh mơ</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Gió mang câu tình ca</p><p>Ngàn ánh sao vụt qua nhẹ ôm lấy em</p><p>(Yêu em thương em con tim anh chân thành)</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Khép đôi mi thật lâu</p><p>Nguyện mãi bên cạnh nhau</p><p>Yêu say đắm như ngày đầu</p><p>Mùa xuân đến bình yên</p><p>Cho anh những giấc mơ</p><p>Hạ lưu giữ ngày mưa</p><p>Ngọt ngào nên thơ</p><p>Mùa thu lá vàng rơi</p><p>Đông sang anh nhớ em</p><p>Tình yêu bé nhỏ xin</p><p>Dành tặng riêng em</p><p>Còn đó tiếng nói ấy bên tai</p><p>Vấn vương bao ngày qua</p><p>Ánh mắt bối rối</p><p>Nhớ thương bao ngày qua</p><p>Yêu em anh thẫn thờ</p><p>Con tim bâng khuâng đâu có ngờ</p><p>Chẳng bao giờ phải mong chờ</p><p>Đợi ai trong chiều hoàng hôn mờ</p><p>Đắm chìm hòa vào vần thơ</p><p>Ngắm nhìn khờ dại mộng mơ</p><p>Đừng bước vội vàng rồi làm ngơ</p><p>Lạnh lùng đó làm bộ dạng thờ ơ</p><p>Nhìn anh đi em nha</p><p>Hướng nụ cười cho riêng anh nha</p><p>Đơn giản là yêu</p><p>Con tim anh lên tiếng thôi</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Gió mang câu tình ca</p><p>Ngàn ánh sao vụt qua nhẹ ôm lấy em</p><p>(Yêu em thương em con tim anh chân thành)</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Khép đôi mi thật lâu</p><p>Nguyện mãi bên cạnh nhau</p><p>Yêu say đắm như ngày đầu</p><p>Mùa xuân đến bình yên</p><p>Cho anh những giấc mơ</p><p>Hạ lưu giữ ngày mưa</p><p>Ngọt ngào nên thơ</p><p>Mùa thu lá vàng rơi</p><p>Đông sang anh nhớ em</p><p>Tình yêu bé nhỏ xin</p><p>Dành tặng riêng em</p><p>Oh nhớ thương em</p><p>Oh nhớ thương em lắm</p><p>Ah phía sau chân trời</p><p>Có ai băng qua lối về</p><p>Cùng em đi trên đoạn đường dài</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Gió mang câu tình ca</p><p>Ngàn ánh sao vụt qua nhẹ ôm lấy em</p><p>(Yêu em thương em con tim anh chân thành)</p><p>Cầm tay anh dựa vai anh</p><p>Kề bên anh nơi này có anh</p><p>Khép đôi mi thật lâu</p><p>Nguyện mãi bên cạnh nhau</p><p>Yêu say đắm như ngày đầu</p><p>Mùa xuân đến bình yên</p><p>Cho anh những giấc mơ</p><p>Hạ lưu giữ ngày mưa</p><p>Ngọt ngào nên thơ</p><p>Mùa thu lá vàng rơi</p><p>Đông sang anh nhớ em</p><p>Tình yêu bé nhỏ xin</p><p>Dành tặng riêng em</p>','https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/audios%2FNoiNayCoAnh-SonTungMTP-4772041.mp3?alt=media&token=8539e8f3-1a30-4f0a-9584-089acd980878','Nơi này có anh',2),(3,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Ftvvn.jpg?alt=media&token=6a224bb7-2e8f-4405-a5a7-55f3a42a42ef','2024-08-18 10:40:07.340817',232,'<p>Việt Nam sáng trong bao lời ca</p><p>À ơi ới a ru hời</p><p>Đây nắng tre xanh mưa chân trời,</p><p>Rừng sâu, biển rộng, núi cao</p><p>Thời gian khắc ghi từ ngàn xưa</p><p>Việt Nam vẫn luôn huy hoàng</p><p>Bao chiến công anh hùng</p><p>muôn đời nhớ ơn Mãi luôn rền vang</p><p><br></p><p>Lời Nam Quốc Sơn Hà định phận</p><p>Đông Như Nguyệt sáng soi</p><p>Mực in dấu quân dân nhà Trần</p><p>Lời Hịch còn vang sấm truyền</p><p>Trời xanh như áng thiên thư Bình Ngô</p><p>Danh nhân họa nước non</p><p>Ngàn thu vững Tuyên Ngôn Độc Lập</p><p>Thịnh vượng Việt Nam sáng ngời</p><p>Đời đời ngàn muôn ấm no</p><p><br></p><p>Cọc chông cắm nơi Bạch Đằng Giang</p><p>Nhiều phen phá tan quân thù</p><p>Ai biết khi xưa Thăng Long Thành rồng thiêng từ đây vút bay</p><p>Bàn tay đã đi vạn *** xa , bình minh chiếu trên quê nhà</p><p>Thương cánh chim Lạc Hồng</p><p>bay dọc đất nước theo bóng cây Trường Sơn</p><p><br></p><p>Lời Nam Quốc Sơn Hà định phận</p><p>Đông Như Nguyệt sáng soi</p><p>Mực in dấu quân dân nhà Trần</p><p>Lời Hịch còn vang sấm truyền</p><p>Trời xanh như áng thiên thư Bình Ngô</p><p>Danh nhân họa nước non</p><p>Ngàn thu vững Tuyên Ngôn Độc Lập</p><p>Thịnh vượng Việt Nam sáng ngời</p><p>Đời đời ngàn muôn ấm no</p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2FThinhVuongVietNamSangNgoi-buitruonglinh-11251299.mp3?alt=media&token=718d05f6-a908-46b1-84a9-1176f759bd12','Thịnh Vượng Việt Nam Sáng Ngời',3),(4,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Fcnd.jpg?alt=media&token=df74bbba-1cf9-47eb-a366-62eb6801716d','2024-08-18 10:57:48.691396',0,'<p>Từng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta</p><p>Từng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha</p><p>Con tim giờ không cùng chung đôi nhịp</p><p>Nụ cười lạnh băng còn đâu nồng ấm thân quen</p><p>Vô tâm làm ngơ thờ ơ tương lai ai ngờ</p><p>Quên đi mộng mơ ngày thơ tan theo sương mờ</p><p><br></p><p>Mưa lặng thầm đường vắng chiều nay</p><p>In giọt lệ nhòe khóe mắt sầu cay</p><p>Bao hẹn thề tàn úa vụt bay</p><p>Trôi dạt chìm vào những giấc nồng say</p><p>Quay lưng chia hai lối</p><p>Còn một mình anh thôi</p><p>Giả dối bao trùm bỗng chốc lên ngôi</p><p>Trong đêm tối</p><p>Bầu bạn cùng đơn côi</p><p>Suy tư anh kìm nén đã bốc cháy yêu thương trao em rồi</p><p><br></p><p>Đốt sạch hết</p><p>Son môi hồng vương trên môi bấy lấu</p><p>Hương thơm dịu êm mê man bấy lâu</p><p>Anh không chờ mong quan tâm nữa đâu</p><p>Tương lai từ giờ như bức tranh em quên tô màu</p><p>Đốt sạch hết</p><p>Xin chôn vùi tên em trong đớn đau</p><p>Nơi hiu quạnh tan hoang ngàn nỗi đau</p><p>Dư âm tàn tro vô vọng phía sau</p><p>Đua chen dày vò xâu xé quanh thân xác nát nhàu</p><p><br></p><p>Chạy ngay đi trước khi</p><p>Mọi điều dần tồi tệ hơn</p><p>Chạy ngay đi trước khi</p><p>Lòng hận thù cuộn từng cơn</p><p>Tựa giông tố đến bên ghé thăm</p><p>Từ nơi hố sâu tối tăm</p><p>Chạy đi trước khi</p><p>Mọi điều dần tồi tệ hơn</p><p><br></p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p><br></p><p>Buông bàn tay buông xuôi hi vọng buông bình yên</p><p>Đâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên</p><p>Vết thương cứ thêm khắc thêm mãi thêm</p><p>Chà đạp vùi dập *** lên tiếng yêu ấm êm</p><p>Nhìn lại niềm tin từng trao giờ sao sau bao ngu muội sai lầm anh vẫn yếu mềm</p><p>Căn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa</p><p>Căm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha</p><p>Ahhhh</p><p>Chính em gây ra mà</p><p>Những điều vừa diễn ra</p><p>Chính em gây ra mà, chính em gây ra mà</p><p>Những điều vừa diễn ra</p><p>Hết thật rồi</p><p><br></p><p>Đốt sạch hết</p><p>Son môi hồng vương trên môi bấy lâu</p><p>Hương thơm dịu êm mê man bấy lâu</p><p>Anh không chờ mong quan tâm nữa đâu</p><p>Tương lai từ giờ như bức tranh em quên tô màu</p><p>Đốt sạch hết</p><p>Xin chôn vùi tên em trong đớn đau</p><p>Nơi hiu quạnh tan hoang ngàn nỗi đau</p><p>Dư âm tàn tro vô vọng phía sau</p><p>Đua chen dày vò xâu xé quanh thân xác nát nhàu</p><p><br></p><p>Chạy ngay đi trước khi</p><p>Mọi điều dần tồi tệ hơn</p><p>Chạy ngay đi trước khi</p><p>Lòng hận thù cuộn từng cơn</p><p>Tựa giông tố đến bên ghé thăm</p><p>Từ nơi hố sâu tối tăm</p><p>Chạy đi trước khi</p><p>Mọi điều dần tồi tệ hơn!</p><p><br></p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p><br></p><p>Đốt sạch hết ... Ohhhh</p><p>Chính em gây ra mà, chính em gây ra mà</p><p>Đốt sạch hết ... Ohhhh!</p><p>Đừng nhìn anh với khuôn mặt xa lạ</p><p>Xin đừng lang thang trong tâm trí anh từng đêm nữa</p><p>Quên đi quên đi hết đi</p><p>Quên đi quên đi hết đi</p><p>Thắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ!</p><p><br></p><p>Bốc cháy lên cơn hận thù trong anh</p><p>Cơn hận thù trong anh</p><p>Bốc cháy lên cơn hận thù trong anh</p><p>Ai khơi dậy cơn hận thù trong anh</p><p>Bốc cháy lên cơn hận thù trong anh</p><p>Cơn hận thù trong anh</p><p>Bốc cháy lên cơn hận thù trong anh</p><p>Ai khơi dậy cơn hận thù trong anh</p><p><br></p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p><p>Không còn ai cạnh bên em ngày mai</p><p>Tạm biệt một tương lai ngang trái</p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2FChayNgayDi-SonTungMTP-5468704.mp3?alt=media&token=044d7a3b-7fe2-4d5b-8994-b1cb5c696a02','Chạy ngay đi',1),(5,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Fasr.jpg?alt=media&token=0c3bc1a4-b83f-4dca-8f5c-d3c94c87d75a','2024-08-18 11:38:18.144833',0,'<p>Nếu ngày mai em rời xa anh</p><p>Anh không biết sống thế nào đây</p><p>Con tim anh nhói đau từng cơn</p><p>Anh biết hạt mưa không ngừng rơi khi thấy em buồn.</p><p><br></p><p>Xin thời gian hãy trở lại đi</p><p>Anh không muốn mất em người ơi</p><p>Con tim anh nhói đau từng cơn</p><p>Anh khóc vì anh biết mình sai</p><p>Tất cả là vì tại anh.</p><p><br></p><p>[ĐK:]</p><p>Anh sai rồi, anh sai rồi</p><p>Xin em một lần hãy nói em yêu anh</p><p>Anh xin nhận nhận hết nỗi buồn</p><p>Đừng rời xanh kỉ niệm, anh vẫn ở đây ngóng chờ em.</p><p><br></p><p>Giờ em ở đâu tìm em ở đâu</p><p>Sao em nỡ bước đi rời xa</p><p>Hãy quay trở về bên anh một lần thôi em</p><p>Anh đã sai rồi, anh như gục ngã chìm đắm trong ly rượu say</p><p>Xin em một lần tha thứ quay về bên anh.</p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2Fy2mate.com%20-%20Anh%20Sai%20R%E1%BB%93i%20%20S%C6%A1n%20T%C3%B9ng%20MTP.mp3?alt=media&token=9a2c1bd1-7dd5-4512-b911-7872083b1cb0','Anh Sai Rồi',1),(6,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Floveyourselt.jpg?alt=media&token=b9067dd6-a998-4a35-a00e-ac1618409de7','2024-08-20 11:10:32.049741',271,'<p>[Verse 1]</p><p>For all the times that you rained on my parade</p><p>And all the clubs you get in using my name</p><p>You think you broke my heart, oh girl for goodness sake</p><p>You think I\'m cryin\' on my own, well I ain\'t</p><p><br></p><p>[Refrain]</p><p>And I didn\'t wanna write a song</p><p>\'Cause I didn\'t want anyone thinking I still care</p><p>I don\'t but, you still hit my phone up</p><p>And baby I\'ll be movin\' on</p><p>And I think you should be somethin\'</p><p>I don\'t wanna hold back</p><p>Maybe you should know that</p><p><br></p><p>[Pre-Chorus]</p><p>My mama don\'t like you and she likes everyone</p><p>And I never like to admit that I was wrong</p><p>And I\'ve been so caught up in my job, didn\'t see what\'s going on</p><p>But now I know, I\'m better sleeping on my own</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p><br></p><p>[Verse 2]</p><p>But when you told me that you hated my friends</p><p>The only problem was with you and not them</p><p>And every time you told me my opinion was wrong</p><p>And tried to make me forget where I came from</p><p><br></p><p>[Refrain]</p><p>And I didn\'t wanna write a song</p><p>\'Cause I didn\'t want anyone thinking I still care</p><p>I don\'t but, you still hit my phone up</p><p>And baby I\'ll be movin\' on</p><p>And I think you should be somethin\'</p><p>I don\'t wanna hold back</p><p>Maybe you should know that</p><p><br></p><p>[Pre-Chorus]</p><p>My mama don\'t like you and she likes everyone</p><p>And I never like to admit that I was wrong</p><p>And I\'ve been so caught up in my job, didn\'t see what\'s going on</p><p>But now I know, I\'m better sleeping on my own</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p><br></p><p>[Bridge]</p><p>For all the times that you made me feel small</p><p>I fell in love, now I feel nothin\' at all</p><p>I never felt so low and I was vulnerable</p><p>Was I a fool to let you break down my walls?</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2Fy2meta.com%20-%20Justin%20Bieber%20-%20Love%20Yourself%20(PURPOSE%20_%20The%20Movement)%20(128%20kbps).mp3?alt=media&token=affab717-c43b-4c74-bb41-da87a0488d1d','Love Yourselt',4),(7,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftrongcom.jpg?alt=media&token=da08691b-4262-411d-932b-c301d6c00b5f','2024-08-23 10:41:01.581850',254,'<p>Có lẽ duyên là từ khi anh gặp em</p><p>Bối rối chi bằng mượn nợ</p><p>Để làm quen</p><p>Theo anh đưa em qua khắp lối</p><p>Họa bức tranh kể chuyện</p><p>Tình đẹp đây rồi</p><p>Bao nhiêu năm tháng đậm sâu</p><p>Ta đi qua hết buồn đau</p><p>Trọn một lời hứa</p><p>Mãi mong sau này vẫn có nhau</p><p>Đêm anh ngồi mà trông</p><p>Thương mong người mà người còn thương không</p><p>Xa bao ngày thì người còn thương không</p><p>Cùng nhìn về phương xa</p><p>Ối a ối a ối à</p><p>Tình bằng có cái trống cơm</p><p>Tình bằng có cái trống cơm</p><p>Tình bằng có cái trống cơm</p><p>Ờ tình bằng</p><p>Ờ tình bằng</p><p>Tình bằng có cái trống cơm</p><p>Khen ai khéo vỗ</p><p>Ố mấy bông mà nên bông</p><p>Ố mấy bông mà nên bông</p><p>Một bầy tang tình con xít</p><p>Một bầy tang tình con xít</p><p>Ố mấy lội, lội, lội sông</p><p>Ô mấy đi tìm, em nhớ thương ai</p><p>Đôi con mắt ố mấy lim ***</p><p>Đôi con mắt ố mấy lim ***</p><p>Một bầy tang tình con nhện</p><p>Ơ ớ ơ ấy mấy giăng tơ</p><p>Giăng tơ ấy mấy đi tìm</p><p>Em nhớ thương ai</p><p>Duyên nợ khách tang bồng</p><p>Duyên nợ khách tang bồng</p><p>Xếp mực nghiên em ra đi</p><p>Mang theo duyên người xa</p><p>Mong ngày về vinh quy một trời hoa</p><p>Chí kẻ làm trai</p><p>Anh băng qua bao chông gai</p><p>Chân bước đi hiên ngang</p><p>Gian nan vây chân trời</p><p>Cây non đang đâm chồi</p><p>Vươn qua tăm tối</p><p>Con tim mang tang bồng</p><p>Bốc cháy như than hồng</p><p>Mang giấc mơ này bay xa</p><p>Giấc mơ này bay xa</p><p>Giấc mơ này bay xa</p><p>Mang giấc mơ này bay xa</p><p>Giấc mơ này bay xa</p><p>Đôi chân xông pha đi tới</p><p>Tình bằng có cái trống cơm</p><p>Khen ai khéo vỗ</p><p>Tình bằng có cái trống cơm</p><p>Khen ai khéo vỗ</p><p>Mang giấc mơ này bay xa</p><p>Mang giấc mơ này bay xa</p><p>Đôi chân ta đi tới</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FTrongCom-CuongSevenSOOBINTuLong-15510311.mp3?alt=media&token=393f2222-e9c4-4c50-a47a-b08575c21f48','Trống Cơm',NULL),(8,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=e9525acb-6b8a-4031-95ee-5abf0abf8241','2024-08-23 10:50:45.974935',273,'<p>Tại sao em cứ ngốc nghếch xem anh ta là cả thế giới</p><p>Trong khi người ấy luôn khiến em buồn, xem ra đâu thật lòng yêu em</p><p>Em cứ giả vờ cười như thế thôi, tôi biết trong em giờ đang đau lắm</p><p>Việc gì em cứ luôn phải tỏ ra mạnh mẽ, những lúc yếu lòng</p><p><br></p><p>Tại sao cứ dốc hết con tim yêu một người vô tâm</p><p>Trong khi ngoài kia có biết bao ngừoi muốn chở che cho em</p><p>Em hãy một lần vì mình nhé em</p><p>Em xứng đáng hơn vạn lần như thế</p><p>Việc gì em cứ luôn phải tỏ ra mạnh mẽ, nước mắt em đang rơi kìa ...</p><p><br></p><p>Biết đâu vậy sẽ tốt, em sẽ biét được ai là người yêu em</p><p>Biết đâu vậy sẽ tốt, em sẽ biết được ai là người thương em</p><p>Một người luôn muốn nói với cả thế giới, rằng yêu em là một điều tuyệt vời nhất trên đời</p><p>Em ơi!</p><p>Biết đâu vậy sẽ tốt, em sẽ để cho tim em được nghỉ ngơi</p><p>Biết đâu vậy sẽ tốt, em sẽ thấy mọi</p><p><br></p><p>Biết đâu vậy sẽ tốt, đã đến lúc con tim em được nghỉ ngơi</p><p>Biết đâu vậy sẽ tốt, em sẽ sống vui hơn bên một ngừoi mới</p><p>Một người muốn nói với cả thế giới</p><p>Rằng yêu em là điều tuyệt vời nhất trên đời</p><p>Em ơi</p><p><br></p><p>Tại sao em chẳng một lần nhìn về phía ai</p><p>Tại sao em chẳng một lần cho ai cơ hội</p><p>Tại sao em cứ dại khờ làm đau chính em</p><p>Tại sao em cứ đợi chờ một người không thương mình</p><p>Người ta đâu chung tình</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FNguoiTaDauThuongEm-LylyAnhTuTheVoice-6931862.mp3?alt=media&token=676ccba0-188a-486d-9412-17e77e4cc4f5','Người Ta Đâu Thương Em',5),(9,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=1fae91ec-a346-4ca2-a2f7-d9c91d99d2d0','2024-08-23 10:53:48.372307',222,'<p>1. Nếu anh nhắn lần đầu là do anh ấn tượng</p><p>Và sau đó nếu có lần 2 là do không sai gu</p><p>Nếu anh nhắn cho em lần 3 là anh đang vấn vương</p><p>Còn nếu mà có nhắn lần 4 so then i like you</p><p><br></p><p>3 câu đầu đủ làm em đổ như là haiku</p><p>Phải lặp lại câu cuối 2 lần em ơi i like you</p><p>Người như em thì chỉ có 1, im loosing my cool</p><p>Quay trở về số 0, anh ngại ngùng bên my boo</p><p><br></p><p>Lời nói của anh có lời nào là lời thật không</p><p>Em liệu có thể tin ai đó chỉ toàn lời đường mật</p><p>Mới gặp vài ba hôm chắc mình cần nhiều thời hơn</p><p>Để em biết anh, biết anh muốn đến với em bằng cách thức nào</p><p><br></p><p>Please thật sự em là con gái nên phải suy nghĩ hơi lâu</p><p>Please đừng vội vàng chỉ nói lời ngoài tai em sợ ong bướm sẽ vây lấy anh</p><p>Lấy anh lấy anh lấy anh oh wooo</p><p><br></p><p>Này lời ngọt ngào chỉ riêng em nghe thôi đấy</p><p>Anh đừng đi nói lung tung</p><p>Anh đừng đi nói lung tung cả ngày</p><p><br></p><p>2. Em làm tim rơi mất một nhịp nên anh đâm đơn kiện</p><p>Nói về em toàn lời hoa mỹ là do anh thơm miệng</p><p>Đoạn này là anh đang flow nhanh cho nó mau đó</p><p>Bởi vì em chính là Nàng Xuân, anh nồi cơm điện</p><p><br></p><p>Nếu còn lo là anh đào hoa thì em ơi có bao giờ</p><p>Hãy ở bên cạnh anh, baby one more hour</p><p>Ghim điện rồi đợi tiếng bíp bíp</p><p>Gửi bài hát anh viết viết</p><p><br></p><p>Để nấu cho tình yêu hai ta sẽ nở ra cùng</p><p>Nếu em muốn coi bói, thì cho anh xem tay</p><p>Em sẽ ngã vào lòng của anh ngay đêm nay</p><p>Nếu anh là Thịnh Suy em là 1 đêm say</p><p><br></p><p>Vì anh như là cân đẩu vân còn em thì trên mây</p><p>Mang hình ảnh anh đang tìm kiếm em như là Google</p><p>Kiệt tác không phải là doodle</p><p>Ứng cử bên Juliet thì anh nặng kí gọi anh Romeo</p><p><br></p><p>Với nụ cười đó thì phải lưu giữ trong viện bảo tàng</p><p>Cư xử như vị hảo hán, vì lịch sự thuộc diện lão làng</p><p>Rồi bước đến bên em, anh không có đi sai đâu</p><p>Bảo vệ em khỏi đêm buồn chán, anh thuộc đội G.I Joe</p><p><br></p><p>Anh có một ý là uống hết ly này rồi ta lên ban coông</p><p>Hai đôi môi quấn chặt cho đến khi mai sau</p><p>Dù không phải là Peter Pan, em làm anh yêu hết lớn</p><p>Cứ yên tâm là sẽ vừa lòng, vì tim anh đây có size</p><p><br></p><p>Em chính là lý do khiến anh đây rap love</p><p>Lý do duy nhất làm em sẽ yêu anh tên là HIEUTHUHAI</p><p>Có trái tim nhảy khỏi lồng ngực và đi theo em thôi</p><p>Sẽ cứ mãi ở đây nếu đặt nụ hôn anh lên môi</p><p><br></p><p>Lời nói của anh có lời nào là lời thật không</p><p>Em liệu có thể tin ai đó chỉ toàn lời đường mật</p><p>Mới gặp vài ba hôm chắc mình cần nhiều thời hơn</p><p>Để em biết anh, biết anh muốn đến với em bằng cách thức nào</p><p><br></p><p>Please thật sự em là con gái nên phải suy nghĩ hơi lâu</p><p>Please đừng vội vàng chỉ nói lời ngoài tai em sợ ong bướm sẽ vây lấy anh</p><p>Lấy anh lấy anh lấy anh oh wooo</p><p><br></p><p>Này lời ngọt ngào chỉ riêng em nghe thôi đấy</p><p>Anh đừng đi nói lung tung</p><p>Anh đừng đi nói lung tung cả ngày</p><p><br></p><p>Liều thuốc tình yêu này sẽ không làm hại ta đâu em ơi</p><p>Có trái tim nhảy khỏi lồng ngực và đi theo em thôi</p><p><br></p><p>Lời nói của anh có lời nào là lời thật không</p><p>Em liệu có thể tin ai đó chỉ toàn lời đường mật</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FLoiDuongMat-LylyHIEUTHUHAI-6802155.mp3?alt=media&token=821e6389-f8b8-4561-a9cf-6dc233f799c9','Lời Đường Mật',5),(10,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=1fae91ec-a346-4ca2-a2f7-d9c91d99d2d0','2024-08-23 10:54:54.961638',222,'<p>Nếu ta không may chẳng thể trở lại được như lúc ban đầu</p><p>Nếu ta không may phải buông lời chia tay, khi ấy...</p><p>Em liệu có thấy đau như anh?</p><p>Hay niềm đau sẽ trôi qua nhanh</p><p><br></p><p>Vì em chẳng thiết tha những giây phút bên cạnh nhau</p><p>Chắc ở nơi anh chẳng mang lại cho em những thứ em cần</p><p>Chắc ở nơi ai người ta thật lòng yêu em hơn</p><p>Anh sẽ cất hết những tơ vương, sẽ gom hết những yêu thương</p><p>Nhìn em hạnh phúc dù cho nhiều lúc chỉ muốn hét lên..</p><p><br></p><p>[ĐK:]</p><p>Rằng người ơi em đừng đi nhé, hãy quay lại từ đầu nhé</p><p>Lúc trao nhau câu yêu chẳng ai lại muốn sẽ có lúc như thế này</p><p>Nhưng nếu như vậy thì em chẳng vui, nên anh đành rút lui</p><p>Buồn đau về sau một mình anh sẽ mang</p><p><br></p><p>Thầm mong ai kia sẽ chăm sóc, lau nước mắt mỗi khi em khóc</p><p>Anh sẽ chẳng thể yên lòng vì anh còn yêu, em biết không</p><p>Đâu nỡ buông lời oán trách em, vì tình yêu đâu thể gượng ép</p><p>Anh chúc em sẽ tìm thấy chốn bình yên, nơi ai</p><p><br></p><p>Chắc ở nơi anh chẳng mang lại cho em những thứ em cần</p><p>Chắc ở nơi ai người ta thật lòng yêu em hơn</p><p>Anh sẽ cất hết những tơ vương , sẽ gom hết những yêu thương</p><p>Nhìn em hạnh phúc dù cho nhiều lúc chỉ muốn hét lên..</p><p><br></p><p>[ĐK:]</p><p>Rằng người ơi em đừng đi nhé, hãy quay lại từ đầu nhé</p><p>Lúc trao nhau câu yêu chẳng ai lại muốn sẽ có lúc như thế này</p><p>Nhưng nếu như vậy thì em chẳng vui, nên anh đành rút lui</p><p>Buồn đau về sau một mình anh sẽ mang</p><p><br></p><p>Thầm mong ai kia sẽ chăm sóc, lau nước mắt mỗi khi em khóc</p><p>Anh sẽ chẳng thể yên lòng vì anh còn yêu, em biết không</p><p>Đâu nỡ buông lời oán trách em, vì tình yêu đâu thể gượng ép</p><p>Anh chúc em sẽ tìm thấy chốn bình yên ...</p><p><br></p><p>Dù rằng trong anh luôn yêu và thương em</p><p>Mà giờ bên anh em chỉ càng đau thêm</p><p>Đâu như ngày xưa</p><p>Hạnh phúc đâu còn nữa</p><p>Giờ anh sẽ cố quen với việc cô đơn</p><p>Vì ở bên ai chắc em được vui hơn</p><p>Chúc em hạnh phúc</p><p>Và giờ mình kết thúc</p><p><br></p><p>Làm sao nói hết lời xin lỗi</p><p>Khi trái tim em lỡ lạc lối</p><p>Em ước có thể chết đi để không một ai, phải đau đớn thêm vì mình</p><p><br></p><p>Nhưng nếu như vậy thì anh càng đau</p><p>Nên thôi thà mất nhau</p><p>Từ nay về sau, chỉ cần em sống vui</p><p><br></p><p>Thầm mong ai kia sẽ chăm sóc, lau nước mắt mỗi khi em khóc</p><p>Anh sẽ chẳng thể yên lòng vì anh còn yêu, em biết không</p><p>Đâu nỡ buông lời oán trách em, vì tình yêu đâu thể gượng ép</p><p>Anh chúc em sẽ tìm thấy chốn bình yên</p><p>Dù bên cạnh ai, chỉ mong em bình yên</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FNeuTaKhongMay-AnhTuLyly-6400246.mp3?alt=media&token=5c5d8cde-bc32-4742-8aca-f81776406811','Nếu Ta Không May',5),(11,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=1fae91ec-a346-4ca2-a2f7-d9c91d99d2d0','2024-08-23 10:55:57.078189',252,'<p>Nói cho em nghe liệu yêu một người bằng hết con tim</p><p>Là đúng hay đang sai mà sao anh ơi em cứ buồn hoài như thế</p><p>Nước mắt rơi nhiều như thế và nói cho em nghe</p><p>Anh có yêu em như những lời ngọt ngào anh thường vẫn nói</p><p><br></p><p>Mà đôi khi tim em tan ra làm trăm lần</p><p>Em cô đơn dù đang gần, gần người mặc em yêu</p><p>(Trong tình yêu ai yêu nhiều hơn có phải là sai lầm</p><p>Trong tình yêu ai yêu nhiều hơn chắc chắn là sai lầm)</p><p><br></p><p>Bởi vì là khi yêu em yêu anh yêu hơn chính bản thân em</p><p>Nên đôi khi em quên mất em cũng biết buồn quên mất em cũng biết đau</p><p>Cứ thế khiến vết thương nơi con tim em càng thêm sâu</p><p>Bởi vì là khi yêu em đâu quan tâm sẽ nhận lại bao nhiêu</p><p><br></p><p>Nên đôi khi vô tâm với cảm xúc chính mình</p><p>Trao hết bao nhiêu chân tình để rồi nhận lấy những nước mắt khi yêu</p><p>Em khóc lại một lời nói dối ngập ngừng trên môi rằng sẽ qua nhanh thôi</p><p>Dẫu cho nỗi buồn hoài chồng lên nhau mặt thời gian đang trôi</p><p><br></p><p>Người cố gắng đi tìm phút giây bình yên</p><p>Người thì cứ vất bao cảm xúc ra ngoài hiên</p><p>Có phải chỉ một mình em cần tình yêu này</p><p>Khi mà anh như đã sắp đi khỏi nơi đây</p><p><br></p><p>Sao anh không nói với em một câu</p><p>Sao em vẫn cứ yêu anh đậm sâu</p><p>Bởi vì là khi yêu em yêu anh yêu hơn chính bản thân em</p><p>Nên đôi khi em quên mất em cũng biết buồn quên mất em cũng biết đau</p><p><br></p><p>Cứ thế khiến vết thương nơi con tim em càng thêm sâu</p><p>Bởi vì là khi yêu em đâu quan tâm sẽ nhận lại bao nhiêu</p><p>Nên đôi khi vô tâm với cảm xúc chính mình</p><p>Trao hết bao nhiêu chân tình để rồi nhận lấy những nước mắt khi yêu em khóc</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FBoiViLaKhiYeu-Lyly-6728210.mp3?alt=media&token=687e5425-44c1-4b95-bb7f-8b2e9ca7182d','Bởi Vì Là Khi Yêu',5),(12,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=1fae91ec-a346-4ca2-a2f7-d9c91d99d2d0','2024-08-23 10:57:12.994304',284,'<p>Tại sao em cứ ngốc nghếch xem anh ta là cả thế giới</p><p>Trong khi người ấy luôn khiến em buồn, xem ra đâu thật lòng yêu em</p><p>Em cứ giả vờ cười như thế thôi, tôi biết trong em giờ đang đau lắm</p><p>Việc gì em cứ luôn phải tỏ ra mạnh mẽ, những lúc yếu lòng</p><p><br></p><p>Tại sao cứ dốc hết con tim yêu một người vô tâm</p><p>Trong khi ngoài kia có biết bao ngừoi muốn chở che cho em</p><p>Em hãy một lần vì mình nhé em</p><p>Em xứng đáng hơn vạn lần như thế</p><p>Việc gì em cứ luôn phải tỏ ra mạnh mẽ, nước mắt em đang rơi kìa ...</p><p><br></p><p>Biết đâu vậy sẽ tốt, em sẽ biét được ai là người yêu em</p><p>Biết đâu vậy sẽ tốt, em sẽ biết được ai là người thương em</p><p>Một người luôn muốn nói với cả thế giới, rằng yêu em là một điều tuyệt vời nhất trên đời</p><p>Em ơi!</p><p>Biết đâu vậy sẽ tốt, em sẽ để cho tim em được nghỉ ngơi</p><p>Biết đâu vậy sẽ tốt, em sẽ thấy mọi</p><p><br></p><p>Biết đâu vậy sẽ tốt, đã đến lúc con tim em được nghỉ ngơi</p><p>Biết đâu vậy sẽ tốt, em sẽ sống vui hơn bên một ngừoi mới</p><p>Một người muốn nói với cả thế giới</p><p>Rằng yêu em là điều tuyệt vời nhất trên đời</p><p>Em ơi</p><p><br></p><p>Tại sao em chẳng một lần nhìn về phía ai</p><p>Tại sao em chẳng một lần cho ai cơ hội</p><p>Tại sao em cứ dại khờ làm đau chính em</p><p>Tại sao em cứ đợi chờ một người không thương mình</p><p>Người ta đâu chung tình</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FNguoiTaDauThuongEmAcousticVersion-LylyAnhTuTheVoice-6953784.mp3?alt=media&token=8a924537-dc28-4deb-9012-61e75e54f86d','Người Ta Đâu Thương Em (Acoustic Version)',5),(13,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Ftslyly.jpg?alt=media&token=ea275222-a98f-4dc5-b433-8bd73648e877','2024-08-23 11:05:42.109428',281,'<p>Nếu anh đang mơ về</p><p>Một người con gái khác</p><p>Nếu anh đang tìm niềm vui</p><p>Từ ai đó khác</p><p>Cứ nói ra hết</p><p>Đừng để em mãi chờ mong</p><p>Dẫu tim buồn đau</p><p>Nhưng em sẽ không níu giữ</p><p>Nếu không yêu em</p><p>Xin anh đừng gây nhớ thương</p><p>Đừng cứ khiến em</p><p>Ngập trong những nghĩ suy về anh</p><p>Hãy để em hiểu rằng</p><p>Anh thuộc về ai mất rồi</p><p>Chỉ là em đang yêu đơn phương thế thôi</p><p>Cuộc tình này tan vỡ rồi</p><p>Tan vỡ rồi, tan vỡ rồi</p><p>Mọi chuyện dường như đã kết thúc</p><p>Dù chưa có lúc bắt đầu yêu</p><p>Mình chẳng bên nhau cũng bởi vì</p><p>Lựa chọn con tim ta chẳng thể theo lí trí</p><p>Gặp nhau làm chi</p><p>Để em cứ đợi, em cứ chờ</p><p>Mà anh hững hờ</p><p>Thì ra yêu đơn phương rất khó</p><p>Em biết phải thế nào đây?</p><p>Bởi vì trái tim anh chẳng có em</p><p>Thì thôi em chỉ biết lùi về phía sau</p><p>Nhìn theo anh</p><p>Anh không nói anh nhớ em</p><p>Đâu có nghĩa hình bóng em</p><p>Một ngày anh không nghĩ đến</p><p>Anh im lặng trước tình cảm em sẻ chia</p><p>Đâu có nghĩa sau giấc ngủ anh sẽ quên</p><p>Anh giấu hết tình cảm</p><p>Những khoảnh khắc khi gần nhau</p><p>Những lần mình cười nói</p><p>Những rung động ngay lần đầu</p><p>Vì sợ duyên chưa trọn</p><p>Đã vội vã nhiều lần đau</p><p>Câu chuyện mình từ đó</p><p>Sẽ không còn yêu phần sau</p><p>Đâu phải muốn là sẽ được</p><p>Có những chuyện mãi mãi</p><p>Chỉ nằm sau phía trời mây</p><p>Biết đời không như mơ ước</p><p>Nhưng tận đáy lòng anh</p><p>Vẫn muốn nói những lời này</p><p>Anh thích, anh yêu</p><p>Anh thương em nhiều</p><p>Nên anh muốn, anh cần</p><p>Anh mong em hiểu</p><p>Chuyện thế nào đi nữa</p><p>Em vẫn phải tiếp tục bước</p><p>Đừng vì anh mà quay lưng</p><p>Những người đang chờ em phía trước</p><p>Nếu không yêu em</p><p>Xin anh đừng gây nhớ thương</p><p>Đừng cứ khiến em</p><p>Ngập trong những nghĩ suy về anh</p><p>Hãy để em hiểu rằng</p><p>Anh thuộc về ai mất rồi</p><p>Chỉ là em đang yêu đơn phương thế thôi</p><p>Cuộc tình này tan vỡ rồi</p><p>Tan vỡ rồi, tan vỡ rồi</p><p>Mọi chuyện dường như đã kết thúc</p><p>Dù chưa có lúc bắt đầu yêu</p><p>Mình chẳng bên nhau cũng bởi vì</p><p>Lựa chọn con tim ta chẳng thể theo lí trí</p><p>Gặp nhau làm chi</p><p>Để em cứ đợi, em cứ chờ</p><p>Mà anh hững hờ</p><p>Thì ra yêu đơn phương rất khó</p><p>Em biết phải thế nào đây?</p><p>Bởi vì trái tim anh chẳng có em</p><p>Thì thôi em chỉ biết lùi về phía sau</p><p>Cuộc tình này tan vỡ rồi</p><p>Sao mọi chuyện lại như thế?</p><p>Mọi chuyện dường như đã hết rồi</p><p>Xin lỗi, anh không thể</p><p>Mình chẳng thể bên nhau cũng bởi vì</p><p>Tại vì anh</p><p>Lựa chọn con tim ta chẳng thể theo lí trí</p><p>Anh xin lỗi vì tất cả</p><p>Gặp nhau làm chi</p><p>Để em cứ đợi, em cứ chờ</p><p>Mà anh hững hờ</p><p>Thì ra yêu đơn phương rất khó</p><p>Em biết phải thế nào đây?</p><p>Bởi vì trái tim anh chẳng có em</p><p>Thì thôi em chỉ biết lùi về phía sau</p><p>Nhìn theo anh</p><p>Nếu anh đang mơ về</p><p>Một người con gái khác</p><p>Nếu không yêu em</p><p>Xin anh đừng gây nhớ thương</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FKhongYeuDungGayThuongNho-LylyKarik-6043709.mp3?alt=media&token=473bbce3-c24c-4dbf-b13a-fd2db00059cc','Không Yêu Đừng Gây Thương Nhớ',5),(14,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Fnguoilaoi.jpg?alt=media&token=e9903d3b-6bc7-4b62-8ee6-e3593685daf7','2024-08-23 11:09:47.300475',288,'<p>Tôi lạc quan giữa đám đông</p><p>Nhưng khi một mình thì lại không</p><p>Cố tỏ ra là mình ổn</p><p>Nhưng sâu bên trong</p><p>Nước mắt là biển rộng</p><p>Lắm lúc chỉ muốn có ai đó</p><p>Dang tay ôm lấy tôi vào lòng</p><p>Cho tiếng cười trong mắt</p><p>Được vang vọng cô đơn</p><p>Một lần rồi khỏi những khoảng trống</p><p>Mang niềm tin phủ nắng</p><p>Nơi u uất để trời cảm xúc</p><p>Tìm về với mầm sống</p><p>Để nỗi buồn thôi bám víu màn đêm</p><p>Sương trên khoé mi</p><p>Ngày mai thôi ngừng đọng</p><p>Chỉ một lần thôi</p><p>Cho sự yếu đuối</p><p>Hôm nay thôi đợi mong</p><p>Người lạ ơi</p><p>Người đến ủi an</p><p>Tâm hồn này được không</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn bờ vai</p><p>Tựa đầu gục ngã vì mỏi mệt quá</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn nụ hôn</p><p>Mượn rồi tôi trả đừng vội vàng quá</p><p>Người lạ ơi</p><p>Xin người hãy ghé mua giùm tôi</p><p>Một liều quên lãng để tôi thanh thản</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn niềm vui</p><p>Để lần yếu đuối này</p><p>Là lần cuối thôi</p><p>Cô đơn lẻ loi</p><p>Tâm tư như sóng đánh</p><p>Chơi vơi mệt mỏi</p><p>Tâm hồn thì mong manh</p><p>Không cần người phải quá sâu sắc</p><p>Chỉ cần bờ vai người đủ rộng</p><p>Chân thành đừng giấu sau màu mắt</p><p>Cùng chia sớt những nỗi sầu mênh mông</p><p>Cho trái tim yếu đuối được nghỉ ngơi</p><p>Cõi lòng hoang sơ</p><p>Hôm nay thôi dậy sóng</p><p>Một người với tôi vậy là đủ</p><p>Những thứ còn lại chẳng quan trọng</p><p>Một người không bao giờ</p><p>Nhắc về quá khứ</p><p>Không để tâm tới</p><p>Những ngày tôi ngây dại</p><p>Mở lòng bao dung</p><p>Bằng tất cả thương cảm</p><p>Dù biết chẳng thể</p><p>Cùng đi hết ngày mai</p><p>Cứ nhẹ nhàng bình yên như mây trôi</p><p>Cảm xúc không cần phải ngay lối</p><p>Lắng nghe thật khẽ cõi lòng tôi</p><p>Một người tôi cần</p><p>Lúc này chỉ vậy thôi</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn bờ vai</p><p>Tựa đầu gục ngã vì mỏi mệt quá</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn nụ hôn</p><p>Mượn rồi tôi trả đừng vội vàng quá</p><p>Người lạ ơi</p><p>Xin người hãy ghé mua giùm tôi</p><p>Một liều quên lãng để tôi thanh thản</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn niềm vui</p><p>Để lần yếu đuối này</p><p>Là lần cuối thôi</p><p>Cả trời tâm tư tôi ở đấy</p><p>Vậy mà chẳng có ai hiểu</p><p>Thứ tôi mong mỏi từng ngày</p><p>Chỉ đơn giản là tình yêu</p><p>Lâu nay cả trời tâm tư tôi ở đây</p><p>Vậy mà chẳng có ai hiểu</p><p>Thứ tôi mong mỏi từng ngày</p><p>Chỉ đơn giản là tình yêu</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn bờ vai</p><p>Tựa đầu gục ngã vì mỏi mệt quá</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn nụ hôn</p><p>Mượn rồi tôi trả đừng vội vàng quá</p><p>Người lạ ơi</p><p>Xin người hãy ghé mua giùm tôi</p><p>Một liều quên lãng để tôi thanh thản</p><p>Người lạ ơi</p><p>Xin hãy cho tôi mượn niềm vui</p><p>Để lần yếu đuối này</p><p>Là lần cuối thôi</p><p>Người lạ ơi</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2FNg%C6%B0%E1%BB%9Di%20L%E1%BA%A1%20%C6%A0i.mp3?alt=media&token=f01481be-b230-47d0-bc34-c6c6b41e14fd','Người Lạ Ơi',6);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKasaenoxni6aw644w3g31ybnyj` (`role_id`),
  CONSTRAINT `FKasaenoxni6aw644w3g31ybnyj` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`role_id`),
  CONSTRAINT `FKnnjwin2r8oajs3wmc8sbn0672` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2),(3,3),(4,3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 13:46:36
