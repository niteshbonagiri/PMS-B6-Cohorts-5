-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pml_db
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backofficeuser`
--

DROP TABLE IF EXISTS `backofficeuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backofficeuser` (
  `LoginId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`LoginId`),
  UNIQUE KEY `LoginId_UNIQUE` (`LoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backofficeuser`
--

LOCK TABLES `backofficeuser` WRITE;
/*!40000 ALTER TABLE `backofficeuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `backofficeuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodities`
--

DROP TABLE IF EXISTS `commodities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodities` (
  `CommodityID` int NOT NULL AUTO_INCREMENT,
  `CommodityName` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `Price` float NOT NULL,
  `DateTime` datetime NOT NULL,
  `BackOfficeUser_LoginId` int NOT NULL,
  PRIMARY KEY (`CommodityID`,`BackOfficeUser_LoginId`),
  KEY `fk_Commodities_BackOfficeUser1_idx` (`BackOfficeUser_LoginId`),
  CONSTRAINT `fk_Commodities_BackOfficeUser1` FOREIGN KEY (`BackOfficeUser_LoginId`) REFERENCES `backofficeuser` (`LoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodities`
--

LOCK TABLES `commodities` WRITE;
/*!40000 ALTER TABLE `commodities` DISABLE KEYS */;
/*!40000 ALTER TABLE `commodities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `CompanyCode` int NOT NULL,
  `CompanyTitle` varchar(45) NOT NULL,
  `Operation` varchar(45) NOT NULL,
  `ShareCount` int NOT NULL,
  `SharePrice` float NOT NULL,
  `Sector` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `TurnOver` float NOT NULL,
  `DateTime_IPO` datetime NOT NULL,
  `StockPrices_CompanyCode` int NOT NULL,
  `BackOfficeUser_LoginId` int NOT NULL,
  PRIMARY KEY (`CompanyCode`,`StockPrices_CompanyCode`,`BackOfficeUser_LoginId`),
  KEY `fk_Company_StockPrices1_idx` (`StockPrices_CompanyCode`),
  KEY `fk_Company_BackOfficeUser1_idx` (`BackOfficeUser_LoginId`),
  CONSTRAINT `fk_Company_BackOfficeUser1` FOREIGN KEY (`BackOfficeUser_LoginId`) REFERENCES `backofficeuser` (`LoginId`),
  CONSTRAINT `fk_Company_StockPrices1` FOREIGN KEY (`StockPrices_CompanyCode`) REFERENCES `stockprices` (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historicalrecordcommodity`
--

DROP TABLE IF EXISTS `historicalrecordcommodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historicalrecordcommodity` (
  `CommodityID` int NOT NULL,
  `CommodityPrice` float NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`CommodityID`),
  CONSTRAINT `fk_HistoricalRecordCommodity_Commodities1` FOREIGN KEY (`CommodityID`) REFERENCES `commodities` (`CommodityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historicalrecordcommodity`
--

LOCK TABLES `historicalrecordcommodity` WRITE;
/*!40000 ALTER TABLE `historicalrecordcommodity` DISABLE KEYS */;
/*!40000 ALTER TABLE `historicalrecordcommodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historicalrecordcompany`
--

DROP TABLE IF EXISTS `historicalrecordcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historicalrecordcompany` (
  `CompanyCode` int NOT NULL,
  `StockPrice` float NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`CompanyCode`),
  CONSTRAINT `fk_HistoricalRecordCompany_Company1` FOREIGN KEY (`CompanyCode`) REFERENCES `company` (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historicalrecordcompany`
--

LOCK TABLES `historicalrecordcompany` WRITE;
/*!40000 ALTER TABLE `historicalrecordcompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `historicalrecordcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investorsharedetails`
--

DROP TABLE IF EXISTS `investorsharedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investorsharedetails` (
  `ShareTransactionID` int NOT NULL,
  `CompanyCode` int NOT NULL,
  `CurrentPrice` float NOT NULL,
  `CommodityID` int NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `InvestorID` int NOT NULL,
  PRIMARY KEY (`ShareTransactionID`),
  KEY `fk_InvestorShareDetails_User1_idx` (`InvestorID`),
  KEY `fk_InvestorShareDetails_Company1_idx` (`CompanyCode`),
  CONSTRAINT `fk_InvestorShareDetails_Company1` FOREIGN KEY (`CompanyCode`) REFERENCES `company` (`CompanyCode`),
  CONSTRAINT `fk_InvestorShareDetails_ShareTransacction1` FOREIGN KEY (`ShareTransactionID`) REFERENCES `sharetransacction` (`ShareTransactionID`),
  CONSTRAINT `fk_InvestorShareDetails_User1` FOREIGN KEY (`InvestorID`) REFERENCES `user` (`InvestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investorsharedetails`
--

LOCK TABLES `investorsharedetails` WRITE;
/*!40000 ALTER TABLE `investorsharedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `investorsharedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentlyviewedcompanies`
--

DROP TABLE IF EXISTS `recentlyviewedcompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recentlyviewedcompanies` (
  `InvestorID` int NOT NULL AUTO_INCREMENT,
  `CompanyCode` int NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`InvestorID`),
  UNIQUE KEY `CompanyCode_UNIQUE` (`CompanyCode`),
  CONSTRAINT `fk_RecentlyViewedCompanies_Company1` FOREIGN KEY (`CompanyCode`) REFERENCES `company` (`CompanyCode`),
  CONSTRAINT `fk_RecentlyViewedCompanies_User1` FOREIGN KEY (`InvestorID`) REFERENCES `user` (`InvestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentlyviewedcompanies`
--

LOCK TABLES `recentlyviewedcompanies` WRITE;
/*!40000 ALTER TABLE `recentlyviewedcompanies` DISABLE KEYS */;
/*!40000 ALTER TABLE `recentlyviewedcompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharetransacction`
--

DROP TABLE IF EXISTS `sharetransacction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sharetransacction` (
  `ShareTransactionID` int NOT NULL AUTO_INCREMENT,
  `TransactionType` varchar(45) NOT NULL,
  `TransactionShareCount` int NOT NULL,
  `DateTime` datetime NOT NULL,
  `TransactionAmount` float NOT NULL,
  `Commission` float NOT NULL,
  PRIMARY KEY (`ShareTransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharetransacction`
--

LOCK TABLES `sharetransacction` WRITE;
/*!40000 ALTER TABLE `sharetransacction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharetransacction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockprices`
--

DROP TABLE IF EXISTS `stockprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockprices` (
  `CompanyCode` int NOT NULL,
  `CurrentPrice` float NOT NULL,
  `DateTime` datetime NOT NULL,
  `StockExchange` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockprices`
--

LOCK TABLES `stockprices` WRITE;
/*!40000 ALTER TABLE `stockprices` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockprices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superuser`
--

DROP TABLE IF EXISTS `superuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superuser` (
  `SuperUserID` int NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`SuperUserID`),
  UNIQUE KEY `SuperUserID_UNIQUE` (`SuperUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superuser`
--

LOCK TABLES `superuser` WRITE;
/*!40000 ALTER TABLE `superuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `superuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `InvestorID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `MobileNumber` int NOT NULL,
  `PanID` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `EmailID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`InvestorID`),
  UNIQUE KEY `EmailID_UNIQUE` (`EmailID`),
  UNIQUE KEY `PanID_UNIQUE` (`PanID`),
  UNIQUE KEY `MobileNumber_UNIQUE` (`MobileNumber`),
  UNIQUE KEY `InvestorID_UNIQUE` (`InvestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userwallet`
--

DROP TABLE IF EXISTS `userwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userwallet` (
  `UserWalletTransactionID` int NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `DateTime` datetime NOT NULL,
  `TransactionType` varchar(45) NOT NULL,
  `Amount` float NOT NULL,
  `ShareTransactionID` int NOT NULL,
  `Balance` float NOT NULL,
  `InvestorID` int NOT NULL,
  PRIMARY KEY (`UserWalletTransactionID`),
  KEY `fk_UserWallet_User1_idx` (`InvestorID`),
  KEY `fk_UserWallet_ShareTransacction1_idx` (`ShareTransactionID`),
  CONSTRAINT `fk_UserWallet_ShareTransacction1` FOREIGN KEY (`ShareTransactionID`) REFERENCES `sharetransacction` (`ShareTransactionID`),
  CONSTRAINT `fk_UserWallet_User1` FOREIGN KEY (`InvestorID`) REFERENCES `user` (`InvestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userwallet`
--

LOCK TABLES `userwallet` WRITE;
/*!40000 ALTER TABLE `userwallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `userwallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pml_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-30 18:10:03
