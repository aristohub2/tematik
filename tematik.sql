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

insert  into `tmtk_banner`(`IdBanner`,`BannerTitle`,`BannerDescription`,`BannerPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'Banner Welcome','Banner Description Welcome','uploads/banner/4b0c5b7da47530879723d5d9aa35f198.jpg','2019-10-31',NULL,NULL),(2,'qweqwe','asdasd','uploads/banner/f60d1720035c00502d2476a1092a86a1.jpg',NULL,NULL,NULL),(3,'qweqwe','asdasd','uploads/banner/44216867e1559acdcf43860d399a4bc6.jpg',NULL,NULL,NULL),(4,'axcxzc','zcqsdqwd','uploads/banner/31d85be8f407a9995c4527d8fd60bb70.jpg',NULL,NULL,NULL),(5,'qweqwe','asdasd','uploads/banner/fa8e00a259dea17cc781e826779e19c5.jpg',NULL,NULL,NULL),(6,'sccascasca','123123','uploads/banner/c38b13970f6d0d8cb3a8d8ba0b85a77c.jpg',NULL,NULL,NULL);

/*Table structure for table `tmtk_bracelet` */

DROP TABLE IF EXISTS `tmtk_bracelet`;

CREATE TABLE `tmtk_bracelet` (
  `IdBracelet` int(11) NOT NULL,
  `BraceletName` varchar(50) DEFAULT NULL,
  `BraceletDescription` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdBracelet`,`UploadFk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_bracelet` */

insert  into `tmtk_bracelet`(`IdBracelet`,`BraceletName`,`BraceletDescription`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'bracelet','qweqwe','5da7d449f137e','2019-10-17',NULL,NULL);

/*Table structure for table `tmtk_earrings` */

DROP TABLE IF EXISTS `tmtk_earrings`;

CREATE TABLE `tmtk_earrings` (
  `IdEarrings` int(11) NOT NULL,
  `EarringsName` varchar(50) DEFAULT NULL,
  `EarringsDescription` varchar(100) DEFAULT NULL,
  `UploadFk` varchar(50) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL,
  PRIMARY KEY (`IdEarrings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_earrings` */

/*Table structure for table `tmtk_necklaces` */

DROP TABLE IF EXISTS `tmtk_necklaces`;

CREATE TABLE `tmtk_necklaces` (
  `Idnecklencess` int(11) NOT NULL,
  `necklencessName` varchar(50) DEFAULT NULL,
  `necklencessDescription` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmtk_necklaces` */

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

insert  into `tmtk_product_uploads`(`IdUpload`,`ProductId`,`ProductPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values ('5da7d449f137e',1,'uploads/banner/347456fa1337da640f0d5888f83e618b.jpg','2019-10-17',NULL,NULL),('5da7d449f137e',2,'uploads/banner/b932d256038c5916d8fe025972bee453.jpg','2019-10-17',NULL,NULL);

/* Procedure structure for procedure `sp_tmtk_banner` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_banner` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner`( p_sMode CHAR(1),	p_IdBanner INT,
	p_BannerTitle CHAR(20),
	p_BannerDescription CHAR(50),
	p_BannerPath CHAR(200)
)
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_bracelet`( p_sMode CHAR(1),	p_IdBracelet INT,
	p_BraceletName CHAR(20),
	p_BraceletDescription CHAR(100),
	p_BraceletUploadFk CHAR(200)
)
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdBracelet) + 1 END FROM tmtk_bracelet);
 INSERT INTO tmtk_bracelet ( 			IdBracelet,
			BraceletName,
			BraceletDescription,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			oId,
			p_BraceletName,
			p_BraceletDescription,
			p_BraceletUploadFk,
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

/* Procedure structure for procedure `sp_tmtk_Earrings` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_Earrings` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_Earrings`( p_sMode CHAR(1),	p_IdEarrings INT,
	p_EarringsName CHAR(20),
	p_EarringsDescription CHAR(100),
	p_EarringsUploadFk CHAR(200)
)
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdEarrings) + 1 END FROM tmtk_Earrings);
 INSERT INTO tmtk_Earrings ( 			IdEarrings,
			EarringsName,
			EarringsDescription,
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

/* Procedure structure for procedure `sp_tmtk_necklaces` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_necklaces` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_necklaces`( p_sMode CHAR(1),	p_Idnecklencess INT,
	p_necklencessName CHAR(20),
	p_necklencessDescription CHAR(100),
	p_necklencessUploadFk CHAR(200)
)
BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(Idnecklencess) + 1 END FROM tmtk_necklaces);
 INSERT INTO tmtk_necklaces ( 			Idnecklencess,
			necklencessName,
			necklencessDescription,
			UploadFk,
			dCreateOn ) 
			VALUES ( 			oId,
			p_necklencessName,
			p_necklencessDescription,
			p_necklencessUploadFk,
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_product_uploads`( p_sMode CHAR(1),	p_IdUpload CHAR(100),
	p_ProductId INT,
	p_ProductPath CHAR(100)
)
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
  UPDATE sp_tmtk_banner SET sStatusDelete = 'V', sDeleteBy = p_sUserInput, dDeleteOn = CURRENT_TIMESTAMP  
WHERE nUserId_fk = p_nUserId_fk  ;
END;
END IF;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
