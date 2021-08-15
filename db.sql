/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24 : Database - food-market-backend
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`food-market-backend` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picturePath` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `food` */

insert  into `food`(`id`,`name`,`description`,`ingredients`,`price`,`rate`,`types`,`picturePath`,`deleted_at`,`created_at`,`updated_at`) values (1,'Bakso Jumbo','bla bla bla bla bla bla','Bawang Merah, Paprika, Bawang Bombay, Timun',60000,4,'recommended,popular,new_food','assets/food/T0LFU9RQWEcSpqexJDqRRxVLojxxvu8fYupZzNjF.jpg','2021-02-06 23:31:10','2021-02-06 23:30:19','2021-02-06 23:31:10'),(2,'Mie Aceh Sedap Malam','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,5,'recommended','assets/food/06072021lUZKcND11Ngos3A.jpg',NULL,'2021-04-05 12:45:13','2021-07-06 20:24:14'),(3,'Nasi Goreng Spesial','Nasi goreng spesial cita rasa rempah-rempah yang khas','Bawang Merah, Paprika, Bawang Bombay, Timun',20000,5,'popular','assets/food/GAPzqrdqW8jo6HqfDxs5gWIFWAgO1RNsHTgyOQmx.jpg','2021-04-28 21:52:33','2021-04-05 12:46:21','2021-04-28 21:52:33'),(4,'Seblak Hot Jeletot','seblak enak banget','Bawang Merah, Paprika, Bawang Bombay, Timun',5000,5,'recommended,popular,new_food','assets/food/wDRedVLOqUNFFU3usxOHrGvuGxr6KzETQHfpyGf6.jpg','2021-04-28 21:52:35','2021-04-05 18:18:53','2021-04-28 21:52:35'),(5,'Mie Aceh Sedap Malam','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,4,NULL,'assets/food/2021-07-04_5QSNmG98FURREfK.jpg','2021-07-05 10:24:37','2021-07-04 23:22:50','2021-07-05 10:24:37'),(6,'Mie Aceh Sedap Malam','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,4,'recommended','assets/food/060720210ZB6ILwppon6ehL.jpg',NULL,'2021-07-05 10:16:17','2021-07-06 20:47:17'),(7,'Mie Aceh Sedap Malam','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,4,NULL,NULL,'2021-07-06 16:33:49','2021-07-05 10:16:20','2021-07-06 16:33:49'),(9,'Ayam Bakar Madu Jaya','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,4,'recommended','assets/food/2021-07-05_j7xIKSHz06wv2qe.jpg',NULL,'2021-07-05 10:40:28','2021-07-05 10:40:28'),(10,'Es Krim Gula-Gula','Enak Dan Lezat','bawang merah',25000,4,'recommended','assets/food/06072021BpVZc7gjRTJE4cq.jpg',NULL,'2021-07-05 10:51:38','2021-07-06 20:47:25'),(11,'Es Krim Gula-Gula','Enak Dan Lezat','bawang merah,bawa bombay, cabe, lengkuas',25000,4,'recommended','assets/food/2021-07-05_BNjf1jtL2I7ZsaC.jpg',NULL,'2021-07-05 10:51:46','2021-07-05 10:51:46'),(12,'Nasi Goreng Kambing','test','Daging kambig pilihan,rempah-rempah',50000,5,'recommended','assets/food/2021-07-06_gh6b32elo5lyhiG.png','2021-07-06 16:34:39','2021-07-06 15:22:27','2021-07-06 16:34:39'),(13,'Nasi Goreng','test','test',50000,5,'test','assets/food/2021-07-06_J3u1uelnv9gQfYW.jpg','2021-07-06 16:34:10','2021-07-06 15:47:44','2021-07-06 16:34:10');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`link`,`parent`,`icon`,`created_at`,`updated_at`,`order`) values (1,'Dashboard','dashboard',0,'mdi-home-city',NULL,NULL,'1'),(2,'Menu','menu',4,'fa fa-laptop',NULL,'2021-07-12 10:46:07','2'),(4,'Master','-',0,'mdi-application-cog',NULL,'2021-07-12 10:57:27','4'),(8,'Users','user',4,NULL,NULL,'2021-07-12 10:54:05','8'),(9,'Food','food',4,NULL,'2021-07-12 11:38:36','2021-07-12 11:38:36','4');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2020_05_21_100000_create_teams_table',1),(7,'2020_05_21_200000_create_team_user_table',1),(8,'2020_05_21_300000_create_team_invitations_table',1),(9,'2021_02_01_085841_create_sessions_table',1),(10,'2021_02_01_140010_new_users_table',2),(11,'2021_02_01_140820_create_food_table',2),(12,'2021_02_01_141216_create_transactions_table',2),(13,'2021_06_10_151417_create_menus_table',3),(14,'2021_06_10_152421_update_menus_table',4),(15,'2021_06_10_214808_update_add_order_menus_table',5),(16,'2021_06_22_205409_create_tests_table',6);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

insert  into `personal_access_tokens`(`id`,`tokenable_type`,`tokenable_id`,`name`,`token`,`abilities`,`last_used_at`,`created_at`,`updated_at`) values (1,'App\\Models\\User',2,'authToken','dc51013d399bcb007d9ac58e4796a0dc92091a122eb24b6f6af7f5eaeb1d2899','[\"*\"]',NULL,'2021-02-06 03:07:52','2021-02-06 03:07:52'),(2,'App\\Models\\User',2,'authToken','24960a95e6508b50093dc90b93184cc5fab88726239ac52dfbf90b3cdf81cae4','[\"*\"]',NULL,'2021-02-06 10:10:23','2021-02-06 10:10:23'),(3,'App\\Models\\User',4,'authToken','e776f0c0ead1bfa87f64e93e55c9cae1c2634c73b514099686955f65370f281f','[\"*\"]',NULL,'2021-02-19 23:17:42','2021-02-19 23:17:42'),(4,'App\\Models\\User',5,'authToken','2b0a2589c521ad60546b037eadb6f9d381ced3514950faa476db9b58cf3512a8','[\"*\"]',NULL,'2021-02-19 23:22:33','2021-02-19 23:22:33'),(5,'App\\Models\\User',6,'authToken','16a27fe5c2dd919b7e27e9769d08e9e1f25af3dd5e39c0e4ff4d709fcb04643c','[\"*\"]',NULL,'2021-02-19 23:22:58','2021-02-19 23:22:58'),(6,'App\\Models\\User',6,'authToken','9d465c04fbf50983ce5f1099baef1d9128df5c7aa505314713e9fba99785f61a','[\"*\"]',NULL,'2021-02-21 14:47:35','2021-02-21 14:47:35'),(7,'App\\Models\\User',6,'authToken','76ad902a8c9ecef4da773e05337d2e999a0d9ad47f41c79252ee61d745288995','[\"*\"]',NULL,'2021-02-21 14:47:44','2021-02-21 14:47:44'),(8,'App\\Models\\User',6,'authToken','5c6e80197fac49d580c12b083d1e5064983a0b2164a86819e6916b93c99e930f','[\"*\"]',NULL,'2021-02-21 15:13:55','2021-02-21 15:13:55'),(9,'App\\Models\\User',6,'authToken','5b6e97ccdee90bc9673c9b9bf7ad9526f04f3935ffe0ccfe20132153948457ff','[\"*\"]',NULL,'2021-02-21 15:14:26','2021-02-21 15:14:26'),(10,'App\\Models\\User',6,'authToken','a7cdc990a07de889373d4905035dc704082b60970197bf703f384338b5ef1452','[\"*\"]',NULL,'2021-02-21 15:32:03','2021-02-21 15:32:03'),(11,'App\\Models\\User',6,'authToken','93881bdd0db860f9f4cd6b7fde1e18b12a232d8cb0ffaf614172b7f3d0f91e32','[\"*\"]',NULL,'2021-02-21 15:32:06','2021-02-21 15:32:06'),(12,'App\\Models\\User',6,'authToken','9aa0dd13d63482f11b7c4b4731e1d0da91f7341765264acebd3f2097d284bc1e','[\"*\"]',NULL,'2021-02-21 15:39:29','2021-02-21 15:39:29'),(13,'App\\Models\\User',6,'authToken','af29e30a0d1e9c648905ec6cff3d1e4ea00423573596a702ceae11c34a0213e3','[\"*\"]',NULL,'2021-02-21 15:43:01','2021-02-21 15:43:01'),(14,'App\\Models\\User',6,'authToken','866c7bbac1258f27fe5c94278e029bce1478952addb813b8c6ffa3e22c38666f','[\"*\"]',NULL,'2021-02-21 18:58:09','2021-02-21 18:58:09'),(15,'App\\Models\\User',6,'authToken','8d01b914452c62dbb8df9be6e5e81bfa93f3dd84159c875757835d46e704ba85','[\"*\"]',NULL,'2021-02-21 19:07:27','2021-02-21 19:07:27'),(16,'App\\Models\\User',6,'authToken','6cc65219d263d23d5476842a3ad91f30017e860f843b9ad32b4966afca022676','[\"*\"]',NULL,'2021-02-21 19:07:42','2021-02-21 19:07:42'),(17,'App\\Models\\User',6,'authToken','602af8ca7e564bf9e9d04d30e1f4d468f9961a7df9cd3e02aa0ea72ef29838ba','[\"*\"]',NULL,'2021-02-21 19:07:44','2021-02-21 19:07:44'),(18,'App\\Models\\User',6,'authToken','b8ad58309cf8c4e3c1fc805759699add95eadccf2cf650c2a10466d0e1bbdf26','[\"*\"]',NULL,'2021-02-21 19:10:17','2021-02-21 19:10:17'),(19,'App\\Models\\User',7,'authToken','ee605230a607fa8e5e9768e019f2eadde76c43f2c4948cd6736cbfc508f004ef','[\"*\"]',NULL,'2021-02-21 23:06:42','2021-02-21 23:06:42'),(20,'App\\Models\\User',8,'authToken','5739cfd9f621cb86ee43fdf4d721e270a75ffc254fdc16cf6b8bec5c9a89a8f9','[\"*\"]',NULL,'2021-02-24 00:09:07','2021-02-24 00:09:07'),(21,'App\\Models\\User',9,'authToken','8ed85bbf5d7959db2a32747cecf596f7f016bbcb01cc9a9642a4907e8a02e0be','[\"*\"]',NULL,'2021-02-24 00:10:31','2021-02-24 00:10:31'),(22,'App\\Models\\User',10,'authToken','afb5e0cf5e6a3cf9be2e3e622d0992f66b2c4fa5795ed7da41f4f9b97a567f3b','[\"*\"]',NULL,'2021-02-24 00:15:03','2021-02-24 00:15:03'),(23,'App\\Models\\User',11,'authToken','d072b78cfece45e65ecd0347e7f13f6c7b0eff5d58506aed3158484724312f25','[\"*\"]',NULL,'2021-02-24 00:18:26','2021-02-24 00:18:26'),(24,'App\\Models\\User',12,'authToken','c49d60f11929131bf65f59e199c1d19e58e5fe16945b34cfe5241ac0a797eff6','[\"*\"]','2021-02-24 00:22:13','2021-02-24 00:22:11','2021-02-24 00:22:13'),(25,'App\\Models\\User',13,'authToken','299a175d290ee30a1f4da8262aa4e9756378c9bc6b08e0dc73c30b212578d374','[\"*\"]','2021-03-20 08:29:52','2021-03-20 08:29:50','2021-03-20 08:29:52'),(26,'App\\Models\\User',14,'authToken','a184006289c45c89bf5b5541ae4b04277f8daf9a5fb3bdba12bcee2677919d12','[\"*\"]',NULL,'2021-03-20 14:15:10','2021-03-20 14:15:10'),(27,'App\\Models\\User',15,'authToken','3cee1de605047504d828bab08799df44886b00390a1cf14ef2e61d1697fd4b3a','[\"*\"]','2021-03-20 14:19:59','2021-03-20 14:19:58','2021-03-20 14:19:59'),(28,'App\\Models\\User',16,'authToken','e55cf675ed83480e0cf1591aa6030e58e0472045e76e71b50514d61b2c21ca94','[\"*\"]','2021-03-20 14:26:26','2021-03-20 14:26:25','2021-03-20 14:26:26'),(29,'App\\Models\\User',17,'authToken','472b2cf56b00afefec09d426518d466caef24e7477e32f0cfa5843f9de518916','[\"*\"]','2021-03-20 14:29:13','2021-03-20 14:29:12','2021-03-20 14:29:13'),(30,'App\\Models\\User',19,'authToken','051140e4b46273c34a7f12cf189a5f8d4cc904ecc6bdbc981c6c201409a923ca','[\"*\"]','2021-03-20 16:47:30','2021-03-20 16:47:30','2021-03-20 16:47:30'),(31,'App\\Models\\User',20,'authToken','5b43b3599c585cd7c50ace01d498891c8bc8038006518ee44107d9f55c8c591d','[\"*\"]','2021-03-20 16:50:23','2021-03-20 16:50:23','2021-03-20 16:50:23'),(32,'App\\Models\\User',21,'authToken','a1c2c851bef011386060ef599ae2d61ffdd7ca01e35b1df898a4e3d17a189cd2','[\"*\"]','2021-03-20 16:59:10','2021-03-20 16:59:09','2021-03-20 16:59:10'),(33,'App\\Models\\User',22,'authToken','8ab033f27b645631522f15a530b93402065c5a0bcc285e87f3dcf3ff4b82489e','[\"*\"]','2021-03-20 17:10:52','2021-03-20 17:10:51','2021-03-20 17:10:52'),(34,'App\\Models\\User',2,'authToken','97bde76ca81eb527a57dd8f98d1abc1d1a2bb32d3d46b3ec1827de9ead7d0f4f','[\"*\"]',NULL,'2021-04-05 11:47:07','2021-04-05 11:47:07'),(35,'App\\Models\\User',2,'authToken','17e66abf1351f85000af898b62f38a314976ab3e3c562d196c811abb59e1da24','[\"*\"]',NULL,'2021-04-05 11:47:39','2021-04-05 11:47:39'),(36,'App\\Models\\User',2,'authToken','dd7f7b6f222b87e03eafdd83fe712785e415b7ffa58158684dc4e246bd4efbab','[\"*\"]',NULL,'2021-04-05 11:48:16','2021-04-05 11:48:16'),(37,'App\\Models\\User',2,'authToken','7557d4c970710178a96c45929c927de47851ebf28b9aa77c94d38d2fc4d7896c','[\"*\"]',NULL,'2021-04-05 11:49:46','2021-04-05 11:49:46'),(38,'App\\Models\\User',23,'authToken','5c3646735d5952e4e8c2c704c08505ad482afcbff44dcd96f9a398d867d365af','[\"*\"]','2021-04-05 11:52:38','2021-04-05 11:52:36','2021-04-05 11:52:38'),(39,'App\\Models\\User',23,'authToken','80a6fe453f8404716ac9ecd3adc989b3ee6bd35b0c2f2b6f8042d710152ce659','[\"*\"]',NULL,'2021-04-05 11:53:15','2021-04-05 11:53:15'),(40,'App\\Models\\User',23,'authToken','376753e537d93b503f350dc2d54a89eea47ce0f17f2ac21f2ac6928a749c63bc','[\"*\"]',NULL,'2021-04-05 11:56:29','2021-04-05 11:56:29'),(41,'App\\Models\\User',23,'authToken','0019c3ef00ccc97f7f0f31f1e988a4b89c9eadccf8ef2f239738372bdf22efb3','[\"*\"]',NULL,'2021-04-05 11:57:43','2021-04-05 11:57:43'),(42,'App\\Models\\User',23,'authToken','99801122c8fc33ba1d8995ca2edd72241ddb45d2b171435d44714e3600afbc5e','[\"*\"]',NULL,'2021-04-05 14:46:50','2021-04-05 14:46:50'),(43,'App\\Models\\User',23,'authToken','1bdb273efb04e8a4dd44a3836bfb17ac4c0c7e69180f16bf2c34334412ffa157','[\"*\"]',NULL,'2021-04-05 14:49:30','2021-04-05 14:49:30'),(44,'App\\Models\\User',23,'authToken','8b2ecdcb1d4769519ef42e699032ca06937cb905cb4b4b831ca9f0768bdc2c08','[\"*\"]',NULL,'2021-04-05 21:52:36','2021-04-05 21:52:36'),(45,'App\\Models\\User',19,'authToken','f9e7cc0e264bb8b07a9b34cae48f325359cbdf9305c567ae6a30579ea466c1b8','[\"*\"]',NULL,'2021-04-14 20:11:19','2021-04-14 20:11:19'),(46,'App\\Models\\User',19,'authToken','8afe27f8aa38615924a9cf26df78383d7ec7cc21e8df604fa707597e6ed261bc','[\"*\"]','2021-04-19 21:10:19','2021-04-16 14:22:34','2021-04-19 21:10:19'),(47,'App\\Models\\User',19,'authToken','88598cc5cd4ff07f3ce8c277dfb68261cbf507a3ad5c21e21b2881df4b3c0c57','[\"*\"]','2021-04-19 21:20:17','2021-04-19 21:14:03','2021-04-19 21:20:17'),(48,'App\\Models\\User',19,'authToken','0e33c8e8378251ff9cf44aadab7946f519691ac288561f4759301a26392b9d6c','[\"*\"]','2021-04-19 22:50:16','2021-04-19 21:26:17','2021-04-19 22:50:16'),(49,'App\\Models\\User',19,'authToken','8953f2e471349ca3c2b958516b58a0b10127f002c416172d3e5eb3e8a315b9bc','[\"*\"]','2021-04-26 12:49:50','2021-04-26 11:47:19','2021-04-26 12:49:50'),(50,'App\\Models\\User',25,'authToken','9625356cd3b00d601e6a0bce2be57d29a9cd732567db01706a52e3a4875e934b','[\"*\"]',NULL,'2021-04-30 14:42:02','2021-04-30 14:42:02'),(51,'App\\Models\\User',1,'authToken','bf1e3c2cd8484510330685af98d9ddd718840a4a16748adc29744491aba05bb9','[\"*\"]',NULL,'2021-04-30 15:14:32','2021-04-30 15:14:32'),(52,'App\\Models\\User',2,'authToken','5df2a93d3e2b5d29e518822b817e9ce43024f8068cfd602922c3f1a15a85c4ff','[\"*\"]',NULL,'2021-04-30 15:14:54','2021-04-30 15:14:54'),(53,'App\\Models\\User',3,'authToken','2d882e7897ac8f330c8bc3ecdded2b075f2dfa0d099d63c5b5461d31e1163669','[\"*\"]',NULL,'2021-04-30 15:15:59','2021-04-30 15:15:59'),(54,'App\\Models\\User',4,'authToken','eedac98793dadd20230a291b6e31caf3b94ea37f5ff386ee91ab212413b4d21a','[\"*\"]',NULL,'2021-04-30 15:23:16','2021-04-30 15:23:16'),(55,'App\\Models\\User',5,'authToken','1e17d9d918da3d079b01d56e68dda9e50fc8e0bd17f756cb6f7030b749e08f52','[\"*\"]',NULL,'2021-04-30 15:23:39','2021-04-30 15:23:39'),(56,'App\\Models\\User',6,'authToken','e0ed37cd30ec50bfbf830c491358c878bc448cb39bd001fd0d6811a1966feb32','[\"*\"]',NULL,'2021-04-30 15:24:07','2021-04-30 15:24:07'),(57,'App\\Models\\User',7,'authToken','dba110b80c1fe70f4f94ba5e94129e5ed225048b7086f60e8fddc0a2a344e661','[\"*\"]',NULL,'2021-06-26 21:15:08','2021-06-26 21:15:08'),(58,'App\\Models\\User',7,'authToken','1036f6a37b0185ae5985260886e76682cdc1af8049922cf17dc1f37b0b21c283','[\"*\"]',NULL,'2021-06-26 21:15:09','2021-06-26 21:15:09'),(59,'App\\Models\\User',7,'authToken','91fe677c0e7a6c10a79138a2ddd1f10c3bb8c7474f5925ca49145957d5d7a531','[\"*\"]',NULL,'2021-06-26 21:16:08','2021-06-26 21:16:08'),(60,'App\\Models\\User',7,'authToken','d8a16e1f910c6b426c28e57d75b0633d895485dd9ea0121a79c5f5524768b2ac','[\"*\"]',NULL,'2021-06-26 21:16:30','2021-06-26 21:16:30'),(61,'App\\Models\\User',7,'authToken','b444b8e9edb361f0fb49b7b727217ffc20decbc2e2d97eed1841f4c4901e48b2','[\"*\"]',NULL,'2021-06-26 21:18:17','2021-06-26 21:18:17'),(62,'App\\Models\\User',7,'authToken','dd34038e80a4eb753864f6d0c02cfe41cd8c56380de19ec23cd14cec38da2d7a','[\"*\"]',NULL,'2021-06-26 21:35:17','2021-06-26 21:35:17'),(63,'App\\Models\\User',7,'authToken','26be011bdab589398957293a58668207ddf8295852ea89650c41665f22229e96','[\"*\"]',NULL,'2021-06-26 22:17:16','2021-06-26 22:17:16'),(64,'App\\Models\\User',7,'authToken','18d1f6e2eb1011d8fe93c4222f860815edae42988129a3817d11a2bd72e2ed54','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(65,'App\\Models\\User',7,'authToken','d7f41ed32348a213a312479ca070f26f6f14040c6c021227920051eccd4b07f7','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(66,'App\\Models\\User',7,'authToken','2d860a476c893918bf6eed406ddd6c31525ee1a3c68a4d9fad410dffe2fd0dfa','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(67,'App\\Models\\User',7,'authToken','78d68ae790364c8d129196dffe39c34c0430d0b813d482978a96c3dce41a5f51','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(68,'App\\Models\\User',7,'authToken','360bb1c790ec0037273d8abe891cbeb05d8bdde23ef06f85f121815453019cbd','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(69,'App\\Models\\User',7,'authToken','5a98de2eaab43f1b432b9cc959d992b25c2b488f4ce85176b91039b8dea4073b','[\"*\"]',NULL,'2021-06-28 15:28:43','2021-06-28 15:28:43'),(70,'App\\Models\\User',7,'authToken','ba24a7d6e8c769c84edf7ee75497d6c0a7130999638bda1a5da4cdf64885d721','[\"*\"]',NULL,'2021-06-28 15:30:00','2021-06-28 15:30:00'),(71,'App\\Models\\User',7,'authToken','b27fa6a959a9e16c237bd13fd84908822275811155861194abdccaacf1f9d5a8','[\"*\"]',NULL,'2021-06-28 16:49:28','2021-06-28 16:49:28'),(72,'App\\Models\\User',7,'authToken','09b9472505a5ac01809982902c4f789e26ea29e8151a7aa399e87a413c92a61a','[\"*\"]',NULL,'2021-06-28 16:50:54','2021-06-28 16:50:54'),(73,'App\\Models\\User',7,'authToken','cabb652f4e553decc10287cb546230a1b66a60402561a155e86ef8348a367583','[\"*\"]',NULL,'2021-06-28 16:55:19','2021-06-28 16:55:19'),(74,'App\\Models\\User',7,'authToken','09420e9e441134dde39b6bd5e6ddea07dbc097cdea27e46ab22a37de18322884','[\"*\"]',NULL,'2021-06-28 16:56:11','2021-06-28 16:56:11'),(75,'App\\Models\\User',7,'authToken','db9d8bd3f8a9b24703f518e8bd601159a39fde9f32b3238a0caa87595c13ba11','[\"*\"]',NULL,'2021-06-28 16:56:36','2021-06-28 16:56:36'),(76,'App\\Models\\User',7,'authToken','9edb1e10e3c1d3207634cacf24560462c6c5011ab054d951412ec1eec41af0a1','[\"*\"]','2021-06-28 16:57:52','2021-06-28 16:57:13','2021-06-28 16:57:52'),(77,'App\\Models\\User',7,'authToken','cd34ecaa230e2e36dca18ed15992c13e0dd85281443195d28ec9b7463d3c7e6d','[\"*\"]','2021-06-28 17:19:47','2021-06-28 17:14:42','2021-06-28 17:19:47'),(78,'App\\Models\\User',7,'authToken','f6225f0246ed9c6e1b1686023eaf3980bb2263c05973d91087fc372c30938360','[\"*\"]',NULL,'2021-06-28 17:20:43','2021-06-28 17:20:43'),(79,'App\\Models\\User',7,'authToken','0ab1120eca9ca1f17b2a09e0e507d81cd55fd964ebe9b46acbde152e1d77ace7','[\"*\"]',NULL,'2021-06-28 17:23:18','2021-06-28 17:23:18'),(80,'App\\Models\\User',7,'authToken','923fe86236692d6d968ed6748c6a6881d67e8842e0f7f281fa5d36b73b88223c','[\"*\"]',NULL,'2021-06-28 17:23:52','2021-06-28 17:23:52'),(81,'App\\Models\\User',7,'authToken','aa2fc8196b52f32be8200732642d87db0716308e4f113039304692212993cd17','[\"*\"]',NULL,'2021-06-28 17:25:48','2021-06-28 17:25:48'),(82,'App\\Models\\User',7,'authToken','3e02adbd1cdbaeba43c4209003940ece6f1ef05015d1f34088bec83608da772e','[\"*\"]',NULL,'2021-06-28 17:28:22','2021-06-28 17:28:22'),(83,'App\\Models\\User',7,'authToken','5bb42a5e803a4ef25bbfc3f44440174d821efedc4ccd5a6220e535b5d61d28dd','[\"*\"]',NULL,'2021-06-28 18:04:32','2021-06-28 18:04:32'),(84,'App\\Models\\User',7,'authToken','6ab9fce15993cfaf59807fabc3deb3829b908c3eb383b402fde05fe0e23f3b81','[\"*\"]',NULL,'2021-06-28 18:04:33','2021-06-28 18:04:33'),(85,'App\\Models\\User',7,'authToken','8196e69c020cd19a49632e6ad6c6b513a5aa1fa10fd4896949541bfac98c8e4d','[\"*\"]',NULL,'2021-06-28 18:05:46','2021-06-28 18:05:46'),(86,'App\\Models\\User',7,'authToken','9f499a7e828b15dbe7690e5a614f8520a840cd07f5e8a8edcd2a28094f20f5c9','[\"*\"]',NULL,'2021-06-28 18:05:56','2021-06-28 18:05:56'),(87,'App\\Models\\User',7,'authToken','3c71ad722793f1c3a5f0955ad60bcb1d7b4eab9d1fc40c983551d684ea503ad3','[\"*\"]',NULL,'2021-06-28 18:07:03','2021-06-28 18:07:03'),(88,'App\\Models\\User',7,'authToken','4bd71807e6d7ca072aa0e71e46c732c8696d184fa2405d1fc406d4123dea6891','[\"*\"]',NULL,'2021-06-28 18:07:15','2021-06-28 18:07:15'),(89,'App\\Models\\User',7,'authToken','a5645b88c98b8def737c39e7f58c672b2c322493946c12bb9fab335087285a1e','[\"*\"]',NULL,'2021-06-28 18:07:49','2021-06-28 18:07:49'),(90,'App\\Models\\User',7,'authToken','df13332986b238dacfc0482402556d1ad581e3050a398b9e9bb15c03f5b740f0','[\"*\"]',NULL,'2021-06-28 20:27:03','2021-06-28 20:27:03'),(91,'App\\Models\\User',7,'authToken','ce7e5671862e2ace4334b1c20c72883be462ab42bdf538541657440b5a2b0d5f','[\"*\"]',NULL,'2021-06-28 20:27:29','2021-06-28 20:27:29'),(92,'App\\Models\\User',7,'authToken','03401eb04d9bcf9c71bb8dc1d82322d6de4f8dc990f70b81c12510529eaa36d3','[\"*\"]',NULL,'2021-06-28 20:51:42','2021-06-28 20:51:42'),(93,'App\\Models\\User',7,'authToken','4ae3a81019494a5dbae79fe7bb1b5ef90d79b63d0c7a4eec49e2efeab4d42a02','[\"*\"]',NULL,'2021-06-28 21:15:31','2021-06-28 21:15:31'),(94,'App\\Models\\User',7,'authToken','99aec9d7f05f9e6ebb8466b11b6a96e002bccd63c213405fd4b66d1ab6c698ea','[\"*\"]',NULL,'2021-06-28 21:19:08','2021-06-28 21:19:08'),(95,'App\\Models\\User',7,'authToken','d646724c1296d86e95e09b3d5dbea09339925d83557c207973773d264a3d2806','[\"*\"]',NULL,'2021-06-29 12:33:17','2021-06-29 12:33:17'),(96,'App\\Models\\User',7,'authToken','7a53a5403fb333a540dbc900487270a3cca9d8b7d359175c33b1ab4271f5d2c4','[\"*\"]',NULL,'2021-06-29 12:33:17','2021-06-29 12:33:17'),(97,'App\\Models\\User',7,'authToken','6a044f558b759db1aa8a5958fbf1824594794ec7236b433fce221078424f4e71','[\"*\"]',NULL,'2021-06-29 12:33:36','2021-06-29 12:33:36'),(98,'App\\Models\\User',7,'authToken','45b954a7d5ff7c67de73bc01f05a1a46211e4003f234b1fa5e6927513c319b11','[\"*\"]',NULL,'2021-06-29 12:44:11','2021-06-29 12:44:11'),(99,'App\\Models\\User',7,'authToken','bfabbd6ce5bc8b16d936230aa8dbd0eaacacd411e8ffb696d23fa3b572262ea6','[\"*\"]',NULL,'2021-07-03 21:38:36','2021-07-03 21:38:36'),(100,'App\\Models\\User',7,'authToken','99ed1dd0d8670a2011d01070b9d3eb41b4088b6b08f8ab7a3363777329646ffd','[\"*\"]','2021-07-03 22:13:43','2021-07-03 22:11:39','2021-07-03 22:13:43'),(101,'App\\Models\\User',7,'authToken','9241a42b25d05eb5ac628a2eda955fe22c7009f5a66ef54a4ecb4a0d7a7d4f99','[\"*\"]',NULL,'2021-07-03 22:13:40','2021-07-03 22:13:40'),(102,'App\\Models\\User',30,'authToken','ef348699af7ef3b7137648fb8054b4d8de1beb25a9943f68ec45db4142e99cb6','[\"*\"]',NULL,'2021-07-05 11:38:45','2021-07-05 11:38:45'),(103,'App\\Models\\User',30,'authToken','3c8bc60a4004760bbf4b3fface3295553f2ee95d708e7b4451837032659c2f22','[\"*\"]','2021-07-05 11:39:04','2021-07-05 11:38:53','2021-07-05 11:39:04'),(104,'App\\Models\\User',19,'authToken','ca385591ada3a17167200bb14aac9e5fe72d02cb0919065435474922675d4227','[\"*\"]',NULL,'2021-07-05 18:34:02','2021-07-05 18:34:02'),(105,'App\\Models\\User',19,'authToken','90d92caa63015c4b98b66e26be87bc5ed7acd17c930863a3f50b2096f1a4f4a6','[\"*\"]',NULL,'2021-07-05 18:36:25','2021-07-05 18:36:25'),(106,'App\\Models\\User',19,'authToken','afd28a3d391af15385cfba7f9246a5f6fe7bb3a0220cf8030da8482c97577907','[\"*\"]',NULL,'2021-07-05 18:42:34','2021-07-05 18:42:34'),(107,'App\\Models\\User',19,'authToken','ef2f8ea4bb9f0bf5cafa7e21a29a3203ac4ecbc37ad80475c54a04f137b05b89','[\"*\"]',NULL,'2021-07-05 18:42:41','2021-07-05 18:42:41'),(108,'App\\Models\\User',19,'authToken','a555ebfbbc04d27a172463f0b80baef62dd7be3a42c62d4d66274ef563d35653','[\"*\"]',NULL,'2021-07-05 18:43:55','2021-07-05 18:43:55'),(109,'App\\Models\\User',19,'authToken','c0ec7233e8ea65c41af5cbe62c1ee3a7f7cf6a109ae1f78554bb4bf3bdfae967','[\"*\"]',NULL,'2021-07-05 18:44:44','2021-07-05 18:44:44'),(110,'App\\Models\\User',19,'authToken','76bd57569f6bf020e58679228616b2b90a8fffc7e53eae7b16107b0fce997b27','[\"*\"]',NULL,'2021-07-05 18:45:03','2021-07-05 18:45:03'),(111,'App\\Models\\User',19,'authToken','45d3d66771bcfc37dc8ed03cd8977924f9eb1bec48c26519df8cb7ba605bd7c9','[\"*\"]',NULL,'2021-07-05 18:46:49','2021-07-05 18:46:49'),(112,'App\\Models\\User',19,'authToken','a4ede897d8049b8cbc644f311efd467812b7118ceb70d5de68266e9b92b5502f','[\"*\"]',NULL,'2021-07-05 18:47:35','2021-07-05 18:47:35'),(113,'App\\Models\\User',19,'authToken','b418c0845b7513d4fdb6fe8bb108d107cacf1e0ce4e6ed2f4e9de12afb4acfa3','[\"*\"]',NULL,'2021-07-05 18:51:08','2021-07-05 18:51:08'),(114,'App\\Models\\User',19,'authToken','15489059983b6f7c516c16ee4eaa8235321ca7243969ed8f13202cffb0f629c3','[\"*\"]',NULL,'2021-07-05 19:00:45','2021-07-05 19:00:45'),(115,'App\\Models\\User',19,'authToken','ffc4fd1fbd40c4f302d4aa02e18bce97cea2775553ee5da699770847843cf5c2','[\"*\"]','2021-07-05 19:10:36','2021-07-05 19:03:04','2021-07-05 19:10:36'),(116,'App\\Models\\User',19,'authToken','94964dc2d76c26c57538611809323ea700a9ee340fbd6041e03b70114347b93b','[\"*\"]','2021-07-05 20:13:59','2021-07-05 20:01:21','2021-07-05 20:13:59'),(117,'App\\Models\\User',19,'authToken','9ceb928a733f73dc67b322f78a1a168f926166046c0fa9429cc04b2441f83837','[\"*\"]','2021-07-06 14:11:24','2021-07-05 20:02:37','2021-07-06 14:11:24'),(118,'App\\Models\\User',19,'authToken','f2273ac6c7433ec842941ded06318c38c0fe334de8d1a04d21ed9c3e5d3d5858','[\"*\"]','2021-07-06 20:40:53','2021-07-06 14:08:23','2021-07-06 20:40:53'),(119,'App\\Models\\User',30,'authToken','c993387481d5a4499fa1b5741f09e67c7c8f7e7d0113bccf8ce042ede588020f','[\"*\"]','2021-07-06 14:51:42','2021-07-06 14:49:36','2021-07-06 14:51:42'),(120,'App\\Models\\User',19,'authToken','cf4757a81a68d055a5b275aa839ce2d6295d4f7b9e946b395755b615f5256891','[\"*\"]','2021-07-06 20:45:54','2021-07-06 20:44:06','2021-07-06 20:45:54'),(121,'App\\Models\\User',19,'authToken','0b0ac8900d8e51681ab6543ccd52443e36da4df32e8d9409d3e125811011ecbb','[\"*\"]','2021-07-06 21:56:30','2021-07-06 20:45:53','2021-07-06 21:56:30'),(122,'App\\Models\\User',30,'authToken','718e755e9b2aa828233489d35a9e8f4c3e6a267b0e49697bcdc648c687a53b86','[\"*\"]','2021-07-06 21:16:47','2021-07-06 20:57:07','2021-07-06 21:16:47'),(123,'App\\Models\\User',40,'authToken','af7f9ddfb9812f43b81d70122d544651c45207cca65f3a5f03df22d5486ceee5','[\"*\"]',NULL,'2021-07-06 21:54:49','2021-07-06 21:54:49'),(124,'App\\Models\\User',19,'authToken','6dcff2a6ca50ebaf65637287020557f6d3df362b67f6e4610a5a2874fe552718','[\"*\"]','2021-07-07 20:31:50','2021-07-06 21:56:29','2021-07-07 20:31:50'),(125,'App\\Models\\User',19,'authToken','9ba5944e3ab86c1ded2ea853ecf8e82344662f9985e8759681ebe37b0ece5b87','[\"*\"]','2021-07-08 20:13:28','2021-07-07 20:31:49','2021-07-08 20:13:28'),(126,'App\\Models\\User',19,'authToken','c7964ee33f1b9666fca1b01ea96407738d257d47a599a127b04c1d195dc9a51e','[\"*\"]','2021-07-07 21:46:48','2021-07-07 21:42:20','2021-07-07 21:46:48'),(127,'App\\Models\\User',19,'authToken','ffc0616a287067fd72dbc2c82d98c754a876447df178fea55c390e8363229937','[\"*\"]','2021-07-08 20:54:53','2021-07-08 20:12:51','2021-07-08 20:54:53'),(128,'App\\Models\\User',19,'authToken','b202186af47622d7f8be85f87c67e17b2cd9b9b3903d925a82f41ff3c31d39c0','[\"*\"]','2021-07-08 20:58:46','2021-07-08 20:54:52','2021-07-08 20:58:46'),(129,'App\\Models\\User',19,'authToken','f0f7495f0543bedb09f3a136bc9226caaead052e299e423261d6fa0b592ec8ee','[\"*\"]',NULL,'2021-07-08 20:59:00','2021-07-08 20:59:00'),(130,'App\\Models\\User',19,'authToken','7aee4f1b3a314bb5168395849bfccb055096fbf8e6eb2c1e986440694dbe7b5e','[\"*\"]','2021-07-08 21:01:12','2021-07-08 20:59:54','2021-07-08 21:01:12'),(131,'App\\Models\\User',19,'authToken','320841081983dd7310f5fb407a898abb75cecbcca71db4ee4ba82730d287e67f','[\"*\"]','2021-07-08 21:05:30','2021-07-08 21:00:50','2021-07-08 21:05:30'),(132,'App\\Models\\User',19,'authToken','b32b731cfda628747504d66204b8a569d8a1fe17f8c255e9e48e45f4b4dbd229','[\"*\"]','2021-07-08 21:24:42','2021-07-08 21:05:52','2021-07-08 21:24:42'),(133,'App\\Models\\User',19,'authToken','59092d460f0056cd03cc58f2e79ca22339e46e6d218e3f59a5822e463f84ac3f','[\"*\"]','2021-07-08 21:20:56','2021-07-08 21:20:46','2021-07-08 21:20:56'),(134,'App\\Models\\User',19,'authToken','0ebc750a3af6b75c6e2f0ac467a04ead6f05c0c185a9dfbba5dbc48cbb435b86','[\"*\"]','2021-07-08 21:39:45','2021-07-08 21:24:06','2021-07-08 21:39:45'),(135,'App\\Models\\User',19,'authToken','272dd57a4e573f74adce4b676744a67f3fc94b858fca88948c0e691ae65b6d4a','[\"*\"]','2021-07-12 10:54:51','2021-07-08 21:40:14','2021-07-12 10:54:51'),(136,'App\\Models\\User',19,'authToken','1dba0365a5d7d735e754181b8197336b9a51ec0ad07eb4195c404dc3a38bcfcd','[\"*\"]','2021-07-12 10:58:01','2021-07-12 10:54:51','2021-07-12 10:58:01'),(137,'App\\Models\\User',19,'authToken','e8dee109fabc29c2c832635dfabb850f00a04746a55b094f4d68fcf1ac1a17bf','[\"*\"]',NULL,'2021-07-12 10:57:47','2021-07-12 10:57:47'),(138,'App\\Models\\User',19,'authToken','dddfaa8009d85117bab786057da42259a42044288bd17d1bd2a875464fe5703f','[\"*\"]','2021-07-12 10:59:44','2021-07-12 10:58:22','2021-07-12 10:59:44'),(139,'App\\Models\\User',19,'authToken','721380f2d237009388596196c4294fe6b34ab1480123d04913e4be8e596d7da3','[\"*\"]','2021-07-12 11:02:32','2021-07-12 10:59:44','2021-07-12 11:02:32'),(140,'App\\Models\\User',19,'authToken','36582a7d2b3f82917975ccec1d6e32b75fc71b8fe9b0be6f63a8d20a2b5913c1','[\"*\"]',NULL,'2021-07-12 11:01:57','2021-07-12 11:01:57'),(141,'App\\Models\\User',19,'authToken','28cbb236e0124f8101918196ec2f261d6f70b952fc8c4f6d0c88e8e7934b0c89','[\"*\"]','2021-07-12 11:05:12','2021-07-12 11:02:57','2021-07-12 11:05:12'),(142,'App\\Models\\User',19,'authToken','3daa5ad67a9f1ea49d2b13cc2583097550fa52de3d20273f82f865137c8f0b43','[\"*\"]','2021-07-12 11:06:06','2021-07-12 11:05:12','2021-07-12 11:06:06'),(143,'App\\Models\\User',19,'authToken','a7c4d7c655e552d4a4b92c69be59c606b3e9c671b76fe1be9e8135ea86772d73','[\"*\"]','2021-07-12 11:14:02','2021-07-12 11:06:06','2021-07-12 11:14:02'),(144,'App\\Models\\User',40,'authToken','db2b1b18ef27fb988e9c5cd7c75b192df05a464376782c0fa9ede0852dd19162','[\"*\"]','2021-07-12 11:16:12','2021-07-12 11:14:01','2021-07-12 11:16:12'),(145,'App\\Models\\User',40,'authToken','f2a50590e5733703cf5aa564d2a868351644f7662d11ecce2390f88ec0b35577','[\"*\"]','2021-07-12 11:34:51','2021-07-12 11:14:59','2021-07-12 11:34:51'),(146,'App\\Models\\User',40,'authToken','4868f71693d3d05af3a58ed59a6daf781efd8e220da8589397a5481cab9c0ea4','[\"*\"]',NULL,'2021-07-12 11:25:32','2021-07-12 11:25:32'),(147,'App\\Models\\User',19,'authToken','6a1a8a98af824aff28be5f58f7c7c5a20eaa8b4c9f98d4bf5679b0904fb59505','[\"*\"]','2021-07-12 11:38:37','2021-07-12 11:26:00','2021-07-12 11:38:37'),(148,'App\\Models\\User',41,'authToken','c232044b36907d5248dc84e8b19d71997a665859948c8be061da7ebb078d121f','[\"*\"]','2021-07-12 11:39:35','2021-07-12 11:37:45','2021-07-12 11:39:35');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values ('75Vr39aVDalItRCmvlSVHnwFOpCpezzN21uzv8zK',NULL,'127.0.0.1','PostmanRuntime/7.28.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiODJVdzJJMk5hS2ZYcTRzanVUUjF1cTk3eDRVdFl5SWl3bkJqUTVHbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1625557768),('9LFCLtYT2oL2IHS2BpyImFrmD06AV0tBpepKinTn',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXZQUXdvdG96aHdKNVN4N0FiWVE3NW01NXd5UFBQOHhRSzVZNGZKeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjQxOiJodHRwOi8vZm9vZC1tYXJrZXQtYmFja2VuZC50ZXN0L2Rhc2hib2FyZCI7fX0=',1625329103),('AIqCMGNxrcP7DTJncqfNDdnIYnskMw1mBdF7ZYhU',19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQk12Y0NEa3hTZVFLYkw2SDZXd3RKallpbThOcnREV2luNGg5STRGTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvZGFzaGJvYXJkL2Zvb2QvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkS0libmRwZDVQTXk2UGdaYTcxU1kwLmE2ZDVUNlRsLlE1NWJMaUlVanpqSTdINjA0SC5VdWkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEtJYm5kcGQ1UE15NlBnWmE3MVNZMC5hNmQ1VDZUbC5RNTViTGlJVWp6akk3SDYwNEguVXVpIjt9',1625405409),('CKB2AwasMbWkUR5k24hTMw3u6nitLNfH0SWuy679',NULL,'127.0.0.1','PostmanRuntime/7.28.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVpDNFR4SFRJV2VOc3lzQjUxekNEMFVyaFlmNFMzUnhqYU9lanVqWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvbG9naW4iO319',1625324173),('FtCZhVPClHsNya0SjKLdmUoHeJQPLrekEi28YWgU',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiV2xuZ2xtV2szMFhPQ0tnS2NXYndERHdDazJLM1VxbHhES0tOVml2byI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1625404087),('pEuzS99pxsCbeIGsZuxlouO7BmvkNNFEfpMseYnq',NULL,'127.0.0.1','PostmanRuntime/7.28.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzkzMkdhMFdBRFdGWXJua1VTR2dETFF5WERpeFdvNzE2cDZ6YkE3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1625579809),('qiv80GPVzrgzvlVGxUww4cjJqXBSDrjmZ5weYaJI',19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoibml0ZWxicTRORmV6MmhUNnM4dlBBcG9vQU5aSFB4TUxtNDAwVkpqSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvZGFzaGJvYXJkL2Zvb2QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTk7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRLSWJuZHBkNVBNeTZQZ1phNzFTWTAuYTZkNVQ2VGwuUTU1YkxpSVVqempJN0g2MDRILlV1aSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkS0libmRwZDVQTXk2UGdaYTcxU1kwLmE2ZDVUNlRsLlE1NWJMaUlVanpqSTdINjA0SC5VdWkiO30=',1625414867),('qMtkuDHhiiod9GFrUU368rRs5dyJdq8kQJWKhJnn',NULL,'127.0.0.1','PostmanRuntime/7.28.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFQ2dndmbGZxa3lZMld1QVlnZUpVTDVBc3dIU2k5SnZEY1JKQWJNaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1625459502),('VpMvt8zz6Xdwo0Fi8R2kNaTOKYzESkgYy36lSC40',19,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoibFo3REFYSjk1Y0x4ekNaTkxNRnB1Q3F4Vzk3anREanFUYm5HZUFsViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9mb29kLW1hcmtldC1iYWNrZW5kLnRlc3QvZGFzaGJvYXJkL3RyYW5zYWN0aW9ucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxOTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEtJYm5kcGQ1UE15NlBnWmE3MVNZMC5hNmQ1VDZUbC5RNTViTGlJVWp6akk3SDYwNEguVXVpIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRLSWJuZHBkNVBNeTZQZ1phNzFTWTAuYTZkNVQ2VGwuUTU1YkxpSVVqempJN0g2MDRILlV1aSI7fQ==',1625458959);

/*Table structure for table `team_invitations` */

DROP TABLE IF EXISTS `team_invitations`;

CREATE TABLE `team_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_invitations` */

/*Table structure for table `team_user` */

DROP TABLE IF EXISTS `team_user`;

CREATE TABLE `team_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_user` */

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `teams` */

insert  into `teams`(`id`,`user_id`,`name`,`personal_team`,`created_at`,`updated_at`) values (2,2,'Kopet',1,'2021-02-03 16:22:45','2021-02-03 16:22:45'),(3,16,'aditya\'s Team',1,NULL,NULL),(4,24,'test\'s Team',1,'2021-04-28 20:13:49','2021-04-28 20:13:49'),(5,7,'Aditya\'s Team',1,'2021-06-03 22:07:06','2021-06-03 22:07:06');

/*Table structure for table `tests` */

DROP TABLE IF EXISTS `tests`;

CREATE TABLE `tests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tests` */

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_url` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`user_id`,`food_id`,`quantity`,`total`,`status`,`payment_url`,`deleted_at`,`created_at`,`updated_at`) values (1,19,3,1,200,'PENDING',NULL,'2021-04-19 14:43:42','2021-04-16 15:06:18','2021-04-19 14:43:42'),(2,19,2,1,200,'PENDING',NULL,'2021-04-19 14:44:59','2021-04-16 15:10:44','2021-04-19 14:44:59'),(3,19,2,1,200,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/89882e6b-7104-4767-85b8-75278097c55b','2021-04-19 14:42:59','2021-04-16 15:11:55','2021-04-19 14:42:59'),(4,19,2,1,61000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/5761fbb0-7485-40da-882f-c54290a54509','2021-04-19 14:45:01','2021-04-16 15:13:06','2021-04-19 14:45:01'),(5,19,2,2,83000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/beb3875f-edc5-489b-bfda-97912c174d68','2021-04-19 14:45:02','2021-04-16 20:05:50','2021-04-19 14:45:02'),(6,19,2,3,99500,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/98eeebca-796f-4312-8f2b-e6f12bda9a86','2021-04-19 14:45:03','2021-04-16 22:05:26','2021-04-19 14:45:03'),(7,19,2,3,99500,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/62429fd8-fb26-4f1e-8db1-80d3e3b6419c','2021-04-19 14:45:05','2021-04-16 22:05:47','2021-04-19 14:45:05'),(8,19,2,6,149000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/3d4056c9-01f5-4ae9-88d4-dc9f828cff83','2021-04-19 14:45:06','2021-04-16 22:06:38','2021-04-19 14:45:06'),(9,19,2,6,149000,'ON_DELIVERY','https://app.sandbox.midtrans.com/snap/v2/vtweb/faa2c5f3-7ddd-4a78-909a-0d5b2831cc09',NULL,'2021-04-16 22:07:41','2021-04-19 15:01:41'),(10,19,2,6,149000,'CANCELLED','https://app.sandbox.midtrans.com/snap/v2/vtweb/098e1ff9-23a8-41db-b57d-6b0bc8218ed5',NULL,'2021-04-16 22:11:24','2021-04-26 12:49:45'),(11,19,2,5,77500,'CANCELLED','https://app.sandbox.midtrans.com/snap/v2/vtweb/de9fb873-0e20-4fe2-8cd1-16a5ad38f698',NULL,'2021-04-16 22:15:33','2021-04-19 22:21:08'),(12,19,2,5,77500,'ON_DELIVERY','https://app.sandbox.midtrans.com/snap/v2/vtweb/cfeeac1e-8da1-4c4b-a0f4-d7ab39d12007',NULL,'2021-04-16 22:22:43','2021-04-19 15:02:01'),(13,19,2,5,77500,'ON_DELIVERY','https://app.sandbox.midtrans.com/snap/v2/vtweb/b74733d2-2e8a-4b57-9dfa-8ef77b7743d5',NULL,'2021-04-16 22:26:49','2021-04-19 15:01:51'),(14,19,2,5,77500,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/b02b8a0c-bf4c-450e-9c87-2cc40a5204ac','2021-04-19 22:16:52','2021-04-16 22:29:33','2021-04-19 22:16:52'),(15,19,2,1,72000,'PENDING','http://10.0.2.2/food-market-backend/public/midtrans/success','2021-04-19 22:16:46','2021-04-16 22:40:49','2021-04-19 22:16:46'),(16,19,2,1,72000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/e7196490-aa98-47c1-8cba-acd5c8cdc697','2021-04-19 22:16:47','2021-04-16 22:41:48','2021-04-19 22:16:47'),(17,19,2,1,72000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/ab0c5d17-82f6-45eb-8381-6db541cbbdf6','2021-04-19 22:16:49','2021-04-16 22:41:58','2021-04-19 22:16:49'),(18,19,2,1,72000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/65d512f4-31d3-4f37-a01c-0f904202fce1','2021-04-19 22:16:43','2021-04-16 22:44:27','2021-04-19 22:16:43'),(19,19,2,6,182000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/5e766d84-1348-4700-b271-273ad5bc292c','2021-04-19 22:16:50','2021-04-16 22:45:37','2021-04-19 22:16:50'),(20,19,2,6,182000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/08e7de25-b416-448f-9ede-d1e21918448f',NULL,'2021-04-16 22:46:47','2021-04-16 22:46:47'),(21,19,2,6,182000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/082dbaf4-8410-45f0-893c-9e7c5185d854','2021-04-19 22:16:55','2021-04-16 22:47:47','2021-04-19 22:16:55'),(22,19,2,2,83000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/8d52fb66-db28-416b-92ef-0e1ab1e51abb',NULL,'2021-04-19 19:37:37','2021-04-19 19:37:38'),(23,19,2,2,83000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/9406d4f7-c43e-44b1-9951-8968edb2b762','2021-04-19 22:16:58','2021-04-19 19:38:24','2021-04-19 22:16:58'),(24,19,2,2,61000,'DELIVERED','https://app.sandbox.midtrans.com/snap/v2/vtweb/b4b851a1-c10b-45c4-82d9-420151d869ea',NULL,'2021-04-19 19:39:26','2021-04-19 22:45:37'),(25,19,2,1,55500,'DELIVERED','https://app.sandbox.midtrans.com/snap/v2/vtweb/9cd44bc3-bdc5-4738-9e21-2dd0d1e78206',NULL,'2021-04-19 19:40:55','2021-04-19 22:45:25'),(26,19,2,2,61000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/4261e23a-3d7c-49eb-aef9-7fa44c149f90',NULL,'2021-04-26 12:25:25','2021-07-05 11:54:55'),(27,19,2,2,94000,'PENDING','https://app.sandbox.midtrans.com/snap/v2/vtweb/0b070e9d-c87a-410b-817d-cb1de0ca6d57','2021-07-05 11:42:47','2021-04-26 12:26:25','2021-07-05 11:42:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `houseNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`,`address`,`houseNumber`,`phoneNumber`,`city`,`roles`) values (19,'Aditya Prasetyo','adityapras10@gmail.com',NULL,'$2y$10$nYAWYuxCRiNxfIPM2bk0m.ttVtZUHdmp03VPXUl9Y1E9mOaNDUv0e',NULL,NULL,'Y0wrJSUEevD19CsC2zSWZHrG0wiTnoLghzBmfQoQk4Wif35gxpBFsAC3RpH0',5,'assets/user/12072021xLHzQcZcPHWgzDt.jpg','2021-06-03 22:07:06','2021-07-12 11:34:51','','54','089524223323','Tangerang Selatan','ADMIN'),(40,'pamungkas','pamungkas@gmail.com',NULL,'$2y$10$L4SZY4DXSwKigj7YcdffMuRpmo2sk/RstYcJjCwf7G5QEpSzKYbeu',NULL,NULL,NULL,NULL,'assets/user/06072021WTh0v6lA3LtsXlY.jpg','2021-07-06 21:52:23','2021-07-06 21:52:23',NULL,NULL,NULL,NULL,'USER'),(41,'Maternal','Maternal@gmail.com',NULL,'$2y$10$5qibFJHaqAl0Co3mPKUFlO6i86q0jXESHH8.8jp9UmkfN1nacIUaa',NULL,NULL,NULL,NULL,'assets/user/12072021BXhUbqkqzumIRu3.jpg','2021-07-12 11:37:12','2021-07-12 11:37:12',NULL,'77','021456789','Jakarta','USER');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
