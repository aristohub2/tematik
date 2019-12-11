/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.16 : Database - tematik
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

insert  into `tmtk_attribute`(`IdAttribute`,`AttributeName`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'qwe','2019-12-03',NULL,NULL),(2,'qweqwe','2019-12-03',NULL,NULL),(3,'xczxczxczxc','2019-12-11',NULL,NULL);

/*Table structure for table `tmtk_banner` */

DROP TABLE IF EXISTS `tmtk_banner`;

CREATE TABLE `tmtk_banner` (
  `IdBanner` int(11) NOT NULL,
  `BannerTitle` varchar(20) DEFAULT NULL,
  `BannerDescription` varchar(50) DEFAULT NULL,
  `BannerPath` varchar(200) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdBanner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_banner` */

insert  into `tmtk_banner`(`IdBanner`,`BannerTitle`,`BannerDescription`,`BannerPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (0,'Offer 3','Banner Description 3','uploads/banner/aaaa86b1f589f2ba2af79df02d94f99b.jpg',NULL,NULL,NULL),(1,'Ganti foto','qweqwe','uploads/banner/dfa6fba6b925aedfeea22c13cd5bf093.jpg',NULL,NULL,NULL),(2,'about','about banner','uploads/banner/8124e2882affbe1395d56a38e4e24978.jpg',NULL,NULL,NULL),(3,'Pendant','Jade diamond','uploads/banner/fb9752c6e58de9c56048095ffd457fbb.jpg',NULL,NULL,NULL),(4,'Earrings','Saphire and Jade Stone','uploads/banner/ee8623650f09695ff3f3b29bf932d8f8.jpg',NULL,NULL,NULL),(5,'Ring','Gold ring with luxury design','uploads/banner/349214a7d990893f8f861270c17ccec9.jpg',NULL,NULL,NULL),(6,'Platinum ring','Platinum ring design for elegant','uploads/banner/5c01e3517d465a1c62fb218c556f7ee4.jpg',NULL,NULL,NULL),(7,'Bracelets','Bracelets Banner','uploads/banner/386e902dd13d3e4332eaef8425e042bf.jpg',NULL,NULL,NULL),(8,'Earrings','Earrings Banner','uploads/banner/720d7fdcf0934406426da23d3c79de2d.jpg',NULL,NULL,NULL),(9,'Pendant','Pendant Banner','uploads/banner/ec3923120fc261f51ba522ae2161c51f.jpg',NULL,NULL,NULL),(10,'RIng','Ring Banner','uploads/banner/752c9924185c06fd300572568610cb63.jpg',NULL,NULL,NULL),(11,'Banner Offer 1','Banner Description 1','uploads/banner/7d8d1134faee2cfa2aff8201a7dbbbde.jpg',NULL,NULL,NULL),(12,'Offer 2','Banner Description Offer 2','uploads/banner/e9a4d8cfe2ececa4046cbe2d53288999.jpg',NULL,NULL,NULL),(13,'Offer 3','Banner Descriptionqaw','uploads/banner/446697cb93ca7817fc05a247020e88ea.jpg',NULL,NULL,NULL),(14,'sdqwdqwd','Banner Descrizxczxcq2312ption','uploads/banner/f6d483ed66678cae68d3d1ed521349dc.jpg',NULL,NULL,NULL);

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

insert  into `tmtk_bracelet`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'asd','zxc','5df0a2204fd3a','2019-12-11',NULL,NULL);

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

insert  into `tmtk_earrings`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (2,'Large Snowman Earrin','A symbol of all that we treasure, this earring is','5ddff6bfdb93c','2019-11-28',NULL,NULL),(3,'Small Folded Pavé Ho','Sterling Silver, Diamond 0.09 carat weight','5ddff7089673b','2019-11-28',NULL,NULL),(4,'Teardrop Earrings in','Playful enough for day, fancy enough for night, th','5ddff7181b982','2019-11-28',NULL,NULL),(5,'Small Earrings in 18','An expression of all that we treasure, the Cherish','5ddff72655c00','2019-11-28',NULL,NULL),(6,'Pavé Twisted Ribbon','18k Gold, Diamond 0.48 carat weight','5ddff75f40875','2019-11-28',NULL,NULL),(7,'Yellow Gold \"Shared-','Eternally brilliant, these “Shared-Prong” Diamond','5ddff785522ff','2019-11-28',NULL,NULL),(8,'White Gold \"Shared-P','Eternally brilliant, these “Shared-Prong” Diamond','5ddff90988edb','2019-11-28',NULL,NULL);

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

insert  into `tmtk_pendant`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'Medium O Pendant','Add a splash of sophisticated style and discover a','5ddff62ddd70a','2019-11-28',NULL,NULL),(2,'Timeless Elegance','Captivate with this exquisite sterling silver halo','5ddff651ac1d0','2019-11-28',NULL,NULL),(3,'Vintage Circle Colli','Enhance any neckline in a spectacular fashion with','5ddff6666c961','2019-11-28',NULL,NULL),(4,'Sparkling Cross Pend','The classic emblem of faith is beautifully reimagi','5ddff681c10d4','2019-11-28',NULL,NULL);

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

