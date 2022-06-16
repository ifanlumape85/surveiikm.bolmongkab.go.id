-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: esakip
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'BUSI2','kategor-1',NULL,'2021-06-25 15:28:37','2022-01-28 16:14:58'),(2,'KANVAS REM','kategori-2',NULL,'2021-06-25 15:28:43','2021-07-19 10:25:01'),(3,'Oli','oli','2021-07-19 10:23:51','2021-07-17 15:45:00','2021-07-19 10:23:51'),(4,'OLI','oli-matic',NULL,'2021-07-19 01:17:03','2021-07-19 10:24:46'),(5,'IGNITION COIL','ignition-coil',NULL,'2021-07-19 10:25:58','2021-07-19 10:25:58'),(6,'FILTER OLI','filter-oli',NULL,'2021-07-19 10:26:07','2021-07-19 10:26:07'),(7,'FILTER SOLAR','filter-solar',NULL,'2021-07-19 10:26:14','2021-07-19 10:26:14'),(8,'CARBON CLEANER','carbon-cleaner',NULL,'2021-07-19 10:26:24','2021-07-19 10:26:24'),(9,'FANBELT','fanbelt',NULL,'2021-07-19 10:26:42','2021-07-19 10:26:42'),(10,'BEARING/LAHER','bearinglaher',NULL,'2021-07-19 10:26:55','2021-07-19 10:26:55'),(11,'MOTOR FAN','motor-fan',NULL,'2021-07-19 10:27:06','2021-07-19 10:27:06'),(12,'BOHLAM LAMPU','bohlam-lampu',NULL,'2021-07-19 10:27:36','2021-07-19 10:27:36'),(13,'FUSE/SEKRING','fusesekring',NULL,'2021-07-19 10:27:46','2021-07-19 10:27:46'),(14,'CAIRAN PURGING','cairan-purging',NULL,'2021-07-19 10:28:03','2021-07-19 10:28:03'),(15,'CARB SPRAY','carb-spray',NULL,'2021-07-19 10:28:20','2021-07-19 10:28:20'),(16,'TREEBOND','treebond',NULL,'2021-07-19 10:28:32','2021-07-19 10:28:32'),(17,'ENGINE FLUSH','engine-flush',NULL,'2021-07-19 10:28:44','2021-07-19 10:28:44'),(18,'INJECTION CLEANING FOAM','injection-cleaning-foam',NULL,'2021-07-19 10:29:17','2021-07-19 10:29:17'),(19,'MULTIPURPOSE','multipurpose',NULL,'2021-07-19 10:29:37','2021-07-19 10:29:37'),(20,'COOLANT RADIATOR','coolant-radiator',NULL,'2021-07-19 10:29:49','2021-07-19 10:29:49'),(21,'LABRANG REM TANGAN','labrang-rem-tangan',NULL,'2021-07-19 10:30:27','2021-07-19 10:30:27'),(22,'O RING FILTER','o-ring-filter',NULL,'2021-07-19 10:30:56','2021-07-19 10:30:56'),(23,'BRAKE FLUID','brake-fluid',NULL,'2021-07-31 09:05:55','2021-07-31 09:05:55'),(24,'CAIRAN LEM','cairan-lem',NULL,'2021-07-31 09:33:10','2021-07-31 09:33:10'),(25,'FILTER UDARA','filter-udara',NULL,'2021-07-31 10:57:45','2021-07-31 10:57:45'),(26,'GASKET/PAKING','gasketpaking',NULL,'2021-07-31 11:15:21','2021-07-31 11:15:21'),(27,'ELEKTRONIK POWER STEERING','elektronik-power-steering',NULL,'2021-07-31 11:20:25','2021-07-31 11:20:25'),(28,'KARET REM','karet-rem',NULL,'2021-08-09 07:46:46','2021-08-09 07:46:46'),(29,'SEAL','seal',NULL,'2021-08-09 08:18:54','2021-08-09 08:18:54'),(30,'SHOCKBREAKER','shockbreaker',NULL,'2021-08-09 08:31:06','2021-08-09 08:31:06'),(31,'CAIRAN PEMBERSIH','cairan-pembersih',NULL,'2021-08-09 08:39:51','2021-08-09 08:39:51'),(32,'BALL JOINT','ball-joint',NULL,'2021-08-09 08:56:14','2021-08-09 08:56:14'),(33,'KLAKSON','klakson',NULL,'2021-08-19 00:04:26','2021-08-19 00:04:26'),(34,'BEARING CLUTCH','bearing-clutch',NULL,'2021-08-19 00:17:53','2021-08-19 00:17:53'),(35,'COVER CLUTCH','cover-clutch',NULL,'2021-08-19 00:19:28','2021-08-19 00:19:28'),(36,'DISC CLUTCH','disc-clutch',NULL,'2021-08-19 00:19:40','2021-08-19 00:19:40'),(37,'KOPLING SET','kopling-set',NULL,'2021-08-19 00:32:09','2021-08-19 00:32:09');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klasifikasi`
--

DROP TABLE IF EXISTS `klasifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klasifikasi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasifikasi`
--

LOCK TABLES `klasifikasi` WRITE;
/*!40000 ALTER TABLE `klasifikasi` DISABLE KEYS */;
INSERT INTO `klasifikasi` VALUES (1,'Perencanaan Kinerja','perencanaan-kinerja','assets/klasifikasi/2FJEQu6Jiq6rzISs4MNnbIvIyszNUMtrdiEKDtOA.png',NULL,'2021-06-25 15:28:37','2022-01-28 22:18:58'),(2,'Pengukuran Kinerja','pengukuran-kinerja','assets/klasifikasi/MN9CEJ1yiSXV1TXG7AlLQ1nshl7JsGRPok7wI7UF.png',NULL,'2021-06-25 15:28:43','2022-01-28 22:19:51'),(3,'Pelaporan Kinerja','pelaporan-kinerja','assets/klasifikasi/a1HM9MPFZMmwUUsVEihN6iNBy38gJTrvE9gcwJTO.png','2021-07-19 10:23:51','2021-07-17 15:45:00','2022-01-28 22:20:00'),(4,'Evaluasi Kinerja','evaluasi-kinerja','assets/klasifikasi/qnei4T8dUeW6lC4jLHtQwgchum2qwSNzzTErbjZc.png',NULL,'2021-07-19 01:17:03','2022-01-28 22:20:11');
/*!40000 ALTER TABLE `klasifikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klasifikasi_peraturan`
--

DROP TABLE IF EXISTS `klasifikasi_peraturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klasifikasi_peraturan` (
  `id_klasifikasi` bigint unsigned NOT NULL,
  `id_peraturan` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klasifikasi_peraturan`
