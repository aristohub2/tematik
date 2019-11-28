-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 03:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

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
(1, 'Banner Title 1', 'Banner Description 1', 'uploads/banner/a06fbf1ae98082d46b00e5aca5025f55.PNG', NULL, NULL, NULL),
(2, 'Banner Title 2', 'Banner Description 2', 'uploads/banner/dfa9dc6c53c0aa6c75bd00a2040afe66.PNG', NULL, NULL, NULL),
(3, 'Banner 3', 'Banner Description 3', 'uploads/banner/fad4e2af506f7a8b3b2d48eadbdba87e.PNG', NULL, NULL, NULL),
(4, '3', '4', 'uploads/banner/02a21c8e6f7578bedb37ca3704706fe3.PNG', NULL, NULL, NULL),
(5, 'Banner Description 5', 'Banner Description 5', 'uploads/banner/0b880be7dd1e2011aa8c89726f3ecff8.PNG', NULL, NULL, NULL),
(6, 'Banner Description 5', 'Banner Description 5', 'uploads/banner/025603d4f3a374ea30e37c40067a27f6.PNG', NULL, NULL, NULL),
(7, '1', '2', 'uploads/banner/dcf21d30e4ac88cf86e36775d3c1cd49.PNG', NULL, NULL, NULL),
(8, '', '', 'uploads/banner/78f89be650dc040ec571f0c4d1f774b6.PNG', NULL, NULL, NULL),
(9, 'qwe', 'asd', 'uploads/banner/c856db13d52cb09d451388a74d5ac87b.PNG', NULL, NULL, NULL),
(10, 'asdzxc', 'asda', 'uploads/banner/744acdf92a6b81debc6810f8a685e76b.PNG', NULL, NULL, NULL);

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
(1, 'Bracelet Title 1', 'Bracelet Description 1', '5ddf99ffef6df', '2019-11-28', NULL, NULL),
(2, 'bukan gelang', 'hanya sikat', '5ddfe0fdef645', '2019-11-28', NULL, NULL),
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
(1, 'Earring Name 1', 'Desc 1', '5ddf9a1acd703', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_pendant`
--

CREATE TABLE `tmtk_pendant` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_pendant`
--

INSERT INTO `tmtk_pendant` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, 'Pendant_1A', 'ini adalah deskripsi', '5ddfdd6b06f87', '2019-11-28', NULL, NULL);

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
('5ddfdd6b06f87', 4, 'uploads/pendants/e7cfa35b12c5f29b0790078f80fb5b56.jpg', '2019-11-28', NULL, NULL),
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
('5ddfe4cdb341c', 22, 'uploads/bracelets/488a8542a5d91ce306047a0859ceb100.jpg', '2019-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_ring`
--

CREATE TABLE `tmtk_ring` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `UploadFK` varchar(100) NOT NULL,
  `dCreateOn` date NOT NULL,
  `sStatusDelete` varchar(10) NOT NULL,
  `dDeletedOn` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Indexes for table `tmtk_product_uploads`
--
ALTER TABLE `tmtk_product_uploads`
  ADD PRIMARY KEY (`ProductId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
