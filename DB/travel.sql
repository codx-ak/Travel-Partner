-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 01:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add review', 7, 'add_review'),
(26, 'Can change review', 7, 'change_review'),
(27, 'Can delete review', 7, 'delete_review'),
(28, 'Can view review', 7, 'view_review'),
(29, 'Can add account', 8, 'add_account'),
(30, 'Can change account', 8, 'change_account'),
(31, 'Can delete account', 8, 'delete_account'),
(32, 'Can view account', 8, 'view_account'),
(33, 'Can add guide', 9, 'add_guide'),
(34, 'Can change guide', 9, 'change_guide'),
(35, 'Can delete guide', 9, 'delete_guide'),
(36, 'Can view guide', 9, 'view_guide'),
(37, 'Can add package', 10, 'add_package'),
(38, 'Can change package', 10, 'change_package'),
(39, 'Can delete package', 10, 'delete_package'),
(40, 'Can view package', 10, 'view_package'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add booking', 12, 'add_booking'),
(46, 'Can change booking', 12, 'change_booking'),
(47, 'Can delete booking', 12, 'delete_booking'),
(48, 'Can view booking', 12, 'view_booking'),
(49, 'Can add gallery', 13, 'add_gallery'),
(50, 'Can change gallery', 13, 'change_gallery'),
(51, 'Can delete gallery', 13, 'delete_gallery'),
(52, 'Can view gallery', 13, 'view_gallery'),
(53, 'Can add blog', 14, 'add_blog'),
(54, 'Can change blog', 14, 'change_blog'),
(55, 'Can delete blog', 14, 'delete_blog'),
(56, 'Can view blog', 14, 'view_blog'),
(57, 'Can add contact', 15, 'add_contact'),
(58, 'Can change contact', 15, 'change_contact'),
(59, 'Can delete contact', 15, 'delete_contact'),
(60, 'Can view contact', 15, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$G5pZhCs2zCQ9zsqaw6uMlb$aUR9dTHrn2jUVyC9af7XOsOm/+BH3OPTqDmtjEI+geI=', '2023-05-02 06:23:34.892388', 1, 'codx', '', '', 'moorthimt15@gmail.com', 1, 1, '2023-04-08 12:02:23.225928'),
(2, 'pbkdf2_sha256$600000$ROsxW0FesDbyxoSIquWVLa$8VTYOnGLwWfF0cA2Vsssauu1IDOG7S97Q7SEx2BjBso=', '2023-04-26 13:46:38.550812', 0, 'cod', '', '', 'moorthi@gmail.com', 0, 1, '2023-04-26 13:45:59.028997');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-08 12:09:08.228181', '1', 'Hiking&Trekking', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-04-08 12:12:47.838984', '2', 'Safari', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-04-08 12:13:18.729470', '3', 'Hot Air Balloon', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-04-08 12:13:55.714807', '4', 'Health&Spa', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-04-08 12:14:41.466330', '5', 'Sking', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-04-08 12:15:15.466257', '6', 'Camping', 1, '[{\"added\": {}}]', 11, 1),
(7, '2023-04-08 12:15:46.219902', '7', 'Paraglid', 1, '[{\"added\": {}}]', 11, 1),
(8, '2023-04-08 12:16:14.542092', '8', 'Solo', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-04-08 12:16:37.125197', '9', 'Adult', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-04-08 12:16:59.930459', '10', 'Couple', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-04-08 12:17:32.066055', '11', 'Family', 1, '[{\"added\": {}}]', 11, 1),
(12, '2023-04-08 12:18:04.405170', '12', 'Rafting', 1, '[{\"added\": {}}]', 11, 1),
(13, '2023-04-08 12:26:55.308947', '1', 'Essentials to Carry on a Trekking Trip', 1, '[{\"added\": {}}]', 14, 1),
(14, '2023-04-08 12:27:25.891301', '2', 'Top Treks in Sikkim To Make Your Summer 2023 Adventuresome', 1, '[{\"added\": {}}]', 14, 1),
(15, '2023-04-08 12:28:21.803613', '3', 'Upcoming Fixed Departure Winter Treks You Should Plan Right Away', 1, '[{\"added\": {}}]', 14, 1),
(16, '2023-04-08 12:28:59.308523', '4', 'Animal in the wild vs in captivity', 1, '[{\"added\": {}}]', 14, 1),
(17, '2023-04-08 12:29:31.149543', '5', 'Best time, how to reach & species found', 1, '[{\"added\": {}}]', 14, 1),
(18, '2023-04-08 12:30:05.557067', '6', 'Different species of pandas and where to find them', 1, '[{\"added\": {}}]', 14, 1),
(19, '2023-04-08 12:31:51.420547', '7', 'Amazing Things To Do On A Hot Air Balloon Ride', 1, '[{\"added\": {}}]', 14, 1),
(20, '2023-04-08 12:32:28.125168', '8', 'Propose Your Loved One In A Hot Air Balloon', 1, '[{\"added\": {}}]', 14, 1),
(21, '2023-04-08 12:33:03.962061', '9', 'Best Time to Take A Hot Air Balloon Ride', 1, '[{\"added\": {}}]', 14, 1),
(22, '2023-04-08 12:33:55.891937', '10', 'The Power Of Silence', 1, '[{\"added\": {}}]', 14, 1),
(23, '2023-04-08 12:34:21.622256', '11', '10 Reasons Why You Should Totally Detox At Atmantan', 1, '[{\"added\": {}}]', 14, 1),
(24, '2023-04-08 12:35:17.055184', '12', 'So What Is Mental Health?', 1, '[{\"added\": {}}]', 14, 1),
(25, '2023-04-08 12:36:28.950331', '13', 'Snowboarding And Skiing In India In 2023', 1, '[{\"added\": {}}]', 14, 1),
(26, '2023-04-08 12:36:57.449347', '14', 'What is Heliski & Heli Skiing - Heli skiing Himalayas - Gulmarg', 1, '[{\"added\": {}}]', 14, 1),
(27, '2023-04-08 12:37:32.814371', '15', '4 safety tips you should remember before your ski holiday', 1, '[{\"added\": {}}]', 14, 1),
(28, '2023-04-08 12:43:36.775354', '16', '10 Of The Best Summer Camps – 2023', 1, '[{\"added\": {}}]', 14, 1),
(29, '2023-04-08 12:44:08.500329', '17', 'Types Of Campsites In India', 1, '[{\"added\": {}}]', 14, 1),
(30, '2023-04-08 12:44:40.277731', '18', 'Camping in India, it is possibl', 1, '[{\"added\": {}}]', 14, 1),
(31, '2023-04-08 12:45:21.329533', '19', 'How you can go paragliding in India', 1, '[{\"added\": {}}]', 14, 1),
(32, '2023-04-08 12:45:47.801851', '20', 'The perfect weekend activity', 1, '[{\"added\": {}}]', 14, 1),
(33, '2023-04-08 12:46:29.965950', '21', 'When to go paragliding in India', 1, '[{\"added\": {}}]', 14, 1),
(34, '2023-04-08 12:47:21.445090', '22', '20 Destinations for Your First Solo Trip', 1, '[{\"added\": {}}]', 14, 1),
(35, '2023-04-08 12:47:53.530026', '23', 'Avoid using taxis when you are alone', 1, '[{\"added\": {}}]', 14, 1),
(36, '2023-04-08 12:48:39.051237', '24', 'Solo Travel Tips in India', 1, '[{\"added\": {}}]', 14, 1),
(37, '2023-04-08 12:49:29.693971', '25', '10 Places to Visit In  With Your Best Friend!', 1, '[{\"added\": {}}]', 14, 1),
(38, '2023-04-08 12:50:49.761611', '26', 'The Changing Landscape of Indian Cities', 1, '[{\"added\": {}}]', 14, 1),
(39, '2023-04-08 12:51:16.661212', '27', 'India’s Eco-friendly Destinations', 1, '[{\"added\": {}}]', 14, 1),
(40, '2023-04-08 12:52:17.173657', '28', 'whitewater rafting in India', 1, '[{\"added\": {}}]', 14, 1),
(41, '2023-04-08 12:52:39.156471', '29', 'A guide for first-timers rafting in Kolad', 1, '[{\"added\": {}}]', 14, 1),
(42, '2023-04-08 12:53:04.636565', '30', 'Why Adventurers Love Rafting in Rishikesh', 1, '[{\"added\": {}}]', 14, 1),
(43, '2023-04-08 12:53:44.181129', '31', 'Travelling as a Couple to India', 1, '[{\"added\": {}}]', 14, 1),
(44, '2023-04-08 12:54:15.708987', '32', 'Lorem ipsum dolor, sit amet consectetur adipisicing.', 1, '[{\"added\": {}}]', 14, 1),
(45, '2023-04-08 12:54:38.685293', '33', 'Lorem ipsum dolor, sit amet consectetur adipisicing.', 1, '[{\"added\": {}}]', 14, 1),
(46, '2023-04-08 12:55:53.199074', '34', 'Lorem ipsum dolor, sit amet consectetur adipisicing.', 1, '[{\"added\": {}}]', 14, 1),
(47, '2023-04-08 12:56:48.444590', '35', 'Lorem ipsum dolor, sit amet consectetur adipisicing.', 1, '[{\"added\": {}}]', 14, 1),
(48, '2023-04-08 12:57:08.226179', '36', 'Lorem ipsum dolor, sit amet consectetur adipisicing.', 1, '[{\"added\": {}}]', 14, 1),
(49, '2023-04-08 13:03:04.974886', '1', 'Pooja', 1, '[{\"added\": {}}]', 7, 1),
(50, '2023-04-08 13:03:34.019172', '2', 'Bujji', 1, '[{\"added\": {}}]', 7, 1),
(51, '2023-04-08 13:04:19.198667', '3', 'Jon', 1, '[{\"added\": {}}]', 7, 1),
(52, '2023-04-08 13:05:43.939284', '1', 'Ak', 1, '[{\"added\": {}}]', 9, 1),
(53, '2023-04-08 13:06:43.839442', '2', 'Anu', 1, '[{\"added\": {}}]', 9, 1),
(54, '2023-04-08 13:08:14.389870', '3', 'Ishu', 1, '[{\"added\": {}}]', 9, 1),
(55, '2023-04-08 13:09:22.308309', '4', 'miya', 1, '[{\"added\": {}}]', 9, 1),
(56, '2023-04-08 13:10:09.277190', '5', 'Kishore', 1, '[{\"added\": {}}]', 9, 1),
(57, '2023-04-08 13:10:53.135358', '6', 'manoj', 1, '[{\"added\": {}}]', 9, 1),
(58, '2023-04-08 13:11:47.200441', '7', 'suman', 1, '[{\"added\": {}}]', 9, 1),
(59, '2023-04-08 13:13:00.214796', '8', 'Syed', 1, '[{\"added\": {}}]', 9, 1),
(60, '2023-04-08 13:14:07.495725', '9', 'priya', 1, '[{\"added\": {}}]', 9, 1),
(61, '2023-04-08 13:15:27.907721', '10', 'Moni', 1, '[{\"added\": {}}]', 9, 1),
(62, '2023-04-08 13:16:29.562406', '11', 'kalai', 1, '[{\"added\": {}}]', 9, 1),
(63, '2023-04-08 13:18:16.944571', '1', 'Gallery object (1)', 1, '[{\"added\": {}}]', 13, 1),
(64, '2023-04-08 13:20:03.333197', '2', 'Gallery object (2)', 1, '[{\"added\": {}}]', 13, 1),
(65, '2023-04-08 13:21:14.956385', '3', 'Gallery object (3)', 1, '[{\"added\": {}}]', 13, 1),
(66, '2023-04-08 13:22:06.312806', '4', 'Gallery object (4)', 1, '[{\"added\": {}}]', 13, 1),
(67, '2023-04-08 13:23:01.848136', '5', 'Gallery object (5)', 1, '[{\"added\": {}}]', 13, 1),
(68, '2023-04-08 13:24:14.314823', '6', 'Gallery object (6)', 1, '[{\"added\": {}}]', 13, 1),
(69, '2023-04-08 13:25:25.593347', '7', 'Gallery object (7)', 1, '[{\"added\": {}}]', 13, 1),
(70, '2023-04-08 13:26:28.258215', '8', 'Gallery object (8)', 1, '[{\"added\": {}}]', 13, 1),
(71, '2023-04-08 13:27:29.684863', '9', 'Gallery object (9)', 1, '[{\"added\": {}}]', 13, 1),
(72, '2023-04-08 13:28:27.658416', '10', 'Gallery object (10)', 1, '[{\"added\": {}}]', 13, 1),
(73, '2023-04-08 13:29:24.442496', '11', 'Gallery object (11)', 1, '[{\"added\": {}}]', 13, 1),
(74, '2023-04-08 13:30:57.975812', '12', 'Gallery object (12)', 1, '[{\"added\": {}}]', 13, 1),
(75, '2023-04-08 14:41:23.468955', '1', 'Peaks of Ladakh Trek', 1, '[{\"added\": {}}]', 10, 1),
(76, '2023-04-08 14:42:59.002067', '2', 'Beyond the Markha Valley', 1, '[{\"added\": {}}]', 10, 1),
(77, '2023-04-08 14:49:39.653351', '3', 'Adventures Ranthambore Wildlife Safari Tour from Delhi with Safari Rides', 1, '[{\"added\": {}}]', 10, 1),
(78, '2023-04-08 14:56:56.952825', '4', 'Hot Air Balloon', 1, '[{\"added\": {}}]', 10, 1),
(79, '2023-04-08 14:57:47.214570', '3', 'Adventures Ranthambore Wildlife Safari', 2, '[{\"changed\": {\"fields\": [\"Package name\"]}}]', 10, 1),
(80, '2023-04-08 14:58:04.290273', '3', 'Ranthambore Wildlife Safari', 2, '[{\"changed\": {\"fields\": [\"Package name\"]}}]', 10, 1),
(81, '2023-04-08 15:08:04.378593', '5', 'Adventures Skiing', 1, '[{\"added\": {}}]', 10, 1),
(82, '2023-04-08 15:09:03.361673', '5', 'Adventures Skiing', 2, '[{\"changed\": {\"fields\": [\"Package location\"]}}]', 10, 1),
(83, '2023-04-08 15:09:38.033210', '5', 'Adventures Skiing', 2, '[{\"changed\": {\"fields\": [\"Package location\"]}}]', 10, 1),
(84, '2023-04-08 15:17:27.127257', '6', 'The WanderBug', 1, '[{\"added\": {}}]', 10, 1),
(85, '2023-04-08 15:21:58.675323', '7', 'Rishikesh River Rafting & Camping', 1, '[{\"added\": {}}]', 10, 1),
(86, '2023-04-08 15:22:30.414813', '7', 'Rishikesh River Rafting', 2, '[{\"changed\": {\"fields\": [\"Package name\"]}}]', 10, 1),
(87, '2023-04-08 15:26:14.044661', '8', 'Paragliding and View Point', 1, '[{\"added\": {}}]', 10, 1),
(88, '2023-04-08 15:30:35.134649', '9', 'Taj Mahal', 1, '[{\"added\": {}}]', 10, 1),
(89, '2023-04-09 04:47:05.471488', '1', 'ak', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(90, '2023-04-09 05:06:04.172064', '2', 'Ak', 1, '[{\"added\": {}}]', 12, 1),
(91, '2023-04-09 05:34:54.027436', '1', 'Ak', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 8, 1),
(92, '2023-04-09 05:57:06.691831', '1', 'Ak', 3, '', 8, 1),
(93, '2023-04-09 13:09:53.817514', '3', 'HotAirBalloon', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 11, 1),
(94, '2023-04-09 13:10:16.401113', '7', 'Rishikesh River Rafting', 3, '', 10, 1),
(95, '2023-04-09 15:03:59.953864', '1', 'Ak', 2, '[{\"changed\": {\"fields\": [\"Msg\"]}}]', 15, 1),
(96, '2023-04-10 06:12:08.231450', '6', 'Bujji', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 12, 1),
(97, '2023-04-17 12:37:31.675896', '10', 'Peaks of Ladakh Trek', 1, '[{\"added\": {}}]', 10, 1),
(98, '2023-04-17 12:37:35.423436', '10', 'Peaks of Ladakh Trek', 2, '[]', 10, 1),
(99, '2023-04-17 12:38:09.528630', '11', 'rtyui', 1, '[{\"added\": {}}]', 10, 1),
(100, '2023-04-17 13:02:17.040227', '12', 'erty', 1, '[{\"added\": {}}]', 10, 1),
(101, '2023-04-17 13:27:15.792001', '12', 'erty', 3, '', 10, 1),
(102, '2023-04-17 13:27:15.854507', '11', 'rtyui', 3, '', 10, 1),
(103, '2023-04-17 13:27:15.876653', '10', 'Peaks of Ladakh Trek', 3, '', 10, 1),
(104, '2023-04-22 15:16:49.562128', '11', 'Family', 3, '', 11, 1),
(105, '2023-04-22 15:16:49.693364', '10', 'Couple', 3, '', 11, 1),
(106, '2023-04-22 15:16:49.724516', '9', 'Adult', 3, '', 11, 1),
(107, '2023-04-22 15:16:49.731029', '8', 'Solo', 3, '', 11, 1),
(108, '2023-04-24 06:00:42.564019', '3', 'ak', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 8, 1),
(109, '2023-04-24 06:36:06.937845', '3', 'akm', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 8, 1),
(110, '2023-04-24 06:39:50.776539', '3', 'akm', 3, '', 8, 1),
(111, '2023-04-24 06:53:12.190336', '8', 'null', 3, '', 8, 1),
(112, '2023-04-24 07:03:31.369842', '10', 'ak', 3, '', 8, 1),
(113, '2023-04-24 07:05:52.867696', '12', 'Ak', 3, '', 8, 1),
(114, '2023-04-24 07:14:23.181287', '15', 'Ak', 3, '', 8, 1),
(115, '2023-04-24 07:14:23.297236', '14', 'Ak', 3, '', 8, 1),
(116, '2023-04-24 07:14:23.344100', '13', 'fgh', 3, '', 8, 1),
(117, '2023-04-27 04:51:38.057504', '16', 'Ak', 3, '', 12, 1),
(118, '2023-04-27 04:51:38.195548', '15', 'Ak', 3, '', 12, 1),
(119, '2023-04-27 04:51:38.242435', '14', 'Ak', 3, '', 12, 1),
(120, '2023-04-27 04:51:38.273687', '13', 'Ak', 3, '', 12, 1),
(121, '2023-04-27 04:51:38.295828', '12', 'Ak ', 3, '', 12, 1),
(122, '2023-04-27 04:51:38.327090', '11', 'Ak ', 3, '', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'Travel_Partner', 'account'),
(14, 'Travel_Partner', 'blog'),
(12, 'Travel_Partner', 'booking'),
(11, 'Travel_Partner', 'category'),
(15, 'Travel_Partner', 'contact'),
(13, 'Travel_Partner', 'gallery'),
(9, 'Travel_Partner', 'guide'),
(10, 'Travel_Partner', 'package'),
(7, 'Travel_Partner', 'review');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-08 10:56:02.487465'),
(2, 'auth', '0001_initial', '2023-04-08 10:56:09.617341'),
(3, 'admin', '0001_initial', '2023-04-08 10:56:12.104433'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-08 10:56:12.224868'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-08 10:56:12.266432'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-08 10:56:13.049145'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-08 10:56:13.834604'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-08 10:56:14.084311'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-08 10:56:14.160226'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-08 10:56:14.796071'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-08 10:56:14.827429'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-08 10:56:14.913294'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-08 10:56:15.081310'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-08 10:56:15.168029'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-08 10:56:15.294910'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-08 10:56:15.343795'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-08 10:56:15.455805'),
(18, 'sessions', '0001_initial', '2023-04-08 10:56:15.826171'),
(19, 'Travel_Partner', '0001_initial', '2023-04-08 11:42:56.265077'),
(20, 'Travel_Partner', '0002_delete_booking', '2023-04-09 04:21:06.820812'),
(21, 'Travel_Partner', '0003_booking', '2023-04-09 04:21:46.480785'),
(22, 'Travel_Partner', '0004_delete_booking', '2023-04-09 04:24:27.791192'),
(23, 'Travel_Partner', '0005_booking', '2023-04-09 04:25:35.206168'),
(24, 'Travel_Partner', '0006_contact', '2023-04-09 12:26:08.198248'),
(25, 'Travel_Partner', '0007_alter_account_user', '2023-04-24 07:10:33.040520'),
(26, 'Travel_Partner', '0008_delete_account', '2023-04-26 15:20:07.770579'),
(27, 'Travel_Partner', '0009_booking_booking_id', '2023-04-26 15:22:16.863959'),
(28, 'Travel_Partner', '0010_alter_booking_payment_option_and_more', '2023-04-27 04:15:49.835020');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5zr70eqtfx05x8l4hsgw6biyeeiq822y', '.eJxVjEEOwiAQRe_C2pAiZQZcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXrY1RhshhdEZMsyUYiZkhAFUNu6srckcQSvWZAfUG9HajRAQwaIzkMXnC_W_N3I:1plkYT:FXdmNBqJrMrcr9lYC9uQQKqIz8Mx2F8xBtEuTkkdT54', '2023-04-24 05:59:05.465798'),
('vtw5b9ykn01cdrl0cx7f49mtmmdugpxw', '.eJxVjEEOwiAQRe_C2pAiZQZcuvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERSpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXrY1RhshhdEZMsyUYiZkhAFUNu6srckcQSvWZAfUG9HajRAQwaIzkMXnC_W_N3I:1ptjQE:mLI1QXTdevUKSoDFLNFizgTZcd5h6J0OxJQInTXT9sg', '2023-05-16 06:23:34.952645'),
('wp9axetgrmr0jc6prc7i7361g6v6qm82', 'e30:1pqq2D:cpZP4ErBf_KAeEQB8289jDXAWE9qjLa6LXNI_RDRLTI', '2023-05-08 06:50:49.797088');

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_blog`
--

CREATE TABLE `travel_partner_blog` (
  `id` bigint(20) NOT NULL,
  `blog_name` varchar(150) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `blog_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_blog`
--

INSERT INTO `travel_partner_blog` (`id`, `blog_name`, `blog_image`, `blog_description`, `created_at`, `category_id`) VALUES
(1, 'Essentials to Carry on a Trekking Trip', 'images/Travel_Blogs/hikingblog_x47y6v', 'Trekking is an enthralling adventure activity that takes you close to the exquisiteness of nature...', '2023-04-08 12:26:55.277597', 1),
(2, 'Top Treks in Sikkim To Make Your Summer 2023 Adventuresome', 'images/Travel_Blogs/hikingblog2_amfav6', 'Home to one of the highest peaks in the world - Kanchenjunga, Sikkim awaits to offer you the best ex...', '2023-04-08 12:27:25.843414', 1),
(3, 'Upcoming Fixed Departure Winter Treks You Should Plan Right Away', 'images/Travel_Blogs/hikingblog3_yazgsq', 'Walking over the frozen river; crossing the wintry grasses and snow-covered trails, a mixture of exp...', '2023-04-08 12:28:21.756629', 1),
(4, 'Animal in the wild vs in captivity', 'images/Travel_Blogs/safariblog1_tbpbyb', 'wild animals live in their natural habits, free to roam and engage in natural behaviours ...', '2023-04-08 12:28:59.269236', 2),
(5, 'Best time, how to reach & species found', 'images/Travel_Blogs/safariblog2_i86j2u', 'Pench National park is a protected area located in the Seoni & Chhinwara district of madhya pradesh...', '2023-04-08 12:29:31.112050', 2),
(6, 'Different species of pandas and where to find them', 'images/Travel_Blogs/safariblog3_qrlrpg', 'There are basically 3 types of pandas but the experts identify them into 2 species only ....', '2023-04-08 12:30:05.519575', 2),
(7, 'Amazing Things To Do On A Hot Air Balloon Ride', 'images/Travel_Blogs/ballonblog1_ggjzob', 'Hot air balloons are definitely on almost everyone’s bucket lists nowadays! From small kids, to working adults …', '2023-04-08 12:31:51.404822', 3),
(8, 'Propose Your Loved One In A Hot Air Balloon', 'images/Travel_Blogs/ballonblog2_zcb6ei', 'What can be more exciting than proposing to the love of your life during a hot balloon…', '2023-04-08 12:32:28.087402', 3),
(9, 'Best Time to Take A Hot Air Balloon Ride', 'images/Travel_Blogs/ballonblog3_g5nc9p', 'Providing a wide range of physical landforms and structural heritage, our country happens to offer a wide…', '2023-04-08 12:33:03.915066', 3),
(10, 'The Power Of Silence', 'images/Travel_Blogs/spablog1_trm9xh', 'A lot is realised when no words are exchanged. Become a better listener, find inner peace and improve self-mental health ...', '2023-04-08 12:33:55.860685', 4),
(11, '10 Reasons Why You Should Totally Detox At Atmantan', 'images/Travel_Blogs/spablog2_x4gzwv', 'The Atmantan MASTER CLEANSE is a synergistic formula of resetting the organs and systems of the body through cellular...', '2023-04-08 12:34:21.575276', 4),
(12, 'So What Is Mental Health?', 'images/Travel_Blogs/spa_7_duojkf', 'Mental health & wellness is a key to healthy living. A synergy between body, mind & spirit and we get this by combining the principles...', '2023-04-08 12:35:17.002279', 4),
(13, 'Snowboarding And Skiing In India In 2023', 'images/Travel_Blogs/skingblog1_jlqjzx', 'Skiing in India is, comparatively, a more popular activity and has many operators offering ski tour packages and training courses ...', '2023-04-08 12:36:28.903541', 5),
(14, 'What is Heliski & Heli Skiing - Heli skiing Himalayas - Gulmarg', 'images/Travel_Blogs/skingblog2_mi4n8g', 'Heli skiing is the use of Helicopters to reach spots on a mountain or resort that would be inaccessible on foot and then skiing down...', '2023-04-08 12:36:57.376919', 5),
(15, '4 safety tips you should remember before your ski holiday', 'images/Travel_Blogs/sking_5_rddy6c', 'Days spent careering down the slopes, warming up with a hot chocolate at the top of the mountain, or hitting the bars after a long day in the sun are days well spent...', '2023-04-08 12:37:32.798746', 5),
(16, '10 Of The Best Summer Camps – 2023', 'images/Travel_Blogs/campblog1_tsyoay', 'Summer is here and there’s no better place to be than outdoors! The last year has been a crazy one and what we’ve learned is that building..', '2023-04-08 12:43:36.766733', 6),
(17, 'Types Of Campsites In India', 'images/Travel_Blogs/campingblog2_ehjije', 'Spending time outdoors can be a rewarding experience if you’ve got the basics out of the way. There many type of campsites that you...', '2023-04-08 12:44:08.482675', 6),
(18, 'Camping in India, it is possibl', 'images/Travel_Blogs/camping_2_lkxub5', 'During a trip to India, camping is a way to get closer to nature and live the adventure otherwise. Nature lovers will find their love for the natural ...', '2023-04-08 12:44:40.239802', 6),
(19, 'How you can go paragliding in India', 'images/Travel_Blogs/paraglidblog1_ubxris', 'If you are already trained to paraglide, then all you need is the right location and equipment. If not, you can sign up for a paragliding where you...', '2023-04-08 12:45:21.284013', 7),
(20, 'The perfect weekend activity', 'images/Travel_Blogs/paraglidblog2_wsqki2', 'Birds have been incredible motivators to men. Their fortune and ability to fly inspired us to carry out uncountable attempts to reach the sky...', '2023-04-08 12:45:47.780853', 7),
(21, 'When to go paragliding in India', 'images/Travel_Blogs/paraglid_8_jaeyoq', 'Summer and autumn are the best seasons to go paragliding in India. The skies are clear and the right winds more predictable...', '2023-04-08 12:46:29.920167', 7),
(28, 'whitewater rafting in India', 'images/Travel_Blogs/rafting_8_yeqxeo', 'India has a rich wealth of rivers that criss-cross the country, many of which originate from the mighty Himalayas and rage down the plains ..', '2023-04-08 12:52:17.123646', 12),
(29, 'A guide for first-timers rafting in Kolad', 'images/Travel_Blogs/rafting_3_vbgh1w', 'Soaked in water, high on adrenaline, spirits soaring, and some mad energy of the team! That’s how we would like to summarize what a rafting...', '2023-04-08 12:52:39.115510', 12),
(30, 'Why Adventurers Love Rafting in Rishikesh', 'images/Travel_Blogs/rafting_1_jaymy4', 'What Rishikesh means to an individual depends on the type of individual you ask. For religious Indians,it is a holy city; ...', '2023-04-08 12:53:04.599121', 12);

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_booking`
--

CREATE TABLE `travel_partner_booking` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_proof` varchar(100) NOT NULL,
  `user_address` varchar(150) NOT NULL,
  `user_state` varchar(150) NOT NULL,
  `user_pin` varchar(20) NOT NULL,
  `travelers` int(11) NOT NULL,
  `traveler_1` int(11) NOT NULL,
  `traveler_2` int(11) NOT NULL,
  `starting_location` varchar(150) NOT NULL,
  `starting_date` date NOT NULL,
  `driver` varchar(10) NOT NULL,
  `vehicle` varchar(10) NOT NULL,
  `Insurance` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `payment_option` varchar(150) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_id` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_category`
--

CREATE TABLE `travel_partner_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_category`
--

INSERT INTO `travel_partner_category` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'Hiking&Trekking', 'images/Travel_Category/trekking_kpyq40', 'Hiking is a shorter, easier journey, commonly walked on looped marked trails, to-and-back, or even destination hikes. Trekking always involves a specific destination. A trekking path goes through different, often rough terrains and requires more equipment and preparedness of the person doing it.', 0, '2023-04-08 12:09:08.228181'),
(2, 'Safari', 'images/Travel_Category/safari_mykgqj', 'A safari is a journey. In the broadest sense, to go on safari is simply to travel. More specifically, a safari is a journey that involves going into nature to watch wild animals.', 0, '2023-04-08 12:12:47.807836'),
(3, 'HotAirBalloon', 'images/Travel_Category/air_balloon_hivdre', 'A hot-air balloon is a large balloon with a basket underneath in which people can travel. The balloon is filled with hot air in order to make it float in the air.', 0, '2023-04-08 12:13:18.729470'),
(4, 'Health&Spa', 'images/Travel_Category/spa_poiw0v', 'Spa tourism is part of the wellness tourism in which the experience is associated with activities that involve health improvement through hydrotherapy or balneotherapy.', 0, '2023-04-08 12:13:55.683549'),
(5, 'Sking', 'images/Travel_Category/sking_lhzqly', 'skiing, recreation, sport, and mode of transportation that involves moving over snow by the use of a pair of long, flat runners called skis, attached or bound to shoes or boots. Competitive skiing is divided into Alpine, Nordic, and freestyle events.', 0, '2023-04-08 12:14:41.419451'),
(6, 'Camping', 'images/Travel_Category/camping_wqoi4e', 'Camping is an outdoor activity that involves staying the night/more than one night in a protective shelter out in nature. Camping is a broad term but in its essence, camping is a way of getting away from the hassle of urban life, to a more natural environment for a limited time.', 0, '2023-04-08 12:15:15.431464'),
(7, 'Paraglid', 'images/Travel_Category/paraglid_vk9xfq', 'Paragliding is the recreational and competitive adventure sport of flying paraglide: lightweight, free- flying, foot-launched glider aircraft with no rigid primary structure. The pilot sits in a harness suspended below a fabric wing.', 0, '2023-04-08 12:15:46.188657'),
(12, 'Rafting', 'images/Travel_Category/Rafting_ocyqh7', 'Rafting and whitewater rafting are recreational outdoor activities which use an inflatable raft to navigate a river or other body of water. This is often done on whitewater or different degrees of rough water. Dealing with risk is often a part of the experience.', 0, '2023-04-08 12:18:04.372897');

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_contact`
--

CREATE TABLE `travel_partner_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `msg` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_gallery`
--

CREATE TABLE `travel_partner_gallery` (
  `id` bigint(20) NOT NULL,
  `gallery_image1` varchar(100) NOT NULL,
  `gallery_image2` varchar(100) NOT NULL,
  `gallery_image3` varchar(100) NOT NULL,
  `gallery_image4` varchar(100) NOT NULL,
  `gallery_image5` varchar(100) NOT NULL,
  `gallery_image6` varchar(100) NOT NULL,
  `gallery_image7` varchar(100) NOT NULL,
  `gallery_image8` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_gallery`
--

INSERT INTO `travel_partner_gallery` (`id`, `gallery_image1`, `gallery_image2`, `gallery_image3`, `gallery_image4`, `gallery_image5`, `gallery_image6`, `gallery_image7`, `gallery_image8`, `category_id`) VALUES
(1, 'images/Travel_Gallery/hiking_1_w8iv8f', 'images/Travel_Gallery/hiking_2_inif5p', 'images/Travel_Gallery/hiking_3_dlj04h', 'images/Travel_Gallery/hiking_4_sv5ule', 'images/Travel_Gallery/hiking_5_zeyg96', 'images/Travel_Gallery/hiking_6_sennzu', 'images/Travel_Gallery/hiking_7_fybkgz', 'images/Travel_Gallery/hiking_8_pr14z8', 1),
(2, 'images/Travel_Gallery/safari_1_rfvtu5', 'images/Travel_Gallery/safari_1_atqq1g', 'images/Travel_Gallery/safari_2_h2nhpg', 'images/Travel_Gallery/safari_3_k00xoc', 'images/Travel_Gallery/safari_4_uufd8n', 'images/Travel_Gallery/safari_5_qutr7v', 'images/Travel_Gallery/safari_6_r8frpq', 'images/Travel_Gallery/safari_7_pfi4zy', 2),
(3, 'images/Travel_Gallery/airballon_1_zmut4n', 'images/Travel_Gallery/airballon_2_d5h5gm', 'images/Travel_Gallery/airballon_3_qsalf8', 'images/Travel_Gallery/airballon_4_ttpubb', 'images/Travel_Gallery/airballon_5_si9o5a', 'images/Travel_Gallery/airballon_6_uqhfsy', 'images/Travel_Gallery/airballon_7_mpbevi', 'images/Travel_Gallery/airballon_8_nylqwn', 3),
(4, 'images/Travel_Gallery/spa_1_tmw4fm', 'images/Travel_Gallery/spa_2_qtup3e', 'images/Travel_Gallery/spa_3_mna2rk', 'images/Travel_Gallery/spa_4_ixvor7', 'images/Travel_Gallery/spa_5_x766oz', 'images/Travel_Gallery/spa_6_vtoicd', 'images/Travel_Gallery/spa_7_ny8xbm', 'images/Travel_Gallery/spa_8_sgsxgr', 4),
(5, 'images/Travel_Gallery/sking_1_nsocl8', 'images/Travel_Gallery/sking_2_z9qj9h', 'images/Travel_Gallery/sking_3_qgey81', 'images/Travel_Gallery/sking_4_k5xqma', 'images/Travel_Gallery/sking_5_fdm29p', 'images/Travel_Gallery/sking_6_s5sn1s', 'images/Travel_Gallery/sking_7_ntfugn', 'images/Travel_Gallery/sking_8_kij5to', 5),
(6, 'images/Travel_Gallery/camping_1_haqlx0', 'images/Travel_Gallery/camping_2_ymexd3', 'images/Travel_Gallery/camping_3_bycejm', 'images/Travel_Gallery/camping_4_wcbshw', 'images/Travel_Gallery/camping_5_wctudm', 'images/Travel_Gallery/camping_6_inr692', 'images/Travel_Gallery/camping_7_geruj5', 'images/Travel_Gallery/camping_8_o0snpx', 6),
(7, 'images/Travel_Gallery/paraglid_1_god7ko', 'images/Travel_Gallery/paraglid_2_hgoqxv', 'images/Travel_Gallery/paraglid_3_tu72ru', 'images/Travel_Gallery/paraglid_4_go1nrp', 'images/Travel_Gallery/paraglid_5_z9xrzg', 'images/Travel_Gallery/paraglid_6_xr7sox', 'images/Travel_Gallery/paraglid_7_l7teqt', 'images/Travel_Gallery/paraglid_8_qzhhaz', 7),
(12, 'images/Travel_Gallery/rafting_1_wojbb1', 'images/Travel_Gallery/rafting_2_ln2fh1', 'images/Travel_Gallery/rafting_3_qfq3ng', 'images/Travel_Gallery/rafting_4_f67jfm', 'images/Travel_Gallery/rafting_5_iey4hm', 'images/Travel_Gallery/rafting_6_cp5gyo', 'images/Travel_Gallery/rafting_7_jtev7h', 'images/Travel_Gallery/rafting_8_zifml2', 12);

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_guide`
--

CREATE TABLE `travel_partner_guide` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_guide`
--

INSERT INTO `travel_partner_guide` (`id`, `avatar`, `name`, `age`, `email`, `mobile`, `city`, `experience`, `category_id`) VALUES
(1, 'images/Travel_Guide/pic-3_skpmad', 'Ak', '20', 'moorthi@gmail.com', '9876543210', 'Hosur', '2 years', 1),
(2, 'images/Travel_Guide/pic-2_flb74v', 'Anu', '20', 'anu@gmail.com', '9876543210', 'Erode', '1 year', 2),
(3, 'images/Travel_Guide/user-12_f9rgub', 'Ishu', '21', 'ishu@gmail.com', '8644338399', 'Madurai', '3 years', 3),
(4, 'images/Travel_Guide/user-20_ywbodt', 'miya', '23', 'miya@gmail.com', '8644338399', 'Chennai', '5 years', 4),
(5, 'images/Travel_Guide/user-17_no0muv', 'Kishore', '24', 'ego@gmail', '8644338399', 'manali', '3 years', 5),
(6, 'images/Travel_Guide/user-18_dznsq2', 'manoj', '25', 'mano@gmail.com', '9234568795', 'kerala', '2 years', 6),
(7, 'images/Travel_Guide/user-19_e90fcb', 'suman', '22', 'suman@gmail.com', '8644338399', 'Maharastra', '4 years', 7),
(11, 'images/Travel_Guide/user-11_exuotc', 'kalai', '25', 'kalai@gmail.com', '8644338399', 'Nepal', '2 years', 12);

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_package`
--

CREATE TABLE `travel_partner_package` (
  `id` bigint(20) NOT NULL,
  `package_name` varchar(150) NOT NULL,
  `package_image` varchar(100) NOT NULL,
  `package_duration` int(11) NOT NULL,
  `package_size` int(11) NOT NULL,
  `package_rating` int(11) NOT NULL,
  `package_age` varchar(50) NOT NULL,
  `package_map` varchar(600) NOT NULL,
  `package_location` varchar(150) NOT NULL,
  `package_vehicle` varchar(150) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_package`
--

INSERT INTO `travel_partner_package` (`id`, `package_name`, `package_image`, `package_duration`, `package_size`, `package_rating`, `package_age`, `package_map`, `package_location`, `package_vehicle`, `price`, `status`, `created_at`, `category_id`) VALUES
(1, 'Peaks of Ladakh Trek', 'images/Travel_Package/hiking_5_xzxkaq', 10, 5, 4, '18 to 50 year Olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1697954.1754259674!2d74.4667535!3d33.77831770000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38fd57b77d17d585%3A0xe872533949ab29c8!2sChadar%20trek%20-%20Trekking%20In%20Ladakh%20-%20Frozen%20River%20Trekking%20In%20Ladakh!5e0!3m2!1sen!2sin!4v1679920242473!5m2!1sen!2sin', 'New Delhi, Leh, Stok', 'Car', 20000, 0, '2023-04-08 14:41:23.384795', 1),
(2, 'Beyond the Markha Valley', 'images/Travel_Package/hiking_2_gjqaz9', 7, 5, 5, '16 to 50 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1697954.1754259674!2d74.4667535!3d33.77831770000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38fdeb88d402028b%3A0x717e286c4e4a5149!2sLadakh%20Trekking!5e0!3m2!1sen!2sin!4v1679920801763!5m2!1sen!2sin', 'New Delhi, Leh', 'Car', 15000, 0, '2023-04-08 14:42:58.986397', 1),
(3, 'Ranthambore Wildlife Safari', 'images/Travel_Package/safari1_zb1ge9', 3, 5, 4, '10 to 55 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114724.61367356488!2d76.41819679383397!3d26.028838219265147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3971d9a36e4319f5%3A0x17cd08aa8add4cd2!2sRanthambore%20National%20Park!5e0!3m2!1sen!2sin!4v1680965298654!5m2!1sen!2sin', 'New Delhi', 'Car', 10000, 0, '2023-04-08 14:49:39.609336', 2),
(4, 'Hot Air Balloon', 'images/Travel_Package/airballon_urh7zi', 2, 5, 4, '10 to 55 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d227748.99973712006!2d75.65047096676273!3d26.885141678264613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396c4adf4c57e281%3A0xce1c63a0cf22e09!2sJaipur%2C%20Rajasthan!5e0!3m2!1sen!2sin!4v1680965764500!5m2!1sen!2sin', 'Jaipur', 'Car', 12000, 0, '2023-04-08 14:56:56.910426', 3),
(5, 'Adventures Skiing', 'images/Travel_Package/sking_5_giffoe', 5, 5, 4, '10 to 55 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13222.945217406716!2d74.36428632933499!3d34.05063473969973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38e1af91308dd977%3A0x7a5cc65c8fb01df7!2sGulmarg%20193403!5e0!3m2!1sen!2sin!4v1680966105410!5m2!1sen!2sin', 'Gulmarg, Kashmir', 'Car', 15000, 0, '2023-04-08 15:08:04.340705', 5),
(6, 'The WanderBug', 'images/Travel_Package/camping_7_te4tar', 5, 5, 4, '10 to 55 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13183.74367405195!2d75.26282787322995!3d34.30117708786855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38e235551b34f077%3A0x3a009a10a214d9e9!2sGOL%20MAIDAAN!5e0!3m2!1sen!2sin!4v1680966982163!5m2!1sen!2sin', 'Sonmarg, Kashmir', 'Car', 12000, 0, '2023-04-08 15:17:27.089363', 6),
(8, 'Paragliding and View Point', 'images/Travel_Package/paraglid_8_z8lh4p', 3, 5, 4, '10 to 55 year olds', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3443.8395993553186!2d78.12709985066715!3d30.327079981691007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390927bbcbe766ff%3A0x105f4e7639ad9d4!2sParagliding%20and%20View%20Point!5e0!3m2!1sen!2sin!4v1680967459125!5m2!1sen!2sin', 'Dwara, Uttarakhand', 'Car', 12000, 0, '2023-04-08 15:26:13.982264', 7);

-- --------------------------------------------------------

--
-- Table structure for table `travel_partner_review`
--

CREATE TABLE `travel_partner_review` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_partner_review`
--

INSERT INTO `travel_partner_review` (`id`, `avatar`, `name`, `rating`, `comment`, `created_at`) VALUES
(1, 'images/Travel_Reviews/pic-6_psxiyh', 'Pooja', '4.5', 'Best Adventure Tour .', '2023-04-08 13:03:04.952156'),
(2, 'images/Travel_Reviews/pic-4_xdiweq', 'Bujji', '4', 'It was a perfectly organised trip.', '2023-04-08 13:03:34.007045'),
(3, 'images/Travel_Reviews/pic-5_sabcws', 'Jon', '4.5', 'We enjoyed everywhere we went..', '2023-04-08 13:04:19.066098');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `travel_partner_blog`
--
ALTER TABLE `travel_partner_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travel_Partner_blog_category_id_075c2ca1_fk_Travel_Pa` (`category_id`);

--
-- Indexes for table `travel_partner_booking`
--
ALTER TABLE `travel_partner_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travel_Partner_booki_package_id_e2b53517_fk_Travel_Pa` (`package_id`),
  ADD KEY `Travel_Partner_booking_user_id_b4912c11_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `travel_partner_category`
--
ALTER TABLE `travel_partner_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_partner_contact`
--
ALTER TABLE `travel_partner_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_partner_gallery`
--
ALTER TABLE `travel_partner_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travel_Partner_galle_category_id_8fdb8ff2_fk_Travel_Pa` (`category_id`);

--
-- Indexes for table `travel_partner_guide`
--
ALTER TABLE `travel_partner_guide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travel_Partner_guide_category_id_9f095a87_fk_Travel_Pa` (`category_id`);

--
-- Indexes for table `travel_partner_package`
--
ALTER TABLE `travel_partner_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Travel_Partner_packa_category_id_25052a5d_fk_Travel_Pa` (`category_id`);

--
-- Indexes for table `travel_partner_review`
--
ALTER TABLE `travel_partner_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `travel_partner_blog`
--
ALTER TABLE `travel_partner_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `travel_partner_booking`
--
ALTER TABLE `travel_partner_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `travel_partner_category`
--
ALTER TABLE `travel_partner_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travel_partner_contact`
--
ALTER TABLE `travel_partner_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travel_partner_gallery`
--
ALTER TABLE `travel_partner_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travel_partner_guide`
--
ALTER TABLE `travel_partner_guide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `travel_partner_package`
--
ALTER TABLE `travel_partner_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `travel_partner_review`
--
ALTER TABLE `travel_partner_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `travel_partner_blog`
--
ALTER TABLE `travel_partner_blog`
  ADD CONSTRAINT `Travel_Partner_blog_category_id_075c2ca1_fk_Travel_Pa` FOREIGN KEY (`category_id`) REFERENCES `travel_partner_category` (`id`);

--
-- Constraints for table `travel_partner_booking`
--
ALTER TABLE `travel_partner_booking`
  ADD CONSTRAINT `Travel_Partner_booki_package_id_e2b53517_fk_Travel_Pa` FOREIGN KEY (`package_id`) REFERENCES `travel_partner_package` (`id`),
  ADD CONSTRAINT `Travel_Partner_booking_user_id_b4912c11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `travel_partner_gallery`
--
ALTER TABLE `travel_partner_gallery`
  ADD CONSTRAINT `Travel_Partner_galle_category_id_8fdb8ff2_fk_Travel_Pa` FOREIGN KEY (`category_id`) REFERENCES `travel_partner_category` (`id`);

--
-- Constraints for table `travel_partner_guide`
--
ALTER TABLE `travel_partner_guide`
  ADD CONSTRAINT `Travel_Partner_guide_category_id_9f095a87_fk_Travel_Pa` FOREIGN KEY (`category_id`) REFERENCES `travel_partner_category` (`id`);

--
-- Constraints for table `travel_partner_package`
--
ALTER TABLE `travel_partner_package`
  ADD CONSTRAINT `Travel_Partner_packa_category_id_25052a5d_fk_Travel_Pa` FOREIGN KEY (`category_id`) REFERENCES `travel_partner_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