--

LOCK TABLES `klasifikasi_peraturan` WRITE;
/*!40000 ALTER TABLE `klasifikasi_peraturan` DISABLE KEYS */;
INSERT INTO `klasifikasi_peraturan` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `klasifikasi_peraturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_03_18_083737_create_permission_tables',1),(5,'2021_04_14_230443_create_information_table',2),(6,'2021_06_10_120507_create_kategoris_table',3),(7,'2021_06_10_120521_create_satuans_table',3),(8,'2021_06_10_120533_create_lokasis_table',3),(9,'2021_06_10_120620_create_jenis_pelanggans_table',3),(10,'2021_06_10_120644_create_kontraks_table',3),(11,'2021_06_10_120702_create_pemasoks_table',3),(12,'2021_06_10_120712_create_produks_table',3),(13,'2021_06_10_120942_create_jasas_table',3),(14,'2021_06_10_121008_create_kategori_jasas_table',3),(15,'2021_06_10_121047_create_jasa_produks_table',3),(16,'2021_06_10_121302_create_spks_table',3),(17,'2021_06_10_121646_create_kendaraans_table',3),(18,'2021_06_10_121654_create_jenis_kendaraans_table',3),(19,'2021_06_11_100443_add_fiel_name_to_galleries',4),(20,'2021_06_11_105159_add_field_delete_to_jasa',5),(21,'2021_06_11_211138_add_keterangan_field_to_kategori_jasa',6),(22,'2021_06_11_234346_add_more_field_to_profiles',7),(23,'2021_06_13_035231_create_konsultasis_table',8),(24,'2021_06_13_040258_add_thumbnail_field_to_profiles',9),(25,'2021_06_13_062648_create_testimonis_table',10),(31,'2021_06_13_102750_add_pesan_field_to_konsultasi',11),(32,'2021_06_25_231311_create_jasa_produks_table',11),(33,'2021_06_26_235302_create_jasa_kendaraans_table',12),(34,'2021_06_26_235544_create_jasa_spks_table',12),(36,'2021_06_27_012738_add_more_field_to_users',13),(37,'2021_07_07_023038_add_field_password_to_users',13),(38,'2021_07_07_092013_add_pemilik_field_to_kendaraan',14),(39,'2021_07_08_003707_create_mereks_table',15),(40,'2021_07_08_004139_add_field_merek_to_jenis_kendaraan',15),(41,'2021_07_08_054331_create_temp_jasas_table',16),(42,'2021_07_08_055003_create_temp_users_table',17),(43,'2021_07_09_004743_create_temp_mekaniks_table',18),(44,'2021_07_09_024113_create_mekanik_spks_table',19),(45,'2021_07_10_093936_create_approve_spks_table',20),(46,'2021_07_11_082402_create_jenis_users_table',21),(47,'2021_07_11_084745_add_field_telpon_to_users',22),(48,'2021_07_11_084922_create_jenis_pembayarans_table',23),(49,'2021_07_11_092210_create_jenis_pelanggan_users_table',24),(50,'2021_07_12_011919_create_registrasis_table',25),(51,'2021_07_12_012005_create_statuses_table',25),(53,'2021_07_12_013415_create_registrasi_statuses_table',26),(54,'2021_07_12_105623_add_field_nomor_to_registrasi',27),(55,'2021_07_12_202629_create_invoices_table',28),(56,'2021_07_12_203228_add_user_field_to_invoice',29),(57,'2021_07_12_213439_add_total_field_to_invoice',30),(58,'2021_07_12_233648_add_pembayaran_field_to_invoice',31),(59,'2021_07_14_234231_add_email_field_to_users',32),(61,'2021_07_15_081822_create_invoice_produks_table',33),(62,'2021_07_15_101542_create_invoice_jasas_table',34),(63,'2021_07_15_101619_create_invoice_produk_manuals_table',34),(64,'2021_07_18_001601_add_minimal_field_to_produk',35),(65,'2021_07_18_041626_add_status_field_to_registrasi',36),(66,'2021_07_18_073400_add_status_field_to_spk',37),(67,'2021_07_18_234325_add_some_field_to_users',38),(79,'2022_01_29_043423_add_more_field_to_sakip',39),(80,'2022_01_29_051022_add_more_field_to_peraturan',40),(81,'2022_01_29_053047_add_more_field_to_klasifikasi',41),(82,'2022_02_18_013653_add_field_publish_to_sakip',42),(83,'2022_02_18_013857_create_validasis_table',42),(84,'2022_02_18_023943_change_catatan_nulllable_to_validasi',43),(85,'2022_02_18_034810_change_telpon_nulllable_to_users',44);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',19),(6,'App\\Models\\User',26),(1,'App\\Models\\User',28);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd`
--

