-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 04:52 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contact`
--

CREATE TABLE `accounts_contact` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_contact`
--

INSERT INTO `accounts_contact` (`id`, `Name`, `email`, `subject`, `message`) VALUES
(1, 'Ashok Shrestha', 'ram123@gmail.com', 'food ordering', 'i need food'),
(2, 'Ashok Shrestha', 'aabishkarstha2021@gmail.com', 'food ordering', 'i need momo'),
(3, 'Ashok Shrestha', 'ram123@gmail.com', 'food ordering', 'i need pizza'),
(4, 'Ashok Shrestha', 'aabishkarstha2021@gmail.com', 'food ordering', 'i need momo'),
(5, 'Ashok Shrestha', 'ram123@gmail.com', 'food ordering', 'i need food'),
(6, 'Ashok Shrestha', 'ram123@gmail.com', 'food ordering', 'i need food'),
(7, 'Ashok Shrestha', 'ashokshrestha192@gmail.com', 'food ordering', 'i need food'),
(8, 'Ashok Shrestha', 'aabishkarstha2021@gmail.com', 'food ordering', 'i need food');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `username`, `email`, `firstname`, `lastname`, `phone`, `profile_pic`, `created_date`, `user_id`) VALUES
(5, 'urmila', 'aabishkarstha2021@gmail.com', 'Urmila', 'Shrestha', '9831123234', 'static/profile/20210717_124946-min.jpg', '2021-09-28 14:23:21.637181', 14),
(6, 'balaram', 'ashokshrestha102@gmail.com', '', '', '', 'static/sampleprofile.png', '2021-09-30 12:19:46.321331', 15),
(7, 'ujwal', 'ashokshrestha102@gmail.com', 'Ujwal Thapa', 'Thapa', '9131241241', 'static/profile/photo_1K4xMAv.jpg', '2021-09-30 14:19:09.631863', 16),
(8, 'niroj', 'ashokshrestha102@gmail.com', 'Niroj', 'Thapa', '9831123234', 'static/profile/chef2.jpg', '2021-09-30 14:41:53.913688', 17);

-- --------------------------------------------------------

--
-- Table structure for table `admins_adminprofile`
--

