-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2019 at 11:51 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sql_injection`
--
CREATE DATABASE IF NOT EXISTS `sql_injection` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql_injection`;
-- --------------------------------------------------------

--
-- Table structure for table `admins_uploadmodel`
--

CREATE TABLE IF NOT EXISTS `admins_uploadmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(150) NOT NULL,
  `file` varchar(100) NOT NULL,
  `decsription` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admins_uploadmodel`
--

INSERT INTO `admins_uploadmodel` (`id`, `file_name`, `file`, `decsription`) VALUES
(1, 'Data', 'ABSTRACT.docx', 'data is very important'),
(2, 'project', 'links.txt', 'profit details'),
(3, 'medical data', 'watermark_key.txt', 'confidential data'),
(4, 'media', 'Book1.xlsx', 'secured data'),
(5, 'office file', 'Assessing_the_effectiveness_of_riparian_restoration_projects_using_Landsat_and.pdf', 'very important');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add register model', 7, 'add_registermodel'),
(20, 'Can change register model', 7, 'change_registermodel'),
(21, 'Can delete register model', 7, 'delete_registermodel'),
(22, 'Can add upload model', 8, 'add_uploadmodel'),
(23, 'Can change upload model', 8, 'change_uploadmodel'),
(24, 'Can delete upload model', 8, 'delete_uploadmodel'),
(25, 'Can add phishing model', 9, 'add_phishingmodel'),
(26, 'Can change phishing model', 9, 'change_phishingmodel'),
(27, 'Can delete phishing model', 9, 'delete_phishingmodel'),
(28, 'Can add sql model', 10, 'add_sqlmodel'),
(29, 'Can change sql model', 10, 'change_sqlmodel'),
(30, 'Can delete sql model', 10, 'delete_sqlmodel'),
(31, 'Can add website model', 11, 'add_websitemodel'),
(32, 'Can change website model', 11, 'change_websitemodel'),
(33, 'Can delete website model', 11, 'delete_websitemodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'admins', 'uploadmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'user', 'phishingmodel'),
(7, 'user', 'registermodel'),
(10, 'user', 'sqlmodel'),
(11, 'user', 'websitemodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-18 10:07:58.967946'),
(2, 'auth', '0001_initial', '2019-03-18 10:08:26.324990'),
(3, 'admin', '0001_initial', '2019-03-18 10:08:30.566996'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-18 10:08:30.611996'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-03-18 10:08:31.561998'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-03-18 10:08:32.560001'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-03-18 10:08:38.201010'),
(8, 'auth', '0004_alter_user_username_opts', '2019-03-18 10:08:38.236010'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-03-18 10:08:39.011011'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-03-18 10:08:39.036011'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-03-18 10:08:39.081011'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-03-18 10:08:39.656012'),
(13, 'sessions', '0001_initial', '2019-03-18 10:08:40.897014'),
(14, 'user', '0001_initial', '2019-03-18 10:08:41.468015'),
(15, 'admins', '0001_initial', '2019-03-18 13:10:52.901871'),
(16, 'user', '0002_phishingmodel', '2019-03-18 13:36:28.016624'),
(17, 'user', '0003_auto_20190318_1930', '2019-03-18 14:00:19.046004'),
(18, 'user', '0004_websitemodel', '2019-03-29 11:27:32.828004');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w0hmhwsjtvpslo08jisuerknfoeaqagf', 'ZjNkYWQ3OTgxMjM4MDFiMzI2NzI0ZmMxOTEyYmNiOTI3ZjEzYTA2Nzp7InVzZXJpZCI6MX0=', '2019-04-01 14:43:51.342036'),
('y3wiycnvb30c7qvr27r9rqqczfw2935r', 'ZjNkYWQ3OTgxMjM4MDFiMzI2NzI0ZmMxOTEyYmNiOTI3ZjEzYTA2Nzp7InVzZXJpZCI6MX0=', '2019-04-12 10:50:49.810618');

-- --------------------------------------------------------

--
-- Table structure for table `user_registermodel`
--

CREATE TABLE IF NOT EXISTS `user_registermodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `password` int(11) NOT NULL,
  `mblenum` bigint(20) NOT NULL,
  `email` varchar(400) NOT NULL,
  `gender` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_registermodel`
--

INSERT INTO `user_registermodel` (`id`, `firstname`, `lastname`, `userid`, `password`, `mblenum`, `email`, `gender`) VALUES
(1, 'santhosh', 'kumar', 'santhosh', 1998, 9789672189, 'sabarinathan1350@gmail.com', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_sqlmodel`
--

CREATE TABLE IF NOT EXISTS `user_sqlmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attack_type` varchar(100) NOT NULL,
  `text` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `user_sqlmodel`
--

INSERT INTO `user_sqlmodel` (`id`, `attack_type`, `text`) VALUES
(1, 'No SQL Injection Attack', 'sdfdfgdfg'),
(3, 'Predicates', 'https://www.google.com/search?q=ghg&oq=ghg&aqs=chrome..69i57j0l5.1681j0j4&sourceid=chrome&ie=UTF-8/loginName'),
(4, 'No SQL Injection Attack', 'https://www.google.com/search?q=fg&oq=fg&aqs=chrome..69i57j0l5.1136j0j7&sourceid=chrome&ie=UTF-8'),
(5, 'Clauses', 'https://www.google.com/search?q=ghg&oq=ghg&aqs=chrome..69i57j0l5.1681j0j4&sourceid=chrome&ie=UTF-8/SET'),
(6, 'Predicates', 'https://www.google.com/search?ei=IqWPXJ2JGdf39QPLoZ_AAw&q=ghqwewre&oq=ghqwewre&gs_l=psy-ab.3..0i13j0i13i10j0i13j0i13i10i30l2.4579.5302..6100...0.0..1.211.1017.0j5j1......0....1..gws-wiz.......0i71j35i39j0i67j0j0i131.WzJIfz5BkhE/bob'),
(7, 'Expressions', 'https://www.google.com/search?q=cgb&oq=cgb&aqs=chrome..69i57j0l5.1198j0j7&sourceid=chrome&ie/OR=UTF-8'),


-- --------------------------------------------------------

--
-- Table structure for table `user_websitemodel`
--

CREATE TABLE IF NOT EXISTS `user_websitemodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txt` varchar(500) NOT NULL,
  `rest` varchar(200) NOT NULL,
  `usid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_websitemodel_usid_id_2ebb93bb_fk_user_registermodel_id` (`usid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `user_websitemodel`
--

INSERT INTO `user_websitemodel` (`id`, `txt`, `rest`, `usid_id`) VALUES
(11, ' http://localhost/phpmyadmin/index.php?token=f1371f7d660e88b3ceea2ce20af62bea#PMAURL-2:sql.php?db=imagetotext&table=user_registermodel&server=1&target=&token=f1371f7d660e88b3ceea2ce20af62bea', 'Attack Is Not Detected', 1),
(12, ' https://mail.google.com/mail/u/0/?tab=rm#search/sql?projector=1/1=1', ' Attack Is Detected', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_websitemodel`
--
ALTER TABLE `user_websitemodel`
  ADD CONSTRAINT `user_websitemodel_usid_id_2ebb93bb_fk_user_registermodel_id` FOREIGN KEY (`usid_id`) REFERENCES `user_registermodel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