DROP TABLE IF EXISTS `opd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd`
--

LOCK TABLES `opd` WRITE;
/*!40000 ALTER TABLE `opd` DISABLE KEYS */;
INSERT INTO `opd` VALUES (1,'DISKOMINFO','oil-change','Dinas Komunikasi dan Informatika',NULL,'2021-06-11 13:17:54','2022-01-28 17:24:46'),(2,'DINSOS','batteries','DINAS SOSIAL',NULL,'2021-06-11 13:18:27','2022-01-28 17:25:21'),(3,'SERVICE TRANSMISI MANUAL','tow-truck','Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.',NULL,'2021-06-11 13:18:50','2021-07-19 07:06:14'),(4,'KELISTRIKAN','tire-change','Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.',NULL,'2021-06-11 13:19:06','2021-07-19 07:05:32'),(5,'SERVICE REM BELAKANG','engine-repair','Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','2021-07-19 07:13:01','2021-06-11 13:19:23','2021-07-19 07:13:01'),(6,'SERVICE REM KENDARAAN','car-maintanance','Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.',NULL,'2021-06-11 13:19:40','2021-07-19 07:12:48'),(7,'KAKI KAKI KENDARAAN','kaki-kaki-kendaraan',NULL,NULL,'2021-07-19 01:20:36','2021-07-19 01:20:36'),(8,'GANTI OLI MATIC','ganti-oli-matic',NULL,NULL,'2021-07-19 07:07:56','2021-07-19 07:07:56'),(9,'TUNE UP','tune-up',NULL,NULL,'2021-07-19 07:08:23','2021-07-19 07:08:23'),(10,'SERVICE BERKALA','service-berkala',NULL,NULL,'2021-07-19 07:08:31','2021-07-19 07:08:31'),(11,'DIESEL COMMON RAIL','diesel-common-rail',NULL,NULL,'2021-07-19 07:09:03','2021-07-19 07:09:03'),(12,'SCAN ECU','scan-ecu',NULL,NULL,'2021-07-19 07:09:25','2021-07-19 07:09:25'),(13,'OVERHAUL','overhaul',NULL,NULL,'2021-07-19 07:09:41','2021-07-19 07:09:41'),(14,'ELEKTRONIK POWER STEERING','elektronik-power-steering',NULL,NULL,'2021-07-19 07:10:03','2021-07-19 07:10:03'),(15,'SERVICE REM ABS','service-rem-abs',NULL,NULL,'2021-07-19 07:10:21','2021-07-19 07:10:21'),(16,'REMAP ECU','remap-ecu',NULL,NULL,'2021-07-19 07:10:35','2021-07-19 07:10:35'),(17,'SERVICE AC','service-ac',NULL,NULL,'2021-07-19 07:10:46','2021-07-19 07:10:46'),(18,'ENGINE SERVICE','engine-service',NULL,NULL,'2021-07-19 07:11:07','2021-07-19 07:11:07');
/*!40000 ALTER TABLE `opd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_user`
--

DROP TABLE IF EXISTS `opd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_user` (
  `id_opd` bigint unsigned NOT NULL,
  `id_user` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_user`
--

LOCK TABLES `opd_user` WRITE;
/*!40000 ALTER TABLE `opd_user` DISABLE KEYS */;
INSERT INTO `opd_user` VALUES (1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(2,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,127),(1,128),(1,129),(1,130),(1,131),(1,132),(1,133),(1,134),(1,135),(1,136),(1,137),(1,138),(1,139),(1,140),(1,141),(1,142),(1,143),(1,144),(1,145),(1,146),(1,147),(1,148);
/*!40000 ALTER TABLE `opd_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peraturan`
--

DROP TABLE IF EXISTS `peraturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peraturan` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `didownload` int NOT NULL DEFAULT '0',
  `dibaca` int NOT NULL DEFAULT '0',
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peraturan`
--

LOCK TABLES `peraturan` WRITE;
/*!40000 ALTER TABLE `peraturan` DISABLE KEYS */;
INSERT INTO `peraturan` VALUES (1,'KOPLING SET','oil-change',0,8,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','assets/sakip/ONpGDrtD3lOllRvkSna6VoPqmTvz86ufSrXX4Abg.pdf',NULL,'2021-06-11 13:17:54','2022-03-29 03:39:08'),(2,'SERVICE TRANSMISI MATIC','batteries',0,1,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','assets/sakip/ONpGDrtD3lOllRvkSna6VoPqmTvz86ufSrXX4Abg.pdf',NULL,'2021-06-11 13:18:27','2022-01-28 22:29:29'),(3,'SERVICE TRANSMISI MANUAL','tow-truck',0,0,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','assets/sakip/ONpGDrtD3lOllRvkSna6VoPqmTvz86ufSrXX4Abg.pdf',NULL,'2021-06-11 13:18:50','2021-07-19 07:06:14'),(4,'KELISTRIKAN','tire-change',0,0,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','assets/sakip/ONpGDrtD3lOllRvkSna6VoPqmTvz86ufSrXX4Abg.pdf',NULL,'2021-06-11 13:19:06','2021-07-19 07:05:32'),(5,'SERVICE REM BELAKANG','engine-repair',0,0,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','','2021-07-19 07:13:01','2021-06-11 13:19:23','2021-07-19 07:13:01'),(6,'SERVICE REM KENDARAAN','car-maintanance',0,0,'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.','',NULL,'2021-06-11 13:19:40','2021-07-19 07:12:48'),(7,'KAKI KAKI KENDARAAN','kaki-kaki-kendaraan',0,0,NULL,'',NULL,'2021-07-19 01:20:36','2021-07-19 01:20:36'),(8,'GANTI OLI MATIC','ganti-oli-matic',0,0,NULL,'',NULL,'2021-07-19 07:07:56','2021-07-19 07:07:56'),(9,'TUNE UP','tune-up',0,0,NULL,'',NULL,'2021-07-19 07:08:23','2021-07-19 07:08:23'),(10,'SERVICE BERKALA','service-berkala',0,2,NULL,'',NULL,'2021-07-19 07:08:31','2022-03-20 22:26:46'),(11,'DIESEL COMMON RAIL','diesel-common-rail',0,0,NULL,'',NULL,'2021-07-19 07:09:03','2021-07-19 07:09:03'),(12,'SCAN ECU','scan-ecu',0,0,NULL,'',NULL,'2021-07-19 07:09:25','2021-07-19 07:09:25'),(13,'OVERHAUL','overhaul',0,0,NULL,'',NULL,'2021-07-19 07:09:41','2021-07-19 07:09:41'),(14,'ELEKTRONIK POWER STEERING','elektronik-power-steering',0,0,NULL,'',NULL,'2021-07-19 07:10:03','2021-07-19 07:10:03'),(15,'SERVICE REM ABS','service-rem-abs',0,0,NULL,'',NULL,'2021-07-19 07:10:21','2021-07-19 07:10:21'),(16,'REMAP ECU','remap-ecu',0,0,NULL,'',NULL,'2021-07-19 07:10:35','2021-07-19 07:10:35'),(17,'SERVICE AC','service-ac',0,0,NULL,'',NULL,'2021-07-19 07:10:46','2021-07-19 07:10:46'),(18,'ENGINE SERVICE','engine-service',0,0,NULL,'',NULL,'2021-07-19 07:11:07','2021-07-19 07:11:07');
/*!40000 ALTER TABLE `peraturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (93,'role-list','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(94,'role-create','web','2021-03-18 01:03:38','2021-03-18 01:03:38'),(95,'role-edit','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(96,'role-delete','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(105,'kategori-list','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(106,'kategori-create','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(107,'kategori-edit','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(108,'kategori-delete','web','2021-03-18 01:03:39','2021-03-18 01:03:39'),(117,'user-list','web','2021-03-18 10:27:32','2021-03-18 10:27:32'),(118,'user-create','web','2021-03-18 10:27:32','2021-03-18 10:27:32'),(119,'user-edit','web','2021-03-18 10:28:18','2021-03-18 10:28:18'),(120,'user-delete','web','2021-03-18 10:28:18','2021-03-18 10:27:32'),(147,'invoice-edit','web','2021-07-11 17:44:44','2021-07-11 17:44:44'),(148,'invoice-delete','web','2021-07-11 17:44:44','2021-07-11 17:44:44'),(149,'peraturan-list','web','2021-07-12 04:58:07','2021-07-12 04:58:07'),(150,'peraturan-create','web','2021-07-12 04:58:07','2021-07-12 04:58:07'),(151,'peraturan-edit','web','2021-07-12 04:58:07','2021-07-12 04:58:07'),(152,'peraturan-delete','web','2021-07-12 04:58:07','2021-07-12 04:58:07'),(153,'opd-list','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(154,'opd-create','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(155,'opd-edit','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(156,'opd-delete','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(157,'sakip-list','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(158,'sakip-create','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(159,'sakip-edit','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(160,'sakip-delete','web','2021-07-12 05:29:35','2021-07-12 05:29:35'),(161,'validasi-list','web','2022-02-17 21:18:59','2022-02-17 21:18:59'),(162,'validasi-create','web','2022-02-17 21:18:59','2022-02-17 21:18:59'),(163,'validasi-edit','web','2022-02-17 21:18:59','2022-02-17 21:18:59'),(164,'validasi-delete','web','2022-02-17 21:18:59','2022-02-17 21:18:59');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (93,1),(94,1),(95,1),(96,1),(105,1),(106,1),(107,1),(108,1),(117,1),(118,1),(119,1),(120,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(119,6),(157,6),(158,6),(159,6),(160,6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2021-03-18 01:05:27','2021-03-18 01:05:27'),(6,'OPD','web','2022-01-28 17:20:04','2022-01-28 17:20:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sakip`
--

DROP TABLE IF EXISTS `sakip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sakip` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` bigint unsigned NOT NULL,
  `id_opd` bigint unsigned NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `didownload` int NOT NULL DEFAULT '0',
  `dibaca` int NOT NULL DEFAULT '0',
  `tahun` int NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sakip`
--

LOCK TABLES `sakip` WRITE;
/*!40000 ALTER TABLE `sakip` DISABLE KEYS */;
INSERT INTO `sakip` VALUES (1,1,1,'Produk 1','',0,4,2022,'assets/sakip/qa5DaEMOdwZxulRCfFa07FW7YOeR1opUEMaq5M9f.pdf',NULL,'2022-02-11 20:29:06','2022-03-30 16:02:18','N'),(2,5,2,'Produk 1','',0,6,2021,'assets/sakip/SgQHFll571NnqMaRJvXqKV4Ho3y6ZrWtNmC9UoZy.pdf',NULL,'2022-02-17 19:42:45','2022-03-29 03:28:47','Y');
/*!40000 ALTER TABLE `sakip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (26,'NICKSON LOSAMA','085398177537','PANIKI','kominfo','kominfo@bolmongkab.go.id',NULL,'$2y$10$Bvr0vOs.rNXpMTimiRUxV.2ljA4K9cWEPm8ssYKpF58OMSnuYCMja',NULL,'N',1,'2021-07-25 22:27:03','2022-01-28 17:24:16'),(28,'ADMIN','','-','esakip','admin@e-sakip.bolmongkab.go.id','2021-07-26 14:43:12','$2y$10$hRZet3Nnpqs.TiqGmlQasO/f0zCYrfx3jni8XAZLGXKuYCngfSAda',NULL,'Y',1,'2021-07-26 14:43:12','2022-01-28 17:23:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validasi`
--

DROP TABLE IF EXISTS `validasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validasi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_sakip` bigint unsigned NOT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint unsigned NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validasi`
--

LOCK TABLES `validasi` WRITE;
/*!40000 ALTER TABLE `validasi` DISABLE KEYS */;
INSERT INTO `validasi` VALUES (1,1,NULL,28,'N','2022-02-17 18:43:03','2022-02-17 18:43:03'),(2,2,NULL,28,'N','2022-02-17 19:45:08','2022-02-17 19:45:08'),(3,2,NULL,28,'N','2022-02-17 19:45:15','2022-02-17 19:45:15'),(4,2,NULL,28,'N','2022-02-17 19:45:33','2022-02-17 19:45:33'),(5,2,NULL,28,'Y','2022-02-17 19:45:59','2022-02-17 19:45:59'),(6,2,NULL,28,'Y','2022-02-17 23:37:46','2022-02-17 23:37:46');
/*!40000 ALTER TABLE `validasi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:14:49
