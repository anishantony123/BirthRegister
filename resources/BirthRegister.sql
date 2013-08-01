-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.32 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4475
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for hospital2
DROP DATABASE IF EXISTS `hospital2`;
CREATE DATABASE IF NOT EXISTS `hospital2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hospital2`;


-- Dumping structure for table hospital2.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hospital2.admin: ~1 rows (approximately)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table hospital2.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `reg_no` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address_1` varchar(1000) DEFAULT NULL,
  `address_2` varchar(1000) DEFAULT NULL,
  `pincode` varchar(1000) DEFAULT NULL,
  `district` varchar(500) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `diaganosis` varchar(500) DEFAULT NULL,
  `center` varchar(500) DEFAULT NULL,
  `active_YN` char(1) NOT NULL DEFAULT 'A',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `care_off` varchar(500) DEFAULT NULL,
  `informer` varchar(500) DEFAULT NULL,
  `husband` varchar(300) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_fk` (`created_by`),
  KEY `modified_fk` (`modified_by`),
  CONSTRAINT `created_fk` FOREIGN KEY (`created_by`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `modified_fk` FOREIGN KEY (`modified_by`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hospital2.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `reg_no`, `dob`, `company`, `address_1`, `address_2`, `pincode`, `district`, `state`, `year`, `diaganosis`, `center`, `active_YN`, `created_by`, `modified_by`, `created_date`, `modified_date`, `sex`, `age`, `care_off`, `informer`, `husband`, `city`) VALUES
	(1, 'd', NULL, '2013-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', 1, NULL, '2013-08-01 01:26:04', NULL, NULL, 0, NULL, NULL, 'd', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table hospital2.user_data
DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL DEFAULT '-1',
  `DATAFILE_NAME` varchar(45) DEFAULT NULL,
  `DATAFILE_CONTENT` longblob,
  `SEQUENCE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `users_fk` (`USER_ID`),
  CONSTRAINT `users_fk` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hospital2.user_data: ~0 rows (approximately)
DELETE FROM `user_data`;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