CREATE TABLE `admins_adminprofile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add food', 8, 'add_food'),
(30, 'Can change food', 8, 'change_food'),
(31, 'Can delete food', 8, 'delete_food'),
(32, 'Can view food', 8, 'view_food'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order'),
(37, 'Can add orderto', 10, 'add_orderto'),
(38, 'Can change orderto', 10, 'change_orderto'),
(39, 'Can delete orderto', 10, 'delete_orderto'),
(40, 'Can view orderto', 10, 'view_orderto'),
(41, 'Can add contact', 11, 'add_contact'),
(42, 'Can change contact', 11, 'change_contact'),
(43, 'Can delete contact', 11, 'delete_contact'),
(44, 'Can view contact', 11, 'view_contact'),
(45, 'Can add profile', 12, 'add_profile'),
(46, 'Can change profile', 12, 'change_profile'),
(47, 'Can delete profile', 12, 'delete_profile'),
(48, 'Can view profile', 12, 'view_profile'),
(49, 'Can add admin profile', 13, 'add_adminprofile'),
(50, 'Can change admin profile', 13, 'change_adminprofile'),
(51, 'Can delete admin profile', 13, 'delete_adminprofile'),
(52, 'Can view admin profile', 13, 'view_adminprofile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(5, 'pbkdf2_sha256$260000$F7pGDKRPnaqsf0onvpAdAW$fl2x8jRTooSJzdC0j93+kBtAWmsAocrTRnQMInshWXc=', '2021-09-30 14:23:39.529868', 1, 'ahir', '', '', '', 1, 1, '2021-09-08 14:00:30.463939'),
(7, 'pbkdf2_sha256$260000$bQz9I4M2cn5mMvktqlV75I$B5zuVNmjBFDOxCrokLqVUv1zlT2sJhOaP3LOTbmdHJg=', '2021-09-24 18:17:33.686227', 0, 'saroj', 'Saroj', 'Thapa', 'saroj@123gmail.com', 0, 1, '2021-09-16 15:21:33.519780'),
(8, 'pbkdf2_sha256$260000$1rhc5rk2toOVAxlznoPUig$Sz7NSLi0KEO1ttYW4ltEP3/Eg3fQ4Bgry+10uFbsooM=', '2021-09-26 10:07:09.704712', 0, 'aabishkar', 'Aabishkar', 'Shrestha', 'aabishkarstha2021@gmail.com', 1, 1, '2021-09-23 16:59:40.087926'),
(9, 'pbkdf2_sha256$260000$YlW8f0629TEqoPll5lNOoT$IkZpbIpkrdTsTerEfPdKB3dG3EiLxK/oKazt/HfmkcQ=', '2021-09-27 16:19:45.557274', 0, 'rijwol', 'Rijwol', 'Shrestha', 'rijwol123@gmail.com', 1, 1, '2021-09-25 07:20:43.450973'),
(10, 'pbkdf2_sha256$260000$OZAnMxAlgJLtdkA0Qc0wj6$fPOZqn+TLaCWkBf6J38u+L4CaBiI3FjykdujRH8GUro=', '2021-09-26 17:22:52.109621', 1, 'tshring', 'Tshring', 'sherpa', 'sherpa2021@gmail.com', 0, 1, '2021-09-26 17:19:45.676649'),
(11, 'pbkdf2_sha256$260000$NasM0rNtmY2Rg6Ok9dA6uA$UO/eUFSURpo2JrLMn19Quo4eZpaJrHA4i19ytoPMe34=', '2021-09-27 06:50:40.710305', 0, 'pradip', 'pradip', 'kandel', 'pradipkandel@gmail.com', 0, 1, '2021-09-27 06:50:23.697209'),
(14, 'pbkdf2_sha256$260000$OL5qMpeGg6Nk6kialYi6Z6$oBsuyrhh75aeU5KG0XgrsXy3wJO2B80TYtzsLGXryTk=', '2021-09-30 10:15:13.193370', 0, 'urmila', '', '', 'aabishkarstha2021@gmail.com', 0, 1, '2021-09-28 14:23:19.564726'),
(15, 'pbkdf2_sha256$260000$1qXd4PVJFuOGMR3ciIA8A1$DP5uU5ISQ8dRFvcJaRpwx9BkJs0O+yYJIwD8+GaeObE=', '2021-09-30 12:20:19.716833', 0, 'balaram', '', '', 'ashokshrestha102@gmail.com', 0, 1, '2021-09-30 12:19:38.414522'),
(16, 'pbkdf2_sha256$260000$ECzj4PHXCDerli7aSyNM70$KR7z8wg66F+M8E8gz5QwL1pYCubA/OIJLkI+SV32JV0=', '2021-09-30 14:19:23.702007', 0, 'ujwal', '', '', 'ashokshrestha102@gmail.com', 0, 1, '2021-09-30 14:19:09.247798'),
(17, 'pbkdf2_sha256$260000$YHEZrf3F2Eh3Qej2V2KoSp$fYMgBb1lf3vCGDQGsc3KwiSVY0elX9EIKl+DIdSRpPo=', '2021-09-30 14:46:28.272275', 0, 'niroj', '', '', 'ashokshrestha102@gmail.com', 0, 1, '2021-09-30 14:41:53.643893');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'accounts', 'contact'),
(12, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(13, 'admins', 'adminprofile'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'foods', 'category'),
(8, 'foods', 'food'),
(9, 'foods', 'order'),
(10, 'foods', 'orderto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-27 01:32:08.221679'),
(2, 'auth', '0001_initial', '2021-08-27 01:32:08.854033'),
(3, 'admin', '0001_initial', '2021-08-27 01:32:09.023377'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-27 01:32:09.054621'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-27 01:32:09.081991'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-27 01:32:09.126003'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-27 01:32:09.179779'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-27 01:32:09.209911'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-27 01:32:09.209911'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-27 01:32:09.256776'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-27 01:32:09.256776'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-27 01:32:09.272436'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-27 01:32:09.288019'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-27 01:32:09.294523'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-27 01:32:09.325771'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-27 01:32:09.341425'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-27 01:32:09.357014'),
(18, 'sessions', '0001_initial', '2021-08-27 01:32:09.394764'),
(19, 'foods', '0001_initial', '2021-09-01 10:41:27.210942'),
(20, 'foods', '0002_auto_20210901_2253', '2021-09-01 17:08:06.625070'),
(21, 'foods', '0003_alter_category_category_description', '2021-09-02 08:50:51.759825'),
(22, 'foods', '0004_category_category_image', '2021-09-16 14:42:46.348914'),
(23, 'foods', '0005_order', '2021-09-16 15:01:20.480062'),
(24, 'foods', '0006_orderto', '2021-09-21 07:40:26.679550'),
(25, 'foods', '0007_auto_20210924_1553', '2021-09-24 10:08:53.252768'),
(26, 'accounts', '0001_initial', '2021-09-26 08:31:21.910060'),
(27, 'accounts', '0002_profile', '2021-09-26 10:45:34.989719'),
(28, 'admins', '0001_initial', '2021-09-28 13:47:24.630392');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('35p3o8myr5pzpzoy26gy0n0r6hpxhw4i', '.eJxVjDsOwjAQBe_iGlnr9S-hpM8ZItu7xgFkS_lUiLuTSCmgnZn33mIM21rGbeF5nEhchQJx-YUxpCfXw9Aj1HuTqdV1nqI8EnnaRQ6N-HU727-DEpayryPFgIopIOncIySbTWbdeWSL0RnwtgdwQKwBk4edYuc8KutSUmzE5wsRtjeK:1mUXrX:zth-4T6vsxZOrErbAfyke5BNVIH9N1GaqPA-1E7X444', '2021-10-10 17:22:51.277389'),
('3en07r1yam8tlik1ntjnmw5l47k5ps0c', '.eJxVjEEOgjAQRe_StWloKZRx6Z4zkJnp1KKmTSisjHcXEha6_e-9_1YTbmuatirLNAd1VV5dfjdCfko-QHhgvhfNJa_LTPpQ9EmrHkuQ1-10_w4S1rTXELx0ljxIx33sTW-lGUJHbFtvEWIL7eAg0g4skWHLJlCDDTg04jyozxfhWzeq:1mTI2Z:_ybaK24Zs33YvWAiLcUZEKofKyRyswdfEdT5EnWJ4FE', '2021-10-07 06:17:03.337759'),
('4u8zankaycm47cupqv16r0m59kj62t46', '.eJxVjDsOwjAQBe_iGlnr9S-hpM8ZItu7xgFkS_lUiLuTSCmgnZn33mIM21rGbeF5nEhchQJx-YUxpCfXw9Aj1HuTqdV1nqI8EnnaRQ6N-HU727-DEpayryPFgIopIOncIySbTWbdeWSL0RnwtgdwQKwBk4edYuc8KutSUmzE5wsRtjeK:1mUXrX:zth-4T6vsxZOrErbAfyke5BNVIH9N1GaqPA-1E7X444', '2021-10-10 17:22:51.592401'),
('4w1g6bby795lvvwx0pgjwnjtwr6fhaps', '.eJxVjEEOwiAQRe_C2hCZlgFcuvcMZBimUjU0Ke3KeHfbpAvd_vfef6tI61Li2mSOY1YXZdXpd0vET6k7yA-q90nzVJd5THpX9EGbvk1ZXtfD_Tso1MpWgwMkEM7eJ8PW20FwCI6DyQImYerEGEbre8O0Md8BMkjvHdpzgqA-X-vZN7U:1mTpDQ:RKcYZ2VRjpkaPazxUIZb5IHVOQQQyLW-_Dco-fmOWAk', '2021-10-08 17:42:28.612856'),
('5dx9w3mw0o1ol0jtyei2px7ue5v15w4o', '.eJxVjEEOwiAQRe_C2hCZlgFcuvcMZBimUjU0Ke3KeHfbpAvd_vfef6tI61Li2mSOY1YXZdXpd0vET6k7yA-q90nzVJd5THpX9EGbvk1ZXtfD_Tso1MpWgwMkEM7eJ8PW20FwCI6DyQImYerEGEbre8O0Md8BMkjvHdpzgqA-X-vZN7U:1mOcIn:qA9cy8X8NqMLAl2V1qv6b5MtCaZGJCQgIwFyzSznVkw', '2021-09-24 08:54:29.380233'),
('87ipb8l7fqdawwkeulvets2370u9mpg2', '.eJxVjEEOgjAQRe_StWloKZRx6Z4zkJnp1KKmTSisjHcXEha6_e-9_1YTbmuatirLNAd1VV5dfjdCfko-QHhgvhfNJa_LTPpQ9EmrHkuQ1-10_w4S1rTXELx0ljxIx33sTW-lGUJHbFtvEWIL7eAg0g4skWHLJlCDDTg04jyozxfhWzeq:1mTJYj:X-QvwqYCmt-AbRtqojcMK7rXGxHmFafdPgD89qnG2lI', '2021-10-07 07:54:21.909647'),
('bgmqgxvziq17uvxs7os9j09ox53pbptw', '.eJxVjMsOwiAQRf-FtSFAebp07zeQmQGkaiAp7cr479qkC93ec859sQjbWuM28hLnxM5Manb6HRHokdtO0h3arXPqbV1m5LvCDzr4taf8vBzu30GFUb-1EJpQukDGO2m8LSmRKWidRDTCgwq6IIhJlUkHn5UAJBtkQXLgpkTs_QECwDhg:1mVY94:xCJQosuicd2ogHKk1NgvBSJjDhXll4Zv4gYLgTCm48w', '2021-10-13 11:53:06.950054'),
('dkiexnvxljyaonnq9q39ay2mjbeu36td', '.eJxVjEEOgjAQRe_StWloKZRx6Z4zkJnp1KKmTSisjHcXEha6_e-9_1YTbmuatirLNAd1VV5dfjdCfko-QHhgvhfNJa_LTPpQ9EmrHkuQ1-10_w4S1rTXELx0ljxIx33sTW-lGUJHbFtvEWIL7eAg0g4skWHLJlCDDTg04jyozxfhWzeq:1mTIOO:Pc7WV2-CR9kTlUPf63AFbY-fU-db5WxKNvMWjtjWobI', '2021-10-07 06:39:36.645471'),
('mkqqwm3rue3xim7t1i1q0wqza5r6dqzm', '.eJxVjEsOAiEQBe_C2hCBlo9L956BNN0gowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jxOIsvDj8bgnpkdsG-I7t1iX1tsxTkpsidzrktXN-Xnb376DiqN8arXaGC7riAoKFI4E6BR1IASbFOSvrEpVEqLVhnYoGCN4BKG_YUBHvD-v3OAM:1mUNaI:anKl817UKj0t72s2BsXeHQP-B2FqjnhLmZFoZMdGsbM', '2021-10-10 06:24:22.196260'),
('ndxujoauk81w8oy82uwta17gibc9ih1e', '.eJxVjMsOwiAQRf-FtSHDozxcuvcbyACDVA0kpV0Z_12bdKHbe865LxZwW2vYBi1hzuzMhGWn3zFielDbSb5ju3WeeluXOfJd4Qcd_NozPS-H-3dQcdRvDV5qCT4DxclbFMLIXKwt2YIRoqBKIoFRExkk40oC0FErlxxZX7xT7P0B7XE3gA:1mVxKO:-PE764GtrIkXiiMlqxlEN4DqDvKm99lLBvwixygf4Rk', '2021-10-14 14:46:28.277261'),
('okce0cvwi98kbwslrme4vyluruo28q8f', '.eJxVjDsOwjAQBe_iGlnr9S-hpM8ZItu7xgFkS_lUiLuTSCmgnZn33mIM21rGbeF5nEhchQJx-YUxpCfXw9Aj1HuTqdV1nqI8EnnaRQ6N-HU727-DEpayryPFgIopIOncIySbTWbdeWSL0RnwtgdwQKwBk4edYuc8KutSUmzE5wsRtjeK:1mUXrX:zth-4T6vsxZOrErbAfyke5BNVIH9N1GaqPA-1E7X444', '2021-10-10 17:22:51.339481'),
('x4ihm3z3ztr3nh67s4lv78lqajbgiw01', '.eJxVjDsOwjAQRO_iGllr_Kekzxms9a6FA8iW8qkQdydBKaAbzbx5L5FwXWpa5zKlkcVFWHH67TLSo7R94Du2W5fU2zKNWe6IPNZZDp3L83qwf4KKc93eWgXMPntbwIAD45HIkgLrvgFsxMCw-YLWbEirGHRkS2fAElwM4v0B22w3lw:1mTpG8:r6VGfME6pzlxQFzfAc0uuFcrH5JmcJMIEy4-KWCDYuw', '2021-10-08 17:45:16.150321');

-- --------------------------------------------------------

--
-- Table structure for table `foods_category`
--

CREATE TABLE `foods_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `category_description` longtext DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods_category`
--

INSERT INTO `foods_category` (`id`, `category_name`, `category_description`, `created_date`, `category_image`) VALUES
(15, 'Drinks', 'A drink is a liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture. Common types of drinks include plain drinking water, milk, juice and soft drinks. Traditionally warm beverages include coffee, tea, and hot chocolate.', '2021-09-16 14:48:58.546346', 'static/uploads/drinks.jpg'),
(16, 'Vegetable Foods', 'Vegetables are usually classified on the basis of the part of the plant that is used for food. The root vegetables include beets, carrots, radishes, sweet potatoes, and turnips. Stem vegetables include asparagus and kohlrabi. Among the edible tubers, or underground stems, are potatoes.', '2021-09-22 11:25:02.956689', 'static/uploads/veg.jpg'),
(17, 'Burger', 'A burger is a food, typically considered a sandwich, consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.', '2021-09-22 11:30:51.546900', 'static/uploads/itemburger.jpg'),
(18, 'Pizza', 'Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly usually, in a commercial setting, using a wood-fired oven heated to a very high temperature and served hot.', '2021-09-22 11:33:52.579353', 'static/uploads/itempizza.jpg'),
(19, 'Fried Rice', 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. As a homemade dish, fried rice is typically made with ingredients left over from other dishes, leading to countless variations.', '2021-09-22 11:45:36.763621', 'static/uploads/rice7.jpg'),
(20, 'MoMo', 'Momo is a type of steamed dumpling with some form of filling. Momo has become a traditional delicacy in Nepal, Tibet, as well as among Nepalese and Tibetan communities in Bhutan, as well as people of Nepa', '2021-09-22 11:51:21.225761', 'static/uploads/mix_momo.jpg'),
(21, 'Chowmein', 'Chowmein are Chinese stir-fried noodles with vegetables and sometimes meat or tofu; the name is a romanization of the Taishanese chumein. The dish is popular throughout the Chinese diaspora and appears on the menus of most Chinese restaurants abroad. It is particularly popular in India, Nepal, the UK, and the US.', '2021-09-22 12:29:42.463047', 'static/uploads/itemchowmein.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `foods_food`
--

CREATE TABLE `foods_food` (
  `id` bigint(20) NOT NULL,
  `food_name` varchar(200) NOT NULL,
  `food_price` double NOT NULL,
  `food_image` varchar(100) NOT NULL,
  `created_data` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods_food`
