-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 03:46 AM
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_earrings` (IN `p_sMode` CHAR(1), IN `p_IdEarrings` INT, IN `p_EarringsName` CHAR(20), IN `p_EarringsDescription` CHAR(100), IN `p_EarringsUploadFk` CHAR(200))  BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdEarrings) + 1 END FROM tmtk_earrings);
 INSERT INTO tmtk_earrings ( 			IdEarrings,
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_pendant` (IN `p_sMode` CHAR(1), IN `p_Idpendant` INT, IN `p_pendantName` CHAR(20), IN `p_pendantDescription` CHAR(100), IN `p_pendantUploadFk` CHAR(200))  BEGIN
IF p_sMode = 'I' THEN 
BEGIN
DECLARE oId INT;
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(Idpendant) + 1 END FROM tmtk_pendant);
 INSERT INTO tmtk_pendant ( 			Idpendant,
			pendantName,
			pendantDescription,
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
	SET oId = (SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(idring) + 1 END FROM tmtk_ring);
 INSERT INTO tmtk_ring ( 			idring,
			ringName,
			ringDescription,
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
(1, 'ged', 'sfs', 'uploads/banner/f9eb0f24c88a985dd85d166b081e0db3.mp4', '2019-10-31', NULL, NULL),
(2, 'qweqwe', 'asdasd', 'uploads/banner/f60d1720035c00502d2476a1092a86a1.jpg', NULL, NULL, NULL),
(3, 'qweqwe', 'asdasd', 'uploads/banner/44216867e1559acdcf43860d399a4bc6.jpg', NULL, NULL, NULL),
(4, 'bANNER ASD', 'AQWE', 'uploads/banner/c5f62ceb4c33299d5f5d7a6151e1c733.jpg', NULL, NULL, NULL),
(5, 'qweqwe', 'asdasd', 'uploads/banner/fa8e00a259dea17cc781e826779e19c5.jpg', NULL, NULL, NULL),
(6, 'sccascasca', '123123', 'uploads/banner/c38b13970f6d0d8cb3a8d8ba0b85a77c.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_bracelet`
--

CREATE TABLE `tmtk_bracelet` (
  `IdBracelet` int(11) NOT NULL,
  `BraceletName` varchar(50) DEFAULT NULL,
  `BraceletDescription` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_bracelet`
--

INSERT INTO `tmtk_bracelet` (`IdBracelet`, `BraceletName`, `BraceletDescription`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, '1', '1', '5dd610e1b4035', '2019-11-21', NULL, NULL),
(2, '', '', '5dd610e245744', '2019-11-21', NULL, NULL),
(3, 'mk1', 'mk1-1234', '5dd6132d4a023', '2019-11-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_earrings`
--

CREATE TABLE `tmtk_earrings` (
  `IdEarrings` int(11) NOT NULL,
  `EarringsName` varchar(50) DEFAULT NULL,
  `EarringsDescription` varchar(100) DEFAULT NULL,
  `UploadFk` varchar(50) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_earrings`
--

INSERT INTO `tmtk_earrings` (`IdEarrings`, `EarringsName`, `EarringsDescription`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, '2', '2', '5dd610f9cc070', '2019-11-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_pendant`
--

CREATE TABLE `tmtk_pendant` (
  `Idpendant` int(11) NOT NULL,
  `pendantName` varchar(50) DEFAULT NULL,
  `pendantDescription` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_pendant`
--

INSERT INTO `tmtk_pendant` (`Idpendant`, `pendantName`, `pendantDescription`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, '3', '3', '5dd61101c9314', '2019-11-21', NULL, NULL),
(2, 'te', '3', '5dd6134b849e5', '2019-11-21', NULL, NULL);

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
('5dd610f9cc070', 1, 'uploads/earrings/ff8ad44e3c3ba2dfe2b174f893db8a64.gif', '2019-11-21', NULL, NULL),
('5dd61108bba03', 2, 'uploads/rings/036962f6ab00697b5c5f356d1e288c1a.jpg', '2019-11-21', NULL, NULL),
('5dd6132d4a023', 3, 'uploads/bracelets/a0bf4ee22114931498c6a94dee62bd03.jpg', '2019-11-21', NULL, NULL),
('5dd6134b849e5', 4, 'uploads/pendants/d30d8580877a8893e24a68583fa8d9bf.png', '2019-11-21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_ring`
--

CREATE TABLE `tmtk_ring` (
  `idring` int(11) NOT NULL,
  `ringName` varchar(100) NOT NULL,
  `ringDescription` varchar(1000) NOT NULL,
  `UploadFK` varchar(100) NOT NULL,
  `dCreateOn` date NOT NULL,
  `sStatusDelete` varchar(10) NOT NULL,
  `dDeletedOn` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tmtk_ring`
--

INSERT INTO `tmtk_ring` (`idring`, `ringName`, `ringDescription`, `UploadFK`, `dCreateOn`, `sStatusDelete`, `dDeletedOn`) VALUES
(1, '4', '4', '5dd61108bba03', '2019-11-21', '', '0000-00-00');

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
  ADD PRIMARY KEY (`IdBracelet`,`UploadFk`);

--
-- Indexes for table `tmtk_earrings`
--
ALTER TABLE `tmtk_earrings`
  ADD PRIMARY KEY (`IdEarrings`);

--
-- Indexes for table `tmtk_product_uploads`
--
ALTER TABLE `tmtk_product_uploads`
  ADD PRIMARY KEY (`ProductId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
