-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 08:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `get1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app5_register`
--

CREATE TABLE `app5_register` (
  `regid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app5_register`
--

INSERT INTO `app5_register` (`regid`, `name`, `email`, `password`, `mobile`, `address`, `city`, `gender`, `status`, `roll`, `info`) VALUES
(4, 'pooja', 'pooja300@gmail.com', '456789', '9175342236', 'vijay nagar', 'Bhopal', 'Female', 1, 'admin', '<built-in function asctime>'),
(16, 'Manjesh Verma', 'manjeshverma124@gmail.com', '12345678', '9874563210', 'Dewas Naka Indore', 'Indore', 'Male', 1, 'user', 'Fri Dec 16 20:29:34 2022'),
(20, 'Ashish dost', 'ashishpiplande3669@gmail.com', '1753142236', '9314567836', 'Robot Square', 'Indore', 'Male', 1, 'user', 'Fri Dec 23 12:21:21 2022'),
(21, 'kr', 'admin@gmail.com', '123456', '555555', 'ffgfggfg', 'Indore', 'Male', 0, 'user', 'Sun Apr  9 15:23:29 2023');

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
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register'),
(29, 'Can add categroy', 8, 'add_categroy'),
(30, 'Can change categroy', 8, 'change_categroy'),
(31, 'Can delete categroy', 8, 'delete_categroy'),
(32, 'Can view categroy', 8, 'view_categroy'),
(33, 'Can add subcategroy', 9, 'add_subcategroy'),
(34, 'Can change subcategroy', 9, 'change_subcategroy'),
(35, 'Can delete subcategroy', 9, 'delete_subcategroy'),
(36, 'Can view subcategroy', 9, 'view_subcategroy'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add test1', 11, 'add_test1'),
(42, 'Can change test1', 11, 'change_test1'),
(43, 'Can delete test1', 11, 'delete_test1'),
(44, 'Can view test1', 11, 'view_test1'),
(45, 'Can add products', 12, 'add_products'),
(46, 'Can change products', 12, 'change_products'),
(47, 'Can delete products', 12, 'delete_products'),
(48, 'Can view products', 12, 'view_products');

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
(1, 'admin', 'logentry'),
(7, 'app5', 'register'),
(11, 'app5', 'test1'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'myadmin', 'categroy'),
(12, 'myadmin', 'products'),
(9, 'myadmin', 'subcategroy'),
(6, 'sessions', 'session'),
(10, 'user', 'payment');

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
(1, 'contenttypes', '0001_initial', '2022-11-29 09:34:58.021165'),
(2, 'auth', '0001_initial', '2022-11-29 09:35:06.704690'),
(3, 'admin', '0001_initial', '2022-11-29 09:35:09.063899'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-29 09:35:09.110793'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-29 09:35:09.188928'),
(6, 'app5', '0001_initial', '2022-11-29 09:35:09.475030'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-29 09:35:10.756189'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-29 09:35:11.615515'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-29 09:35:11.818613'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-29 09:35:11.896733'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-29 09:35:12.584184'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-29 09:35:12.631055'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-29 09:35:12.677964'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-29 09:35:12.802916'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-29 09:35:12.943571'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-29 09:35:13.115419'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-29 09:35:13.193517'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-29 09:35:13.318542'),
(19, 'sessions', '0001_initial', '2022-11-29 09:35:13.849756'),
(20, 'app5', '0002_rename_addres_register_address', '2022-11-29 09:39:42.770451'),
(21, 'app5', '0003_rename_role_register_roll', '2022-11-29 09:41:24.437771'),
(22, 'myadmin', '0001_initial', '2022-12-01 07:11:01.053687'),
(23, 'myadmin', '0002_subcategroy', '2022-12-07 16:31:27.786246'),
(24, 'user', '0001_initial', '2022-12-17 04:55:58.967874'),
(25, 'app5', '0004_test1', '2022-12-19 06:49:39.581272'),
(26, 'myadmin', '0003_products', '2022-12-23 16:53:47.236715');

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
('8mk7dbpfvinh44j7d72h5bs3jbu2xy1a', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1pSINH:5cXDWfL3TDlxBm9Nx5Vx025JOQZkdL3FLXoxIr9550g', '2023-03-01 14:03:07.164874'),
('axs66vm600z0e1c4enqm81wg0o59tiph', 'eyJzdW5tIjoicG9vamEzMDBAZ21haWwuY29tIiwic3JvbGwiOiJhZG1pbiJ9:1qmW3y:lCn2bo1HRQQSuZberVYAMz9riKYHppcevzYoaPlug9M', '2023-10-14 09:15:02.080358'),
('f5vz45h76fpjy3s3hsnk6n4odysgdde2', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1qDmOJ:kuJrCs2XYnIu-3-3VTLdQAoJc-4zVoBgMJnsEP2yN_o', '2023-07-10 13:36:27.467024'),
('gvzbeg1cdwiukivodhm2rnlzdv4yxnq6', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1pbihF:j59qTOGKxcJvKFAhKHfWJW8Wkrkd1datvfdeAN5hUHQ', '2023-03-27 13:58:41.646604'),
('h29pl9bd01hxbjtbnccnehrw8heyfdnu', 'eyJzdW5tIjoibWFuamVzaHZlcm1hMTI0QGdtYWlsLmNvbSIsInNyb2xsIjoidXNlciJ9:1pA6GD:oI97klO8k-C71x5Vjl39d_Kj-yXXN0GwPL1TI-DRdfw', '2023-01-10 09:28:37.835458'),
('p68eftrp5570l4q75wsin83l4o1w4fuv', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1pFaOT:xOUbG7WCcjmA33o0EUEQT7hiba83DT2jYXHY-_RqW5c', '2023-01-25 12:39:49.844272'),
('tci1bqg11mttjqf0sfyrk8ysc8iujzes', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1p67cN:9ukRs3OSRTzsNaKATb5o0o4xs1VWPWEeWECIm30GU30', '2022-12-30 10:07:03.101221'),
('y4n41r1adfog2r66j1jgezvob28otw45', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1p8xwR:k_wNxkPp3A7X9A_es_zv17oMJ7qmwf88arjtCkof45k', '2023-01-07 06:23:31.176597'),
('yv5e25d0tt5ad7vrca8iuou7ovh0v90g', 'eyJzdW5tIjpudWxsLCJzcm9sbCI6bnVsbH0:1pllny:beAsvqI8BCUC8FejIVZeEn5tkSld6W_rD41R61k_rDQ', '2023-04-24 07:19:10.625899');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_categroy`
--

CREATE TABLE `myadmin_categroy` (
  `catid` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL,
  `caticonname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myadmin_categroy`
--

INSERT INTO `myadmin_categroy` (`catid`, `catname`, `caticonname`) VALUES
(3, 'Footware', 'footware1.jpg'),
(4, 'Perfumes', 'perfume.jpg'),
(5, 'Clothes', 'cloths.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_products`
--

CREATE TABLE `myadmin_products` (
  `prodid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `subcatname` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ldate` varchar(10) NOT NULL,
  `edate` varchar(10) NOT NULL,
  `info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myadmin_products`
--

INSERT INTO `myadmin_products` (`prodid`, `title`, `subcatname`, `description`, `ldate`, `edate`, `info`) VALUES
(1, 'Product for Pants', 'Pants', 'Cotton Pants', '2022-12-20', '2022-12-25', 'Fri Dec 23 22:54:53 2022'),
(2, 'Product for Shirt', 'Shirt', 'Full Fabric Shirt', '2022-12-07', '2022-12-10', 'Sat Dec 24 08:07:49 2022');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin_subcategroy`
--

CREATE TABLE `myadmin_subcategroy` (
  `subcatid` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL,
  `subcatname` varchar(50) NOT NULL,
  `subcaticonname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myadmin_subcategroy`
--

INSERT INTO `myadmin_subcategroy` (`subcatid`, `catname`, `subcatname`, `subcaticonname`) VALUES
(2, 'Footware', 'Belly', 'belly.jpg'),
(3, 'Perfumes', 'Shadow ', 'shadow.webp'),
(4, 'Clothes', 'Shirt', 'shirt.jpg'),
(5, 'Footware', 'Boots', 'boot.jpg'),
(6, 'Footware', 'Sandels', 'sandel1.jpg'),
(7, 'Perfumes', 'Fogg', 'fogg.jpg'),
(8, 'Perfumes', 'Denver', 'denver.jpg'),
(9, 'Clothes', 'Pants', 'pant.jpg'),
(10, 'Clothes', 'Trackpants', 'trackpant.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `txnid` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `amt` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_payment`
--

INSERT INTO `user_payment` (`txnid`, `uid`, `amt`, `info`) VALUES
(1, 'manjeshverma124@gmail.com', '100', 'Sat Dec 17 20:46:53 2022'),
(2, 'manjeshverma124@gmail.com', '100', 'Tue Dec 20 15:57:24 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app5_register`
--
ALTER TABLE `app5_register`
  ADD PRIMARY KEY (`regid`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `myadmin_categroy`
--
ALTER TABLE `myadmin_categroy`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `myadmin_products`
--
ALTER TABLE `myadmin_products`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `myadmin_subcategroy`
--
ALTER TABLE `myadmin_subcategroy`
  ADD PRIMARY KEY (`subcatid`),
  ADD UNIQUE KEY `subcatname` (`subcatname`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`txnid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app5_register`
--
ALTER TABLE `app5_register`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `myadmin_categroy`
--
ALTER TABLE `myadmin_categroy`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myadmin_products`
--
ALTER TABLE `myadmin_products`
  MODIFY `prodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myadmin_subcategroy`
--
ALTER TABLE `myadmin_subcategroy`
  MODIFY `subcatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `txnid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
