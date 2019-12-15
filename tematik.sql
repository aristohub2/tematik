-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2019 at 02:04 PM
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_about` (`p_sMode` CHAR(1), `p_id_number` INT, `p_year` DATE, `p_description` TEXT(500))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_attribute` (`p_sMode` CHAR(1), `p_IdAttribute` INT, `p_AttributeName` CHAR(20))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_banner` (IN `p_sMode` CHAR(1), IN `p_IdBanner` INT, IN `p_BannerTitle` CHAR(200), IN `p_BannerDescription` TEXT, IN `p_BannerPath` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_earrings` (`p_sMode` CHAR(1), `p_IdEarring` INT, `p_EarringName` CHAR(20), `p_EarringDescription` CHAR(100), `p_EarringUploadFk` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_pendant` (`p_sMode` CHAR(1), `p_IdPendant` INT, `p_PendantName` CHAR(20), `p_PendantDescription` CHAR(100), `p_PendantUploadFk` CHAR(200))  BEGIN
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
  UPDATE tmtk_product_uploads SET sStatusDelete = 'V', dDeleteOn = CURRENT_TIMESTAMP  
WHERE IdUpload = p_IdUpload  ;
END;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_ring` (`p_sMode` CHAR(1), `p_IdRing` INT, `p_RingName` CHAR(20), `p_RingDescription` CHAR(100), `p_RingUploadFk` CHAR(200))  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_tag` (IN `p_sMode` CHAR(1), IN `p_IdTag` INT, IN `p_IdProduct_fk` INT, IN `p_IdAttribute_fk` INT, IN `p_ProductCategory` INT)  BEGIN
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
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tmtk_timeline` (`p_sMode` CHAR(1), `p_id_number` INT, `p_year` DATE, `p_description` TEXT(500))  BEGIN
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
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_attribute`
--

CREATE TABLE `tmtk_attribute` (
  `IdAttribute` int(11) NOT NULL,
  `AttributeName` varchar(100) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_attribute`
--

INSERT INTO `tmtk_attribute` (`IdAttribute`, `AttributeName`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, 'Gold', '2019-12-12', NULL, NULL),
(2, 'Platinum', '2019-12-12', NULL, NULL),
(3, 'Diamonds', '2019-12-12', NULL, NULL),
(4, 'Small', '2019-12-12', NULL, NULL),
(5, 'Big', '2019-12-12', NULL, NULL),
(6, 'Silver', '2019-12-12', NULL, NULL),
(7, 'Elegant', '2019-12-12', NULL, NULL),
(8, 'Youth', '2019-12-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_banner`
--

CREATE TABLE `tmtk_banner` (
  `IdBanner` int(11) NOT NULL,
  `BannerTitle` varchar(200) DEFAULT NULL,
  `BannerDescription` text DEFAULT NULL,
  `BannerPath` varchar(200) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_banner`
--

INSERT INTO `tmtk_banner` (`IdBanner`, `BannerTitle`, `BannerDescription`, `BannerPath`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(0, 'Video', 'Ads for video', 'uploads/banner/c804ecb46e0503642a13db63eea48489.mp4', NULL, NULL, NULL),
(1, 'Home', 'Home banner', 'uploads/banner/ebe3ccd7c1a56bbc5d8b949ee03ce3cc.jpg', NULL, NULL, NULL),
(2, 'About', 'About Image', 'uploads/banner/a189e466c2ec5c930bfc031e75a441cc.jpg', NULL, NULL, NULL),
(3, 'Bracelets', 'Bracelets Product', 'uploads/banner/006eec0526d04450225ca58748d704fc.jpg', NULL, NULL, NULL),
(4, 'Earrings', 'Earrings Products', 'uploads/banner/5af5bb593b2b06aa5675130117a8fc3b.png', NULL, NULL, NULL),
(5, 'Pendant', 'Pendant Products', 'uploads/banner/f52cd6bf6c532bef9acb53ef218a0f9c.jpg', NULL, NULL, NULL),
(6, 'Ring', 'Ring Products', 'uploads/banner/aca86455309c39415448a6eb8c41c455.jpg', NULL, NULL, NULL),
(7, 'Bracelets', 'Bracelets', 'uploads/banner/6d8fda0bde6812c3d379dc0b731e12f8.jpg', NULL, NULL, NULL),
(8, 'Earrings', 'Earrings Banner', 'uploads/banner/720d7fdcf0934406426da23d3c79de2d.jpg', NULL, NULL, NULL),
(9, 'Pendant', 'Pendant Banner', 'uploads/banner/ec3923120fc261f51ba522ae2161c51f.jpg', NULL, NULL, NULL),
(10, 'RIng', 'Ring Banner', 'uploads/banner/752c9924185c06fd300572568610cb63.jpg', NULL, NULL, NULL),
(11, 'Golden Experience', 'Because Gold is Brilliant', 'uploads/banner/a4a0bfa80351863c8e00919cc963033d.jpg', NULL, NULL, NULL),
(12, 'Diamond is Unbreakable', 'Strong and Shine Like Diamond', 'uploads/banner/b426e2a64596a98b4a53a71dde93119f.jpg', NULL, NULL, NULL),
(13, 'Saphhire and Ruby', 'Our latest Collaboration products Just for you', 'uploads/banner/aa35f9dbcf405414761e8a9f5183561e.png', NULL, NULL, NULL),
(14, '50% off', 'Christmas Sale is here !', 'uploads/banner/2661d509736004e7eb523bd823945f08.jpg', NULL, NULL, NULL);

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
(1, 'Tiffany 1837® Cuff', 'Proudly inscribed with the year Tiffany was founded, the Tiffany 1837® collection is defined by slee', '5df1c9711f3bd', '2019-12-12', NULL, NULL),
(2, 'Tiffany 1837® Makers', 'A simple yet bold design, this narrow cuff is made of solid 18k gold. Crafted with a makers symbol i', '5df1ca50cdf70', '2019-12-12', NULL, NULL),
(3, 'Tiffany Infinity Bra', 'Tiffany Infinity is a powerful symbol of continuous connection, energy and vitality. The addition of', '5df1c9bf0e7af', '2019-12-12', NULL, NULL),
(4, 'Tiffany T Square Bra', 'Graphic angles and clean lines blend to create the beautiful clarity of the Tiffany T collection. Th', '5df1c9e69a920', '2019-12-12', NULL, NULL),
(5, 'Tiffany T Tigers Eye', 'Graphic angles and clean lines blend to create the beautiful clarity of the Tiffany T collection. Th', '5df1ca1e1255a', '2019-12-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_company`
--

CREATE TABLE `tmtk_company` (
  `id_number` int(11) NOT NULL,
  `year` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `sStatusDelete` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_company`
--

INSERT INTO `tmtk_company` (`id_number`, `year`, `description`, `sStatusDelete`) VALUES
(0, NULL, 'okimjasd', NULL),
(1, '2019-12-23', 'yuyuyuyuyuyu', 'V'),
(2, '2019-12-02', 'tyttyty', 'V'),
(3, '2019-12-04', 'makan ', NULL),
(4, '2019-12-18', 'zxczxczxczxc', NULL),
(5, '2019-12-04', '4567567567567', 'V'),
(6, '2019-12-28', 'zxczxc', NULL),
(7, '2019-12-28', 'asdasdasdzxc', NULL),
(8, '2019-12-18', 'po', NULL);

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
(1, 'Large Snowman Earrin', 'A symbol of all that we treasure, this earring is the ultimate collectors piece. Cherish links are c', '5df1cb1de642b', '2019-12-12', NULL, NULL),
(2, 'Teardrop Earrings in', 'Playful enough for day, fancy enough for night, these teardrop earrings are irresistible. Two Lollip', '5df1ccad3821c', '2019-12-12', NULL, NULL),
(3, 'Small Earrings in 18', 'An expression of all that we treasure, the Cherish link in crafted in gold and covered in glimmering', '5df1ccd6994a5', '2019-12-12', NULL, NULL),
(4, '0.65ctw 18k Yellow G', 'Eternally brilliant, these Shared-Prong Diamond Hoop Earrings are the ultimate in style and class. W', '5df1cd12509d1', '2019-12-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_login`
--

CREATE TABLE `tmtk_login` (
  `id_user` varchar(5) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_login`
--

INSERT INTO `tmtk_login` (`id_user`, `user`, `password`) VALUES
('00000', 'admin', '21232f297a57a5a743894a0e4a801fc3');

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
(1, 'Medium O Pendant', 'Add a splash of sophisticated style and discover a whole new way of collecting, displaying and showi', '5df1c8510f160', '2019-12-12', NULL, NULL),
(2, 'Timeless Elegance', 'Captivate with this exquisite sterling silver halo necklace featuring a square-cut cubic zirconia ce', '5df1c88da1e64', '2019-12-12', NULL, NULL),
(3, 'Vintage Circle Colli', 'Enhance any neckline in a spectacular fashion with this striking geometric design in PANDORA Rose. T', '5df1c8cf55c6c', '2019-12-12', NULL, NULL),
(4, 'Sparkling Cross Pend', 'The classic emblem of faith is beautifully reimagined in this sterling silver version. The cross pen', '5df1c8ea5f10e', '2019-12-12', NULL, NULL);

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
('5df1c8510f160', 1, 'uploads/pendants/03019534afca62c38deb211a4b5f9d2a.jpg', '2019-12-12', NULL, NULL),
('5df1c8510f160', 2, 'uploads/pendants/f05bd546fc119cc4409522ec211c66ca.jpg', '2019-12-12', NULL, NULL),
('5df1c88da1e64', 3, 'uploads/pendants/89d451e7eca9a06fbfa91dc1e0ee1566.jpg', '2019-12-12', NULL, NULL),
('5df1c88da1e64', 4, 'uploads/pendants/7d694eda88758d2cd8c9ba081502545d.jpg', '2019-12-12', NULL, NULL),
('5df1c8cf55c6c', 5, 'uploads/pendants/64039f24bf58973082b9a777053045c5.jpg', '2019-12-12', NULL, NULL),
('5df1c8cf55c6c', 6, 'uploads/pendants/2a795cd8245f76cd7d2875e83337b84e.jpg', '2019-12-12', NULL, NULL),
('5df1c8ea5f10e', 7, 'uploads/pendants/73735736607a61deffaafdaf80fc5703.jpg', '2019-12-12', NULL, NULL),
('5df1c8ea5f10e', 8, 'uploads/pendants/4b104b65bda4bf996b8d1f81ce57c78b.jpg', '2019-12-12', NULL, NULL),
('5df1c9711f3bd', 9, 'uploads/bracelets/232d79b7284c8db70caf03dd39912b76.jpg', '2019-12-12', NULL, NULL),
('5df1c9711f3bd', 10, 'uploads/bracelets/1494e04ad65a644626a68cca0b726b7c.jpg', '2019-12-12', NULL, NULL),
('5df1c99f99028', 11, 'uploads/bracelets/f1ce0495475cd007ba3271f3fd96f94e.jpg', '2019-12-12', 'V', '2019-12-12'),
('5df1c99f99028', 12, 'uploads/bracelets/47f8fe15c8d59b4b105a59f61edef2c7.jpg', '2019-12-12', 'V', '2019-12-12'),
('5df1c99f99028', 13, 'uploads/bracelets/a538b4344176cf5dad11b4ab00969eca.jpg', '2019-12-12', 'V', '2019-12-12'),
('5df1c99f99028', 14, 'uploads/bracelets/7530870ba1e847d95dbf75964a175333.jpg', '2019-12-12', 'V', '2019-12-12'),
('5df1c99f99028', 15, 'uploads/bracelets/2e7a164014298e5277b77a04858805d4.jpg', '2019-12-12', 'V', '2019-12-12'),
('5df1c9bf0e7af', 16, 'uploads/bracelets/1c864c798b2e78ff43622d40cb94a69d.jpg', '2019-12-12', NULL, NULL),
('5df1c9bf0e7af', 17, 'uploads/bracelets/1611e9af2ea3dca939684b52f9c39894.jpg', '2019-12-12', NULL, NULL),
('5df1c9e69a920', 18, 'uploads/bracelets/a90cb08651e04cb8f7e5f929aa8eaab8.jpg', '2019-12-12', NULL, NULL),
('5df1c9e69a920', 19, 'uploads/bracelets/979d33e98735f36bb65289142c19eea8.jpg', '2019-12-12', NULL, NULL),
('5df1c9e69a920', 20, 'uploads/bracelets/8d599bae05c522074029ce090abe1f7b.jpg', '2019-12-12', NULL, NULL),
('5df1c9e69a920', 21, 'uploads/bracelets/466d739cdfd78e8211bbff7641dc21b8.jpg', '2019-12-12', NULL, NULL),
('5df1ca1e1255a', 22, 'uploads/bracelets/521e918c48040c77c36ea35bcdbc78c2.jpg', '2019-12-12', NULL, NULL),
('5df1ca1e1255a', 23, 'uploads/bracelets/c8acf157dc7f622cc11caaf2b47687c4.jpg', '2019-12-12', NULL, NULL),
('5df1ca1e1255a', 24, 'uploads/bracelets/16d634eebf254138108f52d787b892a2.jpg', '2019-12-12', NULL, NULL),
('5df1ca1e1255a', 25, 'uploads/bracelets/61571368df718813852d60d01b06713d.jpg', '2019-12-12', NULL, NULL),
('5df1ca50cdf70', 26, 'uploads/bracelets/32641bcc63fb129951dfcd08193ca50d.jpg', '2019-12-12', NULL, NULL),
('5df1ca50cdf70', 27, 'uploads/bracelets/54fb8369a90ae4a91db4af2035bbae1a.jpg', '2019-12-12', NULL, NULL),
('5df1ca50cdf70', 28, 'uploads/bracelets/75ec04c89ab4c25945b8eca35e2c739c.jpg', '2019-12-12', NULL, NULL),
('5df1ca50cdf70', 29, 'uploads/bracelets/0e3c0b1ad5b89cf883dfde431b76d811.jpg', '2019-12-12', NULL, NULL),
('5df1ca50cdf70', 30, 'uploads/bracelets/e2c80f3d6a289bbdfe4634040f01627f.jpg', '2019-12-12', NULL, NULL),
('5df1cb1de642b', 31, 'uploads/earrings/8bf74347653fe4be63f06b537fd897b8.jpg', '2019-12-12', NULL, NULL),
('5df1cb1de642b', 32, 'uploads/earrings/b254ecda28ee47e3e558dba2c2386a2c.jpg', '2019-12-12', NULL, NULL),
('5df1cb62e5c11', 33, 'uploads/rings/2f539005cb65d0907c2f3334ea7dda3f.jpg', '2019-12-12', NULL, NULL),
('5df1cb62e5c11', 34, 'uploads/rings/ab1e86986d673fc870d37eb5b12e9046.jpg', '2019-12-12', NULL, NULL),
('5df1cb62e5c11', 35, 'uploads/rings/4d3cff473b88a59bc163571784e1cd57.jpg', '2019-12-12', NULL, NULL),
('5df1cb62e5c11', 36, 'uploads/rings/2b9849aaad09dff726ad46d70cdd25ba.jpg', '2019-12-12', NULL, NULL),
('5df1cb62e5c11', 37, 'uploads/rings/d9e0f12e465f2035baaacecbfa353e4c.jpg', '2019-12-12', NULL, NULL),
('5df1cc704942c', 38, 'uploads/rings/bd8d56090d717b8771a1b3f74d647f5c.jpg', '2019-12-12', NULL, NULL),
('5df1cc704942c', 39, 'uploads/rings/ec6e5069b02f9d7b9496818eb34c7e39.jpg', '2019-12-12', NULL, NULL),
('5df1cc704942c', 40, 'uploads/rings/bfd5612be97d9322d49638f9017afd5a.jpg', '2019-12-12', NULL, NULL),
('5df1cc704942c', 41, 'uploads/rings/2bab37f8351063dd288bc64ee3386fe9.jpg', '2019-12-12', NULL, NULL),
('5df1ccad3821c', 42, 'uploads/earrings/ba7dc21c01271e00b0fc270a04e90fed.jpg', '2019-12-12', NULL, NULL),
('5df1ccad3821c', 43, 'uploads/earrings/119ef2029acd23b67ac6710c12a4f020.jpg', '2019-12-12', NULL, NULL),
('5df1ccd6994a5', 44, 'uploads/earrings/3eea7b3339c544826393ad11ea11ed83.jpg', '2019-12-12', NULL, NULL),
('5df1ccd6994a5', 45, 'uploads/earrings/eb17d4c43ba5986e7d52b52a5fa1154b.jpg', '2019-12-12', NULL, NULL),
('5df1cd12509d1', 46, 'uploads/earrings/ddbb125ee522e8682aa8526c3eae187b.jpg', '2019-12-12', NULL, NULL),
('5df1cd12509d1', 47, 'uploads/earrings/0fd856d840498c0053769b57706bdb31.jpg', '2019-12-12', NULL, NULL),
('5df1cd12509d1', 48, 'uploads/earrings/9af6e73e304782c99d68a236d68c4054.jpg', '2019-12-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_ring`
--

CREATE TABLE `tmtk_ring` (
  `IdProduct` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `UploadFk` varchar(100) NOT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(10) DEFAULT NULL,
  `dDeletedOn` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tmtk_ring`
--

INSERT INTO `tmtk_ring` (`IdProduct`, `Name`, `Description`, `UploadFk`, `dCreateOn`, `sStatusDelete`, `dDeletedOn`) VALUES
(1, 'Classic Round Cut St', 'Classic, elegant and symbolic of your everlasting love, this ring will win her heart. It showcases a', '5df1cb62e5c11', '2019-12-12', NULL, NULL),
(2, 'Halo Heart Cut Sterl', 'Make the moment you ask for her hand that much more magical with this exquisite bridal set. Expertly', '5df1cc704942c', '2019-12-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmtk_tag`
--

CREATE TABLE `tmtk_tag` (
  `IdTag` int(11) NOT NULL,
  `IdProduct_fk` int(11) DEFAULT NULL,
  `IdAttribute_fk` int(11) DEFAULT NULL,
  `ProductCategory` int(11) DEFAULT NULL,
  `dCreateOn` date DEFAULT NULL,
  `sStatusDelete` varchar(50) DEFAULT NULL,
  `dDeleteOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmtk_tag`
--

INSERT INTO `tmtk_tag` (`IdTag`, `IdProduct_fk`, `IdAttribute_fk`, `ProductCategory`, `dCreateOn`, `sStatusDelete`, `dDeleteOn`) VALUES
(1, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(2, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(3, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(4, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(5, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(6, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(7, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(8, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(9, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(10, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(11, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(12, 1, 2, 1, '2019-12-11', 'V', '2019-12-11'),
(13, 2, 5, 1, '2019-12-11', 'V', '2019-12-12'),
(14, 2, 6, 1, '2019-12-11', 'V', '2019-12-12'),
(15, 2, 4, 1, '2019-12-11', 'V', '2019-12-12'),
(16, 2, 5, 1, '2019-12-11', 'V', '2019-12-12'),
(17, 3, 4, 1, '2019-12-11', NULL, NULL),
(18, 3, 5, 1, '2019-12-11', NULL, NULL),
(19, 2, 5, 1, '2019-12-11', 'V', '2019-12-12'),
(20, 2, 6, 1, '2019-12-11', 'V', '2019-12-12'),
(21, 2, 5, 1, '2019-12-11', 'V', '2019-12-12'),
(22, 2, 6, 1, '2019-12-11', 'V', '2019-12-12'),
(23, 3, 5, 1, '2019-12-11', NULL, NULL),
(24, 3, 6, 1, '2019-12-11', NULL, NULL),
(25, 4, 6, 1, '2019-12-11', NULL, NULL),
(26, 5, 6, 1, '2019-12-11', 'V', '2019-12-11'),
(27, 6, 6, 1, '2019-12-11', 'V', '2019-12-11'),
(28, 7, 6, 1, '2019-12-11', 'V', '2019-12-11'),
(29, 8, 6, 1, '2019-12-11', NULL, NULL),
(30, 9, 6, 1, '2019-12-11', NULL, NULL),
(31, 10, 6, 1, '2019-12-11', 'V', '2019-12-12'),
(32, 11, 6, 1, '2019-12-11', NULL, NULL),
(33, 12, 6, 1, '2019-12-11', NULL, NULL),
(34, 13, 6, 1, '2019-12-11', NULL, NULL),
(35, 14, 6, 1, '2019-12-11', NULL, NULL),
(36, 15, 6, 1, '2019-12-11', NULL, NULL),
(37, 16, 6, 1, '2019-12-11', NULL, NULL),
(38, 17, 6, 1, '2019-12-11', NULL, NULL),
(39, 18, 5, 1, '2019-12-11', NULL, NULL),
(40, 18, 6, 1, '2019-12-11', NULL, NULL),
(41, 19, 5, 1, '2019-12-11', NULL, NULL),
(42, 19, 6, 1, '2019-12-11', NULL, NULL),
(43, 20, 6, 1, '2019-12-11', NULL, NULL),
(52, 10, 4, 2, '2019-12-11', 'V', '2019-12-12'),
(53, 10, 4, 2, '2019-12-11', 'V', '2019-12-12'),
(54, 5, 5, 3, '2019-12-11', 'V', '2019-12-11'),
(55, 5, 6, 3, '2019-12-11', 'V', '2019-12-11'),
(56, 5, 5, 3, '2019-12-11', NULL, NULL),
(57, 3, 5, 4, '2019-12-11', NULL, NULL),
(58, 3, 6, 4, '2019-12-11', NULL, NULL),
(59, 3, 5, 4, '2019-12-11', NULL, NULL),
(60, 3, 6, 4, '2019-12-11', NULL, NULL),
(61, 4, 6, 4, '2019-12-11', NULL, NULL),
(62, 5, 4, 4, '2019-12-11', NULL, NULL),
(63, 5, 6, 4, '2019-12-11', NULL, NULL),
(64, 6, 5, 4, '2019-12-11', 'V', '2019-12-11'),
(65, 6, 6, 4, '2019-12-11', 'V', '2019-12-11'),
(66, 6, 5, 4, '2019-12-11', 'V', '2019-12-11'),
(67, 7, 5, 4, '2019-12-11', 'V', '2019-12-11'),
(68, 7, 6, 4, '2019-12-11', 'V', '2019-12-11'),
(69, 7, 6, 4, '2019-12-11', 'V', '2019-12-11'),
(70, 7, 5, 4, '2019-12-11', NULL, NULL),
(71, 7, 6, 4, '2019-12-11', NULL, NULL),
(72, 1, 1, 1, '2019-12-11', 'V', '2019-12-11'),
(73, 1, 1, 1, '2019-12-11', NULL, NULL),
(74, 21, 4, 1, '2019-12-11', NULL, NULL),
(75, 10, 4, 2, '2019-12-11', 'V', '2019-12-12'),
(76, 10, 6, 2, '2019-12-11', 'V', '2019-12-12'),
(77, 11, 5, 2, '2019-12-11', NULL, NULL),
(78, 6, 4, 3, '2019-12-11', 'V', '2019-12-11'),
(79, 8, 5, 4, '2019-12-11', NULL, NULL),
(80, 8, 6, 4, '2019-12-11', NULL, NULL),
(81, 8, 7, 4, '2019-12-11', NULL, NULL),
(82, 10, 3, 2, '2019-12-12', NULL, NULL),
(83, 1, 4, 3, '2019-12-12', NULL, NULL),
(84, 1, 6, 3, '2019-12-12', NULL, NULL),
(85, 2, 4, 3, '2019-12-12', 'V', '2019-12-12'),
(86, 2, 6, 3, '2019-12-12', 'V', '2019-12-12'),
(87, 3, 1, 3, '2019-12-12', NULL, NULL),
(88, 3, 4, 3, '2019-12-12', NULL, NULL),
(89, 4, 2, 3, '2019-12-12', NULL, NULL),
(90, 4, 4, 3, '2019-12-12', NULL, NULL),
(91, 1, 4, 1, '2019-12-12', NULL, NULL),
(92, 1, 6, 1, '2019-12-12', NULL, NULL),
(93, 2, 1, 1, '2019-12-12', 'V', '2019-12-12'),
(94, 2, 4, 1, '2019-12-12', 'V', '2019-12-12'),
(95, 3, 2, 1, '2019-12-12', NULL, NULL),
(96, 3, 4, 1, '2019-12-12', NULL, NULL),
(97, 4, 1, 1, '2019-12-12', NULL, NULL),
(98, 4, 4, 1, '2019-12-12', NULL, NULL),
(99, 5, 1, 1, '2019-12-12', NULL, NULL),
(100, 5, 4, 1, '2019-12-12', NULL, NULL),
(101, 2, 1, 1, '2019-12-12', NULL, NULL),
(102, 2, 5, 1, '2019-12-12', NULL, NULL),
(103, 1, 1, 2, '2019-12-12', NULL, NULL),
(104, 1, 4, 2, '2019-12-12', NULL, NULL),
(105, 1, 4, 4, '2019-12-12', NULL, NULL),
(106, 1, 6, 4, '2019-12-12', NULL, NULL),
(107, 2, 4, 4, '2019-12-12', NULL, NULL),
(108, 2, 6, 4, '2019-12-12', NULL, NULL),
(109, 2, 1, 2, '2019-12-12', NULL, NULL),
(110, 2, 3, 2, '2019-12-12', NULL, NULL),
(111, 2, 4, 2, '2019-12-12', NULL, NULL),
(112, 3, 1, 2, '2019-12-12', NULL, NULL),
(113, 3, 3, 2, '2019-12-12', NULL, NULL),
(114, 3, 4, 2, '2019-12-12', NULL, NULL),
(115, 4, 1, 2, '2019-12-12', NULL, NULL),
(116, 4, 3, 2, '2019-12-12', NULL, NULL),
(117, 4, 4, 2, '2019-12-12', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tmtk_attribute`
--
ALTER TABLE `tmtk_attribute`
  ADD PRIMARY KEY (`IdAttribute`);

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
-- Indexes for table `tmtk_company`
--
ALTER TABLE `tmtk_company`
  ADD PRIMARY KEY (`id_number`);

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

--
-- Indexes for table `tmtk_tag`
--
ALTER TABLE `tmtk_tag`
  ADD PRIMARY KEY (`IdTag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
