-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: medical_system_db
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logins` (
  `id` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userpwd` varchar(50) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `usergroup` varchar(25) NOT NULL,
  `accesslevel` varchar(25) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `projectname` varchar(50) NOT NULL,
  `patient_account` varchar(50) DEFAULT NULL,
  `patient_name` varchar(75) NOT NULL,
  `encounter_no` varchar(25) NOT NULL,
  `date_of_service` timestamp NOT NULL,
  `total_charges` decimal(9,3) DEFAULT '0.000',
  `encounter_balance` decimal(9,3) NOT NULL,
  `payer_name` varchar(25) NOT NULL,
  `comments` varchar(1000) NOT NULL,
  `status_code` varchar(25) NOT NULL,
  `action_code` varchar(25) NOT NULL,
  `production_date` timestamp NOT NULL,
  `worked_by` varchar(75) NOT NULL,
  `resolutiontype` varchar(25) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`projectname`),
  UNIQUE KEY `encounter_no` (`encounter_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
