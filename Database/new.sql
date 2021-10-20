-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: smd
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Temporary view structure for view `bestattend`
--

DROP TABLE IF EXISTS `bestattend`;
/*!50001 DROP VIEW IF EXISTS `bestattend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bestattend` AS SELECT 
 1 AS `Emp_ID`,
 1 AS `Employee_Type`,
 1 AS `First_Name`,
 1 AS `Hours_Worked`,
 1 AS `Work_Hours(PerMonth)`,
 1 AS `OT_Hours`,
 1 AS `Month`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bestcustomers`
--

DROP TABLE IF EXISTS `bestcustomers`;
/*!50001 DROP VIEW IF EXISTS `bestcustomers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bestcustomers` AS SELECT 
 1 AS `Cust_ID`,
 1 AS `Hardware_Name`,
 1 AS `Phone`,
 1 AS `Address`,
 1 AS `Month`,
 1 AS `Total_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Cus_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Hardware_Name` varchar(45) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `NIC` varchar(13) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Cus_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Geethmaka','Dissanayake','Mulgampola Hardware','94710891056','39bb37cf36d3b29a9280d8a70a0eed42','200102201108','geethmaka@gmail.com','kandy, kandy','Active','2021/01/01'),(2,'thameera','Perera','thameera Hardware','94774563234','17deb30f42bf78261e64323762a0044d','199829601556','sithnuwan111@gmail.com','Kandy, Kandy, centrel','Active','2021/10/03'),(3,'Madhumini','Gunaratne','Mad hardware','94767780098','05f83489d55487347cc207ae3bce0f94','200150600293','maddiegunaratne@gmail.com','Kandy, Kandy, Central','Active','2021/10/03'),(4,'Ajantha','Dissanayake','Ajantha Hardware','94712345678','39bb37cf36d3b29a9280d8a70a0eed42','200017345423','smdnipun4@gmail.com','Mawanella, Kegalle, SG','Active','2021/10/03'),(5,'Madhumini','Gunaratne','Madda hardware','94767780098','05f83489d55487347cc207ae3bce0f94','200150600291','madhuminipgunaratne@gmail.com','Kandy, Kandy, Central','Active','2021/10/03'),(6,'Pamuditha','Kekulandara','pamuditha Hardware','94761113244','39bb37cf36d3b29a9280d8a70a0eed42','123456789','pkekulandera@gmail.com','3C,Kahatapitiya, Gampola, central','Active','2021/10/03'),(7,'Poorna','Ranasinghe','Poorna lk','94768817655','50a0203be802b65afeae3cb5d4222fbe','199823417264','poornaranasinghe55@gmail.com','Kandy, kandy, central','Active','2021/10/04');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customeraged`
--

DROP TABLE IF EXISTS `customeraged`;
/*!50001 DROP VIEW IF EXISTS `customeraged`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customeraged` AS SELECT 
 1 AS `Cus_ID`,
 1 AS `Hardware_Name`,
 1 AS `Order_ID`,
 1 AS `Total_Price`,
 1 AS `Paid_Amount`,
 1 AS `Remaining_Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `deleteddelivery`
--

DROP TABLE IF EXISTS `deleteddelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleteddelivery` (
  `DeliveryID` int NOT NULL AUTO_INCREMENT,
  `Route` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `OrderID` int DEFAULT NULL,
  `CusID` int DEFAULT NULL,
  `Vehicle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `odrID_idx` (`OrderID`),
  KEY `Vehicle_idx` (`Vehicle`),
  KEY `cusID_idx` (`CusID`),
  CONSTRAINT `cusID` FOREIGN KEY (`CusID`) REFERENCES `customer` (`Cus_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `odrID` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Vehicle` FOREIGN KEY (`Vehicle`) REFERENCES `vehicle` (`Vehicle_Num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleteddelivery`
--

LOCK TABLES `deleteddelivery` WRITE;
/*!40000 ALTER TABLE `deleteddelivery` DISABLE KEYS */;
INSERT INTO `deleteddelivery` VALUES (3,'Peradenya,Kandy','2021-10-07','Release',11,4,'40-1150'),(6,'Mawanalla','2021-10-27','delivered',13,4,'NC-2025');
/*!40000 ALTER TABLE `deleteddelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleteorders`
--

DROP TABLE IF EXISTS `deleteorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleteorders` (
  `oid` int NOT NULL,
  `cid` int DEFAULT NULL,
  `odate` varchar(45) DEFAULT NULL,
  `ostates` varchar(45) DEFAULT NULL,
  `tprice` double DEFAULT NULL,
  `pamount` double DEFAULT NULL,
  `ramount` double DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleteorders`
--

LOCK TABLES `deleteorders` WRITE;
/*!40000 ALTER TABLE `deleteorders` DISABLE KEYS */;
INSERT INTO `deleteorders` VALUES (1,1,'2021-09-13','delivered',9700,310400,-300700,10,1),(2,1,'2021-09-13','delivered',48400,0,48400,50,2),(3,1,'2021-09-13','pending',15075,0,15075,15,3),(4,1,'2021-09-13','Accepted',1000,0,1000,1,1),(9,2,'2021-10-03','Accepted',58080,0,58080,60,2),(10,1,'2021-10-03','pending',96800,0,96800,100,2),(12,4,'2021-10-03','delivered',60000,0,60000,100,8),(14,2,'2021-10-03','pending',36000,0,36000,60,8),(15,2,'2021-10-03','pending',30000,0,30000,50,8),(16,2,'2021-10-03','pending',5500,0,3300,100,14),(21,6,'2021-10-03','Accepted',96000,0,96000,100,2),(22,6,'2021-10-03','pending',120000,0,120000,200,8),(23,1,'2021-10-04','pending',60000,0,60000,100,8),(24,1,'2021-10-04','pending',50250,0,50250,50,3),(25,6,'2021-10-04','pending',240000,0,240000,250,2),(26,6,'2021-10-04','Accepted',64000,2500,61500,50,15),(27,2,'2021-10-04','pending',76800,0,76800,60,15),(28,2,'2021-10-04','Paid',4200,4200,0,7,8),(29,2,'2021-10-04','pending',98000,0,98000,100,9),(30,4,'2021-10-04','Accepted',128000,10000,118000,100,15),(31,2,'2021-10-04','pending',100500,0,100500,100,3);
/*!40000 ALTER TABLE `deleteorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `Delivery_ID` int NOT NULL AUTO_INCREMENT,
  `Route` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Order_ID` int NOT NULL,
  `Cus_ID` int NOT NULL,
  `Vehicle_Num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Delivery_ID`),
  KEY `OID_idx` (`Order_ID`,`Cus_ID`),
  CONSTRAINT `OCID` FOREIGN KEY (`Order_ID`, `Cus_ID`) REFERENCES `orders` (`Order_ID`, `Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (4,'Wattegama,Kandy','2021-10-10','NotDelivered',11,4,'40-1150'),(7,'Pallekale,Diagana','2021-10-03','delivered',8,2,'NA-0122'),(9,'Knady','2021-10-05','delivered',17,6,'NC-2025');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `NIC` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Emp_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Employee_Type_idx` (`Emp_Type`),
  CONSTRAINT `Employee_Type` FOREIGN KEY (`Emp_Type`) REFERENCES `employee_type` (`Emp_Type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Nipun','Senarath','765060600','cusman','c84258e9c39059a89ab77d846ddab909','199854720542','cusman@gmail.com','22/5,kandy rd,kagalle','cusManager'),(2,'Poorna','Ranasinghe','765060601','empman','c84258e9c39059a89ab77d846ddab909','199854720543','empman@gmail.com','150/5/kandy','empManager'),(3,'Thameera','Fernando','765060602','oderman','32cacb2f994f6b42183a1300d9a3e8d6','199854720544','oderman@gmail.com','80/B,Gampola','oderManager'),(4,'Pamuditha','Kakulandara','765060603','cpayman','fc1ebc848e31e0a68e868432225e3c82','199854720545','cpayman@gmail.com','50/72,Gampola','cpayManager'),(5,'Geethmaka','Dissanayake','765060604','proman','26a91342190d515231d7238b0c5438e1','199854720546','proman@gmail.com','100/B,Kandy','proManager'),(6,'Hirosha','Samarasekara','765060605','stokman','c6b853d6a7cc7ec49172937f68f446c8','199854720547','stokman@gmail.com','65/5,Lewalla','stokManager'),(7,'Dilupa','Girambe','765060606','delman','788073cefde4b240873e1f52f5371d7d','199854720548','delman@gmail.com','70/5,Wattegama','delManager'),(8,'Maddhumini','Gunaratne','765060607','reqman','8762eb814817cc8dcbb3fb5c5fcd52e0','199854720549','reqman@gmail.com','138/5,Gelioya','reqManager'),(9,'hasini','kavindya','712030456',NULL,NULL,'199854720550','hasini@gmail.com','haisn,kandyy','cashCollector'),(10,'kamal','Marasinghe','703245678','','','199854720551','kamalkandy@gmail.com','100/5,Kandy','driver'),(11,'Kasun','Perera','0764534762','null','null','199854720552','kasunlk@gmail.com','70/B,Mathle','labor'),(12,'Ravidu','kamlsinghe','0788636356','null','null','199854720553','ravidul@gmail.com','70/4,Kandy','cashCollector');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salattend`
--

DROP TABLE IF EXISTS `employee_salattend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_salattend` (
  `Emp_ID` int NOT NULL,
  `Hours_Worked` int DEFAULT NULL,
  `Month` varchar(20) NOT NULL,
  `Total_Salary` double DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`,`Month`),
  CONSTRAINT `empfr_ID` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salattend`
--

LOCK TABLES `employee_salattend` WRITE;
/*!40000 ALTER TABLE `employee_salattend` DISABLE KEYS */;
INSERT INTO `employee_salattend` VALUES (10,200,'2021-10-03',28000),(10,200,'2021-10-04',28000),(12,210,'2021-10-04',37500);
/*!40000 ALTER TABLE `employee_salattend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type` (
  `Emp_Type` varchar(30) NOT NULL,
  `Basic_Salary` double NOT NULL,
  `Hours` int NOT NULL,
  `OT_Rate` double DEFAULT NULL,
  PRIMARY KEY (`Emp_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES ('cashCollector',30000,180,250),('cpayManager',35000,180,300),('cusManager',35000,180,300),('delManager',35000,180,300),('driver',25000,180,150),('empManager',35000,180,300),('labor',15000,150,150),('oderManager',35000,180,300),('proManager',35000,180,300),('reqManager',35000,180,300),('stokManager',35000,180,300);
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Feedback_ID` int NOT NULL AUTO_INCREMENT,
  `Cus_ID` int NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Date` datetime NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Rating` int NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Feedback_ID`,`Cus_ID`),
  KEY `CustomerID_idx` (`Cus_ID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (11,3,'maddiegunaratne@gmail.com','2021-10-03 17:47:57','Q','is it possible to delivery?',2,'Pending'),(12,3,'maddiegunaratne@gmail.com','2021-10-03 17:48:15','C','Excellent service',5,'Thankyou'),(13,3,'maddiegunaratne@gmail.com','2021-10-03 17:49:37','Q','didnt get my products?',1,'Completed'),(14,3,'maddiegunaratne@gmail.com','2021-10-03 17:51:47','I','can i get more information',2,'Completed'),(15,5,'madhuminipgunaratne@gmail.com','2021-10-03 17:54:16','I','didnt get my products',1,'Completed');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has` (
  `Vehicle_Num` varchar(20) NOT NULL,
  `Emp_ID` int NOT NULL,
  `Deliver_ID` int NOT NULL,
  `Date` varchar(45) NOT NULL,
  PRIMARY KEY (`Vehicle_Num`,`Emp_ID`,`Deliver_ID`),
  KEY `EPID_idx` (`Emp_ID`),
  KEY `DV_ID_idx` (`Deliver_ID`),
  CONSTRAINT `DV_ID` FOREIGN KEY (`Deliver_ID`) REFERENCES `delivery` (`Delivery_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `EPID` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Vehicle_NUMBER` FOREIGN KEY (`Vehicle_Num`) REFERENCES `vehicle` (`Vehicle_Num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `monthly_order`
--

DROP TABLE IF EXISTS `monthly_order`;
/*!50001 DROP VIEW IF EXISTS `monthly_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthly_order` AS SELECT 
 1 AS `Product_ID`,
 1 AS `Total_Price`,
 1 AS `Total_Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monthlysalary`
--

DROP TABLE IF EXISTS `monthlysalary`;
/*!50001 DROP VIEW IF EXISTS `monthlysalary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthlysalary` AS SELECT 
 1 AS `EmpType`,
 1 AS `FirstName`,
 1 AS `BasicSalary`,
 1 AS `TotalSalary`,
 1 AS `OT_Increement`,
 1 AS `Work_Hours(PerMonth)`,
 1 AS `Hours_Worked`,
 1 AS `OT_Rate(PerHour)`,
 1 AS `Month`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `neworders`
--

DROP TABLE IF EXISTS `neworders`;
/*!50001 DROP VIEW IF EXISTS `neworders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `neworders` AS SELECT 
 1 AS `Order_ID`,
 1 AS `Order_Date`,
 1 AS `Cus_ID`,
 1 AS `Hardware_Name`,
 1 AS `Qty`,
 1 AS `Total_Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Cust_ID` int NOT NULL,
  `Order_Date` varchar(45) DEFAULT NULL,
  `Order_Status` varchar(45) DEFAULT NULL,
  `Total_Price` double DEFAULT NULL,
  `Paid_Amount` double DEFAULT NULL,
  `Remaining_Amount` double DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  PRIMARY KEY (`Order_ID`,`Cust_ID`),
  KEY `PID_idx` (`Product_ID`),
  KEY `CID_idx` (`Cust_ID`),
  CONSTRAINT `CID` FOREIGN KEY (`Cust_ID`) REFERENCES `customer` (`Cus_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PID` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Prod_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (5,1,'2022-10-14','Pending',1000,1000,0,1,2),(6,1,'2021-01-13','Pending',98000,98000,0,100,3),(7,2,'2021-10-03','Pending',100500,100500,0,100,3),(8,2,'2021-10-03','delivered',24000,24000,0,40,8),(11,4,'2021-10-03','Paid',48400,48400,0,50,2),(13,4,'2021-10-03','Paid',60300,60300,0,60,3),(17,6,'2021-10-03','delivered',145200,25100,120100,150,2),(18,6,'2021-10-03','Accepted',60000,50000,10000,100,8),(19,6,'2021-10-03','Release',201000,100000,101000,200,3),(20,6,'2021-10-03','Accepted',100000,0,100000,200,14);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersummary`
--

DROP TABLE IF EXISTS `ordersummary`;
/*!50001 DROP VIEW IF EXISTS `ordersummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersummary` AS SELECT 
 1 AS `Cust_ID`,
 1 AS `Order_ID`,
 1 AS `Order_Date`,
 1 AS `Name`,
 1 AS `Qty`,
 1 AS `Order_Status`,
 1 AS `Total_Price`,
 1 AS `Paid_Amount`,
 1 AS `Remaining_Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Pay_ID` int NOT NULL AUTO_INCREMENT,
  `Amount` double DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Order_ID` int NOT NULL,
  `Cus_ID` int NOT NULL,
  `Emp_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pay_ID`),
  KEY `EmpID_idx` (`Emp_ID`),
  KEY `OidCid_idx` (`Order_ID`,`Cus_ID`),
  CONSTRAINT `EmpID` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `OidCid` FOREIGN KEY (`Order_ID`, `Cus_ID`) REFERENCES `orders` (`Order_ID`, `Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (5,1000,'2021-09-03',5,1,4),(6,60300,'2021-09-03',13,4,4),(7,25000,'2021-09-24',17,6,4),(8,100500,'2021-10-03',7,2,4),(9,100,'2021-10-03',17,6,4),(10,2500,'2021-10-03',11,4,4),(11,24000,'2021-10-03',8,2,4),(12,100000,'2021-11-02',19,6,4),(13,25000,'2021-10-28',18,6,4),(14,25000,'2021-11-03',18,6,4),(19,45900,'2021-10-04',11,4,4);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `paymentdetails`
--

DROP TABLE IF EXISTS `paymentdetails`;
/*!50001 DROP VIEW IF EXISTS `paymentdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paymentdetails` AS SELECT 
 1 AS `Hardware_Name`,
 1 AS `Order_ID`,
 1 AS `Total_Price`,
 1 AS `Paid_Amount`,
 1 AS `Remaining_Amount`,
 1 AS `Order_Status`,
 1 AS `Order_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `paysummary`
--

DROP TABLE IF EXISTS `paysummary`;
/*!50001 DROP VIEW IF EXISTS `paysummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paysummary` AS SELECT 
 1 AS `Cus_ID`,
 1 AS `Pay_ID`,
 1 AS `Order_ID`,
 1 AS `Date`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Prod_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Weight` double DEFAULT NULL,
  `Added_Date` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Unit_Price` double DEFAULT NULL,
  `Availability` int DEFAULT NULL,
  `Image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Prod_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,50,'2021-10-03','Tokyo 50KG',980,1,'tokyo'),(2,50,'2021-10-03','Sanstha 50KG',960,1,'nippon'),(3,50,'2021-10-03','Powertech 50KG',1005,1,'powertech'),(7,25,'2021-10-03','Powertech 25KG',650,1,'powertech'),(8,25,'2021-10-03','Nippon 25KG',600,1,'nippon'),(9,50,'2021-10-03','Nippon 50KG',980,1,'nippon'),(14,50,'2021-10-03','Sanstha 25KG',500,1,'sanstha'),(15,25,'2021-10-04','Tokyo Water Proof',1280,1,'tokyo');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productreport`
--

DROP TABLE IF EXISTS `productreport`;
/*!50001 DROP VIEW IF EXISTS `productreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productreport` AS SELECT 
 1 AS `Product_Name`,
 1 AS `Customer_Name`,
 1 AS `Quantity`,
 1 AS `Total_Price`,
 1 AS `Order_Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `resigned_employees`
--

DROP TABLE IF EXISTS `resigned_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resigned_employees` (
  `Emp_ID` int NOT NULL,
  `Emp_Type` varchar(45) DEFAULT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `NIC` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Resigned_Date` date DEFAULT NULL,
  PRIMARY KEY (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resigned_employees`
--

LOCK TABLES `resigned_employees` WRITE;
/*!40000 ALTER TABLE `resigned_employees` DISABLE KEYS */;
INSERT INTO `resigned_employees` VALUES (13,'cashCollector','GGGGG','HHHH','0710891056','200102201108','kandy','2021-09-13'),(14,'driver','kamal','Peris','0768817653','199834710184','kandy','2021-10-03'),(15,'cashCollector','testl','test','0768817668','1998347110','kandy','2021-10-04');
/*!40000 ALTER TABLE `resigned_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `Stock_ID` int NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Stock_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'Tokyo 50KG','2021-09-13',55,'Add'),(2,'Tokyo 50KG','2021-10-03',3000,'Add'),(3,'Sanstha 50KG','2021-10-03',4000,'Add'),(4,'Powertech 50KG','2021-10-03',4000,'Add'),(5,'Powertech 25KG','2021-10-03',4000,'Add'),(6,'Nippon 25KG','2021-10-03',4000,'Add'),(11,'Tokyo 50KG','2021-10-03',1000,'Sold'),(12,'Sanstha 50KG','2021-10-03',1000,'Sold'),(13,'Powertech 50KG','2021-10-03',1000,'Sold'),(14,'Powertech 25KG','2021-10-03',1000,'Sold'),(15,'Nippon 25KG','2021-10-03',1000,'Sold'),(16,'Tokyo 50KG','2021-10-03',3000,'Add'),(17,'Sanstha 50KG','2021-10-04',3000,'Add'),(18,'Sanstha 50KG','2021-10-04',1000,'Add'),(19,'Tokyo 50KG','2021-10-04',1000,'Add'),(20,'Sanstha 50KG','2021-10-04',1000,'Add');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stocksorder`
--

DROP TABLE IF EXISTS `stocksorder`;
/*!50001 DROP VIEW IF EXISTS `stocksorder`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stocksorder` AS SELECT 
 1 AS `Order_ID`,
 1 AS `Qty`,
 1 AS `Order_Date`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stockssummary`
--

DROP TABLE IF EXISTS `stockssummary`;
/*!50001 DROP VIEW IF EXISTS `stockssummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stockssummary` AS SELECT 
 1 AS `Item_Name`,
 1 AS `sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stockssummaryadd`
--

DROP TABLE IF EXISTS `stockssummaryadd`;
/*!50001 DROP VIEW IF EXISTS `stockssummaryadd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stockssummaryadd` AS SELECT 
 1 AS `Item_Name`,
 1 AS `Status`,
 1 AS `AddQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stockssummarydel`
--

DROP TABLE IF EXISTS `stockssummarydel`;
/*!50001 DROP VIEW IF EXISTS `stockssummarydel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stockssummarydel` AS SELECT 
 1 AS `Item_Name`,
 1 AS `Status`,
 1 AS `DelQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `Product_ID` int NOT NULL,
  `Vender_ID` int NOT NULL,
  `Stock_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`,`Vender_ID`),
  KEY `SID_idx` (`Stock_ID`),
  KEY `VID_idx` (`Vender_ID`),
  CONSTRAINT `PrID` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Prod_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SID` FOREIGN KEY (`Stock_ID`) REFERENCES `stock` (`Stock_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `VID` FOREIGN KEY (`Vender_ID`) REFERENCES `vendor` (`Vendor_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `Vehicle_Num` varchar(20) NOT NULL,
  `Insurence_Exp` varchar(45) DEFAULT NULL,
  `Licence_Exp` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Supported_Weight` double NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('40-1150','2021-10-21','2021-10-22','Heavey',10,'Availabele'),('BAV-3463','2022-03-09','2022-07-24','Heavey',8,'Availabele'),('NA-0122','2022-06-21','2022-11-23','Heavey',6,'Availabele'),('NC-2025','2022-06-08','2022-10-11','Heavey',10,'Availabele');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `Vendor_ID` int NOT NULL AUTO_INCREMENT,
  `Vendor_Name` varchar(45) DEFAULT NULL,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Tokyo Cement','Tokyo','Trincomalee','94710891055','Inactive'),(2,'Nipon Cement','Nipon','Colombo','94710891055','Active'),(3,'Sanstha Cement','Sanstha','Trincomalee','94839510000','Inactive'),(4,'Tokiyo Cement','Tokyo','Trincomalee','94839510000','Active'),(5,'Tokiyo Cement','Tokyo','Colombo','94718187718','Active');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bestattend`
--

/*!50001 DROP VIEW IF EXISTS `bestattend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bestattend` AS select `e`.`Emp_ID` AS `Emp_ID`,`y`.`Emp_Type` AS `Employee_Type`,`e`.`First_Name` AS `First_Name`,`l`.`Hours_Worked` AS `Hours_Worked`,`y`.`Hours` AS `Work_Hours(PerMonth)`,(`l`.`Hours_Worked` - `y`.`Hours`) AS `OT_Hours`,monthname(curdate()) AS `Month` from ((`employee` `e` join `employee_salattend` `l`) join `employee_type` `y`) where ((`e`.`Emp_ID` = `l`.`Emp_ID`) and (`y`.`Emp_Type` = `e`.`Emp_Type`) and (month(curdate()) = month(`l`.`Month`))) order by `l`.`Hours_Worked` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bestcustomers`
--

/*!50001 DROP VIEW IF EXISTS `bestcustomers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bestcustomers` AS select `o`.`Cust_ID` AS `Cust_ID`,`c`.`Hardware_Name` AS `Hardware_Name`,`c`.`Phone` AS `Phone`,`c`.`Address` AS `Address`,date_format(`o`.`Order_Date`,'%M %Y') AS `Month`,sum(`o`.`Qty`) AS `Total_Quantity` from ((`customer` `c` join `orders` `o`) join `payment` `p`) where ((`c`.`Cus_ID` = `o`.`Cust_ID`) and (`p`.`Order_ID` = `o`.`Order_ID`) and (`o`.`Order_Status` = 'Paid')) group by `o`.`Cust_ID`,year(`o`.`Order_Date`),month(`o`.`Order_Date`),`c`.`Phone` order by `Month`,`Total_Quantity` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customeraged`
--

/*!50001 DROP VIEW IF EXISTS `customeraged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customeraged` AS select `c`.`Cus_ID` AS `Cus_ID`,`c`.`Hardware_Name` AS `Hardware_Name`,`o`.`Order_ID` AS `Order_ID`,`o`.`Total_Price` AS `Total_Price`,`o`.`Paid_Amount` AS `Paid_Amount`,`o`.`Remaining_Amount` AS `Remaining_Amount` from (`customer` `c` join `orders` `o`) where ((`c`.`Cus_ID` = `o`.`Cust_ID`) and (`o`.`Remaining_Amount` > 0) and (`o`.`Order_Status` <> 'Pending')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthly_order`
--

/*!50001 DROP VIEW IF EXISTS `monthly_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_order` (`Product_ID`,`Total_Price`,`Total_Quantity`) AS select `orders`.`Product_ID` AS `Product_ID`,sum(`orders`.`Total_Price`) AS `sum(Total_Price)`,sum(`orders`.`Qty`) AS `sum(Qty)` from `orders` where (month(curdate()) = month(`orders`.`Order_Date`)) group by `orders`.`Product_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthlysalary`
--

/*!50001 DROP VIEW IF EXISTS `monthlysalary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthlysalary` AS select `e`.`Emp_Type` AS `EmpType`,`y`.`First_Name` AS `FirstName`,`e`.`Basic_Salary` AS `BasicSalary`,`l`.`Total_Salary` AS `TotalSalary`,(`l`.`Total_Salary` - `e`.`Basic_Salary`) AS `OT_Increement`,`e`.`Hours` AS `Work_Hours(PerMonth)`,`l`.`Hours_Worked` AS `Hours_Worked`,`e`.`OT_Rate` AS `OT_Rate(PerHour)`,`l`.`Month` AS `Month` from ((`employee_type` `e` join `employee` `y`) join `employee_salattend` `l`) where ((`e`.`Emp_Type` = `y`.`Emp_Type`) and (`l`.`Emp_ID` = `y`.`Emp_ID`) and (month(curdate()) = month(`l`.`Month`))) order by `l`.`Total_Salary` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `neworders`
--

/*!50001 DROP VIEW IF EXISTS `neworders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `neworders` AS select `o`.`Order_ID` AS `Order_ID`,`o`.`Order_Date` AS `Order_Date`,`c`.`Cus_ID` AS `Cus_ID`,`c`.`Hardware_Name` AS `Hardware_Name`,`o`.`Qty` AS `Qty`,`o`.`Total_Price` AS `Total_Price` from (`customer` `c` join `orders` `o`) where ((`c`.`Cus_ID` = `o`.`Cust_ID`) and (`o`.`Order_Status` = 'pending')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordersummary`
--

/*!50001 DROP VIEW IF EXISTS `ordersummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersummary` AS select `o`.`Cust_ID` AS `Cust_ID`,`o`.`Order_ID` AS `Order_ID`,`o`.`Order_Date` AS `Order_Date`,`p`.`Name` AS `Name`,`o`.`Qty` AS `Qty`,`o`.`Order_Status` AS `Order_Status`,`o`.`Total_Price` AS `Total_Price`,`o`.`Paid_Amount` AS `Paid_Amount`,`o`.`Remaining_Amount` AS `Remaining_Amount` from (`orders` `o` join `product` `p`) where (`o`.`Product_ID` = `p`.`Prod_ID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paymentdetails`
--

/*!50001 DROP VIEW IF EXISTS `paymentdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paymentdetails` AS select `c`.`Hardware_Name` AS `Hardware_Name`,`o`.`Order_ID` AS `Order_ID`,`o`.`Total_Price` AS `Total_Price`,`o`.`Paid_Amount` AS `Paid_Amount`,`o`.`Remaining_Amount` AS `Remaining_Amount`,`o`.`Order_Status` AS `Order_Status`,`o`.`Order_Date` AS `Order_Date` from (`customer` `c` join `orders` `o`) where ((`c`.`Cus_ID` = `o`.`Cust_ID`) and (`o`.`Paid_Amount` <= `o`.`Total_Price`) and (`o`.`Order_Status` <> 'Pending')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paysummary`
--

/*!50001 DROP VIEW IF EXISTS `paysummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paysummary` AS select `payment`.`Cus_ID` AS `Cus_ID`,`payment`.`Pay_ID` AS `Pay_ID`,`payment`.`Order_ID` AS `Order_ID`,`payment`.`Date` AS `Date`,`payment`.`Amount` AS `Amount` from `payment` group by `payment`.`Cus_ID`,`payment`.`Order_ID`,`payment`.`Pay_ID`,`payment`.`Date`,`payment`.`Amount` order by `payment`.`Order_ID`,`payment`.`Date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productreport`
--

/*!50001 DROP VIEW IF EXISTS `productreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productreport` AS select `p`.`Name` AS `Product_Name`,concat(`c`.`First_Name`,' ',`c`.`Last_Name`) AS `Customer_Name`,`o`.`Qty` AS `Quantity`,`o`.`Total_Price` AS `Total_Price`,`o`.`Order_Date` AS `Order_Date` from ((`customer` `c` join `orders` `o`) join `product` `p`) where ((`c`.`Cus_ID` = `o`.`Cust_ID`) and (`p`.`Prod_ID` = `o`.`Product_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stocksorder`
--

/*!50001 DROP VIEW IF EXISTS `stocksorder`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stocksorder` AS select `o`.`Order_ID` AS `Order_ID`,`o`.`Qty` AS `Qty`,`o`.`Order_Date` AS `Order_Date`,`p`.`Name` AS `Name` from (`orders` `o` join `product` `p`) where ((`o`.`Order_Status` = 'Accepted') and (`o`.`Product_ID` = `p`.`Prod_ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockssummary`
--

/*!50001 DROP VIEW IF EXISTS `stockssummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockssummary` AS select `sa`.`Item_Name` AS `Item_Name`,(`sa`.`AddQuantity` - `sd`.`DelQuantity`) AS `sum` from (`stockssummaryadd` `sa` join `stockssummarydel` `sd`) where (`sa`.`Item_Name` = `sd`.`Item_Name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockssummaryadd`
--

/*!50001 DROP VIEW IF EXISTS `stockssummaryadd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockssummaryadd` AS select `s`.`Item_Name` AS `Item_Name`,`s`.`Status` AS `Status`,sum(`s`.`Quantity`) AS `AddQuantity` from `stock` `s` where (`s`.`Status` = 'Add') group by `s`.`Item_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockssummarydel`
--

/*!50001 DROP VIEW IF EXISTS `stockssummarydel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockssummarydel` AS select `s`.`Item_Name` AS `Item_Name`,`s`.`Status` AS `Status`,sum(`s`.`Quantity`) AS `DelQuantity` from `stock` `s` where (`s`.`Status` = 'Sold') group by `s`.`Item_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20 22:41:28
