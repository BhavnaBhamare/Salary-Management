/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.0.17-MariaDB : Database - salarymanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`salarymanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `salarymanagement`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `aid` int(200) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) DEFAULT NULL,
  `adate` date DEFAULT NULL,
  `emp_id` int(200) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`aid`,`status`,`adate`,`emp_id`) values (5,'Present','2019-03-15',1),(6,'Absent','2019-03-16',1),(7,'Absent','2019-01-08',4),(8,'Present','2019-01-01',4),(9,'Present','2019-03-27',5),(10,'Absent','2019-03-21',5);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` int(200) NOT NULL AUTO_INCREMENT,
  `employeeId` int(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `profileimage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`eid`,`employeeId`,`fname`,`lname`,`email`,`phone`,`gender`,`profileimage`) values (1,2220,'Avinash','Kshirsagar','kshirsagaravinash1@gmail.com','9970113773','Male','emp2.jpg'),(2,1998,'Sanjana','patil','sanjana','9850151523','Female','emp3.jpg'),(3,1431,'Rahul','Jagdale','rahul@gmail.com','9874125630','Male','emp1.jpg'),(4,7412,'Mahi','Kalburgi','mahi@gmail.com','7715452132','Female','emp3.jpg'),(5,8049,'saurabh','kumar','kumar@gmail.com','7525123212','Male','Koala.jpg');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `rid` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `roleid` int(200) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `register_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`rid`,`name`,`email`,`password`,`roleid`) values (2,'sukesh','admin@gmail.com','123',2);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `roleid` int(200) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`roleid`,`rolename`) values (1,'Admin'),(2,'Employee');

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `sid` int(200) NOT NULL AUTO_INCREMENT,
  `salary` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `emp_id` int(200) DEFAULT NULL,
  `month` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

insert  into `salary`(`sid`,`salary`,`bonus`,`total`,`emp_id`,`month`) values (1,15000,1000,16000,1,'March'),(2,25000,1000,26000,2,'March'),(3,20000,1500,21500,3,'March'),(4,22000,1500,23500,4,'May'),(5,15000,1000,16000,5,'March');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
