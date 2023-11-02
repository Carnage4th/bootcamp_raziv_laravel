/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.28-MariaDB : Database - bootcamp_raziv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bootcamp_raziv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `bootcamp_raziv`;

/*Table structure for table `admirals` */

DROP TABLE IF EXISTS `admirals`;

CREATE TABLE `admirals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `admirals` */

insert  into `admirals`(`id`,`name`,`nickname`,`position`) values 
(1,'Borsalino','Kizaru','Admirals'),
(2,'Issho','Fujitora','Admirals'),
(3,'Aramaki','Ryokugyu','Admirals'),
(4,'Kuzan','Aokiji','Former Admirals'),
(5,'Sakazuki','Akainu','Fleet Admirals'),
(6,'Sengoku','The Budha','Former Fleet Admirals'),
(7,'Monkey D. Garp','Hero of the Marines','Rear Admirals');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `shpcrew` */

DROP TABLE IF EXISTS `shpcrew`;

CREATE TABLE `shpcrew` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bounty` double(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `shpcrew` */

insert  into `shpcrew`(`id`,`fullname`,`position`,`nickname`,`created_at`,`bounty`) values 
(1,'Monkey D. Luffy','Captain','Mugiwara','2023-10-22 21:52:43',3000000000.00),
(2,'Roronoa Zoro','First Mate','Pirate Hunter','2023-10-18 22:58:49',1111000000.00),
(3,'Sanji','Cook','Black Leg','2023-10-18 22:59:45',1032000000.00),
(4,'Ussop','Sniper','Sogeking','2023-10-18 23:00:48',500000000.00),
(5,'Nami','Navigator','Cat Burglar','2023-10-18 23:02:02',366000000.00),
(6,'Chopper','Doctor','Monster','2023-10-18 23:02:50',1000.00),
(7,'Nico Robin','Archeolog','The Devil Child','2023-10-18 23:03:39',930000000.00),
(8,'Franky','Mechanics','Cyborg Franky','2023-10-18 23:04:20',472000000.00),
(9,'Jinbe','Wheelman','The Knight of the Sea','2023-10-18 23:05:26',1100000000.00),
(11,'tester','test','testeran','2023-10-27 19:24:39',189000000000.00),
(12,'tester','test','testeran','2023-10-27 19:28:41',189000000000.00);

/*Table structure for table `supernova` */

DROP TABLE IF EXISTS `supernova`;

CREATE TABLE `supernova` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `bounty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `supernova` */

insert  into `supernova`(`id`,`fullname`,`nickname`,`hometown`,`bounty`) values 
(1,'Monkey D. Luffy','Mugiwara','East Blue','3000000000'),
(2,'Roronoa Zoro','The Knight of the Sea','East Blue','1111000000'),
(3,'Marshal D. teach','Kurohige','','2247600000'),
(4,'Eustass Kid','Eustass Captain Kid','South Blue','3000000000'),
(5,'Capone Bege','Capone Gang bege','West Blue','350000000'),
(6,'Trafealgar D. Water law','Surgeon of Death','North Blue','3000000000'),
(7,'Scratchmen Appoo','','Grand Line','350000000'),
(8,'Jewelry Booney','','South Blue','140000000'),
(9,'Urouge','Mad Monk','Sky Island','108000000'),
(10,'Killer','','South Blue','200000000'),
(11,'X Drake','Red Flag','North Blue','222000000'),
(12,'Basil Hawkinss','Magician','North Blue','320000000');

/*Table structure for table `yonkou` */

DROP TABLE IF EXISTS `yonkou`;

CREATE TABLE `yonkou` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `generals` text DEFAULT NULL,
  `bounty` double(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `yonkou` */

insert  into `yonkou`(`id`,`fullname`,`nickname`,`generals`,`bounty`) values 
(1,'Edward Newgate','Shirohige','Marco',5046000000.00),
(2,'Charlotte Linlin','Big Mom','Katakuri',4388000000.00),
(3,'Kaido','Hundred Beast kaido','King',4611100000.00),
(4,'Shanks','Akagami no Shanks','Yassop',4048900000.00),
(5,'Borsalino','Kizaru','',0.00);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
