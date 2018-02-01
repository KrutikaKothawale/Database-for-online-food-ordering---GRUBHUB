CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Address_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Street` varchar(40) NOT NULL,
  `Block_Or_Apt` varchar(5) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `ZIP` varchar(6) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`Address_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'St. Germain','5','Boston','Massachusetts','02115','US'),(2,'Beacon Street','40','Boston','Massachusetts','02134','US'),(3,'Boston Common','9','Boston','Massachusetts','02211','US'),(4,'10 Bosworth St','9','Boston','Massachusetts','02108','US'),(5,'290 Washington St.','6','Boston','Massachusetts','02108','US'),(6,'48 Temple Pl','9','Boston','Massachusetts','02111','US'),(7,'558 Washington St','10','Boston','Massachusetts','02111','US'),(8,'39 Dalton St','10','Boston','Massachusetts','02115','US'),(9,'800 Boylston St','2','Boston','Massachusetts','02118','US'),(10,'55 Washington St','10','Boston','Massachusetts','02111','US'),(11,'3 Dalton St','10','Boston','Massachusetts','02115','US'),(12,'8 Boylston St','2','Boston','Massachusetts','02118','US'),(13,'26 Boston Common','9','Boston','Massachusetts','02211','US'),(14,'1 Bosworth St','9','Boston','Massachusetts','02108','US'),(15,'29 Washington St.','6','Boston','Massachusetts','02108','US'),(16,'4 Temple Pl','9','Boston','Massachusetts','02111','US'),(17,'200 Washington St.','6','Boston','Massachusetts','02108','US'),(18,'8 Temple Pl','9','Boston','Massachusetts','02111','US'),(19,'70 Boylston St','2','Boston','Massachusetts','02418','US'),(20,'26 Parker Hill','9','Boston','Massachusetts','02211','US'),(21,'3 Bosworth St','9','Boston','Massachusetts','02138','US'),(22,'29 Park St.','6','Boston','Massachusetts','02118','US'),(23,'4 Avenue Pl','9','Boston','Massachusetts','02113','US'),(24,'200 Newton St.','6','Boston','Massachusetts','02138','US'),(25,'8 Boston Architecture','9','Boston','Massachusetts','02111','US');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisine`
--

DROP TABLE IF EXISTS `cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuisine` (
  `Cuisine_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cuisine_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Cuisine_ID`),
  KEY `Cuisine_Name` (`Cuisine_ID`,`Cuisine_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisine`
--

LOCK TABLES `cuisine` WRITE;
/*!40000 ALTER TABLE `cuisine` DISABLE KEYS */;
INSERT INTO `cuisine` VALUES (1,'Asian'),(2,'Thai'),(3,'Middle Eastern'),(4,'Mexican'),(5,'American'),(6,'Bakery'),(7,'Pizza'),(8,'Mediterranean'),(9,'Japanesse');
/*!40000 ALTER TABLE `cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_FirstName` varchar(20) NOT NULL,
  `Customer_LastName` varchar(20) NOT NULL,
  `Customer_DOJ` date DEFAULT NULL,
  `Customer_Phone` varchar(10) NOT NULL,
  `Customer_Email` varchar(40) NOT NULL,
  `User_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `User_ID_UNIQUE` (`User_ID`),
  KEY `fk_Customer_User_Details1_idx` (`User_ID`),
  CONSTRAINT `fk_Customer_User_Details1` FOREIGN KEY (`User_ID`) REFERENCES `user_details` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Lia','Shelton','2014-05-10','6178299977','Lia.Shelton@gmail.com',1),(2,'Marcus','Cruz','2017-01-02','6179299988','Marcus.Cruz@gmail.com',2),(3,'Justine','Henderson','2017-01-02','6179299988','Henderson@gmail.com',3),(4,'Yan','Pipkins','2017-05-05','6179444988','Yan@gmail.com',4),(5,'Priya','Agarwal','2004-07-12','6179893988','Priya@gmail.com',5),(6,'Krutika','Kothawale','2004-07-12','6178209539','Krutika.k@gmail.com',6),(7,'Li','Shel','2014-05-10','6178299977','Lia.Shelton@gmail.com',7),(8,'Marc','Cru','2017-01-02','6179299988','Marcus.Cruz@gmail.com',8),(9,'Just','son','2017-01-02','6179299988','Henderson@gmail.com',9),(10,'Yank','Pipk','2017-05-05','6179444988','Yan@gmail.com',10),(11,'P','Agarwal','2004-07-12','6179893988','Priya@gmail.com',11);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_address` (
  `Customer_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  `Ref_Address_type_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Address_ID`),
  KEY `fk_Customer_Address_Address1_idx` (`Address_ID`),
  KEY `fk_Customer_Address_Ref_Address_type1_idx` (`Ref_Address_type_ID`),
  CONSTRAINT `fk_Customer_Address_Address1` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Address_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Address_Ref_Address_type1` FOREIGN KEY (`Ref_Address_type_ID`) REFERENCES `ref_address_type` (`Ref_Address_type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,10,1),(2,13,1),(3,14,1),(4,15,1),(5,17,1),(6,18,1),(1,11,2),(4,16,2),(1,12,3);
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_care_contact`
--

DROP TABLE IF EXISTS `customer_care_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_care_contact` (
  `Care_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Care_Phone` varchar(10) NOT NULL,
  `Customer_care_Email` varchar(40) NOT NULL,
  PRIMARY KEY (`Care_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_care_contact`
--

LOCK TABLES `customer_care_contact` WRITE;
/*!40000 ALTER TABLE `customer_care_contact` DISABLE KEYS */;
INSERT INTO `customer_care_contact` VALUES (1,'6179012345','customer.care1@gmail.com'),(2,'6179012456','customer.care2@gmail.com'),(3,'6179012345','customer.care3@gmail.com');
/*!40000 ALTER TABLE `customer_care_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_complaint`
--

DROP TABLE IF EXISTS `customer_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_complaint` (
  `Customer_Complaint_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Priority_Level` varchar(45) NOT NULL,
  `Complaint_Details` varchar(100) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  `Care_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_Complaint_ID`),
  KEY `fk_Customer_Complaint_Employee1_idx` (`Employee_ID`),
  KEY `fk_Customer_Complaint_Customer1_idx` (`Customer_ID`),
  KEY `fk_Customer_Complaint_Restaurant1_idx` (`Restaurant_ID`),
  KEY `fk_Customer_Complaint_Customer_Care_Contact1_idx` (`Care_ID`),
  CONSTRAINT `fk_Customer_Complaint_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Complaint_Customer_Care_Contact1` FOREIGN KEY (`Care_ID`) REFERENCES `customer_care_contact` (`Care_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Complaint_Employee1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Complaint_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_complaint`
--

LOCK TABLES `customer_complaint` WRITE;
/*!40000 ALTER TABLE `customer_complaint` DISABLE KEYS */;
INSERT INTO `customer_complaint` VALUES (1,'High','Order not delevered and money deducted','Active',1,2,4,1);
/*!40000 ALTER TABLE `customer_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `Delivery_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Delivery_Start_Time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Delivery_End_Time` datetime DEFAULT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Delivery_Status_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  PRIMARY KEY (`Delivery_ID`),
  KEY `fk_Delivery_Employee1_idx` (`Employee_ID`),
  KEY `fk_Delivery_Ref_Delivery_Status1_idx` (`Delivery_Status_ID`),
  KEY `fk_Delivery_Address1_idx` (`Address_ID`),
  KEY `fk_Delivery_Order1_idx` (`Order_ID`),
  CONSTRAINT `fk_Delivery_Address1` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Delivery_Employee1` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Delivery_Order1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Delivery_Ref_Delivery_Status1` FOREIGN KEY (`Delivery_Status_ID`) REFERENCES `ref_delivery_status` (`Delivery_Status_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,1,5,1),(2,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,7,2),(3,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,8,3),(4,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,9,4),(7,'2017-12-13 20:10:29','0000-00-00 00:00:00',2,1,10,11),(8,'2017-12-13 20:21:44','0000-00-00 00:00:00',2,3,10,12);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_FirstName` varchar(20) NOT NULL,
  `Emp_LastName` varchar(20) NOT NULL,
  `Emp_Phone` varchar(10) DEFAULT NULL,
  `Emp_Email` varchar(40) DEFAULT NULL,
  `Emp_DOJ` date DEFAULT NULL,
  `Emp_Role` varchar(15) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `fk_Employee_Address1_idx` (`Address_ID`),
  CONSTRAINT `fk_Employee_Address1` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care R',19),(2,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care R',20),(3,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care R',21),(4,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',22),(5,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',23),(6,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',24),(7,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',25);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fav_restaurant`
--

DROP TABLE IF EXISTS `fav_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fav_restaurant` (
  `Customer_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Restaurant_ID`),
  KEY `fk_Fav_Restaurant_Restaurant1_idx` (`Restaurant_ID`),
  CONSTRAINT `fk_Fav_Restaurant_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fav_Restaurant_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fav_restaurant`
--

LOCK TABLES `fav_restaurant` WRITE;
/*!40000 ALTER TABLE `fav_restaurant` DISABLE KEYS */;
INSERT INTO `fav_restaurant` VALUES (1,1),(4,2),(1,5),(5,5),(2,7);
/*!40000 ALTER TABLE `fav_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `Menu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Menu_Name` varchar(100) NOT NULL,
  `Menu_Type` varchar(70) NOT NULL,
  `Price` decimal(4,2) NOT NULL,
  `Cuisine_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  PRIMARY KEY (`Menu_ID`),
  KEY `fk_Menu_Cuisine1_idx` (`Cuisine_ID`),
  KEY `fk_Menu_Restaurant1_idx` (`Restaurant_ID`),
  CONSTRAINT `fk_Menu_Cuisine1` FOREIGN KEY (`Cuisine_ID`) REFERENCES `cuisine` (`Cuisine_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Menu_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Veggie delight pizza','Pizza',14.00,7,1),(2,'Buffalo Chicken Supreme Pizza','Pizza',12.00,7,2),(3,'Buffalo Chicken Supreme Pizza','Pizza',17.00,7,2),(4,'Cheese','Specialty Pizza and Calzones',14.00,7,3),(5,'Chicken Broccoli Ziti','Specialty Pizza and Calzones',20.00,7,4),(6,'Preserved Egg with Chilled Tofu','Appetizers',12.95,1,5),(7,'Clam Soup','Soup',11.95,1,5),(8,'Almond Bubble Tea','Drinks',4.50,1,6),(9,'Caesar Salad Bowl','Salad Bowls',6.49,5,6),(10,'Meal for 6','Family Meals',46.49,5,7),(11,'Flat White Coffee','Espresso',12.99,6,7),(12,'Shawarma Salad','Fresh Salads',9.00,8,8),(13,'House Tempura Burrito','Signature Sushi Burritos',10.00,9,9),(14,'House veg Burrito','Signature Sushi Burritos',10.00,9,9);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderTotal` decimal(4,2) NOT NULL,
  `Order_Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Customer_ID` int(11) NOT NULL,
  `Order_Status_ID` int(11) NOT NULL,
  `Pay_Method_ID` int(11) NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `fk_Order_Customer1_idx` (`Customer_ID`),
  KEY `fk_Order_Ref_Order_Status1_idx` (`Order_Status_ID`),
  KEY `fk_Order_Payment_Method_Used1_idx` (`Pay_Method_ID`),
  CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Payment_Method_Used1` FOREIGN KEY (`Pay_Method_ID`) REFERENCES `payment_method_used` (`Pay_Method_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Ref_Order_Status1` FOREIGN KEY (`Order_Status_ID`) REFERENCES `ref_order_status` (`Order_Status_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,99.99,'2017-02-01 11:20:20',1,1,1),(2,99.99,'2016-02-08 12:20:20',1,1,1),(3,50.00,'2016-02-09 10:20:20',1,1,1),(4,20.00,'2017-04-09 02:20:20',1,1,1),(5,26.00,'2017-12-13 19:46:37',1,2,1),(6,29.00,'2017-12-13 20:07:17',1,2,1),(7,29.00,'2017-12-13 11:10:20',1,1,1),(11,29.00,'2017-12-13 20:14:08',1,2,1),(12,29.00,'2017-12-13 20:16:11',1,2,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_after_order_placed
after insert on `order`
for each row
begin 
    INSERT INTO delivery 
    	select '', now(),'',2,1, Address.Address_ID,`order`.Order_ID 
    	from `order`, customer, address, customer_address
    	where `order`.Customer_ID = customer.Customer_ID
    	AND customer.Customer_ID = customer_address.Customer_ID
    	and customer_address.Address_ID = address.Address_ID
    	order by Order_Timestamp desc
    	limit 1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t_after_order_updated
after update on `order`
for each row
begin 
	
  if (select Order_Status_ID from `order` order by Order_Timestamp desc limit 1) =2 then
    
	update delivery
	Set Delivery_Status_ID = 3
	where Order_ID = (select Order_ID from `order` order by Order_Timestamp desc limit 1); 
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderline` (
  `Menu_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Line_Price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`Menu_ID`,`Order_ID`),
  KEY `fk_OrderLine_Order1_idx` (`Order_ID`),
  CONSTRAINT `fk_OrderLine_Menu1` FOREIGN KEY (`Menu_ID`) REFERENCES `menu` (`Menu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderLine_Order1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (1,1,5,20.00),(2,2,4,10.00),(3,2,1,10.00),(4,3,1,90.00),(5,3,1,90.00),(6,4,5,20.00),(7,5,5,20.00);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method_used`
--

DROP TABLE IF EXISTS `payment_method_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method_used` (
  `Pay_Method_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Payment_Method_Name` varchar(45) NOT NULL,
  `Saved_Card_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pay_Method_ID`),
  KEY `fk_Payment_Method_Used_Saved_Card_Details1_idx` (`Saved_Card_ID`),
  CONSTRAINT `fk_Payment_Method_Used_Saved_Card_Details1` FOREIGN KEY (`Saved_Card_ID`) REFERENCES `saved_card_details` (`Saved_Card_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method_used`
--

LOCK TABLES `payment_method_used` WRITE;
/*!40000 ALTER TABLE `payment_method_used` DISABLE KEYS */;
INSERT INTO `payment_method_used` VALUES (1,'Credit Card',1),(2,'Debit Card',2);
/*!40000 ALTER TABLE `payment_method_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_delivery`
--

DROP TABLE IF EXISTS `rating_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating_delivery` (
  `Delivery_Rating` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Delivery_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Delivery_ID`),
  KEY `fk_Rating_Delivery_Customer1_idx` (`Customer_ID`),
  KEY `fk_Rating_Delivery_Delivery1_idx` (`Delivery_ID`),
  CONSTRAINT `fk_Rating_Delivery_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rating_Delivery_Delivery1` FOREIGN KEY (`Delivery_ID`) REFERENCES `delivery` (`Delivery_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_delivery`
--

LOCK TABLES `rating_delivery` WRITE;
/*!40000 ALTER TABLE `rating_delivery` DISABLE KEYS */;
INSERT INTO `rating_delivery` VALUES (4,2,2),(1,4,1),(3,6,3);
/*!40000 ALTER TABLE `rating_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_restaurent`
--

DROP TABLE IF EXISTS `rating_restaurent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating_restaurent` (
  `Rating` int(11) NOT NULL,
  `Rating_Comments` varchar(100) DEFAULT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Restaurant_ID`),
  KEY `fk_Rating_Customer1_idx` (`Customer_ID`),
  KEY `fk_Rating_Restaurant1` (`Restaurant_ID`),
  FULLTEXT KEY `Rating_Comments` (`Rating_Comments`),
  CONSTRAINT `fk_Rating_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rating_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_restaurent`
--

LOCK TABLES `rating_restaurent` WRITE;
/*!40000 ALTER TABLE `rating_restaurent` DISABLE KEYS */;
INSERT INTO `rating_restaurent` VALUES (5,'Timing was accurate and Food was good. It was served Hot',1,1),(5,'Food was good, and was fresh',1,3),(4,'Order was accurate and on time',2,1),(4,'Order was accurate. It was on time as well',2,5),(1,'Worst Food',4,1),(1,'Worst Food',4,5),(5,'Food was good, I had shushi',5,1),(2,'Bellow Average',5,3),(5,' Quality was good and Food was good',5,5),(2,'Qualitu was Bellow Average ',5,7),(3,'Food was not good I did not like it',6,3),(4,'I ordered from this reataurant and Order was accurate',6,4),(1,'Worst Food i had',6,5),(3,'Food was not good. I enjoyed the food',6,6),(3,'Order came on time and Food was not good',7,3),(4,'Order was accurate, and also on time',7,5),(2,'it was not good at all Bellow Average',8,2),(3,'Food was not good. It was not delevered on time as well',8,6),(1,'it was the Worst Food I ever had',9,1),(2,'Bellow Average. I did not enjoy it',9,3);
/*!40000 ALTER TABLE `rating_restaurent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_address_type`
--

DROP TABLE IF EXISTS `ref_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_address_type` (
  `Ref_Address_type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address_type_description` varchar(20) NOT NULL,
  PRIMARY KEY (`Ref_Address_type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_address_type`
--

LOCK TABLES `ref_address_type` WRITE;
/*!40000 ALTER TABLE `ref_address_type` DISABLE KEYS */;
INSERT INTO `ref_address_type` VALUES (1,'Home Address'),(2,'Office Address'),(3,'Billing Address');
/*!40000 ALTER TABLE `ref_address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_complaint_type`
--

DROP TABLE IF EXISTS `ref_complaint_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_complaint_type` (
  `Complaint_Type_Code` int(11) NOT NULL AUTO_INCREMENT,
  `Complaint_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Complaint_Type_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_complaint_type`
--

LOCK TABLES `ref_complaint_type` WRITE;
/*!40000 ALTER TABLE `ref_complaint_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_complaint_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_delivery_status`
--

DROP TABLE IF EXISTS `ref_delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_delivery_status` (
  `Delivery_Status_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Delivery_Status_Description` varchar(20) NOT NULL,
  PRIMARY KEY (`Delivery_Status_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_delivery_status`
--

LOCK TABLES `ref_delivery_status` WRITE;
/*!40000 ALTER TABLE `ref_delivery_status` DISABLE KEYS */;
INSERT INTO `ref_delivery_status` VALUES (1,'Completed'),(2,'Returned'),(3,'Cancelled');
/*!40000 ALTER TABLE `ref_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_order_status`
--

DROP TABLE IF EXISTS `ref_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_order_status` (
  `Order_Status_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_Status_Description` varchar(20) NOT NULL,
  PRIMARY KEY (`Order_Status_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_order_status`
--

LOCK TABLES `ref_order_status` WRITE;
/*!40000 ALTER TABLE `ref_order_status` DISABLE KEYS */;
INSERT INTO `ref_order_status` VALUES (1,'Placed'),(2,'Cancelled'),(3,'Delivered');
/*!40000 ALTER TABLE `ref_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_discounts`
--

DROP TABLE IF EXISTS `rest_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rest_discounts` (
  `Discount_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Discount_Name` varchar(20) NOT NULL,
  `Discount_Code` varchar(10) NOT NULL,
  `Discount_Percentage` int(11) NOT NULL,
  `Discount_Valid_From` date NOT NULL,
  `Discount_Valid_To` date NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  PRIMARY KEY (`Discount_ID`),
  KEY `fk_Rest_Discounts_Restaurant1_idx` (`Restaurant_ID`),
  CONSTRAINT `fk_Rest_Discounts_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_discounts`
--

LOCK TABLES `rest_discounts` WRITE;
/*!40000 ALTER TABLE `rest_discounts` DISABLE KEYS */;
INSERT INTO `rest_discounts` VALUES (1,'Thanksgiving Flat 30','THANKS30',30,'2017-11-24','2017-11-27',1),(2,'End Of Season Flat 5','THANKS30',50,'2017-12-11','2017-12-14',2),(3,'Sale Flat 30%','THANKS30',30,'2017-10-24','2017-10-27',3);
/*!40000 ALTER TABLE `rest_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `Restaurant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Restaurant_Name` varchar(60) NOT NULL,
  `Opening_Time` time DEFAULT NULL,
  `Closing_Time` time DEFAULT NULL,
  `Delivery_Facility` varchar(1) DEFAULT 'N',
  `Pickup_Facility` varchar(1) DEFAULT 'N',
  `Catering_Facility` varchar(1) DEFAULT 'N',
  `Delivery_Charge` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Min_Order_Price` decimal(4,2) NOT NULL DEFAULT '0.00',
  `Restaurant_Phone` varchar(10) DEFAULT NULL,
  `Restaurant_Email` varchar(40) NOT NULL,
  `Restaurant_DOJ` date DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Address_ID` int(11) NOT NULL,
  PRIMARY KEY (`Restaurant_ID`),
  UNIQUE KEY `User_ID_UNIQUE` (`User_ID`),
  UNIQUE KEY `Address_ID_UNIQUE` (`Address_ID`),
  KEY `fk_Restaurant_User_Details1_idx` (`User_ID`),
  KEY `fk_Restaurant_Address1_idx` (`Address_ID`),
  CONSTRAINT `fk_Restaurant_Address1` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Restaurant_User_Details1` FOREIGN KEY (`User_ID`) REFERENCES `user_details` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Supreme Pizza','10:00:00','02:00:00','Y','Y','N',25.00,75.00,'6178934095','Supreme@gmail.com','2005-05-05',6,1),(2,'Regina Pizzeria','10:00:00','02:00:00','Y','Y','N',30.00,0.00,'6178834095','Pizzeria@gmail.com','2012-04-07',7,2),(3,'New York Pizza','11:00:00','12:00:00','Y','N','N',0.00,0.00,'6178864095','NYP@gmail.com','2015-04-06',8,3),(4,'Wok n Talk','12:00:00','23:00:00','N','Y','N',0.00,0.00,'6178864095','WNT@gmail.com','2000-04-06',9,4),(5,'SUBWAY','11:00:00','23:00:00','Y','Y','N',30.00,50.00,'6179964095','subway@gmail.com','2003-04-09',10,5),(6,'Boston Shawarma','11:00:00','23:00:00','Y','Y','N',30.00,50.00,'6179064095','shawarma@gmail.com','2009-04-11',11,6),(7,'Cheesecake Factory','11:00:00','23:00:00','Y','Y','N',30.00,99.99,'6179964091','Cheesecake@gmail.com','2013-04-09',12,7),(8,'IHOP','11:00:00','23:00:00','Y','Y','N',30.00,50.00,'6179964099','IHOP@gmail.com','2013-07-09',13,8),(9,'BiMediterranean','11:00:00','23:00:00','Y','Y','N',30.00,50.00,'6179964094','BiMediterranean@gmail.com','2008-04-07',14,9);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_menu`
--

DROP TABLE IF EXISTS `restaurant_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_menu` (
  `Restaurant_ID` int(11) NOT NULL,
  `Menu_ID` int(11) NOT NULL,
  PRIMARY KEY (`Restaurant_ID`,`Menu_ID`),
  KEY `fk_Restaurant_Menu_Menu1_idx` (`Menu_ID`),
  CONSTRAINT `fk_Restaurant_Menu_Menu1` FOREIGN KEY (`Menu_ID`) REFERENCES `menu` (`Menu_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Restaurant_Menu_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_menu`
--

LOCK TABLES `restaurant_menu` WRITE;
/*!40000 ALTER TABLE `restaurant_menu` DISABLE KEYS */;
INSERT INTO `restaurant_menu` VALUES (1,1),(1,2),(1,3),(1,4),(3,4),(3,5),(2,6),(2,7),(2,8),(4,9),(5,10),(6,11),(7,12),(8,13),(9,14);
/*!40000 ALTER TABLE `restaurant_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restorent_cuisine`
--

DROP TABLE IF EXISTS `restorent_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restorent_cuisine` (
  `Restaurant_ID` int(11) NOT NULL,
  `Cuisine_ID` int(11) NOT NULL,
  PRIMARY KEY (`Restaurant_ID`,`Cuisine_ID`),
  KEY `fk_Restorent_Cuisine_Cuisine1_idx` (`Cuisine_ID`),
  CONSTRAINT `fk_Restorent_Cuisine_Cuisine1` FOREIGN KEY (`Cuisine_ID`) REFERENCES `cuisine` (`Cuisine_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Restorent_Cuisine_Restaurant1` FOREIGN KEY (`Restaurant_ID`) REFERENCES `restaurant` (`Restaurant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restorent_cuisine`
--

LOCK TABLES `restorent_cuisine` WRITE;
/*!40000 ALTER TABLE `restorent_cuisine` DISABLE KEYS */;
INSERT INTO `restorent_cuisine` VALUES (4,4),(5,5),(6,6),(1,7),(2,7),(3,7),(6,7),(7,7),(2,8),(3,8),(8,8);
/*!40000 ALTER TABLE `restorent_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_card_details`
--

DROP TABLE IF EXISTS `saved_card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_card_details` (
  `Saved_Card_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Credit_Or_Debit` varchar(20) NOT NULL,
  `Card_Details` varchar(16) NOT NULL,
  `Card_Expiry_Date` varchar(4) NOT NULL,
  `Card_Holders_Name` varchar(60) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  PRIMARY KEY (`Saved_Card_ID`),
  KEY `fk_Saved_Payment_Mode_Customer1_idx` (`Customer_ID`),
  CONSTRAINT `fk_Saved_Payment_Mode_Customer1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_card_details`
--

LOCK TABLES `saved_card_details` WRITE;
/*!40000 ALTER TABLE `saved_card_details` DISABLE KEYS */;
INSERT INTO `saved_card_details` VALUES (1,'Credit','1234123412334123','2712','Lia Shelton',1),(2,'Debit','1234123410330120','2712','Justine Henderson',3),(3,'Credit','1234123412334123','2712','Priya Agarwal',5),(4,'credit','','2717','Priya Agarwal',6);
/*!40000 ALTER TABLE `saved_card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `User_Password` varchar(8) NOT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Name_UNIQUE` (`User_Name`),
  UNIQUE KEY `User_Password_UNIQUE` (`User_Password`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'Lia.Shelton','LiaShel1'),(2,'Marcus.Cruz','MarcusC1'),(3,'Justine.Henderson','JustineH'),(4,'Yan Pipkins','Yan.P$'),(5,'Priya.Agarwal','Agarwal1'),(6,'Supreme Pizza','Supreme'),(7,'Regina Pizzeria','Regin@'),(8,'New York Pizza','NYP@123'),(9,'Wok n Talk','WoknTalk'),(10,'SUBWAY','SUB12345'),(11,'Boston.Shawarma','Shawarma'),(12,'Cheesecake.Factory','cheeseca'),(13,'IHOP','HOP123'),(14,'BiMediterranean','BismED'),(15,'Krutika.Kothawale','Krutika');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_details_of_rest`
--

DROP TABLE IF EXISTS `v_details_of_rest`;
/*!50001 DROP VIEW IF EXISTS `v_details_of_rest`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_details_of_rest` AS SELECT 
 1 AS `Restaurant_Name`,
 1 AS `Menu catagory`,
 1 AS `Menu`,
 1 AS `cost of item`,
 1 AS `Cuisine`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_order_history`
--

DROP TABLE IF EXISTS `v_order_history`;
/*!50001 DROP VIEW IF EXISTS `v_order_history`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_order_history` AS SELECT 
 1 AS `Restaurant_Name`,
 1 AS `Order ID`,
 1 AS `Order total`,
 1 AS `Order Placed Date`,
 1 AS `Status`,
 1 AS `Restaurant Address`,
 1 AS `Used Payment Method`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_restaurant_list`
--

DROP TABLE IF EXISTS `v_restaurant_list`;
/*!50001 DROP VIEW IF EXISTS `v_restaurant_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_restaurant_list` AS SELECT 
 1 AS `Restaurant_Name`,
 1 AS `Opens_At`,
 1 AS `Closes_At`,
 1 AS `Min_Order_Should_Be`,
 1 AS `Address`,
 1 AS `Discount`,
 1 AS `Delivery Or Pickup`,
 1 AS `Average_Rating_of_Restaurant`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `Revenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Revenue`(IN Restaurant_Name varchar(30), IN Date1 varchar(10), OUT total_Revenue int)
BEGIN
	Select sum(`order`.OrderTotal) as `Revenue of Restaurant`
    From `Order` 
    INNER join orderline ON `Order`.Order_ID = OrderLine.Order_ID
    INNER join menu ON OrderLine.Menu_ID = Menu.Menu_ID
    inner JOIN Restaurant ON Restaurant.Restaurant_ID = Menu.Restaurant_ID
    where Restaurant.Restaurant_Name = Restaurant_Name
    AND Date(`order`.Order_timestamp) = date1
    AND `order`.Order_status_ID = (Select Order_Status_ID From ref_order_status where Order_Status_Description = 'Placed');
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_find_rest_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_rest_details`()
BEGIN
	DROP view IF EXISTS V_details_of_rest;
	Create View V_details_of_rest AS
	SELECT 	Restaurant_Name,  
            Menu.Menu_Type `Menu catagory`,
            Menu.menu_name `Menu`,
            Menu.Price `cost of item`,
            Cuisine.Cuisine_name `Cuisine`
	From Restaurant
    Left outer join Menu on menu.restaurant_ID = restaurant.restaurant_ID
    Left outer join Cuisine on menu.cuisine_ID = cuisine.cuisine_ID;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rating_percentage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rating_percentage`(IN text_to_search varchar(30),IN rest_name varchar(40), OUT percentage int)
BEGIN
select concat((round(((count(Rating_comments)/(select count(Rating_comments) 
												FROM rating_restaurent 
inner join Restaurant
on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID where Restaurant_Name = Rest_name)) * 100),0)),' %') AS `Precentage of given text in database`
FROM rating_restaurent 
inner join Restaurant
on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID
WHERE MATCH (Rating_comments)
AGAINST (text_to_search IN NATURAL LANGUAGE MODE)
AND Restaurant_Name = Rest_name;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_top_5_restaurants` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_top_5_restaurants`()
BEGIN
    Select 	Restaurant_Name, rating
    From restaurant
	Left outer join rating_restaurent
    on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID
    Where Rating != null
    order by Rating desc
    LIMIT 5;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_details_of_rest`
--

/*!50001 DROP VIEW IF EXISTS `v_details_of_rest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_details_of_rest` AS select `restaurant`.`Restaurant_Name` AS `Restaurant_Name`,`menu`.`Menu_Type` AS `Menu catagory`,`menu`.`Menu_Name` AS `Menu`,`menu`.`Price` AS `cost of item`,`cuisine`.`Cuisine_Name` AS `Cuisine` from ((`restaurant` left join `menu` on((`menu`.`Restaurant_ID` = `restaurant`.`Restaurant_ID`))) left join `cuisine` on((`menu`.`Cuisine_ID` = `cuisine`.`Cuisine_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_order_history`
--

/*!50001 DROP VIEW IF EXISTS `v_order_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_order_history` AS select `restaurant`.`Restaurant_Name` AS `Restaurant_Name`,`order`.`Order_ID` AS `Order ID`,`order`.`OrderTotal` AS `Order total`,cast(`order`.`Order_Timestamp` as date) AS `Order Placed Date`,`ref_order_status`.`Order_Status_Description` AS `Status`,concat(`address`.`Street`,' ',`address`.`City`,' ',`address`.`State`,' ',`address`.`ZIP`,' ',`address`.`Country`) AS `Restaurant Address`,`payment_method_used`.`Payment_Method_Name` AS `Used Payment Method` from (((((((`order` join `restaurant`) join `ref_order_status`) join `address`) join `payment_method_used`) join `orderline`) join `menu`) join `customer`) where ((`order`.`Order_ID` = `orderline`.`Order_ID`) and (`orderline`.`Menu_ID` = `menu`.`Menu_ID`) and (`menu`.`Restaurant_ID` = `restaurant`.`Restaurant_ID`) and (`restaurant`.`Address_ID` = `address`.`Address_ID`) and (`order`.`Pay_Method_ID` = `payment_method_used`.`Pay_Method_ID`) and (`order`.`Order_Status_ID` = `ref_order_status`.`Order_Status_ID`) and (`order`.`Customer_ID` = `customer`.`Customer_ID`) and (`customer`.`Customer_ID` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_restaurant_list`
--

/*!50001 DROP VIEW IF EXISTS `v_restaurant_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_restaurant_list` AS select distinct `restaurant`.`Restaurant_Name` AS `Restaurant_Name`,`restaurant`.`Opening_Time` AS `Opens_At`,`restaurant`.`Closing_Time` AS `Closes_At`,`restaurant`.`Min_Order_Price` AS `Min_Order_Should_Be`,concat(`address`.`Street`,' ',`address`.`City`,' ',`address`.`State`,' ',`address`.`ZIP`,' ',`address`.`Country`) AS `Address`,(select (case when (max(`rest_discounts`.`Discount_Percentage`) > 0) then max(`rest_discounts`.`Discount_Percentage`) else 'Discount Not Available' end) from `rest_discounts` where (`restaurant`.`Restaurant_ID` = `rest_discounts`.`Restaurant_ID`)) AS `Discount`,(select (case when (`restaurant`.`Delivery_Facility` = 'Y') then ' Delivery Available' when (`restaurant`.`Pickup_Facility` = 'Y') then ' Pickup Available' when (`restaurant`.`Catering_Facility` = 'Y') then ' Catering Available' end)) AS `Delivery Or Pickup`,(select round(avg(`rating_restaurent`.`Rating`),0) from `rating_restaurent` where (`rating_restaurent`.`Restaurant_ID` = `restaurant`.`Restaurant_ID`)) AS `Average_Rating_of_Restaurant` from ((`restaurant` join `address` on((`restaurant`.`Address_ID` = `address`.`Address_ID`))) left join `rest_discounts` on((`restaurant`.`Restaurant_ID` = `rest_discounts`.`Restaurant_ID`))) */;
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

-- Dump completed on 2017-12-13 22:37:37
