# ************************************************************
# Sequel Ace SQL dump
# Версия 20033
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Хост: localhost (MySQL 8.0.31)
# База данных: artfora
# Время формирования: 2022-11-18 15:11:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы activity_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `profile_id` bigint NOT NULL,
  `object_id` bigint NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_repost` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;

INSERT INTO `activity_log` (`id`, `user_id`, `profile_id`, `object_id`, `type`, `message`, `is_repost`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,3,1,'follow','Jimmy O started following you.',0,'2022-01-28 15:34:49','2022-01-28 15:34:49',NULL),
	(2,4,2,2,'follow','Jimmy O started following you.',0,'2022-01-28 18:15:28','2022-01-28 18:15:28',NULL),
	(3,5,3,3,'follow','Atman Comic started following you.',0,'2022-01-28 23:08:07','2022-01-28 23:08:07',NULL),
	(4,3,5,4,'follow','Kenneth Tranekjer started following you.',0,'2022-01-28 23:54:05','2022-01-28 23:54:05',NULL),
	(5,3,4,5,'follow','Kenneth Tranekjer started following you.',0,'2022-01-28 23:54:14','2022-01-28 23:54:14',NULL),
	(8,4,6,8,'follow','Jimmy O started following you.',0,'2022-01-29 11:01:33','2022-01-29 11:01:33',NULL),
	(9,3,5,2,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-29 11:06:58','2022-01-29 11:06:58',NULL),
	(10,4,3,6,'comment','Jimmy O commented on your post.',0,'2022-01-29 12:51:40','2022-01-29 12:51:40',NULL),
	(11,4,3,6,'liked','Jimmy O liked your post.',0,'2022-01-29 12:51:46','2022-01-29 12:51:46',NULL),
	(12,5,3,6,'liked','Atman Comic liked your post.',0,'2022-01-29 12:56:16','2022-01-29 12:56:16',NULL),
	(13,5,8,9,'follow','Atman Comic started following you.',0,'2022-01-29 16:36:48','2022-01-29 16:36:48',NULL),
	(14,5,8,11,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:03','2022-01-29 16:37:03',NULL),
	(15,5,8,10,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:05','2022-01-29 16:37:05',NULL),
	(16,5,8,9,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:07','2022-01-29 16:37:07',NULL),
	(17,5,8,8,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:09','2022-01-29 16:37:09',NULL),
	(18,5,5,7,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:16','2022-01-29 16:37:16',NULL),
	(19,5,5,2,'liked','Atman Comic liked your post.',0,'2022-01-29 16:37:19','2022-01-29 16:37:19',NULL),
	(20,4,8,10,'follow','Jimmy O started following you.',0,'2022-01-29 16:37:57','2022-01-29 16:37:57',NULL),
	(21,4,8,11,'liked','Jimmy O liked your post.',0,'2022-01-29 16:38:05','2022-01-29 16:38:05',NULL),
	(22,4,8,10,'liked','Jimmy O liked your post.',0,'2022-01-29 16:38:06','2022-01-29 16:38:06',NULL),
	(23,4,8,9,'liked','Jimmy O liked your post.',0,'2022-01-29 16:38:08','2022-01-29 16:38:08',NULL),
	(24,4,8,8,'liked','Jimmy O liked your post.',0,'2022-01-29 16:38:10','2022-01-29 16:38:10',NULL),
	(25,4,5,11,'follow','Jimmy O started following you.',0,'2022-01-29 18:57:22','2022-01-29 18:57:22',NULL),
	(26,9,5,7,'liked','Bastian Krolzig liked your post.',0,'2022-01-30 21:22:42','2022-01-30 21:22:42',NULL),
	(27,3,5,7,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-30 23:41:52','2022-01-30 23:41:52',NULL),
	(28,3,5,12,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-30 23:42:19','2022-01-30 23:42:19',NULL),
	(29,3,3,6,'comment','Tranekjer commented on your post.',0,'2022-01-30 23:43:03','2022-01-30 23:43:03',NULL),
	(30,8,4,12,'follow','Sophie Schøntod started following you.',0,'2022-01-31 01:22:57','2022-01-31 01:22:57',NULL),
	(31,8,5,13,'follow','Sophie Schøntod started following you.',0,'2022-01-31 01:23:00','2022-01-31 01:23:00',NULL),
	(32,8,2,14,'follow','Sophie Schøntod started following you.',0,'2022-01-31 01:24:05','2022-01-31 01:24:05',NULL),
	(33,8,3,15,'follow','Sophie Schøntod started following you.',0,'2022-01-31 01:24:57','2022-01-31 01:24:57',NULL),
	(34,8,3,6,'liked','Sophie Schøntod liked your post.',0,'2022-01-31 01:25:04','2022-01-31 01:25:04',NULL),
	(35,8,6,16,'follow','Sophie Schøntod started following you.',0,'2022-01-31 01:25:25','2022-01-31 01:25:25',NULL),
	(36,3,3,6,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-31 06:56:25','2022-01-31 06:56:25',NULL),
	(37,3,8,17,'follow','Kenneth Tranekjer started following you.',0,'2022-01-31 06:56:39','2022-01-31 06:56:39',NULL),
	(38,3,8,11,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-31 06:56:53','2022-01-31 06:56:53',NULL),
	(39,3,8,10,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-31 06:56:59','2022-01-31 06:56:59',NULL),
	(40,3,8,9,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-31 06:57:07','2022-01-31 06:57:07',NULL),
	(41,3,8,8,'liked','Kenneth Tranekjer liked your post.',0,'2022-01-31 06:57:14','2022-01-31 06:57:14',NULL),
	(42,4,3,15,'liked','Jimmy O liked your post.',0,'2022-01-31 15:06:38','2022-01-31 15:06:38',NULL),
	(43,5,3,15,'liked','Atman Comic liked your post.',0,'2022-01-31 21:05:28','2022-01-31 21:05:28',NULL),
	(44,5,3,15,'comment','Atman Comic commented on your post.',0,'2022-01-31 21:06:57','2022-01-31 21:06:57',NULL),
	(45,5,5,12,'liked','Atman Comic liked your post.',0,'2022-01-31 21:07:07','2022-01-31 21:07:07',NULL),
	(46,8,5,17,'liked','Sophie Schøntod liked your post.',0,'2022-01-31 23:04:27','2022-01-31 23:04:27',NULL),
	(47,4,8,19,'liked','Jimmy O liked your post.',0,'2022-01-31 23:14:58','2022-01-31 23:14:58',NULL),
	(48,4,5,17,'liked','Jimmy O liked your post.',0,'2022-01-31 23:15:13','2022-01-31 23:15:13',NULL),
	(49,8,3,15,'liked','Sophie Schøntod liked your post.',0,'2022-01-31 23:19:15','2022-01-31 23:19:15',NULL),
	(50,4,8,21,'liked','Jimmy O liked your post.',0,'2022-01-31 23:25:11','2022-01-31 23:25:11',NULL),
	(51,4,8,21,'comment','Jimmy O commented on your post.',0,'2022-01-31 23:25:31','2022-01-31 23:25:31',NULL),
	(52,4,8,20,'liked','Jimmy O liked your post.',0,'2022-01-31 23:26:21','2022-01-31 23:26:21',NULL),
	(53,4,8,20,'comment','Jimmy O commented on your post.',0,'2022-01-31 23:30:07','2022-01-31 23:30:07',NULL),
	(54,4,10,13,'liked','Jimmy O liked your post.',0,'2022-01-31 23:55:02','2022-01-31 23:55:02',NULL),
	(55,4,10,18,'follow','Jimmy O started following you.',0,'2022-02-01 00:14:26','2022-02-01 00:14:26',NULL),
	(56,4,10,14,'liked','Jimmy O liked your post.',0,'2022-02-01 00:15:40','2022-02-01 00:15:40',NULL),
	(57,3,8,21,'liked','Tranekjer liked your post.',0,'2022-02-01 10:12:37','2022-02-01 10:12:37',NULL),
	(58,3,5,17,'liked','Tranekjer liked your post.',0,'2022-02-01 10:13:04','2022-02-01 10:13:04',NULL),
	(61,10,8,21,'liked','Ken Avalon liked your post.',0,'2022-02-03 10:25:02','2022-02-03 10:25:02',NULL),
	(62,10,2,19,'follow','Ken Avalon started following you.',0,'2022-02-03 10:26:38','2022-02-03 10:26:38',NULL),
	(63,10,8,20,'follow','Ken Avalon started following you.',0,'2022-02-03 10:28:17','2022-02-03 10:28:17',NULL),
	(64,2,8,25,'liked','ARTfora liked your post.',0,'2022-02-03 22:18:59','2022-02-03 22:18:59',NULL),
	(65,2,8,24,'liked','ARTfora liked your post.',0,'2022-02-03 22:19:06','2022-02-03 22:19:06',NULL),
	(66,2,8,23,'liked','ARTfora liked your post.',0,'2022-02-03 22:19:19','2022-02-03 22:19:19',NULL),
	(67,4,8,25,'liked','Jimmy O liked your post.',0,'2022-02-03 22:20:22','2022-02-03 22:20:22',NULL),
	(68,4,8,24,'liked','Jimmy O liked your post.',0,'2022-02-03 22:20:24','2022-02-03 22:20:24',NULL),
	(69,4,8,23,'liked','Jimmy O liked your post.',0,'2022-02-03 22:20:26','2022-02-03 22:20:26',NULL),
	(70,10,8,25,'liked','Ken Avalon liked your post.',0,'2022-02-07 18:34:35','2022-02-07 18:34:35',NULL),
	(71,10,8,24,'liked','Ken Avalon liked your post.',0,'2022-02-07 18:34:37','2022-02-07 18:34:37',NULL),
	(72,4,10,27,'liked','Jimmy O liked your post.',0,'2022-02-11 08:33:54','2022-02-11 08:33:54',NULL),
	(73,4,10,26,'liked','Jimmy O liked your post.',0,'2022-02-11 08:34:11','2022-02-11 08:34:11',NULL),
	(76,4,13,7,'liked',' liked your post.',0,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(77,1,13,7,'liked',' liked your post.',0,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(78,1,5,22,'follow','ARTfora Admin started following you.',0,'2022-04-02 18:08:39','2022-04-02 18:08:39',NULL),
	(79,1,5,22,'unfollow','ARTfora Admin has unfollowed you.',0,'2022-04-02 18:08:58','2022-04-02 18:08:58',NULL),
	(80,13,5,23,'follow','Merisio started following you.',0,'2022-04-02 18:12:14','2022-04-02 18:12:14',NULL),
	(81,13,5,7,'liked','Merisio liked your post.',0,'2022-04-02 18:12:49','2022-04-02 18:12:49',NULL),
	(83,18,10,25,'follow','Netra123 started following you.',0,'2022-04-06 13:36:04','2022-04-06 13:36:04',NULL),
	(84,5,2,3,'liked',' liked your post.',0,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(85,5,8,1,'liked',' liked your post.',0,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(86,5,2,2,'liked',' liked your post.',0,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(87,18,5,26,'follow','Netra123 started following you.',0,'2022-04-11 11:46:53','2022-04-11 11:46:53',NULL),
	(88,5,4,27,'follow','Atman Comic Using A Very Long Name started following you.',0,'2022-04-11 13:05:29','2022-04-11 13:05:29',NULL),
	(89,19,2,28,'follow','Bhavesh started following you.',0,'2022-04-11 17:32:08','2022-04-11 17:32:08',NULL),
	(90,19,4,29,'follow','Bhavesh started following you.',0,'2022-04-11 17:33:03','2022-04-11 17:33:03',NULL),
	(91,19,5,30,'follow','Bhavesh started following you.',0,'2022-04-11 17:33:10','2022-04-11 17:33:10',NULL),
	(92,10,8,51,'liked','Ken Avalon liked your post.',0,'2022-04-14 07:46:09','2022-04-14 07:46:09',NULL),
	(93,10,8,50,'liked','Ken Avalon liked your post.',0,'2022-04-14 07:46:13','2022-04-14 07:46:13',NULL),
	(94,10,4,31,'liked','Ken Avalon liked your repost from Jimmy O',10,'2022-04-14 07:46:15','2022-04-14 07:46:15',NULL),
	(95,10,8,31,'liked','Ken Avalon liked your repost from Jimmy O',10,'2022-04-14 07:46:15','2022-04-14 07:46:15',NULL),
	(96,10,16,31,'liked','Ken Avalon liked your repost from Jimmy O',10,'2022-04-14 07:46:15','2022-04-14 07:46:15',NULL),
	(97,10,8,31,'liked','Ken Avalon liked your post.',10,'2022-04-14 07:46:16','2022-04-14 07:46:16',NULL),
	(98,10,4,31,'liked','Ken Avalon liked your repost from Jimmy O',9,'2022-04-14 07:46:19','2022-04-14 07:46:19',NULL),
	(99,10,8,31,'liked','Ken Avalon liked your repost from Jimmy O',9,'2022-04-14 07:46:19','2022-04-14 07:46:19',NULL),
	(100,10,16,31,'liked','Ken Avalon liked your repost from Jimmy O',9,'2022-04-14 07:46:19','2022-04-14 07:46:19',NULL),
	(101,10,8,31,'liked','Ken Avalon liked your post.',9,'2022-04-14 07:46:20','2022-04-14 07:46:20',NULL),
	(102,20,19,31,'follow','Bhavesh Tester started following you.',0,'2022-04-15 06:53:01','2022-04-15 06:53:01',NULL),
	(103,19,20,32,'follow','Bhavesh started following you.',0,'2022-04-15 10:12:57','2022-04-15 10:12:57',NULL),
	(104,5,8,53,'liked','Atman Comic Using A Very Long Name liked your post.',0,'2022-04-15 20:33:12','2022-04-15 20:33:12',NULL),
	(105,5,21,33,'follow','Atman Comic Using A Very Long Name started following you.',0,'2022-04-18 10:30:33','2022-04-18 10:30:33',NULL),
	(106,26,5,34,'follow','Nataliya started following you.',0,'2022-04-29 11:35:44','2022-04-29 11:35:44',NULL),
	(107,26,5,2,'liked','Nataliya liked your post.',0,'2022-04-29 11:37:59','2022-04-29 11:37:59',NULL),
	(108,26,5,17,'liked','Nataliya liked your post.',0,'2022-04-29 12:04:01','2022-04-29 12:04:01',NULL),
	(109,26,5,17,'comment','Nataliya commented on your post.',0,'2022-04-29 12:04:29','2022-04-29 12:04:29',NULL),
	(110,5,26,35,'follow','Atman Comic Using A Very Long Name started following you.',0,'2022-04-29 12:04:36','2022-04-29 12:04:36',NULL),
	(111,5,8,31,'comment','Atman Comic commented on your post.',10,'2022-04-29 12:06:24','2022-04-29 12:06:24',NULL),
	(112,5,4,31,'comment','Atman Comic commented on your repost from Sophie Schøntod',10,'2022-04-29 12:06:24','2022-04-29 12:06:24',NULL),
	(113,5,8,31,'comment','Atman Comic commented on your repost from Sophie Schøntod',10,'2022-04-29 12:06:24','2022-04-29 12:06:24',NULL),
	(114,5,16,31,'comment','Atman Comic commented on your repost from Sophie Schøntod',10,'2022-04-29 12:06:24','2022-04-29 12:06:24',NULL),
	(115,2,2,6,'comment','Commented from post from ARTfora Gallery',0,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(116,19,5,17,'comment','Bhavesh commented on your post.',0,'2022-05-07 13:30:28','2022-05-07 13:30:28',NULL),
	(117,19,5,49,'comment','Bhavesh commented on your post.',0,'2022-05-09 20:24:16','2022-05-09 20:24:16',NULL),
	(118,19,2,54,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(119,19,21,29,'comment','Commented from post from Aksó Nerd Arts',0,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(120,19,21,29,'comment','Commented from post from Aksó Nerd Arts',0,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(121,19,2,40,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(122,19,2,38,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:12:51','2022-05-12 12:12:51',NULL),
	(123,19,2,38,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(124,19,2,38,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(125,19,2,38,'comment','Commented from post from ARTfora Gallery',0,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(126,19,5,49,'comment','Bhavesh commented on your post.',0,'2022-05-12 12:45:00','2022-05-12 12:45:00',NULL);

/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы activity_time
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_time`;

CREATE TABLE `activity_time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `activity_time_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activity_time` WRITE;
/*!40000 ALTER TABLE `activity_time` DISABLE KEYS */;

INSERT INTO `activity_time` (`id`, `user_id`, `start_time`, `end_time`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(2,1,'2022-05-04 22:42:24','2022-05-04 22:42:24','2022-01-27 15:26:40','2022-05-04 22:42:24',NULL),
	(3,2,'2022-05-05 19:44:30','2022-05-05 19:44:30','2022-01-28 14:14:04','2022-05-05 19:44:30',NULL),
	(4,4,'2022-04-29 15:36:04','2022-04-29 15:36:04','2022-01-28 15:55:36','2022-04-29 15:36:04',NULL),
	(5,3,'2022-04-30 07:09:08',NULL,'2022-01-28 17:03:52','2022-04-30 07:09:08',NULL),
	(7,5,'2022-05-05 18:48:43',NULL,'2022-01-29 12:56:01','2022-05-05 18:48:43',NULL),
	(8,10,'2022-04-25 20:31:34','2022-04-25 20:31:34','2022-01-31 10:34:42','2022-04-25 20:31:34',NULL),
	(11,8,'2022-05-07 13:22:28',NULL,'2022-03-26 09:29:37','2022-05-07 13:22:28',NULL),
	(12,13,'2022-05-03 19:16:06','2022-05-03 19:16:06','2022-03-26 16:38:53','2022-05-03 19:16:06',NULL),
	(13,18,'2022-05-27 07:45:40','2022-05-27 07:45:40','2022-04-08 10:16:47','2022-05-27 07:45:40',NULL),
	(14,19,'2022-06-07 11:59:32','2022-06-07 11:59:32','2022-04-11 17:32:42','2022-06-07 11:59:32',NULL),
	(15,20,'2022-04-15 11:19:56',NULL,'2022-04-15 06:54:10','2022-04-15 11:19:56',NULL),
	(16,21,'2022-04-30 21:40:48',NULL,'2022-04-15 13:36:00','2022-04-30 21:40:48',NULL);

/*!40000 ALTER TABLE `activity_time` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы app_backgrounds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_backgrounds`;

CREATE TABLE `app_backgrounds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `app_backgrounds` WRITE;
/*!40000 ALTER TABLE `app_backgrounds` DISABLE KEYS */;

INSERT INTO `app_backgrounds` (`id`, `file`)
VALUES
	(1,'app_background.jpg');

/*!40000 ALTER TABLE `app_backgrounds` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы app_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `app_setting`;

CREATE TABLE `app_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `embed_header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы blocked_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blocked_users`;

CREATE TABLE `blocked_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `blocked_userid` int NOT NULL,
  `post_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `sub_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы cart_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart_products`;

CREATE TABLE `cart_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(10,2) DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `title`, `parent_id`, `created_at`, `updated_at`)
VALUES
	(1,'Books & magazines',0,'2020-10-24 18:25:54','2020-10-24 18:25:54'),
	(2,'Music & sound',0,'2020-10-24 18:26:09','2020-10-24 18:28:51'),
	(3,'Digital art & wallpapers',0,'2020-10-25 14:46:49','2020-10-25 14:46:49'),
	(4,'Paintings & illustrations',0,'2020-10-25 14:47:02','2020-10-25 14:47:02'),
	(5,'Videos & visuals',0,'2020-10-25 14:47:14','2020-10-25 14:47:14'),
	(6,'Photo',0,'2020-10-25 14:47:23','2020-10-25 14:47:23'),
	(7,'Books',1,'2020-11-23 07:53:59','2020-11-23 07:53:59'),
	(8,'Graphic novels',1,'2020-11-23 07:53:59','2020-11-23 07:53:59'),
	(9,'Magazines',1,'2020-11-23 07:53:59','2020-11-23 07:53:59'),
	(10,'CD',2,'2020-11-23 07:54:47','2020-11-23 07:54:47'),
	(11,'Vinyl',2,'2020-11-23 07:55:08','2020-11-23 07:55:08'),
	(12,'Digital',2,'2020-11-23 07:55:19','2020-11-23 07:55:19'),
	(13,'Tutorials',2,'2020-11-23 07:55:27','2020-11-23 07:55:27'),
	(14,'Workshops',2,'2020-11-23 07:55:39','2020-11-23 07:55:39'),
	(15,'Tutorials',3,'2020-11-23 07:55:51','2020-11-23 07:55:51'),
	(16,'Workshops',3,'2020-11-23 07:55:59','2020-11-23 07:55:59'),
	(17,'Oil painting',4,'2020-11-23 07:56:10','2020-11-23 07:56:10'),
	(18,'Acrylic painting',4,'2020-11-23 07:56:20','2020-11-23 07:56:20'),
	(19,'Aquarelle',4,'2020-11-23 07:56:30','2020-11-23 07:56:30'),
	(20,'Charcoal',4,'2020-11-23 07:56:41','2020-11-23 07:56:41'),
	(21,'Pencil',4,'2020-11-23 07:56:52','2020-11-23 07:56:52'),
	(22,'Ink',4,'2020-11-23 07:57:04','2020-11-23 07:57:04'),
	(23,'Mixed media',4,'2020-11-23 07:57:15','2020-11-23 07:57:15'),
	(24,'Tutorials',4,'2020-11-23 07:57:24','2020-11-23 07:57:24'),
	(25,'Workshops',4,'2020-11-23 07:57:35','2020-11-23 07:57:35'),
	(26,'Blu-ray & DVD',5,'2020-11-23 07:57:58','2020-11-23 07:57:58'),
	(27,'Digital',5,'2020-11-23 07:58:09','2020-11-23 07:58:09'),
	(28,'Tutorials',5,'2020-11-23 07:58:17','2020-11-23 07:58:17'),
	(29,'Workshops',5,'2020-11-23 07:58:25','2020-11-23 07:58:25'),
	(31,'Tutorials',6,'2020-11-23 07:58:39','2020-11-23 07:58:39'),
	(32,'Workshops',6,'2020-11-23 07:58:50','2020-11-23 09:42:45'),
	(33,'Modelling & Styling',0,'2021-01-08 10:27:50','2021-01-08 10:27:50'),
	(34,'Print',4,'2021-08-07 21:41:44','2021-08-07 21:41:44'),
	(35,'Original artwork',4,'2021-08-06 17:33:25','2021-08-06 17:33:32'),
	(36,'Merchandise',4,'2021-08-07 21:41:44','2021-08-07 21:41:50'),
	(38,'Pastel',4,'2021-08-31 00:26:16','2021-08-31 00:26:24'),
	(39,'Spray paint',4,'2021-08-31 13:07:29','2021-08-31 13:07:33'),
	(40,'Print - fine art',4,'2021-09-02 18:20:06','2021-09-02 18:20:09'),
	(41,'Modeling',33,'2021-12-30 02:00:00','2021-12-30 02:00:00'),
	(42,'Make-up',33,'2021-12-30 02:00:00','2021-12-30 02:00:00'),
	(43,'Hair styling',33,'2021-12-30 02:00:00','2021-12-30 02:00:00'),
	(44,'Tutorials',0,'2022-01-12 02:00:00','2022-01-12 02:00:00'),
	(45,'Wallpaper',3,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(46,'Artwork',3,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(47,'Print',3,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(48,'Photo',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(49,'Music production',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(50,'Painting',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(51,'Illustration',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(52,'Digital art',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(53,'Video',44,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(54,'Print',6,'2022-01-13 02:00:00','2022-01-13 02:00:00'),
	(55,'Jewellery',0,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(56,'Clothes & shoes',0,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(57,'Earrings',55,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(58,'Bracelets',55,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(59,'Rings',55,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(60,'Accessories',55,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(61,'Necklaces',55,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(63,'Clothes',56,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(64,'Shoes',56,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(65,'Costumes',56,'2022-01-31 02:00:00','2022-01-31 02:00:00'),
	(66,'Masks',56,'2022-01-31 02:00:00','2022-01-31 02:00:00');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы change_email_request
# ------------------------------------------------------------

DROP TABLE IF EXISTS `change_email_request`;

CREATE TABLE `change_email_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` datetime NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `contact_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `user_id`, `contact_id`, `created_at`, `updated_at`)
VALUES
	(1,8,4,'2022-04-09 06:59:04','2022-04-09 06:59:04'),
	(2,5,26,'2022-05-05 23:48:54','2022-05-05 23:48:54');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы conversations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conversations`;

CREATE TABLE `conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` bigint unsigned NOT NULL,
  `receiver_id` bigint unsigned NOT NULL,
  `last_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversations_sender_id_foreign` (`sender_id`),
  KEY `conversations_receiver_id_foreign` (`receiver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `last_message`, `status`, `created_at`, `updated_at`)
VALUES
	(1,4,3,'No Message',0,'2022-01-28 20:35:28','2022-01-28 18:13:28'),
	(2,2,4,'No Message',0,'2022-01-28 23:20:44','2022-01-28 18:24:42'),
	(3,4,8,'Cool story ???',0,'2022-03-28 03:35:15','2022-03-27 22:45:16'),
	(4,13,5,'File',0,'2022-04-07 05:28:16','2022-04-07 05:28:16'),
	(5,26,4,'post',0,'2022-04-29 17:02:41','2022-04-29 17:02:41'),
	(6,5,26,'No Message',0,'2022-04-29 17:07:32','2022-04-29 12:09:50');

/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы country_wise_visitor_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `country_wise_visitor_data`;

CREATE TABLE `country_wise_visitor_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `post_id` int NOT NULL,
  `post_url` varchar(555) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

LOCK TABLES `country_wise_visitor_data` WRITE;
/*!40000 ALTER TABLE `country_wise_visitor_data` DISABLE KEYS */;

INSERT INTO `country_wise_visitor_data` (`id`, `ip`, `country`, `post_id`, `post_url`, `created_at`)
VALUES
	(10,'104.248.40.16','Germany',62,'https://dev.artfora.net/artfora/62','2022-05-30 15:42:09'),
	(11,'27.57.170.107','India',29,'https://dev.artfora.net/aksonerdarts/29','2022-05-30 15:46:03'),
	(12,'27.57.170.107','India',29,'https://dev.artfora.net/aksonerdarts/29','2022-05-30 16:49:13'),
	(13,'95.91.213.97','Germany',61,'https://dev.artfora.net/product_details/61','2022-06-01 10:03:36'),
	(14,'122.170.19.67','India',39,'https://dev.artfora.net/artfora/39','2022-06-03 11:41:40'),
	(15,'122.170.19.67','India',21,'https://dev.artfora.net/artfora/21','2022-06-03 11:48:56'),
	(16,'122.170.19.67','India',54,'https://dev.artfora.net/artfora/54','2022-06-03 13:44:32'),
	(17,'182.77.116.227','India',33,'http://dev.artfora.net/artfora/33','2022-06-06 14:20:07'),
	(18,'182.77.116.227','India',50,'https://dev.artfora.net/artfora/50','2022-06-06 16:09:42'),
	(19,'95.91.213.66','Germany',62,'https://dev.artfora.net/artfora/62','2022-06-06 16:53:41'),
	(20,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:52:27'),
	(21,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:53:43'),
	(22,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:55:31'),
	(23,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:56:00'),
	(24,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:56:26'),
	(25,'182.77.116.227','India',19,'https://dev.artfora.net/merisio.official/19','2022-06-07 11:58:55'),
	(26,'182.77.116.227','India',7,'https://dev.artfora.net/merisio.official/7','2022-06-07 11:59:15'),
	(27,'182.77.116.227','India',40,'https://dev.artfora.net/artfora/40','2022-06-07 11:59:47'),
	(28,'182.77.116.227','India',54,'https://dev.artfora.net/artfora/54','2022-06-07 11:59:57'),
	(29,'182.77.116.227','India',23,'https://dev.artfora.net/artfora/23','2022-06-07 11:59:59'),
	(30,'182.77.116.227','India',63,'https://dev.artfora.net/artfora/63','2022-06-07 12:00:00'),
	(31,'182.77.116.227','India',33,'https://dev.artfora.net/artfora/33','2022-06-07 12:00:12'),
	(32,'182.77.116.227','India',38,'https://dev.artfora.net/artfora/38','2022-06-07 12:00:13'),
	(33,'182.77.116.227','India',29,'https://dev.artfora.net/aksonerdarts/29','2022-06-07 12:00:14'),
	(34,'182.77.116.227','India',62,'https://dev.artfora.net/artfora/62','2022-06-07 12:00:15'),
	(35,'182.77.116.227','India',62,'https://dev.artfora.net/artfora/62','2022-06-07 12:00:42'),
	(36,'182.77.116.227','India',61,'https://dev.artfora.net/artfora/61','2022-06-07 12:00:45'),
	(37,'182.77.116.227','India',60,'https://dev.artfora.net/merisio.official/60','2022-06-07 12:00:47'),
	(38,'182.77.116.227','India',55,'https://dev.artfora.net/artfora/55','2022-06-07 12:00:54'),
	(39,'182.77.116.227','India',21,'https://dev.artfora.net/artfora/21','2022-06-07 12:00:55'),
	(40,'182.77.116.227','India',52,'https://dev.artfora.net/artfora/52','2022-06-07 12:00:56'),
	(41,'182.77.116.227','India',29,'https://dev.artfora.net/product_details/29','2022-06-07 16:41:02'),
	(42,'182.77.116.227','India',29,'https://dev.artfora.net/product_details/29','2022-06-07 16:41:10'),
	(43,'182.77.116.227','India',19,'https://dev.artfora.net/product_details/19','2022-06-07 16:57:34'),
	(44,'182.77.116.227','India',23,'https://dev.artfora.net/artfora/23','2022-06-08 08:50:00'),
	(45,'182.77.116.227','India',29,'https://dev.artfora.net/aksonerdarts/29','2022-06-08 08:50:05'),
	(46,'95.91.213.66','Germany',63,'https://dev.artfora.net/artfora/63','2022-06-08 09:03:38'),
	(47,'184.154.139.49','United States',51,'https://dev.artfora.net/artfora/51','2022-07-24 01:20:05'),
	(48,'184.154.139.49','United States',34,'https://dev.artfora.net/aksonerdarts/34','2022-07-24 01:20:06'),
	(49,'3.38.148.254','South Korea',25,'https://dev.artfora.net/atman_comic/25','2022-08-15 02:35:44'),
	(50,'3.38.148.254','South Korea',51,'https://dev.artfora.net/artfora/51','2022-08-15 02:35:44'),
	(51,'3.38.148.254','South Korea',53,'https://dev.artfora.net/artfora/53','2022-08-15 02:35:44'),
	(52,'3.38.148.254','South Korea',62,'https://dev.artfora.net/artfora/62','2022-08-15 02:35:44'),
	(53,'3.38.148.254','South Korea',33,'https://dev.artfora.net/artfora/33','2022-08-15 02:35:44'),
	(54,'3.38.148.254','South Korea',40,'https://dev.artfora.net/artfora/40','2022-08-15 02:35:44'),
	(55,'3.38.148.254','South Korea',50,'https://dev.artfora.net/artfora/50','2022-08-15 02:35:44'),
	(56,'3.38.148.254','South Korea',21,'https://dev.artfora.net/artfora/21','2022-08-15 02:35:44'),
	(57,'3.38.148.254','South Korea',22,'https://dev.artfora.net/artfora/22','2022-08-15 02:35:44'),
	(58,'3.38.148.254','South Korea',54,'https://dev.artfora.net/artfora/54','2022-08-15 02:35:44'),
	(59,'3.38.148.254','South Korea',60,'https://dev.artfora.net/merisio.official/60','2022-08-15 02:35:44'),
	(60,'3.38.148.254','South Korea',7,'https://dev.artfora.net/merisio.official/7','2022-08-15 02:35:44'),
	(61,'3.38.148.254','South Korea',38,'https://dev.artfora.net/artfora/38','2022-08-15 02:35:45'),
	(62,'3.38.148.254','South Korea',52,'https://dev.artfora.net/artfora/52','2022-08-15 02:35:45'),
	(63,'3.38.148.254','South Korea',61,'https://dev.artfora.net/artfora/61','2022-08-15 02:35:45'),
	(64,'3.38.148.254','South Korea',30,'https://dev.artfora.net/aksonerdarts/30','2022-08-15 02:35:45'),
	(65,'3.38.148.254','South Korea',23,'https://dev.artfora.net/artfora/23','2022-08-15 02:35:45'),
	(66,'3.38.148.254','South Korea',39,'https://dev.artfora.net/artfora/39','2022-08-15 02:35:45'),
	(67,'3.38.148.254','South Korea',63,'https://dev.artfora.net/artfora/63','2022-08-15 02:35:45'),
	(68,'3.38.148.254','South Korea',27,'https://dev.artfora.net/atman_comic/27','2022-08-15 02:35:45'),
	(69,'3.38.148.254','South Korea',34,'https://dev.artfora.net/aksonerdarts/34','2022-08-15 02:35:45'),
	(70,'3.38.148.254','South Korea',55,'https://dev.artfora.net/artfora/55','2022-08-15 02:35:45'),
	(71,'3.38.148.254','South Korea',1,'https://dev.artfora.net/sophie.schoentod/1','2022-08-15 02:35:45'),
	(72,'3.38.148.254','South Korea',29,'https://dev.artfora.net/aksonerdarts/29','2022-08-15 02:35:45'),
	(73,'3.38.148.254','South Korea',56,'https://dev.artfora.net/artfora/56','2022-08-15 02:35:45'),
	(74,'3.38.148.254','South Korea',19,'https://dev.artfora.net/merisio.official/19','2022-08-15 02:35:45'),
	(75,'82.80.230.228','Israel',22,'https://dev.artfora.net/artfora/22','2022-08-30 20:39:18'),
	(76,'82.80.230.228','Israel',61,'https://dev.artfora.net/artfora/61','2022-08-30 20:39:18'),
	(77,'82.80.230.228','Israel',50,'https://dev.artfora.net/artfora/50','2022-08-30 20:39:19'),
	(78,'82.80.230.228','Israel',30,'https://dev.artfora.net/aksonerdarts/30','2022-08-30 20:39:19'),
	(79,'82.80.230.228','Israel',60,'https://dev.artfora.net/merisio.official/60','2022-08-30 20:39:20'),
	(80,'82.80.230.228','Israel',62,'https://dev.artfora.net/artfora/62','2022-08-30 20:39:20'),
	(81,'82.80.230.228','Israel',34,'https://dev.artfora.net/aksonerdarts/34','2022-08-30 20:39:20'),
	(82,'82.80.230.228','Israel',33,'https://dev.artfora.net/artfora/33','2022-08-30 20:39:21'),
	(83,'82.80.230.228','Israel',39,'https://dev.artfora.net/artfora/39','2022-08-30 20:39:22'),
	(84,'82.80.230.228','Israel',40,'https://dev.artfora.net/artfora/40','2022-08-30 20:39:22'),
	(85,'82.80.230.228','Israel',23,'https://dev.artfora.net/artfora/23','2022-08-30 20:39:22'),
	(86,'82.80.230.228','Israel',52,'https://dev.artfora.net/artfora/52','2022-08-30 20:39:22'),
	(87,'82.80.230.228','Israel',56,'https://dev.artfora.net/artfora/56','2022-08-30 20:39:23'),
	(88,'82.80.230.228','Israel',21,'https://dev.artfora.net/artfora/21','2022-08-30 20:39:23'),
	(89,'82.80.230.228','Israel',19,'https://dev.artfora.net/merisio.official/19','2022-08-30 20:39:24'),
	(90,'82.80.230.228','Israel',29,'https://dev.artfora.net/aksonerdarts/29','2022-08-30 20:39:24'),
	(91,'82.80.230.228','Israel',55,'https://dev.artfora.net/artfora/55','2022-08-30 20:39:25'),
	(92,'82.80.230.228','Israel',27,'https://dev.artfora.net/atman_comic/27','2022-08-30 20:39:25'),
	(93,'82.80.230.228','Israel',1,'https://dev.artfora.net/sophie.schoentod/1','2022-08-30 20:39:26'),
	(94,'82.80.230.228','Israel',7,'https://dev.artfora.net/merisio.official/7','2022-08-30 20:39:27'),
	(95,'82.80.230.228','Israel',51,'https://dev.artfora.net/artfora/51','2022-08-30 20:39:28'),
	(96,'82.80.230.228','Israel',53,'https://dev.artfora.net/artfora/53','2022-08-30 20:39:28'),
	(97,'82.80.230.228','Israel',54,'https://dev.artfora.net/artfora/54','2022-08-30 20:39:30'),
	(98,'82.80.230.228','Israel',63,'https://dev.artfora.net/artfora/63','2022-08-30 20:39:30'),
	(99,'82.80.230.228','Israel',25,'https://dev.artfora.net/atman_comic/25','2022-08-30 20:39:30'),
	(100,'82.80.230.228','Israel',38,'https://dev.artfora.net/artfora/38','2022-08-30 20:39:30'),
	(101,'184.154.139.50','United States',50,'https://dev.artfora.net/artfora/50','2022-10-22 01:18:13'),
	(102,'184.154.139.50','United States',34,'https://dev.artfora.net/aksonerdarts/34','2022-10-22 01:18:33'),
	(103,'127.0.0.1','Ukraine',1,'http://artfora-web-mirror.test/sophie.schoentod/1','2022-11-18 15:41:48'),
	(104,'127.0.0.1','Ukraine',22,'http://artfora-web-mirror.test/artfora/22','2022-11-18 15:44:30'),
	(105,'127.0.0.1','Ukraine',21,'http://artfora-web-mirror.test/artfora/21','2022-11-18 15:44:38'),
	(106,'127.0.0.1','Ukraine',21,'http://artfora-web-mirror.test/artfora/21','2022-11-18 15:44:48'),
	(107,'127.0.0.1','Ukraine',56,'http://artfora-web-mirror.test/artfora/56','2022-11-18 15:45:10'),
	(108,'127.0.0.1','Ukraine',52,'http://artfora-web-mirror.test/artfora/52','2022-11-18 15:45:18'),
	(109,'127.0.0.1','Ukraine',29,'http://artfora-web-mirror.test/aksonerdarts/29','2022-11-18 15:45:26'),
	(110,'127.0.0.1','Ukraine',22,'http://artfora-web-mirror.test/artfora/22','2022-11-18 16:12:14'),
	(111,'127.0.0.1','Ukraine',53,'http://artfora-web-mirror.test/artfora/53','2022-11-18 16:12:21'),
	(112,'127.0.0.1','Ukraine',29,'http://artfora-web-mirror.test/aksonerdarts/29','2022-11-18 16:12:29');

/*!40000 ALTER TABLE `country_wise_visitor_data` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'author_id','text','Автор',1,0,0,0,0,1,'',2),
	(3,1,'slug','text','Псевдонім',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),
	(4,1,'status','checkbox','Активність',1,1,1,1,1,1,'{\"on\":\"\\u0422\\u0430\\u043a\",\"off\":\"\\u041d\\u0456\"}',4),
	(5,1,'category_id','select_dropdown','Категорія',1,0,1,1,1,0,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',5),
	(6,1,'title','text','Заголовок',1,1,1,1,1,1,'',6),
	(7,1,'excerpt','text_area','Короткий вріз',1,0,1,1,1,1,'',7),
	(8,1,'body','rich_text_box','Контент',1,0,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',8),
	(9,1,'image','image','Зображення',0,1,1,1,1,1,'{\"cropper\":[{\"name\":\"avatar\",\"size\":{\"name\":\"max\",\"width\":\"300\",\"height\":\"200\"},\"resize\":[{\"name\":\"norm\",\"width\":\"200\",\"height\":\"null\"},{\"name\":\"min\",\"width\":\"100\",\"height\":\"null\"}]}]}',9),
	(10,1,'meta_description','text_area','Мета опис',1,0,1,1,1,1,'',10),
	(11,1,'meta_keywords','text_area','Мета (ключові слова)',1,0,1,1,1,1,'',11),
	(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),
	(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),
	(14,2,'id','number','id',1,0,0,0,0,0,'',1),
	(15,2,'author_id','select_dropdown','Автор',1,0,0,0,0,0,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(16,2,'title','text','Заголовок',1,1,1,1,1,1,'',3),
	(17,2,'excerpt','text_area','Короткий вріз',1,0,1,1,1,1,'',4),
	(18,2,'body','rich_text_box','Контент',1,0,1,1,1,1,'',5),
	(19,2,'slug','text','Псевдонім',1,0,1,0,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),
	(20,2,'meta_description','text','Мета опис',1,0,1,1,1,1,'',7),
	(21,2,'meta_keywords','text','Мета (ключові слова)',1,0,1,1,1,1,'',8),
	(22,2,'status','checkbox','status',1,1,1,1,1,1,'{\"on\":\"\\u0422\\u0430\\u043a\",\"off\":\"\\u041d\\u0456\"}',9),
	(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),
	(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),
	(25,2,'image','image','Зображення',0,1,1,1,1,1,'',12),
	(26,3,'id','number','id',1,0,0,0,0,0,NULL,1),
	(27,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(28,3,'email','text','Email',1,1,1,1,1,1,NULL,3),
	(29,3,'password','password','Password',1,0,0,1,1,0,NULL,4),
	(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"LaravelAdminPanel\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"details\":null}',10),
	(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,NULL,5),
	(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,NULL,6),
	(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,7),
	(34,3,'avatar','image','Image',0,1,1,1,1,1,NULL,8),
	(35,5,'id','number','id',1,0,0,0,0,0,'',1),
	(36,5,'name','text','Назва',1,1,1,1,1,1,'',2),
	(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),
	(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),
	(39,4,'id','number','id',1,0,0,0,0,0,'',1),
	(40,4,'parent_id','select_dropdown','Батьківська категорія',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(41,4,'order','text','Порядок',1,1,1,1,1,1,'{\"default\":1}',3),
	(42,4,'name','text','Назва',1,1,1,1,1,1,'',4),
	(43,4,'slug','text','Псевдонім',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
	(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),
	(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),
	(46,6,'id','number','id',1,0,0,0,0,0,NULL,1),
	(47,6,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,NULL,3),
	(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,NULL,4),
	(50,6,'display_name','text','Display name',1,1,1,1,1,1,NULL,5),
	(51,1,'seo_title','text','Сео заголовок',0,1,1,1,1,1,'',14),
	(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),
	(53,3,'role_id','text','Role',0,0,0,0,0,0,NULL,9),
	(54,7,'id','number','id',1,0,0,0,0,0,'',1),
	(55,7,'data_type_id','select_dropdown','Модель (crud)',0,0,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"display_name_singular\"}}',2),
	(56,7,'form_designer_belongsto_data_type_relationship','relationship','Модель (crud)',1,1,0,0,0,0,'{\"model\":\"LaravelAdminPanel\\\\Models\\\\DataType\",\"table\":\"data_types\",\"type\":\"belongsTo\",\"column\":\"data_type_id\",\"key\":\"id\",\"label\":\"display_name_singular\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"details\":null}',4),
	(57,7,'options','code_editor','Деталі',1,0,1,1,1,1,'{\"formfields_custom\":\"json_editor\"}',3),
	(58,3,'full_name','checkbox',NULL,0,1,1,1,1,1,NULL,4),
	(59,3,'tagname','checkbox',NULL,1,1,1,1,1,1,NULL,5),
	(60,3,'email_verified_at','timestamp',NULL,0,1,1,1,1,1,NULL,8),
	(61,3,'role_back','checkbox',NULL,0,0,0,0,0,0,NULL,10),
	(62,3,'verify_password','checkbox',NULL,0,0,0,0,0,0,NULL,11),
	(63,3,'password_bit','checkbox',NULL,0,0,0,0,0,0,NULL,12),
	(64,3,'app_token','checkbox',NULL,0,0,0,0,0,0,NULL,13),
	(65,3,'bdate','checkbox',NULL,1,0,0,0,0,0,NULL,17),
	(66,3,'status','checkbox',NULL,1,0,0,0,0,0,NULL,18),
	(67,3,'blocked_at','timestamp',NULL,0,0,0,0,0,0,NULL,19),
	(68,3,'deleted_at','timestamp',NULL,0,0,0,0,0,0,NULL,20),
	(69,3,'city','checkbox',NULL,1,0,0,0,0,0,NULL,21),
	(70,3,'country','checkbox',NULL,1,0,0,0,0,0,NULL,22),
	(71,3,'tag_notification','checkbox',NULL,1,0,0,0,0,0,NULL,23),
	(72,3,'message_notification','checkbox',NULL,1,0,0,0,0,0,NULL,24),
	(73,3,'follow_notification','checkbox',NULL,1,0,0,0,0,0,NULL,25),
	(74,3,'unfollow_notification','checkbox',NULL,1,0,0,0,0,0,NULL,26),
	(75,3,'like_post_notification','checkbox',NULL,1,0,0,0,0,0,NULL,27),
	(76,3,'comment_post_notification','checkbox',NULL,1,0,0,0,0,0,NULL,28),
	(77,3,'profile_layout','checkbox',NULL,1,0,0,0,0,0,NULL,29),
	(78,3,'discover_layout','checkbox',NULL,0,0,0,0,0,0,NULL,30),
	(79,3,'private_profile','checkbox',NULL,1,0,0,0,0,0,NULL,31),
	(80,3,'shop_profile','checkbox',NULL,1,0,0,0,0,0,NULL,32),
	(81,3,'shop_view_toggle','checkbox',NULL,0,0,0,0,0,0,NULL,33),
	(82,3,'commission','checkbox',NULL,1,0,0,0,0,0,NULL,34),
	(83,3,'verify_email','checkbox',NULL,0,0,0,0,0,0,NULL,35),
	(84,3,'delete_email_verified_at','timestamp',NULL,0,0,0,0,0,0,NULL,36),
	(85,3,'verify_email_flag','checkbox',NULL,1,0,0,0,0,0,NULL,37),
	(86,3,'is_private','checkbox',NULL,1,0,0,0,0,0,NULL,38),
	(87,3,'dob','checkbox',NULL,1,0,0,0,0,0,NULL,39),
	(88,8,'id','checkbox','Id',1,1,0,0,0,0,NULL,1),
	(89,8,'user_id','select_dropdown','User Id',1,0,0,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
	(90,8,'support_fee','text','Support Fee',0,0,0,0,0,0,NULL,3),
	(91,8,'order_subtotal','text','Order Subtotal',0,0,0,0,0,0,NULL,4),
	(92,8,'shipping_total','text','Shipping Total',0,0,0,0,0,0,NULL,5),
	(93,8,'total','text','Total',0,1,1,1,1,1,NULL,6),
	(94,8,'transaction_id','checkbox','Transaction Id',0,0,0,0,0,0,NULL,7),
	(95,8,'transaction_fee','checkbox','Transaction Fee',0,0,0,0,0,0,NULL,8),
	(96,8,'status','text','Status',0,0,0,0,0,0,NULL,9),
	(97,8,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,10),
	(98,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,NULL,11),
	(99,8,'payment_id','checkbox','Payment Id',0,0,0,0,0,0,NULL,12),
	(100,9,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),
	(101,9,'payment_id','text','Payment Id',0,1,1,1,1,1,NULL,2),
	(102,9,'payer_email','text','Payer Email',0,1,1,1,1,1,NULL,3),
	(103,9,'amount','text','Amount',0,1,1,1,1,1,NULL,4),
	(104,9,'currency','text','Currency',0,1,1,1,1,1,NULL,5),
	(105,9,'payment_status','text','Payment Status',0,1,1,1,1,1,NULL,6),
	(106,9,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),
	(107,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(108,8,'tracker_id','text','Tracker number',0,1,1,1,1,1,NULL,13),
	(109,8,'updated_at','timestamp',NULL,0,0,0,0,0,0,NULL,14),
	(110,8,'order_belongsto_user_relationship','relationship','User',0,1,1,0,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"activity_log\",\"pivot\":\"0\",\"details\":null}',15);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `pagination` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'js',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `details`, `generate_permissions`, `pagination`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Запис','Записи','admin-news','LaravelAdminPanel\\Models\\Post','LaravelAdminPanel\\Policies\\PostPolicy','','',NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(2,'pages','pages','Сторінка','Сторінки','admin-file-text','LaravelAdminPanel\\Models\\Page',NULL,'','',NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(3,'users','users','User','Users','admin-person','LaravelAdminPanel\\Models\\User','LaravelAdminPanel\\Policies\\UserPolicy',NULL,NULL,NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:14:08'),
	(4,'categories','categories','Категорія','Категорії','admin-categories','LaravelAdminPanel\\Models\\Category',NULL,'','',NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(5,'menus','menus','Меню','Меню','admin-list','LaravelAdminPanel\\Models\\Menu',NULL,'','',NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(6,'roles','roles','Role','Roles','admin-lock','LaravelAdminPanel\\Models\\Role',NULL,NULL,NULL,NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:13:29'),
	(7,'form_designer','form-designer','Дизайнер форм','Дизайнер форм','designer-list','LaravelAdminPanel\\Models\\FormDesigner',NULL,'','',NULL,1,'js',0,'2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(8,'orders','orders','Order','Orders',NULL,'App\\Order',NULL,NULL,NULL,NULL,1,'js',0,'2022-11-16 14:15:50','2022-11-16 14:15:50'),
	(9,'payments','payments','Payment','Payments',NULL,'App\\Payment',NULL,NULL,NULL,NULL,1,'js',0,'2022-11-16 14:19:06','2022-11-16 14:19:06');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `filters`;

CREATE TABLE `filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filter_text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;

INSERT INTO `filters` (`id`, `filter_text`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'For all users, does not contain explicit material',1,'2020-01-21 01:00:00','2020-01-21 01:00:00'),
	(2,'Can contain nudity but only for educational use',1,'2020-01-21 01:00:00','2020-01-21 01:00:00'),
	(3,'Can contain nudity and erotic material',1,'2020-01-21 01:00:00','2020-01-21 01:00:00'),
	(4,'Can contain pornographic or other explicit material',1,'2020-01-21 01:00:00','2020-01-21 01:00:00');

/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы follow_hash_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `follow_hash_tags`;

CREATE TABLE `follow_hash_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash_tag_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `follow_hash_tags` WRITE;
/*!40000 ALTER TABLE `follow_hash_tags` DISABLE KEYS */;

INSERT INTO `follow_hash_tags` (`id`, `hash_tag_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,10,18,'2022-04-06 13:36:04','2022-04-06 10:36:04',NULL),
	(2,5,18,'2022-04-11 11:46:53','2022-04-11 08:46:53',NULL),
	(3,4,19,'2022-04-11 17:33:03','2022-04-11 14:33:03',NULL),
	(4,5,19,'2022-04-11 17:33:10','2022-04-11 14:33:10',NULL);

/*!40000 ALTER TABLE `follow_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы follow_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `follow_statuses`;

CREATE TABLE `follow_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follewers_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0' COMMENT '1=shop, 2=feed, 3= story',
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `follow_statuses` WRITE;
/*!40000 ALTER TABLE `follow_statuses` DISABLE KEYS */;

INSERT INTO `follow_statuses` (`id`, `follewers_id`, `user_id`, `type`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,0,NULL,NULL),
	(2,1,1,2,0,NULL,NULL),
	(3,1,1,3,0,NULL,NULL),
	(4,2,2,1,0,NULL,NULL),
	(5,2,2,2,0,NULL,NULL),
	(6,2,2,3,0,NULL,NULL),
	(7,3,3,1,0,NULL,NULL),
	(8,3,3,2,0,NULL,NULL),
	(9,3,3,3,0,NULL,NULL),
	(10,4,4,1,0,NULL,NULL),
	(11,4,4,2,0,NULL,NULL),
	(12,4,4,3,0,NULL,NULL),
	(13,3,4,1,0,NULL,NULL),
	(14,3,4,2,0,NULL,NULL),
	(15,3,4,3,0,NULL,NULL),
	(16,2,4,1,0,NULL,NULL),
	(17,2,4,2,0,NULL,NULL),
	(18,2,4,3,0,NULL,NULL),
	(19,5,5,1,0,NULL,NULL),
	(20,5,5,2,0,NULL,NULL),
	(21,5,5,3,0,NULL,NULL),
	(22,3,5,1,0,NULL,NULL),
	(23,3,5,2,0,NULL,NULL),
	(24,3,5,3,0,NULL,NULL),
	(25,5,3,1,0,NULL,NULL),
	(26,5,3,2,0,NULL,NULL),
	(27,5,3,3,0,NULL,NULL),
	(28,4,3,1,0,NULL,NULL),
	(29,4,3,2,0,NULL,NULL),
	(30,4,3,3,0,NULL,NULL),
	(46,8,8,1,0,NULL,NULL),
	(47,8,8,2,0,NULL,NULL),
	(48,8,8,3,0,NULL,NULL),
	(49,8,5,1,0,NULL,NULL),
	(50,8,5,2,0,NULL,NULL),
	(51,8,5,3,0,NULL,NULL),
	(52,8,4,1,0,NULL,NULL),
	(53,8,4,2,0,NULL,NULL),
	(54,8,4,3,0,NULL,NULL),
	(55,5,4,1,0,NULL,NULL),
	(56,5,4,2,0,NULL,NULL),
	(57,5,4,3,0,NULL,NULL),
	(58,9,9,1,0,NULL,NULL),
	(59,9,9,2,0,NULL,NULL),
	(60,9,9,3,0,NULL,NULL),
	(61,4,8,1,0,NULL,NULL),
	(62,4,8,2,0,NULL,NULL),
	(63,4,8,3,0,NULL,NULL),
	(64,5,8,1,0,NULL,NULL),
	(65,5,8,2,0,NULL,NULL),
	(66,5,8,3,0,NULL,NULL),
	(67,2,8,1,0,NULL,NULL),
	(68,2,8,2,0,NULL,NULL),
	(69,2,8,3,0,NULL,NULL),
	(70,3,8,1,0,NULL,NULL),
	(71,3,8,2,0,NULL,NULL),
	(72,3,8,3,0,NULL,NULL),
	(76,8,3,1,0,NULL,NULL),
	(77,8,3,2,0,NULL,NULL),
	(78,8,3,3,0,NULL,NULL),
	(79,10,10,1,0,NULL,NULL),
	(80,10,10,2,0,NULL,NULL),
	(81,10,10,3,0,NULL,NULL),
	(82,10,4,1,0,NULL,NULL),
	(83,10,4,2,0,NULL,NULL),
	(84,10,4,3,0,NULL,NULL),
	(91,2,10,1,0,NULL,NULL),
	(92,2,10,2,0,NULL,NULL),
	(93,2,10,3,0,NULL,NULL),
	(94,8,10,1,0,NULL,NULL),
	(95,8,10,2,0,NULL,NULL),
	(96,8,10,3,0,NULL,NULL),
	(106,13,13,1,0,NULL,NULL),
	(107,13,13,2,0,NULL,NULL),
	(108,13,13,3,0,NULL,NULL),
	(118,5,13,1,0,NULL,NULL),
	(119,5,13,2,0,NULL,NULL),
	(120,5,13,3,0,NULL,NULL),
	(127,17,17,1,0,NULL,NULL),
	(128,17,17,2,0,NULL,NULL),
	(129,17,17,3,0,NULL,NULL),
	(130,18,18,1,0,NULL,NULL),
	(131,18,18,2,0,NULL,NULL),
	(132,18,18,3,0,NULL,NULL),
	(133,10,18,1,0,NULL,NULL),
	(134,10,18,2,0,NULL,NULL),
	(135,10,18,3,0,NULL,NULL),
	(136,5,18,1,0,NULL,NULL),
	(137,5,18,2,0,NULL,NULL),
	(138,5,18,3,0,NULL,NULL),
	(139,4,5,1,0,NULL,NULL),
	(140,4,5,2,0,NULL,NULL),
	(141,4,5,3,0,NULL,NULL),
	(142,19,19,1,0,NULL,NULL),
	(143,19,19,2,0,NULL,NULL),
	(144,19,19,3,0,NULL,NULL),
	(145,2,19,1,0,NULL,NULL),
	(146,2,19,2,0,NULL,NULL),
	(147,2,19,3,0,NULL,NULL),
	(148,4,19,1,0,NULL,NULL),
	(149,4,19,2,0,NULL,NULL),
	(150,4,19,3,0,NULL,NULL),
	(151,5,19,1,0,NULL,NULL),
	(152,5,19,2,0,NULL,NULL),
	(153,5,19,3,0,NULL,NULL),
	(154,20,20,1,0,NULL,NULL),
	(155,20,20,2,0,NULL,NULL),
	(156,20,20,3,0,NULL,NULL),
	(157,19,20,1,0,NULL,NULL),
	(158,19,20,2,0,NULL,NULL),
	(159,19,20,3,0,NULL,NULL),
	(160,20,19,1,0,NULL,NULL),
	(161,20,19,2,0,NULL,NULL),
	(162,20,19,3,0,NULL,NULL),
	(163,21,21,1,0,NULL,NULL),
	(164,21,21,2,0,NULL,NULL),
	(165,21,21,3,0,NULL,NULL),
	(166,21,5,1,0,NULL,NULL),
	(167,21,5,2,0,NULL,NULL),
	(168,21,5,3,0,NULL,NULL),
	(169,22,22,1,0,NULL,NULL),
	(170,22,22,2,0,NULL,NULL),
	(171,22,22,3,0,NULL,NULL),
	(172,26,26,1,0,NULL,NULL),
	(173,26,26,2,0,NULL,NULL),
	(174,26,26,3,0,NULL,NULL),
	(175,5,26,1,0,NULL,NULL),
	(176,5,26,2,0,NULL,NULL),
	(177,5,26,3,0,NULL,NULL),
	(178,26,5,1,0,NULL,NULL),
	(179,26,5,2,0,NULL,NULL),
	(180,26,5,3,0,NULL,NULL);

/*!40000 ALTER TABLE `follow_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы followers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `followers`;

CREATE TABLE `followers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follewers_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;

INSERT INTO `followers` (`id`, `follewers_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,3,4,'2022-01-28 15:34:49','2022-01-28 13:34:49',NULL),
	(2,2,4,'2022-01-28 18:15:28','2022-01-28 16:15:28',NULL),
	(3,3,5,'2022-01-28 23:08:07','2022-01-28 21:08:07',NULL),
	(4,5,3,'2022-01-28 23:54:05','2022-01-28 21:54:05',NULL),
	(5,4,3,'2022-01-28 23:54:14','2022-01-28 21:54:14',NULL),
	(9,8,5,'2022-01-29 16:36:48','2022-01-29 14:36:48',NULL),
	(10,8,4,'2022-01-29 16:37:57','2022-01-29 14:37:57',NULL),
	(11,5,4,'2022-01-29 18:57:22','2022-01-29 16:57:22',NULL),
	(12,4,8,'2022-01-31 01:22:57','2022-01-30 23:22:57',NULL),
	(13,5,8,'2022-01-31 01:23:00','2022-01-30 23:23:00',NULL),
	(14,2,8,'2022-01-31 01:24:05','2022-01-30 23:24:05',NULL),
	(15,3,8,'2022-01-31 01:24:57','2022-01-30 23:24:57',NULL),
	(17,8,3,'2022-01-31 06:56:39','2022-01-31 04:56:39',NULL),
	(18,10,4,'2022-02-01 00:14:26','2022-01-31 22:14:26',NULL),
	(19,2,10,'2022-02-03 10:26:38','2022-02-03 08:26:38',NULL),
	(20,8,10,'2022-02-03 10:28:17','2022-02-03 08:28:17',NULL),
	(23,5,13,'2022-04-02 18:12:14','2022-04-02 15:12:14',NULL),
	(25,10,18,'2022-04-06 13:36:04','2022-04-06 10:36:04',NULL),
	(26,5,18,'2022-04-11 11:46:53','2022-04-11 08:46:53',NULL),
	(27,4,5,'2022-04-11 13:05:29','2022-04-11 10:05:29',NULL),
	(28,2,19,'2022-04-11 17:32:08','2022-04-11 14:32:08',NULL),
	(29,4,19,'2022-04-11 17:33:03','2022-04-11 14:33:03',NULL),
	(30,5,19,'2022-04-11 17:33:10','2022-04-11 14:33:10',NULL),
	(31,19,20,'2022-04-15 06:53:01','2022-04-15 03:53:01',NULL),
	(32,20,19,'2022-04-15 10:12:57','2022-04-15 07:12:57',NULL),
	(33,21,5,'2022-04-18 10:30:33','2022-04-18 07:30:33',NULL),
	(34,5,26,'2022-04-29 11:35:44','2022-04-29 08:35:44',NULL),
	(35,26,5,'2022-04-29 12:04:35','2022-04-29 09:04:35',NULL);

/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы forget_pass_request
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forget_pass_request`;

CREATE TABLE `forget_pass_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы form_designer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `form_designer`;

CREATE TABLE `form_designer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_designer_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `form_designer_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `form_designer` WRITE;
/*!40000 ALTER TABLE `form_designer` DISABLE KEYS */;

INSERT INTO `form_designer` (`id`, `data_type_id`, `options`)
VALUES
	(1,1,'[{\"class\":\"col-md-8\",\"panels\":[{\"class\":\"panel panel-default\",\"title\":\"<i class=\\\"admin-character\\\"><\\/i> \\u041d\\u0430\\u0437\\u0432\\u0430 \\u0434\\u043e\\u043f\\u0438\\u0441\\u0443 \\u041d\\u0430\\u0437\\u0432\\u0430 \\u0434\\u043b\\u044f \\u0432\\u0430\\u0448\\u043e\\u0457 \\u043f\\u0443\\u0431\\u043b\\u0456\\u043a\\u0430\\u0446\\u0456\\u0457\",\"fields\":[\"title\",\"slug\"]},{\"class\":\"panel panel-danger\",\"title\":\"Post Content\",\"fields\":[\"body\"]},{\"class\":\"panel panel-success\",\"title\":\"\\u0423\\u0440\\u0438\\u0432\\u043e\\u043a <small>\\u041d\\u0435\\u0432\\u0435\\u043b\\u0438\\u043a\\u0438\\u0439 \\u043e\\u043f\\u0438\\u0441 \\u0446\\u0456\\u0454\\u0457 \\u043f\\u0443\\u0431\\u043b\\u0456\\u043a\\u0430\\u0446\\u0456\\u0457<\\/small>\",\"fields\":[\"excerpt\"]}]},{\"class\":\"col-md-4\",\"panels\":[{\"class\":\"panel panel-warning\",\"title\":\"\\u0414\\u0435\\u0442\\u0430\\u043b\\u0456 \\u0437\\u0430\\u043f\\u0438\\u0441\\u0443\",\"fields\":[\"status\",\"category_id\",\"featured\"]},{\"class\":\"panel panel-primary\",\"title\":\"\\u0417\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u043d\\u044f \\u0437\\u0430\\u043f\\u0438\\u0441\\u0443\",\"fields\":[\"image\"]},{\"class\":\"panel panel-info\",\"title\":\"\\u0421\\u0415\\u041e \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442\",\"fields\":[\"meta_keywords\",\"meta_description\",\"seo_title\"]}]}]');

/*!40000 ALTER TABLE `form_designer` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы hash_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hash_tags`;

CREATE TABLE `hash_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash_tag_name` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `hash_tags` WRITE;
/*!40000 ALTER TABLE `hash_tags` DISABLE KEYS */;

INSERT INTO `hash_tags` (`id`, `hash_tag_name`, `status`, `created_at`)
VALUES
	(1,'dj',1,'2022-01-28 12:44:16'),
	(2,'denondj',1,'2022-01-28 12:44:16'),
	(3,'denonprime2',1,'2022-01-28 12:44:16'),
	(4,'digitalart',1,'2022-01-28 21:07:37'),
	(5,'clipstudiopaint',1,'2022-01-28 21:07:37'),
	(6,'wacom',1,'2022-01-28 21:07:37'),
	(7,'nature',1,'2022-01-29 04:15:33'),
	(8,'skamlingsbanken',1,'2022-01-29 09:09:57'),
	(9,'denmark',1,'2022-01-29 09:09:57'),
	(10,'compilation',1,'2022-01-29 11:03:47'),
	(11,'disco',1,'2022-01-29 11:03:47'),
	(12,'linkinbio',1,'2022-01-29 11:03:47'),
	(13,'freedownload',1,'2022-01-29 11:03:47'),
	(14,'discoanon',1,'2022-01-29 11:03:47'),
	(15,'bandcamp',1,'2022-01-29 11:03:47'),
	(16,'deadflowers',1,'2022-01-29 13:36:26'),
	(17,'lostplaces',1,'2022-01-29 13:37:21'),
	(18,'beelitz',1,'2022-01-29 13:40:54'),
	(19,'needles',1,'2022-01-30 23:46:42'),
	(20,'shopping',1,'2022-01-31 05:12:51'),
	(21,'reedit',1,'2022-01-31 05:41:38'),
	(22,'canon',1,'2022-01-31 09:41:31'),
	(23,'photography',1,'2022-01-31 09:41:31'),
	(24,'lighting',1,'2022-01-31 09:41:31'),
	(25,'ios',1,'2022-01-31 09:53:40'),
	(26,'electronic',1,'2022-01-31 19:12:09'),
	(27,'gadgets',1,'2022-01-31 19:12:09'),
	(28,'anatomie',1,'2022-01-31 21:11:43'),
	(29,'dad',1,'2022-01-31 21:17:43'),
	(30,'witch',1,'2022-01-31 21:24:20'),
	(31,'graveyard',1,'2022-01-31 21:24:20'),
	(32,'artfora',1,'2022-01-31 21:24:20'),
	(33,'fineartprint',1,'2022-02-02 19:53:56'),
	(34,'book',1,'2022-02-02 19:55:36'),
	(35,'oilpainting',1,'2022-02-02 20:14:41'),
	(36,'acrylicpainting',1,'2022-02-02 20:14:41'),
	(37,'freeyourbody',1,'2022-02-03 00:14:21'),
	(38,'firstletters',1,'2022-02-03 00:14:21'),
	(39,'horror',1,'2022-02-03 10:05:10'),
	(40,'vampires',1,'2022-02-03 10:05:10'),
	(41,'zombies',1,'2022-02-03 10:05:10'),
	(42,'alterstmatthäusfriedhof',1,'2022-02-03 19:25:44'),
	(43,'funeralart',1,'2022-02-03 19:25:44'),
	(44,'cemetery',1,'2022-02-03 19:28:48'),
	(45,'beyerdynamicdt990pro250ohm',1,'2022-02-04 20:31:05'),
	(46,'krkrokit',1,'2022-02-04 20:31:05'),
	(47,'rødemics',1,'2022-02-04 20:31:05'),
	(48,'studio',1,'2022-02-04 20:31:05'),
	(49,'bedroomdj',1,'2022-02-04 20:31:05'),
	(50,'podcaster',1,'2022-02-04 20:31:05'),
	(51,'fridayfeels',1,'2022-02-11 05:27:57'),
	(52,'originalart',1,'2022-03-26 14:37:25'),
	(53,'buyfromartist',1,'2022-03-26 14:37:25'),
	(54,'blackart',1,'2022-03-27 12:33:18'),
	(55,'drawing',1,'2022-03-28 15:41:16'),
	(56,'sketching',1,'2022-03-28 15:41:16'),
	(57,'netra',1,'2022-04-02 05:24:45'),
	(58,'video',1,'2022-04-02 05:57:14'),
	(59,'darkart',1,'2022-04-07 00:22:54'),
	(60,'op',1,'2022-04-08 09:06:22'),
	(61,'art',1,'2022-04-08 23:04:24'),
	(62,'blackandwhitephotopraphy',1,'2022-04-08 23:04:24'),
	(63,'music',1,'2022-04-13 20:22:13'),
	(64,'printoncanvas',1,'2022-04-13 20:32:12'),
	(65,'kittykitty',1,'2022-04-14 19:27:30'),
	(66,'popart',1,'2022-04-15 08:09:10'),
	(67,'starwars',1,'2022-04-15 08:09:10'),
	(68,'print',1,'2022-04-16 18:13:33'),
	(69,'mixmedia',1,'2022-04-29 17:49:16'),
	(70,'tes',1,'2022-05-06 11:03:50'),
	(71,'going',1,'2022-05-27 04:51:19');

/*!40000 ALTER TABLE `hash_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы interest_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interest_group`;

CREATE TABLE `interest_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `interest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `interest_group` WRITE;
/*!40000 ALTER TABLE `interest_group` DISABLE KEYS */;

INSERT INTO `interest_group` (`id`, `user_id`, `interest_name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(9,1,'Books & magazines','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(10,1,'Music & sound','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(11,1,'Paintings & illustrations','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(12,1,'Digital art & wallpapers','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(13,1,'Tutorials','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(14,1,'Modelling & Styling','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(15,1,'Photo','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(16,1,'Videos & visuals','2022-01-27 15:25:48','2022-01-27 15:25:48',NULL),
	(40,8,'Books & magazines','2022-01-29 15:17:15','2022-01-29 15:17:15',NULL),
	(41,8,'Photo','2022-01-29 15:17:15','2022-01-29 15:17:15',NULL),
	(42,8,'Music & sound','2022-01-29 15:17:15','2022-01-29 15:17:15',NULL),
	(43,8,'Modelling & Styling','2022-01-29 15:17:15','2022-01-29 15:17:15',NULL),
	(44,9,'Music & sound','2022-01-30 21:22:30','2022-01-30 21:22:30',NULL),
	(45,9,'Books & magazines','2022-01-30 21:22:30','2022-01-30 21:22:30',NULL),
	(46,9,'Digital art & wallpapers','2022-01-30 21:22:30','2022-01-30 21:22:30',NULL),
	(47,9,'Modelling & Styling','2022-01-30 21:22:30','2022-01-30 21:22:30',NULL),
	(48,9,'Photo','2022-01-30 21:22:30','2022-01-30 21:22:30',NULL),
	(49,10,'Music & sound','2022-01-31 07:10:31','2022-01-31 07:10:31',NULL),
	(50,10,'Videos & visuals','2022-01-31 07:10:31','2022-01-31 07:10:31',NULL),
	(51,10,'Photo','2022-01-31 07:10:31','2022-01-31 07:10:31',NULL),
	(52,10,'Tutorials','2022-01-31 07:10:31','2022-01-31 07:10:31',NULL),
	(59,5,'Books & magazines','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(60,5,'Music & sound','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(61,5,'Digital art & wallpapers','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(62,5,'Paintings & illustrations','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(63,5,'Videos & visuals','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(64,5,'Photo','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(65,5,'Modelling & Styling','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(66,5,'Tutorials','2022-03-27 10:26:55','2022-03-27 10:26:55',NULL),
	(69,13,'Paintings & illustrations','2022-03-28 14:05:39','2022-03-28 14:05:39',NULL),
	(116,18,'Books & magazines','2022-04-06 13:32:02','2022-04-06 13:32:02',NULL),
	(117,18,'Music & sound','2022-04-06 13:32:02','2022-04-06 13:32:02',NULL),
	(118,18,'Modelling & Styling','2022-04-06 13:32:02','2022-04-06 13:32:02',NULL),
	(119,18,'Photo','2022-04-06 13:32:02','2022-04-06 13:32:02',NULL),
	(120,4,'Books & magazines','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(121,4,'Music & sound','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(122,4,'Digital art & wallpapers','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(123,4,'Paintings & illustrations','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(124,4,'Videos & visuals','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(125,4,'Photo','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(126,4,'Modelling & Styling','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(127,4,'Tutorials','2022-04-08 21:44:19','2022-04-08 21:44:19',NULL),
	(128,19,'Books & magazines','2022-04-11 17:31:50','2022-04-11 17:31:50',NULL),
	(129,20,'Books & magazines','2022-04-15 06:52:46','2022-04-15 06:52:46',NULL),
	(130,21,'Paintings & illustrations','2022-04-15 10:51:38','2022-04-15 10:51:38',NULL),
	(131,21,'Digital art & wallpapers','2022-04-15 10:51:38','2022-04-15 10:51:38',NULL),
	(156,2,'Books & magazines','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(157,2,'Music & sound','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(158,2,'Digital art & wallpapers','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(159,2,'Paintings & illustrations','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(160,2,'Videos & visuals','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(161,2,'Photo','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(162,2,'Modelling & Styling','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL),
	(163,2,'Tutorials','2022-04-28 14:24:27','2022-04-28 14:24:27',NULL);

/*!40000 ALTER TABLE `interest_group` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы interest_group_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interest_group_posts`;

CREATE TABLE `interest_group_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `interest_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `interest_group_posts` WRITE;
/*!40000 ALTER TABLE `interest_group_posts` DISABLE KEYS */;

INSERT INTO `interest_group_posts` (`id`, `user_id`, `interest_name`, `post_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,3,'Music & sound',1,'2022-01-28 14:44:16','2022-01-28 14:44:16',NULL),
	(2,5,'Digital art & wallpapers',2,'2022-01-28 23:07:37','2022-01-28 23:07:37',NULL),
	(3,5,'Paintings & illustrations',2,'2022-01-28 23:07:37','2022-01-28 23:07:37',NULL),
	(4,4,'Music & sound',3,'2022-01-28 23:35:06','2022-01-28 23:35:06',NULL),
	(5,4,'Tutorials',3,'2022-01-28 23:35:06','2022-01-28 23:35:06',NULL),
	(8,1,'Music & sound',5,'2022-01-29 10:35:51','2022-01-29 10:35:51',NULL),
	(9,1,'Videos & visuals',5,'2022-01-29 10:35:51','2022-01-29 10:35:51',NULL),
	(10,3,'Photo',6,'2022-01-29 11:09:57','2022-01-29 11:09:57',NULL),
	(11,5,'Music & sound',7,'2022-01-29 13:03:47','2022-01-29 13:03:47',NULL),
	(12,5,'Digital art & wallpapers',7,'2022-01-29 13:03:47','2022-01-29 13:03:47',NULL),
	(13,5,'Paintings & illustrations',7,'2022-01-29 13:03:47','2022-01-29 13:03:47',NULL),
	(14,8,'Photo',8,'2022-01-29 15:36:26','2022-01-29 15:36:26',NULL),
	(15,8,'Photo',9,'2022-01-29 15:37:21','2022-01-29 15:37:21',NULL),
	(16,8,'Photo',10,'2022-01-29 15:39:39','2022-01-29 15:39:39',NULL),
	(17,8,'Photo',11,'2022-01-29 15:40:54','2022-01-29 15:40:54',NULL),
	(18,5,'Digital art & wallpapers',12,'2022-01-30 22:49:05','2022-01-30 22:49:05',NULL),
	(19,5,'Paintings & illustrations',12,'2022-01-30 22:49:05','2022-01-30 22:49:05',NULL),
	(20,10,'Music & sound',13,'2022-01-31 07:12:51','2022-01-31 07:12:51','2022-01-31 05:13:53'),
	(21,10,'Videos & visuals',13,'2022-01-31 07:12:51','2022-01-31 07:12:51','2022-01-31 05:13:53'),
	(22,10,'Music & sound',13,'2022-01-31 07:13:53','2022-01-31 07:13:53',NULL),
	(23,10,'Videos & visuals',13,'2022-01-31 07:13:53','2022-01-31 07:13:53',NULL),
	(24,10,'Music & sound',14,'2022-01-31 07:41:38','2022-01-31 07:41:38',NULL),
	(25,3,'Photo',15,'2022-01-31 11:41:31','2022-01-31 11:41:31',NULL),
	(36,5,'Digital art & wallpapers',17,'2022-01-31 21:05:09','2022-01-31 21:05:09',NULL),
	(37,5,'Paintings & illustrations',17,'2022-01-31 21:05:09','2022-01-31 21:05:09',NULL),
	(38,8,'Photo',19,'2022-01-31 23:11:43','2022-01-31 23:11:43',NULL),
	(39,8,'Digital art & wallpapers',20,'2022-01-31 23:17:43','2022-01-31 23:17:43',NULL),
	(40,8,'Photo',21,'2022-01-31 23:24:20','2022-01-31 23:24:20',NULL),
	(41,2,'Books & magazines',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(42,2,'Music & sound',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(43,2,'Digital art & wallpapers',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(44,2,'Paintings & illustrations',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(45,2,'Videos & visuals',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(46,2,'Photo',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(47,2,'Modelling & Styling',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(48,2,'Tutorials',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(49,2,'Jewellery',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(50,2,'Clothes & shoes',22,'2022-02-02 15:25:12','2022-02-02 15:25:12','2022-02-02 13:39:34'),
	(51,2,'Books & magazines',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(52,2,'Music & sound',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(53,2,'Digital art & wallpapers',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(54,2,'Paintings & illustrations',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(55,2,'Videos & visuals',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(56,2,'Photo',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(57,2,'Modelling & Styling',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(58,2,'Tutorials',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(59,2,'Jewellery',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(60,2,'Clothes & shoes',22,'2022-02-02 15:39:34','2022-02-02 15:39:34',NULL),
	(61,8,'Photo',23,'2022-02-03 02:14:21','2022-02-03 02:14:21',NULL),
	(62,8,'Photo',24,'2022-02-03 21:25:44','2022-02-03 21:25:44',NULL),
	(63,8,'Photo',25,'2022-02-03 21:28:48','2022-02-03 21:28:48',NULL),
	(64,10,'Photo',26,'2022-02-04 22:31:05','2022-02-04 22:31:05',NULL),
	(65,10,'Videos & visuals',27,'2022-02-11 07:27:57','2022-02-11 07:27:57',NULL),
	(66,2,'Digital art & wallpapers',28,'2022-02-19 14:37:53','2022-02-19 14:37:53',NULL),
	(67,2,'Digital art & wallpapers',29,'2022-02-21 14:42:12','2022-02-21 14:42:12',NULL),
	(70,8,'Photo',31,'2022-03-27 15:33:18','2022-03-27 15:33:18',NULL),
	(75,4,'Music & sound',44,'2022-04-02 08:57:14','2022-04-02 08:57:14',NULL),
	(76,4,'Videos & visuals',44,'2022-04-02 08:57:14','2022-04-02 08:57:14',NULL),
	(77,4,'Paintings & illustrations',45,'2022-04-02 09:43:19','2022-04-02 09:43:19',NULL),
	(78,4,'Photo',46,'2022-04-02 09:44:14','2022-04-02 09:44:14',NULL),
	(79,13,'Paintings & illustrations',47,'2022-04-02 15:44:37','2022-04-02 15:44:37',NULL),
	(80,4,'Music & sound',48,'2022-04-06 12:55:24','2022-04-06 12:55:24',NULL),
	(81,4,'Videos & visuals',48,'2022-04-06 12:55:24','2022-04-06 12:55:24',NULL),
	(82,5,'Music & sound',49,'2022-04-06 20:41:28','2022-04-06 20:41:28',NULL),
	(83,5,'Videos & visuals',49,'2022-04-06 20:41:28','2022-04-06 20:41:28',NULL),
	(84,8,'Photo',50,'2022-04-07 03:22:54','2022-04-07 03:22:54',NULL),
	(85,8,'Photo',51,'2022-04-09 02:04:24','2022-04-09 02:04:24',NULL),
	(86,5,'Paintings & illustrations',52,'2022-04-13 13:36:45','2022-04-13 13:36:45',NULL),
	(87,8,'Photo',53,'2022-04-14 22:27:30','2022-04-14 22:27:30',NULL),
	(88,5,'Digital art & wallpapers',54,'2022-04-15 09:59:31','2022-04-15 09:59:31',NULL),
	(89,5,'Digital art & wallpapers',55,'2022-04-17 23:35:55','2022-04-17 23:35:55',NULL),
	(90,21,'Paintings & illustrations',56,'2022-04-21 10:21:45','2022-04-21 10:21:45',NULL);

/*!40000 ALTER TABLE `interest_group_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы invitations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invitations`;

CREATE TABLE `invitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invited_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы job_hair_color
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_hair_color`;

CREATE TABLE `job_hair_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `hair_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `job_hair_color` WRITE;
/*!40000 ALTER TABLE `job_hair_color` DISABLE KEYS */;

INSERT INTO `job_hair_color` (`id`, `job_id`, `hair_color`, `created_at`, `updated_at`)
VALUES
	(1,1,'Auburn','2021-05-08 13:08:23',NULL);

/*!40000 ALTER TABLE `job_hair_color` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы job_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_likes`;

CREATE TABLE `job_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` enum('1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1-like,2-Unlike,3-ignore',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы job_skin_color
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_skin_color`;

CREATE TABLE `job_skin_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int NOT NULL,
  `skin_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `job_skin_color` WRITE;
/*!40000 ALTER TABLE `job_skin_color` DISABLE KEYS */;

INSERT INTO `job_skin_color` (`id`, `job_id`, `skin_color`, `created_at`, `updated_at`)
VALUES
	(1,1,'Light','2021-05-08 13:08:23',NULL);

/*!40000 ALTER TABLE `job_skin_color` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы jobcategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobcategories`;

CREATE TABLE `jobcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoriesvalue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobcategoriesvalue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `job_title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `i_am` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `looking_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы jobs_style
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs_style`;

CREATE TABLE `jobs_style` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` bigint NOT NULL,
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `jobs_style` WRITE;
/*!40000 ALTER TABLE `jobs_style` DISABLE KEYS */;

INSERT INTO `jobs_style` (`id`, `job_id`, `style`, `created_at`, `updated_at`)
VALUES
	(1,1,'Fantasy/Horror','2021-05-08 13:08:23',NULL),
	(2,1,'Adult','2021-05-08 13:08:23',NULL),
	(3,1,'Body paint','2021-05-08 13:08:23',NULL);

/*!40000 ALTER TABLE `jobs_style` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `details`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','admin-boat',NULL,NULL,1,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.dashboard',NULL),
	(4,1,'Users','','_self','admin-person',NULL,NULL,3,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.users.index',NULL),
	(7,1,'Roles','','_self','admin-lock',NULL,NULL,2,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.roles.index',NULL),
	(8,1,'Setting programmer','','_self','admin-tools',NULL,NULL,9,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL,NULL),
	(9,1,'Constructor Menu','','_self','admin-list',NULL,8,10,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.menus.index',NULL),
	(10,1,'Designer form','','_self','admin-wand',NULL,8,11,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.form-designer.index',NULL),
	(11,1,'Database','','_self','admin-data',NULL,8,11,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.database.index',NULL),
	(12,1,'Compass','/admin/compass','_self','admin-compass',NULL,8,12,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL,NULL),
	(13,1,'Settings','','_self','admin-settings',NULL,NULL,14,NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45','admin.settings.index',NULL),
	(14,1,'Orders','/admin/orders','_self','admin-buy',NULL,NULL,15,NULL,'2022-11-16 14:15:50','2022-11-16 14:15:50',NULL,NULL),
	(15,1,'Payments','/admin/payments','_self','admin-bomb',NULL,NULL,16,NULL,'2022-11-16 14:19:06','2022-11-16 14:19:06',NULL,NULL);

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2022-11-16 14:00:45','2022-11-16 14:00:45');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` bigint unsigned NOT NULL,
  `receiver_id` bigint unsigned NOT NULL,
  `story_user_id` int DEFAULT NULL,
  `story_id` int DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` double(10,2) DEFAULT NULL,
  `conversation_id` bigint unsigned NOT NULL,
  `read_bit` int NOT NULL DEFAULT '1',
  `sender_chat` int NOT NULL DEFAULT '1',
  `receiver_chat` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1',
  `not_approved` int NOT NULL DEFAULT '0',
  `isPriceRequest` tinyint NOT NULL DEFAULT '0',
  `delete_status` int NOT NULL DEFAULT '1' COMMENT '1 = new message, 2 = both user delete message, user_id = deleted user id',
  `isRemoved` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_sender_id_foreign` (`sender_id`),
  KEY `messages_receiver_id_foreign` (`receiver_id`),
  KEY `messages_conversation_id_foreign` (`conversation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `story_user_id`, `story_id`, `message`, `file`, `thumbnail`, `file_url`, `file_type`, `file_size`, `conversation_id`, `read_bit`, `sender_chat`, `receiver_chat`, `status`, `not_approved`, `isPriceRequest`, `delete_status`, `isRemoved`, `created_at`, `updated_at`)
VALUES
	(1,4,3,NULL,NULL,'Er din post ikke en video med lyd?',NULL,'','','',0.00,1,0,1,1,1,0,0,1,0,'2022-01-28 15:35:47','2022-01-28 23:13:28'),
	(2,3,4,NULL,NULL,'Jo, der skulle være lyd på.',NULL,'','','',0.00,1,0,1,1,1,0,0,1,0,'2022-01-28 17:04:46','2022-01-30 02:21:53'),
	(3,4,3,NULL,NULL,'Ah, den skulle bare loade færdig ?',NULL,'','','',0.00,1,0,1,1,1,0,0,1,0,'2022-01-28 17:07:02','2022-01-28 23:13:28'),
	(4,3,4,NULL,NULL,'Super',NULL,'','','',0.00,1,0,1,1,1,0,0,1,0,'2022-01-28 18:13:28','2022-01-30 02:21:53'),
	(5,2,4,NULL,NULL,'Hello',NULL,'','','',0.00,2,0,1,1,1,0,0,1,0,'2022-01-28 18:23:58','2022-01-29 03:43:20'),
	(6,4,2,NULL,NULL,'Hi',NULL,'','','',0.00,2,0,1,1,1,0,0,1,0,'2022-01-28 18:24:42','2022-05-04 19:03:42'),
	(7,4,8,NULL,NULL,'Cool story ???',NULL,NULL,NULL,NULL,NULL,3,0,1,1,1,0,0,1,0,'2022-03-28 03:35:15','2022-03-28 03:45:16'),
	(8,8,4,NULL,NULL,'',NULL,'public/images/chat_files/thumbnail/1648410316.thumbnail.png','public/images/chat_files/1648410316.video.mov','gif',0.00,3,0,1,1,1,0,0,1,0,'2022-03-27 22:45:16','2022-04-02 14:08:17'),
	(9,13,5,NULL,NULL,NULL,'anim.gif','','public/images/chat_files/1649280496.anim.gif','photo',NULL,4,0,1,1,1,0,0,1,0,'2022-04-07 05:28:16','2022-04-07 05:31:08'),
	(10,26,4,5,49,NULL,NULL,'https://artfora.net/images/post/new_images/thumb/',NULL,'post',NULL,5,1,1,1,1,0,0,1,1,'2022-04-29 17:02:41','2022-04-29 17:02:41'),
	(11,5,26,NULL,NULL,'Hi Natalya ?',NULL,'','','',0.00,6,0,1,1,1,0,0,1,0,'2022-04-29 12:07:46','2022-04-29 17:09:50'),
	(12,26,5,NULL,NULL,'Hello, Jimmy :)',NULL,'','','',0.00,6,0,1,1,1,0,0,1,0,'2022-04-29 12:09:50','2022-05-06 00:28:25'),
	(13,26,4,5,12,NULL,NULL,'https://artfora.net/images/post/new_images/thumb/16435757458696769320.jpg',NULL,'post',NULL,5,1,1,1,1,0,0,1,1,'2022-04-29 17:24:46','2022-04-29 17:24:46'),
	(14,26,4,5,7,NULL,NULL,'https://artfora.net/images/post/new_images/thumb/164345422715952485520.jpg',NULL,'post',NULL,5,1,1,1,1,0,0,1,1,'2022-04-29 17:29:23','2022-04-29 17:29:23');

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2021_08_31_145816_create_product_approve_codes_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы notification_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification_statuses`;

CREATE TABLE `notification_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `follewers_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0' COMMENT '1=shop, 2=feed, 3= story',
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('00ee63661d7cab80f7acd1ad1fc9740f44fa2ef616bc9559858763432fefdcd760ef4fc3975a3ee8',36,3,'MyApp','[]',0,'2021-08-26 15:22:58','2021-08-26 15:22:58','2022-08-26 12:22:58'),
	('02e69a777c57b1a8888386c75dfa4fa602dfdef667a6e686a0a879e7cc38630ec825ae0d874a2a32',11,3,'MyApp','[]',0,'2022-02-02 13:35:25','2022-02-02 13:35:25','2023-02-02 11:35:25'),
	('04a60dbbbc0f2ab1ecf78ddfb9ebe386ae340c305a4892bc96e5cde81a59fb2b44acb846b6e62e34',5,3,'MyApp','[]',0,'2022-01-28 23:03:39','2022-01-28 23:03:39','2023-01-28 21:03:39'),
	('04ac59d2cec1e4ad2c12e13a3d83c56b47f5cad824289e51a9bd2ad0097c1e13eb4cffb73687a03b',15,3,'MyApp','[]',0,'2021-08-11 09:00:50','2021-08-11 09:00:50','2022-08-11 06:00:50'),
	('0702301e402ce13fbf012f48b8e4c7b4e118fe9987c7d511db75f3bcd80bd2fad3982c8fd0196928',15,3,'MyApp','[]',0,'2022-03-30 12:28:06','2022-03-30 12:28:06','2023-03-30 09:28:06'),
	('0a1d3acbea6c80930afa9280547c2e406c69dfaaa4c79cc8de9519149b4d036292ba18845372ae26',18,3,'MyApp','[]',0,'2021-06-26 13:44:03','2021-06-26 13:44:03','2022-06-26 10:44:03'),
	('0a49d74d12f2e11e3d1ec9cba334c4b57791120a02c9973a5d2534364e85aff2fa0cadd267f018b1',13,3,'MyApp','[]',0,'2021-08-10 21:06:13','2021-08-10 21:06:13','2022-08-10 18:06:13'),
	('0e1c0ca669a5b73bb6460a75f0703c2d8df46a44aa68879dd114367611225dfd4fc46b73b4f70483',11,3,'MyApp','[]',0,'2022-02-02 13:35:47','2022-02-02 13:35:47','2023-02-02 11:35:47'),
	('1057d7bcf606220bf544d89590a78d4f2342fa802d1418216c5198137d7a1f878e14334bb4711f3e',21,3,'MyApp','[]',0,'2021-07-01 07:55:55','2021-07-01 07:55:55','2022-07-01 04:55:55'),
	('1166270fbbc41f7f44962de4fd9c224205041985f06f4635558f20508225e1263f4c5bd15ecdba7f',218,3,'MyApp','[]',0,'2021-06-07 08:14:06','2021-06-07 08:14:06','2022-06-07 05:14:06'),
	('126a771a5d9927c069696743c5d81e6b81bc6f8e22d98c9142101a161dd5e0f1bff90eb1c1431281',19,3,'MyApp','[]',0,'2021-06-26 13:46:20','2021-06-26 13:46:20','2022-06-26 10:46:20'),
	('14aa17e866da9f4547df3f50024083c707393c3425fadb17a4a83d7823d83ff92193951cce08700c',4,3,'MyApp','[]',0,'2019-07-22 09:58:24','2019-07-22 09:58:24','2020-07-22 12:28:24'),
	('16e4489f3320572e75e6af2e8e541e2f6c585788be64e9b0c814461a6171c7649d78bf76ca4c8360',51,3,'MyApp','[]',0,'2021-09-03 13:19:56','2021-09-03 13:19:56','2022-09-03 10:19:56'),
	('16eedd73cc1e76122a08e8dbf6c8529e08f54ea221e2dbb06e6c409c2af509264ec7195d363249c3',8,3,'MyApp','[]',0,'2022-01-29 15:08:50','2022-01-29 15:08:50','2023-01-29 13:08:50'),
	('182ce0b96bf815471cc79723303cc86ff19a79bd1ae35d19a1a5d80adf7ea27f3fc238de97c0061e',4,3,'MyApp','[]',0,'2021-07-21 22:12:46','2021-07-21 22:12:46','2022-07-21 19:12:46'),
	('18ec4256b95f77c30f5a8baf86dda13a389e3a6febf6e0d027251374ad433090f3f32b086a60652d',26,3,'MyApp','[]',0,'2022-04-29 11:19:30','2022-04-29 11:19:30','2023-04-29 08:19:30'),
	('19aa6a1453d604baf3968f5aafd3ace115bb92e6f108029372a05d20a752abef87fcb6c7233c16d3',61,3,'MyApp','[]',0,'2022-01-13 14:13:11','2022-01-13 14:13:11','2023-01-13 12:13:11'),
	('1af7d44db38ab4869ca406d982632978e28b642164006bebb3cbac30a5cccfe6223168185b8a2d30',14,3,'MyApp','[]',0,'2022-03-29 11:41:27','2022-03-29 11:41:27','2023-03-29 08:41:27'),
	('1bc85989f42d869f74c3daa79ffb538a28241f861047b4af7c7d8ca79b0000b1286dbfa808e95a27',22,3,'MyApp','[]',0,'2022-04-19 09:33:32','2022-04-19 09:33:32','2023-04-19 06:33:32'),
	('1ffbb8757b6e9d74a93f6b2bbc83770e649403fdb2b27e733d6730b2d257332ae18e543472e1ef91',226,3,'MyApp','[]',0,'2021-06-08 15:09:08','2021-06-08 15:09:08','2022-06-08 12:09:08'),
	('205a08b031558d2ea0552b2e476ee3f7fa2e0fe2e3ecb15de2c36b5062fc3d438050b6ce763c2838',5,3,'MyApp','[]',0,'2021-07-21 22:22:59','2021-07-21 22:22:59','2022-07-21 19:22:59'),
	('22a1f6ebafb34cfb5e4aadc248ab26d0acad087258747b94d0bb886a87cb3e314cee50c7b5923a0d',21,3,'MyApp','[]',0,'2022-04-15 10:47:25','2022-04-15 10:47:25','2023-04-15 07:47:25'),
	('230aae02076f3f28eb1ab9142ea30ddfed8a5cf0d450f9258ecfd8891feed9ff5f4e27f41b951c6b',6,3,'MyApp','[]',0,'2021-06-10 08:53:46','2021-06-10 08:53:46','2022-06-10 05:53:46'),
	('238fe45ab94ae8d84a3a9eb039e01a5c81fd337ceacd757355f8b7ebc50074d8463988ba81283f0b',4,3,'MyApp','[]',0,'2022-01-28 15:29:19','2022-01-28 15:29:19','2023-01-28 13:29:19'),
	('24a56e888819c59f6d6a0f3c4634db465e10460580b3fb3f9cf6315fd3eac68cb9988396b12785df',222,3,'MyApp','[]',0,'2021-06-08 08:16:36','2021-06-08 08:16:36','2022-06-08 05:16:36'),
	('24a8885a12bd594a2fa1154b772c62098b66006ca6626b4ff0469713d93aa83520eee74b88063565',22,3,'MyApp','[]',0,'2021-07-07 08:36:12','2021-07-07 08:36:12','2022-07-07 05:36:12'),
	('25a2bb61b0d3d9e45607959169c962d0638a7d4bd4529689d61a48b89688f0c7eaaa3360a8895802',27,3,'MyApp','[]',0,'2021-07-14 09:03:58','2021-07-14 09:03:58','2022-07-14 06:03:58'),
	('2826848d1e8f0e5bdb39d3d3492a84e47827bf354df410fbd67ba1383d970ff701757a708a599d1c',48,3,'MyApp','[]',0,'2021-09-02 11:21:15','2021-09-02 11:21:15','2022-09-02 08:21:15'),
	('2baca70eeb3bb4858a41f4e94b777b34a77cd9a3f41b0e1dfdb716be5491f17cdb93fef481442743',17,3,'MyApp','[]',0,'2021-06-26 13:42:02','2021-06-26 13:42:02','2022-06-26 10:42:02'),
	('2c99110566a0da8c2027efb6143fd467be1496d18524612db559d42dcc54bd8bf2a466b4cd3b1672',25,3,'MyApp','[]',0,'2021-08-22 16:36:08','2021-08-22 16:36:08','2022-08-22 13:36:08'),
	('2dce19d346b1231c1e9feddf5105c17dd2ac3a75a6cff26b8c7328afae75db6c61e0c098a724d044',223,3,'MyApp','[]',0,'2021-06-08 11:37:13','2021-06-08 11:37:13','2022-06-08 08:37:13'),
	('2eb9fcbf8c99b27aac7f6066bdd806229ccb95d71c6e2b3adf7029e097332ceb317dbf2e4f454f3c',55,3,'MyApp','[]',0,'2021-09-11 12:14:23','2021-09-11 12:14:23','2022-09-11 09:14:23'),
	('2f1dfd69b714cd9b58d00308e53c26f3ab6d46b459da43ad36097ee7fae959d074b0007ea2e9c00a',34,3,'MyApp','[]',0,'2021-08-25 11:52:04','2021-08-25 11:52:04','2022-08-25 08:52:04'),
	('2fe67ea3f69b2429c54d465999914b0ca4a4ca4f2d2fd0cae4daa1b2c9c6678e9c42fc875196de68',31,3,'MyApp','[]',0,'2021-08-23 11:47:06','2021-08-23 11:47:06','2022-08-23 08:47:06'),
	('30b86e646025308db8e931b383a2048afb1f94cfb367afd91e5c0e0e47cb80d873b57c3f45a38d5a',13,3,'MyApp','[]',0,'2022-03-26 16:30:36','2022-03-26 16:30:36','2023-03-26 14:30:36'),
	('33c0c84cfa2a07ca18c3b9957d6615b4b7686c2d3a72172ae16cafd6531686b79f6ef93dbf890d76',26,3,'MyApp','[]',0,'2021-07-08 21:52:50','2021-07-08 21:52:50','2022-07-08 18:52:50'),
	('367ac360ed9a02ffaf067a6509a24956160d6d4eca904ddb41003cda91bd9a1a90002fe7317df31c',25,3,'MyApp','[]',0,'2021-07-08 15:28:50','2021-07-08 15:28:50','2022-07-08 12:28:50'),
	('39e46f9759c3b3f6b970c015ea8d8ccce6e1b7915e3f28b7ffa397956f9396fcca20e6571e1f2b48',16,3,'MyApp','[]',0,'2022-04-05 14:43:29','2022-04-05 14:43:29','2023-04-05 11:43:29'),
	('3aed85b61ea7613d5b57c1406ba3277b3bd89af2fe4cb54dff8f8e1b4c7438d6a9fc660b8b1b93db',23,3,'MyApp','[]',0,'2021-08-22 15:43:26','2021-08-22 15:43:26','2022-08-22 12:43:26'),
	('3b6646a5dc59598dc9ca67b42751dbe16fc11fd9987e07ad63b791b2016830db97154f05ac4d8059',2,3,'MyApp','[]',0,'2022-01-27 15:12:00','2022-01-27 15:12:00','2023-01-27 13:12:00'),
	('3b98cd450e68f1813b12845fcad3f00b0393a48d13c428a1ef56448bffe27ebc00a65fb583820ba8',56,3,'MyApp','[]',0,'2021-09-11 16:23:23','2021-09-11 16:23:23','2022-09-11 13:23:23'),
	('3be7e2b47460c4683b234d79cce5fd1401d4fcf0c07464aad3f28aaadf7b9e6201415a19bb8d319a',64,3,'MyApp','[]',0,'2022-01-19 11:32:23','2022-01-19 11:32:23','2023-01-19 09:32:23'),
	('3e823e8b6f1d5c702b467e335bd79ecc99770c6ae0e8939fb1a7066d9f1316461ee341eccf6647af',5,3,'MyApp','[]',0,'2021-06-10 07:51:09','2021-06-10 07:51:09','2022-06-10 04:51:09'),
	('44fcb70dd314478e0cd5baafe5b39b6eed07a41fcfeb9b36887eb0c8a5a74e5f5bc5a67e5e61d05f',32,3,'MyApp','[]',0,'2021-08-23 15:25:58','2021-08-23 15:25:58','2022-08-23 12:25:58'),
	('5046c64cd88b73e3bd31d7697ae37e5ce197ecf3823594cfea8ef06115f1899523026320af01954c',20,3,'MyApp','[]',0,'2022-04-15 06:51:36','2022-04-15 06:51:36','2023-04-15 03:51:36'),
	('51b9058678e14a2a2e7e9d866f2d39629d96a0228d856317970be6cdeff68bd661ed9605707b2839',49,3,'MyApp','[]',0,'2021-09-02 13:35:03','2021-09-02 13:35:03','2022-09-02 10:35:03'),
	('51f58e1a36759527d122dbaffd91440f383d1c525c0e60bdc6086598efa6b2fabe4edbeaa73326cb',11,3,'MyApp','[]',0,'2022-03-26 12:38:20','2022-03-26 12:38:20','2023-03-26 10:38:20'),
	('5272cddfe3893e17e4cdb4894c988cf246be099c13ca9b327a12f43e03cbe47c81de8da14f44a61b',58,3,'MyApp','[]',0,'2021-10-06 13:22:11','2021-10-06 13:22:11','2022-10-06 10:22:11'),
	('55ffe1f3416856c0472a6aa27d9a2c179af3cbbc78dca14e6a996a1ab3d86e113977785c1d35223b',60,3,'MyApp','[]',0,'2021-11-13 12:50:58','2021-11-13 12:50:58','2022-11-13 10:50:58'),
	('5629f03538d8fc6c73ac202389b025947af084d94ec3b5fe2dafcd73ba804e64ba1d32a75c15ae8f',10,3,'MyApp','[]',0,'2021-08-08 09:10:28','2021-08-08 09:10:28','2022-08-08 06:10:28'),
	('5886a092bc8c110e90c256fe339fa854d25303c88c3cc8acdf1be862c0a31c88dd0d560c4340c834',16,3,'MyApp','[]',0,'2021-08-11 21:10:06','2021-08-11 21:10:06','2022-08-11 18:10:06'),
	('590732287bc3a0eac501d61c31cbcf9935b9110809428cbeb899c0af4d58f6bd6981ae4a32c9c996',6,3,'MyApp','[]',0,'2021-07-23 23:48:03','2021-07-23 23:48:03','2022-07-23 20:48:03'),
	('5956688d7742cc8960dd7e48d564b45359541d573e1b26fe836bde9d8d7333ec5ded7b41d6b3df2c',6,3,'MyApp','[]',0,'2022-01-29 05:54:02','2022-01-29 05:54:02','2023-01-29 03:54:02'),
	('59b32dea078784babbeadb758d502f406a1e78a4b746ff12c81f2d30bca0515456caba4f8a5ecff1',18,3,'MyApp','[]',0,'2021-06-26 13:44:39','2021-06-26 13:44:39','2022-06-26 10:44:39'),
	('5ac0854db05bacb4db505ba8da90029bc6e7904677114f17b0f8ae8c27354aaf6a8692fbb5976a85',38,3,'MyApp','[]',0,'2021-08-26 16:21:09','2021-08-26 16:21:09','2022-08-26 13:21:09'),
	('5ae06dfe34a709867ca86f17af1d2b44a65066e98dcf7d88345a0af170db13c7b9265d3bd00aebef',14,3,'MyApp','[]',0,'2021-08-11 08:20:19','2021-08-11 08:20:19','2022-08-11 05:20:19'),
	('5bdfad5c42fa55800d7848deb4d8b6d990f7927ca83e04366f084f3f2a824b0fc8e9f87242f852d8',21,3,'MyApp','[]',0,'2021-08-17 07:32:49','2021-08-17 07:32:49','2022-08-17 04:32:49'),
	('61aae8a5324d3d78b1c3a0eedfbc531f0030ceff180c76ad865447ee6804a77a3c6787472b3fbd12',45,3,'MyApp','[]',0,'2021-08-31 23:56:13','2021-08-31 23:56:13','2022-08-31 20:56:13'),
	('69da19c55ce0f004c9f43f89cd932c17dce48bbb2f9a0f8c326947de01f974d817b00248b54ecee1',57,3,'MyApp','[]',0,'2021-09-25 09:19:33','2021-09-25 09:19:33','2022-09-25 06:19:33'),
	('73d7ff95e45934df3036c316c5d30a20cf9c7f80d176aba78dd6aa83046ba2d1ad5c8689829dc966',22,3,'MyApp','[]',0,'2021-08-22 15:20:49','2021-08-22 15:20:49','2022-08-22 12:20:49'),
	('7768ef4ba299978ad741bb89fef1e3502b388fc702a7bf6cbcc591e14e9583d15436c3812432eb8b',219,3,'MyApp','[]',0,'2021-06-07 08:26:10','2021-06-07 08:26:10','2022-06-07 05:26:10'),
	('78098f686f8929572c360b061e7829a4c4d88f5bbe35d1839418c3fce51fc21dce9cbaa7c6f063dc',13,3,'MyApp','[]',0,'2021-06-17 12:52:34','2021-06-17 12:52:34','2022-06-17 09:52:34'),
	('78547b4410d6c77e227f63f52ca78e795ca640c361528811db722bc7fd7179b23c7f51c74068de63',17,3,'MyApp','[]',0,'2022-04-06 13:20:28','2022-04-06 13:20:28','2023-04-06 10:20:28'),
	('7952be14fdcc9c38cec4d1b2cab41a977f50d7f37026ed08c194ae2c3f0d099c53b3e39031f49b72',9,3,'MyApp','[]',0,'2021-06-11 15:39:39','2021-06-11 15:39:39','2022-06-11 12:39:39'),
	('7ccdb796a91873609be0ff1115b7c8956586d4ca1b80f6e2bba0c4061a8f7a20819a553f97620372',39,3,'MyApp','[]',0,'2021-08-30 22:07:45','2021-08-30 22:07:45','2022-08-30 19:07:45'),
	('7f7c6ef9a106f6fce363e827c7e0ab2df773cf27b5574c0393d894e19f054612a5ac5493605ccb2f',59,3,'MyApp','[]',0,'2021-11-13 12:48:26','2021-11-13 12:48:26','2022-11-13 10:48:26'),
	('812e8b1f90d763cfe74b6b1631bf01051960643e4b0b7d85c32dc1c92b9d659bfece03aebc093ba3',4,3,'MyApp','[]',0,'2020-02-25 08:26:52','2020-02-25 08:26:52','2021-02-25 07:26:52'),
	('853fb74c11fc59109ed6dc74befc63537f5e14f401c79fb78344f08acdb32d1fda6a9618228bec13',65,3,'MyApp','[]',0,'2022-01-26 21:12:04','2022-01-26 21:12:04','2023-01-26 19:12:04'),
	('85efd00aca737484f41f90915f7bba7fe80cd2b3e0cabed7e45842278a0f7199dcdd4b806fc2effd',59,3,'MyApp','[]',0,'2021-11-13 12:48:34','2021-11-13 12:48:34','2022-11-13 10:48:34'),
	('8b1a9b35557e22f013edf27355d05fb2f3064e9774e33624262262d9df7089527599872cb224a6d4',4,3,'MyApp','[]',0,'2020-03-27 13:47:17','2020-03-27 13:47:17','2021-03-27 12:47:17'),
	('8da658cb6a9285fe6bec4739f93759b9ccf502e03027f1449036b9b266250042948173f6274870dc',8,3,'MyApp','[]',0,'2021-08-02 21:22:38','2021-08-02 21:22:38','2022-08-02 18:22:38'),
	('8e548b301738fe3d8e9d572c5b24c22ef654002dab027fd79ef9c714d9a823a47366f1189df0da3b',7,3,'MyApp','[]',0,'2022-01-29 06:34:23','2022-01-29 06:34:23','2023-01-29 04:34:23'),
	('8f89a1a0519a3de3b45ab06c772a64f74087d4de514721dea5a6c55463da15707041f2b036081152',12,3,'MyApp','[]',0,'2021-08-10 20:22:24','2021-08-10 20:22:24','2022-08-10 17:22:24'),
	('900c66d70f10b09073feb052f607de31e0af4b9813625843c4a49505aa104101010d67fa8f880474',7,3,'MyApp','[]',0,'2021-08-02 20:20:27','2021-08-02 20:20:27','2022-08-02 17:20:27'),
	('92033ccbd259f918c2b0dd9cc6514b8ee6b1d695864cb269f0eb1fbba75e2a19159964c583d1e9b9',9,3,'MyApp','[]',0,'2021-08-06 09:47:54','2021-08-06 09:47:54','2022-08-06 06:47:54'),
	('93e546281254c8f35d1aa4a0de1c13b65bf44e4598d7105355b341d525001dfffe09b3cc8a3dca0b',14,3,'MyApp','[]',0,'2022-03-29 11:42:20','2022-03-29 11:42:20','2023-03-29 08:42:20'),
	('96614430c90675426c4fd575f47a58faef9e926e44cfbf32d8ef9cf159879881d1d873eb9e803829',44,3,'MyApp','[]',0,'2021-08-31 23:41:26','2021-08-31 23:41:26','2022-08-31 20:41:26'),
	('996a9d1fe0cc8b0872203cb014601084d8811ae7402fed9b2ffb46006f7c6985ddb261812f521b36',24,3,'MyApp','[]',0,'2021-08-22 16:23:07','2021-08-22 16:23:07','2022-08-22 13:23:07'),
	('9b9b2865e76178cc076c107411a81b19416098840a18648d4be9c507b8530ab81e61ae9aa2b6d5ee',43,3,'MyApp','[]',0,'2021-08-31 18:00:31','2021-08-31 18:00:31','2022-08-31 15:00:31'),
	('9e9a477caa5b419da49089e540bd3f3b0021e860cbaee8db2c930f6ac5156a6e33463ab67e95a8db',30,3,'MyApp','[]',0,'2021-08-23 11:05:47','2021-08-23 11:05:47','2022-08-23 08:05:47'),
	('9ff1d86ee3b3ea13590e7b4c7f08c93aff325e83b8b4b5de6a0f072c74b121304c489bc7962f7a60',1,3,'MyApp','[]',0,'2022-01-27 15:02:42','2022-01-27 15:02:42','2023-01-27 13:02:42'),
	('a1bab6517ee7186f4ea8c4b521ad3d9e73aae474f2e584d3f6f2fa2aa011a4bf740e97f3b5abed2d',7,3,'MyApp','[]',0,'2021-06-10 12:01:00','2021-06-10 12:01:00','2022-06-10 09:01:00'),
	('a25ce2c518674dee73b22df393302946c82474b46495d138a747fea07cd8e50d6ab652d562c794bd',4,3,'MyApp','[]',0,'2020-02-05 09:27:29','2020-02-05 09:27:29','2021-02-05 08:27:29'),
	('a5deb5f3fb64de273d378c97f14f01d797594ddceae4e7233782043e91840413bb606ce9d7164a08',26,3,'MyApp','[]',0,'2021-08-22 19:12:32','2021-08-22 19:12:32','2022-08-22 16:12:32'),
	('a66e9541ebec3790b42151c0f0d9a4a5271ed16a2296be118a61d67fabeee829bb7afa712d7dc70b',20,3,'MyApp','[]',0,'2021-08-16 14:41:34','2021-08-16 14:41:34','2022-08-16 11:41:34'),
	('a922838a60343f5b13a5a68d8b3bc7e33ccf9f058b9cd00dcd070b83afe93d28e27dc15864471169',33,3,'MyApp','[]',0,'2021-08-23 15:48:57','2021-08-23 15:48:57','2022-08-23 12:48:57'),
	('ac2277adaf1a095d950de279ab393a1bb8e6aaa25d4439ec8acc1a43cbc22d8d7801b80e41fd0049',20,3,'MyApp','[]',0,'2021-06-28 14:53:11','2021-06-28 14:53:11','2022-06-28 11:53:11'),
	('ae250f8f5fa9bc44243c102a83edbbe8f98405ed88e207d1be630a028e57671fc2bfd420cc3b02f1',37,3,'MyApp','[]',0,'2021-08-26 16:07:26','2021-08-26 16:07:26','2022-08-26 13:07:26'),
	('aff233a641a795b7e47034dad7acfd8c17af864b946a21fc0ab174de4537ad6e6fb90b9d9c93f39c',12,3,'MyApp','[]',0,'2021-06-17 09:31:41','2021-06-17 09:31:41','2022-06-17 06:31:41'),
	('b2fed9cbf0965bdffeac63e7450574044788d1038168c4757ce75f285c2b4ba6c0dfd940025b677a',15,3,'MyApp','[]',0,'2021-06-22 22:42:35','2021-06-22 22:42:35','2022-06-22 19:42:35'),
	('b3f119960916f7e8206462cdf7fd90c42d1f1acda6ec7a4d2574df4a4eccc085e6a6257b5ea16cbe',14,3,'MyApp','[]',0,'2021-06-18 08:35:23','2021-06-18 08:35:23','2022-06-18 05:35:23'),
	('b5806c093cd63593c18f4f9ffba76402fc8a85564d8a14d1dc5ead02c06032397dea3b996b1ba776',225,3,'MyApp','[]',0,'2021-06-08 14:59:48','2021-06-08 14:59:48','2022-06-08 11:59:48'),
	('b5a3307640bfa72e57a6904aed5097ed6ca833086a380aa127fa7a7daf02b95d0c945f4211a9d900',4,3,'MyApp','[]',0,'2019-08-06 06:58:40','2019-08-06 06:58:40','2020-08-06 09:28:40'),
	('b5ef27dbbdc1ca3cbc80aa7f9cc45fc131995e39831fa8d6962bcb006728f2d187b22ab32cb1a75d',221,3,'MyApp','[]',0,'2021-06-07 15:29:39','2021-06-07 15:29:39','2022-06-07 12:29:39'),
	('b6ffbfc57e0e9cc61c6689a2a5f075215e7f7541910ee055747bafc51c832dfe9972512dcdc30411',19,3,'MyApp','[]',0,'2022-04-11 17:30:33','2022-04-11 17:30:33','2023-04-11 14:30:33'),
	('b720845af2737c7d6fb2eb31ab2bdbd7706f7f2ef05a3be9abde588c1b142e2889b3154a6e032b54',63,3,'MyApp','[]',0,'2022-01-17 07:24:53','2022-01-17 07:24:53','2023-01-17 05:24:53'),
	('b799fcd399ddf0a81d81f1064716db78cac0065cc05b5a29b034b5103a218b0e4309924d03a7cd89',4,3,'MyApp','[]',0,'2020-04-13 17:26:16','2020-04-13 17:26:16','2021-04-13 16:26:16'),
	('bac33e4cf6e3c19f8d940c911b5d3d2c39ae3d611aaa09d4bd259cc5c17b6e5a1039ca30c5c06eeb',22,3,'MyApp','[]',0,'2022-04-19 09:33:20','2022-04-19 09:33:20','2023-04-19 06:33:20'),
	('bc96f175a3efd42fa19d61e242e79647f53b59eb64da609157b8691bd78473191a27702b33feb7e7',29,3,'MyApp','[]',0,'2021-08-22 19:57:25','2021-08-22 19:57:25','2022-08-22 16:57:25'),
	('c296ea9bc36d02d5bd1f13b3ff4dae6a6925233850edb0ebdfee929230b33c3c0a7ca5b153e6dd93',9,3,'MyApp','[]',0,'2022-01-30 21:19:27','2022-01-30 21:19:27','2023-01-30 19:19:27'),
	('c29ebf33ad17285e47f70c26acc16ca5aa26db80dc499626f7a51eb705f601544f031aab5e510f14',228,3,'MyApp','[]',0,'2021-06-08 20:29:45','2021-06-08 20:29:45','2022-06-08 17:29:45'),
	('c486e1a1e5b4054636c513c6794ac1a552e0f7b372facdfc11fb641dbbf33269c35d9520b7a514a5',1,3,'MyApp','[]',0,'2021-07-20 11:56:59','2021-07-20 11:56:59','2022-07-20 08:56:59'),
	('c563df8946e4b26a18cc74ba7564d596997d63abc17770d9dfd38d8be2e4e638bb6e5d7d2390009b',17,3,'MyApp','[]',0,'2021-08-12 15:24:51','2021-08-12 15:24:51','2022-08-12 12:24:51'),
	('c7b6d8072c5163aaffe18fe17aebfdc9fac70fd4b8d8642503763e0a7640990581a4b36ab3251477',224,3,'MyApp','[]',0,'2021-06-08 12:31:34','2021-06-08 12:31:34','2022-06-08 09:31:34'),
	('c7ff76af138b724613635a9276c7af5091dacc92e4c72189254ddead83d9f95de1951eefc121e40f',24,3,'MyApp','[]',0,'2021-07-07 12:49:03','2021-07-07 12:49:03','2022-07-07 09:49:03'),
	('ca899df6b1a0359e51b2ef7c82c77cd5100bf52f450a88e6515e0430c2458687c65af25d3bd2e69a',8,3,'MyApp','[]',0,'2021-06-10 17:48:26','2021-06-10 17:48:26','2022-06-10 14:48:26'),
	('ccc0275727d7b840756841caf74a5c9dfdadc0cf08cf5d32651eac134cddf9ab6a17cacc0e7f7bf2',40,3,'MyApp','[]',0,'2021-08-30 23:31:18','2021-08-30 23:31:18','2022-08-30 20:31:18'),
	('ccca0b2852cfd2fd0cd3c86c623c02a1569f3b3b4661fee3c5f1606b71c153002d43f031952570d9',11,3,'MyApp','[]',0,'2021-08-08 09:20:58','2021-08-08 09:20:58','2022-08-08 06:20:58'),
	('cd47a4ba5b4d1cb2210f61153665959e1149c74fa61029c0fe4f8b4df75ff7d4392487d4ceaf9d83',18,3,'MyApp','[]',0,'2021-08-12 20:59:51','2021-08-12 20:59:51','2022-08-12 17:59:51'),
	('d011ea61f8731cd29212eaeef5fb6560c34272d0958a989c9c96d842cf8d95f23a19e4bb417b5142',27,3,'MyApp','[]',0,'2021-08-22 19:36:05','2021-08-22 19:36:05','2022-08-22 16:36:05'),
	('d04d92e745657304036e4e3a18e5d83f48243ddd64e048ca16f20f21e21edac44b77ccdea270c977',18,3,'MyApp','[]',0,'2022-04-06 13:28:19','2022-04-06 13:28:19','2023-04-06 10:28:19'),
	('d063fb5463900f8a440f7ff81a5f0c6bd6c5bbbf5a291ee3821c56d5af4d82cd07aac86c583c9d2b',220,3,'MyApp','[]',0,'2021-06-07 14:43:52','2021-06-07 14:43:52','2022-06-07 11:43:52'),
	('d2265145a1a09aaaaa78f22f30b30b9e9c9c6e47cd0e5c2e103d3a8901b4ecbe8f0ac55f9730ad61',16,3,'MyApp','[]',0,'2021-06-26 13:18:54','2021-06-26 13:18:54','2022-06-26 10:18:54'),
	('d2b84e78d7a20b2a2f3370efd72bd46fe5f89384d430a612026f9358e9f861f864c3dba62dbfc79f',10,3,'MyApp','[]',0,'2022-01-31 06:59:47','2022-01-31 06:59:47','2023-01-31 04:59:47'),
	('d4dfa0a406aa20d8c79fba827a340065a3f53e1c930fd1d71a7a6b8478f417fcd64111b32bd65cb5',229,3,'MyApp','[]',0,'2021-06-09 12:21:44','2021-06-09 12:21:44','2022-06-09 09:21:44'),
	('d6672f563c6535538d9541e588d17261f840a0840f3b5d2036e8cf9419d2c464f2baef25143d302b',35,3,'MyApp','[]',0,'2021-08-26 11:26:44','2021-08-26 11:26:44','2022-08-26 08:26:44'),
	('dc47998b0329838b4057527497d05f9b9edbd51cb1abcc8189ae27830d7f6abc84aba6bc5e2b0823',3,3,'MyApp','[]',0,'2021-06-09 15:42:56','2021-06-09 15:42:56','2022-06-09 12:42:56'),
	('df37af098804fdfdef1a07af32f8954e93c7ee7b9c21b7e711f1d44731c23fd95e47fe69c274a4d4',4,3,'MyApp','[]',0,'2020-01-08 09:52:16','2020-01-08 09:52:16','2021-01-08 08:52:16'),
	('dfa4c35b09b8fb9dccb96c85ea00ed49ae52b72d11bc5ba82cd4c4ffa0f852102b6a1c407d9f20db',46,3,'MyApp','[]',0,'2021-09-02 10:15:33','2021-09-02 10:15:33','2022-09-02 07:15:33'),
	('e0da17c576b27ac2939d5adc4e4a325f0dcf781f8cb40e7052d930cbb262b40c665aee7fdc5b6af5',1,3,'MyApp','[]',0,'2021-06-09 12:26:47','2021-06-09 12:26:47','2022-06-09 09:26:47'),
	('e1039434fb84c46cdc5a8c4fb548820c60d434723ad534370b2a405cc3a28ee879ebfe451943f6de',41,3,'MyApp','[]',0,'2021-08-30 23:54:00','2021-08-30 23:54:00','2022-08-30 20:54:00'),
	('e1cc6e9867f9445ba274d80c709ca9ae9bf17c12875923021eeff3f5b3f4979ff7616970b0f210a0',47,3,'MyApp','[]',0,'2021-09-02 10:43:48','2021-09-02 10:43:48','2022-09-02 07:43:48'),
	('e25ce49593e8b2a88d445242aa6b16c7bce10f5e4facee7d4f688804d766c33d42c894b4102827fa',11,3,'MyApp','[]',0,'2021-06-15 23:10:45','2021-06-15 23:10:45','2022-06-15 20:10:45'),
	('e6cca0f576c697391a31566024033bff0680518851f7f34439c24a9a18c84409d5aaa837007f8fb4',62,3,'MyApp','[]',0,'2022-01-13 14:48:52','2022-01-13 14:48:52','2023-01-13 12:48:52'),
	('e92f308cc73924173518351f8a1769bf9189c34c2903fdeb213a445599ef4572441335463670e2bd',2,3,'MyApp','[]',0,'2021-07-21 21:09:43','2021-07-21 21:09:43','2022-07-21 18:09:43'),
	('eabb05e1470a2dbd814974c9e9968ded81bd906b24c3433ef200036c006a9a63ce235ab985621a4a',10,3,'MyApp','[]',0,'2022-01-31 06:59:03','2022-01-31 06:59:03','2023-01-31 04:59:03'),
	('eb6ad2a428956d0cdc38b934f0f0ee0d67f3544081523e74c70c43c4924481ed59fd432e8d21c87a',12,3,'MyApp','[]',0,'2022-02-02 13:38:15','2022-02-02 13:38:15','2023-02-02 11:38:15'),
	('eeed0c51005c3ff8013be56444f0d932fcaeb77b2c140fee64be6f612de1c5dfedc4db3872a3afd3',4,3,'MyApp','[]',0,'2020-03-16 20:54:01','2020-03-16 20:54:01','2021-03-16 19:54:01'),
	('ef8894eb5a8f76694baeb616e4be8a2d3bed75050c2102c1bcbf54b2570809a6d2d85d8e69431194',12,3,'MyApp','[]',0,'2022-03-26 12:40:20','2022-03-26 12:40:20','2023-03-26 10:40:20'),
	('f106c7f645186c50b093bb811256b2f7f7b70343a8e48169337ed11aa25956a30f730e41835f88a2',3,3,'MyApp','[]',0,'2021-07-21 22:02:33','2021-07-21 22:02:33','2022-07-21 19:02:33'),
	('f2b40f5c8469cb06d1ae5cdc1692f3cdccacd0937ae3e6a882d23dd2bff8db0ca4b851b13d3d9979',28,3,'MyApp','[]',0,'2021-08-22 19:46:28','2021-08-22 19:46:28','2022-08-22 16:46:28'),
	('f3cbaae0184548e352ffa01ff6ea1313848920980f04ec0206481f8560245babba3bce016fbb9b0c',1,3,'MyApp','[]',0,'2021-07-21 21:04:28','2021-07-21 21:04:28','2022-07-21 18:04:28'),
	('f4a9ced95aef37ad9bd47a453a3757dc1fb859b66fc1a395f1ceb3985101a479573118685407efe2',10,3,'MyApp','[]',0,'2021-06-15 11:52:49','2021-06-15 11:52:49','2022-06-15 08:52:49'),
	('f6348cbe14d8b19bfa0ae4f253465c5b58d1c33950af3a721b60ec2913bda4ff966ef606691dd5cb',1,3,'MyApp','[]',0,'2022-01-27 15:03:33','2022-01-27 15:03:33','2023-01-27 13:03:33'),
	('f6b385e29922e93540ed896ab2e5f98842fcb8bbcb2833980f7c7ccd3ee506f45f712c3bd977dc5e',3,3,'MyApp','[]',0,'2022-01-28 14:39:26','2022-01-28 14:39:26','2023-01-28 12:39:26'),
	('f737073a6a8d6930bb2afd6ca983ec0b300dce29a60db556c26a6ab6cc038facfc5f74719da8e697',50,3,'MyApp','[]',0,'2021-09-02 13:46:53','2021-09-02 13:46:53','2022-09-02 10:46:53'),
	('f737fa30afd27555210ca578ca9726b85e2b062c245bbcac7356c5609027306b8d845b25c194146b',2,3,'MyApp','[]',0,'2021-06-09 12:43:10','2021-06-09 12:43:10','2022-06-09 09:43:10'),
	('f8588f73fb32786166aa5116ad6e1622bfd1699b9d0e1c393644f01e26e9d164852014e5281e7aa7',1,3,'MyApp','[]',0,'2021-06-09 12:24:08','2021-06-09 12:24:08','2022-06-09 09:24:08'),
	('fc21fa849d5aa54590da64294a0a45b6aea004d7b9db0696e41783cb6af9c44e364af6a3250d31d1',4,3,'MyApp','[]',0,'2021-06-10 07:20:13','2021-06-10 07:20:13','2022-06-10 04:20:13'),
	('fc9999b2a814544f2dd562a8e29027a044f4b1502178c1efce95c1a3de1e771c6c35bff46f12430b',227,3,'MyApp','[]',0,'2021-06-08 15:18:59','2021-06-08 15:18:59','2022-06-08 12:18:59'),
	('fd5f22d4c8baf44188e5e43684cb8fa016e57a568c8e3862ee1be207e69a44a6bf0689195426c87b',19,3,'MyApp','[]',0,'2021-08-12 23:36:10','2021-08-12 23:36:10','2022-08-12 20:36:10'),
	('fde8e545c9c5f4ee57d51317528e80c4d57732481996972bb257a3c6331828f720313feb9e4ae761',42,3,'MyApp','[]',0,'2021-08-31 09:42:38','2021-08-31 09:42:38','2022-08-31 06:42:38'),
	('feb1840e20c8a1478fce0b143e5e3369ea78be005aa902669eb0535cc4e8e716498462f5f679ea8a',23,3,'MyApp','[]',0,'2021-07-07 12:21:17','2021-07-07 12:21:17','2022-07-07 09:21:17'),
	('ffa54754135d8938904655a0b4e4d4b8fa146b9d56c7da7231468738e64c921fba7569be01209d00',42,3,'MyApp','[]',0,'2021-08-31 09:40:53','2021-08-31 09:40:53','2022-08-31 06:40:53');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Laravel Personal Access Client','0zknHrzp3ng4Q76vF8vTl1aITAWMCj3yD6SxMQTz','http://localhost',1,0,0,'2019-07-22 07:14:48','2019-07-22 07:14:48'),
	(2,NULL,'Laravel Password Grant Client','k3qSHkmdxirCEZYdtT4V3TtUxlBtmnIIx7asxFTZ','http://localhost',0,1,0,'2019-07-22 07:14:48','2019-07-22 07:14:48'),
	(3,NULL,'Laravel Personal Access Client','1zXOILRhXbZ822UQbe1fBj1SentJMfEBc5lSD261','http://localhost',1,0,0,'2019-07-22 07:17:07','2019-07-22 07:17:07'),
	(4,NULL,'Laravel Password Grant Client','OA6cLI8jVTjSDB6z71RzHh0b6LL5fse3KO6x5Y5u','http://localhost',0,1,0,'2019-07-22 07:17:07','2019-07-22 07:17:07');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2019-07-22 07:14:48','2019-07-22 07:14:48'),
	(2,3,'2019-07-22 07:17:07','2019-07-22 07:17:07');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы order_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `shopper_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;

INSERT INTO `order_details` (`id`, `order_id`, `shopper_id`, `product_id`, `size`, `weight`, `quantity`, `price`, `shipping`, `status`)
VALUES
	(1,2,10,29,'60/40/2 cm','4','2','1998',NULL,'Created');

/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `support_fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_subtotal` double(10,2) DEFAULT NULL,
  `shipping_total` double(10,2) DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_fee` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `support_fee`, `order_subtotal`, `shipping_total`, `total`, `transaction_id`, `transaction_fee`, `status`, `created_at`, `deleted_at`, `payment_id`)
VALUES
	(1,40,'100',3996.00,0.00,3996.00,'32472',NULL,1,'2022-11-18 14:27:45',NULL,13),
	(2,40,'100',3996.00,0.00,3996.00,'32472',NULL,1,'2022-11-18 14:29:03',NULL,14);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы page_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_texts`;

CREATE TABLE `page_texts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `page_texts` WRITE;
/*!40000 ALTER TABLE `page_texts` DISABLE KEYS */;

INSERT INTO `page_texts` (`id`, `text`, `type`)
VALUES
	(1,'If the media is not your own, please credit the owner. If you do not know the owner, please add Unknown. Should you later find out who the owner is, please add it, so that we always credit where possible.','Create Post'),
	(2,'Before you create an account, you should know that ARTfora is monitoring all posts and messages that are made, to ensure that everybody are treated with respect. If you are looking for a service where privacy is important, ARTfora might not be the place for you.\n\nYou need to be 17 years old or older to create an account.','Create User -01'),
	(3,'TROLLS, HATERS, SHAMERS AND HARASSERS WILL BE BLOCKED AND THEIR ACCOUNT WILL BE DELETED! THIS IS A PLACE FOR RESPECT, TOLERANCE AND OTHER BEAUTIFUL THINGS!\nNO DATA IS SOLD TO ANYONE.','Create User -02'),
	(4,'Welcome to ARTfora. This is a place for artists and art lovers where artists can present their work, where they can get constructive critique from other artists, and also be able to share their experience with upcoming artists.','Set Filter -01'),
	(5,'Since art is subjective, there may sometimes be content that does not suit all users. Here you can set the restrictions for what you want to be exposed for:','Set Filter -02'),
	(6,'We have sent you an email with a link. You need to click the link to confirm your email address, and you will then be redirected to the log in page, where you can log into ARTfora.\n\nIf you have not received the email, please check your spam folder, or if you need to get the link re-send, click on the button below.','Email Verification'),
	(7,'Copy the URL from the SHARE function from YouTube and paste it in here.','Embed Video'),
	(8,'What are your interests?','Set Categories');

/*!40000 ALTER TABLE `page_texts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('test@mail.com','$2y$10$iTf1rHg6VaGJ8MweBeQGpOYWoZcE1Gfa/rd9taiBin2JzFeCzpDza','2022-06-03 15:08:30'),
	('jay@icreatewebtech.com','$2y$10$AJClxXt0Xs3LhwennaLK9eB0GgPtuuikqTdrC1Zp4ML8OHi9mDEWO','2022-06-03 15:35:02');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(255) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;

INSERT INTO `payments` (`id`, `payment_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`)
VALUES
	(1,'ch_3M56FMDGW6EnqptS1HRHH2pz','contact@artfora.net',189.90,'USD','succeeded','2022-11-17 11:27:09','2022-11-17 11:27:09'),
	(2,'ch_3M56KGDGW6EnqptS1PZVv965','anant@infibs.com',189.90,'USD','succeeded','2022-11-17 11:32:13','2022-11-17 11:32:13'),
	(3,'ch_3M56NKDGW6EnqptS0o1SdD6r','anant@infibs.com',94.95,'USD','succeeded','2022-11-17 11:35:23','2022-11-17 11:35:23'),
	(4,'ch_3M56PsDGW6EnqptS0xu1XjZ7','anant@infibs.com',94.95,'USD','succeeded','2022-11-17 11:38:01','2022-11-17 11:38:01'),
	(5,'ch_3M56QLDGW6EnqptS01U5wCye','anant@infibs.com',94.95,'USD','succeeded','2022-11-17 11:38:30','2022-11-17 11:38:30'),
	(6,'ch_3M56aEDGW6EnqptS0qlgDlYG','anant@infibs.com',189.90,'USD','succeeded','2022-11-17 11:48:43','2022-11-17 11:48:43'),
	(7,'ch_3M576CDGW6EnqptS1ltQJlT4','anant@infibs.com',189.90,'USD','succeeded','2022-11-17 12:21:45','2022-11-17 12:21:45'),
	(8,'ch_3M57LvDGW6EnqptS0wcXVwrk','anant@infibs.com',189.90,'USD','succeeded','2022-11-17 12:38:00','2022-11-17 12:38:00'),
	(9,'ch_3M57awDGW6EnqptS0laTuTf1','anant@infibs.com',94.95,'USD','succeeded','2022-11-17 12:53:31','2022-11-17 12:53:31'),
	(10,'ch_3M57dZDGW6EnqptS0MwroiHA','anant@infibs.com',94.95,'USD','succeeded','2022-11-17 12:56:14','2022-11-17 12:56:14'),
	(11,'ch_3M58GEDGW6EnqptS0pdgVUGx','anant@infibs.com',189.90,'USD','succeeded','2022-11-17 13:36:11','2022-11-17 13:36:11'),
	(12,'ch_3M5VWMDGW6EnqptS0U5Ae9CJ','jay@icreatewebtech.com',1998.00,'USD','succeeded','2022-11-18 14:26:23','2022-11-18 14:26:23'),
	(13,'ch_3M5VXgDGW6EnqptS1VRawPTu','jay@icreatewebtech.com',1998.00,'USD','succeeded','2022-11-18 14:27:45','2022-11-18 14:27:45'),
	(14,'ch_3M5VYwDGW6EnqptS0efhVIfC','jay@icreatewebtech.com',1998.00,'USD','succeeded','2022-11-18 14:29:03','2022-11-18 14:29:03');

/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы permission_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_groups`;

CREATE TABLE `permission_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(50,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `slug`, `created_at`, `updated_at`, `permission_group_id`)
VALUES
	(1,'browse_admin',NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(2,'browse_database',NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(3,'browse_media',NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(4,'browse_compass',NULL,'2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(5,'browse_menus','menus','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(6,'read_menus','menus','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(7,'edit_menus','menus','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(8,'add_menus','menus','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(9,'delete_menus','menus','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(10,'browse_pages','pages','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(11,'read_pages','pages','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(12,'edit_pages','pages','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(13,'add_pages','pages','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(14,'delete_pages','pages','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(15,'browse_roles','roles','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(16,'read_roles','roles','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(17,'edit_roles','roles','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(18,'add_roles','roles','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(19,'delete_roles','roles','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(20,'browse_users','users','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(21,'read_users','users','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(22,'edit_users','users','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(23,'add_users','users','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(24,'delete_users','users','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(25,'browse_posts','posts','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(26,'read_posts','posts','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(27,'edit_posts','posts','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(28,'add_posts','posts','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(29,'delete_posts','posts','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(30,'browse_categories','categories','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(31,'read_categories','categories','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(32,'edit_categories','categories','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(33,'add_categories','categories','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(34,'delete_categories','categories','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(35,'browse_settings','settings','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(36,'read_settings','settings','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(37,'edit_settings','settings','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(38,'add_settings','settings','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(39,'delete_settings','settings','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(40,'browse_form-designer','form-designer','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(41,'read_form-designer','form-designer','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(42,'edit_form-designer','form-designer','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(43,'add_form-designer','form-designer','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(44,'delete_form-designer','form-designer','2022-11-16 14:00:45','2022-11-16 14:00:45',NULL),
	(45,'browse_orders','orders','2022-11-16 14:15:50','2022-11-16 14:15:50',NULL),
	(46,'read_orders','orders','2022-11-16 14:15:50','2022-11-16 14:15:50',NULL),
	(47,'edit_orders','orders','2022-11-16 14:15:50','2022-11-16 14:15:50',NULL),
	(48,'add_orders','orders','2022-11-16 14:15:50','2022-11-16 14:15:50',NULL),
	(49,'delete_orders','orders','2022-11-16 14:15:50','2022-11-16 14:15:50',NULL),
	(50,'browse_payments','payments','2022-11-16 14:19:06','2022-11-16 14:19:06',NULL),
	(51,'read_payments','payments','2022-11-16 14:19:06','2022-11-16 14:19:06',NULL),
	(52,'edit_payments','payments','2022-11-16 14:19:06','2022-11-16 14:19:06',NULL),
	(53,'add_payments','payments','2022-11-16 14:19:06','2022-11-16 14:19:06',NULL),
	(54,'delete_payments','payments','2022-11-16 14:19:06','2022-11-16 14:19:06',NULL);

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `parent_user_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumb_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tag` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `filter_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `is_flipped` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rotated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `parent_id`, `parent_user_id`, `user_id`, `image`, `image_thumb`, `video`, `video_thumbnail`, `video_thumb_title`, `owner_name`, `decription`, `tag`, `filter_id`, `created_at`, `updated_at`, `deleted_at`, `is_flipped`, `is_rotated`, `type`)
VALUES
	(2,0,0,5,NULL,NULL,NULL,NULL,NULL,'Atman Comic','Testing a bunch of brushes but ended up only using two.','#digitalart,#clipstudiopaint,#wacom',1,'2022-01-28 23:07:37','2022-01-28 23:07:37',NULL,NULL,NULL,'public'),
	(6,0,0,3,NULL,NULL,NULL,NULL,NULL,NULL,'Skamlingsbanken, Denmark','#skamlingsbanken,#denmark',1,'2022-01-29 11:09:56','2022-01-29 11:09:56',NULL,NULL,NULL,'public'),
	(7,0,0,5,NULL,NULL,NULL,NULL,NULL,'Discoholics Anonymous','17 FREE TRACKS FOR DOWNLOAD\n\nhttps://www.discoholicsanonymous.com/2021/12/12/free-download-discoholics-anonymous-2\n\nCheck out \"BLOG OF THE YEAR\" www.discoholicsanonymous.com for more information.','#compilation,#disco,#linkinbio,#freedownload,#discoanon,#bandcamp',1,'2022-01-29 13:03:47','2022-01-29 13:03:47',NULL,NULL,NULL,'public'),
	(8,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,'Dead flowers','#deadflowers',1,'2022-01-29 15:36:25','2022-01-29 15:36:25',NULL,NULL,NULL,'public'),
	(9,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,'Lost place','#lostplaces',1,'2022-01-29 15:37:21','2022-01-29 15:37:21',NULL,NULL,NULL,'public'),
	(10,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,'Lost place','#lostplaces',1,'2022-01-29 15:39:39','2022-01-29 15:39:39',NULL,NULL,NULL,'public'),
	(11,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,'Lost place','#beelitz',1,'2022-01-29 15:40:54','2022-01-29 15:40:54',NULL,NULL,NULL,'public'),
	(12,0,0,5,NULL,NULL,NULL,NULL,NULL,'Atman Comic','Drawing exercise','#digitalart,#clipstudiopaint,#wacom',1,'2022-01-30 22:49:05','2022-01-30 22:49:05',NULL,NULL,NULL,'public'),
	(13,0,0,10,NULL,NULL,NULL,NULL,NULL,'Discoholics Anonymous Recordings','Buy: https://discoanon.bandcamp.com/album/birthday-suit-incl-remixes','#disco,#shopping,#discoanon',1,'2022-01-31 07:12:51','2022-01-31 07:13:53',NULL,NULL,NULL,'public'),
	(14,0,0,10,NULL,NULL,NULL,NULL,NULL,'Discoholics Anonymous Recordings','https://discoanon.bandcamp.com/album/discoholics-anonymous-2','#disco,#reedit,#discoanon',1,'2022-01-31 07:41:38','2022-01-31 07:41:38',NULL,NULL,NULL,'public'),
	(15,0,0,3,NULL,NULL,NULL,NULL,NULL,'Kenneth Korfitz Tranekjer','Dummy shot practicing with fixed lighting and smoke effect.','#canon,#photography,#lighting',1,'2022-01-31 11:41:29','2022-01-31 11:41:29',NULL,NULL,NULL,'public'),
	(17,0,0,5,NULL,NULL,NULL,NULL,NULL,'Unknown','Unfinished Scarlett Johansson painting in Clip Studio Paint. I don’t know where it is from but is was a cool photo ?','#clipstudiopaint,#digitalart',1,'2022-01-31 21:05:09','2022-01-31 21:05:09',NULL,NULL,NULL,'public'),
	(19,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#anatomie',1,'2022-01-31 23:11:43','2022-01-31 23:11:43',NULL,NULL,NULL,'public'),
	(20,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#dad',1,'2022-01-31 23:17:43','2022-01-31 23:17:43',NULL,NULL,NULL,'public'),
	(21,0,0,8,NULL,NULL,NULL,NULL,NULL,'ARTfora','????? ??? ℑ ?????? ???? ⚰️?','#witch,#graveyard,#artfora',1,'2022-01-31 23:24:17','2022-01-31 23:24:17',NULL,NULL,NULL,'public'),
	(23,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#freeyourbody,#firstletters',1,'2022-02-03 02:14:21','2022-02-03 02:14:21',NULL,NULL,NULL,'public'),
	(24,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#alterstmatthäusfriedhof,#funeralart',1,'2022-02-03 21:25:43','2022-02-03 21:25:43',NULL,NULL,NULL,'public'),
	(25,0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#alterstmatthäusfriedhof,#cemetery',1,'2022-02-03 21:28:47','2022-02-03 21:28:47',NULL,NULL,NULL,'public'),
	(26,0,0,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'#discoanon,#beyerdynamicdt990pro250ohm,#krkrokit,#rødemics,#studio,#bedroomdj,#podcaster',1,'2022-02-04 22:31:05','2022-02-04 22:31:05',NULL,NULL,NULL,'public'),
	(27,0,0,10,NULL,NULL,NULL,NULL,NULL,NULL,'Friday','#fridayfeels',1,'2022-02-11 07:27:57','2022-02-11 07:27:57',NULL,NULL,NULL,'public'),
	(30,0,0,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-03-26 12:46:50','2022-03-26 19:08:54','2022-03-26 17:08:54',NULL,NULL,'public'),
	(31,0,0,8,NULL,NULL,NULL,NULL,NULL,'Sophie Schøntod','Nordufer Wedding','#blackart',1,'2022-03-27 15:33:17','2022-03-27 15:33:17',NULL,NULL,NULL,'public'),
	(47,0,0,13,NULL,NULL,NULL,NULL,NULL,'Merisio','Oil on canvas','#oilpainting,#originalart',1,'2022-04-02 15:44:37','2022-04-02 15:44:37',NULL,NULL,NULL,'public'),
	(49,0,0,5,NULL,NULL,NULL,'https://i.ytimg.com/vi/tQwVKr8rCYw/mqdefault.jpg',NULL,'Pfh',NULL,'#video',1,'2022-04-06 20:41:28','2022-04-06 20:41:28',NULL,NULL,NULL,'public'),
	(50,0,0,8,NULL,NULL,NULL,NULL,NULL,'Sophie Schøntod','✞❥❦㋛','#darkart',1,'2022-04-07 03:22:54','2022-04-07 03:22:54',NULL,NULL,NULL,'public'),
	(51,0,0,8,NULL,NULL,NULL,NULL,NULL,'Sophie Schøntod','???????? ??? ??????','#cemetery,#art,#darkart,#blackandwhitephotopraphy',1,'2022-04-09 02:04:22','2022-04-09 02:04:22',NULL,NULL,NULL,'public'),
	(53,0,0,8,NULL,NULL,NULL,NULL,NULL,'Sophie Schøntod','#knupserkissen','#kittykitty',1,'2022-04-14 22:27:29','2022-04-14 22:27:29',NULL,NULL,NULL,'public');

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_clicks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_clicks`;

CREATE TABLE `post_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_clicks` WRITE;
/*!40000 ALTER TABLE `post_clicks` DISABLE KEYS */;

INSERT INTO `post_clicks` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `post_clicks` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_comment`;

CREATE TABLE `post_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_comment` WRITE;
/*!40000 ALTER TABLE `post_comment` DISABLE KEYS */;

INSERT INTO `post_comment` (`id`, `user_id`, `post_id`, `comment_text`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,6,'Har I været der i dag?',NULL,'2022-01-29 12:51:40','2022-01-29 10:51:40',NULL),
	(2,3,6,'Sidste søndag ??',NULL,'2022-01-30 23:43:03','2022-01-30 21:43:03',NULL),
	(3,5,15,'The light is so cool. Well done. Next time with live model ???',NULL,'2022-01-31 21:06:57','2022-01-31 19:06:57',NULL),
	(4,4,21,'???',NULL,'2022-01-31 23:25:31','2022-01-31 21:25:31',NULL),
	(5,4,20,'Clearly remember ”Trucker“ from my first mixtape. About 400 years ago',NULL,'2022-01-31 23:30:07','2022-01-31 21:30:07',NULL),
	(6,12,17,'Nice',NULL,'2022-02-02 13:44:20','2022-02-02 11:44:20','2022-03-26 17:08:54'),
	(7,26,17,'Just a comment',NULL,'2022-04-29 12:04:29','2022-04-29 09:04:29',NULL),
	(8,5,31,'Nice atmosphere ?❤️',NULL,'2022-04-29 12:06:24','2022-04-29 09:06:24',NULL),
	(9,19,17,'test',NULL,'2022-05-07 13:30:28','2022-05-07 10:30:28',NULL),
	(10,19,49,'TEST!!',NULL,'2022-05-09 20:24:16','2022-05-12 08:58:52','2022-05-12 08:58:52'),
	(11,19,49,'TEST!!',NULL,'2022-05-12 12:45:00','2022-05-12 09:45:10','2022-05-12 09:45:10');

/*!40000 ALTER TABLE `post_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_detail`;

CREATE TABLE `post_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_tag` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_detail` WRITE;
/*!40000 ALTER TABLE `post_detail` DISABLE KEYS */;

INSERT INTO `post_detail` (`id`, `post_id`, `title`, `description`, `detail_tag`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,8,'Artist','',NULL,'2022-01-29 15:36:26','2022-01-29 13:36:26',NULL);

/*!40000 ALTER TABLE `post_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_files`;

CREATE TABLE `post_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_type` int NOT NULL,
  `file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resized_file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int NOT NULL,
  `is_flipped` int NOT NULL,
  `is_rotated` int NOT NULL,
  `thumb` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `file_width` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_height` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_users` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_files` WRITE;
/*!40000 ALTER TABLE `post_files` DISABLE KEYS */;

INSERT INTO `post_files` (`id`, `file_type`, `file_name`, `resized_file_name`, `video_url`, `post_id`, `is_flipped`, `is_rotated`, `thumb`, `priority`, `file_width`, `file_height`, `x`, `y`, `tag_users`, `user_ids`)
VALUES
	(2,1,'164340405719477342630.jpg','','',2,0,0,'164340405719477342630.jpg',0,'960','960','[]','[]','[]','[]'),
	(6,1,'16434473965643992250.jpg','','',6,0,0,'16434473965643992250.jpg',0,'3025','3024','[]','[]','[]','[]'),
	(7,1,'164345422715952485520.jpg','','',7,0,0,'164345422715952485520.jpg',0,'960','960','[]','[]','[]','[]'),
	(8,1,'164346338510681648730.jpg','','',8,0,0,'164346338510681648730.jpg',0,'3024','3025','[]','[]','[]','[]'),
	(9,1,'16434634413209916620.jpg','','',9,0,0,'16434634413209916620.jpg',0,'720','720','[]','[]','[]','[]'),
	(10,1,'16434635798255355670.jpg','','',10,0,0,'16434635798255355670.jpg',0,'720','721','[]','[]','[]','[]'),
	(11,1,'164346365418099976360.jpg','','',11,0,0,'164346365418099976360.jpg',0,'720','721','[]','[]','[]','[]'),
	(12,1,'16435757458696769320.jpg','','',12,0,0,'16435757458696769320.jpg',0,'1080','1080','[]','[]','[]','[]'),
	(13,2,'16436059710video[0].mp4','','',13,0,0,'16436059710thumbnail[0].jpg',0,'1080','1082','[]','[]','[]','[]'),
	(14,2,'16436076980video[0].mp4','','',14,0,0,'16436076980thumbnail[0].jpg',0,'1920','1080','[]','[]','[]','[]'),
	(15,1,'16436220897917421910.jpg','','',15,0,0,'16436220897917421910.jpg',0,'3464','5202','[]','[]','[]','[]'),
	(17,1,'164365590910421467560.jpg','','',17,0,0,'164365590910421467560.jpg',0,'960','960','[]','[]','[]','[]'),
	(19,1,'16436635033159598110.jpg','','',19,0,0,'16436635033159598110.jpg',0,'678','678','[]','[]','[]','[]'),
	(20,1,'16436638638727973240.jpg','','',20,0,0,'16436638638727973240.jpg',0,'1080','1081','[]','[]','[]','[]'),
	(21,1,'164366425718295982990.jpg','','',21,0,0,'164366425718295982990.jpg',0,'4160','6240','[]','[]','[]','[]'),
	(23,1,'164384726111069292860.jpg','','',23,0,0,'164384726111069292860.jpg',0,'1080','1080','[]','[]','[]','[]'),
	(24,1,'16439163436843295250.jpg','','',24,0,0,'16439163436843295250.jpg',0,'3024','3780','[]','[]','[]','[]'),
	(25,1,'16439165276102301520.jpg','','',25,0,0,'16439165276102301520.jpg',0,'3024','4032','[]','[]','[]','[]'),
	(26,1,'164400666513303446080.jpg','','',26,0,0,'164400666513303446080.jpg',0,'769','768','[]','[]','[]','[]'),
	(27,2,'16445572770video[0].mp4','','',27,0,0,'16445572770thumbnail[0].jpg',0,'460','460','[]','[]','[]','[]'),
	(30,1,'164829161012886261320.jpg','','',30,0,0,'164829161012886261320.jpg',0,'3024','3024','[]','[]','[]','[]'),
	(31,1,'16483843979305378090.jpg','16483843982693960030.jpg','',31,0,0,'16483843979305378090.jpg',0,'720','720','[]','[]','[]','[]'),
	(38,1,'1648903477668809060.jpg','164890347719523677040.jpg','',47,0,0,'1648903477668809060.jpg',0,'444','598','[]','[]','[]','[]'),
	(40,3,'','','https://youtu.be/tQwVKr8rCYw',49,0,0,'',0,'0','0','[]','[]','[]','[]'),
	(41,1,'164929097420836850070.jpg','16492909747157093610.jpg','',50,0,0,'164929097420836850070.jpg',0,'695','695','[]','[]','[]','[]'),
	(42,1,'164945906210029168920.jpg','164945906315315757770.jpg','',51,0,0,'164945906210029168920.jpg',0,'3024','3025','[]','[]','[]','[]'),
	(43,1,'16494590631201045821.jpg','164945906414026439611.jpg','',51,0,0,'16494590631201045821.jpg',1,'3024','3024','[]','[]','[]','[]'),
	(45,1,'164996444920491905110.jpg','16499644502807935870.jpg','',53,0,0,'164996444920491905110.jpg',0,'3024','3024','[]','[]','[]','[]');

/*!40000 ALTER TABLE `post_files` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_likes`;

CREATE TABLE `post_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;

INSERT INTO `post_likes` (`id`, `user_id`, `post_id`, `type`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(15,3,2,'click','2022-01-29 11:06:54','2022-01-29 09:06:54',NULL),
	(16,3,2,'like','2022-01-29 11:06:58','2022-01-29 09:06:58',NULL),
	(17,4,6,'like','2022-01-29 12:51:46','2022-01-29 10:51:46',NULL),
	(18,5,6,'like','2022-01-29 12:56:16','2022-01-29 10:56:16',NULL),
	(19,5,7,'click','2022-01-29 13:03:53','2022-01-29 11:03:53',NULL),
	(20,5,2,'click','2022-01-29 13:07:57','2022-01-29 11:07:57',NULL),
	(21,5,11,'like','2022-01-29 16:37:03','2022-01-29 14:37:03',NULL),
	(22,5,10,'like','2022-01-29 16:37:04','2022-01-29 14:37:04',NULL),
	(23,5,9,'like','2022-01-29 16:37:06','2022-01-29 14:37:06',NULL),
	(24,5,8,'like','2022-01-29 16:37:08','2022-01-29 14:37:08',NULL),
	(25,5,7,'like','2022-01-29 16:37:15','2022-01-29 14:37:15',NULL),
	(26,5,2,'like','2022-01-29 16:37:18','2022-01-29 14:37:18',NULL),
	(27,4,11,'like','2022-01-29 16:38:05','2022-01-29 14:38:05',NULL),
	(28,4,10,'like','2022-01-29 16:38:06','2022-01-29 14:38:06',NULL),
	(29,4,9,'like','2022-01-29 16:38:07','2022-01-29 14:38:07',NULL),
	(30,4,8,'like','2022-01-29 16:38:09','2022-01-29 14:38:09',NULL),
	(31,4,7,'click','2022-01-29 18:57:37','2022-01-29 16:57:37',NULL),
	(32,4,7,'click','2022-01-29 18:58:10','2022-01-29 16:58:10',NULL),
	(33,9,7,'like','2022-01-30 21:22:42','2022-01-30 19:22:42',NULL),
	(34,5,12,'click','2022-01-30 22:49:40','2022-01-30 20:49:40',NULL),
	(35,3,7,'like','2022-01-30 23:41:52','2022-01-30 21:41:52',NULL),
	(36,3,7,'click','2022-01-30 23:41:58','2022-01-30 21:41:58',NULL),
	(37,3,12,'like','2022-01-30 23:42:18','2022-01-30 21:42:18',NULL),
	(38,8,6,'like','2022-01-31 01:25:03','2022-01-30 23:25:03',NULL),
	(39,3,6,'like','2022-01-31 06:56:25','2022-01-31 04:56:25','2022-01-31 04:56:25'),
	(40,3,11,'like','2022-01-31 06:56:53','2022-01-31 04:56:53',NULL),
	(41,3,10,'like','2022-01-31 06:56:59','2022-01-31 04:56:59',NULL),
	(42,3,9,'like','2022-01-31 06:57:07','2022-01-31 04:57:07',NULL),
	(43,3,8,'like','2022-01-31 06:57:14','2022-01-31 04:57:14',NULL),
	(53,4,15,'like','2022-01-31 15:06:38','2022-01-31 13:06:38',NULL),
	(54,4,15,'click','2022-01-31 15:06:48','2022-01-31 13:06:48',NULL),
	(55,5,15,'like','2022-01-31 21:05:27','2022-01-31 19:05:27',NULL),
	(56,5,12,'like','2022-01-31 21:07:06','2022-01-31 19:07:06',NULL),
	(57,5,17,'click','2022-01-31 21:08:14','2022-01-31 19:08:14',NULL),
	(59,8,17,'like','2022-01-31 23:04:27','2022-01-31 21:04:27',NULL),
	(60,4,19,'like','2022-01-31 23:14:58','2022-01-31 21:14:58',NULL),
	(61,4,17,'like','2022-01-31 23:15:13','2022-01-31 21:15:13',NULL),
	(62,4,19,'click','2022-01-31 23:15:28','2022-01-31 21:15:28',NULL),
	(63,8,15,'like','2022-01-31 23:19:15','2022-01-31 21:19:15',NULL),
	(64,4,21,'like','2022-01-31 23:25:11','2022-01-31 21:25:11',NULL),
	(65,4,21,'click','2022-01-31 23:25:55','2022-01-31 21:25:55',NULL),
	(66,4,20,'like','2022-01-31 23:26:20','2022-01-31 21:26:20',NULL),
	(67,4,13,'like','2022-01-31 23:55:02','2022-01-31 21:55:02',NULL),
	(68,4,14,'like','2022-02-01 00:15:40','2022-01-31 22:15:40',NULL),
	(69,3,21,'like','2022-02-01 10:12:37','2022-02-01 08:12:37',NULL),
	(70,3,17,'like','2022-02-01 10:13:04','2022-02-01 08:13:04',NULL),
	(71,12,17,'like','2022-03-26 19:08:54','2022-02-02 11:44:23','2022-03-26 17:08:54'),
	(72,10,21,'like','2022-02-03 10:25:01','2022-02-03 08:25:01',NULL),
	(73,2,5,'click','2022-02-03 12:06:43','2022-02-03 10:06:43',NULL),
	(74,2,6,'click','2022-02-03 12:15:48','2022-02-03 10:15:48',NULL),
	(75,2,6,'click','2022-02-03 12:29:17','2022-02-03 10:29:17',NULL),
	(76,2,6,'click','2022-02-03 12:33:18','2022-02-03 10:33:18',NULL),
	(77,2,25,'like','2022-02-03 22:18:59','2022-02-03 20:18:59',NULL),
	(78,2,24,'like','2022-02-03 22:19:06','2022-02-03 20:19:06',NULL),
	(79,2,23,'like','2022-02-03 22:19:18','2022-02-03 20:19:18',NULL),
	(80,4,25,'like','2022-02-03 22:20:21','2022-02-03 20:20:21',NULL),
	(81,4,24,'like','2022-02-03 22:20:23','2022-02-03 20:20:23',NULL),
	(82,4,23,'like','2022-02-03 22:20:25','2022-02-03 20:20:25',NULL),
	(83,10,25,'like','2022-02-07 18:34:35','2022-02-07 16:34:35',NULL),
	(84,10,24,'like','2022-02-07 18:34:37','2022-02-07 16:34:37',NULL),
	(85,10,27,'click','2022-02-11 07:28:03','2022-02-11 05:28:03',NULL),
	(86,4,27,'like','2022-02-11 08:33:54','2022-02-11 06:33:54',NULL),
	(87,4,26,'like','2022-02-11 08:34:11','2022-02-11 06:34:11',NULL),
	(88,2,4,'click','2022-02-19 11:23:17','2022-02-19 09:23:17',NULL),
	(90,13,7,'click','2022-03-27 14:20:18','2022-03-27 11:20:18',NULL),
	(91,4,13,'click','2022-03-27 14:52:58','2022-03-27 11:52:58',NULL),
	(92,8,25,'click','2022-03-27 15:29:36','2022-03-27 12:29:36',NULL),
	(93,13,7,'click','2022-03-28 10:33:27','2022-03-28 07:33:27',NULL),
	(94,13,7,'view','2022-03-28 10:33:27','2022-03-28 07:33:27',NULL),
	(95,13,7,'click','2022-03-28 10:33:40','2022-03-28 07:33:40',NULL),
	(96,13,7,'click','2022-03-28 11:57:25','2022-03-28 08:57:25',NULL),
	(105,8,25,'view','2022-04-01 03:06:41','2022-04-01 00:06:41',NULL),
	(108,6,43,'like','2022-04-04 12:19:07','2022-04-02 05:24:55','2022-04-04 09:19:07'),
	(109,6,43,'click','2022-04-04 12:19:07','2022-04-02 05:24:59','2022-04-04 09:19:07'),
	(110,6,43,'click','2022-04-04 12:19:07','2022-04-02 05:25:05','2022-04-04 09:19:07'),
	(112,8,43,'click','2022-04-02 16:32:09','2022-04-02 13:32:09',NULL),
	(113,8,43,'click','2022-04-02 16:32:13','2022-04-02 13:32:13',NULL),
	(114,13,7,'like','2022-04-02 18:12:49','2022-04-02 15:12:49',NULL),
	(115,13,7,'click','2022-04-02 18:36:12','2022-04-02 15:36:12',NULL),
	(116,13,17,'click','2022-04-02 18:36:43','2022-04-02 15:36:43',NULL),
	(117,13,12,'click','2022-04-02 18:37:06','2022-04-02 15:37:06',NULL),
	(118,8,31,'click','2022-04-05 14:41:10','2022-04-05 11:41:10',NULL),
	(119,4,27,'click','2022-04-05 21:39:45','2022-04-05 18:39:45',NULL),
	(120,4,27,'click','2022-04-06 12:49:56','2022-04-06 09:49:56',NULL),
	(122,18,27,'click','2022-04-06 13:36:27','2022-04-06 10:36:27',NULL),
	(123,18,27,'click','2022-04-06 13:43:48','2022-04-06 10:43:48',NULL),
	(124,5,49,'click','2022-04-06 20:42:02','2022-04-06 17:42:02',NULL),
	(125,5,49,'click','2022-04-06 20:42:06','2022-04-06 17:42:06',NULL),
	(126,5,49,'click','2022-04-06 20:42:33','2022-04-06 17:42:33',NULL),
	(127,13,19,'click','2022-04-06 21:17:49','2022-04-06 18:17:49',NULL),
	(128,4,49,'click','2022-04-08 21:40:16','2022-04-08 18:40:16',NULL),
	(129,5,51,'click','2022-04-13 13:28:26','2022-04-13 10:28:26',NULL),
	(130,10,51,'like','2022-04-14 07:46:08','2022-04-14 04:46:08',NULL),
	(131,10,50,'like','2022-04-14 07:46:13','2022-04-14 04:46:13',NULL),
	(132,10,31,'like','2022-04-14 07:46:15','2022-04-14 04:46:15',NULL),
	(133,10,31,'like','2022-04-14 07:46:19','2022-04-14 04:46:19',NULL),
	(134,5,27,'click','2022-04-14 14:32:22','2022-04-14 11:32:22',NULL),
	(135,5,27,'click','2022-04-14 14:33:42','2022-04-14 11:33:42',NULL),
	(136,5,27,'click','2022-04-14 15:02:44','2022-04-14 12:02:44',NULL),
	(137,19,31,'click','2022-04-14 20:08:31','2022-04-14 17:08:31',NULL),
	(138,19,31,'click','2022-04-14 20:16:23','2022-04-14 17:16:23',NULL),
	(139,19,31,'click','2022-04-14 20:20:00','2022-04-14 17:20:00',NULL),
	(140,19,31,'click','2022-04-14 20:26:23','2022-04-14 17:26:23',NULL),
	(141,19,31,'click','2022-04-14 20:33:03','2022-04-14 17:33:03',NULL),
	(142,5,27,'click','2022-04-15 15:16:48','2022-04-15 12:16:48',NULL),
	(143,5,27,'click','2022-04-15 15:17:05','2022-04-15 12:17:05',NULL),
	(144,5,53,'like','2022-04-15 20:33:12','2022-04-15 17:33:12',NULL),
	(145,21,32,'click','2022-04-16 21:51:39','2022-04-16 18:51:39',NULL),
	(146,21,31,'click','2022-04-16 21:51:45','2022-04-16 18:51:45',NULL),
	(147,21,29,'click','2022-04-16 21:51:50','2022-04-16 18:51:50',NULL),
	(154,26,2,'like','2022-04-29 11:38:01','2022-04-29 08:38:01','2022-04-29 08:38:01'),
	(155,26,49,'click','2022-04-29 11:54:58','2022-04-29 08:54:58',NULL),
	(156,26,17,'click','2022-04-29 12:03:37','2022-04-29 09:03:37',NULL),
	(157,26,17,'click','2022-04-29 12:03:56','2022-04-29 09:03:56',NULL),
	(158,26,17,'like','2022-04-29 12:04:00','2022-04-29 09:04:00',NULL),
	(159,5,31,'click','2022-04-29 13:26:17','2022-04-29 10:26:17',NULL),
	(160,2,51,'click','2022-04-29 20:41:55','2022-04-29 17:41:55',NULL),
	(161,3,53,'click','2022-04-30 07:02:21','2022-04-30 04:02:21',NULL),
	(162,3,53,'click','2022-04-30 07:10:38','2022-04-30 04:10:38',NULL),
	(163,2,63,'click','2022-05-04 22:43:29','2022-05-04 19:43:29',NULL),
	(164,2,61,'click','2022-05-04 22:45:36','2022-05-04 19:45:36',NULL),
	(165,2,63,'click','2022-05-04 22:46:53','2022-05-04 19:46:53',NULL),
	(166,19,31,'click','2022-06-07 11:03:41','2022-06-07 08:03:41',NULL);

/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_saves
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_saves`;

CREATE TABLE `post_saves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_saves` WRITE;
/*!40000 ALTER TABLE `post_saves` DISABLE KEYS */;

INSERT INTO `post_saves` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `post_saves` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_shares
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_shares`;

CREATE TABLE `post_shares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_shares` WRITE;
/*!40000 ALTER TABLE `post_shares` DISABLE KEYS */;

INSERT INTO `post_shares` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `post_shares` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы post_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tags`;

CREATE TABLE `post_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы product_approve_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_approve_codes`;

CREATE TABLE `product_approve_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shop_product_id` bigint unsigned NOT NULL,
  `approve_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы product_ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_ratings`;

CREATE TABLE `product_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_rating` double(10,2) DEFAULT NULL,
  `product_review` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_rating` double(10,2) DEFAULT NULL,
  `delivery_review` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы report_commons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `report_commons`;

CREATE TABLE `report_commons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `common_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_commons_user_id_foreign` (`user_id`),
  CONSTRAINT `report_commons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Адміністратор','2022-11-16 14:00:45','2022-11-16 14:00:45'),
	(2,'user','Користувач','2022-11-16 14:00:45','2022-11-16 14:00:45');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы saved_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `saved_posts`;

CREATE TABLE `saved_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `object_type` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `saved_posts` WRITE;
/*!40000 ALTER TABLE `saved_posts` DISABLE KEYS */;

INSERT INTO `saved_posts` (`id`, `user_id`, `post_id`, `object_type`, `created_at`)
VALUES
	(1,8,43,1,'2022-04-02 16:43:47'),
	(2,26,17,1,'2022-04-29 12:04:55');

/*!40000 ALTER TABLE `saved_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы seller_ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seller_ratings`;

CREATE TABLE `seller_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `seller_rating` double(10,2) DEFAULT NULL,
  `seller_review` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



# Дамп таблицы settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Admin Panel','','text',1,'Admin'),
	(7,'admin.description','Admin Panel Description','Welcome to Admin Panel. This is a multifunctional Admin Panel for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы share_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `share_posts`;

CREATE TABLE `share_posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `feed_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `share_posts` WRITE;
/*!40000 ALTER TABLE `share_posts` DISABLE KEYS */;

INSERT INTO `share_posts` (`id`, `user_id`, `feed_type`, `feed_id`, `created_at`, `updated_at`)
VALUES
	(1,4,'1',31,'2022-03-27 23:04:20','2022-03-27 23:04:20'),
	(2,1,'0',6,'2022-04-02 18:05:08','2022-04-02 18:05:08'),
	(9,8,'1',31,'2022-04-05 14:23:04','2022-04-05 14:23:04'),
	(10,16,'1',31,'2022-04-05 14:45:17','2022-04-05 14:45:17'),
	(13,5,'0',3,'2022-04-08 00:24:57','2022-04-08 00:24:57');

/*!40000 ALTER TABLE `share_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_clicks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_clicks`;

CREATE TABLE `shop_product_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_clicks` WRITE;
/*!40000 ALTER TABLE `shop_product_clicks` DISABLE KEYS */;

INSERT INTO `shop_product_clicks` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `shop_product_clicks` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_comments`;

CREATE TABLE `shop_product_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_comments` WRITE;
/*!40000 ALTER TABLE `shop_product_comments` DISABLE KEYS */;

INSERT INTO `shop_product_comments` (`id`, `user_id`, `post_id`, `comment_text`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,6,'Har I været der i dag?',NULL,'2022-01-29 12:51:40','2022-01-29 10:51:40',NULL),
	(2,3,6,'Sidste søndag 🙌🏻',NULL,'2022-01-30 23:43:03','2022-01-30 21:43:03',NULL),
	(3,5,15,'The light is so cool. Well done. Next time with live model 👍🔥😎',NULL,'2022-01-31 21:06:57','2022-01-31 19:06:57',NULL),
	(4,4,21,'😄🔥👍',NULL,'2022-01-31 23:25:31','2022-01-31 21:25:31',NULL),
	(5,4,20,'Clearly remember ”Trucker“ from my first mixtape. About 400 years ago',NULL,'2022-01-31 23:30:07','2022-01-31 21:30:07',NULL),
	(6,12,17,'Nice',NULL,'2022-02-02 13:44:20','2022-02-02 11:44:20','2022-03-26 17:08:54'),
	(7,26,17,'Just a comment',NULL,'2022-04-29 12:04:29','2022-04-29 09:04:29',NULL),
	(8,5,31,'Nice atmosphere 👍❤️😍',NULL,'2022-04-29 12:06:24','2022-05-26 19:17:17',NULL),
	(9,8,53,'Test',NULL,'2022-05-07 10:58:13','2022-05-07 07:58:13',NULL);

/*!40000 ALTER TABLE `shop_product_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_details`;

CREATE TABLE `shop_product_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `shop_product_details` WRITE;
/*!40000 ALTER TABLE `shop_product_details` DISABLE KEYS */;

INSERT INTO `shop_product_details` (`id`, `user_id`, `shop_profile_id`, `shop_product_id`, `title`, `value`)
VALUES
	(4,2,5,38,'Artist','Einar Lúdvík Ólafsson'),
	(5,2,5,39,'Artist','Sven Pels'),
	(15,2,5,40,'Artist','Wiwi'),
	(18,2,5,50,'Artist','Chikitin'),
	(20,2,5,51,'Artist','Moarania'),
	(21,2,5,52,'Artist','Oana'),
	(22,2,5,53,'Artist','Fonseca Martins'),
	(23,2,5,54,'Artist','Carmo Almeida'),
	(24,2,5,55,'Artist','Karina M.'),
	(34,2,5,56,'Artist','Fonseca Martins'),
	(37,2,5,62,'Year','2021'),
	(39,2,5,61,'Year','2022');

/*!40000 ALTER TABLE `shop_product_details` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_files`;

CREATE TABLE `shop_product_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resized_file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` int DEFAULT NULL COMMENT '0:image , 1:vedio',
  `thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_flipped` int NOT NULL,
  `is_rotated` int NOT NULL,
  `file_width` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_height` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_status` tinyint(1) DEFAULT NULL COMMENT '0: Not Approved ,1: Approved ',
  `file_index` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `shop_product_files` WRITE;
/*!40000 ALTER TABLE `shop_product_files` DISABLE KEYS */;

INSERT INTO `shop_product_files` (`id`, `user_id`, `shop_profile_id`, `shop_product_id`, `file_name`, `resized_file_name`, `file_type`, `thumb`, `is_flipped`, `is_rotated`, `file_width`, `file_height`, `file_status`, `file_index`, `created_at`, `updated_at`)
VALUES
	(1,8,1,1,'1643586402522666873.jpg','',0,'1643586402522666873.jpg',0,0,'1440','1440',0,0,'2022-01-31 01:46:42','2022-01-31 01:46:42'),
	(8,2,5,6,'16438832301637355713.jpg','',0,'16438832301637355713.jpg',0,0,'800','800',0,0,'2022-02-03 12:13:50','2022-02-03 12:13:50'),
	(9,2,5,6,'1643883230699910148.jpg','',0,'1643883230699910148.jpg',0,0,'988','700',0,0,'2022-02-03 12:13:50','2022-02-03 12:13:50'),
	(10,2,5,6,'16438832301984456169.jpg','',0,'16438832301984456169.jpg',0,0,'988','700',0,0,'2022-02-03 12:13:50','2022-02-03 12:13:50'),
	(11,13,6,7,'16483054451639233903.jpg','1648305445784205577.jpg',0,'16483054451639233903.jpg',0,0,'2464','3536',0,1,'2022-03-26 16:37:26','2022-03-26 20:05:07'),
	(17,13,6,19,'16491592212071727342.jpg','16491592212060192915.jpg',0,'16491592212071727342.jpg',0,0,'444','598',0,1,'2022-04-05 14:47:01','2022-04-05 15:03:59'),
	(19,2,5,21,'16494169561249934445.jpg','16494169561198327536.jpg',0,'16494169561249934445.jpg',0,0,'1080','1506',0,0,'2022-04-08 14:22:36','2022-04-08 14:22:36'),
	(20,2,5,22,'16494174661981830094.jpg','1649417466331363496.jpg',0,'16494174661981830094.jpg',0,0,'952','1208',0,0,'2022-04-08 14:31:06','2022-04-08 14:31:06'),
	(21,2,5,23,'16494277951900225363.jpg','16494277951045556895.jpg',0,'16494277951900225363.jpg',0,0,'900','900',0,1,'2022-04-08 17:23:15','2022-04-21 15:03:12'),
	(23,5,9,25,'16498813332031347008.jpg','16498813332083328743.jpg',0,'16498813332031347008.jpg',0,0,'960','960',0,0,'2022-04-13 23:22:13','2022-04-13 23:22:13'),
	(25,5,9,27,'16499248561014377946.jpg','1649924856410821211.jpg',0,'16499248561014377946.jpg',0,0,'3508','4960',0,1,'2022-04-14 11:27:38','2022-04-14 14:30:57'),
	(27,21,10,29,'1650010150216267575.jpg','16500101501129783450.jpg',0,'1650010150216267575.jpg',0,0,'2340','3508',0,0,'2022-04-15 11:09:11','2022-04-15 11:09:11'),
	(28,21,10,30,'16500190652050306157.jpg','16500190651369530913.jpg',0,'16500190652050306157.jpg',0,0,'2340','3508',0,1,'2022-04-15 13:37:46','2022-04-16 22:10:09'),
	(31,2,5,33,'16501328131762206330.jpg','1650132813413568241.jpg',0,'16501328131762206330.jpg',0,0,'1242','1242',0,1,'2022-04-16 21:13:33','2022-04-16 22:13:58'),
	(32,21,10,34,'16503116491168221017.jpg','1650311649926322486.jpg',0,'16503116491168221017.jpg',0,0,'2340','3508',0,0,'2022-04-18 22:54:10','2022-04-18 22:54:10'),
	(37,2,5,38,'1650533468588387260.jpg','16505334681676926715.jpg',0,'1650533468588387260.jpg',0,0,'530','714',0,1,'2022-04-21 12:31:08','2022-04-21 14:15:44'),
	(38,2,5,39,'16505601701392840500.jpg','16505601701177681275.jpg',0,'16505601701392840500.jpg',0,0,'1500','938',0,0,'2022-04-21 19:56:10','2022-04-21 19:56:10'),
	(39,2,5,40,'16505644081349818882.jpg','1650564408535511152.jpg',0,'16505644081349818882.jpg',0,0,'712','948',0,1,'2022-04-21 21:06:48','2022-04-29 20:19:47'),
	(40,2,5,40,'1650564408308875176.jpg','16505644081670058593.jpg',0,'1650564408308875176.jpg',0,0,'1080','1354',0,2,'2022-04-21 21:06:48','2022-04-29 20:19:47'),
	(50,2,5,50,'1651253722119547592.jpg','1651253722477911022.jpg',0,'1651253722119547592.jpg',0,0,'1038','1372',0,0,'2022-04-29 20:35:23','2022-04-29 20:35:23'),
	(51,2,5,51,'1651254010468783833.jpg','16512540101500934398.jpg',0,'1651254010468783833.jpg',0,0,'3500','2580',0,1,'2022-04-29 20:40:11','2022-04-29 20:42:56'),
	(52,2,5,52,'16512545562117078958.jpg','1651254556219955231.jpg',0,'16512545562117078958.jpg',0,0,'504','632',0,0,'2022-04-29 20:49:16','2022-04-29 20:49:16'),
	(53,2,5,53,'16512567002046454314.jpg','1651256700328158955.jpg',0,'16512567002046454314.jpg',0,0,'2616','2232',0,0,'2022-04-29 21:25:04','2022-04-29 21:25:04'),
	(54,2,5,53,'16512567012088585900.jpg','16512567012042440988.jpg',0,'16512567012088585900.jpg',0,0,'3024','3024',0,0,'2022-04-29 21:25:04','2022-04-29 21:25:04'),
	(55,2,5,53,'16512567021986012362.jpg','16512567021296684943.jpg',0,'16512567021986012362.jpg',0,0,'3024','3024',0,0,'2022-04-29 21:25:04','2022-04-29 21:25:04'),
	(56,2,5,53,'1651256703780991399.jpg','1651256703420467733.jpg',0,'1651256703780991399.jpg',0,0,'3024','3024',0,0,'2022-04-29 21:25:04','2022-04-29 21:25:04'),
	(57,2,5,54,'16512568821283896335.jpg','1651256882955558177.jpg',0,'16512568821283896335.jpg',0,0,'2500','2500',0,0,'2022-04-29 21:28:03','2022-04-29 21:28:03'),
	(58,2,5,55,'1651257059589061982.jpg','16512570591191768876.jpg',0,'1651257059589061982.jpg',0,0,'2500','2500',0,0,'2022-04-29 21:30:59','2022-04-29 21:30:59'),
	(63,2,5,56,'16513309251594324107.jpg','16513309251432611791.jpg',0,'16513309251594324107.jpg',0,0,'2560','2026',0,1,'2022-04-30 18:02:06','2022-04-30 18:06:58'),
	(66,2,5,56,'16514861331147568521.jpg','16514861331281367752.jpg',0,'16514861331147568521.jpg',0,0,'2500','2500',0,0,'2022-05-02 13:08:55','2022-05-02 13:08:55'),
	(67,2,5,56,'1651486134830879322.jpg','16514861341824734563.jpg',0,'1651486134830879322.jpg',0,0,'2500','2500',0,0,'2022-05-02 13:08:55','2022-05-02 13:08:55'),
	(68,13,6,60,'16515946232076690680.jpg','16515946231066900589.jpg',0,'16515946232076690680.jpg',0,0,'954','1194',0,0,'2022-05-03 19:17:04','2022-05-03 19:17:04'),
	(69,2,5,61,'16516911491208275959.jpg','16516911491302606442.jpg',0,'16516911491208275959.jpg',0,0,'2344','3584',0,1,'2022-05-04 22:05:50','2022-05-04 22:32:15'),
	(70,2,5,62,'16516917351301187954.jpg','1651691735237067043.jpg',0,'16516917351301187954.jpg',0,0,'2430','3052',0,1,'2022-05-04 22:15:36','2022-05-04 22:31:22'),
	(71,2,5,63,'1651691897114889380.jpg','16516918972016227203.jpg',0,'1651691897114889380.jpg',0,0,'3580','2604',0,1,'2022-05-04 22:18:18','2022-05-04 22:30:24');

/*!40000 ALTER TABLE `shop_product_files` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_likes`;

CREATE TABLE `shop_product_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_likes` WRITE;
/*!40000 ALTER TABLE `shop_product_likes` DISABLE KEYS */;

INSERT INTO `shop_product_likes` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `shop_product_likes` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_metas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_metas`;

CREATE TABLE `shop_product_metas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_metas` WRITE;
/*!40000 ALTER TABLE `shop_product_metas` DISABLE KEYS */;

INSERT INTO `shop_product_metas` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `shop_product_metas` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_saves
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_saves`;

CREATE TABLE `shop_product_saves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_saves` WRITE;
/*!40000 ALTER TABLE `shop_product_saves` DISABLE KEYS */;

INSERT INTO `shop_product_saves` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `shop_product_saves` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_shares
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_shares`;

CREATE TABLE `shop_product_shares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_product_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_product_shares` WRITE;
/*!40000 ALTER TABLE `shop_product_shares` DISABLE KEYS */;

INSERT INTO `shop_product_shares` (`id`, `user_id`, `shop_product_id`, `shop_profile_id`, `type`, `comment`, `user_tags`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,4,7,6,'like',NULL,NULL,'2022-04-02 15:10:03','2022-04-02 15:10:03',NULL),
	(2,1,7,6,'like',NULL,NULL,'2022-04-02 18:05:54','2022-04-02 18:05:54',NULL),
	(3,5,3,5,'like',NULL,NULL,'2022-04-08 00:25:16','2022-04-08 00:25:16',NULL),
	(4,5,1,1,'like',NULL,NULL,'2022-04-08 00:25:24','2022-04-08 00:25:24',NULL),
	(5,5,2,5,'like',NULL,NULL,'2022-04-08 00:25:46','2022-04-08 00:25:46',NULL),
	(6,2,6,5,'comment','Cool book',NULL,'2022-05-05 19:45:01','2022-05-05 19:45:01',NULL),
	(7,19,54,5,'comment','TEST',NULL,'2022-05-12 12:02:17','2022-05-12 12:02:17',NULL),
	(8,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:15','2022-05-12 12:05:15',NULL),
	(9,19,29,10,'comment','Test',NULL,'2022-05-12 12:05:26','2022-05-12 12:05:26',NULL),
	(10,19,40,5,'comment','Test',NULL,'2022-05-12 12:08:23','2022-05-12 12:08:23',NULL),
	(12,19,38,5,'comment','TEST',NULL,'2022-05-12 12:13:05','2022-05-12 12:13:05',NULL),
	(13,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:34','2022-05-12 12:14:34',NULL),
	(14,19,38,5,'comment','TEST',NULL,'2022-05-12 12:14:48','2022-05-12 12:14:48',NULL),
	(17,19,23,0,'click',NULL,NULL,'2022-06-07 12:05:01','2022-06-07 12:05:01',NULL);

/*!40000 ALTER TABLE `shop_product_shares` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_product_website_button_clicks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_product_website_button_clicks`;

CREATE TABLE `shop_product_website_button_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_product_id` int NOT NULL,
  `website_button_id` int NOT NULL,
  `quantity` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_product_website_button_clicks_UN` (`shop_product_id`,`website_button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы shop_products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_products`;

CREATE TABLE `shop_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_profile_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter_id` int NOT NULL,
  `quantity` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `shipping_included` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No, price is not inclusive shipping.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `tags` (`tags`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

LOCK TABLES `shop_products` WRITE;
/*!40000 ALTER TABLE `shop_products` DISABLE KEYS */;

INSERT INTO `shop_products` (`id`, `user_id`, `shop_profile_id`, `name`, `artist_name`, `description`, `tags`, `type_id`, `type`, `category_type_id`, `category_type`, `currency`, `price`, `sale`, `package_size`, `package_weight`, `filter_id`, `quantity`, `comment`, `status`, `rating`, `read_count`, `delivery`, `contact_email`, `website_link`, `approval_date`, `shipping_included`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,8,1,'Needles','','Needles','#needles',3,'Digital art & wallpapers','47','Print','EUR','1000','yes','50/50/50 cm','1',1,'1',NULL,1,'0',12,'0','sophie@schoentod.de','www.schoentod.de','2022-01-31 10:17:02','Shipping is included in price','2022-01-31 01:46:42','2022-01-31 01:46:42',NULL),
	(6,2,5,'Portraits of Horror','Horrifyme.co.uk','The new book Portraits of Horror is packed with 288 pages of beautiful full colour horror photos, featuring all the best vampires, most rotten zombies, evil demons, and a huge assortment of other iconic horror favourites.','#horror,#book,#vampires,#zombies',1,'Books & magazines','7','Books','GBP','39.99','yes','35/28/2 cm','1',4,'1','288 pages',1,'0',0,'0','info@horrify.me.uk',NULL,'2022-02-03 12:15:20','Shipping is not included in price','2022-02-03 12:13:50','2022-02-03 12:13:50',NULL),
	(7,13,6,'Persefone','Merisio','Oil on canvas. Long description Long description Long description Long description Long description','#oilpainting,#originalart,#buyfromartist',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','100/70/2 cm','0.0',1,'1',NULL,1,'0',21,'0','contact@artfora.net','artfora.net','2022-04-02 18:02:06','N/A','2022-03-26 16:37:25','2022-04-02 18:01:07',NULL),
	(19,13,6,'Monito','Merisio',NULL,'#oilpainting',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','100/70/2 cm','0.0',1,'1',NULL,1,'0',16,'0','contact@artfora.net',NULL,'2022-04-05 15:04:54','N/A','2022-04-05 14:47:01','2022-04-05 15:03:59',NULL),
	(21,2,5,'Elephant','Vadim R.',NULL,'#acrylicpainting',4,'Paintings & illustrations','18,35','Acrylic painting.Original artwork','EUR',NULL,'no','100/70/2 cm','0.0',1,'1',NULL,1,'0',17,'0','contact@artfora.net',NULL,'2022-04-08 14:23:02','N/A','2022-04-08 14:22:36','2022-04-08 14:22:36',NULL),
	(22,2,5,'Illona','Illona Schmith',NULL,'#oilpainting',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','80/60/2 cm','0.0',1,'1',NULL,1,'0',11,'0','contact@artfora.net',NULL,'2022-04-08 14:31:31','N/A','2022-04-08 14:31:06','2022-04-08 14:31:06',NULL),
	(23,2,5,'Leg','Laetitia',NULL,'#photography',6,'Photo','54','Print','EUR',NULL,'no','20/20/0 cm','0.0',1,'1',NULL,1,'0',11,'0','contact@artfora.net',NULL,'2022-04-21 19:49:56','N/A','2022-04-08 17:23:15','2022-04-21 15:03:12',NULL),
	(25,5,9,'Discoholics Anonymous 2','Discoholics Anonymous',NULL,'#music,#disco',2,'Music & sound','12','Digital','EUR','10','yes','12/12/1 cm','0.2',1,'99',NULL,1,'0',12,'0','contact@mindwerk.dk',NULL,'2022-04-13 23:23:00','Not included in price','2022-04-13 23:22:13','2022-04-13 23:22:13',NULL),
	(27,5,9,'Just Standing','Atman Comic','”Just Standing“','#digitalart',3,'Digital art & wallpapers','46','Artwork','EUR',NULL,'no','4961/3508/0 cm','0.0',1,'1',NULL,1,'0',12,'0','orpheus@mindwerk.dk',NULL,'2022-04-14 14:31:37','N/A','2022-04-14 11:27:36','2022-04-14 14:30:57',NULL),
	(29,21,10,'The Mandalorian','Aksó Nerd Arts',NULL,'#oilpainting,#popart,#starwars',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR','999','yes','60/40/2 cm','2',1,'1',NULL,1,'0',19,'0','contact@artfora.net',NULL,'2022-04-15 11:09:42','Not included in price','2022-04-15 11:09:10','2022-04-15 11:09:10',NULL),
	(30,21,10,'The Elephant Man','Aksó Nerd Arts','This is a description of a painting of a man called The Elephant Man','#oilpainting,#popart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','60/40/2 cm','0.0',1,'1',NULL,1,'0',14,'0','contact@artfora.net',NULL,'2022-04-16 22:11:06','N/A','2022-04-15 13:37:45','2022-04-16 22:10:09',NULL),
	(33,2,5,'Dance','Laetitia','High quality print on glossy paper. Limited edition of 20 pieces. All signed by photographer and model.','#photography,#print',6,'Photo','54','Print','EUR','499','yes','45/45/0 cm','0.1',1,'1','High quality print',1,'0',15,'0','contact@artfora.net','artfora.net,instagram.com/artfora_net,twitter.com/artfora_net,onlyfans.com,youtube.com','2022-04-23 20:02:13','Not included in price','2022-04-16 21:13:33','2022-04-23 19:34:11',NULL),
	(34,21,10,'Lion King','Aksó Nerd Arts',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','60/40/2 cm','0.0',1,'1',NULL,1,'0',13,'0','contact@artfora.net',NULL,'2022-04-18 22:54:39','N/A','2022-04-18 22:54:09','2022-04-18 22:54:09',NULL),
	(38,2,5,'Virgin and Child with Saint Anne','Einar Lúdvík Ólafsson','Oil on canvas','#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','100/75/2 cm','0.0',1,'1',NULL,1,'0',9,'0','contact@artfora.net','artfora.net','2022-04-21 14:18:27','N/A','2022-04-21 12:31:08','2022-04-21 14:15:44',NULL),
	(39,2,5,'Underdog','Sven Pels',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','66/106/2 cm','0.0',1,'1',NULL,1,'0',13,'0','contact@artfora.net','artfora.net','2022-04-21 19:56:47','N/A','2022-04-21 19:56:10','2022-04-21 19:56:10',NULL),
	(40,2,5,'Et Lille Håb (A Little Hope)','Wiwi',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','80/60/2 cm','0.0',1,'1',NULL,1,'0',12,'0','contact@artfora.net','Instagram.com/wiwischroeder','2022-04-29 20:22:24','N/A','2022-04-21 21:06:48','2022-04-29 20:19:47',NULL),
	(50,2,5,'Conscience Evolution','Chikitin',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,39,35','Oil painting.Spray paint.Original artwork','EUR',NULL,'no','146/114/2 cm','0.0',1,'1',NULL,1,'0',12,'0','contact@artfora.net','Instagram.com/chikitinvalencia7','2022-04-29 20:40:40','N/A','2022-04-29 20:35:22','2022-04-29 20:35:22',NULL),
	(51,2,5,'Pequeño Oleaje','Moarania',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','60/81/2 cm','0.0',1,'1',NULL,1,'0',10,'0','contact@artfora.net','Instagram.com/moarania','2022-04-29 20:43:47','N/A','2022-04-29 20:40:10','2022-04-29 20:42:56',NULL),
	(52,2,5,'Geisha','Oana',NULL,'#oilpainting,#acrylicpainting,#mixmedia,#originalart',4,'Paintings & illustrations','18,17,23,35','Acrylic painting.Oil painting.Mixed media.Original artwork','EUR',NULL,'no','50/40/2 cm','0.0',1,'1',NULL,1,'0',14,'0','contact@artfora.net','Instagram.com/oana_d.art','2022-04-29 21:31:54','N/A','2022-04-29 20:49:16','2022-04-29 20:49:16',NULL),
	(53,2,5,'Cathedral','Fonseca Martins',NULL,'#acrylicpainting,#originalart',4,'Paintings & illustrations','18,35','Acrylic painting.Original artwork','EUR',NULL,'no','120/120/2 cm','0.0',1,'1',NULL,1,'0',13,'0','contact@artfora.net','Instagram.com/cfonsecamartins','2022-04-29 21:32:48','N/A','2022-04-29 21:25:00','2022-04-29 21:25:00',NULL),
	(54,2,5,'Pink Street','Carmo Almeida',NULL,'#acrylicpainting,#originalart',4,'Paintings & illustrations','18,35','Acrylic painting.Original artwork','EUR',NULL,'no','90/90/2 cm','0.0',1,'1',NULL,1,'0',18,'0','contact@artfora.net','Instagram.com/c.almeidaart','2022-04-29 21:33:27','N/A','2022-04-29 21:28:02','2022-04-29 21:28:02',NULL),
	(55,2,5,'Explosion','Karina M.',NULL,'#mixmedia,#originalart',4,'Paintings & illustrations','23,35','Mixed media.Original artwork','EUR',NULL,'no','90/90/2 cm','0.0',1,'1',NULL,1,'0',14,'0','contact@artfora.net','Instagram.com/art.karinam','2022-04-29 21:33:56','N/A','2022-04-29 21:30:59','2022-04-29 21:30:59',NULL),
	(56,2,5,'Two Friends','Fonseca Martins',NULL,'#oilpainting,#originalart',4,'Paintings & illustrations','17,35','Oil painting.Original artwork','EUR',NULL,'no','81/100/2 cm','0.0',1,'1',NULL,1,'0',13,'0','contact@artfora.net','instagram.com/cfonsecamartins','2022-05-02 13:11:58','N/A','2022-04-30 09:05:35','2022-05-02 13:08:53',NULL),
	(60,13,6,'La Nascita di Venere','Merisio',NULL,'#oilpainting',4,'Paintings & illustrations','','Oil painting.Original artwork','EUR',NULL,'no','100/80/2 cm','0.0',1,'1',NULL,1,'0',57,'0','contact@artfora.net','instagram.com/merisio','2022-05-03 19:17:51','N/A','2022-05-03 19:17:03','2022-05-03 19:17:03',NULL),
	(61,2,5,'Alles Wird Gut','Ute Kleist','\"Everything will be alright\"\nOil on canvas','#oilpainting,#originalart',4,'Paintings & illustrations','','Oil painting.Spray paint.Original artwork','EUR',NULL,'yes','120/80/2 cm','2',1,'1',NULL,1,'0',43,'0','contact@artfora.net','ute-kleist.de,instagram.com/utekleist','2022-05-04 22:43:03','Not included in price','2022-05-04 22:05:49','2022-05-04 22:42:06',NULL),
	(62,2,5,'Wind Im Haar','Ute Kleist','\"Wind in the hair\"\nOil on canvas','#oilpainting,#originalart',4,'Paintings & illustrations','','Oil painting.Original artwork','EUR',NULL,'yes','100/80/2 cm','2',1,'1',NULL,1,'0',98,'0','contact@artfora.net','ute-kleist.de,instagram.com/utekleist','2022-05-04 22:32:46','Not included in price','2022-05-04 22:15:35','2022-05-04 22:31:22',NULL),
	(63,2,5,'Zur Mitte Hin','Ute Kleist','\"Towards centre\"\nOil on canvas','#originalart,#oilpainting',4,'Paintings & illustrations','','Oil painting.Original artwork','EUR',NULL,'yes','60/80/2 cm','2',1,'1',NULL,1,'0',28,'0','contact@artfora.net','ute-kleist.de,instagram.com/utekleist','2022-05-04 22:32:54','Not included in price','2022-05-04 22:18:17','2022-05-04 22:30:24',NULL),
	(65,18,8,'Shop','Netra Shop','I don’t think we can get it back until we','#going',3,'Digital art & wallpapers','','Artwork.Tutorials','EUR','500000','yes','5/2/2 cm','5',4,'1','10%',0,'0',0,'0','netratechnosyss123@gmail.com','www.netrashop.com',NULL,'Shipping is included in price','2022-05-27 07:51:19','2022-05-27 07:51:19',NULL),
	(66,18,8,'Shop','Netra Shop','I don’t think we can get it back until we','#going,#going',3,'Digital art & wallpapers','','Artwork.Tutorials','EUR','500000','yes','5/2/2 cm','5',4,'1','10%',0,'0',0,'0','netratechnosyss123@gmail.com','www.netrashop.com',NULL,'Shipping is included in price','2022-05-27 07:51:24','2022-05-27 07:51:24',NULL);

/*!40000 ALTER TABLE `shop_products` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_profiles`;

CREATE TABLE `shop_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `card_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` int DEFAULT NULL,
  `expiry_year` int DEFAULT NULL,
  `security_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_type` int NOT NULL DEFAULT '0' COMMENT '0: By Quantity, 1: By Weight',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `shop_profiles` WRITE;
/*!40000 ALTER TABLE `shop_profiles` DISABLE KEYS */;

INSERT INTO `shop_profiles` (`id`, `user_id`, `shop_image_url`, `shop_description`, `company_name`, `shop_name`, `name`, `address_1`, `address_2`, `zip`, `city`, `country`, `phone_1`, `phone_2`, `email`, `rating`, `card_name`, `card_number`, `expiry_month`, `expiry_year`, `security_code`, `shipping_type`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,8,'https://artfora.net/images/shop_image/1643585774image.jpg','Deathcare',NULL,'Schøntod Post Mortem Assistance',NULL,'Berlin, Deutschland',NULL,NULL,NULL,NULL,NULL,NULL,'sophie@schoentod.de','0',NULL,NULL,NULL,NULL,NULL,0,'2022-01-31 01:36:14','2022-01-31 01:36:14',NULL),
	(3,4,'https://artfora.net/images/shop_image/1643633082image.jpg','Write your profile or description',NULL,'Jimmy‘s Shop',NULL,'Berlin, Germany',NULL,NULL,NULL,NULL,NULL,NULL,'contact@mindwerk.dk','0',NULL,NULL,NULL,NULL,NULL,0,'2022-01-31 14:44:42','2022-01-31 14:44:42',NULL),
	(5,2,'https://artfora.net/images/shop_image/1651046067image.jpg','Write your profile or description',NULL,'ARTfora Gallery',NULL,'Berlin, Germany',NULL,NULL,NULL,NULL,NULL,NULL,'contact@artfora.net','0',NULL,NULL,NULL,NULL,NULL,0,'2022-02-02 21:50:05','2022-04-27 10:54:27',NULL),
	(6,13,'https://artfora.net/images/shop_image/1648305258image.jpg','Italian Painter from Tuscany, inspired by Caravaggio. Realism, surrealism and symbolism.\n\nLine break check',NULL,'Merisio',NULL,'Tuscania, Lazio, Italy',NULL,NULL,NULL,NULL,NULL,NULL,'contact@artfora.net','0',NULL,NULL,NULL,NULL,NULL,0,'2022-03-26 16:34:18','2022-03-26 16:34:18',NULL),
	(7,12,'https://artfora.net/images/shop_image/1648311930image.jpg','TESTE',NULL,'TESTER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bhavesh.bansal@gmail.com','0',NULL,NULL,NULL,NULL,NULL,0,'2022-03-26 18:25:30','2022-03-26 18:25:30','2022-03-26 19:08:54'),
	(8,18,'https://artfora.net/images/shop_image/1649241254image.jpg','This is my shop',NULL,'Netra Shop',NULL,'Surat, Gujarat, India',NULL,NULL,NULL,NULL,NULL,NULL,'netratechnosyss123@gmail.com','0',NULL,NULL,NULL,NULL,NULL,0,'2022-04-06 13:34:14','2022-04-06 13:34:14',NULL),
	(9,5,'https://artfora.net/images/shop_image/1650262638image.jpg','Write your profile or description',NULL,'Atman Comics',NULL,'Berlin, Germany',NULL,NULL,NULL,NULL,NULL,NULL,'contact@mindwerk.dk','0',NULL,NULL,NULL,NULL,NULL,0,'2022-04-13 23:18:04','2022-04-18 09:17:18',NULL),
	(10,21,'https://artfora.net/images/shop_image/1650009996image.jpg','Nerd Arts',NULL,'Aksó Nerd Arts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'contact@artfora.net','0',NULL,NULL,NULL,NULL,NULL,0,'2022-04-15 11:06:36','2022-04-15 11:06:36',NULL);

/*!40000 ALTER TABLE `shop_profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы shop_shipping_costs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shop_shipping_costs`;

CREATE TABLE `shop_shipping_costs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(10,2) NOT NULL,
  `type` int NOT NULL COMMENT '0: Quantity, 1: Weight',
  `items` int DEFAULT NULL,
  `weight_start` double(10,2) DEFAULT NULL,
  `weight_end` double(10,2) DEFAULT NULL,
  `additional` int NOT NULL DEFAULT '0' COMMENT '0: No, 1: Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы status_views
# ------------------------------------------------------------

DROP TABLE IF EXISTS `status_views`;

CREATE TABLE `status_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_views_status_id_foreign` (`status_id`),
  CONSTRAINT `status_views_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `status_views` WRITE;
/*!40000 ALTER TABLE `status_views` DISABLE KEYS */;

INSERT INTO `status_views` (`id`, `user_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(50,8,33,'2022-02-03 21:24:12','2022-02-03 21:24:12',NULL),
	(51,8,34,'2022-02-03 21:30:33','2022-02-03 21:30:33',NULL),
	(52,8,41,'2022-03-27 15:43:20','2022-03-27 15:43:20',NULL),
	(53,8,41,'2022-03-27 22:25:35','2022-03-27 22:25:35',NULL),
	(54,8,41,'2022-03-27 22:30:28','2022-03-27 22:30:28',NULL),
	(55,8,42,'2022-03-27 22:30:36','2022-03-27 22:30:36',NULL),
	(56,8,41,'2022-03-27 22:30:43','2022-03-27 22:30:43',NULL),
	(57,8,41,'2022-03-27 22:30:59','2022-03-27 22:30:59',NULL),
	(58,8,42,'2022-03-27 22:31:04','2022-03-27 22:31:04',NULL),
	(59,8,41,'2022-03-27 22:34:26','2022-03-27 22:34:26',NULL),
	(60,8,42,'2022-03-27 22:34:54','2022-03-27 22:34:54',NULL),
	(61,8,43,'2022-03-27 22:35:48','2022-03-27 22:35:48',NULL),
	(62,4,44,'2022-03-27 22:42:50','2022-03-27 22:42:50',NULL),
	(63,8,41,'2022-03-27 22:43:00','2022-03-27 22:43:00',NULL),
	(64,4,44,'2022-03-27 22:43:38','2022-03-27 22:43:38',NULL),
	(65,8,42,'2022-03-27 22:43:53','2022-03-27 22:43:53',NULL),
	(66,8,43,'2022-03-27 22:43:55','2022-03-27 22:43:55',NULL),
	(67,4,45,'2022-03-27 22:47:31','2022-03-27 22:47:31',NULL),
	(68,8,41,'2022-03-27 22:47:47','2022-03-27 22:47:47',NULL),
	(69,4,44,'2022-03-27 22:50:11','2022-03-27 22:50:11',NULL),
	(70,4,45,'2022-03-27 22:50:13','2022-03-27 22:50:13',NULL),
	(71,4,44,'2022-03-27 22:50:25','2022-03-27 22:50:25',NULL),
	(72,4,45,'2022-03-27 22:50:25','2022-03-27 22:50:25',NULL),
	(73,4,44,'2022-03-27 22:50:26','2022-03-27 22:50:26',NULL),
	(74,4,45,'2022-03-27 22:50:28','2022-03-27 22:50:28',NULL),
	(75,4,44,'2022-03-27 23:04:36','2022-03-27 23:04:36',NULL),
	(76,4,45,'2022-03-27 23:04:39','2022-03-27 23:04:39',NULL),
	(77,4,41,'2022-03-29 09:56:30','2022-03-29 09:56:30',NULL),
	(78,4,42,'2022-03-29 09:56:31','2022-03-29 09:56:31',NULL),
	(79,4,43,'2022-03-29 09:56:31','2022-03-29 09:56:31',NULL),
	(80,8,44,'2022-04-01 03:04:32','2022-04-01 03:04:32',NULL),
	(81,8,45,'2022-04-01 03:04:32','2022-04-01 03:04:32',NULL),
	(85,4,47,'2022-04-02 08:50:58','2022-04-02 08:50:58',NULL),
	(88,4,48,'2022-04-02 15:08:54','2022-04-02 15:08:54',NULL),
	(90,5,49,'2022-04-06 21:15:16','2022-04-06 21:15:16',NULL),
	(91,5,49,'2022-04-06 21:17:08','2022-04-06 21:17:08',NULL),
	(94,5,49,'2022-04-06 21:19:19','2022-04-06 21:19:19',NULL),
	(96,5,49,'2022-04-06 21:23:19','2022-04-06 21:23:19',NULL),
	(97,13,53,'2022-04-07 00:27:21','2022-04-07 00:27:21',NULL),
	(98,5,49,'2022-04-07 00:27:31','2022-04-07 00:27:31',NULL),
	(99,5,49,'2022-04-07 00:28:00','2022-04-07 00:28:00',NULL),
	(100,5,49,'2022-04-07 00:31:44','2022-04-07 00:31:44',NULL),
	(101,5,49,'2022-04-07 16:00:51','2022-04-07 16:00:51',NULL),
	(102,13,54,'2022-04-07 16:01:07','2022-04-07 16:01:07',NULL),
	(103,5,49,'2022-04-07 18:06:46','2022-04-07 18:06:46',NULL),
	(104,4,56,'2022-04-08 00:17:47','2022-04-08 00:17:47',NULL),
	(105,4,56,'2022-04-08 00:18:45','2022-04-08 00:18:45',NULL),
	(106,4,59,'2022-04-08 21:39:36','2022-04-08 21:39:36',NULL),
	(107,4,56,'2022-04-08 21:39:46','2022-04-08 21:39:46',NULL),
	(108,4,58,'2022-04-08 21:39:56','2022-04-08 21:39:56',NULL),
	(109,8,59,'2022-04-09 01:56:04','2022-04-09 01:56:04',NULL),
	(110,8,59,'2022-04-09 01:57:00','2022-04-09 01:57:00',NULL),
	(111,8,59,'2022-04-09 01:57:17','2022-04-09 01:57:17',NULL),
	(112,4,59,'2022-04-09 08:34:06','2022-04-09 08:34:06',NULL),
	(113,4,59,'2022-04-09 08:34:25','2022-04-09 08:34:25',NULL),
	(114,5,61,'2022-04-11 13:05:38','2022-04-11 13:05:38',NULL),
	(115,5,61,'2022-04-11 13:06:12','2022-04-11 13:06:12',NULL),
	(116,5,61,'2022-04-11 13:06:58','2022-04-11 13:06:58',NULL),
	(117,5,61,'2022-04-11 13:07:01','2022-04-11 13:07:01',NULL),
	(118,5,61,'2022-04-11 13:07:05','2022-04-11 13:07:05',NULL),
	(119,5,61,'2022-04-11 13:09:14','2022-04-11 13:09:14',NULL),
	(120,5,62,'2022-04-11 13:09:15','2022-04-11 13:09:15',NULL),
	(121,19,61,'2022-04-11 17:33:18','2022-04-11 17:33:18',NULL),
	(122,19,62,'2022-04-11 17:33:29','2022-04-11 17:33:29',NULL),
	(123,5,61,'2022-04-11 17:44:03','2022-04-11 17:44:03',NULL),
	(124,5,62,'2022-04-11 17:44:04','2022-04-11 17:44:04',NULL),
	(125,5,61,'2022-04-11 17:53:20','2022-04-11 17:53:20',NULL),
	(126,19,66,'2022-04-13 21:28:46','2022-04-13 21:28:46',NULL),
	(127,19,66,'2022-04-13 21:29:27','2022-04-13 21:29:27',NULL),
	(128,20,70,'2022-04-15 06:53:09','2022-04-15 06:53:09',NULL),
	(129,20,70,'2022-04-15 09:40:53','2022-04-15 09:40:53',NULL),
	(130,20,70,'2022-04-15 09:41:27','2022-04-15 09:41:27',NULL),
	(131,20,70,'2022-04-15 09:41:58','2022-04-15 09:41:58',NULL),
	(132,20,70,'2022-04-15 09:43:08','2022-04-15 09:43:08',NULL),
	(133,19,72,'2022-04-15 10:15:01','2022-04-15 10:15:01',NULL),
	(134,19,72,'2022-04-15 10:15:38','2022-04-15 10:15:38',NULL),
	(135,19,72,'2022-04-15 10:16:39','2022-04-15 10:16:39',NULL),
	(136,19,72,'2022-04-15 10:20:35','2022-04-15 10:20:35',NULL),
	(137,19,72,'2022-04-15 10:20:45','2022-04-15 10:20:45',NULL),
	(138,19,72,'2022-04-15 10:21:16','2022-04-15 10:21:16',NULL),
	(139,19,72,'2022-04-15 10:31:09','2022-04-15 10:31:09',NULL),
	(140,19,72,'2022-04-15 10:31:25','2022-04-15 10:31:25',NULL),
	(141,19,72,'2022-04-15 10:34:27','2022-04-15 10:34:27',NULL),
	(142,20,74,'2022-04-15 10:48:04','2022-04-15 10:48:04',NULL),
	(143,19,75,'2022-04-15 10:59:14','2022-04-15 10:59:14',NULL),
	(144,20,76,'2022-04-15 11:24:44','2022-04-15 11:24:44',NULL),
	(145,19,77,'2022-04-15 11:48:37','2022-04-15 11:48:37',NULL),
	(146,5,67,'2022-04-15 15:19:42','2022-04-15 15:19:42',NULL),
	(147,5,67,'2022-04-15 15:37:57','2022-04-15 15:37:57',NULL),
	(148,5,67,'2022-04-15 16:42:03','2022-04-15 16:42:03',NULL),
	(149,5,67,'2022-04-15 16:42:42','2022-04-15 16:42:42',NULL),
	(150,4,79,'2022-04-16 13:01:43','2022-04-16 13:01:43',NULL),
	(151,4,81,'2022-04-16 18:57:36','2022-04-16 18:57:36',NULL),
	(152,4,81,'2022-04-16 19:03:20','2022-04-16 19:03:20',NULL),
	(153,19,82,'2022-04-16 23:29:35','2022-04-16 23:29:35',NULL),
	(154,19,81,'2022-04-16 23:29:45','2022-04-16 23:29:45',NULL),
	(155,19,81,'2022-04-16 23:55:40','2022-04-16 23:55:40',NULL),
	(156,19,82,'2022-04-17 00:01:47','2022-04-17 00:01:47',NULL),
	(157,19,82,'2022-04-17 00:03:36','2022-04-17 00:03:36',NULL),
	(158,5,82,'2022-04-17 00:06:57','2022-04-17 00:06:57',NULL),
	(159,19,82,'2022-04-17 00:27:45','2022-04-17 00:27:45',NULL),
	(160,19,81,'2022-04-17 00:27:55','2022-04-17 00:27:55',NULL),
	(161,19,82,'2022-04-17 00:46:05','2022-04-17 00:46:05',NULL),
	(162,5,82,'2022-04-18 00:44:05','2022-04-18 00:44:05',NULL),
	(163,5,82,'2022-04-18 00:46:34','2022-04-18 00:46:34',NULL),
	(164,5,82,'2022-04-18 00:47:16','2022-04-18 00:47:16',NULL),
	(165,5,82,'2022-04-18 00:47:28','2022-04-18 00:47:28',NULL),
	(166,5,82,'2022-04-18 10:53:57','2022-04-18 10:53:57',NULL),
	(167,19,82,'2022-04-18 19:38:05','2022-04-18 19:38:05',NULL),
	(168,19,82,'2022-04-18 19:41:13','2022-04-18 19:41:13',NULL),
	(169,19,82,'2022-04-18 20:09:13','2022-04-18 20:09:13',NULL),
	(170,19,82,'2022-04-18 20:21:44','2022-04-18 20:21:44',NULL),
	(171,19,82,'2022-04-18 20:22:00','2022-04-18 20:22:00',NULL),
	(172,19,82,'2022-04-18 20:22:14','2022-04-18 20:22:14',NULL),
	(173,19,82,'2022-04-18 20:27:15','2022-04-18 20:27:15',NULL),
	(174,19,82,'2022-04-18 20:27:36','2022-04-18 20:27:36',NULL),
	(175,19,82,'2022-04-18 20:40:00','2022-04-18 20:40:00',NULL),
	(176,5,82,'2022-04-19 16:29:23','2022-04-19 16:29:23',NULL),
	(177,5,84,'2022-04-19 16:29:28','2022-04-19 16:29:28',NULL),
	(178,5,84,'2022-04-19 16:30:06','2022-04-19 16:30:06',NULL),
	(179,5,84,'2022-04-19 16:30:43','2022-04-19 16:30:43',NULL),
	(180,5,86,'2022-04-30 08:55:36','2022-04-30 08:55:36',NULL);

/*!40000 ALTER TABLE `status_views` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `statuses`;

CREATE TABLE `statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `type` int NOT NULL COMMENT '1=Image, 2=Video',
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vedio_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `y` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `share_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'status',
  `feed_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `swipeUpUrl` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `story_time` bigint NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  KEY `statuses_user_id_foreign` (`user_id`),
  CONSTRAINT `statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;

INSERT INTO `statuses` (`id`, `user_id`, `type`, `file`, `vedio_image`, `x`, `y`, `tag_users`, `user_ids`, `share_type`, `feed_id`, `created_at`, `updated_at`, `deleted_at`, `swipeUpUrl`, `story_time`)
VALUES
	(26,9,1,'16435712181839983215.png',NULL,'[187.5]','[393.0]','[\"\"]','[\"0\"]','status',0,'2022-01-30 21:33:39','2022-01-30 21:33:39',NULL,'nil',0),
	(30,8,1,'16436709571668092226.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-02-01 01:15:59','2022-02-02 16:51:57','2022-02-02 16:51:57','nil',0),
	(33,8,2,'16438473111video.mp4',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-02-03 02:15:11','2022-02-08 21:39:34','2022-02-08 21:39:34','nil',0),
	(34,8,1,'1643916610911879041.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-02-03 21:30:12','2022-02-08 21:39:34','2022-02-08 21:39:34','nil',0),
	(41,8,1,'1648384973591403372.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-03-27 15:42:53','2022-04-02 08:51:20','2022-04-02 08:51:20','nil',5),
	(42,8,1,'16484094301769481094.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-03-27 22:30:31','2022-04-02 08:51:20','2022-04-02 08:51:20','nil',17),
	(43,8,1,'1648409741485464693.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-03-27 22:35:42','2022-04-02 08:51:20','2022-04-02 08:51:20','nil',5),
	(44,4,1,'16484101661991171796.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-03-27 22:42:46','2022-04-02 08:25:24','2022-04-02 08:25:24','nil',10),
	(45,4,1,'16484104471135617999.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-03-27 22:47:27','2022-04-02 08:25:24','2022-04-02 08:25:24','nil',15),
	(47,4,1,'16488786521696045460.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-02 08:50:53','2022-04-04 12:19:37','2022-04-04 12:19:37','nil',15),
	(48,4,1,'16489013131395541841.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-02 15:08:35','2022-04-04 12:19:37','2022-04-04 12:19:37','nil',11),
	(49,5,1,'1649268904464218314.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-06 21:15:05','2022-04-07 22:38:30','2022-04-07 22:38:30','nil',15),
	(53,13,1,'1649280434105352047.png',NULL,'[207.0]','[355.0]','[\"Jimmy O\"]','[\"4\"]','post',31,'2022-04-07 00:27:14','2022-04-13 16:01:15','2022-04-13 16:01:15','nil',9),
	(54,13,1,'1649268904464218314.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-07 16:00:59','2022-04-13 16:01:15','2022-04-13 16:01:15','nil',15),
	(56,5,1,'164936621337612035.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-08 00:16:54','2022-04-09 01:56:09','2022-04-09 01:56:09','nil',10),
	(57,4,1,'164936621337612035.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-08 00:17:56','2022-04-11 13:02:52','2022-04-11 13:02:52','nil',10),
	(58,5,1,'16493664361849024239.png',NULL,'[207.0]','[355.0]','[\"Sophie Schøntod\"]','[\"8\"]','post',50,'2022-04-08 00:20:38','2022-04-09 01:56:09','2022-04-09 01:56:09','nil',5),
	(59,2,1,'16494276211201795220.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-08 17:20:22','2022-04-11 13:07:48','2022-04-11 13:07:48','nil',10),
	(60,8,1,'1649458537720969708.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-04-09 01:55:38','2022-04-11 13:05:41','2022-04-11 13:05:41','nil',15),
	(61,4,1,'16496714591392422535.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-11 13:04:20','2022-04-13 13:27:50','2022-04-13 13:27:50','nil',10),
	(62,4,1,'16496717261017755730.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-10 13:08:48','2022-04-11 17:53:19','2022-04-11 17:53:19','nil',10),
	(63,5,1,'16496889541905690493.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-11 17:55:55','2022-04-13 13:27:41','2022-04-13 13:27:41','nil',10),
	(64,19,1,'16498739872003014912.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 21:19:49','2022-04-14 22:13:27','2022-04-14 22:13:27','nil',5),
	(65,19,1,'16498740841777947694.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-11 21:21:27','2022-04-13 21:25:26','2022-04-13 21:25:26','nil',5),
	(66,4,1,'16498744571796090870.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-11 21:27:38','2022-04-13 21:29:55','2022-04-13 21:29:55','nil',10),
	(67,8,1,'1649963907638404704.png',NULL,'[187.5]','[320.5]','[\"\"]','[\"0\"]','status',0,'2022-04-14 22:18:29','2022-04-16 13:00:32','2022-04-16 13:00:32','nil',5),
	(68,19,1,'16499641901680533801.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-12 22:23:11','2022-04-14 22:30:39','2022-04-14 22:30:39','nil',5),
	(69,19,1,'1649964887873172806.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-12 22:34:48','2022-04-14 22:36:15','2022-04-14 22:36:15','nil',5),
	(70,19,1,'16499894081130339209.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 05:23:29','2022-04-15 10:03:01','2022-04-15 10:03:01','nil',5),
	(71,20,1,'16499948181740259665.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 06:53:40','2022-04-15 09:22:40','2022-04-15 09:22:40','nil',5),
	(72,20,1,'16500067091901692805.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 10:11:51','2022-04-15 10:36:29','2022-04-15 10:36:29','nil',5),
	(73,19,1,'1650006812299286837.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 10:13:34','2022-04-15 10:20:34','2022-04-15 10:20:34','nil',5),
	(74,19,1,'1650008091994151584.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 10:34:53','2022-04-15 10:49:43','2022-04-15 10:49:43','nil',5),
	(75,20,1,'16500088231687304379.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 10:47:05','2022-04-15 11:03:38','2022-04-15 11:03:38','nil',5),
	(76,19,1,'16500095261653424375.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 10:58:48','2022-04-15 11:25:34','2022-04-15 11:25:34','nil',5),
	(77,20,1,'1650011064207837792.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-13 11:24:26','2022-04-15 11:50:42','2022-04-15 11:50:42','nil',5),
	(78,19,1,'1650011845490153980.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-15 11:37:27','2022-04-16 19:04:37','2022-04-16 19:04:37','nil',5),
	(79,5,1,'16500261391984693204.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-15 15:35:40','2022-04-16 18:52:40','2022-04-16 18:52:40','nil',10),
	(81,5,1,'16501246301004138328.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-17 10:34:14','2022-04-17 10:34:14','2022-04-17 10:34:14','nil',5),
	(82,4,1,'1650124988556231493.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-17 10:34:14','2022-04-17 10:34:14','2022-04-17 10:34:14','nil',5),
	(83,19,1,'1650140958760091459.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-16 10:34:14','2022-04-16 10:34:14','2022-04-16 10:34:14','nil',5),
	(84,21,1,'1650267252382206937.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-17 10:34:14','2022-04-17 10:34:14','2022-04-17 10:34:14','nil',5),
	(85,19,1,'1650299488787963016.png',NULL,'[195.0]','[409.0]','[\"\"]','[\"0\"]','status',0,'2022-04-16 19:31:30','2022-04-16 19:31:30','2022-04-16 19:31:30','nil',5),
	(86,26,1,'1651222482446945434.png',NULL,'[207.0]','[355.0]','[\"\"]','[\"0\"]','status',0,'2022-04-29 11:54:46','2022-05-05 18:48:38','2022-05-05 18:48:38','nil',5);

/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы tag_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag_users`;

CREATE TABLE `tag_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `story_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `terms`;

CREATE TABLE `terms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `txt_order` int NOT NULL,
  `txt_style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;

INSERT INTO `terms` (`id`, `txt_order`, `txt_style`, `txt_group`, `text`)
VALUES
	(1,2,'date','policies','Last updated 3rd June, 2020'),
	(2,3,'title','policies','Introduction'),
	(3,4,'body','policies','ARTfora respects the privacy of our users. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our app, including any other media form, media channel, mobile website, or mobile application related or connected thereto. Please read this privacy policy carefully.  If you do not agree with the terms of this privacy policy, please do not access the site. \r\n\r\nWe reserve the right to make changes to this Privacy Policy at any time and for any reason.  We will alert you about any changes by updating the “Last Updated” date of this Privacy Policy.  Any changes or modifications will be effective immediately upon posting the updated Privacy Policy on the Site, and you waive the right to receive specific notice of each such change or modification. \r\n\r\nYou are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Privacy Policy by your continued use of the Site after the date such revised Privacy Policy is posted.  '),
	(4,5,'section','policies','COLLECTION OF YOUR INFORMATION'),
	(5,6,'text','policies','We may collect information about you in a variety of ways. The information we may collect on the Site includes:'),
	(6,7,'title','policies','Personal Data'),
	(7,8,'text','policies','Personally identifiable information, such as your name, shipping address, email address, and telephone number, and demographic information, such as your age, gender, hometown, and interests, that you voluntarily give to us when you register with our app or later when using some specific functions which require specific informations, such as online chat, message boards, groups and shop. You are under no obligation to provide us with personal information of any kind, however your refusal to do so may prevent you from using certain features of the app.'),
	(8,1,'header','policies','ARTfora PRIVACY POLICY'),
	(9,9,'title','policies','Derivative Data'),
	(10,10,'text','policies','Information our servers may automatically collect when you use our app, such as your access times, the pages you have viewed, the device name and type, your operating system, your phone number, your country, your likes, comments and replies to posts, and other interactions with the application and other users via server log files, as well as any other information you choose to provide. We only collect data which we can use to improve our app and make it a safe place for everyone to use.'),
	(11,11,'title','policies','Financial Data'),
	(12,12,'text','policies','Financial information, such as data related to your payment method (e.g. valid credit card number, card brand, expiration date) that we may collect when you purchase, order, return, exchange, or request information about our services from our app. We store only very limited, if any, financial information that we collect. Otherwise, all financial information is stored by our payment gateway Quickpay and our acquirer and financial institution Clearhaus, and you are encouraged to review their privacy policy and contact them directly for responses to your questions.'),
	(13,13,'title','policies','Facebook Permissions'),
	(14,14,'text','policies','We do not share any information with Facebook.'),
	(15,15,'title','policies','Data From Social Networks and third parties'),
	(16,16,'text','policies','We do not share any information with any social networks or third parties.'),
	(17,17,'title','policies','Mobile Device Data'),
	(18,18,'text','policies','Device information, such as your mobile device ID, model, and manufacturer, and information about the location of your device, if you access the Site from a mobile device.'),
	(19,19,'title','policies','Data From Contests, Giveaways, and Surveys'),
	(20,20,'text','policies','Personal and other information you may provide when entering contests or giveaways and/or responding to surveys.'),
	(21,21,'title','policies','Mobile Application Information'),
	(22,22,'text','policies','If you connect using our mobile application:\r\n\r\n- Geo-Location Information. We may request access or permission to and track location-based information from your mobile device, either continuously or while you are using our mobile application, to provide location-based services. If you wish to change our access or permissions, you may do so in your device’s settings.\r\n\r\n- Mobile Device Access. We may request access or permission to certain features from your mobile device, including your mobile device’s camera, microphone, sensors, storage and other features. If you wish to change our access or permissions, you may do so in your device’s settings.\r\n\r\n- Mobile Device Data. We may collect device information (such as your mobile device ID, model and manufacturer), operating system, version information and IP address.\r\n\r\n- Push Notifications. We may request to send you push notifications regarding your account or the Application. If you wish to opt-out from receiving these types of communications, you may turn them off in your device’s settings.'),
	(23,23,'section','policies','USE OF YOUR INFORMATION'),
	(24,24,'text','policies','Having accurate information about you permits us to provide you with a smooth, efficient, and customized experience.  Specifically, we may use information collected about you via the app to:\r\n\r\n- Administer sweepstakes, promotions, and contests. \r\n\r\n- Assist law enforcement and respond to subpoena.\r\n\r\n- Compile anonymous statistical data and analysis for use internally or with third parties. \r\n\r\n- Create and manage your account.\r\n\r\n- Deliver targeted advertising, coupons, newsletters, and other information regarding promotions and the app to you. \r\n\r\n- Email you regarding your account or order.\r\n\r\n- Enable user-to-user communications.\r\n\r\n- Fulfill and manage purchases, orders, payments, and other transactions related to the app.\r\n\r\n- Generate a personal profile about you to make future visits to the app more personalized.\r\n\r\n- Increase the efficiency and operation of the app.\r\n\r\n- Monitor and analyze usage and trends to improve your experience with the app.\r\n\r\n- Notify you of updates to the app.\r\n\r\n- Offer new products, services and/or recommendations to you.\r\n\r\n- Perform other business activities as needed.\r\n\r\n- Prevent fraudulent transactions, monitor against theft, and protect against criminal activity.\r\n\r\n- Process payments and refunds.\r\n\r\n- Request feedback and contact you about your use of the app. \r\n\r\n- Resolve disputes and troubleshoot problems.\r\n\r\n- Respond to product and customer service requests.\r\n\r\n- Send you a newsletter.\r\n\r\n- Solicit support for the app.'),
	(25,25,'section','policies','DISCLOSURE OF YOUR INFORMATION'),
	(26,26,'text','policies','We may share information we have collected about you in certain situations. Your information may be disclosed as follows:'),
	(27,27,'title','policies','By Law or to Protect Rights'),
	(28,28,'text','policies','If we believe the release of information about you is necessary to respond to legal process, to investigate or remedy potential violations of our policies, or to protect the rights, property, and safety of others, we may share your information as permitted or required by any applicable law, rule, or regulation.  This includes exchanging information with other entities for fraud protection and credit risk reduction.'),
	(29,29,'title','policies','Third-Party Service Providers'),
	(30,30,'text','policies','We may share your information with third parties that perform services for us or on our behalf, including payment processing, data analysis, email delivery, hosting services, customer service, and marketing assistance.'),
	(31,31,'title','policies','Marketing Communications'),
	(32,32,'text','policies','With your consent, or with an opportunity for you to withdraw consent, we may share your information with third parties for marketing purposes, as permitted by law.'),
	(33,33,'title','policies','Interactions with Other Users'),
	(34,34,'text','policies','If you interact with other users of the app, those users may see your name, profile photo, and descriptions of your activity, including sending invitations to other users, chatting with other users, liking posts, following blogs.'),
	(35,35,'title','policies','Online Postings'),
	(36,36,'text','policies','When you post comments, contributions or other content to the app, your posts may be viewed by all users and may be publicly distributed outside the app in perpetuity.'),
	(37,37,'title','policies','Third-Party Advertisers'),
	(38,38,'text','policies','We may use third-party advertising companies to serve ads when you visit the app. These companies may use information about your visits to the app and other websites that are contained in web cookies in order to provide advertisements about goods and services of interest to you.'),
	(39,39,'title','policies','Affiliates'),
	(40,40,'text','policies','We may share your information with our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include our parent company and any subsidiaries, joint venture partners or other companies that we control or that are under common control with us.'),
	(41,41,'title','policies','Business Partners'),
	(42,42,'text','policies','We may share your information with our business partners to offer you certain products, services or promotions.'),
	(43,43,'title','policies','Other Third Parties'),
	(44,44,'text','policies','We may share your information with advertisers and investors for the purpose of conducting general business analysis. We may also share your information with such third parties for marketing purposes, as permitted by law.'),
	(45,45,'title','policies','Sale or Bankruptcy'),
	(46,46,'text','policies','If we reorganize or sell all or a portion of our assets, undergo a merger, or are acquired by another entity, we may transfer your information to the successor entity.  If we go out of business or enter bankruptcy, your information would be an asset transferred or acquired by a third party.  You acknowledge that such transfers may occur and that the transferee may decline honor commitments we made in this Privacy Policy.\r\n\r\nWe are not responsible for the actions of third parties with whom you share personal or sensitive data, and we have no authority to manage or control third-party solicitations.  If you no longer wish to receive correspondence, emails or other communications from third parties, you are responsible for contacting the third party directly.'),
	(47,47,'section','policies','TRACKING TECHNOLOGIES'),
	(48,48,'title','policies','Cookies and Web Beacons'),
	(49,49,'text','policies','We may use cookies, web beacons, tracking pixels, and other tracking technologies on the website and the app to help customize the website and our app and improve your experience. When you access the website or the app, your personal information is not collected through the use of tracking technology. Most browsers are set to accept cookies by default. You can remove or reject cookies, but be aware that such action could affect the availability and functionality of the website or our app. You may not decline web beacons. However, they can be rendered ineffective by declining all cookies or by modifying your web browser’s settings to notify you each time a cookie is tendered, permitting you to accept or decline cookies on an individual basis.'),
	(50,50,'title','policies','Internet-Based Advertising'),
	(51,51,'text','policies','Additionally, we may use third-party software to serve ads on our website and app, implement email marketing campaigns, and manage other interactive marketing initiatives.  This third-party software may use cookies or similar tracking technology to help manage and optimize your online experience with us.  For more information about opting-out of interest-based ads, visit the [Network Advertising Initiative Opt-Out Tool] or [Digital Advertising Alliance Opt-Out Tool].'),
	(52,52,'title','policies','Website Analytics'),
	(53,53,'text','policies','We may also partner with selected third-party vendors, such as [Google Analytics] and others, to allow tracking technologies and remarketing services on the website and our app through the use of first party cookies and third-party cookies, to, among other things, analyze and track users’ use of the website and the app, determine the popularity of certain content and better understand online activity. By accessing the website or our app, you consent to the collection and use of your information by these third-party vendors. You are encouraged to review their privacy policy and contact them directly for responses to your questions. We do not transfer personal information to these third-party vendors. However, if you do not want any information to be collected and used by tracking technologies, you can visit the third-party vendor or the [Network Advertising Initiative Opt-Out Tool] or [Digital Advertising Alliance Opt-Out Tool].\r\n\r\nYou should be aware that getting a new computer, installing a new browser, upgrading an existing browser, or erasing or otherwise altering your browser’s cookies files may also clear certain opt-out cookies, plug-ins, or settings.'),
	(54,54,'section','policies','THIRD-PARTY WEBSITES'),
	(55,55,'text','policies','The website and our app may contain links to third-party websites and applications of interest, including advertisements and external services, that are not affiliated with us. Once you have used these links to leave the website or our app, any information you provide to these third parties is not covered by this Privacy Policy, and we cannot guarantee the safety and privacy of your information. Before visiting and providing any information to any third-party websites, you should inform yourself of the privacy policies and practices (if any) of the third party responsible for that website, and should take those steps necessary to, in your discretion, protect the privacy of your information. We are not responsible for the content or privacy and security practices and policies of any third parties, including other sites, services or applications that may be linked to or from the Site [or our mobile application].'),
	(56,56,'section','policies','SECURITY OF YOUR INFORMATION'),
	(57,57,'text','policies','We use administrative, technical, and physical security measures to help protect your personal information.  While we have taken reasonable steps to secure the personal information you provide to us, please be aware that despite our efforts, no security measures are perfect or impenetrable, and no method of data transmission can be guaranteed against any interception or other type of misuse.  Any information disclosed online is vulnerable to interception and misuse by unauthorized parties. Therefore, we cannot guarantee complete security if you provide personal information.'),
	(58,58,'section','policies','POLICY FOR CHILDREN'),
	(59,59,'text','policies','We do not knowingly solicit information from or market to children under the age of 13. If you become aware of any data we have collected from children under age 13, please contact us using the contact information provided below. '),
	(60,60,'section','policies','CONTROLS FOR DO-NOT-TRACK FEATURES'),
	(61,61,'text','policies','Most web browsers and some mobile operating systems [and our mobile applications] include a Do-Not-Track (“DNT”) feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected.  No uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online.  If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this Privacy Policy./Most web browsers and some mobile operating systems [and our mobile applications] include a Do-Not-Track (“DNT”) feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. If you set the DNT signal on your browser, we will respond to such DNT browser signals.'),
	(62,62,'section','policies','OPTIONS REGARDING YOUR INFORMATION'),
	(63,63,'title','policies','Account Information'),
	(64,64,'text','policies','You may at any time review or change the information in your account or terminate your account by:\r\n\r\n- Logging into your account settings and updating your account\r\n\r\n- Contacting us using the contact information provided below\r\n\r\nUpon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, some information may be retained in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our Terms of Use and/or comply with legal requirements.]'),
	(65,65,'title','policies','Emails and Communications'),
	(66,66,'text','policies','If you no longer wish to receive correspondence, emails, or other communications from us, you may opt-out by:\r\n\r\n- Noting your preferences at the time you register your account with the app\r\n\r\n- Logging into your account settings and updating your preferences.\r\n\r\n- Contacting us using the contact information provided below\r\n\r\nIf you no longer wish to receive correspondence, emails, or other communications from third parties, you are responsible for contacting the third party directly.'),
	(67,67,'section','policies','CALIFORNIA PRIVACY RIGHTS'),
	(68,68,'text','policies','California Civil Code Section 1798.83, also known as the “Shine The Light” law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.\r\n\r\nIf you are under 18 years of age, reside in California, and have a registered account with the app, you have the right to request removal of unwanted data that you publicly post on the app. To request removal of such data, please contact us using the contact information provided below, and include the email address associated with your account and a statement that you reside in California.  We will make sure the data is not publicly displayed on the Site [or our mobile application], but please be aware that the data may not be completely or comprehensively removed from our systems.'),
	(69,69,'section','policies','CONTACT US'),
	(70,70,'text','policies','If you have questions or comments about this Privacy Policy, please contact us at:\r\n\r\nARTfora\r\nTriftstrasse 58\r\n13353 Berlin\r\nGermany\r\ncontact@artfora.net '),
	(71,1,'header','terms','ARTfora Terms and Conditions'),
	(72,2,'text','terms','Please read these terms and conditions carefully before using our ARTfora app.'),
	(73,3,'title','terms','Conditions of Use'),
	(74,4,'text','terms','We will provide our app and our services to you, which are subject to the conditions stated below in this document. Every time you use any of the services which out app provides, you accept the following conditions. This is why we urge you to read them carefully.'),
	(75,5,'title','terms','Privacy Policy'),
	(76,6,'text','terms','Before you continue using our app we advise you to read our privacy policy [link to privacy policy] regarding our user data collection. It will help you better understand our practices.'),
	(77,8,'text','terms','Content published in our app (digital downloads, images, texts, graphics, logos) is the property of ARTfora and/or its content creators and protected by international copyright laws. The entire compilation of the content found in this app is the exclusive property of ARTfora, with copyright authorship for this compilation by ARTfora.'),
	(78,9,'title','terms','Communications'),
	(79,10,'text','terms','The entire communication with us is electronic. Every time you send us an email or write us a message, you are going to be communicating with us. You hereby consent to receive communications from us. If you subscribe to receiving news, you are going to receive regular emails or messages from us. We will continue to communicate with you by posting news and by sending you emails and messages. You also agree that all notices, disclosures, agreements and other communications we provide to you electronically meet the legal requirements that such communications be in writing.'),
	(80,11,'title','terms','Applicable Law'),
	(81,12,'text','terms','By using our app, you agree that the laws of Germany, without regard to principles of conflict laws, will govern these terms and conditions, or any dispute of any sort that might come between ARTfora and you, or its business partners and associates.'),
	(82,13,'title','terms','Disputes'),
	(83,14,'text','terms','Any dispute related in any way to you using our app or to products you purchase from us shall be arbitrated by state or federal court of Germany and you consent to exclusive jurisdiction and venue of such courts.'),
	(84,15,'title','terms','Comments, Reviews, and Emails'),
	(85,16,'text','terms','Visitors may post content as long as it is not obscene, illegal, defamatory, threatening, infringing of intellectual property rights, invasive of privacy or injurious in any other way to third parties. Content has to be free of software viruses, political campaign, and commercial solicitation.\r\nWe reserve all rights (but not the obligation) to remove and/or edit such content. ARTfora will not claim non-exclusive, royalty-free and irrevocable right to use, reproduce, publish, modify such content throughout the world in any media. Material posted by the materials owner will not loose any rights over the material.'),
	(86,17,'title','terms','License and Site Access'),
	(87,18,'text','terms','We grant you a limited license to access and make personal use of out app. You are not allowed to download or modify it. This may be done only with written consent from us.'),
	(88,19,'title','terms','User Account'),
	(89,20,'text','terms','If you are an owner of an ARTfora account, you are solely responsible for maintaining the confidentiality of your private user details (username and password). You are responsible for all activities that occur under your account or password. If you should post material which does not belong to you or for which you do not won any right, you can be subject for legal actions from the materials owner.\r\nWe reserve all rights to terminate accounts, edit or remove content and cancel orders in their sole discretion.'),
	(90,7,'title','terms','Copyright');

/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Дамп таблицы user_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_detail`;

CREATE TABLE `user_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `filter` int NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privete_profile_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;

INSERT INTO `user_detail` (`id`, `user_id`, `filter`, `category`, `private_email`, `private_description`, `privete_profile_url`, `profile_image_url`, `email`, `private_name`, `public_name`, `description`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,2,4,'Community',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1643406521image.jpg','contact@artfora.net',NULL,'ARTfora','ARTfora is a place for artists and art lovers.','2022-01-27 15:17:51','2022-04-28 14:24:27',NULL),
	(2,1,4,'Community',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1643446674image.jpg','admin@artfora.net',NULL,'ARTfora Admin','ARTfora Administrator','2022-01-27 15:25:48','2022-01-29 10:57:54',NULL),
	(3,3,1,NULL,NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1643382260image.jpg','ktranekjer@me.com',NULL,'Tranekjer','Write your profile or description','2022-01-28 14:42:02','2022-01-28 17:04:20',NULL),
	(4,4,4,'Art lover',NULL,'The more private posts','https://artfora.net/images/profile_image/1643633015image.jpg','https://artfora.net/images/profile_image/1643813625image.jpg','contact@mindwerk.dk','Jimmy','Jimmy O','User number two','2022-01-28 15:33:13','2022-02-02 16:53:45',NULL),
	(5,5,4,'Artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1651221322image.jpg','atmancomic@gmail.com',NULL,'Atman Comic','Trying to learn Clip Studio Paint','2022-01-28 23:05:55','2022-04-29 11:35:22',NULL),
	(8,8,1,'Make-up artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16434622351image-1643462234.933721.jpeg',NULL,NULL,NULL,'⚰️','2022-01-29 15:17:15','2022-01-29 15:17:15',NULL),
	(9,9,3,'Musician',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1643570679image.jpg','bastiankrolzig@web.de',NULL,'Bastian Krolzig','Write your profile or description','2022-01-30 21:22:30','2022-01-30 21:24:39',NULL),
	(10,10,1,'Record label',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/1643618106image.jpg','info@discoanon.com',NULL,'Ken Avalon','Bringing back happiness and nostalgia in waveforms','2022-01-31 07:10:31','2022-01-31 10:35:06',NULL),
	(12,13,4,'Artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16483051641image-1648305163.770546.jpeg',NULL,NULL,NULL,'Italian painter','2022-03-26 16:32:44','2022-03-28 14:05:39',NULL),
	(14,18,4,'Art lover','netratechnosys123@gmail.com','This is my private account','https://artfora.net/images/profile_image/1649241333image.jpg','https://artfora.net/images/profile_image/16492411221image-1649241120.566382.jpeg',NULL,'Netra Pvt',NULL,'I m painter','2022-04-06 13:32:02','2022-04-06 13:35:33',NULL),
	(15,19,1,'3D artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16496875101image-1649687508.374223.jpeg',NULL,NULL,NULL,NULL,'2022-04-11 17:31:50','2022-04-11 17:31:50',NULL),
	(16,20,1,'3D artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16499947661image-1649994765.3406448.jpeg',NULL,NULL,NULL,NULL,'2022-04-15 06:52:46','2022-04-15 06:52:46',NULL),
	(17,21,1,'Artist',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16500090981image-1650009097.923821.jpeg',NULL,NULL,NULL,'Nerd arts','2022-04-15 10:51:38','2022-04-15 10:51:38',NULL),
	(18,25,4,'Musician',NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16500090981image-1650009097.923821.jpeg','bastiankrolzig@web.de',NULL,'Bastian Krolzig','Write your profile or description','2022-01-30 21:22:30','2022-04-28 09:39:15',NULL),
	(19,26,4,NULL,NULL,NULL,'https://artfora.net/images/profile_image/','https://artfora.net/images/profile_image/16512207671image-1651220767.273051.jpeg',NULL,NULL,NULL,NULL,'2022-04-29 11:26:07','2022-04-29 11:26:07',NULL),
	(20,30,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-06 16:42:20','2022-06-06 16:42:20',NULL),
	(21,31,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 09:05:23','2022-06-07 09:05:23',NULL),
	(22,32,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 12:02:49','2022-06-07 12:02:49',NULL),
	(23,33,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 12:17:31','2022-06-07 12:17:31',NULL),
	(24,34,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 12:21:51','2022-06-07 12:21:51',NULL),
	(25,35,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 12:28:50','2022-06-07 12:28:50',NULL),
	(26,36,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 12:53:32','2022-06-07 12:53:32',NULL),
	(27,37,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 14:48:30','2022-06-07 14:48:30',NULL),
	(28,38,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 14:51:34','2022-06-07 14:51:34',NULL),
	(29,39,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 15:27:19','2022-06-07 15:27:19',NULL),
	(30,40,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-07 16:47:44','2022-06-07 16:47:44',NULL);

/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы user_profile_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_profile_categories`;

CREATE TABLE `user_profile_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_profile_categories` WRITE;
/*!40000 ALTER TABLE `user_profile_categories` DISABLE KEYS */;

INSERT INTO `user_profile_categories` (`id`, `title`, `created_at`, `updated_at`)
VALUES
	(1,'3D artist','2021-08-26 14:34:43','2021-08-26 14:34:43'),
	(2,'Actor','2021-08-26 14:34:43','2021-08-26 14:34:43'),
	(3,'Agent','2021-08-26 14:34:58','2021-08-26 14:34:58'),
	(4,'Art lover','2021-08-26 14:34:58','2021-08-26 14:34:58'),
	(5,'Artist','2021-08-26 14:36:56','2021-08-26 14:36:56'),
	(6,'Community','2021-08-26 14:36:56','2021-08-26 14:36:56'),
	(7,'Dancer','2021-08-26 14:43:44','2021-08-26 14:36:56'),
	(8,'Director','2021-08-26 14:43:48','2021-08-26 14:36:56'),
	(9,'Gallery','2021-08-26 14:43:52','2021-08-26 14:36:56'),
	(10,'Hairstylist','2021-08-26 14:43:56','2021-08-26 14:36:56'),
	(11,'Make-up artist','2021-08-26 14:44:00','2021-08-26 14:36:56'),
	(12,'Model','2021-08-26 14:44:04','2021-08-26 14:36:56'),
	(13,'Musician','2021-08-26 14:44:08','2021-08-26 14:36:56'),
	(14,'Painter/sketcher','2021-08-26 14:44:12','2021-08-26 14:36:56'),
	(15,'Photographer','2021-08-26 14:44:16','2021-08-26 14:36:56'),
	(16,'Record label','2021-08-26 14:44:26','2021-08-26 14:36:56'),
	(17,'Sculpturer','2021-08-26 14:44:38','2021-08-26 14:36:56'),
	(18,'Seller','2021-08-26 14:44:42','2021-08-26 14:36:56'),
	(19,'Writer','2021-08-26 14:44:46','2021-08-26 14:36:56');

/*!40000 ALTER TABLE `user_profile_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы user_profile_view_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_profile_view_data`;

CREATE TABLE `user_profile_view_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `user_id` int NOT NULL,
  `user_url` varchar(555) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1386 DEFAULT CHARSET=latin1;

LOCK TABLES `user_profile_view_data` WRITE;
/*!40000 ALTER TABLE `user_profile_view_data` DISABLE KEYS */;

INSERT INTO `user_profile_view_data` (`id`, `ip`, `country`, `user_id`, `user_url`, `created_at`)
VALUES
	(6,'27.57.170.107','India',2,'https://dev.artfora.net/artfora','2022-06-01 14:03:56'),
	(5,'95.91.213.97','Germany',13,'https://dev.artfora.net/merisio.official','2022-06-01 12:24:27'),
	(3,'27.57.170.107','India',13,'https://dev.artfora.net/merisio.official','2022-06-01 12:22:51'),
	(4,'27.57.170.107','India',2,'https://dev.artfora.net/artfora','2022-06-01 12:23:27'),
	(7,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:40:13'),
	(8,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:40:19'),
	(9,'95.91.213.97','Germany',2,'https://dev.artfora.net/artfora','2022-06-01 14:42:18'),
	(10,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:44:24'),
	(11,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:44:31'),
	(12,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:44:45'),
	(13,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 14:45:15'),
	(14,'95.91.213.97','Germany',2,'https://dev.artfora.net/artfora','2022-06-01 14:49:17'),
	(15,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:44:50'),
	(16,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:45:02'),
	(17,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:45:08'),
	(18,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:45:09'),
	(19,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:45:11'),
	(20,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:46:40'),
	(21,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:46:44'),
	(22,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:50:50'),
	(23,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:50:51'),
	(24,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 15:50:52'),
	(25,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:02:44'),
	(26,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:02:46'),
	(27,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:02:52'),
	(28,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:03:01'),
	(29,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:03:35'),
	(30,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:03:36'),
	(31,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:03:37'),
	(32,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:06:43'),
	(33,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:06:46'),
	(34,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:07:00'),
	(35,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:07:08'),
	(36,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:31:26'),
	(37,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:31:37'),
	(38,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:31:42'),
	(39,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-01 16:31:43'),
	(40,'159.223.63.112','United States',0,'http://dev.artfora.net/.env','2022-06-01 20:04:42'),
	(41,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.bak','2022-06-01 20:04:42'),
	(42,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.backup','2022-06-01 20:04:43'),
	(43,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.local','2022-06-01 20:04:43'),
	(44,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.save','2022-06-01 20:04:43'),
	(45,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.stage','2022-06-01 20:04:44'),
	(46,'159.223.63.112','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-01 20:04:47'),
	(47,'159.223.63.112','United States',0,'http://dev.artfora.net/phpinfo','2022-06-01 20:04:47'),
	(48,'20.203.120.193','United States',0,'http://dev.artfora.net/radio.php','2022-06-02 00:04:15'),
	(49,'20.203.120.193','United States',0,'http://dev.artfora.net/ups.php','2022-06-02 00:04:16'),
	(50,'20.203.120.193','United States',0,'http://dev.artfora.net/media-admin.php','2022-06-02 00:04:19'),
	(51,'20.203.120.193','United States',0,'http://dev.artfora.net/xleet.php','2022-06-02 00:04:22'),
	(52,'20.203.120.193','United States',0,'http://dev.artfora.net/wp_wrong_datlib.php','2022-06-02 00:04:25'),
	(53,'20.203.120.193','United States',0,'http://dev.artfora.net/1index.php','2022-06-02 00:04:27'),
	(54,'20.203.120.193','United States',0,'http://dev.artfora.net/1337.php','2022-06-02 00:04:31'),
	(55,'20.203.120.193','United States',0,'http://dev.artfora.net/0byte.php','2022-06-02 00:04:34'),
	(56,'20.203.120.193','United States',0,'http://dev.artfora.net/autoload_classmap.php','2022-06-02 00:04:45'),
	(57,'20.203.120.193','United States',0,'http://dev.artfora.net/shell.php','2022-06-02 00:04:49'),
	(58,'20.203.120.193','United States',0,'http://dev.artfora.net/doc.php','2022-06-02 00:04:51'),
	(59,'20.203.120.193','United States',0,'http://dev.artfora.net/stindex.php','2022-06-02 00:04:53'),
	(60,'20.203.120.193','United States',0,'http://dev.artfora.net/alwso.php','2022-06-02 00:04:55'),
	(61,'20.203.120.193','United States',0,'http://dev.artfora.net/fx.php','2022-06-02 00:04:57'),
	(62,'20.203.120.193','United States',0,'http://dev.artfora.net/xleet-shell.php','2022-06-02 00:04:59'),
	(63,'20.203.120.193','United States',0,'http://dev.artfora.net/sym.php','2022-06-02 00:05:03'),
	(64,'20.203.120.193','United States',0,'http://dev.artfora.net/sym403.php','2022-06-02 00:05:05'),
	(65,'20.203.120.193','United States',0,'http://dev.artfora.net/fw.php','2022-06-02 00:05:07'),
	(66,'20.203.120.193','United States',0,'http://dev.artfora.net/xl.php','2022-06-02 00:05:09'),
	(67,'20.203.120.193','United States',0,'http://dev.artfora.net/symlink.php','2022-06-02 00:05:12'),
	(68,'20.203.120.193','United States',0,'http://dev.artfora.net/old-index.php','2022-06-02 00:05:15'),
	(69,'20.203.120.193','United States',0,'http://dev.artfora.net/shx.php','2022-06-02 00:05:18'),
	(70,'20.203.120.193','United States',0,'http://dev.artfora.net/alfa.php','2022-06-02 00:05:20'),
	(71,'20.203.120.193','United States',0,'http://dev.artfora.net/mini.php','2022-06-02 00:05:21'),
	(72,'20.203.120.193','United States',0,'http://dev.artfora.net/wikindex.php','2022-06-02 00:05:22'),
	(73,'20.203.120.193','United States',0,'http://dev.artfora.net/xindex.php','2022-06-02 00:05:26'),
	(74,'20.203.120.193','United States',0,'http://dev.artfora.net/kindex.php','2022-06-02 00:05:28'),
	(75,'20.203.120.193','United States',0,'http://dev.artfora.net/wp.php','2022-06-02 00:05:30'),
	(76,'20.203.120.193','United States',0,'http://dev.artfora.net/sindex.php','2022-06-02 00:05:32'),
	(77,'20.203.120.193','United States',0,'http://dev.artfora.net/baindex.php','2022-06-02 00:05:34'),
	(78,'20.203.120.193','United States',0,'http://dev.artfora.net/new-index.php','2022-06-02 00:05:36'),
	(79,'20.203.120.193','United States',0,'http://dev.artfora.net/qindex.php','2022-06-02 00:05:37'),
	(80,'20.203.120.193','United States',0,'http://dev.artfora.net/404.php','2022-06-02 00:05:39'),
	(81,'20.203.120.193','United States',0,'http://dev.artfora.net/403.php','2022-06-02 00:05:41'),
	(82,'20.203.120.193','United States',0,'http://dev.artfora.net/up.php','2022-06-02 00:05:43'),
	(83,'20.203.120.193','United States',0,'http://dev.artfora.net/c99.php','2022-06-02 00:05:48'),
	(84,'20.203.120.193','United States',0,'http://dev.artfora.net/xxx.php','2022-06-02 00:05:49'),
	(85,'20.203.120.193','United States',0,'http://dev.artfora.net/ok.php','2022-06-02 00:05:50'),
	(86,'20.203.120.193','United States',0,'http://dev.artfora.net/0.php','2022-06-02 00:05:52'),
	(87,'20.203.120.193','United States',0,'http://dev.artfora.net/x.php','2022-06-02 00:05:54'),
	(88,'20.203.120.193','United States',0,'http://dev.artfora.net/xx.php','2022-06-02 00:05:55'),
	(89,'20.203.120.193','United States',0,'http://dev.artfora.net/1.php','2022-06-02 00:05:58'),
	(90,'20.203.120.193','United States',0,'http://dev.artfora.net/2.php','2022-06-02 00:06:00'),
	(91,'20.203.120.193','United States',0,'http://dev.artfora.net/3.php','2022-06-02 00:06:01'),
	(92,'20.203.120.193','United States',0,'http://dev.artfora.net/4.php','2022-06-02 00:06:04'),
	(93,'20.203.120.193','United States',0,'http://dev.artfora.net/5.php','2022-06-02 00:06:06'),
	(94,'20.203.120.193','United States',0,'http://dev.artfora.net/6.php','2022-06-02 00:06:11'),
	(95,'20.203.120.193','United States',0,'http://dev.artfora.net/7.php','2022-06-02 00:06:14'),
	(96,'20.203.120.193','United States',0,'http://dev.artfora.net/8.php','2022-06-02 00:06:16'),
	(97,'20.203.120.193','United States',0,'http://dev.artfora.net/9.php','2022-06-02 00:06:18'),
	(98,'20.203.120.193','United States',0,'http://dev.artfora.net/10.php','2022-06-02 00:06:20'),
	(99,'20.203.120.193','United States',0,'http://dev.artfora.net/a.php','2022-06-02 00:06:22'),
	(100,'20.203.120.193','United States',0,'http://dev.artfora.net/z.php','2022-06-02 00:06:24'),
	(101,'20.203.120.193','United States',0,'http://dev.artfora.net/e.php','2022-06-02 00:06:26'),
	(102,'20.203.120.193','United States',0,'http://dev.artfora.net/r.php','2022-06-02 00:06:30'),
	(103,'20.203.120.193','United States',0,'http://dev.artfora.net/t.php','2022-06-02 00:06:32'),
	(104,'20.203.120.193','United States',0,'http://dev.artfora.net/y.php','2022-06-02 00:06:35'),
	(105,'20.203.120.193','United States',0,'http://dev.artfora.net/u.php','2022-06-02 00:06:36'),
	(106,'20.203.120.193','United States',0,'http://dev.artfora.net/i.php','2022-06-02 00:06:39'),
	(107,'20.203.120.193','United States',0,'http://dev.artfora.net/o.php','2022-06-02 00:06:41'),
	(108,'20.203.120.193','United States',0,'http://dev.artfora.net/p.php','2022-06-02 00:06:45'),
	(109,'20.203.120.193','United States',0,'http://dev.artfora.net/q.php','2022-06-02 00:06:47'),
	(110,'20.203.120.193','United States',0,'http://dev.artfora.net/s.php','2022-06-02 00:06:49'),
	(111,'20.203.120.193','United States',0,'http://dev.artfora.net/d.php','2022-06-02 00:06:52'),
	(112,'20.203.120.193','United States',0,'http://dev.artfora.net/f.php','2022-06-02 00:06:54'),
	(113,'20.203.120.193','United States',0,'http://dev.artfora.net/g.php','2022-06-02 00:06:56'),
	(114,'20.203.120.193','United States',0,'http://dev.artfora.net/h.php','2022-06-02 00:06:58'),
	(115,'20.203.120.193','United States',0,'http://dev.artfora.net/j.php','2022-06-02 00:07:01'),
	(116,'20.203.120.193','United States',0,'http://dev.artfora.net/k.php','2022-06-02 00:07:03'),
	(117,'20.203.120.193','United States',0,'http://dev.artfora.net/l.php','2022-06-02 00:07:05'),
	(118,'20.203.120.193','United States',0,'http://dev.artfora.net/m.php','2022-06-02 00:07:06'),
	(119,'20.203.120.193','United States',0,'http://dev.artfora.net/w.php','2022-06-02 00:07:09'),
	(120,'20.203.120.193','United States',0,'http://dev.artfora.net/v.php','2022-06-02 00:07:11'),
	(121,'20.203.120.193','United States',0,'http://dev.artfora.net/n.php','2022-06-02 00:07:16'),
	(122,'20.203.120.193','United States',0,'http://dev.artfora.net/b.php','2022-06-02 00:07:18'),
	(123,'20.203.120.193','United States',0,'http://dev.artfora.net/c.php','2022-06-02 00:07:21'),
	(124,'20.203.120.193','United States',0,'http://dev.artfora.net/data.php','2022-06-02 00:07:23'),
	(125,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-blog.php','2022-06-02 00:07:26'),
	(126,'20.203.120.193','United States',0,'http://dev.artfora.net/FoxWSO.php','2022-06-02 00:07:29'),
	(127,'20.203.120.193','United States',0,'http://dev.artfora.net/edit-form.php','2022-06-02 00:07:30'),
	(128,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-wso.php','2022-06-02 00:07:33'),
	(129,'20.203.120.193','United States',0,'http://dev.artfora.net/priv8.php','2022-06-02 00:07:34'),
	(130,'20.203.120.193','United States',0,'http://dev.artfora.net/minimo.php','2022-06-02 00:07:36'),
	(131,'20.203.120.193','United States',0,'http://dev.artfora.net/V3.php','2022-06-02 00:07:38'),
	(132,'20.203.120.193','United States',0,'http://dev.artfora.net/V5.php','2022-06-02 00:07:40'),
	(133,'20.203.120.193','United States',0,'http://dev.artfora.net/www.php','2022-06-02 00:07:42'),
	(134,'20.203.120.193','United States',0,'http://dev.artfora.net/100.php','2022-06-02 00:07:45'),
	(135,'20.203.120.193','United States',0,'http://dev.artfora.net/777.php','2022-06-02 00:07:47'),
	(136,'20.203.120.193','United States',0,'http://dev.artfora.net/xox.php','2022-06-02 00:07:49'),
	(137,'20.203.120.193','United States',0,'http://dev.artfora.net/new.php','2022-06-02 00:07:54'),
	(138,'20.203.120.193','United States',0,'http://dev.artfora.net/wi.php','2022-06-02 00:07:55'),
	(139,'20.203.120.193','United States',0,'http://dev.artfora.net/mar.php','2022-06-02 00:07:58'),
	(140,'20.203.120.193','United States',0,'http://dev.artfora.net/root.php','2022-06-02 00:07:59'),
	(141,'20.203.120.193','United States',0,'http://dev.artfora.net/nee.php','2022-06-02 00:08:03'),
	(142,'20.203.120.193','United States',0,'http://dev.artfora.net/ws.php','2022-06-02 00:08:04'),
	(143,'20.203.120.193','United States',0,'http://dev.artfora.net/lol.php','2022-06-02 00:08:07'),
	(144,'20.203.120.193','United States',0,'http://dev.artfora.net/87.php','2022-06-02 00:08:08'),
	(145,'20.203.120.193','United States',0,'http://dev.artfora.net/7yn.php','2022-06-02 00:08:10'),
	(146,'20.203.120.193','United States',0,'http://dev.artfora.net/haxor.php','2022-06-02 00:08:12'),
	(147,'20.203.120.193','United States',0,'http://dev.artfora.net/13.php','2022-06-02 00:08:13'),
	(148,'20.203.120.193','United States',0,'http://dev.artfora.net/FoxWSOv1.php','2022-06-02 00:08:15'),
	(149,'20.203.120.193','United States',0,'http://dev.artfora.net/alf.php','2022-06-02 00:08:17'),
	(150,'20.203.120.193','United States',0,'http://dev.artfora.net/bb.php','2022-06-02 00:08:21'),
	(151,'20.203.120.193','United States',0,'http://dev.artfora.net/lf.php','2022-06-02 00:08:23'),
	(152,'20.203.120.193','United States',0,'http://dev.artfora.net/WSO.php','2022-06-02 00:08:24'),
	(153,'20.203.120.193','United States',0,'http://dev.artfora.net/hello.php','2022-06-02 00:08:26'),
	(154,'20.203.120.193','United States',0,'http://dev.artfora.net/if.php','2022-06-02 00:08:29'),
	(155,'20.203.120.193','United States',0,'http://dev.artfora.net/kk.php','2022-06-02 00:08:32'),
	(156,'20.203.120.193','United States',0,'http://dev.artfora.net/mrjn.php','2022-06-02 00:08:34'),
	(157,'20.203.120.193','United States',0,'http://dev.artfora.net/kn.php','2022-06-02 00:08:37'),
	(158,'20.203.120.193','United States',0,'http://dev.artfora.net/3301.php','2022-06-02 00:08:41'),
	(159,'20.203.120.193','United States',0,'http://dev.artfora.net/leaf.php','2022-06-02 00:08:45'),
	(160,'20.203.120.193','United States',0,'http://dev.artfora.net/alex.php','2022-06-02 00:08:48'),
	(161,'20.203.120.193','United States',0,'http://dev.artfora.net/mailer.php','2022-06-02 00:08:52'),
	(162,'20.203.120.193','United States',0,'http://dev.artfora.net/anone.php','2022-06-02 00:08:55'),
	(163,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-configer.php','2022-06-02 00:08:57'),
	(164,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-ad.php','2022-06-02 00:08:59'),
	(165,'20.203.120.193','United States',0,'http://dev.artfora.net/send.php','2022-06-02 00:09:03'),
	(166,'20.203.120.193','United States',0,'http://dev.artfora.net/.wp-cache.php','2022-06-02 00:09:05'),
	(167,'20.203.120.193','United States',0,'http://dev.artfora.net/sendmail.php','2022-06-02 00:09:07'),
	(168,'20.203.120.193','United States',0,'http://dev.artfora.net/rahma.php','2022-06-02 00:09:10'),
	(169,'20.203.120.193','United States',0,'http://dev.artfora.net/nasgor.php','2022-06-02 00:09:11'),
	(170,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-confirm.php','2022-06-02 00:09:13'),
	(171,'20.203.120.193','United States',0,'http://dev.artfora.net/alfa123.php','2022-06-02 00:09:14'),
	(172,'20.203.120.193','United States',0,'http://dev.artfora.net/upload.php','2022-06-02 00:09:16'),
	(173,'20.203.120.193','United States',0,'http://dev.artfora.net/bypass.php','2022-06-02 00:09:19'),
	(174,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-one.php','2022-06-02 00:09:22'),
	(175,'20.203.120.193','United States',0,'http://dev.artfora.net/alexus.php','2022-06-02 00:09:23'),
	(176,'20.203.120.193','United States',0,'http://dev.artfora.net/wso1337.php','2022-06-02 00:09:25'),
	(177,'20.203.120.193','United States',0,'http://dev.artfora.net/blog.php','2022-06-02 00:09:29'),
	(178,'20.203.120.193','United States',0,'http://dev.artfora.net/it.php','2022-06-02 00:09:30'),
	(179,'20.203.120.193','United States',0,'http://dev.artfora.net/kiss.php','2022-06-02 00:09:32'),
	(180,'20.203.120.193','United States',0,'http://dev.artfora.net/wp2.php','2022-06-02 00:09:33'),
	(181,'20.203.120.193','United States',0,'http://dev.artfora.net/owl.php','2022-06-02 00:09:37'),
	(182,'20.203.120.193','United States',0,'http://dev.artfora.net/vuln.php','2022-06-02 00:09:40'),
	(183,'20.203.120.193','United States',0,'http://dev.artfora.net/ohayo.php','2022-06-02 00:09:42'),
	(184,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-admin.php','2022-06-02 00:09:44'),
	(185,'20.203.120.193','United States',0,'http://dev.artfora.net/cms.php','2022-06-02 00:09:46'),
	(186,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-uploads.php','2022-06-02 00:09:47'),
	(187,'20.203.120.193','United States',0,'http://dev.artfora.net/Gel.php','2022-06-02 00:09:49'),
	(188,'20.203.120.193','United States',0,'http://dev.artfora.net/41.php','2022-06-02 00:09:50'),
	(189,'20.203.120.193','United States',0,'http://dev.artfora.net/4price.php','2022-06-02 00:09:53'),
	(190,'20.203.120.193','United States',0,'http://dev.artfora.net/MARIJUANA.php','2022-06-02 00:09:55'),
	(191,'20.203.120.193','United States',0,'http://dev.artfora.net/.fk.php','2022-06-02 00:09:56'),
	(192,'20.203.120.193','United States',0,'http://dev.artfora.net/11index.php','2022-06-02 00:09:58'),
	(193,'20.203.120.193','United States',0,'http://dev.artfora.net/2index.php','2022-06-02 00:10:01'),
	(194,'20.203.120.193','United States',0,'http://dev.artfora.net/3index.php','2022-06-02 00:10:02'),
	(195,'20.203.120.193','United States',0,'http://dev.artfora.net/111nocache.php','2022-06-02 00:10:04'),
	(196,'20.203.120.193','United States',0,'http://dev.artfora.net/utchiha.php','2022-06-02 00:10:07'),
	(197,'20.203.120.193','United States',0,'http://dev.artfora.net/unix.php','2022-06-02 00:10:10'),
	(198,'20.203.120.193','United States',0,'http://dev.artfora.net/small.php','2022-06-02 00:10:15'),
	(199,'20.203.120.193','United States',0,'http://dev.artfora.net/wso.php','2022-06-02 00:10:19'),
	(200,'20.203.120.193','United States',0,'http://dev.artfora.net/XxX.php','2022-06-02 00:10:21'),
	(201,'20.203.120.193','United States',0,'http://dev.artfora.net/content.php','2022-06-02 00:10:22'),
	(202,'20.203.120.193','United States',0,'http://dev.artfora.net/olu.php','2022-06-02 00:10:23'),
	(203,'20.203.120.193','United States',0,'http://dev.artfora.net/rss.php','2022-06-02 00:10:25'),
	(204,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-file.php','2022-06-02 00:10:27'),
	(205,'20.203.120.193','United States',0,'http://dev.artfora.net/wso2.php','2022-06-02 00:10:29'),
	(206,'20.203.120.193','United States',0,'http://dev.artfora.net/wso1.php','2022-06-02 00:10:32'),
	(207,'20.203.120.193','United States',0,'http://dev.artfora.net/olux.php','2022-06-02 00:10:33'),
	(208,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-info.php','2022-06-02 00:10:35'),
	(209,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-confiig.php','2022-06-02 00:10:37'),
	(210,'20.203.120.193','United States',0,'http://dev.artfora.net/file-manager.php','2022-06-02 00:10:38'),
	(211,'20.203.120.193','United States',0,'http://dev.artfora.net/uploader.php','2022-06-02 00:10:41'),
	(212,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-02 09:46:56'),
	(213,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-02 09:48:46'),
	(214,'95.91.213.97','Germany',0,'https://dev.artfora.net/index','2022-06-02 09:48:53'),
	(215,'95.91.213.97','Germany',2,'https://dev.artfora.net/artfora','2022-06-02 09:49:04'),
	(216,'159.223.63.112','United States',0,'https://dev.artfora.net/.env','2022-06-02 16:08:49'),
	(217,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.bak','2022-06-02 16:08:50'),
	(218,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.backup','2022-06-02 16:08:50'),
	(219,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.local','2022-06-02 16:08:51'),
	(220,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.save','2022-06-02 16:08:51'),
	(221,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.stage','2022-06-02 16:08:51'),
	(222,'159.223.63.112','United States',0,'https://dev.artfora.net/phpinfo.php','2022-06-02 16:08:55'),
	(223,'159.223.63.112','United States',0,'https://dev.artfora.net/phpinfo','2022-06-02 16:08:56'),
	(224,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-02 16:43:52'),
	(225,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-02 16:43:53'),
	(226,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-02 16:43:53'),
	(227,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-02 16:43:54'),
	(228,'20.203.120.193','United States',0,'http://dev.artfora.net/radio.php','2022-06-02 16:47:10'),
	(229,'20.203.120.193','United States',0,'http://dev.artfora.net/ups.php','2022-06-02 16:47:14'),
	(230,'20.203.120.193','United States',0,'http://dev.artfora.net/media-admin.php','2022-06-02 16:47:15'),
	(231,'20.203.120.193','United States',0,'http://dev.artfora.net/xleet.php','2022-06-02 16:47:18'),
	(232,'20.203.120.193','United States',0,'http://dev.artfora.net/wp_wrong_datlib.php','2022-06-02 16:47:20'),
	(233,'20.203.120.193','United States',0,'http://dev.artfora.net/1index.php','2022-06-02 16:47:23'),
	(234,'20.203.120.193','United States',0,'http://dev.artfora.net/1337.php','2022-06-02 16:47:25'),
	(235,'20.203.120.193','United States',0,'http://dev.artfora.net/0byte.php','2022-06-02 16:47:27'),
	(236,'20.203.120.193','United States',0,'http://dev.artfora.net/autoload_classmap.php','2022-06-02 16:47:40'),
	(237,'20.203.120.193','United States',0,'http://dev.artfora.net/shell.php','2022-06-02 16:47:42'),
	(238,'20.203.120.193','United States',0,'http://dev.artfora.net/doc.php','2022-06-02 16:47:43'),
	(239,'20.203.120.193','United States',0,'http://dev.artfora.net/stindex.php','2022-06-02 16:47:45'),
	(240,'20.203.120.193','United States',0,'http://dev.artfora.net/alwso.php','2022-06-02 16:47:47'),
	(241,'20.203.120.193','United States',0,'http://dev.artfora.net/fx.php','2022-06-02 16:47:51'),
	(242,'20.203.120.193','United States',0,'http://dev.artfora.net/xleet-shell.php','2022-06-02 16:47:54'),
	(243,'20.203.120.193','United States',0,'http://dev.artfora.net/sym.php','2022-06-02 16:47:59'),
	(244,'20.203.120.193','United States',0,'http://dev.artfora.net/sym403.php','2022-06-02 16:48:02'),
	(245,'20.203.120.193','United States',0,'http://dev.artfora.net/fw.php','2022-06-02 16:48:04'),
	(246,'20.203.120.193','United States',0,'http://dev.artfora.net/xl.php','2022-06-02 16:48:07'),
	(247,'20.203.120.193','United States',0,'http://dev.artfora.net/symlink.php','2022-06-02 16:48:08'),
	(248,'20.203.120.193','United States',0,'http://dev.artfora.net/old-index.php','2022-06-02 16:48:11'),
	(249,'20.203.120.193','United States',0,'http://dev.artfora.net/shx.php','2022-06-02 16:48:13'),
	(250,'20.203.120.193','United States',0,'http://dev.artfora.net/alfa.php','2022-06-02 16:48:16'),
	(251,'20.203.120.193','United States',0,'http://dev.artfora.net/mini.php','2022-06-02 16:48:20'),
	(252,'20.203.120.193','United States',0,'http://dev.artfora.net/wikindex.php','2022-06-02 16:48:21'),
	(253,'20.203.120.193','United States',0,'http://dev.artfora.net/xindex.php','2022-06-02 16:48:24'),
	(254,'20.203.120.193','United States',0,'http://dev.artfora.net/kindex.php','2022-06-02 16:48:26'),
	(255,'20.203.120.193','United States',0,'http://dev.artfora.net/wp.php','2022-06-02 16:48:31'),
	(256,'20.203.120.193','United States',0,'http://dev.artfora.net/sindex.php','2022-06-02 16:48:34'),
	(257,'20.203.120.193','United States',0,'http://dev.artfora.net/baindex.php','2022-06-02 16:48:39'),
	(258,'20.203.120.193','United States',0,'http://dev.artfora.net/new-index.php','2022-06-02 16:48:42'),
	(259,'20.203.120.193','United States',0,'http://dev.artfora.net/qindex.php','2022-06-02 16:48:44'),
	(260,'20.203.120.193','United States',0,'http://dev.artfora.net/404.php','2022-06-02 16:48:47'),
	(261,'20.203.120.193','United States',0,'http://dev.artfora.net/403.php','2022-06-02 16:48:50'),
	(262,'20.203.120.193','United States',0,'http://dev.artfora.net/up.php','2022-06-02 16:48:53'),
	(263,'20.203.120.193','United States',0,'http://dev.artfora.net/c99.php','2022-06-02 16:48:55'),
	(264,'20.203.120.193','United States',0,'http://dev.artfora.net/xxx.php','2022-06-02 16:48:58'),
	(265,'20.203.120.193','United States',0,'http://dev.artfora.net/ok.php','2022-06-02 16:49:00'),
	(266,'20.203.120.193','United States',0,'http://dev.artfora.net/0.php','2022-06-02 16:49:03'),
	(267,'20.203.120.193','United States',0,'http://dev.artfora.net/x.php','2022-06-02 16:49:05'),
	(268,'20.203.120.193','United States',0,'http://dev.artfora.net/xx.php','2022-06-02 16:49:08'),
	(269,'20.203.120.193','United States',0,'http://dev.artfora.net/1.php','2022-06-02 16:49:10'),
	(270,'20.203.120.193','United States',0,'http://dev.artfora.net/2.php','2022-06-02 16:49:13'),
	(271,'20.203.120.193','United States',0,'http://dev.artfora.net/3.php','2022-06-02 16:49:15'),
	(272,'20.203.120.193','United States',0,'http://dev.artfora.net/4.php','2022-06-02 16:49:17'),
	(273,'20.203.120.193','United States',0,'http://dev.artfora.net/5.php','2022-06-02 16:49:19'),
	(274,'20.203.120.193','United States',0,'http://dev.artfora.net/6.php','2022-06-02 16:49:23'),
	(275,'20.203.120.193','United States',0,'http://dev.artfora.net/7.php','2022-06-02 16:49:24'),
	(276,'20.203.120.193','United States',0,'http://dev.artfora.net/8.php','2022-06-02 16:49:27'),
	(277,'20.203.120.193','United States',0,'http://dev.artfora.net/9.php','2022-06-02 16:49:29'),
	(278,'20.203.120.193','United States',0,'http://dev.artfora.net/10.php','2022-06-02 16:49:31'),
	(279,'20.203.120.193','United States',0,'http://dev.artfora.net/a.php','2022-06-02 16:49:34'),
	(280,'20.203.120.193','United States',0,'http://dev.artfora.net/z.php','2022-06-02 16:49:36'),
	(281,'20.203.120.193','United States',0,'http://dev.artfora.net/e.php','2022-06-02 16:49:40'),
	(282,'20.203.120.193','United States',0,'http://dev.artfora.net/r.php','2022-06-02 16:49:44'),
	(283,'20.203.120.193','United States',0,'http://dev.artfora.net/t.php','2022-06-02 16:49:46'),
	(284,'20.203.120.193','United States',0,'http://dev.artfora.net/y.php','2022-06-02 16:49:49'),
	(285,'20.203.120.193','United States',0,'http://dev.artfora.net/u.php','2022-06-02 16:49:50'),
	(286,'20.203.120.193','United States',0,'http://dev.artfora.net/i.php','2022-06-02 16:49:53'),
	(287,'20.203.120.193','United States',0,'http://dev.artfora.net/o.php','2022-06-02 16:49:56'),
	(288,'20.203.120.193','United States',0,'http://dev.artfora.net/p.php','2022-06-02 16:49:58'),
	(289,'20.203.120.193','United States',0,'http://dev.artfora.net/q.php','2022-06-02 16:50:00'),
	(290,'20.203.120.193','United States',0,'http://dev.artfora.net/s.php','2022-06-02 16:50:04'),
	(291,'20.203.120.193','United States',0,'http://dev.artfora.net/d.php','2022-06-02 16:50:07'),
	(292,'20.203.120.193','United States',0,'http://dev.artfora.net/f.php','2022-06-02 16:50:11'),
	(293,'20.203.120.193','United States',0,'http://dev.artfora.net/g.php','2022-06-02 16:50:12'),
	(294,'20.203.120.193','United States',0,'http://dev.artfora.net/h.php','2022-06-02 16:50:14'),
	(295,'20.203.120.193','United States',0,'http://dev.artfora.net/j.php','2022-06-02 16:50:15'),
	(296,'20.203.120.193','United States',0,'http://dev.artfora.net/k.php','2022-06-02 16:50:17'),
	(297,'20.203.120.193','United States',0,'http://dev.artfora.net/l.php','2022-06-02 16:50:19'),
	(298,'20.203.120.193','United States',0,'http://dev.artfora.net/m.php','2022-06-02 16:50:21'),
	(299,'20.203.120.193','United States',0,'http://dev.artfora.net/w.php','2022-06-02 16:50:23'),
	(300,'20.203.120.193','United States',0,'http://dev.artfora.net/v.php','2022-06-02 16:50:25'),
	(301,'20.203.120.193','United States',0,'http://dev.artfora.net/n.php','2022-06-02 16:50:28'),
	(302,'20.203.120.193','United States',0,'http://dev.artfora.net/b.php','2022-06-02 16:50:31'),
	(303,'20.203.120.193','United States',0,'http://dev.artfora.net/c.php','2022-06-02 16:50:34'),
	(304,'20.203.120.193','United States',0,'http://dev.artfora.net/data.php','2022-06-02 16:50:37'),
	(305,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-blog.php','2022-06-02 16:50:39'),
	(306,'20.203.120.193','United States',0,'http://dev.artfora.net/FoxWSO.php','2022-06-02 16:50:41'),
	(307,'20.203.120.193','United States',0,'http://dev.artfora.net/edit-form.php','2022-06-02 16:50:43'),
	(308,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-wso.php','2022-06-02 16:50:45'),
	(309,'20.203.120.193','United States',0,'http://dev.artfora.net/priv8.php','2022-06-02 16:50:47'),
	(310,'20.203.120.193','United States',0,'http://dev.artfora.net/minimo.php','2022-06-02 16:50:49'),
	(311,'20.203.120.193','United States',0,'http://dev.artfora.net/V3.php','2022-06-02 16:50:51'),
	(312,'20.203.120.193','United States',0,'http://dev.artfora.net/V5.php','2022-06-02 16:50:53'),
	(313,'20.203.120.193','United States',0,'http://dev.artfora.net/www.php','2022-06-02 16:50:55'),
	(314,'20.203.120.193','United States',0,'http://dev.artfora.net/100.php','2022-06-02 16:50:57'),
	(315,'20.203.120.193','United States',0,'http://dev.artfora.net/777.php','2022-06-02 16:50:59'),
	(316,'20.203.120.193','United States',0,'http://dev.artfora.net/xox.php','2022-06-02 16:51:02'),
	(317,'20.203.120.193','United States',0,'http://dev.artfora.net/new.php','2022-06-02 16:51:06'),
	(318,'20.203.120.193','United States',0,'http://dev.artfora.net/wi.php','2022-06-02 16:51:10'),
	(319,'20.203.120.193','United States',0,'http://dev.artfora.net/mar.php','2022-06-02 16:51:13'),
	(320,'20.203.120.193','United States',0,'http://dev.artfora.net/root.php','2022-06-02 16:51:16'),
	(321,'20.203.120.193','United States',0,'http://dev.artfora.net/nee.php','2022-06-02 16:51:21'),
	(322,'20.203.120.193','United States',0,'http://dev.artfora.net/ws.php','2022-06-02 16:51:24'),
	(323,'20.203.120.193','United States',0,'http://dev.artfora.net/lol.php','2022-06-02 16:51:25'),
	(324,'20.203.120.193','United States',0,'http://dev.artfora.net/87.php','2022-06-02 16:51:27'),
	(325,'20.203.120.193','United States',0,'http://dev.artfora.net/7yn.php','2022-06-02 16:51:30'),
	(326,'20.203.120.193','United States',0,'http://dev.artfora.net/haxor.php','2022-06-02 16:51:32'),
	(327,'20.203.120.193','United States',0,'http://dev.artfora.net/13.php','2022-06-02 16:51:35'),
	(328,'20.203.120.193','United States',0,'http://dev.artfora.net/FoxWSOv1.php','2022-06-02 16:51:36'),
	(329,'20.203.120.193','United States',0,'http://dev.artfora.net/alf.php','2022-06-02 16:51:39'),
	(330,'20.203.120.193','United States',0,'http://dev.artfora.net/bb.php','2022-06-02 16:51:41'),
	(331,'20.203.120.193','United States',0,'http://dev.artfora.net/lf.php','2022-06-02 16:51:43'),
	(332,'20.203.120.193','United States',0,'http://dev.artfora.net/WSO.php','2022-06-02 16:51:44'),
	(333,'20.203.120.193','United States',0,'http://dev.artfora.net/hello.php','2022-06-02 16:51:48'),
	(334,'20.203.120.193','United States',0,'http://dev.artfora.net/if.php','2022-06-02 16:51:51'),
	(335,'20.203.120.193','United States',0,'http://dev.artfora.net/kk.php','2022-06-02 16:51:54'),
	(336,'20.203.120.193','United States',0,'http://dev.artfora.net/mrjn.php','2022-06-02 16:51:58'),
	(337,'20.203.120.193','United States',0,'http://dev.artfora.net/kn.php','2022-06-02 16:52:02'),
	(338,'20.203.120.193','United States',0,'http://dev.artfora.net/3301.php','2022-06-02 16:52:04'),
	(339,'20.203.120.193','United States',0,'http://dev.artfora.net/leaf.php','2022-06-02 16:52:07'),
	(340,'20.203.120.193','United States',0,'http://dev.artfora.net/alex.php','2022-06-02 16:52:09'),
	(341,'20.203.120.193','United States',0,'http://dev.artfora.net/mailer.php','2022-06-02 16:52:11'),
	(342,'20.203.120.193','United States',0,'http://dev.artfora.net/anone.php','2022-06-02 16:52:12'),
	(343,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-configer.php','2022-06-02 16:52:15'),
	(344,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-ad.php','2022-06-02 16:52:17'),
	(345,'20.203.120.193','United States',0,'http://dev.artfora.net/send.php','2022-06-02 16:52:19'),
	(346,'20.203.120.193','United States',0,'http://dev.artfora.net/.wp-cache.php','2022-06-02 16:52:22'),
	(347,'20.203.120.193','United States',0,'http://dev.artfora.net/sendmail.php','2022-06-02 16:52:25'),
	(348,'20.203.120.193','United States',0,'http://dev.artfora.net/rahma.php','2022-06-02 16:52:27'),
	(349,'20.203.120.193','United States',0,'http://dev.artfora.net/nasgor.php','2022-06-02 16:52:28'),
	(350,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-confirm.php','2022-06-02 16:52:32'),
	(351,'20.203.120.193','United States',0,'http://dev.artfora.net/alfa123.php','2022-06-02 16:52:35'),
	(352,'20.203.120.193','United States',0,'http://dev.artfora.net/upload.php','2022-06-02 16:52:37'),
	(353,'20.203.120.193','United States',0,'http://dev.artfora.net/bypass.php','2022-06-02 16:52:39'),
	(354,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-one.php','2022-06-02 16:52:42'),
	(355,'20.203.120.193','United States',0,'http://dev.artfora.net/alexus.php','2022-06-02 16:52:44'),
	(356,'20.203.120.193','United States',0,'http://dev.artfora.net/wso1337.php','2022-06-02 16:52:46'),
	(357,'20.203.120.193','United States',0,'http://dev.artfora.net/blog.php','2022-06-02 16:52:49'),
	(358,'20.203.120.193','United States',0,'http://dev.artfora.net/it.php','2022-06-02 16:52:52'),
	(359,'20.203.120.193','United States',0,'http://dev.artfora.net/kiss.php','2022-06-02 16:52:54'),
	(360,'20.203.120.193','United States',0,'http://dev.artfora.net/wp2.php','2022-06-02 16:52:57'),
	(361,'20.203.120.193','United States',0,'http://dev.artfora.net/owl.php','2022-06-02 16:53:00'),
	(362,'20.203.120.193','United States',0,'http://dev.artfora.net/vuln.php','2022-06-02 16:53:02'),
	(363,'20.203.120.193','United States',0,'http://dev.artfora.net/ohayo.php','2022-06-02 16:53:06'),
	(364,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-admin.php','2022-06-02 16:53:08'),
	(365,'20.203.120.193','United States',0,'http://dev.artfora.net/cms.php','2022-06-02 16:53:10'),
	(366,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-uploads.php','2022-06-02 16:53:12'),
	(367,'20.203.120.193','United States',0,'http://dev.artfora.net/Gel.php','2022-06-02 16:53:15'),
	(368,'20.203.120.193','United States',0,'http://dev.artfora.net/41.php','2022-06-02 16:53:17'),
	(369,'20.203.120.193','United States',0,'http://dev.artfora.net/4price.php','2022-06-02 16:53:20'),
	(370,'20.203.120.193','United States',0,'http://dev.artfora.net/MARIJUANA.php','2022-06-02 16:53:22'),
	(371,'20.203.120.193','United States',0,'http://dev.artfora.net/.fk.php','2022-06-02 16:53:25'),
	(372,'20.203.120.193','United States',0,'http://dev.artfora.net/11index.php','2022-06-02 16:53:28'),
	(373,'20.203.120.193','United States',0,'http://dev.artfora.net/2index.php','2022-06-02 16:53:30'),
	(374,'20.203.120.193','United States',0,'http://dev.artfora.net/3index.php','2022-06-02 16:53:32'),
	(375,'20.203.120.193','United States',0,'http://dev.artfora.net/111nocache.php','2022-06-02 16:53:33'),
	(376,'20.203.120.193','United States',0,'http://dev.artfora.net/utchiha.php','2022-06-02 16:53:35'),
	(377,'20.203.120.193','United States',0,'http://dev.artfora.net/unix.php','2022-06-02 16:53:40'),
	(378,'20.203.120.193','United States',0,'http://dev.artfora.net/small.php','2022-06-02 16:53:44'),
	(379,'20.203.120.193','United States',0,'http://dev.artfora.net/wso.php','2022-06-02 16:53:51'),
	(380,'20.203.120.193','United States',0,'http://dev.artfora.net/XxX.php','2022-06-02 16:53:54'),
	(381,'20.203.120.193','United States',0,'http://dev.artfora.net/content.php','2022-06-02 16:53:56'),
	(382,'20.203.120.193','United States',0,'http://dev.artfora.net/olu.php','2022-06-02 16:53:59'),
	(383,'20.203.120.193','United States',0,'http://dev.artfora.net/rss.php','2022-06-02 16:54:03'),
	(384,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-file.php','2022-06-02 16:54:05'),
	(385,'20.203.120.193','United States',0,'http://dev.artfora.net/wso2.php','2022-06-02 16:54:07'),
	(386,'20.203.120.193','United States',0,'http://dev.artfora.net/wso1.php','2022-06-02 16:54:10'),
	(387,'20.203.120.193','United States',0,'http://dev.artfora.net/olux.php','2022-06-02 16:54:13'),
	(388,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-info.php','2022-06-02 16:54:15'),
	(389,'20.203.120.193','United States',0,'http://dev.artfora.net/wp-confiig.php','2022-06-02 16:54:17'),
	(390,'20.203.120.193','United States',0,'http://dev.artfora.net/file-manager.php','2022-06-02 16:54:21'),
	(391,'20.203.120.193','United States',0,'http://dev.artfora.net/uploader.php','2022-06-02 16:54:23'),
	(392,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-02 17:25:05'),
	(393,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-02 17:25:05'),
	(394,'122.170.19.67','India',0,'https://dev.artfora.net/adminer','2022-06-03 09:59:32'),
	(395,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 10:37:31'),
	(396,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 10:37:31'),
	(397,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 10:37:32'),
	(398,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 10:37:32'),
	(399,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 11:27:39'),
	(400,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 11:27:42'),
	(401,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 13:45:30'),
	(402,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 13:45:30'),
	(403,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 13:45:30'),
	(404,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 13:45:30'),
	(405,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 13:47:59'),
	(406,'95.91.213.97','$country',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 13:47:59'),
	(407,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 16:19:06'),
	(408,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 16:19:07'),
	(409,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 16:19:07'),
	(410,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 16:19:07'),
	(411,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 16:41:29'),
	(412,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 16:41:29'),
	(413,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 17:05:17'),
	(414,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 17:05:17'),
	(415,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 17:05:18'),
	(416,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 17:05:18'),
	(417,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 17:26:07'),
	(418,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 17:26:07'),
	(419,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 17:26:08'),
	(420,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 17:26:08'),
	(421,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-03 17:30:58'),
	(422,'95.91.213.97','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-03 17:30:59'),
	(423,'69.71.169.32','United States',0,'http://dev.artfora.net/class-wp-widget-archives.php','2022-06-04 03:25:52'),
	(424,'69.71.169.32','United States',0,'http://dev.artfora.net/3index.php','2022-06-04 03:25:53'),
	(425,'69.71.169.32','United States',0,'http://dev.artfora.net/admin.php','2022-06-04 03:25:53'),
	(426,'69.71.169.32','United States',0,'http://dev.artfora.net/wikindex.php','2022-06-04 03:25:54'),
	(427,'176.74.19.166','United Kingdom',0,'http://dev.artfora.net/wp-login.php','2022-06-04 23:26:29'),
	(428,'193.56.29.219','United Kingdom',0,'http://dev.artfora.net/.env','2022-06-05 03:44:32'),
	(429,'159.223.63.112','United States',0,'http://dev.artfora.net/.env','2022-06-05 16:12:47'),
	(430,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.bak','2022-06-05 16:12:48'),
	(431,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.backup','2022-06-05 16:12:48'),
	(432,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.local','2022-06-05 16:12:48'),
	(433,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.save','2022-06-05 16:12:49'),
	(434,'159.223.63.112','United States',0,'http://dev.artfora.net/.env.stage','2022-06-05 16:12:49'),
	(435,'159.223.63.112','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-05 16:12:52'),
	(436,'159.223.63.112','United States',0,'http://dev.artfora.net/phpinfo','2022-06-05 16:12:53'),
	(437,'20.203.198.169','United States',0,'http://dev.artfora.net/.env','2022-06-05 17:25:48'),
	(438,'159.223.63.112','United States',0,'https://dev.artfora.net/.env','2022-06-06 01:12:35'),
	(439,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.bak','2022-06-06 01:12:35'),
	(440,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.backup','2022-06-06 01:12:35'),
	(441,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.local','2022-06-06 01:12:36'),
	(442,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.save','2022-06-06 01:12:36'),
	(443,'159.223.63.112','United States',0,'https://dev.artfora.net/.env.stage','2022-06-06 01:12:36'),
	(444,'159.223.63.112','United States',0,'https://dev.artfora.net/phpinfo.php','2022-06-06 01:12:40'),
	(445,'159.223.63.112','United States',0,'https://dev.artfora.net/phpinfo','2022-06-06 01:12:40'),
	(446,'34.221.26.93','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-06 02:52:27'),
	(447,'34.221.26.93','United States',0,'http://dev.artfora.net/phpinfo','2022-06-06 02:52:28'),
	(448,'34.221.26.93','United States',0,'http://dev.artfora.net/aws.yml','2022-06-06 02:52:29'),
	(449,'34.221.26.93','United States',0,'http://dev.artfora.net/.env.bak','2022-06-06 02:52:30'),
	(450,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-06 15:40:41'),
	(451,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-06 15:40:41'),
	(452,'95.91.213.66','Germany',0,'https://dev.artfora.net/index','2022-06-06 16:43:04'),
	(453,'95.91.213.66','Germany',2,'https://dev.artfora.net/artfora','2022-06-06 16:44:55'),
	(454,'95.91.213.66','Germany',2,'https://dev.artfora.net/artfora','2022-06-06 16:53:38'),
	(455,'220.73.57.24','South Korea',0,'http://dev.artfora.net/wp-login.php','2022-06-06 18:17:36'),
	(456,'194.242.10.226','Norway',0,'http://dev.artfora.net/wp-login.php','2022-06-06 20:08:39'),
	(457,'182.77.116.227','India',2,'https://dev.artfora.net/artfora','2022-06-07 07:18:05'),
	(458,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 09:01:38'),
	(459,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 09:01:38'),
	(460,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 12:21:53'),
	(461,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 12:21:53'),
	(462,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 12:21:54'),
	(463,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 12:21:54'),
	(464,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 12:21:54'),
	(465,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 12:21:55'),
	(466,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 12:23:19'),
	(467,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 12:23:19'),
	(468,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 14:57:51'),
	(469,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 14:57:51'),
	(470,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 14:57:52'),
	(471,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 14:57:52'),
	(472,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 14:57:53'),
	(473,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 14:57:53'),
	(474,'95.91.213.66','Germany',0,'https://dev.artfora.net/index','2022-06-07 15:03:06'),
	(475,'95.91.213.66','Germany',0,'https://dev.artfora.net/index','2022-06-07 15:29:55'),
	(476,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 16:04:54'),
	(477,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 16:04:54'),
	(478,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 16:04:55'),
	(479,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 16:04:55'),
	(480,'182.77.116.227','India',0,'https://dev.artfora.net/index','2022-06-07 16:49:39'),
	(481,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-07 16:51:23'),
	(482,'95.91.213.66','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-07 16:51:23'),
	(483,'95.91.213.66','Germany',0,'https://dev.artfora.net/index','2022-06-07 16:51:40'),
	(484,'182.77.116.227','India',2,'https://dev.artfora.net/artfora','2022-06-07 16:52:47'),
	(485,'182.77.116.227','India',0,'https://dev.artfora.net/undefined','2022-06-07 17:02:28'),
	(486,'34.221.26.93','United States',0,'http://dev.artfora.net/.env','2022-06-08 02:34:02'),
	(487,'34.221.26.93','United States',0,'http://dev.artfora.net/.env','2022-06-08 02:34:02'),
	(488,'185.197.195.173','United States',0,'http://dev.artfora.net/wp-login.php','2022-06-10 03:36:23'),
	(489,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 09:29:27'),
	(490,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 09:29:28'),
	(491,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 11:36:28'),
	(492,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 11:36:28'),
	(493,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 11:36:29'),
	(494,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 11:36:29'),
	(495,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 11:50:04'),
	(496,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 11:50:05'),
	(497,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 16:08:08'),
	(498,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 16:08:09'),
	(499,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 16:08:09'),
	(500,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 16:08:09'),
	(501,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-13 21:05:55'),
	(502,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-13 21:05:55'),
	(503,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env','2022-06-14 17:14:34'),
	(504,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.bak','2022-06-14 17:14:35'),
	(505,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.backup','2022-06-14 17:14:35'),
	(506,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.local','2022-06-14 17:14:35'),
	(507,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.save','2022-06-14 17:14:36'),
	(508,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.stage','2022-06-14 17:14:36'),
	(509,'165.22.110.182','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-06-14 17:14:39'),
	(510,'165.22.110.182','Singapore',0,'http://dev.artfora.net/phpinfo','2022-06-14 17:14:40'),
	(511,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env','2022-06-15 02:16:06'),
	(512,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env.bak','2022-06-15 02:16:07'),
	(513,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env.backup','2022-06-15 02:16:07'),
	(514,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env.local','2022-06-15 02:16:08'),
	(515,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env.save','2022-06-15 02:16:08'),
	(516,'165.22.110.182','Singapore',0,'https://dev.artfora.net/.env.stage','2022-06-15 02:16:08'),
	(517,'165.22.110.182','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-06-15 02:16:11'),
	(518,'165.22.110.182','Singapore',0,'https://dev.artfora.net/phpinfo','2022-06-15 02:16:12'),
	(519,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-15 10:08:41'),
	(520,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-15 10:08:41'),
	(521,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-15 10:08:41'),
	(522,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-15 10:08:42'),
	(523,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-15 15:35:32'),
	(524,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-15 15:35:32'),
	(525,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-15 15:35:33'),
	(526,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-15 15:35:33'),
	(527,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env','2022-06-15 17:13:02'),
	(528,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.bak','2022-06-15 17:13:02'),
	(529,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.backup','2022-06-15 17:13:03'),
	(530,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.local','2022-06-15 17:13:03'),
	(531,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.save','2022-06-15 17:13:03'),
	(532,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.stage','2022-06-15 17:13:04'),
	(533,'165.22.110.182','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-06-15 17:13:08'),
	(534,'165.22.110.182','Singapore',0,'http://dev.artfora.net/phpinfo','2022-06-15 17:13:08'),
	(535,'35.211.94.153','United States',0,'http://dev.artfora.net/wp-login.php','2022-06-15 21:43:36'),
	(536,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 09:36:30'),
	(537,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 09:36:30'),
	(538,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 09:36:30'),
	(539,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 09:36:30'),
	(540,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/wp','2022-06-16 11:32:57'),
	(541,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/wordpress','2022-06-16 11:32:57'),
	(542,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/old','2022-06-16 11:32:57'),
	(543,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/blog','2022-06-16 11:32:58'),
	(544,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/demo','2022-06-16 11:32:58'),
	(545,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/backup','2022-06-16 11:32:58'),
	(546,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/new','2022-06-16 11:32:58'),
	(547,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/back','2022-06-16 11:32:58'),
	(548,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/shop','2022-06-16 11:32:58'),
	(549,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/bk','2022-06-16 11:32:59'),
	(550,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/test','2022-06-16 11:32:59'),
	(551,'130.162.36.142','Netherlands',0,'http://dev.artfora.net/WP','2022-06-16 11:32:59'),
	(552,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 11:59:27'),
	(553,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 11:59:27'),
	(554,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 11:59:27'),
	(555,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 11:59:28'),
	(556,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 13:56:04'),
	(557,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 13:56:04'),
	(558,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 13:56:05'),
	(559,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 13:56:05'),
	(560,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 14:07:15'),
	(561,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 14:07:16'),
	(562,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 14:07:16'),
	(563,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 14:07:16'),
	(564,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env','2022-06-16 14:37:09'),
	(565,'165.22.110.182','Singapore',0,'http://dev.artfora.net/.env.save','2022-06-16 14:37:09'),
	(566,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 14:51:50'),
	(567,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 14:51:50'),
	(568,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-16 14:51:51'),
	(569,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-16 14:51:51'),
	(570,'165.232.175.1','United States',0,'http://dev.artfora.net/.env','2022-06-16 23:40:05'),
	(571,'165.232.175.1','United States',0,'http://dev.artfora.net/.env.save','2022-06-16 23:40:06'),
	(572,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 14:39:40'),
	(573,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 14:39:40'),
	(574,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 14:39:41'),
	(575,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 14:39:41'),
	(576,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 15:43:19'),
	(577,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 15:43:20'),
	(578,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 15:43:20'),
	(579,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 15:43:20'),
	(580,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 15:53:57'),
	(581,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 15:53:58'),
	(582,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-17 15:53:58'),
	(583,'95.91.213.106','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-17 15:53:58'),
	(584,'156.67.222.207','Cyprus',0,'http://dev.artfora.net/defaul1.php','2022-06-17 16:51:38'),
	(585,'156.67.222.207','Cyprus',0,'http://dev.artfora.net/defau1t.php','2022-06-17 16:51:38'),
	(586,'156.67.222.207','Cyprus',0,'http://dev.artfora.net/defau11.php','2022-06-17 16:51:38'),
	(587,'165.232.175.0','United States',0,'http://dev.artfora.net/.env','2022-06-17 20:58:20'),
	(588,'165.232.175.0','United States',0,'http://dev.artfora.net/.env.bak','2022-06-17 20:58:21'),
	(589,'165.232.175.0','United States',0,'http://dev.artfora.net/.env.backup','2022-06-17 20:58:22'),
	(590,'165.232.175.0','United States',0,'http://dev.artfora.net/.env.local','2022-06-17 20:58:22'),
	(591,'165.232.175.0','United States',0,'http://dev.artfora.net/.env.save','2022-06-17 20:58:23'),
	(592,'165.232.175.0','United States',0,'http://dev.artfora.net/.env.stage','2022-06-17 20:58:24'),
	(593,'165.232.175.0','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-17 20:58:39'),
	(594,'165.232.175.0','United States',0,'http://dev.artfora.net/phpinfo','2022-06-17 20:58:39'),
	(595,'20.213.93.218','United States',0,'http://dev.artfora.net/.env','2022-06-18 21:55:12'),
	(596,'20.213.93.218','United States',0,'https://dev.artfora.net/.env','2022-06-18 21:55:24'),
	(597,'157.230.41.147','Singapore',0,'http://dev.artfora.net/.env','2022-06-19 00:11:36'),
	(598,'135.181.219.146','Germany',0,'http://dev.artfora.net/.env','2022-06-19 02:58:43'),
	(599,'135.181.219.146','Germany',0,'https://dev.artfora.net/.env','2022-06-19 02:58:44'),
	(600,'113.211.210.44','Malaysia',0,'http://dev.artfora.net/.env','2022-06-19 20:00:54'),
	(601,'113.211.210.44','Malaysia',0,'https://dev.artfora.net/.env','2022-06-19 20:00:56'),
	(602,'167.71.198.180','Singapore',0,'https://dev.artfora.net/.env','2022-06-20 02:35:05'),
	(603,'67.205.150.133','United States',0,'http://dev.artfora.net/.env','2022-06-20 03:18:14'),
	(604,'167.71.198.180','Singapore',0,'http://dev.artfora.net/.env','2022-06-20 06:47:18'),
	(605,'159.223.58.222','United States',0,'https://dev.artfora.net/.env','2022-06-20 17:27:39'),
	(606,'159.223.58.222','United States',0,'http://dev.artfora.net/.env','2022-06-21 03:14:32'),
	(607,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.bak','2022-06-21 03:14:33'),
	(608,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.backup','2022-06-21 03:14:34'),
	(609,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.local','2022-06-21 03:14:34'),
	(610,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.prod','2022-06-21 03:14:35'),
	(611,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.php','2022-06-21 03:14:36'),
	(612,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.save','2022-06-21 03:14:37'),
	(613,'159.223.58.222','United States',0,'http://dev.artfora.net/.env.stage','2022-06-21 03:14:37'),
	(614,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-21 03:14:50'),
	(615,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo','2022-06-21 03:14:50'),
	(616,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-21 16:14:01'),
	(617,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-21 16:14:01'),
	(618,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-21 17:23:04'),
	(619,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-21 17:23:04'),
	(620,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-21 17:23:05'),
	(621,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-21 17:23:05'),
	(622,'159.223.58.222','United States',0,'https://dev.artfora.net/.env','2022-06-22 11:45:53'),
	(623,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.bak','2022-06-22 11:45:54'),
	(624,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.backup','2022-06-22 11:45:54'),
	(625,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.local','2022-06-22 11:45:55'),
	(626,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.prod','2022-06-22 11:45:55'),
	(627,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.php','2022-06-22 11:45:55'),
	(628,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.save','2022-06-22 11:45:56'),
	(629,'159.223.58.222','United States',0,'https://dev.artfora.net/.env.stage','2022-06-22 11:45:56'),
	(630,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo.php','2022-06-22 11:46:02'),
	(631,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo','2022-06-22 11:46:02'),
	(632,'122.176.228.135','India',0,'https://dev.artfora.net/admin','2022-06-22 11:52:52'),
	(633,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 15:11:14'),
	(634,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 15:11:14'),
	(635,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 15:11:14'),
	(636,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 15:11:14'),
	(637,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 16:38:31'),
	(638,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 16:38:31'),
	(639,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 16:38:31'),
	(640,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 16:38:31'),
	(641,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 21:15:52'),
	(642,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 21:15:53'),
	(643,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-22 21:15:54'),
	(644,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-22 21:15:54'),
	(645,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo.php','2022-06-22 23:12:11'),
	(646,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo','2022-06-22 23:12:12'),
	(647,'51.79.144.41','Singapore',0,'http://dev.artfora.net/wp-login.php','2022-06-23 08:16:14'),
	(648,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo.php','2022-06-23 09:03:09'),
	(649,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo','2022-06-23 09:03:09'),
	(650,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-23 11:27:27'),
	(651,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-23 11:27:27'),
	(652,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-23 11:27:27'),
	(653,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-23 11:27:28'),
	(654,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-23 17:02:55'),
	(655,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-23 17:02:55'),
	(656,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-23 17:02:56'),
	(657,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-23 17:02:56'),
	(658,'40.81.232.185','India',0,'http://dev.artfora.net/wp','2022-06-24 02:25:31'),
	(659,'40.81.232.185','India',0,'http://dev.artfora.net/wordpress','2022-06-24 02:25:32'),
	(660,'40.81.232.185','India',0,'http://dev.artfora.net/blog','2022-06-24 02:25:34'),
	(661,'40.81.232.185','India',0,'http://dev.artfora.net/demo','2022-06-24 02:25:36'),
	(662,'40.81.232.185','India',0,'http://dev.artfora.net/new','2022-06-24 02:25:37'),
	(663,'40.81.232.185','India',0,'http://dev.artfora.net/timthumb.php','2022-06-24 02:25:42'),
	(664,'40.81.232.185','India',0,'http://dev.artfora.net/thumb.php','2022-06-24 02:25:43'),
	(665,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 09:50:11'),
	(666,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 09:50:11'),
	(667,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 09:50:12'),
	(668,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 09:50:12'),
	(669,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 10:06:07'),
	(670,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 10:06:07'),
	(671,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 10:06:08'),
	(672,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 10:06:08'),
	(673,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 18:31:41'),
	(674,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 18:31:41'),
	(675,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-24 18:31:42'),
	(676,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-24 18:31:42'),
	(677,'185.49.20.77','France',0,'http://dev.artfora.net/wp-login.php','2022-06-27 23:42:27'),
	(678,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-28 18:16:57'),
	(679,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-28 18:16:58'),
	(680,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-28 18:16:58'),
	(681,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-28 18:16:58'),
	(682,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 14:20:03'),
	(683,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 14:20:03'),
	(684,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 14:20:04'),
	(685,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 14:20:04'),
	(686,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 17:07:08'),
	(687,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 17:07:09'),
	(688,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 17:07:09'),
	(689,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 17:07:09'),
	(690,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 20:32:20'),
	(691,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 20:32:20'),
	(692,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-29 20:32:21'),
	(693,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-29 20:32:21'),
	(694,'116.62.49.96','China',0,'http://dev.artfora.net/wp-login.php','2022-06-30 00:58:16'),
	(695,'104.248.155.95','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-06-30 01:54:52'),
	(696,'104.248.155.95','Singapore',0,'http://dev.artfora.net/phpinfo','2022-06-30 01:54:52'),
	(697,'167.235.74.119','Germany',0,'http://dev.artfora.net/style.php','2022-06-30 08:39:19'),
	(698,'167.235.74.119','Germany',0,'http://dev.artfora.net/moduless.php','2022-06-30 08:39:31'),
	(699,'167.235.74.119','Germany',0,'http://dev.artfora.net/admin.php','2022-06-30 08:39:56'),
	(700,'167.235.74.119','Germany',0,'http://dev.artfora.net/boom.php','2022-06-30 08:40:25'),
	(701,'167.235.74.119','Germany',0,'http://dev.artfora.net/xmlrp.php','2022-06-30 08:41:29'),
	(702,'167.235.74.119','Germany',0,'http://dev.artfora.net/wpindex.php','2022-06-30 08:41:42'),
	(703,'167.235.74.119','Germany',0,'http://dev.artfora.net/larva.php','2022-06-30 08:41:55'),
	(704,'167.235.74.119','Germany',0,'http://dev.artfora.net/th3_err0r.php','2022-06-30 08:42:13'),
	(705,'167.235.74.119','Germany',0,'http://dev.artfora.net/alfindex.php','2022-06-30 08:42:26'),
	(706,'167.235.74.119','Germany',0,'http://dev.artfora.net/alfa.php','2022-06-30 08:42:39'),
	(707,'167.235.74.119','Germany',0,'http://dev.artfora.net/wp-booking.php','2022-06-30 08:42:59'),
	(708,'167.235.74.119','Germany',0,'http://dev.artfora.net/cindex.php','2022-06-30 08:43:15'),
	(709,'167.235.74.119','Germany',0,'http://dev.artfora.net/wp-1ogin_bak.php','2022-06-30 08:43:45'),
	(710,'167.235.74.119','Germany',0,'http://dev.artfora.net/old-index.php','2022-06-30 08:44:42'),
	(711,'167.235.74.119','Germany',0,'http://dev.artfora.net/config.bak.php','2022-06-30 08:44:56'),
	(712,'167.235.74.119','Germany',0,'http://dev.artfora.net/haders.php','2022-06-30 08:47:17'),
	(713,'167.235.74.119','Germany',0,'http://dev.artfora.net/legion.php','2022-06-30 08:47:44'),
	(714,'167.235.74.119','Germany',0,'http://dev.artfora.net/up.php','2022-06-30 08:48:43'),
	(715,'167.235.74.119','Germany',0,'http://dev.artfora.net/upload.php','2022-06-30 08:49:00'),
	(716,'167.235.74.119','Germany',0,'http://dev.artfora.net/config.php','2022-06-30 08:49:19'),
	(717,'167.235.74.119','Germany',0,'http://dev.artfora.net/test.php','2022-06-30 08:49:37'),
	(718,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 14:00:51'),
	(719,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 14:00:51'),
	(720,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 14:00:52'),
	(721,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 14:00:52'),
	(722,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 15:15:47'),
	(723,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 15:15:47'),
	(724,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 15:15:47'),
	(725,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 15:15:48'),
	(726,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 15:41:58'),
	(727,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 15:41:58'),
	(728,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 15:41:58'),
	(729,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 15:41:59'),
	(730,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 17:02:49'),
	(731,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 17:02:49'),
	(732,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-06-30 17:02:50'),
	(733,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-06-30 17:02:50'),
	(734,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo.php','2022-06-30 20:46:10'),
	(735,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo','2022-06-30 20:46:10'),
	(736,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo.php','2022-07-01 15:03:15'),
	(737,'159.223.58.222','United States',0,'https://dev.artfora.net/phpinfo','2022-07-01 15:03:15'),
	(738,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-01 16:48:34'),
	(739,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-01 16:48:34'),
	(740,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-01 16:48:35'),
	(741,'95.91.244.142','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-01 16:48:35'),
	(742,'149.18.50.22','United States',0,'http://dev.artfora.net/wp-login.php','2022-07-02 05:00:23'),
	(743,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo.php','2022-07-02 15:41:13'),
	(744,'159.223.58.222','United States',0,'http://dev.artfora.net/phpinfo','2022-07-02 15:41:13'),
	(745,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 11:25:25'),
	(746,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 11:25:26'),
	(747,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 11:25:26'),
	(748,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 11:25:26'),
	(749,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 12:13:57'),
	(750,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 12:13:57'),
	(751,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 12:13:57'),
	(752,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 12:13:58'),
	(753,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 13:03:37'),
	(754,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 13:03:37'),
	(755,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 13:03:38'),
	(756,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 13:03:38'),
	(757,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 13:15:19'),
	(758,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 13:15:19'),
	(759,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 13:15:19'),
	(760,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 13:15:19'),
	(761,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 14:10:57'),
	(762,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 14:10:57'),
	(763,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-05 14:10:58'),
	(764,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-05 14:10:58'),
	(765,'157.0.140.186','China',0,'http://dev.artfora.net/wp-login.php','2022-07-05 19:42:04'),
	(766,'220.73.57.24','South Korea',0,'http://dev.artfora.net/wp-login.php','2022-07-06 04:10:46'),
	(767,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-06 13:15:03'),
	(768,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-06 13:15:04'),
	(769,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-06 13:15:04'),
	(770,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-06 13:15:04'),
	(771,'213.136.93.169','Germany',0,'http://dev.artfora.net/wp-login.php','2022-07-07 01:02:57'),
	(772,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 11:47:30'),
	(773,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 11:47:31'),
	(774,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 11:55:18'),
	(775,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 11:55:18'),
	(776,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 11:55:18'),
	(777,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 11:55:19'),
	(778,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 12:18:55'),
	(779,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 12:18:56'),
	(780,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 12:18:56'),
	(781,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 12:18:56'),
	(782,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 12:37:44'),
	(783,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 12:37:44'),
	(784,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 13:53:28'),
	(785,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 13:53:28'),
	(786,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 13:53:28'),
	(787,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 13:53:28'),
	(788,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 16:01:56'),
	(789,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 16:01:57'),
	(790,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 16:01:57'),
	(791,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 16:01:57'),
	(792,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 16:38:01'),
	(793,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 16:38:01'),
	(794,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-07 16:38:02'),
	(795,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-07 16:38:02'),
	(796,'206.189.82.245','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-07-08 04:34:50'),
	(797,'206.189.82.245','Singapore',0,'http://dev.artfora.net/phpinfo','2022-07-08 04:34:50'),
	(798,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 10:37:15'),
	(799,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 10:37:15'),
	(800,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 10:37:15'),
	(801,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 10:37:15'),
	(802,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 10:37:20'),
	(803,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 10:37:20'),
	(804,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 11:58:04'),
	(805,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 11:58:04'),
	(806,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 11:58:05'),
	(807,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 11:58:05'),
	(808,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:17:52'),
	(809,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:17:52'),
	(810,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:17:53'),
	(811,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:17:53'),
	(812,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:34:30'),
	(813,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:34:30'),
	(814,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:34:30'),
	(815,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:34:30'),
	(816,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:55:35'),
	(817,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:55:35'),
	(818,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 12:55:36'),
	(819,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 12:55:36'),
	(820,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 13:05:09'),
	(821,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 13:05:10'),
	(822,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-08 13:05:10'),
	(823,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-08 13:05:10'),
	(824,'141.94.21.233','Switzerland',0,'http://dev.artfora.net/wp-login.php','2022-07-08 20:21:40'),
	(825,'206.189.82.245','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-07-09 00:24:13'),
	(826,'206.189.82.245','Singapore',0,'https://dev.artfora.net/phpinfo','2022-07-09 00:24:14'),
	(827,'206.189.82.245','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-07-09 21:58:18'),
	(828,'206.189.82.245','Singapore',0,'https://dev.artfora.net/phpinfo','2022-07-09 21:58:18'),
	(829,'151.80.20.26','France',0,'http://dev.artfora.net/wp-login.php','2022-07-11 00:17:54'),
	(830,'157.230.41.147','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-07-11 01:36:10'),
	(831,'157.230.41.147','Singapore',0,'http://dev.artfora.net/phpinfo','2022-07-11 01:36:10'),
	(832,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 13:56:23'),
	(833,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 13:56:23'),
	(834,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 13:56:23'),
	(835,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 13:56:23'),
	(836,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 14:58:40'),
	(837,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 14:58:41'),
	(838,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 14:58:41'),
	(839,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 14:58:41'),
	(840,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 20:05:16'),
	(841,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 20:05:16'),
	(842,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-13 20:05:17'),
	(843,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-13 20:05:17'),
	(844,'159.223.87.139','United States',0,'http://dev.artfora.net/phpinfo.php','2022-07-13 22:25:20'),
	(845,'159.223.87.139','United States',0,'http://dev.artfora.net/phpinfo','2022-07-13 22:25:21'),
	(846,'173.212.250.201','Germany',0,'http://dev.artfora.net/wp-blockup.php','2022-07-14 10:31:58'),
	(847,'173.212.250.201','Germany',0,'http://dev.artfora.net/wp-beckup.php','2022-07-14 10:31:58'),
	(848,'173.212.250.201','Germany',0,'http://dev.artfora.net/wp-blockdown.php','2022-07-14 10:31:58'),
	(849,'173.212.250.201','Germany',0,'http://dev.artfora.net/wp-blog-post.php','2022-07-14 10:31:58'),
	(850,'173.212.250.201','Germany',0,'http://dev.artfora.net/wp-stream.php','2022-07-14 10:31:58'),
	(851,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-14 15:10:44'),
	(852,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-14 15:10:44'),
	(853,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-14 15:10:45'),
	(854,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-14 15:10:45'),
	(855,'20.12.228.155','United States',0,'http://dev.artfora.net/xmlrpc.php','2022-07-15 10:32:32'),
	(856,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-15 14:11:59'),
	(857,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-15 14:11:59'),
	(858,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-15 14:11:59'),
	(859,'95.91.213.93','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-15 14:12:00'),
	(860,'212.83.186.254','France',0,'http://dev.artfora.net/wp-login.php','2022-07-16 13:42:47'),
	(861,'206.189.82.245','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-07-17 16:06:52'),
	(862,'206.189.82.245','Singapore',0,'http://dev.artfora.net/phpinfo','2022-07-17 16:06:56'),
	(863,'93.113.111.193','United Kingdom',0,'http://dev.artfora.net/wp-login.php','2022-07-18 00:01:08'),
	(864,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-18 13:43:02'),
	(865,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-18 13:43:03'),
	(866,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-18 13:43:03'),
	(867,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-18 13:43:03'),
	(868,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-18 14:16:15'),
	(869,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-18 14:16:15'),
	(870,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-18 14:16:16'),
	(871,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-18 14:16:16'),
	(872,'157.230.242.100','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-07-18 15:30:26'),
	(873,'157.230.242.100','Singapore',0,'https://dev.artfora.net/phpinfo','2022-07-18 15:30:27'),
	(874,'188.166.184.239','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-07-19 03:10:33'),
	(875,'188.166.184.239','Singapore',0,'https://dev.artfora.net/phpinfo','2022-07-19 03:10:35'),
	(876,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-19 14:22:24'),
	(877,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-19 14:22:24'),
	(878,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-19 14:22:25'),
	(879,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-19 14:22:25'),
	(880,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-19 15:56:59'),
	(881,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-19 15:56:59'),
	(882,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-19 15:56:59'),
	(883,'95.91.244.194','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-19 15:57:00'),
	(884,'80.241.209.240','Germany',0,'http://dev.artfora.net/wp-login.php','2022-07-19 20:36:03'),
	(885,'34.68.135.154','United States',0,'http://dev.artfora.net/phpinfo.php','2022-07-21 02:15:47'),
	(886,'34.68.135.154','United States',0,'http://dev.artfora.net/phpinfo','2022-07-21 02:15:48'),
	(887,'35.226.20.18','United States',0,'http://dev.artfora.net/phpinfo.php','2022-07-21 04:11:36'),
	(888,'35.226.20.18','United States',0,'http://dev.artfora.net/phpinfo','2022-07-21 04:11:37'),
	(889,'34.68.135.154','United States',0,'https://dev.artfora.net/phpinfo.php','2022-07-21 13:56:48'),
	(890,'34.68.135.154','United States',0,'https://dev.artfora.net/phpinfo','2022-07-21 13:56:50'),
	(891,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-21 15:06:00'),
	(892,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-21 15:06:00'),
	(893,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-21 15:06:00'),
	(894,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-21 15:06:01'),
	(895,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-21 18:03:07'),
	(896,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-21 18:03:07'),
	(897,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-21 18:03:07'),
	(898,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-21 18:03:08'),
	(899,'108.170.7.26','United States',0,'http://dev.artfora.net/wp-login.php','2022-07-21 22:38:55'),
	(900,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-22 09:54:20'),
	(901,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-22 09:54:21'),
	(902,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-22 09:54:21'),
	(903,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-22 09:54:21'),
	(904,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-22 13:49:45'),
	(905,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-22 13:49:45'),
	(906,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-22 13:49:46'),
	(907,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-22 13:49:46'),
	(908,'155.133.132.66','France',0,'http://dev.artfora.net/wp-login.php','2022-07-22 20:42:38'),
	(909,'184.154.139.49','United States',0,'https://dev.artfora.net/user_register','2022-07-24 01:20:07'),
	(910,'46.174.100.19','Serbia',0,'http://dev.artfora.net/wp-blockup.php','2022-07-25 06:28:36'),
	(911,'46.174.100.19','Serbia',0,'http://dev.artfora.net/wp-beckup.php','2022-07-25 06:28:36'),
	(912,'46.174.100.19','Serbia',0,'http://dev.artfora.net/wp-blockdown.php','2022-07-25 06:28:36'),
	(913,'46.174.100.19','Serbia',0,'http://dev.artfora.net/wp-stream.php','2022-07-25 06:28:36'),
	(914,'46.174.100.19','Serbia',0,'http://dev.artfora.net/wp-blog-post.php','2022-07-25 06:28:36'),
	(915,'104.248.155.95','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-07-26 06:40:37'),
	(916,'104.248.155.95','Singapore',0,'http://dev.artfora.net/phpinfo','2022-07-26 06:40:38'),
	(917,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 10:43:02'),
	(918,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 10:43:02'),
	(919,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 10:43:02'),
	(920,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 10:43:02'),
	(921,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 12:24:07'),
	(922,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 12:24:07'),
	(923,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 12:24:07'),
	(924,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 12:24:07'),
	(925,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 22:48:27'),
	(926,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 22:48:27'),
	(927,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-07-26 22:48:27'),
	(928,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-07-26 22:48:28'),
	(929,'199.15.251.34','United States',0,'http://dev.artfora.net/wp-login.php','2022-07-27 00:33:15'),
	(930,'104.248.145.93','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-07-27 20:49:53'),
	(931,'104.248.145.93','Singapore',0,'https://dev.artfora.net/phpinfo','2022-07-27 20:49:54'),
	(932,'159.89.206.234','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-07-29 07:21:40'),
	(933,'159.89.206.234','Singapore',0,'http://dev.artfora.net/phpinfo','2022-07-29 07:21:45'),
	(934,'178.128.169.213','United Kingdom',0,'http://dev.artfora.net/wp-login.php','2022-07-29 11:04:48'),
	(935,'185.175.45.32','Russia',0,'http://dev.artfora.net/wp-login.php','2022-07-30 00:39:25'),
	(936,'20.109.101.102','United States',0,'http://dev.artfora.net/wp-login.php','2022-07-30 23:45:10'),
	(937,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-01 13:48:25'),
	(938,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-01 13:48:25'),
	(939,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-01 13:48:25'),
	(940,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-01 13:48:26'),
	(941,'62.109.5.125','Russia',0,'http://dev.artfora.net/wp-login.php','2022-08-01 19:30:00'),
	(942,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-01 19:47:27'),
	(943,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-01 19:47:27'),
	(944,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 12:33:00'),
	(945,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 12:33:00'),
	(946,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 12:33:00'),
	(947,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 12:33:00'),
	(948,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 12:37:37'),
	(949,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 12:37:37'),
	(950,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 12:37:38'),
	(951,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 12:37:38'),
	(952,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 13:09:26'),
	(953,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 13:09:26'),
	(954,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 13:09:26'),
	(955,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 13:09:26'),
	(956,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 15:00:17'),
	(957,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 15:00:17'),
	(958,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 15:00:18'),
	(959,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 15:00:18'),
	(960,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 15:17:21'),
	(961,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 15:17:22'),
	(962,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 15:17:22'),
	(963,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 15:17:22'),
	(964,'158.170.35.87','Chile',0,'http://dev.artfora.net/wp-login.php','2022-08-02 20:46:25'),
	(965,'45.61.146.241','United States',0,'http://dev.artfora.net/wp-login.php','2022-08-02 21:22:58'),
	(966,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-02 22:56:38'),
	(967,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-02 22:56:38'),
	(968,'173.212.236.106','Germany',0,'http://dev.artfora.net/wordpress','2022-08-03 01:19:33'),
	(969,'173.212.236.106','Germany',0,'http://dev.artfora.net/wp','2022-08-03 01:19:33'),
	(970,'173.212.236.106','Germany',0,'http://dev.artfora.net/bc','2022-08-03 01:19:33'),
	(971,'173.212.236.106','Germany',0,'http://dev.artfora.net/bk','2022-08-03 01:19:33'),
	(972,'173.212.236.106','Germany',0,'http://dev.artfora.net/backup','2022-08-03 01:19:33'),
	(973,'173.212.236.106','Germany',0,'http://dev.artfora.net/old','2022-08-03 01:19:34'),
	(974,'173.212.236.106','Germany',0,'http://dev.artfora.net/new','2022-08-03 01:19:34'),
	(975,'173.212.236.106','Germany',0,'http://dev.artfora.net/main','2022-08-03 01:19:34'),
	(976,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-03 12:31:33'),
	(977,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-03 12:31:34'),
	(978,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-03 12:31:34'),
	(979,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-03 12:31:34'),
	(980,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-04 16:27:43'),
	(981,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-04 16:27:43'),
	(982,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-04 16:27:44'),
	(983,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-04 16:27:44'),
	(984,'107.180.107.103','United States',0,'http://dev.artfora.net/wp-login.php','2022-08-04 23:22:48'),
	(985,'193.176.230.188','Spain',0,'http://dev.artfora.net/wp-login.php','2022-08-06 23:54:59'),
	(986,'195.74.55.92','United Kingdom',0,'http://dev.artfora.net/wp-commentin.php','2022-08-07 15:35:22'),
	(987,'38.242.218.121','United States',0,'http://dev.artfora.net/wp-login.php','2022-08-07 22:16:49'),
	(988,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-08 19:55:21'),
	(989,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-08 19:55:21'),
	(990,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-08 19:55:22'),
	(991,'95.91.214.125','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-08 19:55:22'),
	(992,'91.215.191.57','Russia',0,'http://dev.artfora.net/wp-login.php','2022-08-08 23:44:28'),
	(993,'209.124.88.143','United States',0,'http://dev.artfora.net/wp-login.php','2022-08-11 23:30:52'),
	(994,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-08-12 06:01:54'),
	(995,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo','2022-08-12 06:01:56'),
	(996,'171.244.17.110','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-08-12 18:18:10'),
	(997,'147.182.245.65','United States',0,'http://dev.artfora.net/wordpress','2022-08-12 21:16:47'),
	(998,'147.182.245.65','United States',0,'http://dev.artfora.net/wp','2022-08-12 21:16:47'),
	(999,'147.182.245.65','United States',0,'http://dev.artfora.net/blog','2022-08-12 21:16:48'),
	(1000,'147.182.245.65','United States',0,'http://dev.artfora.net/new','2022-08-12 21:16:49'),
	(1001,'147.182.245.65','United States',0,'http://dev.artfora.net/old','2022-08-12 21:16:49'),
	(1002,'147.182.245.65','United States',0,'http://dev.artfora.net/test','2022-08-12 21:16:50'),
	(1003,'147.182.245.65','United States',0,'http://dev.artfora.net/main','2022-08-12 21:16:50'),
	(1004,'147.182.245.65','United States',0,'http://dev.artfora.net/site','2022-08-12 21:16:51'),
	(1005,'147.182.245.65','United States',0,'http://dev.artfora.net/backup','2022-08-12 21:16:52'),
	(1006,'147.182.245.65','United States',0,'http://dev.artfora.net/demo','2022-08-12 21:16:52'),
	(1007,'147.182.245.65','United States',0,'http://dev.artfora.net/tmp','2022-08-12 21:16:53'),
	(1008,'147.182.245.65','United States',0,'http://dev.artfora.net/cms','2022-08-12 21:16:54'),
	(1009,'147.182.245.65','United States',0,'http://dev.artfora.net/dev','2022-08-12 21:16:54'),
	(1010,'147.182.245.65','United States',0,'http://dev.artfora.net/portal','2022-08-12 21:16:55'),
	(1011,'147.182.245.65','United States',0,'http://dev.artfora.net/web','2022-08-12 21:16:56'),
	(1012,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-08-13 01:58:02'),
	(1013,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo','2022-08-13 01:58:02'),
	(1014,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-08-13 13:25:11'),
	(1015,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo','2022-08-13 13:25:12'),
	(1016,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-08-13 22:31:16'),
	(1017,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo','2022-08-13 22:31:17'),
	(1018,'124.40.255.186','Indonesia',0,'http://dev.artfora.net/wp-login.php','2022-08-14 08:19:09'),
	(1019,'3.38.148.254','South Korea',2,'https://dev.artfora.net/artfora','2022-08-15 02:35:43'),
	(1020,'3.38.148.254','South Korea',5,'https://dev.artfora.net/atman_comic','2022-08-15 02:35:44'),
	(1021,'3.38.148.254','South Korea',13,'https://dev.artfora.net/merisio.official','2022-08-15 02:35:44'),
	(1022,'3.38.148.254','South Korea',21,'https://dev.artfora.net/aksonerdarts','2022-08-15 02:35:45'),
	(1023,'3.38.148.254','South Korea',8,'https://dev.artfora.net/sophie.schoentod','2022-08-15 02:35:45'),
	(1024,'3.38.148.254','South Korea',0,'https://dev.artfora.net/index','2022-08-15 02:35:46'),
	(1025,'193.151.131.160','Iran',0,'http://dev.artfora.net/wp-login.php','2022-08-15 23:42:21'),
	(1026,'173.249.0.74','Germany',0,'http://dev.artfora.net/wordpress','2022-08-16 01:10:07'),
	(1027,'173.249.0.74','Germany',0,'http://dev.artfora.net/wp','2022-08-16 01:10:07'),
	(1028,'173.249.0.74','Germany',0,'http://dev.artfora.net/bc','2022-08-16 01:10:08'),
	(1029,'173.249.0.74','Germany',0,'http://dev.artfora.net/bk','2022-08-16 01:10:08'),
	(1030,'173.249.0.74','Germany',0,'http://dev.artfora.net/backup','2022-08-16 01:10:08'),
	(1031,'173.249.0.74','Germany',0,'http://dev.artfora.net/old','2022-08-16 01:10:08'),
	(1032,'173.249.0.74','Germany',0,'http://dev.artfora.net/new','2022-08-16 01:10:08'),
	(1033,'173.249.0.74','Germany',0,'http://dev.artfora.net/main','2022-08-16 01:10:08'),
	(1034,'157.245.146.143','Singapore',0,'http://dev.artfora.net/wp-commentin.php','2022-08-16 08:23:42'),
	(1035,'95.91.214.161','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-08-16 10:12:28'),
	(1036,'95.91.214.161','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-08-16 10:12:28'),
	(1037,'188.165.202.227','France',0,'http://dev.artfora.net/wp-login.php','2022-08-17 02:18:47'),
	(1038,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-08-18 04:25:16'),
	(1039,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo','2022-08-18 04:25:17'),
	(1040,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-08-18 14:15:24'),
	(1041,'165.22.255.105','Singapore',0,'http://dev.artfora.net/phpinfo','2022-08-18 14:15:25'),
	(1042,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-08-19 01:41:24'),
	(1043,'165.22.255.105','Singapore',0,'https://dev.artfora.net/phpinfo','2022-08-19 01:41:27'),
	(1044,'139.196.152.3','China',0,'http://dev.artfora.net/wp-login.php','2022-08-19 06:51:39'),
	(1045,'159.65.131.157','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-08-19 11:39:58'),
	(1046,'159.65.131.157','Singapore',0,'https://dev.artfora.net/phpinfo','2022-08-19 11:40:02'),
	(1047,'185.105.187.186','Iran',0,'http://dev.artfora.net/wp-login.php','2022-08-22 22:52:35'),
	(1048,'5.101.157.29','Russia',0,'http://dev.artfora.net/wp-commentin.php','2022-08-23 18:27:33'),
	(1049,'159.223.95.44','United States',0,'http://dev.artfora.net/phpinfo.php','2022-08-24 13:31:27'),
	(1050,'159.223.95.44','United States',0,'http://dev.artfora.net/phpinfo','2022-08-24 13:31:31'),
	(1051,'51.15.22.197','Netherlands',0,'http://dev.artfora.net/wp-login.php','2022-08-25 02:26:41'),
	(1052,'159.223.95.44','United States',0,'https://dev.artfora.net/phpinfo.php','2022-08-26 16:38:00'),
	(1053,'159.223.95.44','United States',0,'https://dev.artfora.net/phpinfo','2022-08-26 16:38:01'),
	(1054,'206.81.18.4','Germany',0,'http://dev.artfora.net/wp-login.php','2022-08-27 01:58:47'),
	(1055,'185.208.79.215','Iran',0,'http://dev.artfora.net/wp-login.php','2022-08-28 00:17:55'),
	(1056,'82.80.230.228','Israel',2,'https://dev.artfora.net/artfora','2022-08-30 20:39:18'),
	(1057,'82.80.230.228','Israel',21,'https://dev.artfora.net/aksonerdarts','2022-08-30 20:39:19'),
	(1058,'82.80.230.228','Israel',13,'https://dev.artfora.net/merisio.official','2022-08-30 20:39:20'),
	(1059,'82.80.230.228','Israel',5,'https://dev.artfora.net/atman_comic','2022-08-30 20:39:26'),
	(1060,'82.80.230.228','Israel',8,'https://dev.artfora.net/sophie.schoentod','2022-08-30 20:39:27'),
	(1061,'82.80.230.228','Israel',0,'https://dev.artfora.net/index','2022-08-30 20:39:36'),
	(1062,'45.251.112.118','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-09-01 01:03:37'),
	(1063,'20.169.9.92','United States',0,'//cpanel','2022-09-01 18:19:11'),
	(1064,'103.152.164.156','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-09-01 19:18:06'),
	(1065,'185.46.121.66','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-03 07:30:49'),
	(1066,'65.108.249.166','United States',0,'http://dev.artfora.net/style.php','2022-09-05 00:31:34'),
	(1067,'65.108.249.166','United States',0,'http://dev.artfora.net/moduless.php','2022-09-05 00:31:38'),
	(1068,'65.108.249.166','United States',0,'http://dev.artfora.net/admin.php','2022-09-05 00:31:45'),
	(1069,'65.108.249.166','United States',0,'http://dev.artfora.net/boom.php','2022-09-05 00:31:58'),
	(1070,'65.108.249.166','United States',0,'http://dev.artfora.net/xmlrp.php','2022-09-05 00:32:19'),
	(1071,'65.108.249.166','United States',0,'http://dev.artfora.net/wpindex.php','2022-09-05 00:32:25'),
	(1072,'65.108.249.166','United States',0,'http://dev.artfora.net/larva.php','2022-09-05 00:32:30'),
	(1073,'65.108.249.166','United States',0,'http://dev.artfora.net/th3_err0r.php','2022-09-05 00:32:34'),
	(1074,'65.108.249.166','United States',0,'http://dev.artfora.net/alfindex.php','2022-09-05 00:32:39'),
	(1075,'65.108.249.166','United States',0,'http://dev.artfora.net/alfa.php','2022-09-05 00:32:41'),
	(1076,'65.108.249.166','United States',0,'http://dev.artfora.net/wp-booking.php','2022-09-05 00:32:46'),
	(1077,'65.108.249.166','United States',0,'http://dev.artfora.net/cindex.php','2022-09-05 00:32:54'),
	(1078,'65.108.249.166','United States',0,'http://dev.artfora.net/wp-1ogin_bak.php','2022-09-05 00:33:09'),
	(1079,'65.108.249.166','United States',0,'http://dev.artfora.net/old-index.php','2022-09-05 00:33:25'),
	(1080,'65.108.249.166','United States',0,'http://dev.artfora.net/config.bak.php','2022-09-05 00:33:29'),
	(1081,'65.108.249.166','United States',0,'http://dev.artfora.net/haders.php','2022-09-05 00:34:48'),
	(1082,'65.108.249.166','United States',0,'http://dev.artfora.net/legion.php','2022-09-05 00:35:05'),
	(1083,'65.108.249.166','United States',0,'http://dev.artfora.net/up.php','2022-09-05 00:35:33'),
	(1084,'65.108.249.166','United States',0,'http://dev.artfora.net/upload.php','2022-09-05 00:35:39'),
	(1085,'65.108.249.166','United States',0,'http://dev.artfora.net/config.php','2022-09-05 00:35:49'),
	(1086,'65.108.249.166','United States',0,'http://dev.artfora.net/test.php','2022-09-05 00:35:54'),
	(1087,'159.223.95.44','United States',0,'http://dev.artfora.net/phpinfo.php','2022-09-05 11:53:56'),
	(1088,'159.223.95.44','United States',0,'http://dev.artfora.net/phpinfo','2022-09-05 11:54:00'),
	(1089,'20.118.160.11','United States',0,'http://dev.artfora.net/wp','2022-09-05 22:30:03'),
	(1090,'20.118.160.11','United States',0,'http://dev.artfora.net/wordpress','2022-09-05 22:30:05'),
	(1091,'20.118.160.11','United States',0,'http://dev.artfora.net/blog','2022-09-05 22:30:06'),
	(1092,'20.118.160.11','United States',0,'http://dev.artfora.net/demo','2022-09-05 22:30:08'),
	(1093,'20.118.160.11','United States',0,'http://dev.artfora.net/new','2022-09-05 22:30:09'),
	(1094,'20.118.160.11','United States',0,'http://dev.artfora.net/timthumb.php','2022-09-05 22:30:14'),
	(1095,'20.118.160.11','United States',0,'http://dev.artfora.net/thumb.php','2022-09-05 22:30:15'),
	(1096,'18.234.51.107','United States',0,'http://dev.artfora.net/wp-load.php','2022-09-07 07:50:34'),
	(1097,'18.234.51.107','United States',0,'http://dev.artfora.net/style.php','2022-09-07 07:50:34'),
	(1098,'18.234.51.107','United States',0,'http://dev.artfora.net/admin.php','2022-09-07 07:50:35'),
	(1099,'18.234.51.107','United States',0,'http://dev.artfora.net/old-index.php','2022-09-07 07:50:36'),
	(1100,'18.234.51.107','United States',0,'http://dev.artfora.net/radio.php','2022-09-07 07:50:37'),
	(1101,'18.234.51.107','United States',0,'http://dev.artfora.net/style.php','2022-09-07 07:50:39'),
	(1102,'18.234.51.107','United States',0,'http://dev.artfora.net/s_e.php','2022-09-07 07:50:40'),
	(1103,'18.234.51.107','United States',0,'http://dev.artfora.net/s_ne.php','2022-09-07 07:50:40'),
	(1104,'18.234.51.107','United States',0,'http://dev.artfora.net/1index.php','2022-09-07 07:50:41'),
	(1105,'18.234.51.107','United States',0,'http://dev.artfora.net/radio.php','2022-09-07 07:50:41'),
	(1106,'18.234.51.107','United States',0,'http://dev.artfora.net/doc.php','2022-09-07 07:50:42'),
	(1107,'18.234.51.107','United States',0,'http://dev.artfora.net/wp_wrong_datlib.php','2022-09-07 07:50:43'),
	(1108,'18.234.51.107','United States',0,'http://dev.artfora.net/beence.php','2022-09-07 07:50:43'),
	(1109,'18.234.51.107','United States',0,'http://dev.artfora.net/ups.php','2022-09-07 07:50:44'),
	(1110,'18.234.51.107','United States',0,'http://dev.artfora.net/wp-signin.php','2022-09-07 07:50:44'),
	(1111,'18.234.51.107','United States',0,'http://dev.artfora.net/media-admin.php','2022-09-07 07:50:45'),
	(1112,'18.234.51.107','United States',0,'http://dev.artfora.net/export.php','2022-09-07 07:50:47'),
	(1113,'18.234.51.107','United States',0,'http://dev.artfora.net/defau1t.php','2022-09-07 07:50:50'),
	(1114,'18.234.51.107','United States',0,'http://dev.artfora.net/moduless.php','2022-09-07 07:50:50'),
	(1115,'18.234.51.107','United States',0,'http://dev.artfora.net/wp-booking.php','2022-09-07 07:50:51'),
	(1116,'18.234.51.107','United States',0,'http://dev.artfora.net/config.bak.php','2022-09-07 07:50:54'),
	(1117,'18.234.51.107','United States',0,'http://dev.artfora.net/legion.php','2022-09-07 07:50:56'),
	(1118,'18.234.51.107','United States',0,'http://dev.artfora.net/wp-plugins.php','2022-09-07 07:50:58'),
	(1119,'18.234.51.107','United States',0,'http://dev.artfora.net/gank.php.PhP','2022-09-07 07:50:58'),
	(1120,'18.234.51.107','United States',0,'http://dev.artfora.net/archives.php','2022-09-07 07:51:02'),
	(1121,'18.234.51.107','United States',0,'http://dev.artfora.net/defau11.php','2022-09-07 07:51:03'),
	(1122,'18.234.51.107','United States',0,'http://dev.artfora.net/system_log.php','2022-09-07 07:51:06'),
	(1123,'18.234.51.107','United States',0,'http://dev.artfora.net/wp-backup-sql-302.php','2022-09-07 07:51:08'),
	(1124,'18.234.51.107','United States',0,'http://dev.artfora.net/error.php','2022-09-07 07:51:08'),
	(1125,'18.234.51.107','United States',0,'http://dev.artfora.net/ALFA_DATA','2022-09-07 07:51:09'),
	(1126,'18.234.51.107','United States',0,'http://dev.artfora.net/alfacgiapi','2022-09-07 07:51:10'),
	(1127,'18.234.51.107','United States',0,'http://dev.artfora.net/cgialfa','2022-09-07 07:51:12'),
	(1128,'18.234.51.107','United States',0,'http://dev.artfora.net/olux.php','2022-09-07 07:51:47'),
	(1129,'18.234.51.107','United States',0,'http://dev.artfora.net/xleet.php','2022-09-07 07:51:48'),
	(1130,'18.234.51.107','United States',0,'http://dev.artfora.net/wso.php','2022-09-07 07:51:48'),
	(1131,'18.234.51.107','United States',0,'http://dev.artfora.net/shell.php','2022-09-07 07:51:48'),
	(1132,'18.234.51.107','United States',0,'http://dev.artfora.net/up.php','2022-09-07 07:51:48'),
	(1133,'18.234.51.107','United States',0,'http://dev.artfora.net/upload.php','2022-09-07 07:51:49'),
	(1134,'18.234.51.107','United States',0,'http://dev.artfora.net/1.php','2022-09-07 07:51:49'),
	(1135,'18.234.51.107','United States',0,'http://dev.artfora.net/x.php','2022-09-07 07:51:49'),
	(1136,'18.234.51.107','United States',0,'http://dev.artfora.net/z.php','2022-09-07 07:51:49'),
	(1137,'18.234.51.107','United States',0,'http://dev.artfora.net/a.php','2022-09-07 07:51:51'),
	(1138,'18.234.51.107','United States',0,'http://dev.artfora.net/test.php','2022-09-07 07:51:51'),
	(1139,'18.234.51.107','United States',0,'http://dev.artfora.net/wp.php','2022-09-07 07:51:52'),
	(1140,'18.234.51.107','United States',0,'http://dev.artfora.net/alfa.php','2022-09-07 07:51:52'),
	(1141,'18.234.51.107','United States',0,'http://dev.artfora.net/config.php','2022-09-07 07:51:52'),
	(1142,'18.234.51.107','United States',0,'http://dev.artfora.net/about.php','2022-09-07 07:51:53'),
	(1143,'18.234.51.107','United States',0,'http://dev.artfora.net/shells.php','2022-09-07 07:51:53'),
	(1144,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-07 11:01:06'),
	(1145,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-07 11:01:06'),
	(1146,'178.128.215.181','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-09-07 18:14:47'),
	(1147,'178.128.215.181','Singapore',0,'https://dev.artfora.net/phpinfo','2022-09-07 18:14:49'),
	(1148,'20.163.72.80','United States',0,'http://dev.artfora.net/xmlrpc.php','2022-09-07 22:16:07'),
	(1149,'209.126.8.92','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-08 01:19:57'),
	(1150,'107.180.103.185','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-08 23:42:08'),
	(1151,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-09 09:30:23'),
	(1152,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-09 09:30:23'),
	(1153,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-09 09:30:23'),
	(1154,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-09 09:30:24'),
	(1155,'45.32.100.154','Singapore',0,'http://dev.artfora.net/wp-login.php','2022-09-10 01:55:53'),
	(1156,'178.128.215.181','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-09-12 18:51:06'),
	(1157,'178.128.215.181','Singapore',0,'http://dev.artfora.net/phpinfo','2022-09-12 18:51:13'),
	(1158,'65.108.62.76','United States',0,'http://dev.artfora.net/wp-commentin.php','2022-09-14 09:25:32'),
	(1159,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-14 11:03:57'),
	(1160,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-14 11:03:57'),
	(1161,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-14 11:03:58'),
	(1162,'95.91.245.235','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-14 11:03:58'),
	(1163,'165.232.183.66','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-14 23:18:17'),
	(1164,'164.68.106.210','Germany',0,'http://dev.artfora.net/wordpress','2022-09-15 02:54:37'),
	(1165,'164.68.106.210','Germany',0,'http://dev.artfora.net/wp','2022-09-15 02:54:37'),
	(1166,'164.68.106.210','Germany',0,'http://dev.artfora.net/bc','2022-09-15 02:54:38'),
	(1167,'164.68.106.210','Germany',0,'http://dev.artfora.net/bk','2022-09-15 02:54:38'),
	(1168,'164.68.106.210','Germany',0,'http://dev.artfora.net/backup','2022-09-15 02:54:38'),
	(1169,'164.68.106.210','Germany',0,'http://dev.artfora.net/old','2022-09-15 02:54:38'),
	(1170,'164.68.106.210','Germany',0,'http://dev.artfora.net/new','2022-09-15 02:54:38'),
	(1171,'164.68.106.210','Germany',0,'http://dev.artfora.net/main','2022-09-15 02:54:38'),
	(1172,'20.168.126.245','United States',0,'http://dev.artfora.net/wp-plain.php','2022-09-15 04:06:58'),
	(1173,'20.168.126.245','United States',0,'http://dev.artfora.net/oldmxljj.php','2022-09-15 04:06:59'),
	(1174,'20.168.126.245','United States',0,'https://dev.artfora.net/wp-plain.php','2022-09-15 04:06:59'),
	(1175,'20.168.126.245','United States',0,'https://dev.artfora.net/fekojxyi.php','2022-09-15 04:07:00'),
	(1176,'159.223.95.44','United States',0,'https://dev.artfora.net/phpinfo.php','2022-09-15 05:17:35'),
	(1177,'159.223.95.44','United States',0,'https://dev.artfora.net/phpinfo','2022-09-15 05:17:39'),
	(1178,'46.101.157.99','Germany',0,'http://dev.artfora.net/wp-login.php','2022-09-17 05:49:51'),
	(1179,'184.168.125.241','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-17 22:40:51'),
	(1180,'198.136.54.132','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-19 08:39:22'),
	(1181,'109.233.192.83','Moldova',0,'http://dev.artfora.net/wp-login.php','2022-09-20 05:02:07'),
	(1182,'107.180.247.212','United States',0,'http://dev.artfora.net/wp-login.php','2022-09-22 00:45:36'),
	(1183,'209.97.168.64','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-09-22 21:38:53'),
	(1184,'209.97.168.64','Singapore',0,'http://dev.artfora.net/phpinfo','2022-09-22 21:38:55'),
	(1185,'142.44.193.80','Canada',0,'http://dev.artfora.net/phpinfo','2022-09-23 01:50:58'),
	(1186,'142.44.193.80','Canada',0,'http://dev.artfora.net/phpinfo.php','2022-09-23 01:50:59'),
	(1187,'209.97.168.64','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-09-24 03:14:57'),
	(1188,'209.97.168.64','Singapore',0,'https://dev.artfora.net/phpinfo','2022-09-24 03:14:58'),
	(1189,'65.21.254.223','Germany',0,'http://dev.artfora.net/1index.php','2022-09-24 16:26:58'),
	(1190,'65.21.254.223','Germany',0,'https://dev.artfora.net/1index.php','2022-09-24 16:27:04'),
	(1191,'65.21.254.223','Germany',0,'http://dev.artfora.net/shell4.php','2022-09-24 16:27:08'),
	(1192,'65.21.254.223','Germany',0,'https://dev.artfora.net/shell4.php','2022-09-24 16:27:11'),
	(1193,'65.21.254.223','Germany',0,'http://dev.artfora.net/ru.php','2022-09-24 16:27:16'),
	(1194,'65.21.254.223','Germany',0,'https://dev.artfora.net/ru.php','2022-09-24 16:27:19'),
	(1195,'65.21.254.223','Germany',0,'http://dev.artfora.net/saudi.php','2022-09-24 16:27:21'),
	(1196,'65.21.254.223','Germany',0,'https://dev.artfora.net/saudi.php','2022-09-24 16:27:26'),
	(1197,'207.180.240.189','Germany',0,'http://dev.artfora.net/wordpress','2022-09-26 14:19:08'),
	(1198,'207.180.240.189','Germany',0,'http://dev.artfora.net/wp','2022-09-26 14:19:09'),
	(1199,'207.180.240.189','Germany',0,'http://dev.artfora.net/bc','2022-09-26 14:19:10'),
	(1200,'207.180.240.189','Germany',0,'http://dev.artfora.net/bk','2022-09-26 14:19:11'),
	(1201,'207.180.240.189','Germany',0,'http://dev.artfora.net/backup','2022-09-26 14:19:13'),
	(1202,'207.180.240.189','Germany',0,'http://dev.artfora.net/old','2022-09-26 14:19:13'),
	(1203,'207.180.240.189','Germany',0,'http://dev.artfora.net/new','2022-09-26 14:19:14'),
	(1204,'207.180.240.189','Germany',0,'http://dev.artfora.net/main','2022-09-26 14:19:16'),
	(1205,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-28 16:01:52'),
	(1206,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-28 16:01:52'),
	(1207,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-09-28 16:01:53'),
	(1208,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-09-28 16:01:53'),
	(1209,'54.38.44.6','France',0,'http://dev.artfora.net/wp-login.php','2022-09-28 23:49:07'),
	(1210,'104.238.128.153','United States',0,'http://dev.artfora.net/style.php','2022-09-29 16:24:51'),
	(1211,'46.101.150.34','Germany',0,'http://dev.artfora.net/wp-login.php','2022-09-29 21:23:46'),
	(1212,'111.90.145.188','Malaysia',0,'http://dev.artfora.net/wp-login.php','2022-09-30 05:47:55'),
	(1213,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-02 20:09:16'),
	(1214,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-02 20:09:16'),
	(1215,'103.124.95.210','Vietnam',0,'http://dev.artfora.net/wp-22.php','2022-10-03 00:59:35'),
	(1216,'178.254.50.208','Germany',0,'http://dev.artfora.net/style.php','2022-10-03 12:41:02'),
	(1217,'142.44.193.80','Canada',0,'http://dev.artfora.net/phpinfo','2022-10-07 05:08:14'),
	(1218,'142.44.193.80','Canada',0,'http://dev.artfora.net/phpinfo.php','2022-10-07 05:08:16'),
	(1219,'5.189.171.179','Germany',0,'http://dev.artfora.net/wordpress','2022-10-07 11:39:35'),
	(1220,'5.189.171.179','Germany',0,'http://dev.artfora.net/wp','2022-10-07 11:39:35'),
	(1221,'5.189.171.179','Germany',0,'http://dev.artfora.net/bc','2022-10-07 11:39:35'),
	(1222,'5.189.171.179','Germany',0,'http://dev.artfora.net/bk','2022-10-07 11:39:35'),
	(1223,'5.189.171.179','Germany',0,'http://dev.artfora.net/backup','2022-10-07 11:39:35'),
	(1224,'5.189.171.179','Germany',0,'http://dev.artfora.net/old','2022-10-07 11:39:36'),
	(1225,'5.189.171.179','Germany',0,'http://dev.artfora.net/new','2022-10-07 11:39:36'),
	(1226,'5.189.171.179','Germany',0,'http://dev.artfora.net/main','2022-10-07 11:39:36'),
	(1227,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-07 14:13:55'),
	(1228,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-07 14:13:55'),
	(1229,'46.161.27.153','Russia',0,'http://dev.artfora.net/wp-login.php','2022-10-09 15:46:56'),
	(1230,'20.214.108.162','United States',0,'http://dev.artfora.net/Deadcode1975xxxxxxxxxxxxxxxxxxxxxxxxxxxx.php','2022-10-10 02:08:14'),
	(1231,'20.214.108.162','United States',0,'http://dev.artfora.net/wp-commentin.php','2022-10-10 02:08:15'),
	(1232,'46.101.157.99','Germany',0,'http://dev.artfora.net/wp-login.php','2022-10-10 11:28:43'),
	(1233,'196.44.176.39','Zimbabwe',0,'http://dev.artfora.net/wp-login.php','2022-10-11 02:47:33'),
	(1234,'178.128.83.37','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-10-11 16:41:56'),
	(1235,'178.128.83.37','Singapore',0,'http://dev.artfora.net/phpinfo','2022-10-11 16:42:02'),
	(1236,'40.113.168.126','Netherlands',0,'http://dev.artfora.net/wp-content','2022-10-12 10:53:42'),
	(1237,'103.90.235.91','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-10-12 22:54:12'),
	(1238,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-13 10:11:06'),
	(1239,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-13 10:11:07'),
	(1240,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-13 10:11:07'),
	(1241,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-13 10:11:08'),
	(1242,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-13 13:34:27'),
	(1243,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-13 13:34:27'),
	(1244,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-13 13:34:28'),
	(1245,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-13 13:34:28'),
	(1246,'178.128.83.37','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-10-13 16:28:49'),
	(1247,'178.128.83.37','Singapore',0,'https://dev.artfora.net/phpinfo','2022-10-13 16:28:51'),
	(1248,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-14 16:18:07'),
	(1249,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-14 16:18:07'),
	(1250,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-14 16:18:08'),
	(1251,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-14 16:18:08'),
	(1252,'178.128.83.37','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-10-15 00:34:49'),
	(1253,'178.128.83.37','Singapore',0,'http://dev.artfora.net/phpinfo','2022-10-15 00:34:53'),
	(1254,'178.128.209.28','Singapore',0,'http://dev.artfora.net/wp-login.php','2022-10-15 08:56:49'),
	(1255,'54.37.74.123','France',0,'http://dev.artfora.net/wp-login.php','2022-10-15 08:57:05'),
	(1256,'178.128.83.37','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-10-15 22:39:25'),
	(1257,'178.128.83.37','Singapore',0,'https://dev.artfora.net/phpinfo','2022-10-15 22:39:28'),
	(1258,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-17 11:23:15'),
	(1259,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-17 11:23:16'),
	(1260,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-18 09:19:03'),
	(1261,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-18 09:19:04'),
	(1262,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-18 09:19:05'),
	(1263,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-18 09:19:06'),
	(1264,'109.233.192.83','Moldova',0,'http://dev.artfora.net/wp-login.php','2022-10-18 20:59:43'),
	(1265,'104.248.47.126','Germany',0,'http://dev.artfora.net/defau11.php','2022-10-19 17:53:01'),
	(1266,'104.248.47.126','Germany',0,'http://dev.artfora.net/defau1t.php','2022-10-19 17:53:01'),
	(1267,'104.248.47.126','Germany',0,'http://dev.artfora.net/defaul1.php','2022-10-19 17:53:02'),
	(1268,'165.232.175.73','United States',0,'http://dev.artfora.net/phpinfo.php','2022-10-20 03:54:56'),
	(1269,'165.232.175.73','United States',0,'http://dev.artfora.net/phpinfo','2022-10-20 03:55:00'),
	(1270,'31.187.74.213','Germany',0,'http://dev.artfora.net/wp-login.php','2022-10-20 07:17:10'),
	(1271,'165.232.167.205','United States',0,'https://dev.artfora.net/phpinfo.php','2022-10-21 10:07:00'),
	(1272,'165.232.167.205','United States',0,'https://dev.artfora.net/phpinfo','2022-10-21 10:07:03'),
	(1273,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-21 10:42:36'),
	(1274,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-21 10:42:36'),
	(1275,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-21 10:42:36'),
	(1276,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-21 10:42:37'),
	(1277,'72.34.62.119','United States',0,'http://dev.artfora.net/wp-login.php','2022-10-21 19:35:56'),
	(1278,'184.154.139.50','United States',0,'https://dev.artfora.net/join_gallery','2022-10-22 01:18:14'),
	(1279,'165.232.175.73','United States',0,'http://dev.artfora.net/phpinfo.php','2022-10-22 02:37:33'),
	(1280,'165.232.175.73','United States',0,'http://dev.artfora.net/phpinfo','2022-10-22 02:37:37'),
	(1281,'119.60.105.201','China',0,'https://dev.artfora.net/1','2022-10-22 15:36:42'),
	(1282,'165.232.175.174','United States',0,'https://dev.artfora.net/phpinfo.php','2022-10-22 19:39:50'),
	(1283,'165.232.175.174','United States',0,'https://dev.artfora.net/phpinfo','2022-10-22 19:39:53'),
	(1284,'103.153.214.231','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-10-23 02:45:00'),
	(1285,'151.106.116.234','Germany',0,'http://dev.artfora.net/style.php','2022-10-24 18:38:13'),
	(1286,'178.128.248.115','Netherlands',0,'http://dev.artfora.net/wp-commentin.php','2022-10-25 04:58:31'),
	(1287,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-25 16:58:20'),
	(1288,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-25 16:58:20'),
	(1289,'165.22.236.45','Canada',0,'http://dev.artfora.net/wikindex.php','2022-10-26 11:27:26'),
	(1290,'165.22.236.45','Canada',0,'http://dev.artfora.net/admin.php','2022-10-26 11:27:26'),
	(1291,'165.22.236.45','Canada',0,'http://dev.artfora.net/class-wp-widget-archives.php','2022-10-26 11:27:26'),
	(1292,'165.22.236.45','Canada',0,'http://dev.artfora.net/3index.php','2022-10-26 11:27:26'),
	(1293,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-26 12:54:29'),
	(1294,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-26 12:54:29'),
	(1295,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-26 12:54:30'),
	(1296,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-26 12:54:30'),
	(1297,'18.224.85.64','United States',0,'http://dev.artfora.net/wp-login.php','2022-10-27 05:28:32'),
	(1298,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-27 10:33:16'),
	(1299,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-27 10:33:16'),
	(1300,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-27 10:33:17'),
	(1301,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-27 10:33:17'),
	(1302,'62.171.177.111','Germany',0,'http://dev.artfora.net/wordpress','2022-10-28 04:54:44'),
	(1303,'62.171.177.111','Germany',0,'http://dev.artfora.net/wp','2022-10-28 04:54:45'),
	(1304,'62.171.177.111','Germany',0,'http://dev.artfora.net/bc','2022-10-28 04:54:45'),
	(1305,'62.171.177.111','Germany',0,'http://dev.artfora.net/bk','2022-10-28 04:54:45'),
	(1306,'62.171.177.111','Germany',0,'http://dev.artfora.net/backup','2022-10-28 04:54:45'),
	(1307,'62.171.177.111','Germany',0,'http://dev.artfora.net/old','2022-10-28 04:54:45'),
	(1308,'62.171.177.111','Germany',0,'http://dev.artfora.net/new','2022-10-28 04:54:46'),
	(1309,'62.171.177.111','Germany',0,'http://dev.artfora.net/main','2022-10-28 04:54:46'),
	(1310,'199.188.201.208','United States',0,'http://dev.artfora.net/wp-commentin.php','2022-10-28 12:38:51'),
	(1311,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-10-28 14:52:27'),
	(1312,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-10-28 14:52:28'),
	(1313,'213.226.189.239','Lithuania',0,'http://dev.artfora.net/style.php','2022-11-02 05:19:41'),
	(1314,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-02 11:13:13'),
	(1315,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-02 11:13:13'),
	(1316,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-02 11:13:14'),
	(1317,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-02 11:13:14'),
	(1318,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-03 10:36:58'),
	(1319,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-03 10:36:58'),
	(1320,'159.223.33.179','United States',0,'http://dev.artfora.net/phpinfo.php','2022-11-03 21:14:36'),
	(1321,'159.223.33.179','United States',0,'http://dev.artfora.net/phpinfo','2022-11-03 21:14:39'),
	(1322,'139.59.114.79','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-11-04 01:19:54'),
	(1323,'139.59.114.79','Singapore',0,'http://dev.artfora.net/phpinfo','2022-11-04 01:19:59'),
	(1324,'159.138.92.248','Singapore',0,'http://dev.artfora.net/class-wp-widget-archives.php','2022-11-04 09:48:42'),
	(1325,'159.138.92.248','Singapore',0,'http://dev.artfora.net/3index.php','2022-11-04 09:48:42'),
	(1326,'159.138.92.248','Singapore',0,'http://dev.artfora.net/admin.php','2022-11-04 09:48:42'),
	(1327,'159.138.92.248','Singapore',0,'http://dev.artfora.net/wikindex.php','2022-11-04 09:48:42'),
	(1328,'159.223.33.179','United States',0,'https://dev.artfora.net/phpinfo.php','2022-11-04 12:32:51'),
	(1329,'159.223.33.179','United States',0,'https://dev.artfora.net/phpinfo','2022-11-04 12:32:54'),
	(1330,'139.59.114.79','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-11-04 21:42:52'),
	(1331,'139.59.114.79','Singapore',0,'https://dev.artfora.net/phpinfo','2022-11-04 21:42:56'),
	(1332,'162.241.126.33','United States',0,'http://dev.artfora.net/wp-login.php','2022-11-04 22:45:22'),
	(1333,'111.224.235.8','China',0,'https://dev.artfora.net/1','2022-11-04 22:57:19'),
	(1334,'188.166.253.167','Singapore',0,'https://dev.artfora.net/phpinfo.php','2022-11-05 00:38:30'),
	(1335,'188.166.253.167','Singapore',0,'https://dev.artfora.net/phpinfo','2022-11-05 00:38:32'),
	(1336,'188.166.253.167','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-11-05 12:39:44'),
	(1337,'188.166.253.167','Singapore',0,'http://dev.artfora.net/phpinfo','2022-11-05 12:39:47'),
	(1338,'134.122.7.10','United States',0,'http://dev.artfora.net/wp-login.php','2022-11-05 15:16:34'),
	(1339,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-07 12:47:54'),
	(1340,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-07 12:47:54'),
	(1341,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-07 12:47:55'),
	(1342,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-07 12:47:55'),
	(1343,'103.90.235.70','Vietnam',0,'http://dev.artfora.net/wp-login.php','2022-11-07 23:06:51'),
	(1344,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-09 15:32:47'),
	(1345,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-09 15:32:48'),
	(1346,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-09 15:32:48'),
	(1347,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-09 15:32:48'),
	(1348,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-09 15:37:56'),
	(1349,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-09 15:37:57'),
	(1350,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-09 15:37:57'),
	(1351,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-09 15:37:58'),
	(1352,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon-precomposed.png','2022-11-11 14:04:12'),
	(1353,'95.91.214.120','Germany',0,'https://dev.artfora.net/apple-touch-icon.png','2022-11-11 14:04:12'),
	(1354,'194.67.93.238','Russia',0,'http://dev.artfora.net/lyda.php','2022-11-12 15:06:41'),
	(1355,'194.67.93.238','Russia',0,'http://dev.artfora.net/radio.php','2022-11-12 15:06:41'),
	(1356,'194.67.93.238','Russia',0,'http://dev.artfora.net/smtphec.php','2022-11-12 15:06:41'),
	(1357,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-logs.php','2022-11-12 15:06:41'),
	(1358,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-activate.php','2022-11-12 15:06:41'),
	(1359,'194.67.93.238','Russia',0,'http://dev.artfora.net/wikindex.php','2022-11-12 15:06:41'),
	(1360,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-options.php','2022-11-12 15:06:42'),
	(1361,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-lo.Php','2022-11-12 15:06:42'),
	(1362,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-lo.php','2022-11-12 15:06:42'),
	(1363,'194.67.93.238','Russia',0,'http://dev.artfora.net/1index.php','2022-11-12 15:06:42'),
	(1364,'194.67.93.238','Russia',0,'http://dev.artfora.net/2index.php','2022-11-12 15:06:42'),
	(1365,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-supports.php','2022-11-12 15:06:42'),
	(1366,'194.67.93.238','Russia',0,'http://dev.artfora.net/wp-admin.php','2022-11-12 15:06:42'),
	(1367,'139.59.114.79','Singapore',0,'http://dev.artfora.net/phpinfo.php','2022-11-12 16:03:29'),
	(1368,'139.59.114.79','Singapore',0,'http://dev.artfora.net/phpinfo','2022-11-12 16:03:33'),
	(1369,'109.234.164.218','France',0,'http://dev.artfora.net/wp-login.php','2022-11-12 19:39:09'),
	(1370,'223.166.22.249','China',0,'https://dev.artfora.net/1','2022-11-15 06:07:37'),
	(1371,'207.180.240.189','Germany',0,'http://dev.artfora.net/wordpress','2022-11-15 07:29:17'),
	(1372,'207.180.240.189','Germany',0,'http://dev.artfora.net/wp','2022-11-15 07:29:17'),
	(1373,'207.180.240.189','Germany',0,'http://dev.artfora.net/bc','2022-11-15 07:29:17'),
	(1374,'207.180.240.189','Germany',0,'http://dev.artfora.net/bk','2022-11-15 07:29:18'),
	(1375,'207.180.240.189','Germany',0,'http://dev.artfora.net/backup','2022-11-15 07:29:18'),
	(1376,'207.180.240.189','Germany',0,'http://dev.artfora.net/old','2022-11-15 07:29:18'),
	(1377,'207.180.240.189','Germany',0,'http://dev.artfora.net/new','2022-11-15 07:29:19'),
	(1378,'207.180.240.189','Germany',0,'http://dev.artfora.net/main','2022-11-15 07:29:19'),
	(1379,'139.59.57.64','India',0,'http://dev.artfora.net/wp-commentin.php','2022-11-15 19:02:50'),
	(1380,'87.249.38.253','Russia',0,'http://dev.artfora.net/admin.php','2022-11-17 06:17:40'),
	(1381,'87.249.38.253','Russia',0,'http://dev.artfora.net/class-wp-widget-archives.php','2022-11-17 06:17:40'),
	(1382,'87.249.38.253','Russia',0,'http://dev.artfora.net/3index.php','2022-11-17 06:17:40'),
	(1383,'87.249.38.253','Russia',0,'http://dev.artfora.net/wikindex.php','2022-11-17 06:17:40'),
	(1384,'127.0.0.1','Ukraine',0,'http://artfora-web-mirror.test/storage','2022-11-18 16:29:56'),
	(1385,'127.0.0.1','Ukraine',0,'http://artfora-web-mirror.test/storage','2022-11-18 16:29:58');

/*!40000 ALTER TABLE `user_profile_view_data` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы user_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_tags`;

CREATE TABLE `user_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `tag_user` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `user_tags` WRITE;
/*!40000 ALTER TABLE `user_tags` DISABLE KEYS */;

INSERT INTO `user_tags` (`id`, `post_id`, `user_id`, `tag_user`, `created_at`, `updated_at`)
VALUES
	(11,21,8,2,'2022-01-31 23:24:20','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `user_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы user_urls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_urls`;

CREATE TABLE `user_urls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `url` text NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

LOCK TABLES `user_urls` WRITE;
/*!40000 ALTER TABLE `user_urls` DISABLE KEYS */;

INSERT INTO `user_urls` (`id`, `user_id`, `url`, `type`, `created_at`)
VALUES
	(3,2,'artfora.net','public','2022-01-28 23:48:42'),
	(7,7,'www.dancer.com','public','2022-01-29 06:37:19'),
	(8,7,'www.private.com','private','2022-01-29 06:39:22'),
	(19,1,'artfora.net','public','2022-01-29 10:57:54'),
	(20,8,'www.schoentod.de','public','2022-01-29 15:17:15'),
	(21,8,'www.schoentod.de','shop','2022-01-31 01:36:14'),
	(38,6,'www.netraprivate.com','private','2022-01-31 07:58:36'),
	(40,10,'discoanon.com','public','2022-01-31 10:35:06'),
	(41,10,'discoanon.com','public','2022-01-31 10:35:06'),
	(48,6,'www.netratechnosys.com','public','2022-01-31 13:07:41'),
	(49,6,'www.netratechnosys.com','shop','2022-04-02 08:28:15'),
	(51,18,'www.google.com','public','2022-04-06 13:32:02'),
	(52,18,'www.netrashop.com','shop','2022-04-06 13:34:14'),
	(53,18,'www.private.com','private','2022-04-06 13:35:33'),
	(57,5,'artfora.net','shop','2022-04-23 21:00:25'),
	(58,2,'artfora.net','shop','2022-04-27 10:54:27'),
	(59,2,'instagram.com/artfora_net','shop','2022-04-27 10:54:27'),
	(60,2,'twitter.com/artfora_net','shop','2022-04-27 10:54:27');

/*!40000 ALTER TABLE `user_urls` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы user_website_button_clicks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_website_button_clicks`;

CREATE TABLE `user_website_button_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `website_button_id` int NOT NULL,
  `quantity` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_website_button_clicks_UN` (`user_id`,`website_button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# Дамп таблицы users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'mobile_user',
  `verify_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_bit` int DEFAULT '1',
  `app_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1 = Active User, 2 = Admin block, 3 = Delete User',
  `blocked_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_notification` int NOT NULL DEFAULT '0',
  `message_notification` int NOT NULL DEFAULT '0',
  `follow_notification` int NOT NULL DEFAULT '0',
  `unfollow_notification` int NOT NULL DEFAULT '0',
  `like_post_notification` int NOT NULL DEFAULT '0',
  `comment_post_notification` int NOT NULL DEFAULT '0',
  `profile_layout` int NOT NULL DEFAULT '0',
  `discover_layout` int DEFAULT '0',
  `private_profile` int NOT NULL DEFAULT '0' COMMENT '0: Not Set, 1: Set',
  `shop_profile` int NOT NULL DEFAULT '0' COMMENT '0: Not Set, 1: Set',
  `shop_view_toggle` tinyint(1) DEFAULT NULL,
  `commission` int NOT NULL DEFAULT '0' COMMENT '0: No, 1: Yes',
  `verify_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_email_verified_at` timestamp NULL DEFAULT NULL,
  `verify_email_flag` tinyint NOT NULL,
  `is_private` tinyint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `full_name`, `tagname`, `email`, `email_verified_at`, `password`, `role`, `verify_password`, `password_bit`, `app_token`, `remember_token`, `created_at`, `updated_at`, `bdate`, `status`, `blocked_at`, `deleted_at`, `city`, `country`, `tag_notification`, `message_notification`, `follow_notification`, `unfollow_notification`, `like_post_notification`, `comment_post_notification`, `profile_layout`, `discover_layout`, `private_profile`, `shop_profile`, `shop_view_toggle`, `commission`, `verify_email`, `delete_email_verified_at`, `verify_email_flag`, `is_private`)
VALUES
	(1,'ARTfora Admin',NULL,'artfora_admin','admin@artfora.net','2022-01-27 15:12:11','$2y$10$z2rhqlVNDKH5UffS4udszexDC2zjguzu8gbi3awHksEc/GJiIZgM.','admin',NULL,1,'fLmA1s2likGgrXFTj9FaKZ:APA91bFPLwu6Ty9WsGPFRg-tzYnVzCB32Xtue8Elrx8wD1693V4XbgDlyVwftPlds-eKaRTJ5xVYOzSquE9rJ9f1SE_FgI596igj5p_BbriGvqiavLa4RFFrKFwdt3nyPbFz4XNRMgOo','Iih1gpUftw15Ew6PaJN2xAEs6ei6wixSgsHb8n8d9FBuPhqkGPZ8Z9JmsQ4G','2022-01-27 15:02:42','2022-05-03 23:02:32','13 Feb, 1973',1,NULL,NULL,'Berlin','Germany',1,1,1,1,1,1,0,0,0,0,3,0,NULL,NULL,0,0),
	(2,'ARTfora',NULL,'artfora','shop@artfora.net','2022-01-27 15:12:11','$2y$10$WWIBZvMSHPvyrez8ODMiSO8GX4O6C2g7Mb9e1D8FS0/VBmocTtEp.','mobile_user',NULL,1,'fiJgEMUEI0A5rv-uqhZamB:APA91bEkoRycH46UD-WCvnYeJD_rqO0dOzBqh50ZsUDDvrIPOOi44Vq_qSXxg1TxaSzAQKycBFuLX2ecmWs95KZt2hwCEocIXLoaPb3DQkPNwWwxmiMIAXJAdDaL25TmuYE-PJqsFdzv',NULL,'2022-01-27 15:12:00','2022-05-05 19:44:30','13 Feb, 1973',1,NULL,NULL,'Berlin','Germany',1,1,1,1,1,1,0,1,0,0,3,0,NULL,NULL,0,0),
	(3,'Tranekjer',NULL,'tranekjer','ktranekjer@me.com','2022-01-28 14:40:10','$2y$10$nrIPVKAKzNc9adiBn75x8OyRJ9PD3viNOEb8mUq7S0pqdSm9CdI46','mobile_user',NULL,1,'eQyZsGTlFkhMt5wdUu65rE:APA91bHt-vWkWN4oYCmVfcr8pmk1t6kYCnDONNyjME6q2-8aU_VTmGDu9vlua_TVHdq9QGKLz0EuCsn5MrS14G5ZHXvjRH28ziC4M0TAnZ6BiQa0JfOn6RBU9qY0B1qH0ms_0J6Q6JSz',NULL,'2022-01-28 14:39:26','2022-04-30 07:09:08','12 dec, 1973',1,NULL,NULL,'Christiansfeld','Danmark',1,1,1,1,1,1,0,1,0,0,0,0,NULL,NULL,0,0),
	(4,'Jimmy O',NULL,'jimmy_o','contact@mindwerk.dk','2022-01-28 15:29:33','$2y$10$sgs.KJSwLfL4O/KZOlW1Zej51wUlQquERyJ6qFOScMOaMCj6wE5xi','mobile_user',NULL,1,'fLmA1s2likGgrXFTj9FaKZ:APA91bFPLwu6Ty9WsGPFRg-tzYnVzCB32Xtue8Elrx8wD1693V4XbgDlyVwftPlds-eKaRTJ5xVYOzSquE9rJ9f1SE_FgI596igj5p_BbriGvqiavLa4RFFrKFwdt3nyPbFz4XNRMgOo',NULL,'2022-01-28 15:29:19','2022-04-16 19:52:14','13 Feb, 1973',1,NULL,NULL,'Berlin','Germany',1,1,1,1,1,1,2,0,0,0,2,0,NULL,NULL,0,0),
	(5,'Atman Comic',NULL,'atman_comic','atmancomic@gmail.com','2022-01-28 23:03:55','$2y$10$GBlctzWjNg6lo2w0FelJjOf1oyGY1hAx7xS3YGjzLtZfuznTJqGJi','mobile_user',NULL,1,'fiJgEMUEI0A5rv-uqhZamB:APA91bEkoRycH46UD-WCvnYeJD_rqO0dOzBqh50ZsUDDvrIPOOi44Vq_qSXxg1TxaSzAQKycBFuLX2ecmWs95KZt2hwCEocIXLoaPb3DQkPNwWwxmiMIAXJAdDaL25TmuYE-PJqsFdzv',NULL,'2022-01-28 23:03:39','2022-05-05 18:48:43','13 Feb, 1973',1,NULL,NULL,'Berlin','Germany',1,1,1,1,1,1,0,0,0,0,3,0,NULL,NULL,0,0),
	(8,'Sophie Schøntod',NULL,'sophie.schoentod','sophie.deichert@mindwerk.dk','2022-01-29 15:09:14','$2y$10$wvMLQdHhefob88gEJGoMheb4ruoy2l6q5jfXqDY.Bdr8CHokhxiIW','mobile_user',NULL,1,'evKPlhVsoUdZqfLrfaNbXe:APA91bE3v7noUyEkd0006FnNzP_IU0OGdchZEI4cgjVfnAhgjPMbhhisl15t4zhjBwzXorDhvLY6mI_Po0xQi6wdAfSP-SKLWXygKjwEZF4pC_-YikKEbdTr8hgosYecYKXQqGdC7YR5',NULL,'2022-01-29 15:08:50','2022-05-07 13:22:28','06 Apr, 1986',1,NULL,NULL,'Berlin','Deutschland',1,1,1,1,1,1,1,0,0,0,2,0,NULL,NULL,0,0),
	(9,'Bastian Krolzig',NULL,'djbk','bastiankrolzig@web.de','2022-01-30 21:20:18','$2y$10$dSu8eGzKLxUoeu870KzFO.l44eBYUqLoYbQIPlT1GEfw9QADx4SPa','mobile_user',NULL,1,'cTMdFT7WCk3NtYGXA31DBu:APA91bENM2jSsSnP-cZheyBx6gmLdbiExIe29GPItOKeWa6G59I8BPsXBbPt-ZFfcmNpu3EHPCKrF0QZFMoNnN1YF7vnhOTRlW_sGbcd9mkJhKN0HWUjEoe4Upv-bWgE-wzuOtBrbw0O',NULL,'2022-01-30 21:19:27','2022-01-30 21:32:59','29 Jan, 1975',1,NULL,NULL,'Duisburg','Deutschland',1,1,1,1,1,1,2,0,0,0,0,0,NULL,NULL,0,0),
	(10,'Ken Avalon',NULL,'discoanon','info@discoanon.com','2022-01-31 07:07:27','$2y$10$zsKe19f.YKDfIDWxPb0hGOAPhgKu5ovGZ249S1HUpG4gLg.9Qu7Sm','mobile_user',NULL,1,'cXo8e8ECOEDfvbZvxdJ9w6:APA91bH4-dzw96eCfPjI1fHOmjEoQRMScTrU5fsb6s_HXuzJQv8LdjBTNI3vPDBOxmz2B_16HKm7REQtW6CBqQw-wsdYwnkMj-3d46_tcLdu1hufG16lOr-CHLVoRlhNZ4Xv7-Ni9jRL','JEU60HtCyWL8bi1Ah5S6wA6u8FYrRnze7NAhFSBN4iNjKjil7j4EDL1kvauh','2022-01-31 06:59:03','2022-04-25 20:31:34','12 dec, 1973',1,NULL,NULL,'Unnamed','Danmark',0,0,0,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0),
	(13,'Merisio',NULL,'merisio.official','merisio@artfora.net','2022-03-26 16:30:48','$2y$10$sNIt6OVZFlMOma8VJl7HLOhc9jjxJMVMycZARnBZm3Ccgf4PbKEGu','mobile_user',NULL,0,'fLmA1s2likGgrXFTj9FaKZ:APA91bFPLwu6Ty9WsGPFRg-tzYnVzCB32Xtue8Elrx8wD1693V4XbgDlyVwftPlds-eKaRTJ5xVYOzSquE9rJ9f1SE_FgI596igj5p_BbriGvqiavLa4RFFrKFwdt3nyPbFz4XNRMgOo',NULL,'2022-03-26 16:30:36','2022-05-01 13:33:57','26 Mar, 1969',1,NULL,NULL,'Tuscania','Italy',1,1,1,1,1,1,0,0,0,0,3,1,NULL,NULL,0,0),
	(17,'Netra',NULL,'netra','netratechnosys@gmaill.com',NULL,'$2y$10$/an2rKqkAS0EqUQ7QwwBKOjTcv2n.kSB9OzHVgjEcO8Y59rfgF.fu','mobile_user',NULL,1,'cdWquGOgl0hImJ7ZYsMSAp:APA91bGmbCpR8BQ4wH7MH-n4wJ0ICXkgg0_Y3nzbOKXIUM5iHFXOCWhOcX9AC-Z2rJg4TzVVRW6QyUcQAZ757phwWO2OFkNFENqM7nkkXcRE1eipvUG61WFNYM1hWbxcs1QPoi3HhZs_',NULL,'2022-04-06 13:20:28','2022-04-06 13:20:28','06 Jun, 1997',1,NULL,NULL,'Surat','India',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(18,'Netra123',NULL,'netra123','netratechnosys123@gmail.com','2022-04-06 13:29:21','$2y$10$7j.teX8dpEo5HPsNCEocveU/eFehC4GSScgNbFDo7UmtKZd.cgw.a','mobile_user',NULL,1,'d6vM1KGRE0Qspk7ZLJWFL8:APA91bGSVd-WOM85Qd8GC38cvWeZpWDOpl3Rdna38OtQNOFLkBL-LIgYA6VpljvQ3qwVphXTGvF9d_K-EgVq5slMSYVeO7gLolDNhPepNBOF1yq13cYFpudtK6xW30WRYcSZdsAtIbxI',NULL,'2022-04-06 13:28:19','2022-04-08 12:14:06','05 Feb, 1998',1,NULL,NULL,'Surat','India',0,0,0,0,0,0,0,0,1,0,3,0,NULL,NULL,0,0),
	(19,'Bhavesh',NULL,'bhavesh-tester','bhavesh.bansal@gmail.com','2022-04-11 17:30:58','$2y$10$XEqtWGtxdZu6pesrw5mob.3gKfehpomfDiA0xr0c9B0QjGyr5sDVO','mobile_user',NULL,1,'cZZTiOVZuk1qmQF_I5Fl87:APA91bGj7wq7wxUe5ep5ELqq-WsdoqOW0JWsYQF2FefBnO0WmlHqUHHoS1WNnaPV5OG8E_VK5amk90fkzn8G69D_Vdzwjq1YICwj6ASqrViTdS2kszGEKnasf0PC3VhNFPhjyz1XDnkt',NULL,'2022-04-11 17:30:33','2022-06-07 11:59:31','11 Apr, 2002',1,NULL,NULL,'Ludhiana','India',1,1,1,1,1,1,0,0,0,0,2,0,NULL,NULL,0,0),
	(20,'Bhavesh Tester',NULL,'tester1','zmq3m8hy5j@kjkszpjcompany.com','2022-04-15 06:52:08','$2y$10$dbEsW73U/o8y9GjUYD0fdO9pFX.O3AWP0YJ.JkOMpIcEA83wP983e','mobile_user',NULL,1,'dCewvHtWxEiLpZXJ5JC7Nu:APA91bHTV2Gsh7aDt2vCOjdkuB6Y-iubzryCawTNwdWV-tnQlqxjXscFMdR6gPRSQFf0vklCUYB0HZXi7bb15kNuBARoME5IuJYZX4nJCTsPSD1Vq2edhvUCgRi2Rs0lTce4pHpnrGTn',NULL,'2022-04-15 06:51:36','2022-04-15 10:57:35','15 Apr, 2001',1,NULL,NULL,'Unnamed','India',1,1,1,1,1,1,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(21,'Aksó Nerd Arts',NULL,'aksonerdarts','contact@artfora.net','2022-04-15 10:47:34','$2y$10$OBUXj9ZQKyqLr1Z8XgkQe.kJI0EKnX5jWOvOzy3hGFAy.yEweWtk.','mobile_user',NULL,1,'fLmA1s2likGgrXFTj9FaKZ:APA91bFPLwu6Ty9WsGPFRg-tzYnVzCB32Xtue8Elrx8wD1693V4XbgDlyVwftPlds-eKaRTJ5xVYOzSquE9rJ9f1SE_FgI596igj5p_BbriGvqiavLa4RFFrKFwdt3nyPbFz4XNRMgOo',NULL,'2022-04-15 10:47:25','2022-04-21 10:23:18','15 Apr, 1968',1,NULL,NULL,'Berlin','Germany',1,1,1,1,1,1,0,0,0,0,0,0,NULL,NULL,0,0),
	(22,'John',NULL,'doe','johndoe@gmail.com',NULL,'$2y$10$XYlQ51Yl2w8Hg99wjaHSAu9d2gcDxHjPGvJE5NH/CYSZeBPv5bJ/m','mobile_user',NULL,1,'cvkyC9oeGU6dn6w-1jvMhe:APA91bE-Ns8C3xbW8TkfiYy2f_x5uEBZ0yABJ_26LxYvYDO47YrWIcUN-_ze49cvMYmgms63P0szGLbxnG8d0Omqy63DbsXP84Y-S312jAxpoRkEc62BvLWpEP6XyQBCgwXCctzlsCph',NULL,'2022-04-19 09:33:20','2022-04-19 09:33:41','19 Apr, 1999',1,NULL,NULL,'Dubai','United Arab Emirates',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(25,'test',NULL,'','test@mail.com','2022-04-15 10:47:34','$2y$10$vU.EfQhuPWYLphHvO2NV3.EegeQbY3vR5JTL6PqkkuHgv.OKCDZ92','admin',NULL,1,NULL,'DlNFLNmj0qE0cIODpRAoy1Wqq8TbjUifEFGZnAdiiJ755QUPjrigQxcfeVSm','2022-04-27 13:17:17','2022-04-27 13:17:17','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,3,0,NULL,NULL,0,0),
	(26,'Nataliya',NULL,'talya','n.tomenyuk@gmail.com','2022-04-29 15:57:02','$2y$10$aZfEeJE9S7yqxqG5eRQMYOU.vB2Bd1fKQSIVQIqC..lXs48bfxlrK','mobile_user',NULL,1,'fHYOgIbXzEG5rP018vWjLT:APA91bEbxPmz7cKTOleX3K2BUBG-jfdBcyDoSKkgGsop7x9yuh8xtaB9pDvk2tBlh-2eKdHsnXvuzwWDGbtwYuFPcIrb4ZRVyq6bX4Jtogd12JKrCNhyGKoNgGauZcP4r015LpegQdau',NULL,'2022-04-29 11:19:30','2022-04-29 15:57:02','28 Jan, 2523',1,NULL,NULL,'Prague','Czechia',1,1,1,1,1,1,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(30,'jimmy',NULL,'','orpheus2@mindwerk.dk','2022-06-06 16:42:34','$2y$10$5F6YlDGec/oX2HGH1jhG7uNRcAE2ywTlXeu0HvDuFQBV2l26A3/7m','mobile_user',NULL,1,NULL,'4dtfLkEPzUd4RYF1PSe7dWnGox8ifb3nnqojssnXgXsrcrYXHE9CglU2GtRQ',NULL,'2022-06-06 16:42:34','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(31,'Jimmy',NULL,'','orpheus3@mindwerk.dk',NULL,'$2y$10$XJIkCq1BupzY2ZO6EWalNe2YcRPLq5bW8iQQ7RdP2yHdjLYsm.Oyi','mobile_user',NULL,1,NULL,NULL,NULL,NULL,'',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(32,'Jimmy',NULL,'','orpheus4@mindwerk.dk',NULL,'$2y$10$vNum2hK2EqrI2Gz1S72MLOmGdS1Yb5Unl26tjpKXD5ak83OIN42Fy','mobile_user',NULL,1,NULL,NULL,NULL,NULL,'',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(33,'vikash',NULL,'','vikash@icreatewebtech.com','2022-06-07 12:18:46','$2y$10$mAejylG9VfF8UCl3zG/z7OkhiMZBqD4sfFdqFIyLqDQSKE1ORQzxS','mobile_user',NULL,1,NULL,NULL,NULL,'2022-06-07 12:18:46','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(34,'jimmy',NULL,'','orpheus5@mindwerk.dk','2022-06-07 12:23:17','$2y$10$wNFeVAZciY8Eyu4ZbugilO9oB6FjYjzznXtifWrXLDl4vuerEpe.e','mobile_user',NULL,1,NULL,NULL,NULL,'2022-06-07 12:23:17','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(36,'Paresh',NULL,'','info@icreatewebtech.com','2022-06-07 21:14:58','$2y$10$EiiitVSuXUcHMkImknH3geZZFT.A2YFWltQAqZ1huJjcTBV1.jGpO','mobile_user',NULL,1,NULL,NULL,NULL,'2022-06-07 21:14:58','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(37,'jimmy',NULL,'','orpheus6@mindwerk.dk',NULL,'$2y$10$0uy7ugYeuRbzi1d8vMNvaOJTIpgxGShsdRelrnrRsIHG9W/Tz21b6','mobile_user',NULL,1,NULL,NULL,NULL,NULL,'',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(38,'jimmy',NULL,'','orpheus7@mindwerk.dk','2022-06-07 15:27:31','$2y$10$zNAVFCOBTuKRbNlrgHAm6.D5AK7Gd3xwd/e2dVdrhSy4FFwafR/Z2','mobile_user',NULL,1,NULL,'qtxbapB4TyVclYIDBn1OzloCqIy3IKXn8ogpBl2HG1Q4SGeRpuIVfaDUGwrp',NULL,'2022-06-07 15:27:31','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(39,'jimmy',NULL,'','orpheus@mindwerk.dk','2022-06-07 15:29:34','$2y$10$NLahP/xTgjrkU2uoowzBquiKHb7A901RhOvuAZFNL3B3m4kRz5zHS','mobile_user',NULL,1,NULL,'gyH5EULjM93Yr21lIEiQdmXm2eCEAj8m8MlJaUn0QZ19lfXbt763XoQqVhuV',NULL,'2022-06-07 15:29:34','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0),
	(40,'jay',NULL,'','jay@icreatewebtech.com','2022-06-07 16:48:09','$2y$10$CzUuo6h29NXCwcBrvXW0au5uQHKZV4hNK0lFGTBcHilM4428MgtjO','mobile_user',NULL,1,NULL,'9WJsNsrvbgQCvl36gepm4FZdCfjewRVOrL61X5363O1PzaBMcDK7b5I5BDPl',NULL,'2022-06-07 16:48:09','',1,NULL,NULL,'','',0,0,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,0,0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы website_button_clicks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `website_button_clicks`;

CREATE TABLE `website_button_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `button_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_clicked_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# Дамп таблицы website_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `website_buttons`;

CREATE TABLE `website_buttons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
