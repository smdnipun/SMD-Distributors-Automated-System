CREATE DATABASE  IF NOT EXISTS `smd`; 
USE `smd`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: smd
-- ------------------------------------------------------
-- Server version	8.0.24
--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `Cus_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Hardware_Name` varchar(45) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `NIC` varchar(13) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`Cus_ID`)
) ;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `Feedback_ID` int NOT NULL AUTO_INCREMENT,
  `Cus_ID` int NOT NULL,
  `Date` varchar(11) DEFAULT NULL,
  `Type` varchar(10) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `Rating` varchar(45) NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Feedback_ID`,`Cus_ID`),
  KEY `CustomerID_idx` (`Cus_ID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `employeetype`
--

DROP TABLE IF EXISTS `employeetype`;

CREATE TABLE `employeetype` (
  `Emp_Type` varchar(45) NOT NULL,
  `Basic_Salary` double NOT NULL,
  `Hours` int NOT NULL,
  PRIMARY KEY (`Emp_Type`)
);

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `Emp_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `NIC` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Total_Salary` double DEFAULT NULL,
  `Hours_Worked` int DEFAULT NULL,
  `Emp_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Emp_ID`),
  KEY `Employee_Type_idx` (`Emp_Type`),
  CONSTRAINT `Employee_Type` FOREIGN KEY (`Emp_Type`) REFERENCES `employeetype` (`Emp_Type`) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `Prod_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Weight` double DEFAULT NULL,
  `Added_Date` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Unit_Price` double DEFAULT NULL,
  PRIMARY KEY (`Prod_ID`)
);

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
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
);

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;

CREATE TABLE `delivery` (
  `Delivery_ID` int NOT NULL AUTO_INCREMENT,
  `Route` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Order_ID` int NOT NULL,
  `Cus_ID` int NOT NULL,
  PRIMARY KEY (`Delivery_ID`),
  KEY `OID_idx` (`Order_ID`,`Cus_ID`),
  CONSTRAINT `OCID` FOREIGN KEY (`Order_ID`, `Cus_ID`) REFERENCES `order` (`Order_ID`, `Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
); 


--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `Stock_ID` int NOT NULL AUTO_INCREMENT,
  `Item_Name` varchar(45) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Stock_Details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Stock_ID`)
);

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `Vehicle_Num` varchar(20) NOT NULL,
  `Insurence_Exp` varchar(45) DEFAULT NULL,
  `Licence_Exp` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Supported_Weight` double NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Num`)
);

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `Vendor_ID` int NOT NULL AUTO_INCREMENT,
  `Vendor_Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
);

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;

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
);

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Pay_ID` int NOT NULL AUTO_INCREMENT,
  `Amount` double DEFAULT NULL,
  `Order_ID` int NOT NULL,
  `Cus_ID` int NOT NULL,
  `Emp_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pay_ID`),
  KEY `EmpID_idx` (`Emp_ID`),
  KEY `OidCid_idx` (`Order_ID`,`Cus_ID`),
  CONSTRAINT `EmpID` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `OidCid` FOREIGN KEY (`Order_ID`, `Cus_ID`) REFERENCES `order` (`Order_ID`, `Cust_ID`) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;

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
);
