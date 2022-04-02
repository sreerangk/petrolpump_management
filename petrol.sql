-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 06:55 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petrol`
--

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
(25, 'Can add user_tbl', 7, 'add_user_tbl'),
(26, 'Can change user_tbl', 7, 'change_user_tbl'),
(27, 'Can delete user_tbl', 7, 'delete_user_tbl'),
(28, 'Can view user_tbl', 7, 'view_user_tbl'),
(29, 'Can add u_dp', 8, 'add_u_dp'),
(30, 'Can change u_dp', 8, 'change_u_dp'),
(31, 'Can delete u_dp', 8, 'delete_u_dp'),
(32, 'Can view u_dp', 8, 'view_u_dp'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order');

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
(1, 'pbkdf2_sha256$320000$2zl1FWRgSVMoOsMF3itwdd$9xXYLyUp3J7kXdSXtWiIRXS0b9BzwCYpH4FaKFROjcI=', '2022-03-28 17:46:11.663254', 1, 'arjuntp', '', '', 'sreerangk77@gmail.com', 1, 1, '2022-03-28 09:52:06.210319'),
(4, 'pbkdf2_sha256$320000$J8Cj0dHM25GAAH0Yw70O8b$dxnYaRgbKKXVKSNlMyBajpHNGAcqUCGTADmz0lt5e54=', '2022-03-28 17:49:37.321940', 0, 'sree', '', '', 's@gmail.com', 0, 1, '2022-03-28 17:49:18.679875'),
(5, 'pbkdf2_sha256$320000$CHwnHkybccBUkUXIHv21wf$etxiJGDmBxqLrkwThgdv2SvMU2zLEgjlqiTn7HjDG1U=', NULL, 0, 'sreerang', '', '', 'sr@gmail.com', 0, 1, '2022-03-28 18:21:19.725584'),
(6, 'pbkdf2_sha256$320000$pJg9tszCyYakajg2hJ4vud$PB0v3uXqgIntd8qCXFnSlilN6mOKMInVDMOmGauDlbY=', '2022-03-31 10:29:52.048334', 0, 'stud', '', '', 'abcd@gmail.com', 0, 1, '2022-03-28 18:50:17.511904');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-28 09:54:11.557548', '2', 'arjun', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-03-28 11:47:55.159916', '1', 'u_dp object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-03-28 12:31:05.465117', '1', 'product object (1)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2022-03-28 16:03:40.408026', '1', 'product object (1)', 2, '[{\"changed\": {\"fields\": [\"Discriptiom\", \"Image\"]}}]', 9, 1),
(5, '2022-03-28 16:05:52.943367', '2', 'product object (2)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2022-03-28 16:26:01.674996', '1', 'product object (1)', 2, '[{\"changed\": {\"fields\": [\"Discriptiom\"]}}]', 9, 1),
(7, '2022-03-28 17:47:24.779636', '3', 'sree', 3, '', 4, 1),
(8, '2022-03-28 17:47:24.858134', '2', 'stud', 3, '', 4, 1);

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
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'firstapp', 'order'),
(9, 'firstapp', 'product'),
(7, 'firstapp', 'user_tbl'),
(8, 'firstapp', 'u_dp'),
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
(1, 'contenttypes', '0001_initial', '2022-03-28 09:46:04.302672'),
(2, 'auth', '0001_initial', '2022-03-28 09:46:15.148778'),
(3, 'admin', '0001_initial', '2022-03-28 09:46:17.733962'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-28 09:46:17.815841'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-28 09:46:17.874324'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-28 09:46:19.335974'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-28 09:46:20.472042'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-28 09:46:20.624922'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-28 09:46:20.732430'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-28 09:46:21.767738'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-28 09:46:21.847470'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-28 09:46:21.911045'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-28 09:46:22.093325'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-28 09:46:22.278655'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-28 09:46:22.418875'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-28 09:46:22.534867'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-28 09:46:22.711655'),
(18, 'firstapp', '0001_initial', '2022-03-28 09:46:24.529341'),
(19, 'sessions', '0001_initial', '2022-03-28 09:46:25.386782'),
(20, 'firstapp', '0002_product', '2022-03-28 12:22:38.480225'),
(21, 'firstapp', '0003_order', '2022-03-28 19:17:12.574044');

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
('veyscnawbzkb1ptz9hbxv87156b6l6xf', '.eJxVjMsOwiAQAP-FsyGLPAoevfcbyLJLpWpoUtqT8d-VpAe9zkzmJSLuW4l7y2ucWVyEE6dflpAeuXbBd6y3RdJSt3VOsifysE2OC-fn9Wj_BgVb6VufQgI3aSKftZpUAMvBQUg0ZGZjrQHNaAzQF2nLZ1KBSA0aAnpC8f4A5zI4Ag:1nYvK8:kYCibCh6Ejvg3dPV4PHOz0WTdEU6J0OI6hzkWGJcRYQ', '2022-04-11 19:46:44.575939');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_order`
--

