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

insert  into `tmtk_attribute`(`IdAttribute`,`AttributeName`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'12345678','2019-12-03',NULL,NULL),(2,'asdasdads','2019-12-03',NULL,NULL),(3,'xczxczxczxc','2019-12-11',NULL,NULL),(4,'123123123','2019-12-11',NULL,NULL),(5,'vxcvxvxcvx','2019-12-11',NULL,NULL),(6,'12312312312356756756','2019-12-11',NULL,NULL);

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

insert  into `tmtk_banner`(`IdBanner`,`BannerTitle`,`BannerDescription`,`BannerPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (0,'','','',NULL,NULL,NULL),(1,'Ganti foto','qweqwe','uploads/banner/dfa6fba6b925aedfeea22c13cd5bf093.jpg',NULL,NULL,NULL),(2,'about','about banner','uploads/banner/8124e2882affbe1395d56a38e4e24978.jpg',NULL,NULL,NULL),(3,'Pendant','Jade diamond','uploads/banner/fb9752c6e58de9c56048095ffd457fbb.jpg',NULL,NULL,NULL),(4,'Earrings','Saphire and Jade Stone','uploads/banner/ee8623650f09695ff3f3b29bf932d8f8.jpg',NULL,NULL,NULL),(5,'Ring','Gold ring with luxury design','uploads/banner/349214a7d990893f8f861270c17ccec9.jpg',NULL,NULL,NULL),(6,'Platinum ring','Platinum ring design for elegant','uploads/banner/5c01e3517d465a1c62fb218c556f7ee4.jpg',NULL,NULL,NULL),(7,'Bracelets','Bracelets Banner','uploads/banner/386e902dd13d3e4332eaef8425e042bf.jpg',NULL,NULL,NULL),(8,'Earrings','Earrings Banner','uploads/banner/720d7fdcf0934406426da23d3c79de2d.jpg',NULL,NULL,NULL),(9,'Pendant','Pendant Banner','uploads/banner/ec3923120fc261f51ba522ae2161c51f.jpg',NULL,NULL,NULL),(10,'RIng','Ring Banner','uploads/banner/752c9924185c06fd300572568610cb63.jpg',NULL,NULL,NULL),(11,'Banner Offer 1','Banner Description 1','uploads/banner/7d8d1134faee2cfa2aff8201a7dbbbde.jpg',NULL,NULL,NULL),(12,'Offer 2','Banner Description Offer 2','uploads/banner/e9a4d8cfe2ececa4046cbe2d53288999.jpg',NULL,NULL,NULL),(13,'Offer 3','Banner Descriptionqaw','uploads/banner/446697cb93ca7817fc05a247020e88ea.jpg',NULL,NULL,NULL),(14,'sdqwdqwd','Banner Descrizxczxcq2312ption','uploads/banner/f6d483ed66678cae68d3d1ed521349dc.jpg',NULL,NULL,NULL);

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

insert  into `tmtk_bracelet`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'asd','zxc','5df0b8f61cb6c','2019-12-11',NULL,NULL),(2,'asd','zxczxc','5df103ce0e82c','2019-12-11',NULL,NULL),(3,'asd','zxczxc','5df103dacd16e','2019-12-11',NULL,NULL),(4,'qwe','asd','5df1040191e56','2019-12-11',NULL,NULL),(5,'qwe','asd','5df1041f176ca','2019-12-11',NULL,NULL),(6,'qwe','asd','5df1042d5c854','2019-12-11',NULL,NULL),(7,'qwe','asd','5df10437d176b','2019-12-11',NULL,NULL),(8,'qwe','asd','5df1046f1e04c','2019-12-11',NULL,NULL),(9,'qwe','asd','5df104c3bfd89','2019-12-11',NULL,NULL),(10,'qwe','asd','5df104cc5d9d3','2019-12-11',NULL,NULL),(11,'qwe','asd','5df104d27d970','2019-12-11',NULL,NULL),(12,'qwe','asd','5df104dd6f345','2019-12-11',NULL,NULL),(13,'qwe','asd','5df104e248714','2019-12-11',NULL,NULL),(14,'qwe','asd','5df104e8c29a3','2019-12-11',NULL,NULL),(15,'qwe','asd','5df104ffd916b','2019-12-11',NULL,NULL),(16,'qwe','asd','5df1050544b8b','2019-12-11',NULL,NULL),(17,'qwdqwd','qwd','5df10519d2a67','2019-12-11',NULL,NULL),(18,'qwdqwd','qwd','5df1053055688','2019-12-11',NULL,NULL),(19,'qwdqwd','qwd','5df1053d5bc19','2019-12-11',NULL,NULL),(20,'qwe','qwe','5df1055a2e453','2019-12-11',NULL,NULL);

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

insert  into `tmtk_company`(`id_number`,`year`,`description`,`sStatusDelete`) values (0,NULL,'zxczxczxc',NULL),(1,'2019-12-23','yuyuyuyuyuyu','V'),(2,'2019-12-02','zxczxczxc',NULL),(3,'2019-12-04','asdasdasdasd',NULL),(4,'2019-12-18','zxczxczxczxc',NULL),(5,'2019-12-04','4567567567567','V'),(6,'2019-12-28','zxczxc',NULL);

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

insert  into `tmtk_earrings`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (2,'Large Snowman Earrin','A symbol of all that we treasure, this earring is','5ddff6bfdb93c','2019-11-28',NULL,NULL),(3,'Small Folded Pavé Ho','Sterling Silver, Diamond 0.09 carat weight','5ddff7089673b','2019-11-28',NULL,NULL),(4,'Teardrop Earrings in','Playful enough for day, fancy enough for night, th','5ddff7181b982','2019-11-28',NULL,NULL),(5,'Small Earrings in 18','An expression of all that we treasure, the Cherish','5ddff72655c00','2019-11-28',NULL,NULL),(6,'Pavé Twisted Ribbon','18k Gold, Diamond 0.48 carat weight','5ddff75f40875','2019-11-28',NULL,NULL),(7,'Yellow Gold \"Shared-','Eternally brilliant, these “Shared-Prong” Diamond','5ddff785522ff','2019-11-28',NULL,NULL),(8,'White Gold \"Shared-P','Eternally brilliant, these “Shared-Prong” Diamond','5ddff90988edb','2019-11-28',NULL,NULL),(9,'asdasdzxczxc','zxczxcz','5df108c53a31a','2019-12-11','V','2019-12-11'),(10,'qwd','qwdqwd','5df10a602e42a','2019-12-11',NULL,NULL);

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

insert  into `tmtk_pendant`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,'Medium O Pendant','Add a splash of sophisticated style and discover a','5ddff62ddd70a','2019-11-28',NULL,NULL),(2,'Timeless Elegance','Captivate with this exquisite sterling silver halo','5ddff651ac1d0','2019-11-28',NULL,NULL),(3,'Vintage Circle Colli','Enhance any neckline in a spectacular fashion with','5ddff6666c961','2019-11-28',NULL,NULL),(4,'Sparkling Cross Pend','The classic emblem of faith is beautifully reimagi','5ddff681c10d4','2019-11-28',NULL,NULL),(5,'qweqwe','asdasd','5df10ce01229e','2019-12-11','V','2019-12-11');

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

insert  into `tmtk_product_uploads`(`IdUpload`,`ProductId`,`ProductPath`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values ('5df0b8f61cb6c',8,'uploads/bracelets/ee43520e7ec999cc05b8aac8f60b6778.jpg','2019-12-11',NULL,NULL),('5df1035f379ec',9,'uploads/bracelets/c2837c25a9a7068ed61c72b916df19e8.jpg','2019-12-11',NULL,NULL),('5df1036edd91a',10,'uploads/bracelets/87436f7037c2e62d60be16cd0c654f47.jpg','2019-12-11',NULL,NULL),('5df103ce0e82c',11,'uploads/bracelets/cafea5ea798d97325761a6e9c4dff297.jpg','2019-12-11',NULL,NULL),('5df103dacd16e',12,'uploads/bracelets/ffc18f9997dd0a100e1a0a82cf51c414.jpg','2019-12-11',NULL,NULL),('5df10519d2a67',13,'uploads/bracelets/610981edaa35dff8541c7577c6530535.jpg','2019-12-11',NULL,NULL),('5df1053055688',14,'uploads/bracelets/b68029e8812c76d1db00fb1bbfbb1651.jpg','2019-12-11',NULL,NULL),('5df1053055688',15,'uploads/bracelets/ba66283d78fcb15766c4397a9d84502d.PNG','2019-12-11',NULL,NULL),('5df1053055688',16,'uploads/bracelets/0a1be9ac77f550d294d96762dc1ed6e2.jpg','2019-12-11',NULL,NULL),('5df1053d5bc19',17,'uploads/bracelets/e4379265391ad1000463fe081d1b2ea3.jpg','2019-12-11',NULL,NULL),('5df1053d5bc19',18,'uploads/bracelets/6ba806e1f90b5edb7698f7dffc1ad654.PNG','2019-12-11',NULL,NULL),('5df1053d5bc19',19,'uploads/bracelets/16184f7b6317bfc6b9fbd747f9a6ae3d.jpg','2019-12-11',NULL,NULL),('5df108c53a31a',20,'uploads/earrings/f1f47a934dddae7415346c3ce247bbbd.jpg','2019-12-11',NULL,NULL),('5df109de304fe',21,'uploads/earrings/8f1eb461547a312eead4630665b9198c.jpg','2019-12-11','V','2019-12-11'),('5df109ece4e99',22,'uploads/earrings/7a6d42e38ccde95d40f218ed9d7c0af1.jpg','2019-12-11','V','2019-12-11'),('5df10a30d96f3',23,'uploads/earrings/18de26e0d12943f62325e4fc80375333.jpg','2019-12-11','V','2019-12-11'),('5df10a57e33ad',24,'uploads/earrings/335e3886f61454f3af24d0c55e96ace2.jpg','2019-12-11','V','2019-12-11'),('5df10a602e42a',25,'uploads/earrings/ae0710bc8fd86712e96b45f9fcb0d745.jpg','2019-12-11',NULL,NULL),('5df10cd46e72e',26,'uploads/pendants/1a2d4757c015793fb4a289139e14ee7e.jpg','2019-12-11','V','2019-12-11'),('5df10ce01229e',27,'uploads/pendants/ff228621896bf5a149401188a4dbb6e5.jpg','2019-12-11',NULL,NULL),('5df10e0d15f8b',28,'uploads/rings/5672b5f1e1db732288d34989109cb942.jpg','2019-12-11',NULL,NULL),('5df10ebf6ca5e',29,'uploads/rings/dc60e237f1be0f6a1d354dad323b39da.jpg','2019-12-11',NULL,NULL),('5df10f1da9014',30,'uploads/rings/c4e02d1a00142b3b66f8aea24953c676.jpg','2019-12-11',NULL,NULL),('5df1104ad42de',31,'uploads/rings/2826d669cb080afd0c487ebc52336923.jpg','2019-12-11',NULL,NULL),('5df110b4b49e3',32,'uploads/rings/81cedbb06ac4677e68db4913a48bb73d.jpg','2019-12-11','V','2019-12-11'),('5df110ce67f8a',33,'uploads/rings/bdc4a5cac8856ab5b12fee399424c627.jpg','2019-12-11',NULL,NULL),('5df1115d688bd',34,'uploads/rings/963ba462c64bbf122ef8cad103e78167.jpg','2019-12-11','V','2019-12-11'),('5df111675fd9f',35,'uploads/rings/e93f69b1b35aa9ee56b7db6741698e42.jpg','2019-12-11','V','2019-12-11'),('5df111787279d',36,'uploads/rings/d9b64b3cdfdbb6e5fa89ad3cfddf9352.jpg','2019-12-11',NULL,NULL);

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

insert  into `tmtk_ring`(`IdProduct`,`Name`,`Description`,`UploadFk`,`dCreateOn`,`sStatusDelete`,`dDeletedOn`) values (1,'Classic Round Cut St','Classic, elegant and symbolic of your everlasting love, this ring will win her heart. It showcases a','5ddff9c9d7d54','2019-11-28','V','2019-12-11'),(2,'Halo Heart Cut Sterl','Make the moment you ask for her hand that much more magical with this exquisite bridal set. Expertly','5ddffa20f22d3','2019-11-28','','0000-00-00'),(5,'qwe','asd','5df1104ad42de','2019-12-11','','0000-00-00'),(4,'qwe','asd','5df10f1da9014','2019-12-11','','0000-00-00'),(6,'qwe','asdasd','5df110ce67f8a','2019-12-11','V','2019-12-11'),(7,'dasd','asdas','5df111787279d','2019-12-11',NULL,NULL);

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

insert  into `tmtk_tag`(`IdTag`,`IdProduct_fk`,`IdAttribute_fk`,`ProductCategory`,`dCreateOn`,`sStatusDelete`,`dDeleteOn`) values (1,1,1,1,'2019-12-11','V','2019-12-11'),(2,1,2,1,'2019-12-11','V','2019-12-11'),(3,1,1,1,'2019-12-11','V','2019-12-11'),(4,1,1,1,'2019-12-11','V','2019-12-11'),(5,1,2,1,'2019-12-11','V','2019-12-11'),(6,1,1,1,'2019-12-11','V','2019-12-11'),(7,1,1,1,'2019-12-11','V','2019-12-11'),(8,1,2,1,'2019-12-11','V','2019-12-11'),(9,1,2,1,'2019-12-11','V','2019-12-11'),(10,1,2,1,'2019-12-11','V','2019-12-11'),(11,1,1,1,'2019-12-11',NULL,NULL),(12,1,2,1,'2019-12-11',NULL,NULL),(13,2,5,1,'2019-12-11',NULL,NULL),(14,2,6,1,'2019-12-11',NULL,NULL),(15,2,4,1,'2019-12-11',NULL,NULL),(16,2,5,1,'2019-12-11',NULL,NULL),(17,3,4,1,'2019-12-11',NULL,NULL),(18,3,5,1,'2019-12-11',NULL,NULL),(19,2,5,1,'2019-12-11',NULL,NULL),(20,2,6,1,'2019-12-11',NULL,NULL),(21,2,5,1,'2019-12-11',NULL,NULL),(22,2,6,1,'2019-12-11',NULL,NULL),(23,3,5,1,'2019-12-11',NULL,NULL),(24,3,6,1,'2019-12-11',NULL,NULL),(25,4,6,1,'2019-12-11',NULL,NULL),(26,5,6,1,'2019-12-11','V','2019-12-11'),(27,6,6,1,'2019-12-11','V','2019-12-11'),(28,7,6,1,'2019-12-11','V','2019-12-11'),(29,8,6,1,'2019-12-11',NULL,NULL),(30,9,6,1,'2019-12-11',NULL,NULL),(31,10,6,1,'2019-12-11','V','2019-12-11'),(32,11,6,1,'2019-12-11',NULL,NULL),(33,12,6,1,'2019-12-11',NULL,NULL),(34,13,6,1,'2019-12-11',NULL,NULL),(35,14,6,1,'2019-12-11',NULL,NULL),(36,15,6,1,'2019-12-11',NULL,NULL),(37,16,6,1,'2019-12-11',NULL,NULL),(38,17,6,1,'2019-12-11',NULL,NULL),(39,18,5,1,'2019-12-11',NULL,NULL),(40,18,6,1,'2019-12-11',NULL,NULL),(41,19,5,1,'2019-12-11',NULL,NULL),(42,19,6,1,'2019-12-11',NULL,NULL),(43,20,6,1,'2019-12-11',NULL,NULL),(52,10,4,2,'2019-12-11',NULL,NULL),(53,10,4,2,'2019-12-11',NULL,NULL),(54,5,5,3,'2019-12-11','V','2019-12-11'),(55,5,6,3,'2019-12-11','V','2019-12-11'),(56,5,5,3,'2019-12-11',NULL,NULL),(57,3,5,4,'2019-12-11',NULL,NULL),(58,3,6,4,'2019-12-11',NULL,NULL),(59,3,5,4,'2019-12-11',NULL,NULL),(60,3,6,4,'2019-12-11',NULL,NULL),(61,4,6,4,'2019-12-11',NULL,NULL),(62,5,4,4,'2019-12-11',NULL,NULL),(63,5,6,4,'2019-12-11',NULL,NULL),(64,6,5,4,'2019-12-11','V','2019-12-11'),(65,6,6,4,'2019-12-11','V','2019-12-11'),(66,6,5,4,'2019-12-11',NULL,NULL),(67,7,5,4,'2019-12-11','V','2019-12-11'),(68,7,6,4,'2019-12-11','V','2019-12-11'),(69,7,6,4,'2019-12-11','V','2019-12-11'),(70,7,5,4,'2019-12-11',NULL,NULL),(71,7,6,4,'2019-12-11',NULL,NULL);

/* Procedure structure for procedure `sp_tmtk_about` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_tmtk_about` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_about`(`p_sMode` CHAR(1), `p_id_number` INT, `p_year` date, `p_description` text(500))
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner`(p_sMode CHAR(1), p_IdBanner INT, p_BannerTitle CHAR(20), p_BannerDescription CHAR(50), p_BannerPath CHAR(200))
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