--

INSERT INTO `foods_food` (`id`, `food_name`, `food_price`, `food_image`, `created_data`, `category_id`) VALUES
(15, 'Mix momo', 350, 'static/uploads/mix_momo_Ga1C3CF.jpg', '2021-09-22 11:53:03.652123', 20),
(16, 'Chicken momo', 290, 'static/uploads/momo3.jpg', '2021-09-22 11:55:13.721027', 20),
(17, 'Chicken fried rice', 220, 'static/uploads/rice5.jpg', '2021-09-22 11:57:02.373358', 19),
(18, 'Buff fried rice', 250, 'static/uploads/rice4.jpg', '2021-09-22 11:58:07.462062', 19),
(19, 'Mix Fried rice', 330, 'static/uploads/rice6.jpg', '2021-09-22 11:58:46.473165', 19),
(20, 'Extra cheese mix pizza', 940, 'static/uploads/extra_cheese_pizza.jpg', '2021-09-22 12:06:59.788407', 18),
(21, 'Buff pizza', 440, 'static/uploads/Extra_mix_pizza_with_cheese.jpg', '2021-09-22 12:07:27.551580', 18),
(22, 'Chicken pizza', 510, 'static/uploads/chicken_pizza.jpg', '2021-09-22 12:07:55.958610', 18),
(23, 'Extra cheese pizza', 530, 'static/uploads/buff_pizza.jpg', '2021-09-22 12:09:15.057456', 18),
(24, 'Veg pizza', 390, 'static/uploads/veg_pizza.jpg', '2021-09-22 12:09:40.534031', 18),
(25, 'Extra mix pizza', 710, 'static/uploads/mix_pizza.jpg', '2021-09-22 12:10:11.682425', 18),
(26, 'Buff burger', 330, 'static/uploads/buff_burger.jpg', '2021-09-22 12:18:35.771273', 17),
(27, 'Chicken burger', 400, 'static/uploads/chicken_burger.jpg', '2021-09-22 12:18:57.539612', 17),
(28, 'Mix burger', 490, 'static/uploads/mix_burger.jpg', '2021-09-22 12:19:28.129283', 17),
(29, 'Hum burger', 500, 'static/uploads/hum_burger.jpg', '2021-09-22 12:20:50.121475', 17),
(30, 'Extra cheese with mix burger', 610, 'static/uploads/extra_cheese_burger.jpg', '2021-09-22 12:21:35.349893', 17),
(31, 'Cheese burger', 510, 'static/uploads/cheese_burger.jpg', '2021-09-22 12:22:03.156881', 17),
(32, 'Veg chowmein', 210, 'static/uploads/veg_chowmein.jpg', '2021-09-22 12:33:03.734286', 21),
(33, 'Mix chowmein', 290, 'static/uploads/mix_chowmein.jpg', '2021-09-22 12:34:41.394148', 21),
(34, 'Chicken chowmein', 280, 'static/uploads/chicken_chowmien.jpg', '2021-09-22 12:40:07.261308', 21),
(35, 'mix momo', 230, 'static/uploads/mix_momo2.jpg', '2021-09-30 14:25:17.947656', 20);

