-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2025 at 08:42 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add userregistration', 7, 'add_userregistration'),
(26, 'Can change userregistration', 7, 'change_userregistration'),
(27, 'Can delete userregistration', 7, 'delete_userregistration'),
(28, 'Can view userregistration', 7, 'view_userregistration'),
(29, 'Can add registration', 8, 'add_registration'),
(30, 'Can change registration', 8, 'change_registration'),
(31, 'Can delete registration', 8, 'delete_registration'),
(32, 'Can view registration', 8, 'view_registration'),
(33, 'Can add subcategory', 9, 'add_subcategory'),
(34, 'Can change subcategory', 9, 'change_subcategory'),
(35, 'Can delete subcategory', 9, 'delete_subcategory'),
(36, 'Can view subcategory', 9, 'view_subcategory'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add product_unit', 12, 'add_product_unit'),
(46, 'Can change product_unit', 12, 'change_product_unit'),
(47, 'Can delete product_unit', 12, 'delete_product_unit'),
(48, 'Can view product_unit', 12, 'view_product_unit'),
(49, 'Can add wishlist', 13, 'add_wishlist'),
(50, 'Can change wishlist', 13, 'change_wishlist'),
(51, 'Can delete wishlist', 13, 'delete_wishlist'),
(52, 'Can view wishlist', 13, 'view_wishlist'),
(53, 'Can add cartdata', 14, 'add_cartdata'),
(54, 'Can change cartdata', 14, 'change_cartdata'),
(55, 'Can delete cartdata', 14, 'delete_cartdata'),
(56, 'Can view cartdata', 14, 'view_cartdata'),
(57, 'Can add upi', 15, 'add_upi'),
(58, 'Can change upi', 15, 'change_upi'),
(59, 'Can delete upi', 15, 'delete_upi'),
(60, 'Can view upi', 15, 'view_upi'),
(61, 'Can add cashondelivery', 16, 'add_cashondelivery'),
(62, 'Can change cashondelivery', 16, 'change_cashondelivery'),
(63, 'Can delete cashondelivery', 16, 'delete_cashondelivery'),
(64, 'Can view cashondelivery', 16, 'view_cashondelivery'),
(65, 'Can add card', 17, 'add_card'),
(66, 'Can change card', 17, 'change_card'),
(67, 'Can delete card', 17, 'delete_card'),
(68, 'Can view card', 17, 'view_card'),
(69, 'Can add finalprice', 18, 'add_finalprice'),
(70, 'Can change finalprice', 18, 'change_finalprice'),
(71, 'Can delete finalprice', 18, 'delete_finalprice'),
(72, 'Can view finalprice', 18, 'view_finalprice'),
(73, 'Can add finalorder', 19, 'add_finalorder'),
(74, 'Can change finalorder', 19, 'change_finalorder'),
(75, 'Can delete finalorder', 19, 'delete_finalorder'),
(76, 'Can view finalorder', 19, 'view_finalorder');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$lXq49INbAEtJXjekLp3OhK$qQKuMjhOkfYTcpXU4K+290YsZG0NDHWyiZvXxsK2+i4=', '2025-01-21 07:52:58.999051', 1, 'vandana', '', '', 'vandana@gmail.com', 1, 1, '2024-12-05 12:24:00.099201'),
(2, 'pbkdf2_sha256$870000$Mgyv0v8MS3ClB4p1HI7EfL$zlb9j/LGX7ElTVryjU4KOjtOW3cgN5gdSpyNLQWurtM=', '2024-12-13 07:13:01.273307', 1, 'admin', '', '', '', 1, 1, '2024-12-10 02:24:05.990084'),
(3, 'pbkdf2_sha256$870000$t3ItD4Q2Ts1xlAIYKJHCWo$SE6q9KOlCUzs1YcFE92OysQL2/1X7W5SV++9YfFN7kI=', NULL, 0, 'Naz Padhiyar', '', '', 'rop@gmail.com', 0, 1, '2024-12-10 14:08:33.407256');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-12-05 12:24:40.831331', '1', 'vandana', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-12-07 11:28:50.038391', '1', 'fruits &vegitables', 1, '[{\"added\": {}}]', 11, 1),
(3, '2024-12-07 11:29:18.895168', '1', 'fresh fruit', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-12-07 11:29:27.920407', '2', 'vagitables', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-12-07 11:29:55.370424', '1', 'banana', 1, '[{\"added\": {}}]', 10, 1),
(6, '2024-12-07 11:37:13.343134', '2', 'fruits &vegitables', 1, '[{\"added\": {}}]', 11, 1),
(7, '2024-12-07 11:37:43.340718', '1', 'fruits &vegitables', 3, '', 11, 1),
(8, '2024-12-07 11:45:54.262622', '2', 'fruits &vegitables', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 1),
(9, '2024-12-07 13:28:27.042730', '3', 'banana', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-12-07 13:48:26.024106', '4', 'tomato', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-12-07 13:49:02.955940', '2', 'smalltomato', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-12-07 13:51:47.193152', '2', 'smalltomato', 2, '[]', 10, 1),
(13, '2024-12-07 13:52:43.654457', '3', 'green banana', 1, '[{\"added\": {}}]', 10, 1),
(14, '2024-12-07 13:53:56.149524', '3', 'dairy', 1, '[{\"added\": {}}]', 11, 1),
(15, '2024-12-07 13:54:09.950683', '4', 'beauty', 1, '[{\"added\": {}}]', 11, 1),
(16, '2024-12-07 13:54:22.112464', '5', 'cookies', 1, '[{\"added\": {}}]', 11, 1),
(17, '2024-12-07 13:54:39.700854', '5', 'foundation', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-12-07 13:54:54.409919', '6', 'chocolate', 1, '[{\"added\": {}}]', 9, 1),
(19, '2024-12-07 13:55:17.898023', '4', 'big', 1, '[{\"added\": {}}]', 10, 1),
(20, '2024-12-07 13:55:34.905522', '5', 'tomato', 1, '[{\"added\": {}}]', 10, 1),
(21, '2024-12-07 14:00:37.880358', '3', 'dairy', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 1),
(22, '2024-12-07 14:00:51.739908', '2', 'fruits &vegitables', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 1),
(23, '2024-12-07 14:01:24.942750', '6', 'dairy', 1, '[{\"added\": {}}]', 11, 1),
(24, '2024-12-07 14:01:34.943591', '7', 'fruits &vegitables', 1, '[{\"added\": {}}]', 11, 1),
(25, '2024-12-07 14:01:43.758505', '8', 'vegitables', 1, '[{\"added\": {}}]', 11, 1),
(26, '2024-12-07 14:03:58.628373', '7', 'fresh fruits', 1, '[{\"added\": {}}]', 9, 1),
(27, '2024-12-07 14:04:06.701209', '8', 'banana', 1, '[{\"added\": {}}]', 9, 1),
(28, '2024-12-07 14:04:23.348813', '9', 'banana', 1, '[{\"added\": {}}]', 9, 1),
(29, '2024-12-07 14:04:50.538627', '10', 'banana', 1, '[{\"added\": {}}]', 9, 1),
(30, '2024-12-07 14:05:14.381044', '11', 'fresh fruits', 1, '[{\"added\": {}}]', 9, 1),
(31, '2024-12-07 14:08:05.688180', '6', 'tomato', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-12-07 14:08:22.205007', '7', 'green banana', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-12-07 14:08:48.328087', '8', 'banana', 1, '[{\"added\": {}}]', 10, 1),
(34, '2024-12-07 14:11:54.741722', '7', 'fresh fruits', 2, '[]', 9, 1),
(35, '2024-12-07 14:12:02.139806', '5', 'cookies', 2, '[]', 11, 1),
(36, '2024-12-09 16:10:35.802304', '1', 'product_unit object (1)', 1, '[{\"added\": {}}]', 12, 1),
(37, '2024-12-09 16:10:51.280719', '2', 'product_unit object (2)', 1, '[{\"added\": {}}]', 12, 1),
(38, '2024-12-09 16:37:25.260457', '5', 'tomato', 3, '', 10, 1),
(39, '2024-12-09 16:51:20.851358', '3', 'product_unit object (3)', 1, '[{\"added\": {}}]', 12, 1),
(40, '2024-12-09 16:51:34.182142', '4', 'product_unit object (4)', 1, '[{\"added\": {}}]', 12, 1),
(41, '2024-12-09 17:49:43.407720', '5', 'product_unit object (5)', 1, '[{\"added\": {}}]', 12, 1),
(42, '2024-12-09 17:50:28.921676', '6', 'product_unit object (6)', 1, '[{\"added\": {}}]', 12, 1),
(43, '2024-12-10 02:33:47.875605', '9', 'fruits & vegetables', 1, '[{\"added\": {}}]', 11, 2),
(44, '2024-12-10 02:42:00.545230', '9', 'Fruits & Vegetables', 2, '[{\"changed\": {\"fields\": [\"Catname\"]}}]', 11, 2),
(45, '2024-12-10 02:51:29.231036', '10', 'Dairy Items', 1, '[{\"added\": {}}]', 11, 2),
(46, '2024-12-10 03:13:50.983516', '10', 'Dairy Items', 3, '', 11, 2),
(47, '2024-12-10 03:13:50.983657', '9', 'Fruits & Vegetables', 3, '', 11, 2),
(48, '2024-12-10 03:14:08.988477', '11', 'Fruits & Vegetables', 1, '[{\"added\": {}}]', 11, 2),
(49, '2024-12-10 03:14:32.846009', '12', 'Dairy Items', 1, '[{\"added\": {}}]', 11, 2),
(50, '2024-12-10 03:15:04.572935', '13', 'Snacks & Sweets', 1, '[{\"added\": {}}]', 11, 2),
(51, '2024-12-10 03:15:34.625725', '14', 'Beauty Products', 1, '[{\"added\": {}}]', 11, 2),
(52, '2024-12-10 03:16:20.820847', '15', 'Cooking Essentials', 1, '[{\"added\": {}}]', 11, 2),
(53, '2024-12-10 03:20:48.091111', '14', 'Beauty Products', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 2),
(54, '2024-12-10 03:22:49.291609', '13', 'Snacks & Sweets', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 2),
(55, '2024-12-10 03:38:57.272373', '12', 'Fruits', 1, '[{\"added\": {}}]', 9, 2),
(56, '2024-12-10 03:43:11.222325', '11', 'fresh fruits', 3, '', 9, 2),
(57, '2024-12-10 03:43:11.222443', '10', 'banana', 3, '', 9, 2),
(58, '2024-12-10 03:43:11.222493', '9', 'banana', 3, '', 9, 2),
(59, '2024-12-10 03:43:11.222539', '8', 'banana', 3, '', 9, 2),
(60, '2024-12-10 03:43:11.222582', '7', 'fresh fruits', 3, '', 9, 2),
(61, '2024-12-10 03:43:11.222627', '6', 'chocolate', 3, '', 9, 2),
(62, '2024-12-10 03:43:11.222670', '5', 'foundation', 3, '', 9, 2),
(63, '2024-12-10 03:43:11.222713', '4', 'tomato', 3, '', 9, 2),
(64, '2024-12-10 03:43:11.222756', '3', 'banana', 3, '', 9, 2),
(65, '2024-12-10 03:43:32.452937', '13', 'Milk', 1, '[{\"added\": {}}]', 9, 2),
(66, '2024-12-10 03:43:50.774251', '13', 'Milk', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(67, '2024-12-10 03:44:11.359166', '13', 'Milk', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(68, '2024-12-10 03:45:56.418704', '13', 'Milk', 3, '', 9, 2),
(69, '2024-12-10 03:46:53.506632', '14', 'vegitables', 1, '[{\"added\": {}}]', 9, 2),
(70, '2024-12-10 03:49:08.408881', '12', 'Fruits', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(71, '2024-12-10 03:50:32.081733', '14', 'vegitables', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(72, '2024-12-10 03:52:09.256990', '14', 'vegitables', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(73, '2024-12-10 03:56:21.718199', '9', 'Tomato', 1, '[{\"added\": {}}]', 10, 2),
(74, '2024-12-10 04:32:54.144668', '9', 'Tomato', 3, '', 10, 2),
(75, '2024-12-10 04:33:32.395791', '10', 'potato', 1, '[{\"added\": {}}]', 10, 2),
(76, '2024-12-10 12:55:49.072444', '10', 'Potato', 2, '[{\"changed\": {\"fields\": [\"Productname\"]}}]', 10, 2),
(77, '2024-12-10 12:56:06.914883', '14', 'Vegitables', 2, '[{\"changed\": {\"fields\": [\"Categoryname\"]}}]', 9, 2),
(78, '2024-12-10 12:57:22.898753', '11', 'Raddis', 1, '[{\"added\": {}}]', 10, 2),
(79, '2024-12-10 12:58:01.744825', '11', 'Raddis', 3, '', 10, 2),
(80, '2024-12-10 12:59:20.693996', '15', 'Drinks', 1, '[{\"added\": {}}]', 9, 2),
(81, '2024-12-10 12:59:55.030226', '16', 'Chocolates', 1, '[{\"added\": {}}]', 9, 2),
(82, '2024-12-10 13:00:39.229830', '17', 'Cookies & Biscuits', 1, '[{\"added\": {}}]', 9, 2),
(83, '2024-12-10 13:01:12.790046', '18', 'Noodels & Pasta', 1, '[{\"added\": {}}]', 9, 2),
(84, '2024-12-10 14:18:31.886861', '18', 'Noodels & Pasta', 2, '[]', 9, 2),
(85, '2024-12-10 14:18:35.696287', '17', 'Cookies & Biscuits', 2, '[]', 9, 2),
(86, '2024-12-10 14:18:43.395124', '16', 'Chocolates', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(87, '2024-12-10 14:19:17.338455', '15', 'Drinks', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(88, '2024-12-10 14:19:50.290448', '18', 'Noodels & Pasta', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(89, '2024-12-10 14:25:42.331775', '19', 'Cookies & Biscuits', 1, '[{\"added\": {}}]', 9, 2),
(90, '2024-12-10 14:26:17.181864', '17', 'Cookies & Biscuits', 3, '', 9, 2),
(91, '2024-12-10 14:27:40.062251', '20', 'Freezer Items', 1, '[{\"added\": {}}]', 9, 2),
(92, '2024-12-10 14:31:10.207673', '21', 'Milk', 1, '[{\"added\": {}}]', 9, 2),
(93, '2024-12-10 14:33:50.757017', '22', 'Curds', 1, '[{\"added\": {}}]', 9, 2),
(94, '2024-12-10 14:38:01.479302', '23', 'Butter Milk', 1, '[{\"added\": {}}]', 9, 2),
(95, '2024-12-10 14:40:55.456427', '13', 'Snacks & Sweets', 2, '[{\"changed\": {\"fields\": [\"Catimage\"]}}]', 11, 2),
(96, '2024-12-10 14:44:38.555644', '24', 'Hair Care', 1, '[{\"added\": {}}]', 9, 2),
(97, '2024-12-10 14:46:41.979542', '25', 'Hand Wash & Bath Care', 1, '[{\"added\": {}}]', 9, 2),
(98, '2024-12-10 14:49:55.847730', '24', 'Hair Care', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(99, '2024-12-10 14:53:09.088326', '26', 'Makeup Products', 1, '[{\"added\": {}}]', 9, 2),
(100, '2024-12-10 15:00:39.612044', '27', 'Skin Care', 1, '[{\"added\": {}}]', 9, 2),
(101, '2024-12-10 15:01:21.147356', '28', 'Dals & Pulses', 1, '[{\"added\": {}}]', 9, 2),
(102, '2024-12-10 15:03:02.491868', '29', 'Masala , Spices & Mukhwas', 1, '[{\"added\": {}}]', 9, 2),
(103, '2024-12-10 15:06:23.564296', '30', 'Atta , Flours & Sooji', 1, '[{\"added\": {}}]', 9, 2),
(104, '2024-12-10 15:08:21.515692', '16', 'Chocolates', 2, '[]', 9, 2),
(105, '2024-12-10 15:08:57.151371', '31', 'Rice', 1, '[{\"added\": {}}]', 9, 2),
(106, '2024-12-10 15:14:34.237898', '32', 'Edible Oils', 1, '[{\"added\": {}}]', 9, 2),
(107, '2024-12-10 16:42:09.642566', '12', 'Bringle', 1, '[{\"added\": {}}]', 10, 2),
(108, '2024-12-10 16:43:55.426827', '13', 'Cookies', 1, '[{\"added\": {}}]', 10, 2),
(109, '2024-12-11 06:31:03.824105', '33', 'Indian Sweets', 1, '[{\"added\": {}}]', 9, 2),
(110, '2024-12-11 06:49:37.888360', '34', 'Deo & Fragrances', 1, '[{\"added\": {}}]', 9, 2),
(111, '2024-12-11 06:55:21.112758', '34', 'Deo & Fragrances', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(112, '2024-12-11 06:56:12.469693', '34', 'Deo & Fragrances', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 9, 2),
(113, '2024-12-11 07:01:01.395763', '35', 'Roots , Herbs & Other', 1, '[{\"added\": {}}]', 9, 2),
(114, '2024-12-11 07:04:49.213380', '36', 'Breads & Buns', 1, '[{\"added\": {}}]', 9, 2),
(115, '2024-12-11 07:05:08.230461', '12', 'Dairy Items', 3, '', 11, 2),
(116, '2024-12-11 07:05:47.895771', '16', 'Dairy Items', 1, '[{\"added\": {}}]', 11, 2),
(117, '2024-12-11 07:06:55.447037', '37', 'Milk', 1, '[{\"added\": {}}]', 9, 2),
(118, '2024-12-11 07:07:41.289035', '38', 'Cheese & Butter', 1, '[{\"added\": {}}]', 9, 2),
(119, '2024-12-11 07:08:02.314311', '39', 'Breads & Buns', 1, '[{\"added\": {}}]', 9, 2),
(120, '2024-12-11 07:08:27.691680', '40', 'Curd Products', 1, '[{\"added\": {}}]', 9, 2),
(121, '2024-12-11 11:37:13.961062', '41', 'Butter Milk', 1, '[{\"added\": {}}]', 9, 2),
(122, '2024-12-11 11:40:28.092504', '13', 'Cookies', 3, '', 10, 2),
(123, '2024-12-11 11:40:28.092504', '12', 'Bringle', 3, '', 10, 2),
(124, '2024-12-11 11:40:28.092504', '10', 'Potato', 3, '', 10, 2),
(125, '2024-12-11 11:47:13.753982', '14', 'Potato', 1, '[{\"added\": {}}]', 10, 2),
(126, '2024-12-11 11:47:57.209856', '15', 'Bringle', 1, '[{\"added\": {}}]', 10, 2),
(127, '2024-12-11 11:48:12.831157', '14', 'Potato', 3, '', 10, 2),
(128, '2024-12-11 11:49:52.371064', '16', 'Potato', 1, '[{\"added\": {}}]', 10, 2),
(129, '2024-12-11 11:50:05.438756', '16', 'Potato', 3, '', 10, 2),
(130, '2024-12-11 11:51:10.345253', '17', 'Tomato', 1, '[{\"added\": {}}]', 10, 2),
(131, '2024-12-11 11:52:29.083951', '18', 'Potato', 1, '[{\"added\": {}}]', 10, 2),
(132, '2024-12-11 11:55:15.468957', '19', 'Onions', 1, '[{\"added\": {}}]', 10, 2),
(133, '2024-12-11 11:59:45.974927', '20', 'Green Hot Chilli', 1, '[{\"added\": {}}]', 10, 2),
(134, '2024-12-11 12:01:49.410423', '21', 'Pumkin', 1, '[{\"added\": {}}]', 10, 2),
(135, '2024-12-11 12:11:25.797820', '22', 'Red Hot Chilli', 1, '[{\"added\": {}}]', 10, 2),
(136, '2024-12-11 12:12:11.858134', '23', 'White Cabage', 1, '[{\"added\": {}}]', 10, 2),
(137, '2024-12-11 12:13:04.966603', '24', 'Red Bell Paper', 1, '[{\"added\": {}}]', 10, 2),
(138, '2024-12-11 12:13:37.125613', '24', 'Green Bell Paper', 2, '[{\"changed\": {\"fields\": [\"Productname\", \"Productimage\", \"Productdesc\"]}}]', 10, 2),
(139, '2024-12-11 12:14:34.650090', '25', 'Purple Cabage', 1, '[{\"added\": {}}]', 10, 2),
(140, '2024-12-11 12:14:56.190230', '25', 'Purple Cabage', 3, '', 10, 2),
(141, '2024-12-11 12:14:56.190230', '20', 'Green Hot Chilli', 3, '', 10, 2),
(142, '2024-12-11 12:15:29.021613', '24', 'Green Bell Paper', 3, '', 10, 2),
(143, '2024-12-11 12:15:29.021613', '21', 'Pumkin', 3, '', 10, 2),
(144, '2024-12-11 12:15:49.260830', '23', 'White Cabage', 3, '', 10, 2),
(145, '2024-12-11 12:19:18.946542', '26', 'Apple', 1, '[{\"added\": {}}]', 10, 2),
(146, '2024-12-11 12:27:49.546439', '27', 'Grapes', 1, '[{\"added\": {}}]', 10, 2),
(147, '2024-12-11 12:28:25.985948', '28', 'PineApple', 1, '[{\"added\": {}}]', 10, 2),
(148, '2024-12-11 12:29:01.245945', '29', 'Mango', 1, '[{\"added\": {}}]', 10, 2),
(149, '2024-12-11 12:32:57.571471', '30', 'Ginger', 1, '[{\"added\": {}}]', 10, 2),
(150, '2024-12-11 12:33:32.805649', '31', 'Garlic', 1, '[{\"added\": {}}]', 10, 2),
(151, '2024-12-11 12:37:01.710979', '32', 'Coconut', 1, '[{\"added\": {}}]', 10, 2),
(152, '2024-12-11 12:37:31.808644', '33', 'Rosemary', 1, '[{\"added\": {}}]', 10, 2),
(153, '2024-12-11 12:46:17.841863', '33', 'Rosemary', 2, '[]', 10, 2),
(154, '2024-12-11 12:47:23.087353', '34', 'Chhana Dal', 1, '[{\"added\": {}}]', 10, 2),
(155, '2024-12-11 12:48:01.948045', '35', 'Moong Dal', 1, '[{\"added\": {}}]', 10, 2),
(156, '2024-12-11 12:48:27.973626', '36', 'Toor Dal', 1, '[{\"added\": {}}]', 10, 2),
(157, '2024-12-11 12:49:01.163258', '37', 'Masoor Dal', 1, '[{\"added\": {}}]', 10, 2),
(158, '2024-12-11 12:55:44.735392', '38', 'Red Chilli Powder', 1, '[{\"added\": {}}]', 10, 2),
(159, '2024-12-11 12:56:22.683632', '39', 'Turmeric Powder', 1, '[{\"added\": {}}]', 10, 2),
(160, '2024-12-11 12:57:07.676835', '40', 'Coriander', 1, '[{\"added\": {}}]', 10, 2),
(161, '2024-12-11 12:57:26.517104', '40', 'Coriander Powder', 2, '[{\"changed\": {\"fields\": [\"Productname\", \"Productdesc\"]}}]', 10, 2),
(162, '2024-12-11 12:57:58.164966', '41', 'Salt', 1, '[{\"added\": {}}]', 10, 2),
(163, '2024-12-11 13:05:15.288120', '42', 'Wheat Flour', 1, '[{\"added\": {}}]', 10, 2),
(164, '2024-12-11 13:05:41.165367', '43', 'Gram Flour', 1, '[{\"added\": {}}]', 10, 2),
(165, '2024-12-11 13:06:21.770687', '44', 'All Purpose Flour', 1, '[{\"added\": {}}]', 10, 2),
(166, '2024-12-11 13:06:47.863654', '45', 'Sooji', 1, '[{\"added\": {}}]', 10, 2),
(167, '2024-12-11 13:12:50.631600', '46', 'White Rice', 1, '[{\"added\": {}}]', 10, 2),
(168, '2024-12-11 13:13:18.904115', '47', 'Red Rice', 1, '[{\"added\": {}}]', 10, 2),
(169, '2024-12-11 13:13:49.761047', '48', 'Basmati Rice', 1, '[{\"added\": {}}]', 10, 2),
(170, '2024-12-11 13:14:14.894131', '49', 'Brown Rice', 1, '[{\"added\": {}}]', 10, 2),
(171, '2024-12-11 13:20:34.633363', '50', 'Fortune Cotton Seed Oil', 1, '[{\"added\": {}}]', 10, 2),
(172, '2024-12-11 13:21:04.730948', '51', 'Sunflower Oil', 1, '[{\"added\": {}}]', 10, 2),
(173, '2024-12-11 13:22:25.611835', '52', 'Fortune Musturd Oil', 1, '[{\"added\": {}}]', 10, 2),
(174, '2024-12-11 13:22:39.757240', '51', 'Fortune Sunflower Oil', 2, '[{\"changed\": {\"fields\": [\"Productname\", \"Productdesc\"]}}]', 10, 2),
(175, '2024-12-11 13:23:46.920439', '53', 'Fortune Ground Nut Oil', 1, '[{\"added\": {}}]', 10, 2),
(176, '2024-12-11 16:09:25.680833', '22', 'Red Hot Chilli', 3, '', 10, 2),
(177, '2024-12-11 16:10:19.725008', '7', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(178, '2024-12-11 16:11:19.640079', '8', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(179, '2024-12-11 16:11:44.314851', '9', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(180, '2024-12-11 16:12:03.296138', '10', '15 ltr', 1, '[{\"added\": {}}]', 12, 2),
(181, '2024-12-11 16:12:20.269711', '51', 'Fortune Sunflower Oil', 2, '[{\"changed\": {\"fields\": [\"Productprice\"]}}]', 10, 2),
(182, '2024-12-12 07:07:25.981752', '54', 'Dove Shampoo', 1, '[{\"added\": {}}]', 10, 2),
(183, '2024-12-12 07:11:56.063392', '55', 'Dove Conditioner', 1, '[{\"added\": {}}]', 10, 2),
(184, '2024-12-12 07:12:30.088002', '56', 'Dove Serum', 1, '[{\"added\": {}}]', 10, 2),
(185, '2024-12-12 07:13:09.923828', '57', 'Indulekha Hair Oil', 1, '[{\"added\": {}}]', 10, 2),
(186, '2024-12-12 07:21:26.707127', '58', 'Dettol Hand Wash', 1, '[{\"added\": {}}]', 10, 2),
(187, '2024-12-12 07:22:21.720055', '59', 'Lux Hibiscus Soap', 1, '[{\"added\": {}}]', 10, 2),
(188, '2024-12-12 07:22:58.069092', '60', 'Coconut Baby Bath Soap', 1, '[{\"added\": {}}]', 10, 2),
(189, '2024-12-12 07:23:33.882627', '61', 'Cinthol Soap', 1, '[{\"added\": {}}]', 10, 2),
(190, '2024-12-12 07:29:11.377689', '62', 'MAC Foundation', 1, '[{\"added\": {}}]', 10, 2),
(191, '2024-12-12 07:30:04.636683', '63', 'Glory Serum', 1, '[{\"added\": {}}]', 10, 2),
(192, '2024-12-12 07:30:40.417571', '64', 'Sephora Primer', 1, '[{\"added\": {}}]', 10, 2),
(193, '2024-12-12 07:31:27.180560', '65', 'Rare Beauty Lip Colour', 1, '[{\"added\": {}}]', 10, 2),
(194, '2024-12-12 13:17:02.974495', '66', 'Fog Impressio', 1, '[{\"added\": {}}]', 10, 2),
(195, '2024-12-12 13:17:31.981871', '67', 'Wild Stone', 1, '[{\"added\": {}}]', 10, 2),
(196, '2024-12-12 13:18:50.694337', '68', 'Mohfa Perfumes', 1, '[{\"added\": {}}]', 10, 2),
(197, '2024-12-12 13:19:50.621269', '69', 'Soma | Roll on Fregrences', 1, '[{\"added\": {}}]', 10, 2),
(198, '2024-12-12 13:21:12.342072', '70', 'BioTique | Daily Skin care Essential Gift Kit', 1, '[{\"added\": {}}]', 10, 2),
(199, '2024-12-12 13:24:26.221946', '71', 'Dot & Key | Watermelon Oil Free + Luminous Skin Combo', 1, '[{\"added\": {}}]', 10, 2),
(200, '2024-12-12 13:25:29.464020', '72', 'Skincraft Total 5 Step Coustmized Skin Care Combo', 1, '[{\"added\": {}}]', 10, 2),
(201, '2024-12-12 13:27:20.853720', '73', 'Mamaearth Mini Mammoth Deal Combo', 1, '[{\"added\": {}}]', 10, 2),
(202, '2024-12-12 13:53:59.499490', '74', 'Gulab Jamun', 1, '[{\"added\": {}}]', 10, 2),
(203, '2024-12-12 13:55:07.444969', '75', 'Vadilal Mohanthal Sweet', 1, '[{\"added\": {}}]', 10, 2),
(204, '2024-12-12 13:55:49.882765', '76', 'Keshar Rasmalai', 1, '[{\"added\": {}}]', 10, 2),
(205, '2024-12-12 13:56:20.202211', '77', 'Mix Mava Mithai', 1, '[{\"added\": {}}]', 10, 2),
(206, '2024-12-12 13:57:00.055599', '78', '7 UP', 1, '[{\"added\": {}}]', 10, 2),
(207, '2024-12-12 13:57:39.985609', '79', 'Coca Cola', 1, '[{\"added\": {}}]', 10, 2),
(208, '2024-12-12 13:58:09.594598', '80', 'Maaza', 1, '[{\"added\": {}}]', 10, 2),
(209, '2024-12-12 13:58:33.222081', '81', 'Sprite', 1, '[{\"added\": {}}]', 10, 2),
(210, '2024-12-12 13:59:16.726240', '82', 'Dairy Milk Silk', 1, '[{\"added\": {}}]', 10, 2),
(211, '2024-12-12 13:59:40.982558', '83', 'KitKat', 1, '[{\"added\": {}}]', 10, 2),
(212, '2024-12-12 14:00:26.432837', '84', 'Snickers Almond Chocolate Bar', 1, '[{\"added\": {}}]', 10, 2),
(213, '2024-12-12 14:00:52.013937', '85', 'Love Bar', 1, '[{\"added\": {}}]', 10, 2),
(214, '2024-12-12 14:01:48.403215', '86', 'Del Monte Pasta', 1, '[{\"added\": {}}]', 10, 2),
(215, '2024-12-12 14:02:23.347467', '87', 'Kab\'s Jackpot Noodels', 1, '[{\"added\": {}}]', 10, 2),
(216, '2024-12-12 14:03:00.397028', '88', 'Wheat Pasta', 1, '[{\"added\": {}}]', 10, 2),
(217, '2024-12-12 14:03:46.771467', '89', 'Mo Soi Hakka Noodels', 1, '[{\"added\": {}}]', 10, 2),
(218, '2024-12-12 14:04:01.971964', '89', 'Mo Soi Hakka Noodels', 2, '[{\"changed\": {\"fields\": [\"Categoryid\"]}}]', 10, 2),
(219, '2024-12-12 14:04:46.809326', '90', 'Amul Butter Cookies', 1, '[{\"added\": {}}]', 10, 2),
(220, '2024-12-12 14:05:18.770673', '91', 'Good Day Butter', 1, '[{\"added\": {}}]', 10, 2),
(221, '2024-12-12 14:06:04.169323', '92', 'Little Hearts', 1, '[{\"added\": {}}]', 10, 2),
(222, '2024-12-12 14:06:43.507667', '93', 'Britannia Nutri Choice', 1, '[{\"added\": {}}]', 10, 2),
(223, '2024-12-12 14:38:32.598574', '94', 'Burger Buns', 1, '[{\"added\": {}}]', 10, 2),
(224, '2024-12-12 14:39:02.819839', '95', 'Mini Buns', 1, '[{\"added\": {}}]', 10, 2),
(225, '2024-12-12 14:39:31.971532', '96', 'Pav Bun', 1, '[{\"added\": {}}]', 10, 2),
(226, '2024-12-12 14:40:16.523287', '97', 'Whole Wheat Mini Buns', 1, '[{\"added\": {}}]', 10, 2),
(227, '2024-12-12 14:40:52.345333', '98', 'Amul Cheese', 1, '[{\"added\": {}}]', 10, 2),
(228, '2024-12-12 14:46:37.591886', '99', 'Amul Butter', 1, '[{\"added\": {}}]', 10, 2),
(229, '2024-12-12 14:47:06.683029', '100', 'Cheddar Cheese', 1, '[{\"added\": {}}]', 10, 2),
(230, '2024-12-12 14:47:37.227864', '101', 'Herbed Butter', 1, '[{\"added\": {}}]', 10, 2),
(231, '2024-12-12 14:48:22.101628', '102', 'Amul Taaza', 1, '[{\"added\": {}}]', 10, 2),
(232, '2024-12-12 14:48:59.705076', '103', 'Mother Dairy Milk', 1, '[{\"added\": {}}]', 10, 2),
(233, '2024-12-12 14:49:33.894603', '104', 'Amul Milk', 1, '[{\"added\": {}}]', 10, 2),
(234, '2024-12-12 14:50:14.586230', '105', 'Go Supremo Milk', 1, '[{\"added\": {}}]', 10, 2),
(235, '2024-12-12 14:51:01.555950', '106', 'Matka Curd', 1, '[{\"added\": {}}]', 10, 2),
(236, '2024-12-12 14:51:39.633043', '107', 'Amul Masti Dahi', 1, '[{\"added\": {}}]', 10, 2),
(237, '2024-12-12 14:52:09.088152', '108', 'Sweet Curd', 1, '[{\"added\": {}}]', 10, 2),
(238, '2024-12-12 14:52:36.862121', '109', 'Hung Curd', 1, '[{\"added\": {}}]', 10, 2),
(239, '2024-12-12 14:53:22.215713', '110', 'Amul Butter Milk', 1, '[{\"added\": {}}]', 10, 2),
(240, '2024-12-12 14:53:58.771955', '111', 'Amul Premier Butter Milk', 1, '[{\"added\": {}}]', 10, 2),
(241, '2024-12-12 14:54:24.962946', '112', 'Amul Masti', 1, '[{\"added\": {}}]', 10, 2),
(242, '2024-12-12 14:54:58.111797', '113', 'Milky Mist Butter Milk', 1, '[{\"added\": {}}]', 10, 2),
(243, '2024-12-15 12:29:33.631304', '11', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(244, '2024-12-15 12:29:52.014508', '12', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(245, '2024-12-15 12:30:03.457170', '13', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(246, '2024-12-15 12:30:46.907084', '14', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(247, '2024-12-15 12:30:58.234500', '15', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(248, '2024-12-15 12:31:13.426766', '16', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(249, '2024-12-15 12:31:41.741902', '17', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(250, '2024-12-15 12:32:27.053697', '18', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(251, '2024-12-15 12:32:40.301574', '18', '500 gm', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 12, 2),
(252, '2024-12-15 12:32:48.911799', '17', '250 gm', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 12, 2),
(253, '2024-12-15 12:33:00.820395', '19', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(254, '2024-12-15 12:33:30.259687', '20', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(255, '2024-12-15 12:33:43.546771', '21', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(256, '2024-12-15 12:33:55.173003', '22', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(257, '2024-12-15 12:34:29.245089', '23', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(258, '2024-12-15 12:35:02.951681', '24', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(259, '2024-12-15 12:35:18.900059', '24', '500 gm', 2, '[]', 12, 2),
(260, '2024-12-15 12:35:39.444908', '25', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(261, '2024-12-15 12:36:05.723382', '26', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(262, '2024-12-15 12:36:17.268673', '27', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(263, '2024-12-15 12:36:33.480026', '28', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(264, '2024-12-15 12:36:52.558170', '29', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(265, '2024-12-15 12:37:10.198518', '30', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(266, '2024-12-15 12:37:22.874562', '31', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(267, '2024-12-15 12:38:39.343604', '32', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(268, '2024-12-15 12:38:52.778935', '33', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(269, '2024-12-15 12:39:17.843028', '34', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(270, '2024-12-15 12:39:50.555687', '35', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(271, '2024-12-15 12:40:07.588992', '36', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(272, '2024-12-15 12:40:17.513238', '37', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(273, '2024-12-15 12:40:56.413377', '38', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(274, '2024-12-15 12:41:12.671650', '39', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(275, '2024-12-15 12:41:27.553414', '40', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(276, '2024-12-15 12:42:00.638267', '41', '1 no', 1, '[{\"added\": {}}]', 12, 2),
(277, '2024-12-15 12:42:17.875720', '42', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(278, '2024-12-15 12:42:27.716984', '43', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(279, '2024-12-15 12:42:38.951549', '44', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(280, '2024-12-15 12:44:41.222243', '45', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(281, '2024-12-15 12:44:50.865355', '46', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(282, '2024-12-15 12:45:01.036294', '47', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(283, '2024-12-15 12:45:33.579102', '48', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(284, '2024-12-15 12:45:46.300309', '49', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(285, '2024-12-15 12:45:57.187468', '50', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(286, '2024-12-15 12:46:25.264802', '51', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(287, '2024-12-15 12:46:35.313953', '52', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(288, '2024-12-15 12:46:48.381127', '53', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(289, '2024-12-15 12:47:18.410967', '54', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(290, '2024-12-15 12:47:32.179554', '55', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(291, '2024-12-15 12:47:44.971645', '56', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(292, '2024-12-15 12:48:31.512939', '57', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(293, '2024-12-15 12:48:44.884624', '58', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(294, '2024-12-15 12:48:58.994418', '59', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(295, '2024-12-15 12:49:31.205498', '60', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(296, '2024-12-15 12:49:40.741387', '61', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(297, '2024-12-15 12:49:49.669134', '62', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(298, '2024-12-15 12:50:16.489414', '63', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(299, '2024-12-15 12:50:26.046160', '64', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(300, '2024-12-15 12:50:35.924691', '65', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(301, '2024-12-15 12:50:54.959257', '66', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(302, '2024-12-15 12:51:05.636277', '67', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(303, '2024-12-15 12:51:18.341612', '68', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(304, '2024-12-15 12:51:40.897784', '69', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(305, '2024-12-15 12:51:55.854357', '70', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(306, '2024-12-15 12:52:05.921774', '71', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(307, '2024-12-15 12:52:24.717683', '72', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(308, '2024-12-15 12:52:36.541209', '73', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(309, '2024-12-15 12:52:55.675919', '74', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(310, '2024-12-15 12:53:35.455857', '75', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(311, '2024-12-15 12:53:46.314156', '76', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(312, '2024-12-15 12:54:00.165907', '77', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(313, '2024-12-15 12:54:16.315689', '78', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(314, '2024-12-15 12:54:26.664505', '79', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(315, '2024-12-15 12:54:44.702682', '80', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(316, '2024-12-15 12:55:03.895226', '81', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(317, '2024-12-15 12:55:13.586352', '82', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(318, '2024-12-15 12:55:28.906034', '83', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(319, '2024-12-15 12:55:58.059739', '84', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(320, '2024-12-15 12:56:07.415236', '85', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(321, '2024-12-15 12:56:22.470581', '86', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(322, '2024-12-15 12:56:38.865605', '87', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(323, '2024-12-15 12:56:48.587861', '88', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(324, '2024-12-15 12:56:58.446446', '89', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(325, '2024-12-15 12:57:15.773750', '90', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(326, '2024-12-15 12:57:24.529751', '91', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(327, '2024-12-15 12:57:33.298287', '92', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(328, '2024-12-15 13:00:31.945383', '93', '1.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(329, '2024-12-15 13:00:46.734713', '94', '2 ltr', 1, '[{\"added\": {}}]', 12, 2),
(330, '2024-12-15 13:00:59.140905', '95', '2.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(331, '2024-12-15 13:02:08.178642', '96', '1.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(332, '2024-12-15 13:02:24.519889', '97', '2 ltr', 1, '[{\"added\": {}}]', 12, 2),
(333, '2024-12-15 13:02:37.027270', '98', '2.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(334, '2024-12-15 13:02:53.444964', '99', '1.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(335, '2024-12-15 13:03:10.701396', '100', '2 ltr', 1, '[{\"added\": {}}]', 12, 2),
(336, '2024-12-15 13:03:29.455180', '101', '2.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(337, '2024-12-15 13:03:49.487941', '102', '1.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(338, '2024-12-15 13:04:01.142149', '103', '2 ltr', 1, '[{\"added\": {}}]', 12, 2),
(339, '2024-12-15 13:04:28.095233', '104', '2.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(340, '2024-12-15 13:04:57.895039', '105', '2.5 ltr', 1, '[{\"added\": {}}]', 12, 2),
(341, '2024-12-15 13:05:27.726178', '106', 'Small', 1, '[{\"added\": {}}]', 12, 2),
(342, '2024-12-15 13:06:16.594181', '107', '2 Finger', 1, '[{\"added\": {}}]', 12, 2),
(343, '2024-12-15 13:06:41.154293', '108', '3 Finger', 1, '[{\"added\": {}}]', 12, 2),
(344, '2024-12-15 13:06:51.552990', '109', '4 Finger', 1, '[{\"added\": {}}]', 12, 2),
(345, '2024-12-15 13:08:45.733209', '110', 'Small pack', 1, '[{\"added\": {}}]', 12, 2),
(346, '2024-12-15 13:09:14.430226', '111', 'Big Pack', 1, '[{\"added\": {}}]', 12, 2),
(347, '2024-12-15 13:09:30.846264', '106', 'Small Dairy Milk Silk', 2, '[{\"changed\": {\"fields\": [\"Unit\"]}}]', 12, 2),
(348, '2024-12-15 13:09:48.438486', '112', 'Mini Bar', 1, '[{\"added\": {}}]', 12, 2),
(349, '2024-12-15 13:10:01.758530', '113', 'Big Pack Bar', 1, '[{\"added\": {}}]', 12, 2),
(350, '2024-12-15 13:10:56.066988', '114', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(351, '2024-12-15 13:11:08.484511', '115', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(352, '2024-12-15 13:11:22.686099', '116', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(353, '2024-12-15 13:12:49.370302', '117', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(354, '2024-12-15 13:12:57.955961', '118', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(355, '2024-12-15 13:13:08.379386', '119', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(356, '2024-12-15 13:13:43.790555', '120', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(357, '2024-12-15 13:13:51.907467', '121', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(358, '2024-12-15 13:13:59.461685', '122', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(359, '2024-12-15 13:14:16.807938', '123', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(360, '2024-12-15 13:14:29.662732', '124', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(361, '2024-12-15 13:14:47.032880', '125', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(362, '2024-12-15 13:15:11.513510', '126', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(363, '2024-12-15 13:15:26.194410', '127', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(364, '2024-12-15 13:15:33.715800', '128', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(365, '2024-12-15 13:15:56.725249', '129', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(366, '2024-12-15 13:16:05.288731', '130', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(367, '2024-12-15 13:16:20.596139', '131', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(368, '2024-12-15 13:16:37.292010', '132', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(369, '2024-12-15 13:16:44.489128', '133', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(370, '2024-12-15 13:16:52.460312', '134', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(371, '2024-12-15 13:17:06.046370', '135', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(372, '2024-12-15 13:17:14.914340', '136', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(373, '2024-12-15 13:17:24.838126', '137', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(374, '2024-12-15 13:17:46.982904', '138', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(375, '2024-12-15 13:18:06.369496', '138', '250 gm', 2, '[]', 12, 2),
(376, '2024-12-15 13:18:19.731082', '139', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(377, '2024-12-15 13:18:27.036616', '140', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(378, '2024-12-15 13:18:40.211536', '141', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(379, '2024-12-15 13:18:52.957528', '142', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(380, '2024-12-15 13:19:03.453995', '143', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(381, '2024-12-15 13:19:29.560345', '144', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(382, '2024-12-15 13:19:40.252667', '145', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(383, '2024-12-15 13:19:52.464436', '146', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(384, '2024-12-15 13:20:17.268130', '147', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(385, '2024-12-15 13:20:31.115990', '148', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(386, '2024-12-15 13:20:40.333750', '149', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(387, '2024-12-15 13:21:26.209618', '150', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(388, '2024-12-15 13:21:38.415595', '151', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(389, '2024-12-15 13:21:51.444268', '152', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(390, '2024-12-15 13:22:14.910252', '153', '4 Buns', 1, '[{\"added\": {}}]', 12, 2),
(391, '2024-12-15 13:22:30.688852', '154', '2 Buns', 1, '[{\"added\": {}}]', 12, 2),
(392, '2024-12-15 13:22:47.625672', '155', '1 Bun', 1, '[{\"added\": {}}]', 12, 2),
(393, '2024-12-15 13:23:06.261780', '156', '4 Buns', 1, '[{\"added\": {}}]', 12, 2),
(394, '2024-12-15 13:23:16.318796', '157', '6 Buns', 1, '[{\"added\": {}}]', 12, 2),
(395, '2024-12-15 13:23:39.987627', '158', '3 Buns', 1, '[{\"added\": {}}]', 12, 2),
(396, '2024-12-15 13:23:55.599776', '159', '6 Buns', 1, '[{\"added\": {}}]', 12, 2),
(397, '2024-12-15 13:24:36.574247', '160', '10 Buns', 1, '[{\"added\": {}}]', 12, 2),
(398, '2024-12-15 13:25:06.544194', '161', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(399, '2024-12-15 13:25:21.261120', '162', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(400, '2024-12-15 13:25:30.557330', '163', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(401, '2024-12-15 13:25:46.300136', '164', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(402, '2024-12-15 13:25:55.634899', '165', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(403, '2024-12-15 13:26:10.666451', '166', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(404, '2024-12-15 13:26:29.593486', '167', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(405, '2024-12-15 13:26:41.167916', '168', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(406, '2024-12-15 13:26:50.459005', '169', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(407, '2024-12-15 13:27:02.131284', '170', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(408, '2024-12-15 13:27:09.611813', '171', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(409, '2024-12-15 13:27:15.916845', '172', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(410, '2024-12-15 13:27:54.073794', '173', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(411, '2024-12-15 13:28:53.681495', '173', '250 ml', 2, '[]', 12, 2),
(412, '2024-12-15 13:29:03.474810', '174', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(413, '2024-12-15 13:29:18.116356', '175', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(414, '2024-12-15 13:29:34.455709', '176', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(415, '2024-12-15 13:29:50.837118', '177', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(416, '2024-12-15 13:30:10.238812', '178', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(417, '2024-12-15 13:30:29.867753', '179', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(418, '2024-12-15 13:30:54.733211', '180', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(419, '2024-12-15 13:31:05.445552', '181', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(420, '2024-12-15 13:31:29.472578', '182', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(421, '2024-12-15 13:31:48.104333', '183', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(422, '2024-12-15 13:31:58.450202', '184', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(423, '2024-12-15 13:33:21.911058', '185', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(424, '2024-12-15 13:33:39.570838', '186', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(425, '2024-12-15 13:33:50.006889', '187', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(426, '2024-12-15 13:34:02.032106', '188', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(427, '2024-12-15 13:34:17.858193', '189', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(428, '2024-12-15 13:34:28.610858', '190', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(429, '2024-12-15 13:35:12.737386', '191', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(430, '2024-12-15 13:35:25.129614', '192', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(431, '2024-12-15 13:35:28.449819', '192', '500 gm', 2, '[]', 12, 2),
(432, '2024-12-15 13:35:41.783768', '193', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(433, '2024-12-15 13:35:53.381837', '194', '250 gm', 1, '[{\"added\": {}}]', 12, 2),
(434, '2024-12-15 13:36:01.039122', '195', '500 gm', 1, '[{\"added\": {}}]', 12, 2),
(435, '2024-12-15 13:36:08.892808', '196', '1 kg', 1, '[{\"added\": {}}]', 12, 2),
(436, '2024-12-15 13:36:35.573334', '197', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(437, '2024-12-15 13:36:48.478287', '198', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(438, '2024-12-15 13:37:06.775158', '199', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(439, '2024-12-15 13:37:21.873526', '200', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(440, '2024-12-15 13:37:44.178115', '201', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(441, '2024-12-15 13:37:56.293847', '202', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(442, '2024-12-15 13:38:10.116441', '203', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(443, '2024-12-15 13:38:24.363041', '204', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(444, '2024-12-15 13:38:34.933495', '205', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(445, '2024-12-15 13:38:54.134398', '206', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(446, '2024-12-15 13:39:22.425742', '207', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(447, '2024-12-15 13:39:38.033933', '208', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(448, '2024-12-15 13:40:22.661103', '209', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(449, '2024-12-15 13:40:33.988398', '210', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(450, '2024-12-15 13:40:53.511963', '211', '300 ml', 1, '[{\"added\": {}}]', 12, 2),
(451, '2024-12-15 13:41:19.972875', '212', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(452, '2024-12-15 13:41:47.615226', '213', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(453, '2024-12-15 13:42:01.266737', '214', '300 ml', 1, '[{\"added\": {}}]', 12, 2),
(454, '2024-12-15 13:42:29.963972', '215', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(455, '2024-12-15 13:42:44.600243', '216', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(456, '2024-12-15 13:42:56.308389', '217', '300 ml', 1, '[{\"added\": {}}]', 12, 2),
(457, '2024-12-15 13:43:11.097511', '218', '20 ml', 1, '[{\"added\": {}}]', 12, 2),
(458, '2024-12-15 13:43:23.302031', '219', '50 ml', 1, '[{\"added\": {}}]', 12, 2),
(459, '2024-12-15 13:43:36.926469', '220', '75 ml', 1, '[{\"added\": {}}]', 12, 2),
(460, '2024-12-15 13:44:22.315704', '221', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(461, '2024-12-15 13:44:47.535585', '222', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(462, '2024-12-15 13:44:54.287307', '223', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(463, '2024-12-15 13:45:18.350157', '224', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(464, '2024-12-15 13:45:34.829723', '225', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(465, '2024-12-15 13:45:43.936080', '226', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(466, '2024-12-15 13:46:02.251283', '227', '20 ml', 1, '[{\"added\": {}}]', 12, 2),
(467, '2024-12-15 13:46:21.136605', '228', '50 ml', 1, '[{\"added\": {}}]', 12, 2),
(468, '2024-12-15 13:46:31.587007', '229', '100 ml', 1, '[{\"added\": {}}]', 12, 2),
(469, '2024-12-15 13:47:14.129511', '230', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(470, '2024-12-15 13:47:23.572911', '231', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(471, '2024-12-15 13:47:42.573549', '232', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(472, '2024-12-15 13:48:24.030200', '233', '250 ml', 1, '[{\"added\": {}}]', 12, 2),
(473, '2024-12-15 13:48:32.437908', '234', '500 ml', 1, '[{\"added\": {}}]', 12, 2),
(474, '2024-12-15 13:48:41.953909', '235', '1 ltr', 1, '[{\"added\": {}}]', 12, 2),
(475, '2024-12-15 13:48:55.361929', '236', '1 Soap', 1, '[{\"added\": {}}]', 12, 2),
(476, '2024-12-15 13:49:12.135029', '237', '3 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(477, '2024-12-15 13:49:30.050771', '238', '4 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(478, '2024-12-15 13:49:46.872850', '239', '1 Soap', 1, '[{\"added\": {}}]', 12, 2),
(479, '2024-12-15 13:50:03.949434', '240', '3 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(480, '2024-12-15 13:50:28.295049', '241', '4 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(481, '2024-12-15 13:50:42.501259', '242', '1 Soap', 1, '[{\"added\": {}}]', 12, 2),
(482, '2024-12-15 13:51:18.868278', '243', '3 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(483, '2024-12-15 13:51:28.801498', '244', '4 Soap Combo', 1, '[{\"added\": {}}]', 12, 2),
(484, '2024-12-15 13:51:48.147292', '245', '20 ml', 1, '[{\"added\": {}}]', 12, 2),
(485, '2024-12-15 13:51:57.699105', '246', '40 ml', 1, '[{\"added\": {}}]', 12, 2),
(486, '2024-12-15 13:52:10.171736', '247', '20 ml', 1, '[{\"added\": {}}]', 12, 2),
(487, '2024-12-15 13:52:28.247402', '248', '40 ml', 1, '[{\"added\": {}}]', 12, 2),
(488, '2024-12-15 13:52:53.897859', '249', '20 ml', 1, '[{\"added\": {}}]', 12, 2),
(489, '2024-12-15 13:53:03.606922', '250', '40 ml', 1, '[{\"added\": {}}]', 12, 2),
(490, '2024-12-15 13:53:27.310935', '251', '1 Lipcolour', 1, '[{\"added\": {}}]', 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'groceryapp', 'userregistration'),
(8, 'groceryapp', 'registration'),
(9, 'groceryapp', 'subcategory'),
(10, 'groceryapp', 'product'),
(11, 'groceryapp', 'category'),
(12, 'groceryapp', 'product_unit'),
(13, 'groceryapp', 'wishlist'),
(14, 'groceryapp', 'cartdata'),
(15, 'groceryapp', 'upi'),
(16, 'groceryapp', 'cashondelivery'),
(17, 'groceryapp', 'card'),
(18, 'groceryapp', 'finalprice'),
(19, 'groceryapp', 'finalorder');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-12-05 12:17:36.606167'),
(2, 'auth', '0001_initial', '2024-12-05 12:17:37.122613'),
(3, 'admin', '0001_initial', '2024-12-05 12:17:37.345392'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-12-05 12:17:37.353927'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-05 12:17:37.361364'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-12-05 12:17:37.452548'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-12-05 12:17:37.489127'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-12-05 12:17:37.548755'),
(9, 'auth', '0004_alter_user_username_opts', '2024-12-05 12:17:37.556834'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-12-05 12:17:37.624713'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-12-05 12:17:37.624713'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-12-05 12:17:37.637935'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-12-05 12:17:37.697180'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-12-05 12:17:37.737928'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-12-05 12:17:37.789640'),
(16, 'auth', '0011_update_proxy_permissions', '2024-12-05 12:17:37.793151'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-12-05 12:17:37.840386'),
(18, 'sessions', '0001_initial', '2024-12-05 12:17:37.896033'),
(19, 'groceryapp', '0001_initial', '2024-12-05 12:23:07.918189'),
(20, 'groceryapp', '0002_category_registration_subcategory_product', '2024-12-07 11:26:45.096920'),
(21, 'groceryapp', '0003_subcategory_categoryimage', '2024-12-07 12:05:03.666602'),
(22, 'groceryapp', '0004_product_unit', '2024-12-09 16:09:24.675762'),
(23, 'groceryapp', '0005_wishlist_alter_product_productdesc_and_more', '2024-12-13 07:10:53.576212'),
(24, 'groceryapp', '0002_cartdata_quantity_cartdata_totalprice', '2024-12-16 10:35:07.191153'),
(25, 'groceryapp', '0003_alter_cartdata_quantity', '2024-12-16 11:05:12.496277'),
(26, 'groceryapp', '0004_remove_cartdata_quantity_remove_cartdata_totalprice', '2024-12-16 11:05:12.501241'),
(27, 'groceryapp', '0005_delete_cartdata', '2024-12-16 11:05:12.504419'),
(28, 'groceryapp', '0006_cartdata', '2024-12-16 11:05:12.506220'),
(29, 'groceryapp', '0007_delete_cartdata', '2024-12-16 11:05:12.506220'),
(30, 'groceryapp', '0008_cartdata', '2024-12-16 11:05:12.513022'),
(31, 'groceryapp', '0009_delete_cartdata', '2024-12-16 11:05:12.514721'),
(32, 'groceryapp', '0010_cartdata', '2024-12-16 11:05:12.514721'),
(33, 'groceryapp', '0011_remove_cartdata_finalprice', '2024-12-16 11:05:12.514721'),
(34, 'groceryapp', '0012_delete_cartdata', '2024-12-16 11:06:50.504368'),
(35, 'groceryapp', '0013_cartdata', '2024-12-16 11:07:11.624028'),
(36, 'groceryapp', '0014_alter_userregistration_email', '2024-12-17 03:22:50.387265'),
(37, 'groceryapp', '0015_wishlist', '2024-12-18 04:44:05.088632'),
(38, 'groceryapp', '0004_cartdata_product_unit_delete_registration_and_more', '2024-12-20 03:26:03.072977'),
(39, 'groceryapp', '0005_cartdata_quantity_cartdata_totalprice', '2024-12-20 03:26:03.074944'),
(40, 'groceryapp', '0006_remove_cartdata_quantity_remove_cartdata_totalprice', '2024-12-20 03:26:03.075942'),
(41, 'groceryapp', '0007_cartdata_quantity_cartdata_totalprice', '2024-12-20 03:26:03.077937'),
(42, 'groceryapp', '0008_remove_cartdata_quantity_remove_cartdata_totalprice', '2024-12-20 03:26:03.079931'),
(43, 'groceryapp', '0016_merge_20241220_0824', '2024-12-20 03:26:03.081954'),
(44, 'groceryapp', '0002_delete_wishlist', '2024-12-20 03:33:40.350827'),
(45, 'groceryapp', '0003_wishlist', '2024-12-20 03:34:27.378868'),
(46, 'groceryapp', '0004_userregistration_mobile_number', '2024-12-20 05:12:00.610569'),
(47, 'groceryapp', '0005_upi', '2024-12-27 16:28:00.324439'),
(48, 'groceryapp', '0006_alter_upi_amount', '2024-12-27 16:28:58.323967'),
(49, 'groceryapp', '0007_cashondelivery', '2024-12-27 16:41:41.335839'),
(50, 'groceryapp', '0008_cashondelivery_username_upi_address_upi_phoneno_and_more', '2024-12-29 16:55:13.480948'),
(51, 'groceryapp', '0009_remove_card_name_remove_cashondelivery_user_and_more', '2024-12-29 17:01:44.707497'),
(52, 'groceryapp', '0010_upi_username', '2024-12-29 17:30:34.222742'),
(53, 'groceryapp', '0011_card_address_card_phoneno', '2024-12-29 17:43:47.033335'),
(54, 'groceryapp', '0012_card_user_cashondelivery_user_upi_user_finalprice', '2025-01-03 11:57:31.542899'),
(55, 'groceryapp', '0013_delete_finalprice', '2025-01-03 14:32:03.958841'),
(56, 'groceryapp', '0014_finalprice', '2025-01-03 14:55:29.806746'),
(57, 'groceryapp', '0015_finalorder_delete_finalprice', '2025-01-03 16:35:32.907145'),
(58, 'groceryapp', '0016_finalorder_finalprice', '2025-01-03 16:51:29.367531'),
(59, 'groceryapp', '0017_remove_card_user_remove_cashondelivery_user_and_more', '2025-01-04 09:11:54.995050'),
(60, 'groceryapp', '0018_alter_finalorder_productdata', '2025-01-04 09:26:08.750121'),
(61, 'groceryapp', '0019_alter_finalorder_productdata', '2025-01-04 09:28:35.556874'),
(62, 'groceryapp', '0020_finalorder_address_finalorder_mobile_no_and_more', '2025-01-04 09:33:27.526851'),
(63, 'groceryapp', '0021_alter_finalorder_productdata', '2025-01-04 11:39:54.858134'),
(64, 'groceryapp', '0022_rename_productdata_finalorder_productname_and_more', '2025-01-08 10:14:09.622125');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('39i80n0kib2oqcqpk6ei3gbilexkc0hv', '.eJxVjEEOwiAQRe_C2hAYKCMu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERWpx-t0jpkdsO-E7tNss0t3WZotwVedAux5nz83q4fweVev3WQHBGB4a1L7kQA3ubvLeKlRowWm0Nq6wxsU5stRkgF4OMQN6hUyjeH9VXNz8:1tJAuA:L0JsvzcpdqpkOdTSDtZM_sqqaNVDKuIUstvIR9WxeNI', '2024-12-19 12:24:26.131113'),
('fpejmsqft5oo9wbq3h99kthvd8skw9ws', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tJCuB:NMUYwFWXeZul7v5gTRS6PcMKThFEhiLUp7-keXp6hjI', '2024-12-19 14:32:35.664598'),
('nv71fgfs0oz4xiajwknvvna57jncyfnu', '.eJxVjDsOwjAQBe_iGln-JYsp6TlDtPGucfjYUpzQIO5OLKWA9s28eYsB1yUNa-V5mEichBaH323EcOfcAN0wX4sMJS_zNMqmyJ1WeSnEj_Pu_gUS1rS9DZoj9MaS9pEjkiHvgvdOkVIdjE47S4o1BNKBnLad4WiBwKDvoVewRVsu45O32gszYUbx-QKpEz5m:1tJvkc:8PhkYxMQuGBg10_Kn2F0YqVsX70BBpJ91ZX30aO3YSo', '2024-12-21 14:25:42.059524'),
('veazggga6fetex1qycdiv93s9vp0e4ac', '.eJxVjMEOwiAQRP-FsyFAA1s8evcbCLC7UjWQlPbU-O-2SQ96nHlvZhMhrksJa6c5TCiuwojLb5diflE9AD5jfTSZW13mKclDkSft8t6Q3rfT_TsosZd9zSPGOOQBmLIz3iVtYQ9MCHpwyZicvEZK1oJzXnlQBJZ1Hq1iw47E5wv6eDgd:1tKpvb:-sMW9fGqBHZdM1_L_KbJWZW5INUzflIq26GCemAeN8s', '2024-12-24 02:24:47.542292'),
('szafumevw5seo4qf2mbramy8zy82kivi', 'eyJlbWFpbCI6Im5henkyNjEyQGdtYWlsLmNvbSJ9:1tN1bF:Gq97MhaMltVrU-ajyDlbHzsUAOIC0TFQsUfulF0XYa8', '2024-12-30 03:16:49.096702'),
('u5zqst4sm4ilnpo1544mwo5s3q49fqu1', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tNO6f:zVs_1XLsTYNi2rBLWZ4aYNk9krKp9skeUJdka0qEXAI', '2024-12-31 03:18:45.387573'),
('57xambjrmf4qoqm5jvt533b6yz43z96p', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tNlpN:Rcx5PpPlZBflqFMhlAzq-VmUJKkoqd3Q--Hdy9lHSzU', '2025-01-01 04:38:29.238767'),
('6uwwn5ib0uawjo64k520a9dogs3cai4o', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOTM8:i34nG7rh1btgRRJNcemML5xTGt2RCofilzHICX0lqjM', '2024-12-20 03:12:12.779842'),
('32ac6digrbedtxru7iiyx5w0924z6885', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOTSg:ZG9jM1pjITVXKIu8kbtYXk5An0hN7lZz7QsuLZRcQLc', '2024-12-20 03:18:58.742262'),
('gwb7q16he9umao6eytw9nrpar9iqg5qj', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOTUS:tEJL-DeZCI7NtdpxERMWfJvi3adHe6t9GpPmUPk_GVs', '2024-12-20 03:20:48.420231'),
('ego0e13ublnm1o01t8r8x21mwqblcxyt', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOTqr:_TkSGL070Vhs7DVtETrRr2HawmRVTFV5ybLF3G45PkE', '2024-12-20 03:43:57.841168'),
('oosbpukp1req2bfvxo53xe71rhvdt8mh', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOTwr:k1xYHGtyyG8YwsFdoV3Zgaqy174Nj4E-nfOyrRSLnoQ', '2024-12-20 03:50:09.795792'),
('qwe216d5tkkituvvyde3uqarbg1eicl6', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOU6L:qIkXKNKrizRgxTWXC6IoM-xgySUAoc7hpORk7NIEVRc', '2024-12-20 03:59:57.404768'),
('ed8y9avod1amo3e1l61e88y1fg9h302o', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOURT:uI3MXKItfA4QMcIoxNsaQKqDo08llMDzc7XPvaFYL2E', '2025-01-03 04:16:47.902119'),
('zu8dz2toibtx5w1spj0z9a58wjgz70m5', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tOVcr:_91BhdiRe_PXe77vWNvtChD0vJ17lD1xb5jZ_81mzOw', '2025-01-03 05:32:37.114238'),
('5bptioxti92yjg1fjqpwiml19qre1n3x', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tRDF0:lfu1TB4WuWGW5VFYJJqAZPf-zWGlxxeU75oXsEcaqJk', '2024-12-27 16:36:10.235907'),
('v11a85u2xzx20psf71a3nssainos1deg', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tREZh:sRuY3m3jVuu3JHW6kvo5mTrGy4bT9MAgsNLxPA7joQY', '2025-01-10 17:56:37.988667'),
('5jsnul3969pyg4oj53jdalvqhw27rbkl', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tRyC7:kEjbZxVDDy8vs5HT2rGrXBkljpZZU_5Yu7GrDpezrqU', '2025-01-12 18:39:19.217224'),
('s9ya5aq2370900t3330s34rkuogzsj8a', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tSZT1:V0KiHJhb_Qf9-WhRC4JEXBzZ6bDwq3pNxoLcPBGeU1Y', '2025-01-14 10:27:15.559894'),
('tmfvytf7cen2i5xohfw34ksle2jk3qrf', 'eyJ1c2VybmFtZSI6Im5pa2l0YSIsInByb2R1Y3QiOiJQb3RhdG8ifQ:1tSffO:0wbsEiElA8u38gXMQNajy7T7SpPWCQ5eRQPkN9CkPHo', '2025-01-14 17:04:26.667531'),
('5kkqxqx3d5lmsxekc9ye2rzhr71bso80', 'eyJ1c2VybmFtZSI6InZhbmRhbmEifQ:1tSyfL:xWiaBwzpdEF9YUIa9aQ9VXzKbR5d2dopbc5RUK1TBrc', '2025-01-15 13:21:39.108382'),
('w8vljizo9jsblsjoq090a6xdwwtmp05l', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcm9kdWN0IjoyNX0:1tTfZ9:fGlehm0o6TS3G0tDhRPObOWt4XJb4eru20ubPIOvp2k', '2025-01-17 11:10:07.870306'),
('c9l7ai3ili42hvqb4ac8eppp7i9ax54z', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJmaW5hbHByaWNlIjoxNX0:1tTgvC:OqiWSpuQzUlqPj7jw8SJHdDkcLZqwvt0dvQfwCpcrig', '2025-01-17 12:36:58.301175'),
('fuspyo619u37o5rc10r9i2ntiv4wqlal', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6MzAsImZpbmFscHJpY2UiOjM4NX0:1tTjSu:r46aIf6nz53YkbysODJ-PQXESTm7edfeCgwintKUl8A', '2025-01-17 15:19:56.541472'),
('qzyauuity0surabhpsm3jlx0ozsgjl4p', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6MjAsImZpbmFscHJpY2UiOjM4NX0:1tTjVK:FdRudEE76P6EzcVSIZ4TfN7GmqE-35TvUoIYT2UIKOs', '2025-01-17 15:22:26.966470'),
('znp4zv3eose9asd2epeyh0fdc3hjr7tg', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6bnVsbCwiZmluYWxwcmljZSI6Mzg1fQ:1tTjjD:-dVTXEG-A3JE7W7oMHRQy0BtB6EAfAbE3QXAISWWzxU', '2025-01-17 15:36:47.850434'),
('a11zearkt418mao4hu2yj87beq1fxuc6', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6MjUsImZpbmFscHJpY2UiOm51bGx9:1tU0sK:et1xGDY1MVZyFvdc-5WyrpOyXpQ7j4A0S97ck-0Jbf4', '2025-01-18 09:55:20.761839'),
('408ndt0vug5ddvjhdjzwwip2o2k35rxc', '.eJxVjDsOwjAQRO-ydWTFseMYSnrOEK13bWIwG5QPDeLuJFIaypl5bz6wznESfEY4wxuFURAqeE2ZtqZpK0hZsBxZ1lIq6HFdhn73-sybpuGvC0iPKPvAd5TbqGiUZcpB7Yg61lldR47lcrB_BwPOw2ZTIERdM7PvHDcnl4hsigGtT9braE1tEnXELrCxFjvjownOtI1lU2sN3x8K-0lP:1tTlgn:AteBdc5LO0iT_kulBq6thVye-LiG3oZGtVCuQNy0uYw', '2025-01-17 17:42:25.394668'),
('p4udladtxnrt054pvan813n6uhzfa80r', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6MTcsImZpbmFscHJpY2UiOm51bGx9:1tU1yz:__g6u_tGvfac9eK2U12fi5ZJcIwb9Ai0xLjhGWrJCsg', '2025-01-18 11:06:17.841872'),
('cxzd75akpahohv87ubqj62emrt1hm3zy', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6MzAsImZpbmFscHJpY2UiOm51bGx9:1tU2J3:CI5_i5hbE8I-CWJdsVN5H9HqTRQ9OFRAszvZdYHeMpo', '2025-01-18 11:27:01.350567'),
('p8k7ln3dgidbtud6k5c6u5bun608ux1v', '.eJyrViotTi3KS8xNVbJSKkvMS0nMS1TSUSooykwGiuSV5uToKKVl5iXmQEWMDA10lDJTIFK1AKHvFPg:1tU3KQ:mUOlc0FhWsEJwsWgE12R5hcvKynrhdxsr__S0AHIiPw', '2025-01-18 12:32:30.311931'),
('i66supcrwgjmjxu4yyshdv73ap5j30gb', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJwcmljZSI6NzAsImlkIjozMCwiZmluYWxwcmljZSI6bnVsbH0:1tU843:GkjGt8yUUUtsoMwvSchQmsT2UWGGeKXprJYDBiR1zII', '2025-01-18 17:35:55.103615'),
('ha92ofv41pr50vef51r35ydwopxzn1ms', 'eyJ1c2VybmFtZSI6InNhaGlsIiwicHJpY2UiOjY1LCJpZCI6ODQsImZpbmFscHJpY2UiOm51bGx9:1tUKkL:nq5QlxpTcuh1BppwGQ0pKcUKvWoBEwvamW6cy6d4wfI', '2025-01-19 07:08:25.840539'),
('tak2dd1kbmtvrxwse2jirhykv9vuob90', '.eJyrViotTi3KS8xNVbJSKkvMS0nMS1TSUSooykwGiuSV5uToKGWmwFhpmXmJOVA5QxMDkLr8lNLkkmIlq2qwMgvL2loApTQbzA:1tULiA:tw0EEURcsc9gsYNps7C2vOXuMR-6u9WXMtOhpdfoyGU', '2025-01-19 08:10:14.919418'),
('d42jrvjfky6xfv9yo6ewrfwva2rgdr1m', '.eJyrViotTi3KS8xNVbJSKkvMS0nMS1TSUSooykwGiuSV5uToKGWmwFhpmXmJOVA5Q0uDWgCi0RT_:1tURge:kB2ejsURQYgwctuSpuBsJO-LPOYitb5S-_9HDK1Py_I', '2025-01-19 14:33:04.131838'),
('3nsnxjlrr6lpzdbxjkmhq0nn0zaxw6ye', '.eJyrViotTi3KS8xNVbJSKkvMS0nMS1TSUUrLzEvMKSjKTAYKG-goFRTlp5Qml2SmKFnllebkwAUg-iBCpXmZJQhpsE4QpxYArAYiwg:1tUrIn:RuuHMVtGbysLUHGsaFMh-Cua4V6zfbJCR9oV-lTD3FY', '2025-01-20 17:54:09.403096'),
('7gr2x5r0ddcge8mf0xyjfogk1225id9q', '.eJyrViotTi3KS8xNVbJSKkvMS0nMS1TSUSooyk8pTS7JTFGyyivNyYELQBRChErzMksQ0pnJcIm0zLzEHKiIkaGBjlIikDavBQAEKSSZ:1tVF5D:7pDt4p68lvRDUl851dTl0E_MfQOOyVQXK-h0sS-MdbM', '2025-01-21 19:17:43.875507'),
('a244us9y9s98ekglrmg63wextqklgflp', '.eJx10L8OgkAMBvBXIZ1v4PgTDasmvoCbYWi4E5pwRc87E0N4d0uCAxjGtt_3GzpCfFnP6CxU8EY2yAgKGvSBgnVQ3UZ4-MHEJpCBKi_Ub1w6p66TSnLGXmqRKcguK9OkdTBHqZFQkSp4RmQhP_MZJrVS9WGrXgeHYdgXs7Wot2KebsULcWv9vqj_xFrBnRj7JVAeJYHykHr6ApL7YgQ:1tVNiJ:o7DWbZYRLwGcaCec4iEDW6sbN2y7h9Tpx9YiN9IHkig', '2025-01-22 04:30:39.290613'),
('jxu0clz4kkwepo0exyt481brhk4tl798', '.eJyljs0KwjAQhF9F9lw0_kOfw5t4WJpYV5JNf5JCKX13N6UUehL0EnYmw3wzQGxNw-gM5NAha2SEDKrG61gE0pDvr4ucYzfvMHhJRaYg-nBWm9KJriNyoNAnbyqhQvInJWeylHhPYrTzB0drM3Bep9IC25dnbSx1pukliZDfhx-HzAC1mpTwyw5ypZzy7sJUsn1XJYzZn8DLmnj8TnyMH9g4eUg:1tY4jp:4Y7saN2I0Nr8pG_3DvxC9aoLd0Q2Abg0bP3iuAVI7XE', '2025-01-29 14:51:21.042535'),
('tl4g45jyhbh2wqu3n3jrnq1tjm0pzvqz', '.eJxdjEEKwjAQRa8if51FWipCzuFOXAxNlYFkonUilNK7G02L4m7en8ebkR_DKBQHODxJPAnBgOBOM25j8rlX9nDNwWy4yscUSVNxs7AWbvd2d414a9wXwRrcM4myTuVrsZzNb1ByCH_JOtVcvb-BTf-kK1xYKKxL23Td8gIkeER3:1tVOnh:eZCjfDUJtT7cXr9-XXcT5sd5tlmNHzudcTZ0W1IR720', '2025-01-22 05:40:17.704262'),
('i7l753qwhmhl35yv0lh10cwud771x9cm', 'eyJ1c2VybmFtZSI6InZpZGh5YSIsImEiOm51bGwsImZpbmFscHJpY2UiOjEyOSwibW9kZSI6ImNhcmRwYXltZW50In0:1tVUgy:EstBe8ptGvy1HdWd40zfjDpsKzuKo9lBj_O440bWVY4', '2025-01-22 11:57:44.666220'),
('4i0qjjitssy2xpym6pl5tb93f1mahb9p', '.eJw9jcEKwjAQRH-l7LkHrbRCzl79iCFJZSHZxDQRSvHf3Rb1NvN4zGzUFl8E0ZOhF8RBQD2BjLQQeppZEHJh638kJre7FsVlrNFLVT-X5Jqt7Mhcrv_6nb1jSal0NwQ1m3BVNoyn7hG1Pxukcl2VnY-h42qYNO7aRO8PmpE0PQ:1tVZBf:bNyXjVAzHjebvVZ1jlmbStGGPq4MxdOkcZOyrlmyp7U', '2025-01-22 16:45:43.068936'),
('i5n8yd7yodgw3cv2fkkuy3vpml3okmy2', '.eJw9jEEKwkAMRa8iWXcxLQjSU3iFMBk1MJPoNCkU8e6mUtzlvTz-G3wpXbAVmGFFIRSEAZ5dybMxwTxe_nhkVzU0jcqFLXg6p9O9Bb8cxdi23f1GOEc_pThDjSncjQXr8RCvdYCmtI9mXB4qVCqvpW_w-QLzRTGH:1tY4mO:1Gr3KEioLEjcfKC5MLXsjrp2OkjvPhTHkb5ZBjD9T4w', '2025-01-29 14:54:00.128565'),
('9hpq4wvo0qdx76rekllg4lncnjn0rcku', '.eJw9jcEKwjAMhl9l5LxDFXewV58kNHErtFnNWmGI72461FP4Pz6-vKBtrIKZwcMThVAQRkDw0lIa4R4FU9EY-EfySt0NqFRwzyzV_KIrtVAjgT8599_f7m1hItTBLm9sepNYjZ8nN8zZ9qOh1Fj3zo7a8e_aQ4YuE7w_q7o13Q:1tYqbm:cr81IihqCj8eaZF0gTyDGlpA0mFoJGzRsK7UEWsaeFM', '2025-01-31 17:58:14.295509'),
('15vzb1n05igf3u8fad7f27jjtdau2ecm', '.eJw9zDEKgDAMBdCrSGaHKiji6KyHCLZCoKZaG0HEuxukuCXv_-QGOVxkXB30cCJbZIQSthiszIks9F3zr7k2htMVA0btCVNSmYgpyy7IidKlWn-PaNabqjU6q3VGcSFGnxMW758XnDsq3w:1tfUs1:a6i2XdUox42_pHWhzbs_8WPpr6XqfrOf07-NuUFbNNY', '2025-02-19 02:10:29.276851'),
('sgs1l52c7pbc2zgw17qw297c1wbhy39r', '.eJxVjcsOgjAQRf9l1oRQWqC6dO83kOlMKygMhIeJMf67bcKG7T0n535hX_0iOHq4whuFURAyQLjKPgwZhF5wmJeeIq9skcE4cVIJF57xM3rZot7ivnVtKrU9R6rOm0N6eUmAnyiPKadJtqV3eVLyg675PaaH2-GeAh2uXTp1hKgKZrZNzeWlDkQmeIfGBmOVN7rQgRri2rE2BhttvXa1rkrDulAKfn85X07-:1ta96s:ju_EfgT2MVN3KUHTzR4roR4hFtIkLfyK2IG33IeIWzU', '2025-02-04 07:55:42.225153'),
('wjkp0g1nynjibe4v2bp6ncluxwysh6tf', '.eJxNjcEKwjAQRH9F5hw0iiLkO7yJhyWJcaXZ1DYplNJ_NxEFL7szzGNmQRn9IBQ9DCYSR0JQIJjrgn5IrtjMDmZ_Vj_7hS8pUk6VLcK5-sNJb0JEw9hW4KgVXoUkc55b3JL2dRUcQ5X17vKnZfvsA9abwp2Fur-CmFzbsjQ-kjjf8eSHGesbyvY6WA:1tgkXU:mdi9A0gKT0VKujraVDT9lQI7oDlMPUYNdB1MekWcj0E', '2025-02-22 13:06:28.720559'),
('47wn5vp9on5n2tvkrhvccy9yrl0oh84h', 'eyJ1c2VybmFtZSI6InZhbmRhbmEiLCJhIjpudWxsLCJmaW5hbHByaWNlIjoxOTAsIm1vZGUiOiJjYXNob25kZWxpdmVyeSJ9:1tk6AS:3htGdCk74nTzHk50kzR1MxAoQjXGeZbXl8HygGjFiDw', '2025-03-03 18:48:32.554020'),
('j8ek10dzqbxxdy9kp0jzkz9vh5pgwyjq', '.eJydjUEKwjAQRa8isy5aK7rIznOIiyGJcaSZxDYplNK7dyJqwaWbYf7j8_4Eubcdo7egYEA2yLiHCmIXTNaJDKjm9I3v3jnG1kopMyWJzbHeOC_5mZETpVFY_XKQlnotn5BDQTdibFeOoC7Tf1ur5Hf1s0XeySt3h8WxfUQH87UCH0wRa-zvgY1tabDdCPMCZOZTAg:1u1QTg:1s9bascDQZSqwqbJ0NHjOxTDB4n-sneWEmTJXEWxiQs', '2025-04-20 13:56:00.433001');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_card`
--

DROP TABLE IF EXISTS `groceryapp_card`;
CREATE TABLE IF NOT EXISTS `groceryapp_card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_number` varchar(12) DEFAULT NULL,
  `Expiry_date` datetime(6) NOT NULL,
  `cvv` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `Amount` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_card`
--

INSERT INTO `groceryapp_card` (`id`, `card_number`, `Expiry_date`, `cvv`, `username`, `Amount`, `address`, `phoneno`) VALUES
(2, '23333333', '2025-01-06 00:00:00.000000', 234, 'vandana', 1312, 'morbi', '222222'),
(3, '23333333', '2025-01-10 00:00:00.000000', 444, 'vandana', 180, 'morbi', '222222'),
(4, '23333333', '2025-01-02 00:00:00.000000', 1, 'vandana', 145, 'nnn666666666', '222222'),
(5, '23333333', '2025-01-01 00:00:00.000000', 44, 'vandana', 145, 'jkk', '3454345434'),
(6, '23333333', '2025-01-01 00:00:00.000000', 44, 'vandana', 20, 'morbi', '444444'),
(7, '23333333', '2025-01-01 00:00:00.000000', 44, 'vandana', 20, 'morbi', '444444'),
(8, '23333333', '2025-01-07 00:00:00.000000', 33, 'vandana', 10, '333', '333'),
(9, '23333333', '2025-01-16 00:00:00.000000', 1, 'vandana', 30, 'dksdks', '43434334'),
(10, '23333333', '2025-01-16 00:00:00.000000', 1, 'vandana', 30, 'dksdks', '43434334'),
(11, '23333333', '2025-01-02 00:00:00.000000', 2232, 'vandana', 20, 'qsqsqsaxsa', '3454345434'),
(12, '23333333', '2025-01-03 00:00:00.000000', 2333, 'vandana', 25, 'morbi', '222222'),
(13, '23333333', '2025-01-03 00:00:00.000000', 2333, 'vandana', 25, 'morbi', '222222'),
(14, '23333333', '2025-01-03 00:00:00.000000', 2333, 'vandana', 25, 'morbi', '222222'),
(15, '23333333', '2025-01-03 00:00:00.000000', 45, 'vandana', 0, 'morbi', '444444'),
(16, '23333333', '2024-12-30 00:00:00.000000', 2344, 'vandana', 40, 'morbi', '444444'),
(17, '23333333', '2025-01-13 00:00:00.000000', 3344, 'vidhya', 129, 'morbi', '3454345434'),
(18, '23333333', '2025-01-14 00:00:00.000000', 34657, 'vandana', 30, 'morbi', '222222'),
(19, '23333333', '2025-01-29 00:00:00.000000', 45, 'vandana', 20, 'nnn666666666', '334444'),
(20, '23333333', '2024-12-31 00:00:00.000000', 66, 'vandana', 90, 'qsqsqsaxsa', '444444'),
(21, '23333333', '2025-01-02 00:00:00.000000', 8, 'vandana', 90, 'nnn666666666', '222222'),
(22, '23333333', '2025-01-09 00:00:00.000000', 1, 'vandana', 580, 'morbi', '43434334'),
(23, '23333333', '2025-02-04 00:00:00.000000', 56, 'vandana', 60, 'morbi', '3454345434');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_cartdata`
--

DROP TABLE IF EXISTS `groceryapp_cartdata`;
CREATE TABLE IF NOT EXISTS `groceryapp_cartdata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `productimage` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `unit` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `totalprice` int NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_cartdata_product_id_4b4c459a` (`product_id`),
  KEY `groceryapp_cartdata_user_id_e0789715` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_cartdata`
--

INSERT INTO `groceryapp_cartdata` (`id`, `productname`, `productimage`, `quantity`, `unit`, `price`, `totalprice`, `product_id`, `user_id`) VALUES
(281, 'Cheddar Cheese', 'img/cheddar_cheese.jpg', 2, '250 gm', 45, 90, 100, 26),
(280, 'Rosemary', 'img/rosemary.jpg', 2, '250 gm', 10, 20, 33, 26),
(279, 'Sprite', 'img/sprite.jpg', 2, '1.5 ltr', 35, 70, 81, 26),
(278, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(260, 'Grapes', 'img/grapes.jpg', 0, '250 gm', 15, 0, 27, 26),
(261, 'Sweet Curd', 'img/sweet_curd.jpg', 0, '250 gm', 25, 0, 108, 26),
(262, 'Sweet Curd', 'img/sweet_curd.jpg', 0, '250 gm', 25, 0, 108, 26),
(277, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(276, 'Tomato', 'img/tomato.jpg', 3, '250 gm', 20, 60, 17, 26),
(275, 'Tomato', 'img/tomato.jpg', 3, '250 gm', 20, 60, 17, 26),
(274, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(273, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(272, 'Tomato', 'img/tomato.jpg', 3, '250 gm', 20, 60, 17, 26),
(271, 'Masoor Dal', 'img/masoor_dal.jpg', 1, '250 gm', 26, 26, 37, 26),
(270, 'Tomato', 'img/tomato.jpg', 1, '250 gm', 20, 20, 17, 26),
(269, 'Amul Masti', 'img/amul_masti.jpg', 2, '250 ml', 15, 30, 112, 26),
(264, 'Sweet Curd', 'img/sweet_curd.jpg', 0, '250 gm', 25, 0, 108, 26),
(265, 'Hung Curd', 'img/hung_curd.jpg', 2, '250 gm', 20, 40, 109, 26),
(266, 'Garlic', 'img/garlic.jpg', 3, '250 gm', 37, 111, 31, 30),
(267, 'Snickers Almond Chocolate Bar', 'img/snickers_almond_chocolate.jpg', 1, 'Small pack', 18, 18, 84, 30),
(268, 'Masoor Dal', 'img/masoor_dal.jpg', 1, '250 gm', 26, 26, 37, 26),
(263, 'Sweet Curd', 'img/sweet_curd.jpg', 1, '250 gm', 25, 25, 108, 26),
(259, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(257, 'Bringle', 'img/bringle_NRMfvhg.jpg', 3, '250 gm', 15, 45, 15, 26),
(258, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(255, 'Apple', 'img/apple.jpg', 0, '250 gm', 30, 0, 26, 26),
(256, 'Bringle', 'img/bringle_NRMfvhg.jpg', 3, '250 gm', 15, 45, 15, 26),
(254, 'Ginger', 'img/ginger.jpg', 2, '250 gm', 10, 20, 30, 26),
(251, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(253, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(252, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(250, 'Tomato', 'img/tomato.jpg', 4, '250 gm', 20, 80, 17, 26),
(249, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(248, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(247, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(246, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(245, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(244, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(243, 'Coconut', 'img/coconut.jpg', 1, '1 no', 35, 35, 32, 26),
(242, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(241, 'Grapes', 'img/grapes.jpg', 2, '250 gm', 15, 30, 27, 26),
(240, 'Grapes', 'img/grapes.jpg', 1, '250 gm', 15, 15, 27, 26),
(239, 'Apple', 'img/apple.jpg', 2, '250 gm', 30, 60, 26, 26),
(238, 'Apple', 'img/apple.jpg', 3, '250 gm', 30, 90, 26, 26),
(237, 'Tomato', 'img/tomato.jpg', 1, '250 gm', 20, 20, 17, 26),
(236, 'Bringle', 'img/bringle_NRMfvhg.jpg', 2, '250 gm', 15, 30, 15, 26),
(235, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(234, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(233, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(232, 'Potato', 'img/potato_tovwxtS.jpg', 1, '250 gm', 10, 10, 18, 26),
(231, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(230, 'Tomato', 'img/tomato.jpg', 1, '250 gm', 20, 20, 17, 26),
(229, 'Tomato', 'img/tomato.jpg', 1, '250 gm', 20, 20, 17, 26),
(228, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(227, 'Potato', 'img/potato_tovwxtS.jpg', 1, '250 gm', 10, 10, 18, 26),
(226, 'Potato', 'img/potato_tovwxtS.jpg', 0, '250 gm', 10, 0, 18, 26),
(225, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(224, 'Potato', 'img/potato_tovwxtS.jpg', 1, '250 gm', 10, 10, 18, 26),
(223, 'Potato', 'img/potato_tovwxtS.jpg', 3, '250 gm', 10, 30, 18, 26),
(222, 'Potato', 'img/potato_tovwxtS.jpg', 3, '250 gm', 10, 30, 18, 26),
(221, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(220, 'Bringle', 'img/bringle_NRMfvhg.jpg', 1, '250 gm', 15, 15, 15, 26),
(219, 'Bringle', 'img/bringle_NRMfvhg.jpg', 1, '250 gm', 15, 15, 15, 26),
(218, 'Apple', 'img/apple.jpg', 1, '250 gm', 30, 30, 26, 26),
(217, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(216, 'Apple', 'img/apple.jpg', 2, '250 gm', 30, 60, 26, 26),
(215, 'PineApple', 'img/pineapple.jpg', 2, '250 gm', 62, 124, 28, 26),
(214, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(213, 'Tomato', 'img/tomato.jpg', 1, '250 gm', 20, 20, 17, 26),
(212, 'Tomato', 'img/tomato.jpg', 0, '250 gm', 20, 0, 17, 26),
(211, 'Potato', 'img/potato_tovwxtS.jpg', 2, '250 gm', 10, 20, 18, 26),
(209, 'Apple', 'img/apple.jpg', 2, '250 gm', 30, 60, 26, 26),
(210, 'Grapes', 'img/grapes.jpg', 3, '250 gm', 15, 45, 27, 26),
(282, 'Mango', 'img/mango.jpg', 2, '250 gm', 290, 580, 29, 26),
(283, 'Love Bar', 'img/love_bar.jpg', 2, 'Mini Bar', 80, 160, 85, 26),
(284, 'Salt', 'img/salt.jpg', 2, '250 gm', 10, 20, 41, 26),
(285, 'Tomato', 'img/tomato.jpg', 2, '250 gm', 20, 40, 17, 26),
(286, 'Grapes', 'img/grapes.jpg', 2, '250 gm', 30, 60, 27, 26),
(287, 'Apple', 'img/apple.jpg', 2, '500 gm', 60, 120, 26, 26),
(288, 'Coconut', 'img/coconut.jpg', 2, '1 no', 35, 70, 32, 26),
(289, 'Apple', 'img/apple.jpg', 0, '250 gm', 30, 0, 26, 31),
(290, 'Apple', 'img/apple.jpg', 0, '250 gm', 30, 0, 26, 31);

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_cashondelivery`
--

DROP TABLE IF EXISTS `groceryapp_cashondelivery`;
CREATE TABLE IF NOT EXISTS `groceryapp_cashondelivery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_cashondelivery`
--

INSERT INTO `groceryapp_cashondelivery` (`id`, `address`, `phoneno`, `username`) VALUES
(18, 'morbi', '232323', 'vandana'),
(17, 'morbi', '222222', 'vandana'),
(16, 'morbi', '222222', 'vandana'),
(15, 'morbi', '222222', 'vandana'),
(19, 'morbi', '232323', 'vandana'),
(20, 'morbi', '232323', 'vandana'),
(21, 'morbi', '232323', 'vandana'),
(22, 'morbi', '232323', 'vandana'),
(23, 'morbi', '232323', 'vandana'),
(24, 'morbi', '222222', 'vandana'),
(25, 'morbi', '222222', 'vandana'),
(26, 'morbi', '43434334', 'vandana'),
(27, 'morbi', '222222', 'vandana'),
(28, 'morbi', '3454345434', 'vandana'),
(29, 'morbi', '43434334', 'vandana'),
(30, 'morbi', '43434334', 'vandana'),
(31, 'morbi', '43434334', 'vandana'),
(32, 'morbi', '43434334', 'vandana'),
(33, 'morbi', '334444', 'vandana'),
(34, 'morbi', '444444', 'vandana'),
(35, 'qsqsqsaxsa', '444444', 'vandana'),
(36, 'morbi', '232323', 'vandana'),
(37, 'morbi', '334444', 'vandana'),
(38, 'morbi', '444444', 'vandana'),
(39, 'morbi', '3454345434', 'vandana'),
(40, 'morbi', '334444', 'vandana'),
(41, 'morbi', '222222', 'vandana'),
(42, 'qsqsqsaxsa', '444444', 'vandana'),
(43, 'morbi', '43434334', 'vandana'),
(44, 'morbi', '232323', 'vandana'),
(45, 'morbi', '444444', 'vandana'),
(46, 'morbi', '334444', 'vandana'),
(47, 'morbi', '334444', 'vandana'),
(48, 'morbi', '222222', 'vandana'),
(49, 'morbi', '3454345434', 'vandana'),
(50, 'morbi', '232323', 'vandana'),
(51, 'morbi', '222222', 'vandana'),
(52, 'morbi', '232323', 'vandana'),
(53, 'morbi', '23432345', 'vandana'),
(54, 'morbi', '334444', 'vandana'),
(55, 'morbi', '43434334', 'vandana'),
(56, 'morbi', '3454345434', 'vandana'),
(57, 'morbi', '222222', 'vandana'),
(58, 'morbi', '232323', 'vandana'),
(59, 'morbi', '334444', 'vandana'),
(60, 'morbi', '43434334', 'vandana'),
(61, 'morbi', '3454345434', 'vandana'),
(62, 'morbi', '444444', 'vandana'),
(63, 'morbi', '222222', 'vandana'),
(64, 'morbi', '444444', 'vandana'),
(65, 'morbi', '444444', 'vandana'),
(66, 's', 's', 'vandana'),
(67, 'morbi', 'er', 'vandana'),
(68, 'qsqsqsaxsa', '232323', 'vandana'),
(69, 'morbi', '232323', 'vandana'),
(70, 'morbi', '334444', 'vandana'),
(71, 'morbi', '444444', 'vandana'),
(72, 'morbi', '222222', 'vandana'),
(73, 'morbi', '232323', 'vandana1');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_category`
--

DROP TABLE IF EXISTS `groceryapp_category`;
CREATE TABLE IF NOT EXISTS `groceryapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) NOT NULL,
  `catimage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_category`
--

INSERT INTO `groceryapp_category` (`id`, `catname`, `catimage`) VALUES
(15, 'Cooking Essentials', 'img/grocery.jpg'),
(14, 'Beauty Products', 'img/beauty_kPVgCNc.jpg'),
(13, 'Snacks & Sweets', 'img/snacks__sweets_LyJ6RYO.jpg'),
(11, 'Fruits & Vegetables', 'img/friuts__veggis.jpg'),
(16, 'Dairy Items', 'img/dairy_VFFrd0C.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_finalorder`
--

DROP TABLE IF EXISTS `groceryapp_finalorder`;
CREATE TABLE IF NOT EXISTS `groceryapp_finalorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `user_id` bigint NOT NULL,
  `finalprice` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `paymentmode` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_finalorder_user_id_9e7e0f21` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_finalorder`
--

INSERT INTO `groceryapp_finalorder` (`id`, `productname`, `user_id`, `finalprice`, `address`, `mobile_no`, `paymentmode`, `price`, `quantity`, `unit`) VALUES
(58, 'Tomato', 26, 20, '250 gm', '20', 'cardpayment', '20', '1', '250 gm'),
(57, '[\'Amul Masti\']', 26, 30, 'morbi', '222222', 'cardpayment', '[\'15\']', '[\'2\']', '[\'250 ml\']'),
(56, '[\'Masoor Dal\']', 26, 26, 'morbi', '43434334', 'upipayment', '[\'26\']', '[\'1\']', '[\'250 gm\']'),
(55, '[\'Garlic\', \'Snickers Almond Chocolate Bar\']', 30, 129, 'morbi', '3454345434', 'cardpayment', '[\'37\', \'18\']', '[\'3\', \'1\']', '[\'250 gm\', \'Small pack\']'),
(54, '[\'Sweet Curd\', \'Hung Curd\']', 26, 40, 'morbi', '444444', 'cardpayment', '[\'25\', \'20\']', '[\'0\', \'2\']', '[\'250 gm\', \'250 gm\']'),
(53, '[\'Sweet Curd\']', 26, 0, 'morbi', '444444', 'cardpayment', '[\'25\']', '[\'0\']', '[\'250 gm\']'),
(51, '[\'Grapes\', \'Sweet Curd\', \'Sweet Curd\']', 26, 0, 'edd', '334444', 'upipayment', '[\'15\', \'25\', \'25\']', '[\'0\', \'0\', \'0\']', '[\'250 gm\', \'250 gm\', \'250 gm\']'),
(52, '[\'Grapes\', \'Sweet Curd\', \'Sweet Curd\', \'Sweet Curd', 26, 25, 'morbi', '222222', 'upipayment', '[\'15\', \'25\', \'25\', \'25\']', '[\'0\', \'0\', \'0\', \'1\']', '[\'250 gm\', \'250 gm\', \'250 gm\', \'250 gm\']'),
(49, '[\'Grapes\', \'Sweet Curd\']', 26, 0, 'df', '3454345434', 'upipayment', '[\'15\', \'25\']', '[\'0\', \'0\']', '[\'250 gm\', \'250 gm\']'),
(50, '[\'Grapes\', \'Sweet Curd\']', 26, 0, 'df', '3454345434', 'upipayment', '[\'15\', \'25\']', '[\'0\', \'0\']', '[\'250 gm\', \'250 gm\']'),
(47, '[\'Tomato\', \'Coconut\']', 26, 75, 'morbi', '444444', 'cashondelivery', '[\'20\', \'35\']', '[\'2\', \'1\']', '[\'250 gm\', \'1 no\']'),
(48, '[\'Tomato\', \'Coconut\']', 26, 75, 'morbi', '222222', 'cashondelivery', '[\'20\', \'35\']', '[\'2\', \'1\']', '[\'250 gm\', \'1 no\']'),
(46, '[\'Tomato\', \'Tomato\', \'Bringle\', \'Tomato\', \'Apple\',', 26, 285, 'morbi', '3454345434', 'cashondelivery', '[\'20\', \'20\', \'15\', \'20\', \'30\', \'30\', \'15\', \'15\']', '[\'0\', \'2\', \'2\', \'1\', \'3\', \'2\', \'1\', \'2\']', '[\'250 gm\', \'250 gm\', \'250 gm\', \'250 gm\', \'250 gm\','),
(59, 'Tomato', 26, 60, 'morbi', '444444', 'cashondelivery', '20', '3', '250 gm'),
(60, 'Tomato', 26, 60, 'morbi', '444444', 'cashondelivery', '20', '3', '250 gm'),
(61, 'Tomato', 26, 0, 's', 's', 'cashondelivery', '20', '0', '250 gm'),
(62, '[\'Tomato\', \'Tomato\']', 26, 60, 'qsqsqsaxsa', '232323', 'cashondelivery', '[\'20\', \'20\']', '[\'0\', \'3\']', '[\'250 gm\', \'250 gm\']'),
(63, 'Potato', 26, 20, 'morbi', '334444', 'cashondelivery', '10', '2', '250 gm'),
(64, '[\'Sprite\', \'Rosemary\']', 26, 90, 'qsqsqsaxsa', '444444', 'cardpayment', '[\'35\', \'10\']', '[\'2\', \'2\']', '[\'1.5 ltr\', \'250 gm\']'),
(65, 'Cheddar Cheese', 26, 90, '250 gm', '90', 'cardpayment', '45', '2', '250 gm'),
(66, '[\'Mango\']', 26, 580, 'morbi', '43434334', 'cardpayment', '[\'290\']', '[\'2\']', '[\'250 gm\']'),
(67, '[\'Salt\']', 26, 20, 'morbi', '444444', 'cashondelivery', '[\'10\']', '[\'2\']', '[\'250 gm\']'),
(68, '[\'Grapes\']', 26, 60, 'morbi', '3454345434', 'cardpayment', '[\'30\']', '[\'2\']', '[\'250 gm\']'),
(69, '[\'Apple\', \'Coconut\']', 26, 190, 'morbi', '222222', 'cashondelivery', '[\'60\', \'35\']', '[\'2\', \'2\']', '[\'500 gm\', \'1 no\']'),
(70, '[\'Apple\']', 31, 0, 'morbi', '232323', 'cashondelivery', '[\'30\']', '[\'0\']', '[\'250 gm\']');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_login`
--

DROP TABLE IF EXISTS `groceryapp_login`;
CREATE TABLE IF NOT EXISTS `groceryapp_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cpassword` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_product`
--

DROP TABLE IF EXISTS `groceryapp_product`;
CREATE TABLE IF NOT EXISTS `groceryapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productname` varchar(100) NOT NULL,
  `productimage` varchar(100) NOT NULL,
  `productdesc` longtext NOT NULL,
  `productstock` int NOT NULL,
  `productprice` int NOT NULL,
  `categoryid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_product_categoryid_id_59726a8e` (`categoryid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_product`
--

INSERT INTO `groceryapp_product` (`id`, `productname`, `productimage`, `productdesc`, `productstock`, `productprice`, `categoryid_id`) VALUES
(15, 'Bringle', 'img/bringle_NRMfvhg.jpg', 'This is the bringle...', 50, 30, 14),
(17, 'Tomato', 'img/tomato.jpg', 'Tomatoes...', 40, 20, 14),
(18, 'Potato', 'img/potato_tovwxtS.jpg', 'Potatos..', 40, 25, 14),
(19, 'Onions', 'img/onion.jpg', 'Onions', 64, 30, 14),
(30, 'Ginger', 'img/ginger.jpg', 'Ginger', 54, 70, 35),
(29, 'Mango', 'img/mango.jpg', 'Mango', 35, 145, 12),
(54, 'Dove Shampoo', 'img/shampoo.jpg', 'Dove Shampoo', 56, 540, 24),
(26, 'Apple', 'img/apple.jpg', 'Apples', 45, 120, 12),
(27, 'Grapes', 'img/grapes.jpg', 'Grapes', 180, 60, 12),
(28, 'PineApple', 'img/pineapple.jpg', 'PineApple', 40, 250, 12),
(31, 'Garlic', 'img/garlic.jpg', 'Garlic', 52, 152, 35),
(32, 'Coconut', 'img/coconut.jpg', 'Coconut', 180, 35, 35),
(33, 'Rosemary', 'img/rosemary.jpg', 'Rosemary', 50, 10, 35),
(34, 'Chhana Dal', 'img/chhana.jpg', 'Chhana Dal', 40, 80, 28),
(35, 'Moong Dal', 'img/moong_dal.jpg', 'Moong Dal', 60, 109, 28),
(36, 'Toor Dal', 'img/toor_dal.jpg', 'Toor Dal', 57, 129, 28),
(37, 'Masoor Dal', 'img/masoor_dal.jpg', 'Masoor Dal', 25, 105, 28),
(38, 'Red Chilli Powder', 'img/chilli.jpg', 'Red Chilli Powder', 240, 136, 29),
(39, 'Turmeric Powder', 'img/turmeric.jpg', 'Turmeric Powder', 55, 150, 29),
(40, 'Coriander Powder', 'img/coriander.jpg', 'Coriander Powder', 26, 110, 29),
(41, 'Salt', 'img/salt.jpg', 'Salt', 168, 50, 29),
(42, 'Wheat Flour', 'img/wheat_flour.jpg', 'Wheat Flour', 160, 50, 30),
(43, 'Gram Flour', 'img/gram_flour.jpg', 'Gram Flour', 180, 79, 30),
(44, 'All Purpose Flour', 'img/all_purpose.jpg', 'All Purpose Flour', 30, 130, 30),
(45, 'Sooji', 'img/semolina.jpg', 'Sooji', 46, 35, 30),
(46, 'White Rice', 'img/rice_CbBPHiE.jpg', 'White Rice', 300, 20, 31),
(47, 'Red Rice', 'img/red_rice.jpg', 'Red Rice', 280, 150, 31),
(48, 'Basmati Rice', 'img/basmati_rice.jpg', 'Basmati Rice', 240, 180, 31),
(49, 'Brown Rice', 'img/brown_rice.jpg', 'Brown Rice', 210, 210, 31),
(50, 'Fortune Cotton Seed Oil', 'img/cotton_oil.jpg', 'Fortune Cotton Seed Oil', 150, 60, 32),
(51, 'Fortune Sunflower Oil', 'img/sunflower.jpg', 'Fortune Sunflower Oil', 140, 2250, 32),
(52, 'Fortune Musturd Oil', 'img/mustard.jpg', 'Fortune Musturd Oil', 30, 150, 32),
(53, 'Fortune Ground Nut Oil', 'img/groundnut.jpg', 'Fortune Ground Nut Oil', 40, 680, 32),
(55, 'Dove Conditioner', 'img/conditioner.jpg', 'Dove Conditioner', 480, 520, 24),
(56, 'Dove Serum', 'img/serum.jpg', 'Dove Serum', 110, 160, 24),
(57, 'Indulekha Hair Oil', 'img/indulekha.jpg', 'Indulekha Hair Oil', 140, 350, 24),
(58, 'Dettol Hand Wash', 'img/dettol.jpg', 'Dettol Hand Wash', 300, 140, 25),
(59, 'Lux Hibiscus Soap', 'img/lux_hibiscus.jpg', 'Lux Hibiscus Soap', 120, 60, 25),
(60, 'Coconut Baby Bath Soap', 'img/coconut_bathing_bar.jpg', 'Coconut Baby Bath Soap', 420, 110, 25),
(61, 'Cinthol Soap', 'img/cinthol.jpg', 'Cinthol Soap', 380, 250, 25),
(62, 'MAC Foundation', 'img/foundation.jpg', 'MAC Foundation', 320, 240, 26),
(63, 'Glory Serum', 'img/glory_serum.jpg', 'Glory Serum', 40, 210, 26),
(64, 'Sephora Primer', 'img/sephora_prime.jpg', 'Sephora Primer', 420, 450, 26),
(65, 'Rare Beauty Lip Colour', 'img/lip_clour.jpg', 'Rare Beauty Lip Colour', 130, 410, 26),
(66, 'Fog Impressio', 'img/fog.jpg', 'Fog Impressio', 150, 493, 34),
(67, 'Wild Stone', 'img/wild_stone.jpg', 'Wild Stone', 110, 450, 34),
(68, 'Mohfa Perfumes', 'img/mohfa.jpg', 'Mohfa Perfumes', 40, 489, 34),
(69, 'Soma | Roll on Fregrences', 'img/soma.jpg', 'Soma | Roll on Fregrences', 390, 350, 34),
(70, 'BioTique | Daily Skin care Essential Gift Kit', 'img/biotique.jpg', 'BioTique | Daily Skin care Essential Gift Kit', 450, 350, 27),
(71, 'Dot & Key | Watermelon Oil Free + Luminous Skin Co', 'img/dot_key.jpg', 'Dot & Key | Watermelon Oil Free + Luminous Skin Combo', 50, 450, 27),
(72, 'Skincraft Total 5 Step Coustmized Skin Care Combo', 'img/skinkraft.jpg', 'Skincraft Total 5 Step Coustmized Skin Care Combo', 30, 310, 27),
(73, 'Mamaearth Mini Mammoth Deal Combo', 'img/mamaerath.jpg', 'Mamaearth Mini Mammoth Deal Combo', 20, 560, 27),
(74, 'Gulab Jamun', 'img/gulab_jamun.jpg', 'Gulab Jamun', 20, 160, 33),
(75, 'Vadilal Mohanthal Sweet', 'img/vadilal_mohnthal.jpg', 'Vadilal Mohanthal Sweet', 300, 360, 33),
(76, 'Keshar Rasmalai', 'img/keshar_rasmalai.jpg', 'Keshar Rasmalai', 360, 560, 33),
(77, 'Mix Mava Mithai', 'img/mix_mithai.jpg', 'Mix Mava Mithai', 480, 520, 33),
(78, '7 UP', 'img/7_up.jpg', '7 UP', 5000, 50, 15),
(79, 'Coca Cola', 'img/coca_cola.jpg', 'Coca Cola', 3590, 35, 15),
(80, 'Maaza', 'img/maaza.jpg', 'Maaza', 80, 69, 15),
(81, 'Sprite', 'img/sprite.jpg', 'Sprite', 560, 35, 15),
(82, 'Dairy Milk Silk', 'img/dairy_milk_silk.jpg', 'Dairy Milk Silk', 450, 180, 16),
(83, 'KitKat', 'img/kitkat.jpg', 'KitKat', 1790, 29, 16),
(84, 'Snickers Almond Chocolate Bar', 'img/snickers_almond_chocolate.jpg', 'Snickers Almond Chocolate Bar', 890, 65, 16),
(85, 'Love Bar', 'img/love_bar.jpg', 'Love Bar', 780, 80, 16),
(86, 'Del Monte Pasta', 'img/Del_monte_pasta.jpg', 'Del Monte Pasta', 670, 780, 18),
(87, 'Kab\'s Jackpot Noodels', 'img/kabs_jackpot_noodels.jpg', 'Kab\'s Jackpot Noodels', 390, 68, 18),
(88, 'Wheat Pasta', 'img/wheat_pasta.jpg', 'Wheat Pasta', 840, 80, 18),
(89, 'Mo Soi Hakka Noodels', 'img/mosoi_hakka_noodles.jpg', 'Mo Soi Hakka Noodels', 70, 180, 18),
(90, 'Amul Butter Cookies', 'img/amul_butter_cookies.jpg', 'Amul Butter Cookies', 80, 30, 19),
(91, 'Good Day Butter', 'img/Good_day.jpg', 'Good Day Butter', 580, 10, 19),
(92, 'Little Hearts', 'img/little_hearts.jpg', 'Little Hearts', 680, 20, 19),
(93, 'Britannia Nutri Choice', 'img/nutri_choice.jpg', 'Britannia Nutri Choice', 530, 25, 19),
(94, 'Burger Buns', 'img/burger_buns.jpg', 'Burger Buns', 590, 45, 39),
(95, 'Mini Buns', 'img/mini_bun.jpg', 'Mini Buns', 60, 25, 39),
(96, 'Pav Bun', 'img/pav_bun.jpg', 'Pav Bun', 80, 15, 39),
(97, 'Whole Wheat Mini Buns', 'img/whole_wheat_mini_bun.jpg', 'Whole Wheat Mini Buns', 100, 80, 39),
(98, 'Amul Cheese', 'img/amul_chesse.jpg', 'Amul Cheese', 80, 150, 38),
(99, 'Amul Butter', 'img/amul_butter.jpg', 'Amul Butter', 50, 15, 38),
(100, 'Cheddar Cheese', 'img/cheddar_cheese.jpg', 'Cheddar Cheese', 100, 180, 38),
(101, 'Herbed Butter', 'img/herber_butter.jpg', 'Herbed Butter', 50, 180, 38),
(102, 'Amul Taaza', 'img/amul_taaza.jpg', 'Amul Taaza', 180, 25, 37),
(103, 'Mother Dairy Milk', 'img/mother_dairy.jpg', 'Mother Dairy Milk', 80, 19, 37),
(104, 'Amul Milk', 'img/mul_milk.jpg', 'Amul Milk', 590, 25, 37),
(105, 'Go Supremo Milk', 'img/go_supremo.jpg', 'Go Supremo Milk', 90, 20, 37),
(106, 'Matka Curd', 'img/matka_curd.jpg', 'Matka Curd', 70, 20, 40),
(107, 'Amul Masti Dahi', 'img/amul_masti_dahi.jpg', 'Amul Masti Dahi', 65, 15, 40),
(108, 'Sweet Curd', 'img/sweet_curd.jpg', 'Sweet Curd', 56, 25, 40),
(109, 'Hung Curd', 'img/hung_curd.jpg', 'Hung Curd', 85, 20, 40),
(110, 'Amul Butter Milk', 'img/amul_butter_milk.jpg', 'Amul Butter Milk', 180, 15, 41),
(111, 'Amul Premier Butter Milk', 'img/amul_premium_buter_milk.jpg', 'Amul Premier Butter Milk', 19, 25, 41),
(112, 'Amul Masti', 'img/amul_masti.jpg', 'Amul Masti', 190, 15, 41),
(113, 'Milky Mist Butter Milk', 'img/milky_mist.jpg', 'Milky Mist Butter Milk', 50, 20, 41);

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_product_unit`
--

DROP TABLE IF EXISTS `groceryapp_product_unit`;
CREATE TABLE IF NOT EXISTS `groceryapp_product_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) NOT NULL,
  `price` int NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_product_unit_product_id_c5f62d3b` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_product_unit`
--

INSERT INTO `groceryapp_product_unit` (`id`, `unit`, `price`, `product_id`) VALUES
(7, '1 ltr', 70, 53),
(8, '1 ltr', 80, 50),
(9, '1 ltr', 150, 52),
(10, '15 ltr', 2250, 51),
(11, '250 gm', 15, 15),
(12, '500 gm', 30, 15),
(13, '1 kg', 60, 15),
(14, '250 gm', 20, 17),
(15, '500 gm', 40, 17),
(16, '1 kg', 80, 17),
(17, '250 gm', 10, 18),
(18, '500 gm', 15, 18),
(19, '1 kg', 30, 18),
(20, '250 gm', 30, 19),
(21, '500 gm', 60, 19),
(22, '1 kg', 120, 19),
(23, '250 gm', 145, 29),
(24, '500 gm', 290, 29),
(25, '1 kg', 580, 29),
(26, '250 gm', 30, 26),
(27, '500 gm', 60, 26),
(28, '1 kg', 120, 26),
(29, '250 gm', 15, 27),
(30, '500 gm', 30, 27),
(31, '1 kg', 60, 27),
(32, '250 gm', 62, 28),
(33, '500 gm', 125, 28),
(34, '1 kg', 250, 28),
(35, '250 gm', 10, 30),
(36, '500 gm', 35, 30),
(37, '1 kg', 70, 30),
(38, '250 gm', 37, 31),
(39, '500 gm', 75, 31),
(40, '1 kg', 152, 31),
(41, '1 no', 35, 32),
(42, '250 gm', 10, 33),
(43, '500 gm', 20, 33),
(44, '1 kg', 40, 33),
(45, '250 gm', 20, 34),
(46, '500 gm', 40, 34),
(47, '1 kg', 80, 34),
(48, '250 gm', 32, 36),
(49, '500 gm', 64, 36),
(50, '1 kg', 129, 36),
(51, '250 gm', 27, 35),
(52, '500 gm', 54, 35),
(53, '1 kg', 109, 35),
(54, '250 gm', 26, 37),
(55, '500 gm', 52, 37),
(56, '1 kg', 105, 37),
(57, '250 gm', 34, 38),
(58, '500 gm', 68, 38),
(59, '1 kg', 136, 38),
(60, '250 gm', 37, 39),
(61, '500 gm', 75, 39),
(62, '1 kg', 150, 39),
(63, '250 gm', 32, 40),
(64, '500 gm', 55, 40),
(65, '1 kg', 110, 40),
(66, '250 gm', 10, 41),
(67, '500 gm', 25, 41),
(68, '1 kg', 50, 41),
(69, '250 gm', 10, 42),
(70, '500 gm', 25, 42),
(71, '1 kg', 50, 42),
(72, '250 gm', 20, 43),
(73, '500 gm', 40, 43),
(74, '1 kg', 79, 43),
(75, '250 gm', 30, 44),
(76, '500 gm', 65, 44),
(77, '1 kg', 130, 44),
(78, '250 gm', 10, 45),
(79, '500 gm', 20, 45),
(80, '1 kg', 35, 45),
(81, '250 gm', 20, 46),
(82, '500 gm', 40, 46),
(83, '1 kg', 80, 46),
(84, '250 gm', 37, 47),
(85, '500 gm', 75, 47),
(86, '1 kg', 150, 47),
(87, '250 gm', 45, 48),
(88, '500 gm', 90, 48),
(89, '1 kg', 180, 48),
(90, '250 gm', 30, 49),
(91, '500 gm', 70, 49),
(92, '1 kg', 210, 49),
(93, '1.5 ltr', 50, 78),
(94, '2 ltr', 75, 78),
(95, '2.5 ltr', 90, 78),
(96, '1.5 ltr', 35, 80),
(97, '2 ltr', 50, 80),
(98, '2.5 ltr', 69, 80),
(99, '1.5 ltr', 35, 79),
(100, '2 ltr', 40, 79),
(101, '2.5 ltr', 70, 79),
(102, '1.5 ltr', 35, 81),
(103, '2 ltr', 50, 81),
(104, '2.5 ltr', 70, 81),
(105, '2.5 ltr', 70, 81),
(106, 'Small Dair', 90, 82),
(107, '2 Finger', 18, 83),
(108, '3 Finger', 21, 83),
(109, '4 Finger', 29, 83),
(110, 'Small pack', 18, 84),
(111, 'Big Pack', 65, 84),
(112, 'Mini Bar', 40, 85),
(113, 'Big Pack B', 80, 85),
(114, '250 gm', 195, 86),
(115, '500 gm', 390, 86),
(116, '1 kg', 780, 86),
(117, '250 gm', 17, 87),
(118, '500 gm', 34, 87),
(119, '1 kg', 68, 87),
(120, '250 gm', 20, 88),
(121, '500 gm', 40, 88),
(122, '1 kg', 80, 88),
(123, '250 gm', 45, 89),
(124, '500 gm', 90, 89),
(125, '1 kg', 180, 89),
(126, '250 gm', 30, 90),
(127, '500 gm', 60, 90),
(128, '1 kg', 120, 90),
(129, '250 gm', 10, 91),
(130, '500 gm', 20, 91),
(131, '1 kg', 80, 91),
(132, '250 gm', 20, 92),
(133, '500 gm', 40, 92),
(134, '1 kg', 80, 92),
(135, '250 gm', 25, 93),
(136, '500 gm', 50, 93),
(137, '1 kg', 100, 93),
(138, '250 gm', 90, 74),
(139, '500 gm', 150, 74),
(140, '1 kg', 180, 74),
(141, '250 gm', 90, 75),
(142, '500 gm', 180, 75),
(143, '1 kg', 360, 75),
(144, '250 gm', 140, 76),
(145, '500 gm', 280, 76),
(146, '1 kg', 560, 76),
(147, '250 gm', 130, 77),
(148, '500 gm', 260, 77),
(149, '1 kg', 520, 77),
(150, '250 gm', 12, 94),
(151, '500 gm', 25, 94),
(152, '1 kg', 45, 94),
(153, '4 Buns', 25, 95),
(154, '2 Buns', 15, 95),
(155, '1 Bun', 5, 95),
(156, '4 Buns', 15, 96),
(157, '6 Buns', 30, 96),
(158, '3 Buns', 40, 97),
(159, '6 Buns', 80, 97),
(160, '10 Buns', 100, 97),
(161, '250 gm', 30, 98),
(162, '500 gm', 60, 98),
(163, '1 kg', 150, 98),
(164, '250 gm', 15, 99),
(165, '500 gm', 60, 99),
(166, '1 kg', 120, 99),
(167, '250 gm', 45, 100),
(168, '500 gm', 90, 100),
(169, '1 kg', 180, 100),
(170, '250 gm', 45, 101),
(171, '500 gm', 90, 101),
(172, '1 kg', 180, 101),
(173, '250 ml', 25, 102),
(174, '500 ml', 50, 102),
(175, '1 ltr', 75, 102),
(176, '250 ml', 19, 103),
(177, '500 ml', 40, 103),
(178, '1 ltr', 50, 103),
(179, '250 ml', 25, 104),
(180, '500 ml', 35, 104),
(181, '1 ltr', 50, 104),
(182, '250 ml', 20, 105),
(183, '500 ml', 40, 105),
(184, '1 ltr', 70, 105),
(185, '250 gm', 20, 106),
(186, '500 gm', 40, 106),
(187, '1 kg', 80, 106),
(188, '250 gm', 15, 107),
(189, '500 gm', 30, 107),
(190, '1 kg', 60, 107),
(191, '250 gm', 25, 108),
(192, '500 gm', 50, 108),
(193, '1 kg', 100, 108),
(194, '250 gm', 20, 109),
(195, '500 gm', 40, 109),
(196, '1 kg', 80, 109),
(197, '250 ml', 15, 110),
(198, '500 ml', 30, 110),
(199, '1 ltr', 60, 110),
(200, '250 ml', 25, 111),
(201, '500 ml', 50, 111),
(202, '1 ltr', 100, 111),
(203, '250 ml', 15, 112),
(204, '500 ml', 30, 112),
(205, '1 ltr', 60, 112),
(206, '250 ml', 20, 113),
(207, '500 ml', 40, 113),
(208, '1 ltr', 80, 113),
(209, '100 ml', 150, 66),
(210, '250 ml', 249, 66),
(211, '300 ml', 493, 66),
(212, '100 ml', 149, 67),
(213, '250 ml', 240, 67),
(214, '300 ml', 450, 67),
(215, '100 ml', 150, 68),
(216, '250 ml', 249, 68),
(217, '300 ml', 489, 68),
(218, '20 ml', 150, 69),
(219, '50 ml', 200, 69),
(220, '75 ml', 350, 69),
(221, '100 ml', 135, 54),
(222, '500 ml', 270, 54),
(223, '1 ltr', 540, 54),
(224, '100 ml', 130, 55),
(225, '500 ml', 340, 55),
(226, '1 ltr', 520, 55),
(227, '20 ml', 40, 56),
(228, '50 ml', 80, 56),
(229, '100 ml', 160, 56),
(230, '250 ml', 185, 57),
(231, '500 ml', 285, 57),
(232, '1 ltr', 350, 57),
(233, '250 ml', 35, 58),
(234, '500 ml', 70, 58),
(235, '1 ltr', 140, 58),
(236, '1 Soap', 60, 59),
(237, '3 Soap Com', 180, 59),
(238, '4 Soap Com', 240, 59),
(239, '1 Soap', 50, 60),
(240, '3 Soap Com', 110, 60),
(241, '4 Soap Com', 180, 60),
(242, '1 Soap', 50, 61),
(243, '3 Soap Com', 190, 61),
(244, '4 Soap Com', 245, 61),
(245, '20 ml', 120, 62),
(246, '40 ml', 240, 62),
(247, '20 ml', 70, 63),
(248, '40 ml', 210, 63),
(249, '20 ml', 225, 64),
(250, '40 ml', 450, 64),
(251, '1 Lipcolou', 410, 65);

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_registration`
--

DROP TABLE IF EXISTS `groceryapp_registration`;
CREATE TABLE IF NOT EXISTS `groceryapp_registration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_subcategory`
--

DROP TABLE IF EXISTS `groceryapp_subcategory`;
CREATE TABLE IF NOT EXISTS `groceryapp_subcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `categoryid_id` bigint NOT NULL,
  `categoryimage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_subcategory_categoryid_id_e7106d16` (`categoryid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_subcategory`
--

INSERT INTO `groceryapp_subcategory` (`id`, `categoryname`, `categoryid_id`, `categoryimage`) VALUES
(14, 'Vegitables', 11, 'img/veg.jpg'),
(12, 'Fruits', 11, 'img/fruit.jpg'),
(15, 'Drinks', 13, 'img/drink_Z9MpvDc.jpg'),
(16, 'Chocolates', 13, 'img/choclate_RFrs1jK.jpg'),
(18, 'Noodels & Pasta', 13, 'img/noodle_2J0gz6H.jpg'),
(19, 'Cookies & Biscuits', 13, 'img/cookie_uzoqx1z.jpg'),
(39, 'Breads & Buns', 16, 'img/breads_mfgu387.jpg'),
(38, 'Cheese & Butter', 16, 'img/cheese_x32YhGG.jpg'),
(24, 'Hair Care', 14, 'img/hair_care_QjcxPtk.jpg'),
(25, 'Hand Wash & Bath Care', 14, 'img/hand_bath.jpg'),
(26, 'Makeup Products', 14, 'img/makeup.jpg'),
(27, 'Skin Care', 14, 'img/skin_care.jpg'),
(28, 'Dals & Pulses', 15, 'img/dals.jpg'),
(29, 'Masala , Spices & Mukhwas', 15, 'img/masala.jpg'),
(30, 'Atta , Flours & Sooji', 15, 'img/Atta.jpg'),
(31, 'Rice', 15, 'img/rice.jpg'),
(32, 'Edible Oils', 15, 'img/oils.jpg'),
(33, 'Indian Sweets', 13, 'img/sweets.jpg'),
(34, 'Deo & Fragrances', 14, 'img/perfumes_xNLRVbS.jpg'),
(35, 'Roots , Herbs & Other', 11, 'img/herbs.jpg'),
(37, 'Milk', 16, 'img/milk_1_TlzCSWk.jpg'),
(40, 'Curd Products', 16, 'img/curd_7o497XH.jpg'),
(41, 'Butter Milk', 16, 'img/butter_milk_JdbypJm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_upi`
--

DROP TABLE IF EXISTS `groceryapp_upi`;
CREATE TABLE IF NOT EXISTS `groceryapp_upi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `UPI_ID` varchar(50) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_upi`
--

INSERT INTO `groceryapp_upi` (`id`, `UPI_ID`, `Amount`, `Password`, `address`, `phoneno`, `username`) VALUES
(8, '234543234567', ' 1312', '2223', 'morbi', '222222', 'vandana'),
(9, '234543234567', '145 ', '33', 'nnn666666666', '3454345434', 'vandana'),
(10, '234543234567', '25 ', '33', 'morbi', '43434334', 'vandana'),
(11, '234543234567', '70 ', '44', 'qsqsqsaxsa', '444444', 'vandana'),
(12, '234543234567', '10 ', '123', 'nd', '345344', 'vandana'),
(13, '234543234567', ' 0', '344', 'df', '3454345434', 'vandana'),
(14, '234543234567', ' 0', '344', 'df', '3454345434', 'vandana'),
(15, '234543234567', ' 0', '344', 'df', '3454345434', 'vandana'),
(16, '234543234567', ' 0', 'dfd', 'df', '3454345434', 'vandana'),
(17, '234543234567', ' 0', 'dddddddddd', 'edd', '334444', 'vandana'),
(18, '234543234567', ' 25', 'dddddddd', 'morbi', '222222', 'vandana'),
(19, '234543234567', ' 26', '123', 'morbi', '43434334', 'vandana');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_userregistration`
--

DROP TABLE IF EXISTS `groceryapp_userregistration`;
CREATE TABLE IF NOT EXISTS `groceryapp_userregistration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groceryapp_userregistration_email_70d19fba_uniq` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_userregistration`
--

INSERT INTO `groceryapp_userregistration` (`id`, `username`, `email`, `password`, `cpassword`, `mobile_number`) VALUES
(28, 'naz', 'naz@gmail.com', '222', '222', '1234565432'),
(27, 'nikita', 'n@gmail.com', '11', '11', '9876543234'),
(26, 'vandana', 'vandana@gmail.com', '123', '123', '1234567897'),
(29, 'sahil', 's@gmail.com', '123', '123', '2343245675'),
(30, 'vidhya', 'v@gmail.com', '123', '123', '1234567897'),
(31, 'vandana1', 'v11@gmail.com', '1233', '1233', '8563866574');

-- --------------------------------------------------------

--
-- Table structure for table `groceryapp_wishlist`
--

DROP TABLE IF EXISTS `groceryapp_wishlist`;
CREATE TABLE IF NOT EXISTS `groceryapp_wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `productprice` int NOT NULL,
  `productimage` varchar(100) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groceryapp_wishlist_user_id_aa60fd28` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `groceryapp_wishlist`
--

INSERT INTO `groceryapp_wishlist` (`id`, `productname`, `productprice`, `productimage`, `user_id`) VALUES
(1, 'Bringle', 30, 'img/bringle_NRMfvhg.jpg', 16),
(2, 'Bringle', 30, 'img/bringle_NRMfvhg.jpg', 16),
(3, 'Bringle', 30, 'img/bringle_NRMfvhg.jpg', 16),
(4, 'Tomato', 20, 'img/tomato.jpg', 16),
(5, 'Tomato', 20, 'img/tomato.jpg', 16),
(6, 'Tomato', 20, 'img/tomato.jpg', 16),
(7, 'Potato', 25, 'img/potato_tovwxtS.jpg', 16),
(8, 'Ginger', 70, 'img/ginger.jpg', 16),
(9, 'Potato', 25, 'img/potato_tovwxtS.jpg', 27),
(10, 'Garlic', 152, 'img/garlic.jpg', 26),
(11, 'Onions', 30, 'img/onion.jpg', 26),
(12, 'Cinthol Soap', 250, 'img/cinthol.jpg', 26),
(13, 'Ginger', 70, 'img/ginger.jpg', 26),
(14, 'Onions', 30, 'img/onion.jpg', 26),
(15, 'Gram Flour', 79, 'img/gram_flour.jpg', 26),
(16, 'Bringle', 30, 'img/bringle_NRMfvhg.jpg', 31),
(17, 'Grapes', 60, 'img/grapes.jpg', 31);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
