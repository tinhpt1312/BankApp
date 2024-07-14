-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bankapp
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `modified_at` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('1a764b5d-83e9-442f-8b35-9e9f936144fe','2024746133',10000.00,'SUCCESS','CREDIT','2024-07-15','2024-07-15'),('2e8aa36b-bfa9-4f51-a4b6-44b585e1cd82','2024388985',10000.00,'SUCCESS','DEBIT','2024-06-24','2024-06-24'),('5f03380a-1d89-4121-8616-f3ad6b4c207e','2024388985',10000.00,'SUCCESS','CREDIT','2024-07-15','2024-07-15'),('6e022cdf-ef85-46f6-a34f-96e69fbe3699','2024388985',10000.00,'SUCCESS','CREDIT','2024-06-24','2024-06-24'),('7ff16776-945d-4258-8ced-598d342e3ee2','2024388985',10000.00,'SUCCESS','DEBIT','2024-05-11','2024-05-11'),('9f09d336-75d5-44a1-bd30-4a57f4fc84a8','2024388985',10000.00,'SUCCESS','CREDIT','2024-07-15','2024-07-15'),('aee76a7c-ef37-4d72-8c22-37ce76e31469','2024388985',10000.00,'SUCCESS','CREDIT','2024-07-15','2024-07-15'),('c0c143dd-b219-4f92-9153-4bf6d472e179','2024388985',10000.00,'SUCCESS','CREDIT','2024-06-01','2024-06-01'),('f2a5261d-67a4-40f6-93ef-2dfda0e6d1e2','2024388985',10000.00,'SUCCESS','TRANSFER','2024-06-22','2024-06-22');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_balance` decimal(38,2) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `alternative_phone_number` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `state_of_origin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `users_chk_1` CHECK ((`role` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,60000.00,'2024479012','36, 120 street, Thu Duc city, HCM city','000222211111','2024-06-24 11:10:24.397263','tinh.phamthe1312@gmail.com','Vivian','fenale','Afogu','2024-07-15 01:04:16.362518','Chidinma','00011112222222','Abia','ACTIVE','$2a$10$kJXJOl/cGZ3u4/yEvuzZ0uM7LPsGF04XFO9hlP1aBJpvQo90zt2QW',0),(2,318000.00,'2024388985','36, 120 street, Thu Duc city, HCM city','000222211111','2024-06-24 12:04:11.811222','phamthetinhcop1312@gmail.com','Pham','male','The','2024-07-15 01:02:34.781201','Tinh','00011112222222','Abia','ACTIVE','$2a$10$.vD9sbhih8GGCPVkbZbVAOyUkx6OF20NUy4i38u0JQdseD6r/2bTi',0),(9,10000.00,'2024746133','Dak Mil, Dak Nong','0869321123','2024-07-15 00:22:10.463732','tinhusechatgpt@gmail.com','Hoang','Male','Vo','2024-07-15 00:25:59.777113','Van','0332123942','VietNam','ACTIVE','$2a$10$Z277aAdupNDclSb89isnj.GKVHPIHRtDm5ihbNSMhapU98uuHwSie',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-15  1:06:09
