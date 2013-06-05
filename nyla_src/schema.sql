
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `univ_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Glend Maatita','glend_maatita@yahoo.com','$2a$10$wMJ0mGS6F2uxTNgwszQm5.UbnfisAYuojgHlqvB5Cmr5PBvta4qe2','RaWRTEH4aYXwH_OzhykVhg','2013-05-30 04:05:16','2013-05-30 04:05:16','admin',NULL),(3,'Agung Laksono','agung@yahoo.com','$2a$10$FuBGyVijyZNL/NyK0dCpAuLJqOiUQxb2vajH9uwzR15LJxpDyA/jW','ixgcyWSZZEJQPLBLEsDkGw','2013-05-30 06:15:05','2013-05-30 06:15:05','operator',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `feed` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `jenis_pts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_pts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `jenis_pts` WRITE;
/*!40000 ALTER TABLE `jenis_pts` DISABLE KEYS */;
INSERT INTO `jenis_pts` VALUES (1,'Universitas','2013-05-30 04:17:37','2013-05-30 04:17:37'),(2,'Institut','2013-05-30 04:17:46','2013-05-30 04:17:46'),(3,'Politeknik','2013-05-30 04:17:53','2013-05-30 04:17:53'),(4,'Akademi','2013-05-30 04:21:50','2013-05-30 04:21:50'),(5,'Sekolah Tinggi','2013-05-30 04:22:22','2013-05-30 04:22:22');
/*!40000 ALTER TABLE `jenis_pts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `jenjang_prodis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenjang_prodis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `jenjang_prodis` WRITE;
/*!40000 ALTER TABLE `jenjang_prodis` DISABLE KEYS */;
INSERT INTO `jenjang_prodis` VALUES (1,'S1','Sarjana','2013-05-31 08:48:33','2013-05-31 08:48:33');
/*!40000 ALTER TABLE `jenjang_prodis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `kotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kota` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_kotas_on_provinsi_id` (`provinsi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `kotas` WRITE;
/*!40000 ALTER TABLE `kotas` DISABLE KEYS */;
INSERT INTO `kotas` VALUES (1,'Surabaya','2013-05-30 04:17:07','2013-05-30 04:17:07',1),(2,'Bandung','2013-05-30 04:17:18','2013-05-30 04:17:18',2);
/*!40000 ALTER TABLE `kotas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_akreditasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_akreditasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_sk` varchar(255) DEFAULT NULL,
  `tahun_sk` int(11) DEFAULT NULL,
  `peringkat` varchar(255) DEFAULT NULL,
  `tanggal_kadaluarsa` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_akreditasis` WRITE;
/*!40000 ALTER TABLE `prodi_akreditasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_akreditasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_biayas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_biayas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biaya` text,
  `nilai` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_biayas_on_prodi_id` (`prodi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_biayas` WRITE;
/*!40000 ALTER TABLE `prodi_biayas` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_biayas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_fasilitas_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_fasilitas_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodifasil_id` int(11) DEFAULT NULL,
  `prodi_fasil_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_fasilitas_galleries_on_prodifasil_id` (`prodifasil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_fasilitas_galleries` WRITE;
/*!40000 ALTER TABLE `prodi_fasilitas_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_fasilitas_galleries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_fasils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_fasils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fasilitas` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_fasils_on_prodi_id` (`prodi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_fasils` WRITE;
/*!40000 ALTER TABLE `prodi_fasils` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_fasils` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `description` text,
  `path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_galleries_on_prodi_id` (`prodi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_galleries` WRITE;
/*!40000 ALTER TABLE `prodi_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_galleries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_prestasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_prestasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  `prestasi` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_prestasis_on_prodi_id` (`prodi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_prestasis` WRITE;
/*!40000 ALTER TABLE `prodi_prestasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_prestasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodi_silabuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi_silabuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tujuan` text,
  `kompetensi` text,
  `pokok_bahasan` text,
  `referensi` text,
  `mata_kuliah` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `prodi_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodi_silabuses_on_prodi_id` (`prodi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodi_silabuses` WRITE;
/*!40000 ALTER TABLE `prodi_silabuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodi_silabuses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `prodis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_prodi` varchar(255) DEFAULT NULL,
  `tahun_berdiri` int(11) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `profile` text,
  `jumlah_mahasiswa` int(11) DEFAULT NULL,
  `bidang_studi` text,
  `kompetensi` text,
  `seleksi_masuk` text,
  `logo_path` text,
  `total_dosen_prof` int(11) DEFAULT NULL,
  `total_dosen_doktor` int(11) DEFAULT NULL,
  `total_dosen_master` int(11) DEFAULT NULL,
  `total_dosen_sarjana` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `jenjang_prodi_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prodis_on_univ_id` (`univ_id`),
  KEY `index_prodis_on_kota_id` (`kota_id`),
  KEY `index_prodis_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prodis` WRITE;
/*!40000 ALTER TABLE `prodis` DISABLE KEYS */;
INSERT INTO `prodis` VALUES (1,'Akuntasi',1980,'Fakultas Ekonomi','Unair Kampus B','089990','089990','akuntasi@unair.ac.id','http://unair.ac.id','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,'2013-05-31 08:49:45','2013-05-31 08:49:45',1,1,1,NULL,NULL,'akuntasi','piala.jpg');
/*!40000 ALTER TABLE `prodis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `provinsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinsis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `provinsis` WRITE;
/*!40000 ALTER TABLE `provinsis` DISABLE KEYS */;
INSERT INTO `provinsis` VALUES (1,'Jawa Timur','2013-05-30 04:14:22','2013-05-30 04:14:22'),(2,'Jawa Barat','2013-05-30 04:14:30','2013-05-30 04:14:30'),(3,'DKI Jakarta','2013-05-30 04:14:40','2013-05-30 04:14:40');
/*!40000 ALTER TABLE `provinsis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130111133631'),('20130112121128'),('20130112123307'),('20130115051351'),('20130118101259'),('20130122150030'),('20130122164031'),('20130214030124'),('20130318065012'),('20130318065213'),('20130318080006'),('20130318081314'),('20130318082132'),('20130318082351'),('20130318083234'),('20130318083720'),('20130318083856'),('20130318084243'),('20130318084435'),('20130318090224'),('20130318094015'),('20130318094427'),('20130318095405'),('20130318103350'),('20130318104103'),('20130318111613'),('20130318130429'),('20130318133302'),('20130318133925'),('20130318134426'),('20130318134839'),('20130318135411'),('20130318172208'),('20130319085652'),('20130319093524'),('20130319094114'),('20130319094607'),('20130319095235'),('20130319100400'),('20130319101759'),('20130319102736'),('20130319111844'),('20130320041611'),('20130320050244'),('20130320051100'),('20130320051255'),('20130320051440'),('20130320051901'),('20130320062937'),('20130320063531'),('20130320072952'),('20130320074659'),('20130320082705'),('20130320082811'),('20130325094847'),('20130325095221'),('20130325095521'),('20130325095911'),('20130326064204'),('20130326064321'),('20130327050431'),('20130327070743'),('20130327084227'),('20130327091626'),('20130403054523'),('20130403061135'),('20130403061325'),('20130403061630'),('20130403061703'),('20130403061818'),('20130403063400'),('20130403063453'),('20130403063628'),('20130403063842'),('20130403085725'),('20130403085837'),('20130403085947'),('20130403090137'),('20130429085958'),('20130429163743'),('20130429165802'),('20130503063951'),('20130504184450'),('20130506074957'),('20130507122147'),('20130513065812'),('20130515052111'),('20130521164317'),('20130522101400'),('20130523133708'),('20130523143248'),('20130528170828'),('20130530052705'),('20130531060419'),('20130531083549');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_beasiswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_beasiswas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_beasiswa` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_beasiswas_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_beasiswas` WRITE;
/*!40000 ALTER TABLE `subscriber_beasiswas` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_beasiswas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_organisasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_organisasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tingkat` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `path_sertifikat` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_organisasis_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_organisasis` WRITE;
/*!40000 ALTER TABLE `subscriber_organisasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_organisasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_pelatihans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_pelatihans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) DEFAULT NULL,
  `judul` text,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `skala` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `sertifikat_path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_pelatihans_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_pelatihans` WRITE;
/*!40000 ALTER TABLE `subscriber_pelatihans` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_pelatihans` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_pendidikans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_pendidikans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenjang` varchar(255) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `tahun_masuk` int(11) DEFAULT NULL,
  `tahun_keluar` int(11) DEFAULT NULL,
  `nilai_akhir` varchar(255) DEFAULT NULL,
  `path_ijazah` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_pendidikans` WRITE;
/*!40000 ALTER TABLE `subscriber_pendidikans` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_pendidikans` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_pengalaman_kerjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_pengalaman_kerjas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi` varchar(255) DEFAULT NULL,
  `bidang` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tahun_masuk` int(11) DEFAULT NULL,
  `tahun_keluar` int(11) DEFAULT NULL,
  `sk_kerja_path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_pengalaman_kerjas_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_pengalaman_kerjas` WRITE;
/*!40000 ALTER TABLE `subscriber_pengalaman_kerjas` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_pengalaman_kerjas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_prestasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_prestasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lomba` varchar(255) DEFAULT NULL,
  `peringkat` varchar(255) DEFAULT NULL,
  `tempat` text,
  `tahun` int(11) DEFAULT NULL,
  `path_sertifikat` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_prestasis_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_prestasis` WRITE;
/*!40000 ALTER TABLE `subscriber_prestasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_prestasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscriber_rekomendasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber_rekomendasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rekomendator` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subscriber_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subscriber_rekomendasis_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscriber_rekomendasis` WRITE;
/*!40000 ALTER TABLE `subscriber_rekomendasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriber_rekomendasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `oath_token` varchar(255) DEFAULT NULL,
  `oath_expires` datetime DEFAULT NULL,
  `from_facebook` tinyint(1) DEFAULT '0',
  `email_activation` tinyint(1) DEFAULT '0',
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `status_pernikahan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `kodepos` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `password_reset_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_remember_token` (`remember_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'Glend Maatita','the_entung@yahoo.com','2013-05-28 06:32:32','2013-05-28 17:24:51','$2a$10$LbqUKnz26n9u.rCucQOY0.hIeCbLtAI6NqbU.n/x0Tzu5ukUbTuFK','KtcZFXQsWZ2fxXVyeggrRw','facebook','1055293652','AAAD4JohR3LkBAMZCF8iv5q2UiqLW2IPzdZALJO0jfjM23lUEVcA0JKMvDOpfCcsPRTzVrDgZAZCsGYyt9u8FH8SaZAlilumThu880LzGbKwZDZD',NULL,1,1,NULL,NULL,'',NULL,NULL,'','','','',NULL,NULL,'FiEQi32eB0tSA1-OE8dynA','2013-05-28 09:59:05');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `survey_alumnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_alumnis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hasil` text,
  PRIMARY KEY (`id`),
  KEY `index_survey_alumnis_on_subscriber_id` (`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `survey_alumnis` WRITE;
/*!40000 ALTER TABLE `survey_alumnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_alumnis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univ_fasilitas_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univ_fasilitas_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `description` text,
  `path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univfasilitas_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univ_fasilitas_galleries_on_univfasilitas_id` (`univfasilitas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univ_fasilitas_galleries` WRITE;
/*!40000 ALTER TABLE `univ_fasilitas_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `univ_fasilitas_galleries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univbeasiswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univbeasiswas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_beasiswa` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univbeasiswas_on_univ_id` (`univ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univbeasiswas` WRITE;
/*!40000 ALTER TABLE `univbeasiswas` DISABLE KEYS */;
/*!40000 ALTER TABLE `univbeasiswas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univbiayas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univbiayas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biaya` text,
  `nilai` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univbiayas` WRITE;
/*!40000 ALTER TABLE `univbiayas` DISABLE KEYS */;
/*!40000 ALTER TABLE `univbiayas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univfasilitases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univfasilitases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fasilitas` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univfasilitases_on_univ_id` (`univ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univfasilitases` WRITE;
/*!40000 ALTER TABLE `univfasilitases` DISABLE KEYS */;
/*!40000 ALTER TABLE `univfasilitases` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univgalleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univgalleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` text,
  `description` text,
  `path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univgalleries_on_univ_id` (`univ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univgalleries` WRITE;
/*!40000 ALTER TABLE `univgalleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `univgalleries` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univkerjasamas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univkerjasamas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kerjasama` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univkerjasamas_on_univ_id` (`univ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univkerjasamas` WRITE;
/*!40000 ALTER TABLE `univkerjasamas` DISABLE KEYS */;
/*!40000 ALTER TABLE `univkerjasamas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univprestasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univprestasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  `prestasi` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_univprestasis_on_univ_id` (`univ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univprestasis` WRITE;
/*!40000 ALTER TABLE `univprestasis` DISABLE KEYS */;
/*!40000 ALTER TABLE `univprestasis` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `univ_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `government` float DEFAULT NULL,
  `college` float DEFAULT NULL,
  `society` float DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univratings` WRITE;
/*!40000 ALTER TABLE `univratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `univratings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `univs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `univs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pt` varchar(255) DEFAULT NULL,
  `tahun_berdiri` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(255) DEFAULT NULL,
  `status_negeri` varchar(255) DEFAULT NULL,
  `profile` text,
  `visi` text,
  `misi` text,
  `seleksi_masuk` text,
  `kapasitas_akademik` text,
  `staff_pendukung` text,
  `deskripsi` text,
  `logo_path` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kota_id` int(11) DEFAULT NULL,
  `jenis_pt_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_univs_on_slug` (`slug`),
  KEY `index_univs_on_kota_id` (`kota_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `univs` WRITE;
/*!40000 ALTER TABLE `univs` DISABLE KEYS */;
INSERT INTO `univs` VALUES (1,'Universitas Airlangga',1980,'info@unair.ac.id','http://unair.ac.id','Jl. Dharmawangsa','0274-562011','negeri','','',NULL,'','',NULL,'',NULL,'2013-05-30 04:24:31','2013-05-31 09:24:15',1,1,NULL,NULL,'universitas-airlangga','favicon.png');
/*!40000 ALTER TABLE `univs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