CREATE TABLE `firstapp_order` (
  `id` bigint(20) NOT NULL,
  `mail` varchar(254) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `userid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_order`
--

INSERT INTO `firstapp_order` (`id`, `mail`, `quantity`, `subject`, `product_id`, `userid_id`) VALUES
(1, 'abcd@gmail.com', 1, 'qw', 1, 6),
(2, 'sree@1234', 1, 'asd', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_product`
--

CREATE TABLE `firstapp_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `discriptiom` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_product`
--

INSERT INTO `firstapp_product` (`id`, `name`, `discriptiom`, `image`) VALUES
(1, 'petrol1+', 'GoDigital with DriveTrack Plus, the Total Fleet Management Solution,', 'product_img/FOxpxzZaIAgU3YI.jpg'),
(2, 'lubricunt', 'EP Lubricant Oil, Packaging Type: Cane', 'product_img/ep-lubricant-oil-500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_user_tbl`
--

CREATE TABLE `firstapp_user_tbl` (
  `id` bigint(20) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `uemail` varchar(254) NOT NULL,
  `uage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `firstapp_u_dp`
--

CREATE TABLE `firstapp_u_dp` (
  `id` bigint(20) NOT NULL,
  `dp` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `addedon` datetime(6) NOT NULL,
  `updatedon` datetime(6) NOT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `userdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `firstapp_u_dp`
--

INSERT INTO `firstapp_u_dp` (`id`, `dp`, `Address`, `city`, `addedon`, `updatedon`, `contact_no`, `userdt_id`) VALUES
(2, 'user_dp/Passport-Photos-featured1_0jwsxal.jpg', 'Noneq', 'we', '2022-03-28 18:50:17.783979', '2022-03-28 18:51:17.010439', 123456, 6);

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
-- Indexes for table `firstapp_order`
--
ALTER TABLE `firstapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `firstapp_order_product_id_c09e8081_fk_firstapp_product_id` (`product_id`),
  ADD KEY `firstapp_order_userid_id_6c616e57_fk_auth_user_id` (`userid_id`);

--
-- Indexes for table `firstapp_product`
--
ALTER TABLE `firstapp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_user_tbl`
--
ALTER TABLE `firstapp_user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstapp_u_dp`
--
ALTER TABLE `firstapp_u_dp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userdt_id` (`userdt_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `firstapp_order`
--
ALTER TABLE `firstapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `firstapp_product`
--
ALTER TABLE `firstapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `firstapp_user_tbl`
--
ALTER TABLE `firstapp_user_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firstapp_u_dp`
--
ALTER TABLE `firstapp_u_dp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `firstapp_order`
--
ALTER TABLE `firstapp_order`
  ADD CONSTRAINT `firstapp_order_product_id_c09e8081_fk_firstapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `firstapp_product` (`id`),
  ADD CONSTRAINT `firstapp_order_userid_id_6c616e57_fk_auth_user_id` FOREIGN KEY (`userid_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `firstapp_u_dp`
--
ALTER TABLE `firstapp_u_dp`
  ADD CONSTRAINT `firstapp_u_dp_userdt_id_1b267b55_fk_auth_user_id` FOREIGN KEY (`userdt_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
