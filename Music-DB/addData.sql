
use music_web;
DROP TABLE IF EXISTS `album_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
--

LOCK TABLES `artist_album` WRITE;
/*!40000 ALTER TABLE `album_artist` DISABLE KEYS */;
INSERT INTO `artist_album` VALUES (1,1);
/*!40000 ALTER TABLE `album_artist` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Flt.jpg?alt=media&token=99bd3734-7f2b-4c2a-b1c1-32e897ab38d9','2024-08-16 12:01:39.006924','M-TP Entertainment','M-TP'),(2,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fnnca.jpg?alt=media&token=88ec183c-225d-43ca-b592-758a01d19612','2024-08-16 15:45:20.617463','M-TP Entertainment','Nơi này có anh'),(3,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Ftvvn.jpg?alt=media&token=f943556d-2cbb-4a9f-83c0-7daca26694c4','2024-08-18 10:28:39.233922','LOOPS Music','Thịnh Vượng Việt Nam Sáng Ngời');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
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
  `full_name` varchar(50) NOT NULL,
  `gender` int DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `APP_USER_UK` (`email`),
  UNIQUE KEY `APP_USER_CODE_UK` (`user_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_users`
--

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_genre`
--

DROP TABLE IF EXISTS `artist_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_genre` (
  `artist_genre_id` bigint NOT NULL AUTO_INCREMENT,
  `artist_id` bigint DEFAULT NULL,
  `genre_id` bigint DEFAULT NULL,
  PRIMARY KEY (`artist_genre_id`),
  KEY `FKq0okm9v81nfuren3e5y1i8dng` (`artist_id`),
  KEY `FK268c3w1s4sl33koktykvsys7s` (`genre_id`),
  CONSTRAINT `FK268c3w1s4sl33koktykvsys7s` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `FKq0okm9v81nfuren3e5y1i8dng` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_genre`
--

LOCK TABLES `artist_genre` WRITE;
/*!40000 ALTER TABLE `artist_genre` DISABLE KEYS */;
INSERT INTO `artist_genre` VALUES (1,1,1),(2,1,6),(3,1,12);
UNLOCK TABLES;

--
-- Table structure for table `artist_song`
--

DROP TABLE IF EXISTS `artist_song`;
CREATE TABLE `artist_song` (
  `artist_song_id` bigint NOT NULL AUTO_INCREMENT,
  `artist_id` bigint DEFAULT NULL,
  `song_id` bigint DEFAULT NULL,
  PRIMARY KEY (`artist_song_id`),
  KEY `FKl73d51pnpjhpwvedu7v94orky` (`artist_id`),
  KEY `FKdy69dl8vgiqo44907796eudrf` (`song_id`),
  CONSTRAINT `FKdy69dl8vgiqo44907796eudrf` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `FKl73d51pnpjhpwvedu7v94orky` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artist_song`
--

LOCK TABLES `artist_song` WRITE;
/*!40000 ALTER TABLE `artist_song` DISABLE KEYS */;
INSERT INTO `artist_song` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Sơn Tùng M-TP','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2FS%C6%A1n%20T%C3%B9ng%20M-TP.jpg?alt=media&token=ce235092-fcc2-490d-8426-a4c12e3e68f9','<p>Thanh Tùng bắt đầu chơi nhạc từ cấp ba với nghệ danh M-TP và được biết đến với \"Cơn Mưa Ngang Qua\".</p><p>Năm 2012, anh đậu thủ khoa Nhạc viện TPHCM và ký hợp đồng với Văn Production, đổi nghệ danh sang Sơn Tùng M-TP.</p><p>Từ 2013 đến 2015, anh có nhiều bản hit như \"Em Của Ngày Hôm Qua\", \"Nắng Ấm Xa Dần\"...</p><p>Năm 2015, anh rời khỏi công ty cũ và gia nhập WePro, tổ chức minishow đầu tiên \"M-TP and Friends\".</p><p>Năm 2017, anh rời khỏi WePro để thành lập M-TP Entertainment, ra mắt \"Lạc Trôi\" và \"Nơi Này Có Anh\". Anh ra mắt album đầu tay \"m-tp M-TP\".</p><p>Năm 2018 anh ra mắt \"Chạy Ngay Đi\" và \"Hãy Trao Cho Anh\" năm 2019. Cả hai bài hát đều trở thành hit. Đặc biệt \"Hãy Trao Cho Anh\" kết hợp với Snopp Dogg đã đưa tên tuổi anh ra thế giới.</p><p><br></p>');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genre`
--

DROP TABLE IF EXISTS `song_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_genre` (
  `song_genre_id` bigint NOT NULL AUTO_INCREMENT,
  `genre_id` bigint DEFAULT NULL,
  `song_id` bigint DEFAULT NULL,
  PRIMARY KEY (`song_genre_id`),
  KEY `FKr8x68xd4yslf57jjn4rd35xai` (`genre_id`),
  KEY `FKifj618bjxya03fqk7o1q040t9` (`song_id`),
  CONSTRAINT `FKifj618bjxya03fqk7o1q040t9` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `FKr8x68xd4yslf57jjn4rd35xai` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genre`
--

LOCK TABLES `song_genre` WRITE;
/*!40000 ALTER TABLE `song_genre` DISABLE KEYS */;
INSERT INTO `song_genre` VALUES (1,1,1),(2,6,1),(3,1,2),(4,6,2),(5,1,3),(6,6,3),(7,1,4),(8,6,4),(9,1,5),(10,6,5),(11,12,5),(12,5,12),(13,6,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Flt.jpg?alt=media&token=e0cf5cd4-6fbe-4e6f-a2f8-120e66c96f2c',NULL,233,'<p><span style=\"color: rgb(51, 51, 51);\">Người theo hương hoa mây mù giăng lối</span></p><p><span style=\"color: rgb(51, 51, 51);\">Làn sương khói phôi phai đưa bước ai xa rồi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đơn côi mình ta vấn vương</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hồi ức, trong men say chiều mưa buồn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngăn giọt lệ ngừng khiến khoé mi sầu bi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đường xưa nơi cố nhân từ giã biệt li</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cánh hoa rụng rơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Phận duyên mong manh rẽ lối trong mơ ngày tương phùng</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tiếng khóc cuốn theo làn gió bay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thuyền ai qua sông lỡ quên vớt ánh trăng tàn nơi này</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trống vắng bóng ai dần hao gầy</span></p><p><span style=\"color: rgb(51, 51, 51);\">♪</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lòng ta xin nguyện khắc ghi trong tim tình nồng mê say</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mặc cho tóc mây vương lên đôi môi cay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bâng khuâng mình ta lạc trôi giữa đời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta lạc trôi giữa trời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đôi chân lang thang về nơi đâu?</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bao yêu thương giờ nơi đâu?</span></p><p><span style=\"color: rgb(51, 51, 51);\">Câu thơ tình xưa vội phai mờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Theo làn sương tan biến trong cõi mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mưa bụi vương trên làn mi mắt</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngày chia lìa hoa rơi buồn hiu hắt</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tiếng đàn ai thêm sầu tương tư lặng mình trong chiều hoàng hôn,</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tan vào lời ca (Hey)</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lối mòn đường vắng một mình ta</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nắng chiều vàng úa nhuộm ngày qua</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin đừng quay lưng xoá</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đừng mang câu hẹn ước kia rời xa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yên bình nơi nào đây</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chôn vùi theo làn mây</span></p><p><span style=\"color: rgb(51, 51, 51);\">Eh-h-h-h-h, la-la-la-la-a-a</span></p><p><span style=\"color: rgb(51, 51, 51);\">Người theo hương hoa mây mù giăng lối</span></p><p><span style=\"color: rgb(51, 51, 51);\">Làn sương khói phôi phai đưa bước ai xa rồi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đơn côi mình ta vấn vương, hồi ức trong men say chiều mưa buồn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngăn giọt lệ ngừng khiến khoé mi sầu bi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đường xưa nơi cố nhân từ giã biệt li</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cánh hoa rụng rơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Phận duyên mong manh rẽ lối trong mơ ngày tương phùng</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tiếng khóc cuốn theo làn gió bay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thuyền ai qua sông lỡ quên vớt ánh trăng tàn nơi này</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trống vắng bóng ai dần hao gầy</span></p><p><span style=\"color: rgb(51, 51, 51);\">♪</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lòng ta xin nguyện khắc ghi trong tim tình nồng mê say</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mặc cho tóc mây vương lên đôi môi cay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bâng khuâng mình ta lạc trôi giữa đời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta lạc trôi giữa trời</span></p><p><span style=\"color: rgb(51, 51, 51);\">♪</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta lạc trôi (Lạc trôi)</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta lạc trôi giữa đời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lạc trôi giữa trời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yeah, ah-h-h-h-h-h</span></p><p><span style=\"color: rgb(51, 51, 51);\">♪</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta đang lạc nơi nào (Lạc nơi nào, lạc nơi nào)</span></p><p><span style=\"color: rgb(51, 51, 51);\">♪</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta đang lạc nơi nào</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Lối mòn đường vắng một mình ta</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta đang lạc nơi nào</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Nắng chiều vàng úa nhuộm ngày qua</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ta đang lạc nơi nào</span></p>','https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/audios%2FLacTroi-SonTungMTP-4725907.mp3?alt=media&token=f60e405f-f8c1-4322-859a-36a7bba87207','Lạc Trôi',1),(2,'https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/multipleImages%2Fnnca.jpg?alt=media&token=b124901c-70b9-4d26-a9fe-976ef2fccfbc','2024-08-16 15:44:40.528568',260,'<p><span style=\"color: rgb(51, 51, 51);\">Em là ai từ đâu bước đến nơi đây dịu dàng chân phương</span></p><p><span style=\"color: rgb(51, 51, 51);\">Em là ai tựa như ánh nắng ban mai ngọt ngào trong sương</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngắm em thật lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim anh yếu mềm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đắm say từ phút đó</span></p><p><span style=\"color: rgb(51, 51, 51);\">Từng giây trôi yêu thêm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bao ngày qua bình minh đánh thức xua tan bộn bề nơi anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Liếc đôi hàng mi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mong manh anh thẫn thờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Muốn hôn nhẹ mái tóc</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bờ môi em anh mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Gió mang câu tình ca</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngàn ánh sao vụt qua nhẹ ôm lấy em</span></p><p><span style=\"color: rgb(51, 51, 51);\">(Yêu em thương em con tim anh chân thành)</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Khép đôi mi thật lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nguyện mãi bên cạnh nhau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yêu say đắm như ngày đầu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa xuân đến bình yên</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cho anh những giấc mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hạ lưu giữ ngày mưa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngọt ngào nên thơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa thu lá vàng rơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đông sang anh nhớ em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tình yêu bé nhỏ xin</span></p><p><span style=\"color: rgb(51, 51, 51);\">Dành tặng riêng em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Còn đó tiếng nói ấy bên tai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Vấn vương bao ngày qua</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ánh mắt bối rối</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nhớ thương bao ngày qua</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yêu em anh thẫn thờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim bâng khuâng đâu có ngờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chẳng bao giờ phải mong chờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đợi ai trong chiều hoàng hôn mờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đắm chìm hòa vào vần thơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngắm nhìn khờ dại mộng mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đừng bước vội vàng rồi làm ngơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lạnh lùng đó làm bộ dạng thờ ơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nhìn anh đi em nha</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hướng nụ cười cho riêng anh nha</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đơn giản là yêu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim anh lên tiếng thôi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Gió mang câu tình ca</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngàn ánh sao vụt qua nhẹ ôm lấy em</span></p><p><span style=\"color: rgb(51, 51, 51);\">(Yêu em thương em con tim anh chân thành)</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Khép đôi mi thật lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nguyện mãi bên cạnh nhau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yêu say đắm như ngày đầu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa xuân đến bình yên</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cho anh những giấc mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hạ lưu giữ ngày mưa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngọt ngào nên thơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa thu lá vàng rơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đông sang anh nhớ em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tình yêu bé nhỏ xin</span></p><p><span style=\"color: rgb(51, 51, 51);\">Dành tặng riêng em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Oh nhớ thương em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Oh nhớ thương em lắm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ah phía sau chân trời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Có ai băng qua lối về</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cùng em đi trên đoạn đường dài</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Gió mang câu tình ca</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngàn ánh sao vụt qua nhẹ ôm lấy em</span></p><p><span style=\"color: rgb(51, 51, 51);\">(Yêu em thương em con tim anh chân thành)</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cầm tay anh dựa vai anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Kề bên anh nơi này có anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Khép đôi mi thật lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nguyện mãi bên cạnh nhau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Yêu say đắm như ngày đầu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa xuân đến bình yên</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cho anh những giấc mơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hạ lưu giữ ngày mưa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngọt ngào nên thơ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mùa thu lá vàng rơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đông sang anh nhớ em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tình yêu bé nhỏ xin</span></p><p><span style=\"color: rgb(51, 51, 51);\">Dành tặng riêng em</span></p>','https://firebasestorage.googleapis.com/v0/b/bicycle-shop-de666.appspot.com/o/audios%2FNoiNayCoAnh-SonTungMTP-4772041.mp3?alt=media&token=8539e8f3-1a30-4f0a-9584-089acd980878','Nơi này có anh',2),(3,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Ftvvn.jpg?alt=media&token=6a224bb7-2e8f-4405-a5a7-55f3a42a42ef','2024-08-18 10:40:07.340817',232,'<p><span style=\"color: rgb(51, 51, 51);\">Việt Nam sáng trong bao lời ca</span></p><p><span style=\"color: rgb(51, 51, 51);\">À ơi ới a ru hời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đây nắng tre xanh mưa chân trời,</span></p><p><span style=\"color: rgb(51, 51, 51);\">Rừng sâu, biển rộng, núi cao</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thời gian khắc ghi từ ngàn xưa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Việt Nam vẫn luôn huy hoàng</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bao chiến công anh hùng</span></p><p><span style=\"color: rgb(51, 51, 51);\">muôn đời nhớ ơn Mãi luôn rền vang</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Lời Nam Quốc Sơn Hà định phận</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đông Như Nguyệt sáng soi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mực in dấu quân dân nhà Trần</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lời Hịch còn vang sấm truyền</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trời xanh như áng thiên thư Bình Ngô</span></p><p><span style=\"color: rgb(51, 51, 51);\">Danh nhân họa nước non</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngàn thu vững Tuyên Ngôn Độc Lập</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thịnh vượng Việt Nam sáng ngời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đời đời ngàn muôn ấm no</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Cọc chông cắm nơi Bạch Đằng Giang</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nhiều phen phá tan quân thù</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ai biết khi xưa Thăng Long Thành rồng thiêng từ đây vút bay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bàn tay đã đi vạn *** xa , bình minh chiếu trên quê nhà</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thương cánh chim Lạc Hồng</span></p><p><span style=\"color: rgb(51, 51, 51);\">bay dọc đất nước theo bóng cây Trường Sơn</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Lời Nam Quốc Sơn Hà định phận</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đông Như Nguyệt sáng soi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mực in dấu quân dân nhà Trần</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lời Hịch còn vang sấm truyền</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trời xanh như áng thiên thư Bình Ngô</span></p><p><span style=\"color: rgb(51, 51, 51);\">Danh nhân họa nước non</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ngàn thu vững Tuyên Ngôn Độc Lập</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thịnh vượng Việt Nam sáng ngời</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đời đời ngàn muôn ấm no</span></p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2FThinhVuongVietNamSangNgoi-buitruonglinh-11251299.mp3?alt=media&token=718d05f6-a908-46b1-84a9-1176f759bd12','Thịnh Vượng Việt Nam Sáng Ngời',3),(4,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Fcnd.jpg?alt=media&token=df74bbba-1cf9-47eb-a366-62eb6801716d','2024-08-18 10:57:48.691396',0,'<p><span style=\"color: rgb(51, 51, 51);\">Từng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta</span></p><p><span style=\"color: rgb(51, 51, 51);\">Từng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim giờ không cùng chung đôi nhịp</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nụ cười lạnh băng còn đâu nồng ấm thân quen</span></p><p><span style=\"color: rgb(51, 51, 51);\">Vô tâm làm ngơ thờ ơ tương lai ai ngờ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Quên đi mộng mơ ngày thơ tan theo sương mờ</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Mưa lặng thầm đường vắng chiều nay</span></p><p><span style=\"color: rgb(51, 51, 51);\">In giọt lệ nhòe khóe mắt sầu cay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bao hẹn thề tàn úa vụt bay</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trôi dạt chìm vào những giấc nồng say</span></p><p><span style=\"color: rgb(51, 51, 51);\">Quay lưng chia hai lối</span></p><p><span style=\"color: rgb(51, 51, 51);\">Còn một mình anh thôi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Giả dối bao trùm bỗng chốc lên ngôi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Trong đêm tối</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bầu bạn cùng đơn côi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Suy tư anh kìm nén đã bốc cháy yêu thương trao em rồi</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết</span></p><p><span style=\"color: rgb(51, 51, 51);\">Son môi hồng vương trên môi bấy lấu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hương thơm dịu êm mê man bấy lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh không chờ mong quan tâm nữa đâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tương lai từ giờ như bức tranh em quên tô màu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin chôn vùi tên em trong đớn đau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nơi hiu quạnh tan hoang ngàn nỗi đau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Dư âm tàn tro vô vọng phía sau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đua chen dày vò xâu xé quanh thân xác nát nhàu</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy ngay đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mọi điều dần tồi tệ hơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy ngay đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lòng hận thù cuộn từng cơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tựa giông tố đến bên ghé thăm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Từ nơi hố sâu tối tăm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mọi điều dần tồi tệ hơn</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Buông bàn tay buông xuôi hi vọng buông bình yên</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên</span></p><p><span style=\"color: rgb(51, 51, 51);\">Vết thương cứ thêm khắc thêm mãi thêm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chà đạp vùi dập *** lên tiếng yêu ấm êm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nhìn lại niềm tin từng trao giờ sao sau bao ngu muội sai lầm anh vẫn yếu mềm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Căn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Căm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ahhhh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chính em gây ra mà</span></p><p><span style=\"color: rgb(51, 51, 51);\">Những điều vừa diễn ra</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chính em gây ra mà, chính em gây ra mà</span></p><p><span style=\"color: rgb(51, 51, 51);\">Những điều vừa diễn ra</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hết thật rồi</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết</span></p><p><span style=\"color: rgb(51, 51, 51);\">Son môi hồng vương trên môi bấy lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hương thơm dịu êm mê man bấy lâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh không chờ mong quan tâm nữa đâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tương lai từ giờ như bức tranh em quên tô màu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin chôn vùi tên em trong đớn đau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Nơi hiu quạnh tan hoang ngàn nỗi đau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Dư âm tàn tro vô vọng phía sau</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đua chen dày vò xâu xé quanh thân xác nát nhàu</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy ngay đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mọi điều dần tồi tệ hơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy ngay đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Lòng hận thù cuộn từng cơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tựa giông tố đến bên ghé thăm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Từ nơi hố sâu tối tăm</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chạy đi trước khi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Mọi điều dần tồi tệ hơn!</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết ... Ohhhh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Chính em gây ra mà, chính em gây ra mà</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đốt sạch hết ... Ohhhh!</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đừng nhìn anh với khuôn mặt xa lạ</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin đừng lang thang trong tâm trí anh từng đêm nữa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Quên đi quên đi hết đi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Quên đi quên đi hết đi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Thắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ!</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Bốc cháy lên cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bốc cháy lên cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ai khơi dậy cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bốc cháy lên cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Bốc cháy lên cơn hận thù trong anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Ai khơi dậy cơn hận thù trong anh</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p><p><span style=\"color: rgb(51, 51, 51);\">Không còn ai cạnh bên em ngày mai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tạm biệt một tương lai ngang trái</span></p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2FChayNgayDi-SonTungMTP-5468704.mp3?alt=media&token=044d7a3b-7fe2-4d5b-8994-b1cb5c696a02','Chạy ngay đi',1),(5,'https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/multipleImages%2Fasr.jpg?alt=media&token=0c3bc1a4-b83f-4dca-8f5c-d3c94c87d75a','2024-08-18 11:38:18.144833',0,'<p><span style=\"color: rgb(51, 51, 51);\">Nếu ngày mai em rời xa anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh không biết sống thế nào đây</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim anh nhói đau từng cơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh biết hạt mưa không ngừng rơi khi thấy em buồn.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Xin thời gian hãy trở lại đi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh không muốn mất em người ơi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Con tim anh nhói đau từng cơn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh khóc vì anh biết mình sai</span></p><p><span style=\"color: rgb(51, 51, 51);\">Tất cả là vì tại anh.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">[ĐK:]</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh sai rồi, anh sai rồi</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin em một lần hãy nói em yêu anh</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh xin nhận nhận hết nỗi buồn</span></p><p><span style=\"color: rgb(51, 51, 51);\">Đừng rời xanh kỉ niệm, anh vẫn ở đây ngóng chờ em.</span></p><p><br></p><p><span style=\"color: rgb(51, 51, 51);\">Giờ em ở đâu tìm em ở đâu</span></p><p><span style=\"color: rgb(51, 51, 51);\">Sao em nỡ bước đi rời xa</span></p><p><span style=\"color: rgb(51, 51, 51);\">Hãy quay trở về bên anh một lần thôi em</span></p><p><span style=\"color: rgb(51, 51, 51);\">Anh đã sai rồi, anh như gục ngã chìm đắm trong ly rượu say</span></p><p><span style=\"color: rgb(51, 51, 51);\">Xin em một lần tha thứ quay về bên anh.</span></p>','https://firebasestorage.googleapis.com/v0/b/music-web-c233f.appspot.com/o/audios%2Fy2mate.com%20-%20Anh%20Sai%20R%E1%BB%93i%20%20S%C6%A1n%20T%C3%B9ng%20MTP.mp3?alt=media&token=9a2c1bd1-7dd5-4512-b911-7872083b1cb0','Anh Sai Rồi',1),(12,'https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/multipleImages%2Floveyourselt.jpg?alt=media&token=b9067dd6-a998-4a35-a00e-ac1618409de7','2024-08-20 11:10:32.049741',271,'<p>[Verse 1]</p><p>For all the times that you rained on my parade</p><p>And all the clubs you get in using my name</p><p>You think you broke my heart, oh girl for goodness sake</p><p>You think I\'m cryin\' on my own, well I ain\'t</p><p><br></p><p>[Refrain]</p><p>And I didn\'t wanna write a song</p><p>\'Cause I didn\'t want anyone thinking I still care</p><p>I don\'t but, you still hit my phone up</p><p>And baby I\'ll be movin\' on</p><p>And I think you should be somethin\'</p><p>I don\'t wanna hold back</p><p>Maybe you should know that</p><p><br></p><p>[Pre-Chorus]</p><p>My mama don\'t like you and she likes everyone</p><p>And I never like to admit that I was wrong</p><p>And I\'ve been so caught up in my job, didn\'t see what\'s going on</p><p>But now I know, I\'m better sleeping on my own</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p><br></p><p>[Verse 2]</p><p>But when you told me that you hated my friends</p><p>The only problem was with you and not them</p><p>And every time you told me my opinion was wrong</p><p>And tried to make me forget where I came from</p><p><br></p><p>[Refrain]</p><p>And I didn\'t wanna write a song</p><p>\'Cause I didn\'t want anyone thinking I still care</p><p>I don\'t but, you still hit my phone up</p><p>And baby I\'ll be movin\' on</p><p>And I think you should be somethin\'</p><p>I don\'t wanna hold back</p><p>Maybe you should know that</p><p><br></p><p>[Pre-Chorus]</p><p>My mama don\'t like you and she likes everyone</p><p>And I never like to admit that I was wrong</p><p>And I\'ve been so caught up in my job, didn\'t see what\'s going on</p><p>But now I know, I\'m better sleeping on my own</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p><br></p><p>[Bridge]</p><p>For all the times that you made me feel small</p><p>I fell in love, now I feel nothin\' at all</p><p>I never felt so low and I was vulnerable</p><p>Was I a fool to let you break down my walls?</p><p><br></p><p>[Chorus]</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p><p>\'Cause if you like the way you look that much</p><p>Oh baby you should go and love yourself</p><p>And if you think that I\'m still holdin\' on to somethin\'</p><p>You should go and love yourself</p>','https://firebasestorage.googleapis.com/v0/b/music-g-649ea.appspot.com/o/audios%2Fy2meta.com%20-%20Justin%20Bieber%20-%20Love%20Yourself%20(PURPOSE%20_%20The%20Movement)%20(128%20kbps).mp3?alt=media&token=affab717-c43b-4c74-bb41-da87a0488d1d','Love Yourselt',NULL);
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

-- Dump completed on 2024-08-20 11:14:49
