/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.6-MariaDB : Database - tematik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tematik` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tematik`;

/*Table structure for table `tmtk_attribute` */

DROP TABLE IF EXISTS `tmtk_attribute`;

CREATE TABLE `tmtk_attribute` (
  `IdAttribute` int(11) NOT NULL,
  `AttributeName` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdAttribute`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_attribute` */

insert  into `tmtk_attribute`(`IdAttribute`,`AttributeName`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'Gold','2019-12-12',NULL,NULL),(2,'Platinum','2019-12-12',NULL,NULL),(3,'Diamonds','2019-12-12',NULL,NULL),(4,'Small','2019-12-12',NULL,NULL),(5,'Big','2019-12-12',NULL,NULL),(6,'Silver','2019-12-12',NULL,NULL),(7,'Elegant','2019-12-12',NULL,NULL),(8,'Youth','2019-12-12',NULL,NULL);

/*Table structure for table `tmtk_banner` */

DROP TABLE IF EXISTS `tmtk_banner`;

CREATE TABLE `tmtk_banner` (
  `IdBanner` int(11) NOT NULL,
  `BannerTitle` varchar(200) DEFAULT NULL,
  `BannerDescription` varchar(200) DEFAULT NULL,
  `BannerPath` varchar(200) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdBanner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_banner` */

insert  into `tmtk_banner`(`IdBanner`,`BannerTitle`,`BannerDescription`,`BannerPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (0,'Video','Ads for video','uploads/banner/c804ecb46e0503642a13db63eea48489.mp4',NULL,NULL,NULL),(1,'Home','Home banner','uploads/banner/ebe3ccd7c1a56bbc5d8b949ee03ce3cc.jpg',NULL,NULL,NULL),(2,'About','About Image','uploads/banner/a189e466c2ec5c930bfc031e75a441cc.jpg',NULL,NULL,NULL),(3,'Bracelets','Bracelets Product','uploads/banner/006eec0526d04450225ca58748d704fc.jpg',NULL,NULL,NULL),(4,'Earrings','Earrings Products','uploads/banner/5af5bb593b2b06aa5675130117a8fc3b.png',NULL,NULL,NULL),(5,'Pendant','Pendant Products','uploads/banner/f52cd6bf6c532bef9acb53ef218a0f9c.jpg',NULL,NULL,NULL),(6,'Ring','Ring Products','uploads/banner/aca86455309c39415448a6eb8c41c455.jpg',NULL,NULL,NULL),(7,'Bracelets','Bracelets','uploads/banner/6d8fda0bde6812c3d379dc0b731e12f8.jpg',NULL,NULL,NULL),(8,'Earrings','Earrings Banner','uploads/banner/720d7fdcf0934406426da23d3c79de2d.jpg',NULL,NULL,NULL),(9,'Pendant','Pendant Banner','uploads/banner/ec3923120fc261f51ba522ae2161c51f.jpg',NULL,NULL,NULL),(10,'RIng','Ring Banner','uploads/banner/752c9924185c06fd300572568610cb63.jpg',NULL,NULL,NULL),(11,'Golden Experience','Because Gold is Brilliant','uploads/banner/a4a0bfa80351863c8e00919cc963033d.jpg',NULL,NULL,NULL),(12,'Diamond is Unbreakable','Strong and Shine Like Diamond','uploads/banner/b426e2a64596a98b4a53a71dde93119f.jpg',NULL,NULL,NULL),(13,'Saphhire and Ruby','Our latest Collaboration products Just for you','uploads/banner/aa35f9dbcf405414761e8a9f5183561e.png',NULL,NULL,NULL),(14,'50% off','Christmas Sale is here !','uploads/banner/2661d509736004e7eb523bd823945f08.jpg',NULL,NULL,NULL);

/*Table structure for table `tmtk_bracelet` */

DROP TABLE IF EXISTS `tmtk_bracelet`;

CREATE TABLE `tmtk_bracelet` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdProduct`,`UploadFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_bracelet` */

/*Table structure for table `tmtk_company` */

DROP TABLE IF EXISTS `tmtk_company`;

CREATE TABLE `tmtk_company` (
  `id_number` int(11) NOT NULL,
  `year` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `sStatusDelete` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_company` */

insert  into `tmtk_company`(`id_number`,`year`,`description`,`sStatusDelete`) values (0,NULL,'okimjasd',NULL),(1,'2019-12-23','yuyuyuyuyuyu','V'),(2,'2019-12-02','tyttyty','V'),(3,'2019-12-04','makan ',NULL),(4,'2019-12-18','zxczxczxczxc',NULL),(5,'2019-12-04','4567567567567','V'),(6,'2019-12-28','zxczxc',NULL),(7,'2019-12-28','asdasdasdzxc',NULL),(8,'2019-12-18','po',NULL);

/*Table structure for table `tmtk_earrings` */

DROP TABLE IF EXISTS `tmtk_earrings`;

CREATE TABLE `tmtk_earrings` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `UploadFk` varchar(50) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_earrings` */

/*Table structure for table `tmtk_login` */

DROP TABLE IF EXISTS `tmtk_login`;

CREATE TABLE `tmtk_login` (
  `id_user` varchar(5) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_login` */

insert  into `tmtk_login`(`id_user`,`user`,`password`) values ('00000','admin','21232f297a57a5a743894a0e4a801fc3');

/*Table structure for table `tmtk_pendant` */

DROP TABLE IF EXISTS `tmtk_pendant`;

CREATE TABLE `tmtk_pendant` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdProduct`,`UploadFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_pendant` */

/*Table structure for table `tmtk_product_uploads` */

DROP TABLE IF EXISTS `tmtk_product_uploads`;

CREATE TABLE `tmtk_product_uploads` (
  `IdUpload` varchar(100) DEFAULT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductPath` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_product_uploads` */

/*Table structure for table `tmtk_ring` */

DROP TABLE IF EXISTS `tmtk_ring`;

CREATE TABLE `tmtk_ring` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeletedOn` date DEFAULT NULL,
  PRIMARY KEY (`IdProduct`,`UploadFk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tmtk_ring` */

/*Table structure for table `tmtk_tag` */

DROP TABLE IF EXISTS `tmtk_tag`;

CREATE TABLE `tmtk_tag` (
  `IdTag` int(11) NOT NULL,
  `IdProduct_fk` int(11) DEFAULT NULL,
  `IdAttribute_fk` int(11) DEFAULT NULL,
  `ProductCategory` int(11) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(50) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdTag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_tag` */

insert  into `tmtk_tag`(`IdTag`,`IdProduct_fk`,`IdAttribute_fk`,`ProductCategory`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,1,1,1,'2019-12-11','V','2019-12-11'),(2,1,2,1,'2019-12-11','V','2019-12-11'),(3,1,1,1,'2019-12-11','V','2019-12-11'),(4,1,1,1,'2019-12-11','V','2019-12-11'),(5,1,2,1,'2019-12-11','V','2019-12-11'),(6,1,1,1,'2019-12-11','V','2019-12-11'),(7,1,1,1,'2019-12-11','V','2019-12-11'),(8,1,2,1,'2019-12-11','V','2019-12-11'),(9,1,2,1,'2019-12-11','V','2019-12-11'),(10,1,2,1,'2019-12-11','V','2019-12-11'),(11,1,1,1,'2019-12-11','V','2019-12-11'),(12,1,2,1,'2019-12-11','V','2019-12-11'),(13,2,5,1,'2019-12-11',NULL,NULL),(14,2,6,1,'2019-12-11',NULL,NULL),(15,2,4,1,'2019-12-11',NULL,NULL),(16,2,5,1,'2019-12-11',NULL,NULL),(17,3,4,1,'2019-12-11',NULL,NULL),(18,3,5,1,'2019-12-11',NULL,NULL),(19,2,5,1,'2019-12-11',NULL,NULL),(20,2,6,1,'2019-12-11',NULL,NULL),(21,2,5,1,'2019-12-11',NULL,NULL),(22,2,6,1,'2019-12-11',NULL,NULL),(23,3,5,1,'2019-12-11',NULL,NULL),(24,3,6,1,'2019-12-11',NULL,NULL),(25,4,6,1,'2019-12-11',NULL,NULL),(26,5,6,1,'2019-12-11','V','2019-12-11'),(27,6,6,1,'2019-12-11','V','2019-12-11'),(28,7,6,1,'2019-12-11','V','2019-12-11'),(29,8,6,1,'2019-12-11',NULL,NULL),(30,9,6,1,'2019-12-11',NULL,NULL),(31,10,6,1,'2019-12-11','V','2019-12-12'),(32,11,6,1,'2019-12-11',NULL,NULL),(33,12,6,1,'2019-12-11',NULL,NULL),(34,13,6,1,'2019-12-11',NULL,NULL),(35,14,6,1,'2019-12-11',NULL,NULL),(36,15,6,1,'2019-12-11',NULL,NULL),(37,16,6,1,'2019-12-11',NULL,NULL),(38,17,6,1,'2019-12-11',NULL,NULL),(39,18,5,1,'2019-12-11',NULL,NULL),(40,18,6,1,'2019-12-11',NULL,NULL),(41,19,5,1,'2019-12-11',NULL,NULL),(42,19,6,1,'2019-12-11',NULL,NULL),(43,20,6,1,'2019-12-11',NULL,NULL),(52,10,4,2,'2019-12-11','V','2019-12-12'),(53,10,4,2,'2019-12-11','V','2019-12-12'),(54,5,5,3,'2019-12-11','V','2019-12-11'),(55,5,6,3,'2019-12-11','V','2019-12-11'),(56,5,5,3,'2019-12-11',NULL,NULL),(57,3,5,4,'2019-12-11',NULL,NULL),(58,3,6,4,'2019-12-11',NULL,NULL),(59,3,5,4,'2019-12-11',NULL,NULL),(60,3,6,4,'2019-12-11',NULL,NULL),(61,4,6,4,'2019-12-11',NULL,NULL),(62,5,4,4,'2019-12-11',NULL,NULL),(63,5,6,4,'2019-12-11',NULL,NULL),(64,6,5,4,'2019-12-11','V','2019-12-11'),(65,6,6,4,'2019-12-11','V','2019-12-11'),(66,6,5,4,'2019-12-11','V','2019-12-11'),(67,7,5,4,'2019-12-11','V','2019-12-11'),(68,7,6,4,'2019-12-11','V','2019-12-11'),(69,7,6,4,'2019-12-11','V','2019-12-11'),(70,7,5,4,'2019-12-11',NULL,NULL),(71,7,6,4,'2019-12-11',NULL,NULL),(72,1,1,1,'2019-12-11','V','2019-12-11'),(73,1,1,1,'2019-12-11',NULL,NULL),(74,21,4,1,'2019-12-11',NULL,NULL),(75,10,4,2,'2019-12-11','V','2019-12-12'),(76,10,6,2,'2019-12-11','V','2019-12-12'),(77,11,5,2,'2019-12-11',NULL,NULL),(78,6,4,3,'2019-12-11','V','2019-12-11'),(79,8,5,4,'2019-12-11',NULL,NULL),(80,8,6,4,'2019-12-11',NULL,NULL),(81,8,7,4,'2019-12-11',NULL,NULL),(82,10,3,2,'2019-12-12',NULL,NULL);

/* Procedure structure for procedure `sp_tmtk_about` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_about` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_about`(`p_sMode` CHAR(1), `p_id_number` INT, `p_year` DATE, `p_description` TEXT(500))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(id_number) + 1 END FROM tmtk_company);
 INSERT INTO tmtk_company ( 			id_number,
			year,
			description) 
			VALUES ( 			p_id_number,
			p_BannerTitle,
			p_BannerDescription,
			p_BannerPath,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_company SET 
description = p_description
WHERE id_number = p_id_number  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_attribute` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_attribute` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_attribute`(`p_sMode` CHAR(1), `p_IdAttribute` INT, `p_AttributeName` CHAR(20))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdAttribute) + 1 END FROM tmtk_attribute);
 INSERT INTO tmtk_attribute ( 			IdAttribute,
			AttributeName,
			dCreateOn ) 
			VALUES ( 			oId,
			p_AttributeName,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_attribute SET 
AttributeName = p_AttributeName
WHERE IdAttribute = p_IdAttribute  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_attribute SET sStatusDelete = 'V',dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdAttribute = p_IdAttribute  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_banner` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_banner` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner`(`p_sMode` CHAR(1), `p_IdBanner` INT, `p_BannerTitle` CHAR(200), `p_BannerDescription` CHAR(200), `p_BannerPath` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
    SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdBanner) + 1 END FROM tmtk_banner);
 INSERT INTO tmtk_banner (             IdBanner,
            BannerTitle,
            BannerDescription,
            BannerPath,
            dCreateOn ) 
            VALUES (             oId,
            p_BannerTitle,
            p_BannerDescription,
            p_BannerPath,
            CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_banner SET 
BannerTitle = p_BannerTitle,
BannerDescription = p_BannerDescription,
BannerPath = p_BannerPath
WHERE IdBanner = p_IdBanner  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP
WHERE nUserId_fk = p_nUserId_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_bracelet` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_bracelet` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_bracelet`(`p_sMode` CHAR(1), `p_IdBracelet` INT, `p_BraceletName` CHAR(20), `p_BraceletDescription` CHAR(100), `p_BraceletUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_bracelet);
 INSERT INTO tmtk_bracelet ( 			IdProduct,
			Name,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			p_IdBracelet,
			p_BraceletName,
			p_BraceletDescription,
			p_BraceletUploadFk,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_bracelet SET 
NAME = p_BraceletName,
Description=p_BraceletDescription,
UploadFk = p_BraceletUploadFk
WHERE IdProduct = p_IdBracelet  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_bracelet SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdProduct = p_IdBracelet  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_earrings` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_earrings` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_earrings`(`p_sMode` CHAR(1), `p_IdEarring` INT, `p_EarringName` CHAR(20), `p_EarringDescription` CHAR(100), `p_EarringUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_earrings);
 INSERT INTO tmtk_earrings ( 			IdProduct,
			NAME,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			p_IdEarring,
			p_EarringName,
			p_EarringDescription,
			p_EarringUploadFk,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_earrings SET 
NAME = p_EarringName,
Description=p_EarringDescription,
UploadFk = p_EarringUploadFk
WHERE IdProduct = p_IdEarring ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_earrings SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdProduct = p_IdEarring  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_pendant` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_pendant` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_pendant`(`p_sMode` CHAR(1), `p_IdPendant` INT, `p_PendantName` CHAR(20), `p_PendantDescription` CHAR(100), `p_PendantUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_pendant);
 INSERT INTO tmtk_pendant ( 			IdProduct,
			NAME,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			p_IdPendant,
			p_PendantName,
			p_PendantDescription,
			p_PendantUploadFk,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_pendant SET 
NAME = p_PendantName,
Description=p_PendantDescription,
UploadFk = p_PendantUploadFk
WHERE IdProduct = p_IdPendant  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_pendant SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdProduct = p_IdPendant  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_product_uploads` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_product_uploads` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_product_uploads`(`p_sMode` CHAR(1), `p_IdUpload` CHAR(100), `p_ProductId` INT, `p_ProductPath` CHAR(100))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(ProductId) + 1 END FROM tmtk_product_uploads);
 INSERT INTO tmtk_product_uploads ( 			IdUpload,
			ProductId,
			ProductPath,
			dCreateOn ) 
			VALUES ( 			p_IdUpload,
			oId,
			p_ProductPath,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE sp_tmtk_banner SET 
nUnitId_fk = p_nUnitId_fk,
nSeqNo = p_nSeqNo,
sUUID = MD5(UUID()),
sLastEditBy = p_sUserInput, dLastEditOn = CURRENT_TIMESTAMP 
WHERE nUserId_fk = p_nUserId_fk  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_product_uploads SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdUpload = p_IdUpload  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_ring` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_ring` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_ring`(`p_sMode` CHAR(1), `p_IdRing` INT, `p_RingName` CHAR(20), `p_RingDescription` CHAR(100), `p_RingUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_ring);
 INSERT INTO tmtk_ring ( 			IdProduct,
			NAME,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			p_IdRing,
			p_RingName,
			p_RingDescription,
			p_RingUploadFk,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_ring SET 
NAME = p_RingName,
Description=p_RingDescription,
UploadFk = p_RingUploadFk
WHERE IdProduct = p_IdRing  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_ring SET sStatusDelete = 'V', dDeletedOn = CURRENT_TIMESTAMP  
WHERE IdProduct = p_IdRing  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_tag` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_tag` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_tag`(IN `p_sMode` CHAR(1), IN `p_IdTag` INT, IN `p_IdProduct_fk` INT, IN `p_IdAttribute_fk` INT, IN `p_ProductCategory` INT)
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdTag) + 1 END FROM tmtk_tag);
 INSERT INTO tmtk_tag ( 			IdTag,
			IdProduct_fk,
			IdAttribute_fk,
			ProductCategory,
			dCreateOn ) 
			VALUES ( 			oId,
			p_IdProduct_fk,
			p_IdAttribute_fk,
			p_ProductCategory,
			CURRENT_TIMESTAMP); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_banner SET 
nUnitId_fk = p_nUnitId_fk,
nSeqNo = p_nSeqNo,
sUUID = MD5(UUID()),
sLastEditBy = p_sUserInput, dLastEditOn = CURRENT_TIMESTAMP 
WHERE nUserId_fk = p_nUserId_fk  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_tag SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdProduct_fk = p_IdProduct_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_timeline` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_timeline` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_timeline`(`p_sMode` CHAR(1), `p_id_number` INT, `p_year` DATE, `p_description` TEXT(500))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(id_number) + 1 END FROM tmtk_company);
 INSERT INTO tmtk_company ( 			id_number,
			YEAR,
			description) 
			VALUES ( 			oId,
			p_year,
			p_description); 
END;
ELSEIF p_sMode = 'U' THEN 
BEGIN
 UPDATE tmtk_company SET
 YEAR = p_year,
description = p_description
WHERE id_number = p_id_number  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE tmtk_company SET sStatusDelete = 'V'
WHERE id_number = p_id_number  ;
END;
END IF;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
