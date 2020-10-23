-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pml_database
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
-- Table structure for table `commisionrecord`
--

DROP TABLE IF EXISTS `commisionrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commisionrecord` (
  `TransactionId` int NOT NULL,
  `CompanyCode` varchar(45) NOT NULL,
  `StockPrice` float NOT NULL,
  `CommoditiesPrice` float NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  `CommisionAmount` varchar(45) NOT NULL,
  PRIMARY KEY (`TransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodity` (
  `CommodityID` int NOT NULL,
  `CommodityName` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `Price` float NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  PRIMARY KEY (`CommodityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `TurnOver` varchar(45) NOT NULL,
  `Data_Time_IPO` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyCode`),
  UNIQUE KEY `CompanyTitle_UNIQUE` (`CompanyTitle`),
  UNIQUE KEY `CompanyCode_UNIQUE` (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `investorsharedetails`
--

DROP TABLE IF EXISTS `investorsharedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investorsharedetails` (
  `ShareTransactionId` int NOT NULL,
  `InvestorId` int NOT NULL,
  `CompanyCode` int NOT NULL,
  `CurrentPrice` float NOT NULL,
  `Commodities` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  PRIMARY KEY (`ShareTransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recentviewed`
--

DROP TABLE IF EXISTS `recentviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recentviewed` (
  `CompanyCode` int NOT NULL,
  `InvestorId` int NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sharetransactions`
--

DROP TABLE IF EXISTS `sharetransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sharetransactions` (
  `ShareTransactionId` int NOT NULL,
  `InvestorId` int NOT NULL,
  `TransType` varchar(45) NOT NULL,
  `TransShareCount` int NOT NULL,
  `CompanyId` varchar(45) NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  `TransactionAmount` float NOT NULL,
  PRIMARY KEY (`ShareTransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stockprices`
--

DROP TABLE IF EXISTS `stockprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockprices` (
  `CompanyCode` int NOT NULL,
  `CurrentPrice` float NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  `StockExchange` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Login_Key` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `MobileNumber` int NOT NULL,
  `PanID` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `EmailId` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  PRIMARY KEY (`Login_Key`),
  UNIQUE KEY `PanID_UNIQUE` (`PanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userwallet`
--

DROP TABLE IF EXISTS `userwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userwallet` (
  `TransactionID` int NOT NULL,
  `InvestorId` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `Date/Time` varchar(45) NOT NULL,
  `DepositedAmount` float NOT NULL,
  `ShareTransactionId` int NOT NULL,
  `Balance` float NOT NULL,
  `WithDrawAmount` float NOT NULL,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23  1:01:43
