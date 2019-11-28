-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 08:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tematik`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner` (`p_sMode` CHAR(1), `p_IdBanner` INT, `p_BannerTitle` CHAR(20), `p_BannerDescription` CHAR(50), `p_BannerPath` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_bracelet` (`p_sMode` CHAR(1), `p_IdBracelet` INT, `p_BraceletName` CHAR(20), `p_BraceletDescription` CHAR(100), `p_BraceletUploadFk` CHAR(200))  BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END FROM tmtk_bracelet);
 INSERT INTO tmtk_bracelet ( 			IdProduct,
			Name,
			Description,
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_earrings` (IN `p_sMode` CHAR(1), IN `p_IdEarrings` INT, IN `p_EarringsName` CHAR(20), IN `p_EarringsDescription` CHAR(100), IN `p_EarringsUploadFk` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_pendant` (IN `p_sMode` CHAR(1), IN `p_Idpendant` INT, IN `p_pendantName` CHAR(20), IN `p_pendantDescription` CHAR(100), IN `p_pendantUploadFk` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_product_uploads` (`p_sMode` CHAR(1), `p_IdUpload` CHAR(100), `p_ProductId` INT, `p_ProductPath` CHAR(100))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_ring` (IN `p_sMode` CHAR(1), IN `p_Idring` INT, IN `p_ringName` CHAR(20), IN `p_ringDescription` CHAR(100), IN `p_ringUploadFK` CHAR(200))  NO SQL
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
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_banner`
--

CREATE TABLE `tmtk_banner` (
  `IdBanner` int(11) NOT NULL,
  `BannerTitle` varchar(20) DEFAULT NULL,
  `BannerDescription` varchar(50) DEFAULT NULL,
  `BannerPath` varchar(200) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_banner`
--

INSERT INTO `tmtk_banner` (`IdBanner`, `BannerTitle`, `BannerDescription`, `BannerPath`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, 'asda', 'Banner Descriptionasd', 'uploads/banner/954c09170a07400ea069879b6776dba9.jpg', NULL, NULL, NULL),
(2, 'about', 'about banner', 'uploads/banner/8124e2882affbe1395d56a38e4e24978.jpg', NULL, NULL, NULL),
(3, 'Pendant', 'Jade diamond', 'uploads/banner/fb9752c6e58de9c56048095ffd457fbb.jpg', NULL, NULL, NULL),
(4, 'Earrings', 'Saphire and Jade Stone', 'uploads/banner/ee8623650f09695ff3f3b29bf932d8f8.jpg', NULL, NULL, NULL),
(5, 'Ring', 'Gold ring with luxury design', 'uploads/banner/349214a7d990893f8f861270c17ccec9.jpg', NULL, NULL, NULL),
(6, 'Platinum ring', 'Platinum ring design for elegant', 'uploads/banner/5c01e3517d465a1c62fb218c556f7ee4.jpg', NULL, NULL, NULL),
(7, 'Bracelets', 'Bracelets Banner', 'uploads/banner/386e902dd13d3e4332eaef8425e042bf.jpg', NULL, NULL, NULL),
(8, 'Earrings', 'Earrings Banner', 'uploads/banner/720d7fdcf0934406426da23d3c79de2d.jpg', NULL, NULL, NULL),
(9, 'Pendant', 'Pendant Banner', 'uploads/banner/ec3923120fc261f51ba522ae2161c51f.jpg', NULL, NULL, NULL),
(10, 'RIng', 'Ring Banner', 'uploads/banner/752c9924185c06fd300572568610cb63.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_bracelet`
--

CREATE TABLE `tmtk_bracelet` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_bracelet`
--

INSERT INTO `tmtk_bracelet` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(3, 'Silver Cuff', 'Tiffany 1837', '5ddfe2eb13c62', '2019-11-28', NULL, NULL),
(4, 'Makers Narrow Cuff', 'Tiffany 1837(R) 18crt', '5ddfe3a67d1b1', '2019-11-28', NULL, NULL),
(5, 'Silver Bracelet', 'Tiffany Infinity', '5ddfe4085f805', '2019-11-28', NULL, NULL),
(6, 'T Square Bracelet', 'T-Series', '5ddfe471a1976', '2019-11-28', NULL, NULL),
(7, 'Tiger Eye Bracelet', 'T-Series', '5ddfe4cdb341c', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_earrings`
--

CREATE TABLE `tmtk_earrings` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `UploadFk` varchar(50) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_earrings`
--

INSERT INTO `tmtk_earrings` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(2, 'Large Snowman Earrin', 'A symbol of all that we treasure, this earring is', '5ddff6bfdb93c', '2019-11-28', NULL, NULL),
(3, 'Small Folded Pavé Ho', 'Sterling Silver, Diamond 0.09 carat weight', '5ddff7089673b', '2019-11-28', NULL, NULL),
(4, 'Teardrop Earrings in', 'Playful enough for day, fancy enough for night, th', '5ddff7181b982', '2019-11-28', NULL, NULL),
(5, 'Small Earrings in 18', 'An expression of all that we treasure, the Cherish', '5ddff72655c00', '2019-11-28', NULL, NULL),
(6, 'Pavé Twisted Ribbon', '18k Gold, Diamond 0.48 carat weight', '5ddff75f40875', '2019-11-28', NULL, NULL),
(7, 'Yellow Gold \"Shared-', 'Eternally brilliant, these “Shared-Prong” Diamond', '5ddff785522ff', '2019-11-28', NULL, NULL),
(8, 'White Gold \"Shared-P', 'Eternally brilliant, these “Shared-Prong” Diamond', '5ddff90988edb', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_pendant`
--

CREATE TABLE `tmtk_pendant` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_pendant`
--

INSERT INTO `tmtk_pendant` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, 'Medium O Pendant', 'Add a splash of sophisticated style and discover a', '5ddff62ddd70a', '2019-11-28', NULL, NULL),
(2, 'Timeless Elegance', 'Captivate with this exquisite sterling silver halo', '5ddff651ac1d0', '2019-11-28', NULL, NULL),
(3, 'Vintage Circle Colli', 'Enhance any neckline in a spectacular fashion with', '5ddff6666c961', '2019-11-28', NULL, NULL),
(4, 'Sparkling Cross Pend', 'The classic emblem of faith is beautifully reimagi', '5ddff681c10d4', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_product_uploads`
--

CREATE TABLE `tmtk_product_uploads` (
  `IdUpload` varchar(100) DEFAULT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductPath` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_product_uploads`
--

INSERT INTO `tmtk_product_uploads` (`IdUpload`, `ProductId`, `ProductPath`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
('5ddf99ffef6df', 1, 'uploads/bracelets/36354e75fc15bda8d4ac7bc1cc186ffa.jpg', '2019-11-28', NULL, NULL),
('5ddf9a1acd703', 2, 'uploads/earrings/120db88cf674f5af68f42eb466c32628.jpg', '2019-11-28', NULL, NULL),
('5ddf9a1acd703', 3, 'uploads/earrings/1e0ee52ed83f27bb12b599e7103cb9ec.jpg', '2019-11-28', NULL, NULL),
('5ddfe0fdef645', 5, 'uploads/bracelets/34c81f69a01eb1e0ea6893f11c16522f.jpg', '2019-11-28', NULL, NULL),
('5ddfe2eb13c62', 6, 'uploads/bracelets/f00e17fdec789771fa32f1f07b1277c3.jpg', '2019-11-28', NULL, NULL),
('5ddfe2eb13c62', 7, 'uploads/bracelets/9dafe0816a14328c9611b5002e529d5f.jpg', '2019-11-28', NULL, NULL),
('5ddfe3a67d1b1', 8, 'uploads/bracelets/b10821f191a15a1b6a6c960684463393.jpg', '2019-11-28', NULL, NULL),
('5ddfe3a67d1b1', 9, 'uploads/bracelets/d421a70f6c2d9ba36bc0c076c2dda333.jpg', '2019-11-28', NULL, NULL),
('5ddfe3a67d1b1', 10, 'uploads/bracelets/d90b2113fb0cdba806e12b1819d94353.jpg', '2019-11-28', NULL, NULL),
('5ddfe3a67d1b1', 11, 'uploads/bracelets/625039db9e53624dbbc2b8bc141562ae.jpg', '2019-11-28', NULL, NULL),
('5ddfe3a67d1b1', 12, 'uploads/bracelets/fa6ed848478b824af5c7c77a3e412541.jpg', '2019-11-28', NULL, NULL),
('5ddfe4085f805', 13, 'uploads/bracelets/5d9c50b23ed6f89ac48eeae0b9e65a9a.jpg', '2019-11-28', NULL, NULL),
('5ddfe4085f805', 14, 'uploads/bracelets/897b70f3bfdef83902e731f33f3cf368.jpg', '2019-11-28', NULL, NULL),
('5ddfe471a1976', 15, 'uploads/bracelets/41a5ff505abd874a9c58cf2b881a7ac4.jpg', '2019-11-28', NULL, NULL),
('5ddfe471a1976', 16, 'uploads/bracelets/57b5b6e23f9aac5d1e6fa87548802777.jpg', '2019-11-28', NULL, NULL),
('5ddfe471a1976', 17, 'uploads/bracelets/db5caf2e1ebd547131dd94cbe221fd11.jpg', '2019-11-28', NULL, NULL),
('5ddfe471a1976', 18, 'uploads/bracelets/91096da307b2f040722d1760e8f969ad.jpg', '2019-11-28', NULL, NULL),
('5ddfe4cdb341c', 19, 'uploads/bracelets/f8762d6c708549031e3807b89d201a5c.jpg', '2019-11-28', NULL, NULL),
('5ddfe4cdb341c', 20, 'uploads/bracelets/6119967e043337e2afbdeaa458a5f48e.jpg', '2019-11-28', NULL, NULL),
('5ddfe4cdb341c', 21, 'uploads/bracelets/5013e10ccd5f4c970e858b6f217da06c.jpg', '2019-11-28', NULL, NULL),
('5ddfe4cdb341c', 22, 'uploads/bracelets/488a8542a5d91ce306047a0859ceb100.jpg', '2019-11-28', NULL, NULL),
('5ddff62ddd70a', 23, 'uploads/pendants/9d550601fbf21235b147e5a8151192a0.jpg', '2019-11-28', NULL, NULL),
('5ddff62ddd70a', 24, 'uploads/pendants/073b97893e8d450aa397c12c7db53693.jpg', '2019-11-28', NULL, NULL),
('5ddff651ac1d0', 25, 'uploads/pendants/7f62b3fb80c5a86c84daca31586bb6c2.jpg', '2019-11-28', NULL, NULL),
('5ddff651ac1d0', 26, 'uploads/pendants/272ed3399f21a4c763fce4d916612418.jpg', '2019-11-28', NULL, NULL),
('5ddff6666c961', 27, 'uploads/pendants/4de8976034b4936775a08d73557dac71.jpg', '2019-11-28', NULL, NULL),
('5ddff6666c961', 28, 'uploads/pendants/dce586ba539baea37080021afb3cf40c.jpg', '2019-11-28', NULL, NULL),
('5ddff681c10d4', 29, 'uploads/pendants/a0e28adeddfe074eaa2fded45dd4977d.jpg', '2019-11-28', NULL, NULL),
('5ddff681c10d4', 30, 'uploads/pendants/1ef6da0b31f047681a1bbe2bbf8a47b0.jpg', '2019-11-28', NULL, NULL),
('5ddff6bfdb93c', 31, 'uploads/earrings/ae5ecceb8a77410df9aa38dc8b8467c8.jpg', '2019-11-28', NULL, NULL),
('5ddff6bfdb93c', 32, 'uploads/earrings/0c9419173ada2da242681f6c3c4c146c.jpg', '2019-11-28', NULL, NULL),
('5ddff7089673b', 33, 'uploads/earrings/63acd96e7110677be5f1b4b04c4b4377.jpg', '2019-11-28', NULL, NULL),
('5ddff7089673b', 34, 'uploads/earrings/519306c4c1ffad7813047818e54071fe.jpg', '2019-11-28', NULL, NULL),
('5ddff7181b982', 35, 'uploads/earrings/62aaf9c2f3c50533ad747bfec08ff65f.jpg', '2019-11-28', NULL, NULL),
('5ddff7181b982', 36, 'uploads/earrings/06e56910ffa59e5e345cc782c988757e.jpg', '2019-11-28', NULL, NULL),
('5ddff72655c00', 37, 'uploads/earrings/f5532d964adb3de1ef5c97522799386f.jpg', '2019-11-28', NULL, NULL),
('5ddff72655c00', 38, 'uploads/earrings/4453bb13a6d752ece9aff3bd75c703c4.jpg', '2019-11-28', NULL, NULL),
('5ddff75f40875', 39, 'uploads/earrings/b1dc1d65b16a7d04f552d6653756817f.jpg', '2019-11-28', NULL, NULL),
('5ddff75f40875', 40, 'uploads/earrings/021bfec085065f11e5de185631fe5776.jpg', '2019-11-28', NULL, NULL),
('5ddff785522ff', 41, 'uploads/earrings/2da518fa56702be10bfad73f7c0f7fb2.jpg', '2019-11-28', NULL, NULL),
('5ddff90988edb', 47, 'uploads/earrings/72dd3fec0369b633285190607bad489a.jpg', '2019-11-28', NULL, NULL),
('5ddff90988edb', 48, 'uploads/earrings/a460e594784698f7de1d6356fc23e7f7.jpg', '2019-11-28', NULL, NULL),
('5ddff90988edb', 49, 'uploads/earrings/16cc9f69ec2aa42ead61bc6557665ef9.jpg', '2019-11-28', NULL, NULL),
('5ddff9c9d7d54', 50, 'uploads/rings/87d67a99bc4a510c96b99178ee89c8d7.jpg', '2019-11-28', NULL, NULL),
('5ddff9c9d7d54', 51, 'uploads/rings/22d6e5fcced89ba70676c7eb3e082664.jpg', '2019-11-28', NULL, NULL),
('5ddff9c9d7d54', 52, 'uploads/rings/880fe631b757b1260cf2e1e98e9041c4.jpg', '2019-11-28', NULL, NULL),
('5ddff9c9d7d54', 53, 'uploads/rings/17cc79c1c824cb37baa8328750d2f0cb.jpg', '2019-11-28', NULL, NULL),
('5ddff9c9d7d54', 54, 'uploads/rings/14388e4cc7981937e8140f1072a5693b.jpg', '2019-11-28', NULL, NULL),
('5ddffa20f22d3', 55, 'uploads/rings/22acfc6c14b873c05a225100504a1a0a.jpg', '2019-11-28', NULL, NULL),
('5ddffa20f22d3', 56, 'uploads/rings/6836463175da0e325bf50d8811c851d6.jpg', '2019-11-28', NULL, NULL),
('5ddffa20f22d3', 57, 'uploads/rings/86c7caa5b982255510500b97c0bf3958.jpg', '2019-11-28', NULL, NULL),
('5ddffa20f22d3', 58, 'uploads/rings/57f75576e3a07837e2b08b2ff12b1e35.jpg', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_ring`
--

CREATE TABLE `tmtk_ring` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date NOT NULL,
  `sStatusDelete` varchar(10) NOT NULL,
  `dDeletedOn` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tmtk_ring`
--

INSERT INTO `tmtk_ring` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeletedOn`) VALUES
(1, 'Classic Round Cut St', 'Classic, elegant and symbolic of your everlasting love, this ring will win her heart. It showcases a', '5ddff9c9d7d54', '2019-11-28', '', '0000-00-00'),
(2, 'Halo Heart Cut Sterl', 'Make the moment you ask for her hand that much more magical with this exquisite bridal set. Expertly', '5ddffa20f22d3', '2019-11-28', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tmtk_banner`
--
ALTER TABLE `tmtk_banner`
  ADD PRIMARY KEY (`IdBanner`);

--
-- Indexes for table `tmtk_bracelet`
--
ALTER TABLE `tmtk_bracelet`
  ADD PRIMARY KEY (`IdProduct`,`UploadFk`);

--
-- Indexes for table `tmtk_earrings`
--
ALTER TABLE `tmtk_earrings`
  ADD PRIMARY KEY (`IdProduct`);

--
-- Indexes for table `tmtk_pendant`
--
ALTER TABLE `tmtk_pendant`
  ADD PRIMARY KEY (`IdProduct`,`UploadFk`);

--
-- Indexes for table `tmtk_product_uploads`
--
ALTER TABLE `tmtk_product_uploads`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `tmtk_ring`
--
ALTER TABLE `tmtk_ring`
  ADD PRIMARY KEY (`IdProduct`,`UploadFk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
