-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 09:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'sports', 1, '2020-06-22 00:15:21', '2020-06-22 00:15:37'),
(4, 'mobile', 1, '2020-06-22 00:15:33', '2020-06-22 00:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'gulam ', 'In a move to address mounting concerns about security on Android, Google and Samsung are now issuing.\r\n', 6, 0, '2020-06-22 18:14:12', NULL),
(2, 'king', 'In a move to address mounting concerns about security on Android, Google and Samsung are now issuing.\r\n', 6, 0, '2020-06-21 18:14:12', NULL),
(3, 'admin', '<p>Hi this is nice post</p>', 1, 0, '2020-06-22 13:23:26', '2020-06-22 13:23:26'),
(4, 'admin', '<p>This is nice</p>', 1, 0, '2020-06-22 13:25:21', '2020-06-22 13:25:21'),
(5, 'admin', '<p>this is nice</p>', 6, 1, '2020-06-22 13:26:56', '2020-06-22 13:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2020_06_20_072353_entrust_setup_tables', 2),
(6, '2020_06_21_195903_create_categories_table', 3),
(7, '2020_06_22_060920_create_posts_table', 4),
(8, '2020_06_22_174656_create_comments_table', 5),
(9, '2020_06_22_191837_create_settings_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Permission Add', 'Permission Add', 'Permission Add', '2020-06-21 13:32:00', '2020-06-21 13:32:00'),
(7, 'Permission List', 'Permission List', 'Permission List', '2020-06-21 13:32:20', '2020-06-21 13:32:20'),
(8, 'Permission Update', 'Permission Update', 'Permission Update', '2020-06-21 13:32:33', '2020-06-21 13:32:33'),
(9, 'Permission Delete', 'Permission Delete', 'Permission Delete', '2020-06-21 13:32:44', '2020-06-21 13:32:44'),
(10, 'Role Add', 'Role Add', 'Role Add', '2020-06-21 13:35:16', '2020-06-21 13:35:16'),
(11, 'Role List', 'Role List', 'Role List', '2020-06-21 13:35:27', '2020-06-21 13:35:27'),
(12, 'Role Update', 'Role Update', 'Role Update', '2020-06-21 13:35:39', '2020-06-21 13:35:39'),
(13, 'Role Delete', 'Role Delete', 'Role Delete', '2020-06-21 13:35:50', '2020-06-21 13:35:50'),
(14, 'Category Add', 'Category Add', 'Category Add', '2020-06-21 13:36:00', '2020-06-21 13:36:00'),
(15, 'Category List', 'Category List', 'Category List', '2020-06-21 13:36:11', '2020-06-21 13:36:11'),
(16, 'Category Update', 'Category Update', 'Category Update', '2020-06-21 13:36:21', '2020-06-21 13:36:21'),
(17, 'Category Delete', 'Category Delete', 'Category Delete', '2020-06-21 13:36:33', '2020-06-21 13:36:33'),
(18, 'Post Add', 'Post Add', 'Post Add', '2020-06-21 13:36:51', '2020-06-21 13:36:51'),
(19, 'Post List', 'Post List', 'Post List', '2020-06-21 13:37:02', '2020-06-21 13:37:02'),
(20, 'Post Update', 'Post Update', 'Post Update', '2020-06-21 13:37:12', '2020-06-21 13:37:12'),
(21, 'Post Delete', 'Post Delete', 'Post Delete', '2020-06-21 13:37:24', '2020-06-21 13:37:24'),
(22, 'Comment View', 'Comment View', 'Comment View', '2020-06-21 13:37:34', '2020-06-21 13:37:34'),
(23, 'Comment Reply', 'Comment Reply', 'Comment Reply', '2020-06-21 13:37:44', '2020-06-21 13:37:44'),
(24, 'Comment Approval', 'Comment Approval', 'Comment Approval', '2020-06-21 13:37:56', '2020-06-21 13:37:56'),
(25, 'System Settings', 'System Settings', 'System Settings', '2020-06-21 13:38:17', '2020-06-21 13:38:17'),
(26, 'Author List', 'Author List', 'Author List', '2020-06-21 13:38:29', '2020-06-21 13:38:29'),
(27, 'Author Add', 'Author Add', 'Author Add', '2020-06-21 13:38:39', '2020-06-21 13:38:39'),
(28, 'Author Update', 'Author Update', 'Author Update', '2020-06-21 13:38:49', '2020-06-21 13:38:49'),
(29, 'Author Delete', 'Author Delete', 'Author Delete', '2020-06-21 13:38:59', '2020-06-21 13:38:59'),
(30, 'All', 'All', 'All', '2020-06-21 13:43:28', '2020-06-21 13:43:28'),
(31, 'Permission', 'Permission', 'Permission', '2020-06-21 14:17:29', '2020-06-21 14:17:29'),
(32, 'Category Category', 'Category Category', 'Category Category', '2020-06-21 23:25:21', '2020-06-21 23:25:21'),
(33, 'Category Store', 'Category Store', 'Category Store', '2020-06-21 23:32:26', '2020-06-21 23:32:26'),
(34, 'Category Edit', 'Category Edit', 'Category Edit', '2020-06-22 00:03:18', '2020-06-22 00:03:18'),
(35, 'Post Create', 'Post Create', 'Post Create', '2020-06-22 01:08:00', '2020-06-22 01:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(18, 7),
(18, 8),
(19, 7),
(19, 8),
(20, 7),
(20, 8),
(21, 8),
(22, 7),
(22, 8),
(23, 7),
(23, 8),
(24, 8),
(30, 6),
(31, 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `hot_news` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Chevrolet car-saving technology delivers', 'Chevrolet car-saving technology delivers', '<h1><a href=\"http://localhost/ecommrece-Udemy/newPortal/single.html\" target=\"_self\">Chevrolet car-saving technology delivers</a></h1>', 'chevrolet-car-saving-technology-delivers', 3, 1, 'post_main_6.jpg', 'post_thumb_6.jpg', 'post_list_6.jpg', 0, 0, 1, '2020-06-22 10:30:39', '2020-06-22 10:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Master Admin', 'Master Admin', 'Master Admin', '2020-06-21 13:43:50', '2020-06-21 13:43:50'),
(7, 'Blogger', 'Blogger', 'Blogger', '2020-06-21 13:44:42', '2020-06-21 13:44:42'),
(8, 'Editor', 'Editor', 'Editor', '2020-06-21 13:45:37', '2020-06-21 13:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 6),
(10, 7),
(11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'My value', NULL, NULL),
(2, 'my_name', 'My pepcon', '2020-06-22 19:20:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2a$04$HrSijmOXbvsVbZz7Ftrw/ugkm3TYLk7qt4TO.QvZdN05H2SqxBycS', 1, NULL, '2020-06-20 05:49:38', '2020-06-20 05:49:38'),
(10, 'gulam', 'gulam@gmail.com', NULL, '$2y$10$YOFRrgoY4FGYLp/DbrHHnuxIIdjFyCZWzf/asCe6kpBxkkvc.c3HK', 2, NULL, '2020-06-21 13:46:37', '2020-06-21 13:46:37'),
(11, 'khan', 'khan@gmail.com', NULL, '$2y$10$q8Ae4ka6ZQ00yZUWt/CYRuENzUXZinXEOKH3rzGQT/cpWJuH.GjIW', 2, NULL, '2020-06-21 13:47:31', '2020-06-21 13:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
