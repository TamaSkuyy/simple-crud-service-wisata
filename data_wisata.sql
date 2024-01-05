/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 8.0.35-0ubuntu0.22.04.1 : Database - data_wisata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `tempat_wisata` */

DROP TABLE IF EXISTS `tempat_wisata`;

CREATE TABLE `tempat_wisata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `harga_tiket` decimal(15,2) DEFAULT NULL,
  `review` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tempat_wisata` */

LOCK TABLES `tempat_wisata` WRITE;

insert  into `tempat_wisata`(`id`,`nama`,`lokasi`,`jenis`,`harga_tiket`,`review`) values 
(2,'Lawang Sewu','Semarang','Bangunan Bersejarah',10000.00,4.60),
(3,'Kota Lama Semarang','Semarang','Kawasan Wisata',0.00,4.70),
(4,'Sam Poo Kong','Semarang','Kuil',5000.00,4.50),
(5,'Grand Maerokoco','Semarang','Taman',15000.00,4.50),
(6,'Museum Ronggowarsito','Semarang','Museum',5000.00,4.40);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
