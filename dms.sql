-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2021 at 05:59 PM
-- Server version: 8.0.26
-- PHP Version: 7.2.34-23+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwt2`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` tinyint UNSIGNED NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `created_at`, `updated_at`) VALUES
(1, 'Test', '2021-08-13 19:57:42', '2021-08-13 19:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `branch_department`
--

CREATE TABLE `branch_department` (
  `branch_id` tinyint UNSIGNED NOT NULL,
  `department_id` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch_department`
--

INSERT INTO `branch_department` (`branch_id`, `department_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` tinyint UNSIGNED NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 'test', '2021-08-13 19:56:54', '2021-08-13 19:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `creation_date` date NOT NULL,
  `user_id` smallint UNSIGNED DEFAULT NULL,
  `category_id` tinyint UNSIGNED DEFAULT NULL,
  `branch_id` tinyint UNSIGNED DEFAULT NULL,
  `department_id` tinyint UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `title`, `description`, `creation_date`, `user_id`, `category_id`, `branch_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'dsf', 'sdf', '2021-08-13', 1, 1, 1, 1, '2021-08-13 20:35:03', '2021-08-13 20:35:03'),
(2, 'ews', 'sdf', '2021-08-13', 3, 1, 1, NULL, '2021-08-13 20:44:47', '2021-08-13 20:44:47'),
(3, 'test', 'tr', '2021-08-13', 3, 1, 1, NULL, '2021-08-13 20:47:29', '2021-08-13 20:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE `document_category` (
  `category_id` tinyint UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `document_category`
--

INSERT INTO `document_category` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Test', '2021-08-13 19:57:56', '2021-08-13 19:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `document_file`
--

CREATE TABLE `document_file` (
  `file_id` int UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `document_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `document_file`
--

INSERT INTO `document_file` (`file_id`, `filename`, `document_id`) VALUES
(1, 'dateWise_work_1628876103.pdf', 1),
(2, 'TImf_Feedback_Dadeline_april_1628876687.pdf', 2),
(3, 'Screenshot from 2021-07-25 09-42-54_1628876849.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` smallint UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `salt` varchar(33) NOT NULL,
  `passwd` varchar(65) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0',
  `branch_id` tinyint UNSIGNED DEFAULT NULL,
  `department_id` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `salt`, `passwd`, `active`, `last_login`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `branch_id`, `department_id`) VALUES
(1, 'admin', 'admin@admin.com', '060781849d8439e7020a66a2e39395fe', '701be961c60f88ea34f73dd2f00c54363644af3ba4aa609dab8d7a504102040e', 1, '2021-08-13 20:41:47', 'fUYg2aTBy3hPjC5xCd23X33vBQVwGOAeJGyDy2K338iHGpZMmA35FgUkQ1JV', '2021-08-13 22:54:22', '2021-08-13 20:41:47', 1, NULL, NULL),
(3, 'user', 'user@user.com', 'd878b579a4fbc274142d82a036a1e40b', '3add480837b06994b24ea667b0fbe61de72bcaa3f40a9db3847c17564cc4a500', 1, NULL, NULL, '2021-08-13 20:41:40', '2021-08-13 20:43:55', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD UNIQUE KEY `uq_branch_name` (`branch_name`);

--
-- Indexes for table `branch_department`
--
ALTER TABLE `branch_department`
  ADD PRIMARY KEY (`branch_id`,`department_id`),
  ADD KEY `fk_branch_department_department` (`department_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `uq_department_name` (`department_name`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`),
  ADD UNIQUE KEY `uq_title` (`title`),
  ADD KEY `creation_date` (`creation_date`),
  ADD KEY `fk_document_user` (`user_id`),
  ADD KEY `fk_document_category` (`category_id`),
  ADD KEY `fk_document_branch` (`branch_id`),
  ADD KEY `fk_document_department` (`department_id`);
ALTER TABLE `document` ADD FULLTEXT KEY `ftx_title_desc` (`title`,`description`);

--
-- Indexes for table `document_category`
--
ALTER TABLE `document_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `uq_category_name` (`category_name`);

--
-- Indexes for table `document_file`
--
ALTER TABLE `document_file`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `uq_filename` (`filename`),
  ADD KEY `fk_document_file` (`document_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uq_email` (`email`),
  ADD UNIQUE KEY `uq_username` (`username`),
  ADD KEY `ix_user_username` (`username`),
  ADD KEY `ix_user_passwd` (`passwd`),
  ADD KEY `ix_user_salt` (`salt`),
  ADD KEY `ix_user_active` (`active`),
  ADD KEY `fk_user_branch` (`branch_id`),
  ADD KEY `fk_user_department` (`department_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `document_category`
--
ALTER TABLE `document_category`
  MODIFY `category_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document_file`
--
ALTER TABLE `document_file`
  MODIFY `file_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_department`
--
ALTER TABLE `branch_department`
  ADD CONSTRAINT `fk_branch_department_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_branch_department_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_document_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_document_category` FOREIGN KEY (`category_id`) REFERENCES `document_category` (`category_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_document_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_document_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `document_file`
--
ALTER TABLE `document_file`
  ADD CONSTRAINT `fk_document_file` FOREIGN KEY (`document_id`) REFERENCES `document` (`document_id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_user_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