-- --------------------------------------------------------

--
-- Table structure for table `foods_order`
--

CREATE TABLE `foods_order` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods_order`
--

INSERT INTO `foods_order` (`id`, `created_date`, `food_id`, `user_id`) VALUES
(35, '2021-09-24 10:24:11.138712', 29, 7),
(43, '2021-09-30 07:46:50.903463', 30, 14),
(44, '2021-09-30 07:46:54.859893', 32, 14),
(47, '2021-09-30 14:20:35.353586', 32, 16),
(50, '2021-09-30 14:42:47.651582', 33, 17);

-- --------------------------------------------------------

--
-- Table structure for table `foods_orderto`
--

CREATE TABLE `foods_orderto` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `contact_address` varchar(200) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `food_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` varchar(200) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods_orderto`
--

INSERT INTO `foods_orderto` (`id`, `quantity`, `total_price`, `status`, `contact_no`, `contact_address`, `created_date`, `food_id`, `user_id`, `payment_method`, `payment_status`) VALUES
(21, 13, 12220, 'Delivered', '9823232440', 'Ramkot-07, Kathmandu', '2021-09-26 05:50:00.479192', 20, 8, NULL, 1),
(22, 3, 870, 'Pending', '9823232441', 'Sundhara', '2021-09-27 16:22:40.398798', 33, 9, NULL, 1),
(23, 6, 1740, 'Pending', '6464754756', 'sankhamul', '2021-09-30 14:21:03.273374', 33, 16, NULL, 1),
(24, 12, 6120, 'Pending', '1234567575', 'ramkot', '2021-09-30 14:43:23.097811', 31, 17, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_contact`
--
ALTER TABLE `accounts_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admins_adminprofile`
--
ALTER TABLE `admins_adminprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `foods_category`
--
ALTER TABLE `foods_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods_food`
--
ALTER TABLE `foods_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_food_category_id_1bb11251_fk_foods_category_id` (`category_id`);

--
-- Indexes for table `foods_order`
--
ALTER TABLE `foods_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_order_food_id_94ec05f6_fk_foods_food_id` (`food_id`),
  ADD KEY `foods_order_user_id_28dca9e8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `foods_orderto`
--
ALTER TABLE `foods_orderto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_orderto_food_id_355ade94_fk_foods_food_id` (`food_id`),
  ADD KEY `foods_orderto_user_id_2fc1cf55_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_contact`
--
ALTER TABLE `accounts_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins_adminprofile`
--
ALTER TABLE `admins_adminprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `foods_category`
--
ALTER TABLE `foods_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `foods_food`
--
ALTER TABLE `foods_food`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `foods_order`
--
ALTER TABLE `foods_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `foods_orderto`
--
ALTER TABLE `foods_orderto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `admins_adminprofile`
--
ALTER TABLE `admins_adminprofile`
  ADD CONSTRAINT `admins_adminprofile_user_id_3b8a762c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `foods_food`
--
ALTER TABLE `foods_food`
  ADD CONSTRAINT `foods_food_category_id_1bb11251_fk_foods_category_id` FOREIGN KEY (`category_id`) REFERENCES `foods_category` (`id`);

--
-- Constraints for table `foods_order`
--
ALTER TABLE `foods_order`
  ADD CONSTRAINT `foods_order_food_id_94ec05f6_fk_foods_food_id` FOREIGN KEY (`food_id`) REFERENCES `foods_food` (`id`),
  ADD CONSTRAINT `foods_order_user_id_28dca9e8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `foods_orderto`
--
ALTER TABLE `foods_orderto`
  ADD CONSTRAINT `foods_orderto_food_id_355ade94_fk_foods_food_id` FOREIGN KEY (`food_id`) REFERENCES `foods_food` (`id`),
  ADD CONSTRAINT `foods_orderto_user_id_2fc1cf55_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
