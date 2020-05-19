/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.7.28 : Database - qyn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qyn` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `qyn`;

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `country` */

insert  into `country`(`id`,`cname`) values (101,'南庆'),(102,'北齐'),(103,'神庙');

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `countryid` int(20) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `QYNWAIJIAN` (`countryid`),
  CONSTRAINT `QYNWAIJIAN` FOREIGN KEY (`countryid`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `person` */

insert  into `person`(`id`,`name`,`gender`,`countryid`,`birthday`) values (1,'范闲','M',101,'2020-03-01'),(2,'司理理','F',102,'2020-03-05'),(3,'林婉儿','M',101,'2020-03-03'),(4,'五竹','M',103,'2020-04-02'),(5,'战豆豆','F',102,'2020-03-20'),(6,'庆帝','M',101,'2020-03-12'),(7,'海棠朵朵','F',102,'2020-03-18'),(8,'陈萍萍','M',101,'2020-03-24'),(9,'叶轻眉','F',103,'2020-04-01'),(10,'长公主','F',101,'2020-03-22'),(11,'王启年','M',101,'2020-03-29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
