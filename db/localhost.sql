-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2023 at 01:48 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4blog`
--
CREATE DATABASE IF NOT EXISTS `ci4blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ci4blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` varchar(16) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_body` longtext NOT NULL,
  `blog_created_time` datetime NOT NULL,
  `user_rand_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_body`, `blog_created_time`, `user_rand_id`) VALUES
('oSdM19FC2XfEKp6D', 'CodeIgniter4 Application Structure', '&lt;h2&gt;Default Directories&lt;/h2&gt;&lt;p&gt;A fresh install has six directories: &lt;strong&gt;/app, /system, /public, /writable, /tests &lt;/strong&gt;and possibly&lt;strong&gt; /docs&lt;/strong&gt;. Each of these directories has a very specific part to play.&lt;/p&gt;&lt;p&gt;The app directory is where all of your application code lives. This comes with a default directory structure that works well for many applications. The following folders make up the basic contents&lt;/p&gt;&lt;blockquote&gt;&lt;p&gt;/app&lt;/p&gt;&lt;p&gt;-------- /Config &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Stores the configuration files\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Controllers &amp;nbsp; &amp;nbsp;Controllers determine the program flow\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Database &amp;nbsp; &amp;nbsp; &amp;nbsp; Stores the database migrations and seeds files\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Filters &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Stores filter classes that can run before and after controller\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Helpers &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Helpers store collections of standalone functions\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Language &amp;nbsp; &amp;nbsp; &amp;nbsp; Multiple language support reads the language strings from here\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Libraries &amp;nbsp; &amp;nbsp; &amp;nbsp;Useful classes that don&#039;t fit in another category\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Models &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Models work with the database to represent the business entities.\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /ThirdParty &amp;nbsp; &amp;nbsp; ThirdParty libraries that can be used in application\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;-------- /Views &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Views make up the HTML that is displayed to the client.&lt;/p&gt;&lt;/blockquote&gt;', '2020-03-20 13:25:25', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` char(255) NOT NULL,
  `cat_created_by` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_created_by`) VALUES
(1, 'coding', 'NPyJmFBl3iseS2ItxKqX98O7UZRYHcLv'),
(2, 'technology', 'NPyJmFBl3iseS2ItxKqX98O7UZRYHcLv'),
(3, 'information security', 'NPyJmFBl3iseS2ItxKqX98O7UZRYHcLv'),
(4, 'Testing', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(5, 'Adventure', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(6, 'Keyboard', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(7, 'keyboards', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(8, 'Hacking', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(9, 'Hackers', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(10, 'Validation', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(11, 'jquery', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(12, 'Javascript', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(13, 'PHP', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(14, 'Stackoverflow', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk'),
(15, 'Demo', '5m6dvDbhlQSRMGUKoCIZza70fj2eWwAk');

-- --------------------------------------------------------

--
-- Table structure for table `cat_blog`
--

CREATE TABLE `cat_blog` (
  `cat_blog_id` int(16) NOT NULL,
  `blog_id` varchar(16) NOT NULL,
  `cat_name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cat_blog`
--

INSERT INTO `cat_blog` (`cat_blog_id`, `blog_id`, `cat_name`) VALUES
(5, 'oSdM19FC2XfEKp6D', 'Coding'),
(6, 'oSdM19FC2XfEKp6D', 'Javascript'),
(7, 'oSdM19FC2XfEKp6D', 'PHP'),
(8, 'oSdM19FC2XfEKp6D', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_text` longtext NOT NULL,
  `user_rand_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `fk_blog_user_rand_idx` (`user_rand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_cat_user_user-rand-id_idx` (`cat_created_by`),
  ADD KEY `idx_category_cat_name` (`cat_name`);

--
-- Indexes for table `cat_blog`
--
ALTER TABLE `cat_blog`
  ADD PRIMARY KEY (`cat_blog_id`),
  ADD KEY `blog_blog_id_fk_idx` (`blog_id`),
  ADD KEY `cat_blog_category_fk_idx` (`cat_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_comments_users_idx` (`user_rand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cat_blog`
--
ALTER TABLE `cat_blog`
  MODIFY `cat_blog_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_user_rand` FOREIGN KEY (`user_rand_id`) REFERENCES `users` (`user_rand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_cat_user_user-rand-id` FOREIGN KEY (`cat_created_by`) REFERENCES `users` (`user_rand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cat_blog`
--
ALTER TABLE `cat_blog`
  ADD CONSTRAINT `cat_blog_category_fk` FOREIGN KEY (`cat_name`) REFERENCES `category` (`cat_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_rand_id`) REFERENCES `users` (`user_rand_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `database`;
--
-- Database: `db_bookingrs`
--
CREATE DATABASE IF NOT EXISTS `db_bookingrs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_bookingrs`;

-- --------------------------------------------------------

--
-- Table structure for table `daily_slots`
--

CREATE TABLE `daily_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quota` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_slots`
--

INSERT INTO `daily_slots` (`id`, `name`, `quota`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pagi: 08:00 - 11:00', 30, 1, '2023-08-10 20:55:43', '2023-08-10 20:55:43'),
(2, 'Siang: 13:00 - 15:00', 30, 1, '2023-08-10 20:55:43', '2023-08-10 20:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_15_143033_create_daily_slots_table', 1),
(7, '2022_09_15_144411_create_orders_table', 1),
(8, '2022_09_15_153942_add_field_day_to_orders_table', 1),
(9, '2022_09_22_084228_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `daily_slot_id` bigint(20) UNSIGNED NOT NULL,
  `day` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(5) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` char(1) NOT NULL COMMENT '0: pending, 1:active, 2:complete, 3:cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$tRi0xN/HD8dAGPKApqMnY.cTubmfw.HrcUs9/QYDLjSq7dzO/WUxe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 20:55:43', '2023-08-10 20:55:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_slots`
--
ALTER TABLE `daily_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `daily_slots`
--
ALTER TABLE `daily_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_node`
--
CREATE DATABASE IF NOT EXISTS `db_node` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_node`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