insert  into `tmtk_product_uploads`(`IdUpload`,`ProductId`,`ProductPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values ('5df09c8f69abc',1,'uploads/bracelets/0c9d6e232d2cd869796f3ca91ee82161.jpg','2019-12-11','V','2019-12-11'),('5df09cb9909a5',2,'uploads/bracelets/5a91b099eca8eeae2c9246e76ea18a8f.jpg','2019-12-11','V','2019-12-11'),('5df09d99803a1',3,'uploads/bracelets/2142d42b116eaed2cf78c3d5643be937.jpg','2019-12-11','V','2019-12-11'),('5df0a110a9ead',4,'uploads/bracelets/3db12bd404add4404e679e703236af5b.jpg','2019-12-11','V','2019-12-11'),('5df0a1ec14591',5,'uploads/bracelets/9e3dddaa4119a832aceaa94782ed2f4b.jpg','2019-12-11','V','2019-12-11'),('5df0a1fb7c29b',6,'uploads/bracelets/d90fde07bbda65ca6a7e705a2c83d1c0.jpg','2019-12-11','V','2019-12-11'),('5df0a2204fd3a',7,'uploads/bracelets/d758e2949057227307fb6fc5fa590b46.jpg','2019-12-11',NULL,NULL);

/*Table structure for table `tmtk_ring` */

DROP TABLE IF EXISTS `tmtk_ring`;

CREATE TABLE `tmtk_ring` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date NOT NULL,
  `sStatusDelete` varchar(10) NOT NULL,
  `dDeletedOn` date NOT NULL,
  PRIMARY KEY (`IdProduct`,`UploadFk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tmtk_ring` */

insert  into `tmtk_ring`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeletedOn`) values (1,'Classic Round Cut St','Classic, elegant and symbolic of your everlasting love, this ring will win her heart. It showcases a','5ddff9c9d7d54','2019-11-28','','0000-00-00'),(2,'Halo Heart Cut Sterl','Make the moment you ask for her hand that much more magical with this exquisite bridal set. Expertly','5ddffa20f22d3','2019-11-28','','0000-00-00');

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

insert  into `tmtk_tag`(`IdTag`,`IdProduct_fk`,`IdAttribute_fk`,`ProductCategory`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,1,1,1,'2019-12-11','V','2019-12-11'),(2,1,2,1,'2019-12-11','V','2019-12-11'),(3,1,1,1,'2019-12-11','V','2019-12-11'),(4,1,1,1,'2019-12-11','V','2019-12-11'),(5,1,2,1,'2019-12-11','V','2019-12-11'),(6,1,1,1,'2019-12-11','V','2019-12-11'),(7,1,1,1,'2019-12-11','V','2019-12-11'),(8,1,2,1,'2019-12-11','V','2019-12-11'),(9,1,2,1,'2019-12-11','V','2019-12-11'),(10,1,2,1,'2019-12-11',NULL,NULL);

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
 UPDATE sp_tmtk_banner SET 
nUnitId_fk = p_nUnitId_fk,
nSeqNo = p_nSeqNo,
sUUID = MD5(UUID()),
sLastEditBy = p_sUserInput, dLastEditOn = CURRENT_TIMESTAMP 
WHERE nUserId_fk = p_nUserId_fk  ;
END;
ELSEIF p_sMode = 'D' THEN 
BEGIN
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_banner` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_banner` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner`(`p_sMode` CHAR(1), `p_IdBanner` INT, `p_BannerTitle` CHAR(20), `p_BannerDescription` CHAR(50), `p_BannerPath` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdBanner) + 1 END FROM tmtk_banner);
 INSERT INTO tmtk_banner ( 			IdBanner,
			BannerTitle,
			BannerDescription,
			BannerPath,
			dCreateOn ) 
			VALUES ( 			oId,
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_earrings`(IN `p_sMode` CHAR(1), IN `p_IdEarrings` INT, IN `p_EarringsName` CHAR(20), IN `p_EarringsDescription` CHAR(100), IN `p_EarringsUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_earrings);
 INSERT INTO tmtk_earrings ( 			IdProduct,
			Name,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			oId,
			p_EarringsName,
			p_EarringsDescription,
			p_EarringsUploadFk,
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
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_tmtk_pendant` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_pendant` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_pendant`(IN `p_sMode` CHAR(1), IN `p_Idpendant` INT, IN `p_pendantName` CHAR(20), IN `p_pendantDescription` CHAR(100), IN `p_pendantUploadFk` CHAR(200))
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_pendant);
 INSERT INTO tmtk_pendant ( 			IdProduct,
			Name,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			oId,
			p_pendantName,
			p_pendantDescription,
			p_pendantUploadFk,
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
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_ring`(IN `p_sMode` CHAR(1), IN `p_Idring` INT, IN `p_ringName` CHAR(20), IN `p_ringDescription` CHAR(100), IN `p_ringUploadFK` CHAR(200))
    NO SQL
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_ring);
 INSERT INTO tmtk_ring ( 			IdProduct,
			Name,
			Description,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			oId,
			p_ringName,
			p_ringDescription,
			p_ringUploadFk,
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
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
