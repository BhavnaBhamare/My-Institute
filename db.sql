/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.0.17-MariaDB : Database - helpdesk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`helpdesk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `helpdesk`;

/*Table structure for table `admission` */

DROP TABLE IF EXISTS `admission`;

CREATE TABLE `admission` (
  `addid` int(20) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `internship` varchar(50) NOT NULL,
  `batchcode` varchar(20) NOT NULL,
  `batchtime` varchar(20) NOT NULL,
  `totalfees` int(11) NOT NULL,
  `finst` int(11) NOT NULL,
  `admdate` varchar(10) NOT NULL,
  `photo` varchar(200) NOT NULL,
  PRIMARY KEY (`addid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admission` */

insert  into `admission`(`addid`,`fname`,`lname`,`email`,`contact`,`internship`,`batchcode`,`batchtime`,`totalfees`,`finst`,`admdate`,`photo`) values 
(1,'Tanuja','Patare','pataretanuja59@gmail.com','9503726508','Core Java','101','9-11 am',10000,3000,'2019-05-20',''),
(2,'Atul','Patare','ap@gmail.com','9765342312','Hibernate','105','3-5 pm',15000,5000,'2019-07-20','');

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `enqid` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `graduation` varchar(50) DEFAULT NULL,
  `yearofpass` int(4) DEFAULT NULL,
  `internship` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`enqid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `enquiry` */

insert  into `enquiry`(`enqid`,`fname`,`lname`,`email`,`contact`,`photo`,`graduation`,`yearofpass`,`internship`) values 
(1,'Tanuja','Patare','pataretanuja59@gmail.com','9503726508','','B.E/BTech',2019,'Core Java'),
(2,'Atul','Patare','ap@gmail.com','9765342312','','B.E/BTech',2019,'Advance Java');

/*Table structure for table `fees` */

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `feeid` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `totalfees` int(11) NOT NULL,
  `finst` int(10) NOT NULL,
  `fdate` varchar(10) NOT NULL,
  `sinst` int(10) NOT NULL,
  `sdate` varchar(10) NOT NULL,
  `tinst` int(10) NOT NULL,
  `tdate` varchar(10) NOT NULL,
  `rbalance` int(10) NOT NULL,
  `admid` int(11) DEFAULT NULL,
  PRIMARY KEY (`feeid`),
  KEY `admid` (`admid`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`admid`) REFERENCES `admission` (`addid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `fees` */

insert  into `fees`(`feeid`,`fname`,`lname`,`totalfees`,`finst`,`fdate`,`sinst`,`sdate`,`tinst`,`tdate`,`rbalance`,`admid`) values 
(2,'Tanuja','Patare',10000,3000,'2019-05-20',3000,'2019-07-20',2000,'2019-07-21',2000,1),
(3,'Atul','Patare',15000,5000,'2019-07-20',5000,'2019-07-26',0,'2019-07-26',5000,2);

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `tmarks` int(11) DEFAULT NULL,
  `omarks` int(11) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `grade` */

insert  into `grade`(`gid`,`name`,`course`,`tmarks`,`omarks`,`status`) values 
(2,'Tanuja Patare','Core Java',50,35,'Pass');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `mid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `msgdate` date NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message` */

/*Table structure for table `placement` */

DROP TABLE IF EXISTS `placement`;

CREATE TABLE `placement` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `package` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `placement` */

insert  into `placement`(`pid`,`name`,`company`,`profile`,`package`) values 
(1,'Arun Dalvi','IBM','Java Developer','3lack'),
(2,'aaa','IBM','Java Developer','3lack');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `regid` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`regid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`regid`,`fname`,`lname`,`username`,`password`,`email`,`contact`) values 
(1,'Tanuja','Patare','tanuja','t@1234','pataretanuja59@gmail.com','9503726508');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
