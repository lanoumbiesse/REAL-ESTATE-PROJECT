-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 04:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `listkhoj`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `background_image`, `description`, `video_link`, `created_at`, `updated_at`) VALUES
(4, 'public/uploads/website-images/about-background-2021-09-03-10-35-20-4282.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<br></p>', 'https://www.youtube.com/watch?v=SMKPKGW083c', '2021-07-12 01:11:22', '2021-09-03 16:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_quantity` int(11) NOT NULL DEFAULT 0,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `header`, `icon`, `description`, `section_name`, `content_quantity`, `show_homepage`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'fab fa-accessible-icon', 'After reading the content and examples on the Slogan Creator website, I had a very good feeling about the level and examples on the Slogan Creator website', 'About Section', 0, 1, NULL, '2021-09-03 16:11:26'),
(2, 'Our Features', 'fas fa-address-book', 'After reading the content and examples on the Slogan Creator website, I had a very good feeling about the level  examples on the Slogan Creator website', 'Feature Section', 6, 1, NULL, '2021-09-03 16:12:00'),
(3, 'Not sure where to go next? We\'re here to inspire you', '', 'Watch intro video about theme', 'Overview Section', 0, 1, NULL, '2021-08-24 12:21:50'),
(4, NULL, NULL, NULL, 'Partner Section', 10, 1, NULL, '2021-08-24 12:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `admin_type` int(1) NOT NULL DEFAULT 0,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `phone`, `password`, `image`, `forget_password_token`, `status`, `author_id`, `admin_type`, `facebook`, `twitter`, `whatsapp`, `instagram`, `linkedin`, `remember_token`, `created_at`, `updated_at`, `pinterest`, `youtube`, `address`, `about`, `banner_image`, `website`) VALUES
(4, 'Earl Newell', 'earl-newell', 'admin@gmail.com', '111-233-5443', '$2y$10$RBxBrErq8NaHE2iKczACJO47LZPaWDa.PE3SqaTaZ4uNuukKU4UqG', 'public/uploads/website-images/john-doe-2021-08-31-09-53-49-9711.jpg', 'xQxXMM8IlL8na05UOkpEbbmdKq3GDmN5KR2fPVz8Ab6kCoebp7STfTfu42m7F7k1CYZhS7mxzK0RbbZ9rnpiGRGjzfrsL7sYbZEG', 1, 0, 1, '#', '#', '#', '#', '#', '82BvIH4MRG7q28e5yP76tQkJVgjhQov8H6F3spP31LJVknKIAUJtuAV7SUdA', '2021-06-25 23:14:28', '2021-08-31 03:53:58', '#', '#', 'Franklin County, Florida', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, est dolorum!', 'public/uploads/website-images/listing-banner-2021-08-31-09-53-53-4646.jpg', 'https://phppasswordhash.com/'),
(9, 'John Peter', 'John-Peter', 'john@gmail.com', '', '$2y$10$RBxBrErq8NaHE2iKczACJO47LZPaWDa.PE3SqaTaZ4uNuukKU4UqG', '', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-13 05:59:06', '2021-08-05 10:21:16', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Monayem islam', 'Monayem-islam', 'monayem@gmail.com', '', '$2y$10$E5vBFrF1.qjEyrc7pqlfsOXQ9Rac38nNRnmIE1NJ1fLrAK1Hb2pgm', 'public/uploads/custom-images/monayem-islam-2021-08-31-03-44-09-8420.jpg', NULL, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-31 03:42:33', '2021-08-31 09:44:17', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'jubair ahmed', 'jubair-ahmed', 'jubair@gmail.com', '', '$2y$10$jXl7Zx2ChnFEH9OcLUex6eCgkB82j1mp1/Dvo6XPOR7KYJv.98t6G', '', NULL, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-31 03:43:01', '2021-08-05 14:16:27', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'arefin islam', 'arefin-islam', 'arefin@gmail.com', '', '$2y$10$dwAmGMSnJZH9RqXYqdXameMiHWnL5sIll9iA9XVjJj2VpUtRwzX5K', '', NULL, 1, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-31 03:48:30', '2021-07-31 04:20:12', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'new admin', 'new-admin', 'newadmin@gmail.com', '', '$2y$10$5tI5sibUD5RRCFKwhUFYGuR9EKRyXM.wt2w49fAQ.8qR9wHg2F7HG', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 07:16:56', '2021-08-19 07:16:56', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'new staff', 'new-staff', 'newstaff@gmail.com', '', '$2y$10$P11nFNxOfx77Yxh2IeUFAOb038lb5CQpu9pb2hMM0AKS5CUuQy4jm', NULL, NULL, 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-19 07:17:36', '2021-08-19 07:17:36', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aminities`
--

CREATE TABLE `aminities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aminity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aminities`
--

INSERT INTO `aminities` (`id`, `aminity`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Good for kids', 'good-for-kids', 'im-icon-Aerobics-3', 1, '2021-07-29 14:04:35', '2021-07-29 14:04:35'),
(2, 'Elevator in building', 'elevator-in-building', 'im-icon-Alarm-Clock', 1, '2021-07-29 14:05:00', '2021-07-29 14:05:00'),
(3, 'Bike Parking', 'bike-parking', 'im-icon-Alien', 1, '2021-07-29 14:05:21', '2021-07-29 14:07:40'),
(4, 'Alcohol', 'alcohol', 'im-icon-Aligator', 1, '2021-07-29 14:06:36', '2021-07-29 14:06:36'),
(5, 'Reservations', 'reservations', 'im-icon-Align-JustifyAll', 1, '2021-07-29 14:06:50', '2021-07-29 14:06:50'),
(6, 'Free coffee and tea', 'free-coffee-and-tea', 'fab fa-algolia', 1, '2021-07-29 14:07:07', '2021-08-29 08:53:48'),
(7, 'Accepts Credit Cards', 'accepts-credit-cards', 'im-icon-Angel-Smiley', 1, '2021-07-29 14:07:24', '2021-07-29 14:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_type` int(11) NOT NULL DEFAULT 1,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `image_type`, `location`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Listing', 'public/uploads/website-images/banner-2021-08-30-10-29-46-5405.jpg', NULL, '2021-08-30 16:29:51'),
(2, 1, 'About Us', 'public/uploads/website-images/banner-2021-08-31-09-48-15-4915.jpg', NULL, '2021-08-31 03:48:19'),
(3, 1, 'Pricing Plan', 'public/uploads/website-images/banner-2021-08-31-09-48-42-4075.jpg', NULL, '2021-08-31 03:48:47'),
(4, 1, 'Listing Category', 'public/uploads/website-images/banner-2021-08-31-09-49-04-5316.jpg', NULL, '2021-08-31 03:49:12'),
(5, 1, 'Blog', 'public/uploads/website-images/banner-2021-08-31-09-49-24-9055.jpg', NULL, '2021-08-31 03:49:27'),
(6, 1, 'Contact Us', 'public/uploads/website-images/banner-2021-08-31-09-49-39-2671.jpg', NULL, '2021-08-31 03:49:41'),
(7, 2, 'Admin Login', 'public/uploads/website-images/login-2021-09-03-09-13-38-4073.jpg', NULL, '2021-09-03 15:13:42'),
(8, 2, 'Staff Login', 'public/uploads/website-images/login-2021-09-03-09-13-51-5125.jpg', NULL, '2021-09-03 15:13:54'),
(9, 1, 'Terms and Condition', 'public/uploads/website-images/banner-2021-08-31-09-49-51-8624.jpg', NULL, '2021-08-31 03:49:53'),
(10, 1, 'Privacy Policy', 'public/uploads/website-images/banner-2021-08-31-09-50-06-3755.jpg', NULL, '2021-08-31 03:50:10'),
(11, 1, 'Reset Password', 'public/uploads/website-images/banner-2021-08-31-09-50-26-2459.jpg', NULL, '2021-08-31 03:50:31'),
(12, 1, 'Payment Page', 'public/uploads/website-images/banner-2021-08-31-09-50-42-5613.jpg', NULL, '2021-08-31 03:50:47'),
(13, 3, 'Overview Background', 'public/uploads/website-images/banner-2021-08-31-09-52-38-5164.jpg', NULL, '2021-08-31 03:52:42'),
(15, 4, 'Default User Profile Image', 'public/uploads/website-images/login-2021-08-31-09-52-17-9182.jpg', NULL, '2021-08-31 03:52:25'),
(16, 3, 'About Us Background', 'public/uploads/website-images/banner-2021-08-31-09-52-52-5747.jpg', NULL, '2021-08-31 03:52:56'),
(17, 1, 'custom page', 'public/uploads/website-images/banner-2021-08-31-09-51-00-5708.jpg', NULL, '2021-08-31 03:51:05'),
(18, 1, 'User Profile', 'public/uploads/website-images/banner-2021-08-31-09-51-21-5991.jpg', NULL, '2021-08-31 03:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `admin_id`, `view`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `thumbnail_image`, `feature_image`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 22, 'The Best Delicious Coffee Shop In Bangkok China.', 'the-best-delicious-coffee-shop-in-bangkok-china', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'The Best Delicious Coffee Shop In Bangkok China.', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque n', 'public/uploads/custom-images/blog-thumbnail-2021-09-03-11-00-58-9144.jpg', 'public/uploads/custom-images/blog-feature-2021-09-03-11-01-03-3854.jpg', 1, 1, '2021-07-29 11:43:52', '2021-09-06 13:46:14'),
(2, 4, 4, 29, 'Should Startups Care About Profitability?', 'should-startups-care-about-profitability', '<div>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</div><div><br></div><div>Tempor voluptua cum id, dolorum nostrum vix te, ex eam oratio pertinacia. Per et constituam efficiantur, placerat recteque usu cu, usu te graeci regione scribentur. An ridens eleifend erroribus sit. Nibh errem appellantur quo ut. Ut pri invidunt nominati appellantur. Ex nam unum probo.</div><div>Cum alii modus intellegam et. Sit ad aliquando philosophia. Expetenda definiebas ex has. Maiorum mediocritatem vix te.</div><div><br></div><div>Postea equidem vituperata eu quo, tale quas vidisse sea cu. Ne vis omnium scripta omittam. Labitur iudicabit has ei, ius no tantas putent aperiri. Volumus facilisis mea eu, latine appellantur mel et, harum veritus signiferumque nam ei.</div>', 'Should Startups Care About Profitability?', 'choro pertinax indoctum ne, ad partiendo persecuti forensibus est.', 'public/uploads/custom-images/blog-thumbnail-2021-09-03-10-58-05-4819.jpg', 'public/uploads/custom-images/blog-feature-2021-09-03-10-58-06-3132.jpg', 1, 1, '2021-07-29 11:45:02', '2021-09-06 13:45:41'),
(3, 1, 4, 39, 'One Thing Separates Creators From Consumers', 'one-thing-separates-creators-from-consumers', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'One Thing Separates Creators From Consumers', 'ullamco laboris loakite mokae.', 'public/uploads/custom-images/blog-thumbnail-2021-08-31-10-02-47-7651.jpg', 'public/uploads/custom-images/blog-feature-2021-08-31-10-02-50-9552.jpg', 1, 1, '2021-07-29 11:46:07', '2021-09-06 13:46:10'),
(5, 2, 4, 3, 'Lorem Ipsum is simply dummy text of the printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '<div>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</div><div><br></div><div>Tempor voluptua cum id, dolorum nostrum vix te, ex eam oratio pertinacia. Per et constituam efficiantur, placerat recteque usu cu, usu te graeci regione scribentur. An ridens eleifend erroribus sit. Nibh errem appellantur quo ut. Ut pri invidunt nominati appellantur. Ex nam unum probo.</div><div><br></div><div><div>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</div><div><br></div><div>Tempor voluptua cum id, dolorum nostrum vix te, ex eam oratio pertinacia. Per et constituam efficiantur, placerat recteque usu cu, usu te graeci regione scribentur. An ridens eleifend erroribus sit. Nibh errem appellantur quo ut. Ut pri invidunt nominati appellantur. Ex nam unum probo.</div></div>', 'Lorem Ipsum is simply dummy text of the printing', 'blog seo description', 'public/uploads/custom-images/blog-thumbnail-2021-08-31-10-03-40-7385.jpg', 'public/uploads/custom-images/blog-feature-2021-08-31-10-03-43-6679.jpg', 1, 0, '2021-08-25 14:08:25', '2021-09-06 13:46:15'),
(6, 2, 4, 3, 'What People Says About Listing Properties', 'what-people-says-about-listing-properties', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p>', 'AMERICA’S FAVORITE CHEAP PLACES TO EAT', 'AMERICA’S FAVORITE CHEAP PLACES TO EAT', 'public/uploads/custom-images/blog-thumbnail-2021-09-02-03-47-48-7244.jpg', 'public/uploads/custom-images/blog-feature-2021-09-02-03-47-51-9498.jpg', 1, 0, '2021-09-02 09:47:54', '2021-09-06 13:46:16'),
(7, 5, 4, 1, 'List Of Benifits And Impressive Listeo Services', 'list-of-benifits-and-impressive-listeo-services', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'PARIS TRAVEL TIPS FOR FIRST-TIMERS', 'PARIS TRAVEL TIPS FOR FIRST-TIMERS', 'public/uploads/custom-images/blog-thumbnail-2021-09-02-03-48-45-2063.jpg', 'public/uploads/custom-images/blog-feature-2021-09-02-03-48-51-8169.jpg', 1, 0, '2021-09-02 09:48:55', '2021-09-06 13:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fitness', 'fitness', 1, '2021-07-29 11:41:39', '2021-08-05 10:28:51'),
(2, 'Lifestyle', 'lifestyle', 1, '2021-07-29 11:41:47', '2021-07-29 11:41:47'),
(4, 'Event', 'event', 1, '2021-07-29 11:42:05', '2021-07-29 11:42:05'),
(5, 'Bar & Cafe', 'bar-cafe', 1, '2021-07-29 11:42:16', '2021-07-29 11:42:16'),
(6, 'Food & Drink', 'food-drink', 1, '2021-07-29 11:42:25', '2021-07-29 11:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `phone`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'ibrahim khalil', 'khalil@gmail.com', '01781074234', 'this is first comment', 1, '2021-07-29 11:52:57', '2021-08-05 10:32:36'),
(2, 3, 'monayem islam', 'aboutsoftmart@gmail.com', '014785698541', 'test', 1, '2021-07-31 14:50:36', '2021-08-02 06:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `condition_privacies`
--

CREATE TABLE `condition_privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condition_privacies`
--

INSERT INTO `condition_privacies` (`id`, `terms_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, et veniam vidisse feugiat pri, sit legendos repudiare concludaturque in. Exerci dolorem at vel, ut nam nihil omnesque, eam oratio tractatos consetetur id. Id vocent utroque verterem per, mea illud aliquam prodesset no. Mea ut commodo mentitum verterem. An liber moderatius eos. Eum vidit tamquam intellegebat et, quo elit principes at.</p><p><span style=\"font-size: 1rem;\">Clita verear cotidieque has an, pericula expetenda hendrerit ei vis, te utinam ubique mei. In alterum volutpat vel, iusto reprehendunt mel in. Pro ea assum contentiones, nam in ponderum adversarium. Eu tollit propriae eum, cum ea legere mediocrem incorrupte. Detracto pertinax neglegentur ex est, mea offendit referrentur cu. Blandit convenire eam ea, summo detraxit constituam ius ex. No dolor contentiones voluptatibus eum.</span><br></p><p><span style=\"font-size: 1rem;\">Quo stet sale nostrud eu, at vim vide dictas. Vis in hendrerit expetendis, quod constituto ne pri. Justo disputando vim ex. Usu in facete ancillae, quot ubique nec ad, at movet sonet rationibus vel. Est ad soleat quaeque, ei mundi delicata eum.</span><br></p><p><span style=\"font-size: 1rem;\">At volutpat abhorreant eum, vidit necessitatibus qui no. Ut mei vitae tamquam prodesset, eu sumo recusabo est, eos euismod conceptam te. Debet scriptorem pro in, iudicabit eloquentiam mei ad. Quo an aliquip sadipscing, legimus incorrupte ne cum, ne porro ignota accumsan pro. Mei error voluptatum eu, et sea summo vulputate consetetur.</span><br></p>', '<p>Lorem ipsum dolor sit amet, et veniam vidisse feugiat pri, sit legendos repudiare concludaturque in. Exerci dolorem at vel, ut nam nihil omnesque, eam oratio tractatos consetetur id. Id vocent utroque verterem per, mea illud aliquam prodesset no. Mea ut commodo mentitum verterem. An liber moderatius eos. Eum vidit tamquam intellegebat et, quo elit principes at.</p><p><span style=\"font-size: 1rem;\">Clita verear cotidieque has an, pericula expetenda hendrerit ei vis, te utinam ubique mei. In alterum volutpat vel, iusto reprehendunt mel in. Pro ea assum contentiones, nam in ponderum adversarium. Eu tollit propriae eum, cum ea legere mediocrem incorrupte. Detracto pertinax neglegentur ex est, mea offendit referrentur cu. Blandit convenire eam ea, summo detraxit constituam ius ex. No dolor contentiones voluptatibus eum.</span><br></p><p><span style=\"font-size: 1rem;\">Quo stet sale nostrud eu, at vim vide dictas. Vis in hendrerit expetendis, quod constituto ne pri. Justo disputando vim ex. Usu in facete ancillae, quot ubique nec ad, at movet sonet rationibus vel. Est ad soleat quaeque, ei mundi delicata eum.</span><br></p><p><span style=\"font-size: 1rem;\">At volutpat abhorreant eum, vidit necessitatibus qui no. Ut mei vitae tamquam prodesset, eu sumo recusabo est, eos euismod conceptam te. Debet scriptorem pro in, iudicabit eloquentiam mei ad. Quo an aliquip sadipscing, legimus incorrupte ne cum, ne porro ignota accumsan pro. Mei error voluptatum eu, et sea summo vulputate consetetur.</span><br></p>', '2021-07-30 06:13:24', '2021-08-28 15:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `header`, `phones`, `emails`, `address`, `about`, `map_embed_code`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', '(347) 430-9510\r\n(587) 860-2590', 'support@websolutionus.com\r\ntest@gmail.com', '95 South Park Avenue,  New York, USA', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3198216.8931082254!2d-100.5640844045411!3d38.48167245382935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87a31771717c016b%3A0x68c2b4a94b3e095f!2sKansas%2C%20USA!5e0!3m2!1sen!2sbd!4v1630340068888!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Copyright 2021, Websolutionus. All Rights Reserved.', '2021-06-11 03:01:41', '2021-08-30 16:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_notification` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `show_notification`, `created_at`, `updated_at`) VALUES
(1, 'ibrahim khalil', 'khalil.cmt.bpi@gmail.com', '01781074234', 'test msg', 'am timeam fastidii eu. Commodo nonumes vim eu. Quo in', 0, '2021-07-29 11:36:47', '2021-07-29 11:36:47'),
(2, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 05:56:45', '2021-08-25 05:56:45'),
(3, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 05:58:28', '2021-08-25 05:58:28'),
(4, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 06:00:19', '2021-08-25 06:00:19'),
(5, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 06:03:30', '2021-08-25 06:03:30'),
(6, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 06:03:56', '2021-08-25 06:03:56'),
(7, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 06:15:13', '2021-08-25 06:15:13'),
(8, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 'eam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibu', 0, '2021-08-25 06:16:37', '2021-08-25 06:16:37'),
(9, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'test messag', 'test messag', 0, '2021-08-25 06:16:58', '2021-08-25 06:16:58'),
(10, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'test messag', 'test messag', 0, '2021-08-25 06:18:02', '2021-08-25 06:18:02'),
(11, 'ibrahim khalil', 'aboutsoftmart@gmail.com', NULL, 'dffa', 'test', 0, '2021-08-25 06:19:41', '2021-08-25 06:19:41'),
(12, 'ibrahim khalil', 'aboutsoftmart@gmail.com', NULL, 'dffa', 'test', 0, '2021-08-25 06:20:08', '2021-08-25 06:20:08'),
(13, 'test test', 'test33@gmail.com', NULL, 'test', 'tst', 0, '2021-08-25 06:20:52', '2021-08-25 06:20:52'),
(14, 'test test', 'test33@gmail.com', NULL, 'test', 'tst', 0, '2021-08-25 06:21:39', '2021-08-25 06:21:39'),
(15, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'test messag', 'test', 0, '2021-08-25 06:22:29', '2021-08-25 06:22:29'),
(16, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'test messag', 'test', 0, '2021-08-25 06:23:45', '2021-08-25 06:23:45'),
(17, 'ibrahim khalil', 'tes2t@gmail.com', '01781074234', 'test messag', 'test messag', 0, '2021-08-25 06:24:08', '2021-08-25 06:24:08'),
(18, 'test test', 'tesdddt@gmail.com', '01796726183', 'বিষয়', 'test', 0, '2021-08-25 06:26:02', '2021-08-25 06:26:02'),
(19, 'bul bul', 'baijid@gmail.com', NULL, 'বিষয় ফিল্ডটি পূরণ করতে হবে', 'বিষয় ফিল্ডটি পূরণ করতে হবে', 0, '2021-08-25 07:09:14', '2021-08-25 07:09:14'),
(20, 'C programming first part', 'teacher@gmail.com', NULL, 'test messag', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus', 0, '2021-08-25 07:13:44', '2021-08-25 07:13:44'),
(21, 'ibrahim khalil', 'aboutsoftmart@gmail.com', '01781074234', 'test messag', 'test', 0, '2021-08-25 07:24:44', '2021-08-25 07:24:44'),
(22, 'listkhoj', 'listkhoj@gmail.com', '0170000000', 'subject', 'test message', 0, '2021-08-27 05:35:20', '2021-08-27 05:35:20'),
(23, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test msg', 0, '2021-08-27 06:36:51', '2021-08-27 06:36:51'),
(24, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test msg', 0, '2021-08-27 06:39:11', '2021-08-27 06:39:11'),
(25, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test msg', 0, '2021-08-27 06:44:27', '2021-08-27 06:44:27'),
(26, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test', 0, '2021-08-27 06:45:10', '2021-08-27 06:45:10'),
(27, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test', 0, '2021-08-27 13:25:41', '2021-08-27 13:25:41'),
(28, 'listkhoj', 'listkhoj.contact@gmail.com', '0170000000', 'subject', 'test', 0, '2021-08-27 13:26:49', '2021-08-27 13:26:49'),
(29, 'listkhoj', 'khalil.cmt.bpi@gmail.com', '0170000000', 'subject', 'test', 0, '2021-08-27 15:00:31', '2021-08-27 15:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topbar_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `topbar_email`, `topbar_phone`, `footer_address`, `footer_email`, `footer_phone`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 'info23@website.com', '111-233-1273', 'San Francisco City Hall, San Francisco, CA', 'example@gmail.com', '111-233-1273', '#', '#', '#', '#', '#', '2021-06-11 03:18:20', '2021-08-30 15:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page 1', 'custom-page-1', '<p>Lorem ipsum dolor sit amet, et veniam vidisse feugiat pri, sit legendos repudiare concludaturque in. Exerci dolorem at vel, ut nam nihil omnesque, eam oratio tractatos consetetur id. Id vocent utroque verterem per, mea illud aliquam prodesset no. Mea ut commodo mentitum verterem. An liber moderatius eos. Eum vidit tamquam intellegebat et, quo elit principes at.</p><p><span style=\"font-size: 1rem;\">Clita verear cotidieque has an, pericula expetenda hendrerit ei vis, te utinam ubique mei. In alterum volutpat vel, iusto reprehendunt mel in. Pro ea assum contentiones, nam in ponderum adversarium. Eu tollit propriae eum, cum ea legere mediocrem incorrupte. Detracto pertinax neglegentur ex est, mea offendit referrentur cu. Blandit convenire eam ea, summo detraxit constituam ius ex. No dolor contentiones voluptatibus eum.</span><br></p><p><span style=\"font-size: 1rem;\">Quo stet sale nostrud eu, at vim vide dictas. Vis in hendrerit expetendis, quod constituto ne pri. Justo disputando vim ex. Usu in facete ancillae, quot ubique nec ad, at movet sonet rationibus vel. Est ad soleat quaeque, ei mundi delicata eum.</span><br></p><p><span style=\"font-size: 1rem;\">At volutpat abhorreant eum, vidit necessitatibus qui no. Ut mei vitae tamquam prodesset, eu sumo recusabo est, eos euismod conceptam te. Debet scriptorem pro in, iudicabit eloquentiam mei ad. Quo an aliquip sadipscing, legimus incorrupte ne cum, ne porro ignota accumsan pro. Mei error voluptatum eu, et sea summo vulputate consetetur.</span><br></p>', 'Custom Page 1', 'Custom Page 1', 1, '2021-08-06 13:43:15', '2021-08-28 15:50:13'),
(3, 'Custom Page 2', 'custom-page-2', '<p>Lorem ipsum dolor sit amet, et veniam vidisse feugiat pri, sit legendos repudiare concludaturque in. Exerci dolorem at vel, ut nam nihil omnesque, eam oratio tractatos consetetur id. Id vocent utroque verterem per, mea illud aliquam prodesset no. Mea ut commodo mentitum verterem. An liber moderatius eos. Eum vidit tamquam intellegebat et, quo elit principes at.</p><p><span style=\"font-size: 1rem;\">Clita verear cotidieque has an, pericula expetenda hendrerit ei vis, te utinam ubique mei. In alterum volutpat vel, iusto reprehendunt mel in. Pro ea assum contentiones, nam in ponderum adversarium. Eu tollit propriae eum, cum ea legere mediocrem incorrupte. Detracto pertinax neglegentur ex est, mea offendit referrentur cu. Blandit convenire eam ea, summo detraxit constituam ius ex. No dolor contentiones voluptatibus eum.</span><br></p><p><span style=\"font-size: 1rem;\">Quo stet sale nostrud eu, at vim vide dictas. Vis in hendrerit expetendis, quod constituto ne pri. Justo disputando vim ex. Usu in facete ancillae, quot ubique nec ad, at movet sonet rationibus vel. Est ad soleat quaeque, ei mundi delicata eum.</span><br></p><p><span style=\"font-size: 1rem;\">At volutpat abhorreant eum, vidit necessitatibus qui no. Ut mei vitae tamquam prodesset, eu sumo recusabo est, eos euismod conceptam te. Debet scriptorem pro in, iudicabit eloquentiam mei ad. Quo an aliquip sadipscing, legimus incorrupte ne cum, ne porro ignota accumsan pro. Mei error voluptatum eu, et sea summo vulputate consetetur.</span></p>', 'Custom Page 2', 'Custom Page 2', 1, '2021-08-06 14:03:42', '2021-08-28 15:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `custom_day`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 'Saturday', NULL, '2021-07-15 02:27:30'),
(2, 'Sunday', 'Sunday', NULL, '2021-08-05 02:53:07'),
(3, 'Monday', 'Monday', NULL, '2021-07-15 02:27:39'),
(4, 'Tuesday', 'Tuesday', NULL, '2021-07-15 02:27:45'),
(5, 'Wednesday', 'Wednesday', NULL, '2021-07-15 02:27:49'),
(6, 'Thursday', 'Thursday', NULL, '2021-07-15 02:27:53'),
(7, 'Friday', 'Friday', NULL, '2021-07-15 02:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `email_password`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'smtp.mailtrap.io', '587', 'maryleynda12@gmail.com', 'mary+pass@', '0894d78662a4a9', 'a6e55bcc865e98', 'tls', NULL, '2021-08-27 13:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', NULL, '2021-08-06 04:34:24'),
(2, 'contact email', 'Contact Email', '<p><span style=\"font-size: 1rem;\">Name: {{name}}</span></p><p><span style=\"font-size: 1rem;\">Email: {{email}}</span><br></p>\r\n<p>Phone: {{phone}}</p>\r\n<p>Subject: {{subject}}</p>\r\n<p>Message: {{message}}</p>', NULL, '2021-08-02 04:54:06'),
(4, 'subscribe notification', 'Subscribe Notification', '<h2>Hi there,</h2>\r\n<p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>', NULL, '2021-07-13 06:59:44'),
(5, 'user verification', 'User Verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\r\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, '2021-07-13 06:59:52'),
(6, 'order successfull', 'Order Successfull', '<h4>Dear <b>{{user_name}}</b>,</h4><p> Thanks for your new order. Your order id has been submited.</p><p><span style=\"font-size: 1rem;\">Payment Method :</span><b style=\"font-size: 1rem;\"> {{payment_method}}</b></p><p>Total amount:<b> {{amount}}</b></p><p><b>{{order_details}}</b></p><p><b><br></b></p>', NULL, '2021-08-05 03:11:25'),
(7, 'pre notification for Order Expire date', 'expired order', '<p>hi <b>{{user_name}}</b>,</p><p>your order will expire at <b>{{expire_date}}</b>. if you want to renew the order. click this lin<b>k&nbsp;</b></p><p><span style=\"font-size: 1rem;\"><b>{{order_details}}</b></span></p>', NULL, '2021-08-05 04:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Choose a Category', 'Proin dapibus nisl ornare diam varius mpus. Aenean a quam luctus, finibus tellus ut, convallis eros.', 'fas fa-birthday-cake', 1, '2021-07-30 06:15:31', '2021-09-06 07:15:16'),
(2, 'Find Location', 'Faucibus ante, in porttitor tellus blandit et. Phasellus tincidunt metus lectus sollicitudin feugiat pharetra.', 'fab fa-asymmetrik', 1, '2021-07-30 06:16:03', '2021-08-29 09:07:43'),
(3, 'Contact a Few Owners', 'Maecenas pulvinar, risus in facilisis dignissim, quam nisi hendrerit nulla, id vestibulum metus nullam.', 'fas fa-chart-bar', 1, '2021-07-30 06:16:24', '2021-08-29 09:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `content_quantity` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `icon`, `header`, `description`, `section_name`, `show_homepage`, `content_quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, 'We will help you to find all', 'All the top locations-from Restaurants, shopping, hotels and more', 'banner section', 1, NULL, NULL, '2021-08-24 13:15:35'),
(2, 'fab fa-app-store', 'Our Features', 'All the top locations-from Restaurants, shopping, hotels and moreAll the top locations-from Restaurants, shopping, hotels and more', 'feature section', 1, 3, NULL, '2021-08-31 03:59:34'),
(3, NULL, 'Not sure where to go next? We\'re here to inspire you', 'Watch intro video about theme', 'overview section', 1, NULL, NULL, '2021-08-24 13:27:12'),
(4, 'fas fa-anchor', 'Our Categories', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'category section', 1, 10, NULL, '2021-08-29 09:02:37'),
(5, 'fas fa-asterisk', 'Our Locations', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'location section', 1, 4, NULL, '2021-08-29 09:03:07'),
(6, 'fas fa-basketball-ball', 'Featured Listing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'listing section', 1, 6, NULL, '2021-08-29 09:03:32'),
(7, 'fas fa-chart-line', 'Our Packages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'packages section', 1, 5, NULL, '2021-08-29 09:03:47'),
(8, 'fas fa-align-center', 'Blogs', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'blog section', 1, 6, NULL, '2021-08-29 09:03:57'),
(9, '', 'Subscribe to Newsletter', 'Subscribe to get update and information. Don\'t worry, we won\'t send spam!', 'subscriber section', 1, NULL, NULL, '2021-08-24 14:18:01'),
(10, 'fas fa-american-sign-language-interpreting', 'Meet some happy customers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'testimonial section', 1, 6, NULL, '2021-09-06 07:13:49'),
(11, '', NULL, NULL, 'banner category section', 0, NULL, NULL, '2021-08-24 14:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` int(1) NOT NULL DEFAULT 1,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `listing_category_id` int(11) NOT NULL DEFAULT 0,
  `location_id` int(11) NOT NULL DEFAULT 0,
  `listing_package_id` int(11) NOT NULL DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tumblr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT 0,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `expired_date` date DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_type`, `admin_id`, `user_id`, `listing_category_id`, `location_id`, `listing_package_id`, `title`, `slug`, `latitude`, `longitude`, `google_map_embed_code`, `views`, `address`, `phone`, `email`, `website`, `description`, `sort_description`, `logo`, `thumbnail_image`, `banner_image`, `file`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `instagram`, `pinterest`, `tumblr`, `youtube`, `is_featured`, `verified`, `status`, `expired_date`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0, 3, 4, 0, 'The Ledbury Restourant', 'the-ledbury-restourant', '25.621889', '88.638489', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3454.015578380862!2d-90.0282646855569!3d30.036410925908363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8620a9bbb6bf6b1f%3A0xc1329f52b06c1f89!2sNew%20Orleans%20Lakefront%20Airport!5e0!3m2!1sen!2sbd!4v1630334183223!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 213, '3848 Swick Hill, New Orleans', '123-343-4444', 'aboutlistkhoj@gmail.com', 'https://phppasswordhash.com/', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'', 'public/uploads/custom-images/list-logo-2021-08-30-11-19-33-9863.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-19-47-8513.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-20-03-2847.jpg', 'listing-file-2021-08-30-08-37-10-7738.html', '#', '#', '#', '#', '#', '#', '#', '#', 0, 1, 1, NULL, 'The Ledbury Restourant', 'There are many variations of passages of Lorem Ipsu', '2021-07-29 14:16:03', '2021-09-06 13:47:07'),
(2, 1, 4, 0, 3, 4, 0, 'The Luxury Bar & Caffe', 'the-luxury-bar-caffe', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d380231.8104030621!2d-90.79971198083153!3d41.88079032920989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87e2ff4e35736583%3A0xb37e5be3a1d12376!2sClinton%20County%2C%20IA%2C%20USA!5e0!3m2!1sen!2sbd!4v1630334017889!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 52, 'Clinton County, Iowa', '123-343-4444', 'khalil@gmail.com', 'https://test.com/', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.<br></p>', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public/uploads/custom-images/list-logo-2021-08-30-11-23-49-1907.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-24-14-2155.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-24-35-6316.jpg', 'listing-file-2021-08-30-08-33-52-6061.html', '#', '#', '#', '#', '#', '#', NULL, '#', 1, 1, 1, NULL, 'The Luxury Bar & Caffe', 'It is a long established fact that a read', '2021-07-29 14:19:56', '2021-09-06 13:58:42'),
(3, 1, 4, 0, 4, 3, 0, 'Gym in Melbourne', 'gym-in-melbourne', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24397.553778277193!2d-88.98417363260567!3d40.14909448488305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880b454e1d4cdc11%3A0xd8ad38fd75138154!2sClinton%2C%20IL%2061727%2C%20USA!5e0!3m2!1sen!2sbd!4v1630333846762!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 21, 'Clinton, Illinois', '126-987-652', 'example1@gmail.com', 'https://phppassworddhash.com/', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public/uploads/custom-images/list-logo-2021-08-30-11-59-46-1551.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-12-00-08-7056.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-12-00-35-8957.jpg', 'listing-file-2021-08-30-08-31-27-6601.html', '#', '#', '#', '#', '#', '#', '#', '#', 1, 1, 1, NULL, 'Gym in Melbourne', 'Curabitur convallis fringilla diam', '2021-07-29 14:26:20', '2021-09-06 13:57:57'),
(4, 1, 4, 0, 4, 3, 0, 'Ristorante Del Arte', 'ristorante-del-arte', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12464.38740364579!2d-79.34204432409936!3d38.646653332547125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x884b12e8c31b57ff%3A0x1911760918c313db!2sFranklin%2C%20WV%2026807%2C%20USA!5e0!3m2!1sen!2sbd!4v1630333749247!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 21, 'Franklin, West Virginia', '(606) 862-0015', 'listkhoj12@gmail.com', 'https://phppasswordhash.com/', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry<span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry,</span></p><p>&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p><span style=\"font-size: 1rem;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry</span><span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p><p><br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'public/uploads/custom-images/list-logo-2021-08-30-11-59-17-1739.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-55-15-6298.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-55-38-8477.jpg', NULL, '#', '#', '#', '#', '#', '#', '#', '#', 1, 1, 1, NULL, 'Ristorante Del Arte', 'Nulla posuere sapien vitae lectus sus', '2021-07-29 14:29:40', '2021-09-06 13:57:04'),
(9, 1, 4, 0, 2, 2, 0, 'Traveller - Travel Agency', 'traveller-travel-agency', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11856.560442037648!2d-111.81202117220043!3d42.01872660891861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87545e9663332cd3%3A0x6c702e7a4fbfdd16!2sFranklin%2C%20ID%2083237%2C%20USA!5e0!3m2!1sen!2sbd!4v1630333348711!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 12, 'Franklin, Idaho', '(606) 862-0015', 'listkhoj.contact@gmail.com', 'https://phpddpasswordhash.com/', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix te.<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\'', 'public/uploads/custom-images/list-logo-2021-08-30-11-45-35-6458.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-51-11-8149.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-52-06-5869.jpg', 'listing-file-2021-08-30-08-23-11-3864.html', '#', '#', '#', '#', '#', '#', '#', '#', 0, 1, 1, NULL, 'Traveller - Travel Agency', 'listing seo descriptionContrary to popular belief, Lorem Ipsum is not simply raContrary to popular belief, Lorem Ipsum is not simply ra', '2021-08-03 11:30:22', '2021-09-06 13:47:00'),
(13, 1, 4, 0, 2, 2, 0, 'Cappleman Antiques', 'cappleman-antiques', '3396', '3396', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24327.620853559663!2d-78.90230563216744!3d40.343397339355995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89cb13d53dcb5a43%3A0x660faf90fa63e396!2sFranklin%2C%20PA%2C%20USA!5e0!3m2!1sen!2sbd!4v1630332910895!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 17, 'Franklin, Cambria County, Pennsylvania', '123-343-4444', 'example1@gmail.com', 'https://phppasswordhash.com/', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'public/uploads/custom-images/list-logo-2021-08-30-11-42-47-2575.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-38-22-6829.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-38-44-2545.jpg', NULL, '#', '#', '#', '#', '#', '#', NULL, '#', 0, 1, 1, NULL, 'Cappleman Antiques', 'The standard chunk of Lorem Ipsum used since the 15The standard chunk of Lorem Ipsum used since the 15', '2021-08-06 03:12:14', '2021-09-06 13:59:30'),
(15, 1, 4, 0, 1, 1, 0, 'Chicago Medical Center', 'chicago-medical-center', '3396', '3396', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d886562.3584292791!2d-85.3114536167155!3d29.773760460258035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88eb56486846e93f%3A0xc18c0b91a93f7b3d!2sFranklin%20County%2C%20FL%2C%20USA!5e0!3m2!1sen!2sbd!4v1630332371967!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 14, 'Franklin, New Hampshire', '123-343-4444', 'example1@gmail.com', 'https://phppasswordhash.com/', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.<span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry</span><br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public/uploads/custom-images/list-logo-2021-08-30-11-18-46-8584.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-35-04-7550.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-35-54-1772.jpg', 'listing-file-2021-08-30-08-12-36-1284.html', '#', '#', '#', '#', '#', '#', '#', '#', 1, 1, 1, NULL, 'Chicago Medical Center', 'Contrary to popular belief, Lorem Ipsum is not simply r', '2021-08-15 10:02:52', '2021-09-06 13:55:46'),
(16, 0, 0, 2, 3, 1, 4, 'Thomas M Lee Law Offices', 'thomas-m-lee-law-offices', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d92783.06841346787!2d-87.95630022004467!3d43.38808633288642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8804e9f68daff9b5%3A0xf0a1f1ee31425366!2sPort%20Washington%2C%20WI%2C%20USA!5e0!3m2!1sen!2sbd!4v1630335086543!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 11, 'Port Washington, Wisconsin', '(606) 862-0015', 'about123@gmail.com', 'https://phppasswordhash.com/', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</p><p>When an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever', 'public/uploads/custom-images/logo-2021-08-31-09-22-36-8898.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-21-47-7742.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-21-51-4830.jpg', NULL, '#', '#', '#', '#', '#', '#', NULL, NULL, 1, 0, 0, NULL, 'Thomas M Lee Law Offices', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below forThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for', '2021-08-16 12:31:29', '2021-09-06 14:05:42'),
(17, 0, 0, 2, 5, 6, 2, 'Stress Free Mortgage', 'stress-free-mortgage', '3396', '3396', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23931.49666132819!2d-74.17182612968108!3d41.42973679948858!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2d4a239810ebb%3A0xca47e541210f7e3b!2sWashingtonville%2C%20NY%2010992%2C%20USA!5e0!3m2!1sen!2sbd!4v1630334914967!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 19, 'Washington, Missouri', '123-343-4444', 'about@gmail.com', 'https://phppasswoddrdhash.com/', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. </p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public/uploads/custom-images/logo-2021-08-31-09-12-27-1701.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-12-31-5353.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-14-37-1879.jpg', 'listing-file-2021-08-30-08-50-04-7279.html', '#', '#', '#', '#', NULL, '#', NULL, NULL, 1, 0, 1, NULL, 'Stress Free Mortgage', 'It is a long established  It is a long established  It is a long established', '2021-08-16 14:08:11', '2021-09-06 14:03:34'),
(18, 0, 0, 2, 5, 5, 2, 'Hydrex Pest Control & Termite', 'hydrex-pest-control-termite', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23931.49666132819!2d-74.17182612968108!3d41.42973679948858!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2d4a239810ebb%3A0xca47e541210f7e3b!2sWashingtonville%2C%20NY%2010992%2C%20USA!5e0!3m2!1sen!2sbd!4v1630334709452!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 54, 'Washingtonville, New York', '123-343-4444', 'listkhoj@gmail.com', 'https://phpddpasswordhash.com/', '<p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</span></p><p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><br></span></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public/uploads/custom-images/logo-2021-08-31-09-10-22-7361.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-30-20-6175.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-09-51-4492.jpg', 'listing-file-2021-08-30-08-46-55-5040.html', '#', '#', '#', '#', '#', '#', NULL, '#', 1, 0, 1, NULL, 'Hydrex Pest Control & Termite', 'There are many variations of passages of Lorem Ips', '2021-08-16 14:41:26', '2021-09-06 14:02:41'),
(19, 0, 0, 2, 5, 5, 2, 'Brilliant Tax & Accounting Services', 'brilliant-tax-accounting-services', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48393.33924601166!2d-89.46573810419876!3d40.705165226379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880a5487efa4df1f%3A0x4639f677626e25fb!2sWashington%2C%20IL%2C%20USA!5e0!3m2!1sen!2sbd!4v1630334556050!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 76, 'Washington, Illinois', '(606) 862-0015', 'aboutlistkhoj@gmail.com', 'https://phppasswordhash.com/', '<p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span></p><p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span></p><p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><br></span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><br></span></p>', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.', 'public/uploads/custom-images/logo-2021-08-31-09-06-04-9063.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-06-06-8561.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-06-38-8080.jpg', 'listing-file-2021-08-30-08-43-56-5460.html', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'Brilliant Tax & Accounting Services', 'It is a long established fact that a reader will be distracted byIt is a long established fact that a reader will be distracted by', '2021-08-16 16:01:22', '2021-09-06 14:00:58'),
(20, 0, 0, 2, 3, 3, 5, 'J’adore Boutique', 'jadore-boutique', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24934.840851218072!2d-90.11266563596465!3d38.629214221103005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87d8ac9518761c81%3A0x25a973adc820192!2sWashington%20Park%2C%20IL%2C%20USA!5e0!3m2!1sen!2sbd!4v1630335499068!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 17, 'Washington Park, Illinois', '123-343-4444', 'contactlistkhoj@gmail.com', 'https://listkhoj.com/', '<p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span></p><p><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since.&nbsp;</span><span style=\"color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><br></span></p>', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry Dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the', 'public/uploads/custom-images/logo-2021-08-31-09-27-27-3359.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-27-28-8428.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-27-37-8642.jpg', NULL, '#', '#', '#', '#', '#', NULL, NULL, NULL, 1, 0, 1, NULL, 'J’adore Boutique', 'It is a long established fact that a reader will be distracted', '2021-08-16 18:29:26', '2021-09-06 14:00:24'),
(21, 0, 0, 2, 4, 2, 5, 'The Habit Burger Grill', 'the-habit-burger-grill', '-118.7560', '36.7015', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d198740.08541261766!2d-77.15466285891779!3d38.89393804317764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7c6de5af6e45b%3A0xc2524522d4885d2a!2sWashington%2C%20DC%2C%20USA!5e0!3m2!1sen!2sbd!4v1630335372630!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 85, 'Washington, D.C.', '(606) 862-0015', 'contactlistkhoj@gmail.com', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'public/uploads/custom-images/logo-2021-08-31-09-25-23-3365.jpg', 'public/uploads/custom-images/listing-thumb-2021-09-03-10-04-58-8515.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-09-25-29-8507.jpg', NULL, '#', '#', '#', '#', '#', '#', NULL, NULL, 1, 1, 0, NULL, 'The Habit Burger Grill', 'It is a long established fact that a reader will be distractIt is a long established fact that a reader will be distractIt is a long established fact that a reader will be distract', '2021-08-16 18:39:47', '2021-09-06 14:04:48'),
(22, 1, 4, 0, 1, 1, 0, 'Ruby Tuesday', 'ruby-tuesday', '23.684994', '90.356331', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d886562.3584292791!2d-85.3114536167155!3d29.773760460258035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88eb56486846e93f%3A0xc18c0b91a93f7b3d!2sFranklin%20County%2C%20FL%2C%20USA!5e0!3m2!1sen!2sbd!4v1630332371967!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 59, 'Franklin County, Florida', '11-222-4569', 'example@gmail.com', 'https://example.com', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500sLorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'public/uploads/custom-images/list-logo-2021-08-30-11-14-57-4240.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-15-30-1524.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-30-11-15-49-5730.jpg', 'listing-file-2021-08-30-08-08-36-4110.html', '#', '#', '#', '#', '#', '#', '#', '#', 1, 1, 1, NULL, 'Ruby Tuesday', 'Lorem Ipsum is simply dummy text of the printi', '2021-08-17 03:57:45', '2021-09-06 13:55:04'),
(36, 0, 0, 18, 2, 2, 3, 'Saybrook Point Resort & Marina', 'saybrook-point-resort-marina', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14360.971556532735!2d88.64524837013226!3d25.86148214628468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e4a55d5ecdcd0d%3A0x48064c7b7b930896!2sBirganj!5e0!3m2!1sen!2sbd!4v1630053712584!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 58, 'London, UK', '231-147-584', 'uk@gmail.com', 'www.uk@gmail.com', '<p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix.</p><p>Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vixLorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei. Sit ut autem homero posidonium, ad per movet indoctum theophrastus. Omnesque sententiae cu eum, no enim zril vim, ignota mediocrem voluptatibus vix<br></p>', 'Lorem ipsum dolor sit amet, porro discere ex sea. Ius at mazim soluta scripta, cum ne quot aeque nobis, eu nonumes perpetua praesent vix. Ne nobis accumsan philosophia eum, ei unum assum abhorreant mei.', 'public/uploads/custom-images/logo-2021-08-31-10-07-50-4425.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-10-07-51-3598.jpg', 'public/uploads/custom-images/listing-thumb-2021-08-31-10-07-55-6823.jpg', NULL, '#', '#', '#', '#', '#', '#', NULL, NULL, 1, 0, 1, '2022-06-23', 'Saybrook Point Resort & Marina', 'Saybrook Point Resort & Marina', '2021-08-27 08:44:34', '2021-09-06 14:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `listing_aminities`
--

CREATE TABLE `listing_aminities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `aminity_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_aminities`
--

INSERT INTO `listing_aminities` (`id`, `listing_id`, `aminity_id`, `status`, `created_at`, `updated_at`) VALUES
(502, 34, 7, 1, '2021-08-25 16:26:18', '2021-08-25 16:26:18'),
(503, 34, 4, 1, '2021-08-25 16:26:18', '2021-08-25 16:26:18'),
(504, 34, 3, 1, '2021-08-25 16:26:18', '2021-08-25 16:26:18'),
(507, 35, 7, 1, '2021-08-25 17:34:38', '2021-08-25 17:34:38'),
(508, 35, 2, 1, '2021-08-25 17:34:38', '2021-08-25 17:34:38'),
(767, 9, 2, 1, '2021-09-06 07:45:07', '2021-09-06 07:45:07'),
(768, 9, 3, 1, '2021-09-06 07:45:07', '2021-09-06 07:45:07'),
(769, 9, 4, 1, '2021-09-06 07:45:07', '2021-09-06 07:45:07'),
(770, 9, 5, 1, '2021-09-06 07:45:07', '2021-09-06 07:45:07'),
(775, 1, 1, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(776, 1, 2, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(777, 1, 3, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(778, 1, 4, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(779, 1, 5, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(780, 1, 6, 1, '2021-09-06 07:49:26', '2021-09-06 07:49:26'),
(800, 13, 2, 1, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(801, 13, 3, 1, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(802, 13, 4, 1, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(803, 13, 5, 1, '2021-09-06 13:53:27', '2021-09-06 13:53:27'),
(804, 22, 1, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(805, 22, 2, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(806, 22, 3, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(807, 22, 4, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(808, 22, 5, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(809, 22, 6, 1, '2021-09-06 13:55:04', '2021-09-06 13:55:04'),
(810, 15, 1, 1, '2021-09-06 13:55:46', '2021-09-06 13:55:46'),
(811, 15, 2, 1, '2021-09-06 13:55:46', '2021-09-06 13:55:46'),
(812, 15, 3, 1, '2021-09-06 13:55:46', '2021-09-06 13:55:46'),
(813, 15, 5, 1, '2021-09-06 13:55:46', '2021-09-06 13:55:46'),
(814, 3, 1, 1, '2021-09-06 13:57:57', '2021-09-06 13:57:57'),
(815, 3, 2, 1, '2021-09-06 13:57:57', '2021-09-06 13:57:57'),
(816, 3, 3, 1, '2021-09-06 13:57:57', '2021-09-06 13:57:57'),
(817, 3, 4, 1, '2021-09-06 13:57:57', '2021-09-06 13:57:57'),
(818, 2, 1, 1, '2021-09-06 13:58:42', '2021-09-06 13:58:42'),
(819, 2, 2, 1, '2021-09-06 13:58:42', '2021-09-06 13:58:42'),
(820, 2, 3, 1, '2021-09-06 13:58:42', '2021-09-06 13:58:42'),
(821, 2, 6, 1, '2021-09-06 13:58:42', '2021-09-06 13:58:42'),
(822, 2, 7, 1, '2021-09-06 13:58:42', '2021-09-06 13:58:42'),
(823, 20, 7, 1, '2021-09-06 14:00:19', '2021-09-06 14:00:19'),
(824, 20, 4, 1, '2021-09-06 14:00:19', '2021-09-06 14:00:19'),
(825, 20, 3, 1, '2021-09-06 14:00:19', '2021-09-06 14:00:19'),
(826, 19, 7, 1, '2021-09-06 14:00:55', '2021-09-06 14:00:55'),
(827, 19, 4, 1, '2021-09-06 14:00:55', '2021-09-06 14:00:55'),
(828, 19, 3, 1, '2021-09-06 14:00:55', '2021-09-06 14:00:55'),
(829, 19, 1, 1, '2021-09-06 14:00:55', '2021-09-06 14:00:55'),
(830, 18, 7, 1, '2021-09-06 14:02:41', '2021-09-06 14:02:41'),
(831, 18, 4, 1, '2021-09-06 14:02:41', '2021-09-06 14:02:41'),
(832, 18, 3, 1, '2021-09-06 14:02:41', '2021-09-06 14:02:41'),
(833, 17, 7, 1, '2021-09-06 14:03:31', '2021-09-06 14:03:31'),
(834, 17, 4, 1, '2021-09-06 14:03:31', '2021-09-06 14:03:31'),
(835, 17, 3, 1, '2021-09-06 14:03:31', '2021-09-06 14:03:31'),
(836, 21, 7, 1, '2021-09-06 14:04:48', '2021-09-06 14:04:48'),
(837, 21, 4, 1, '2021-09-06 14:04:48', '2021-09-06 14:04:48'),
(838, 21, 3, 1, '2021-09-06 14:04:48', '2021-09-06 14:04:48'),
(839, 21, 2, 1, '2021-09-06 14:04:48', '2021-09-06 14:04:48'),
(840, 21, 6, 1, '2021-09-06 14:04:48', '2021-09-06 14:04:48'),
(841, 16, 7, 1, '2021-09-06 14:05:33', '2021-09-06 14:05:33'),
(842, 16, 4, 1, '2021-09-06 14:05:33', '2021-09-06 14:05:33'),
(843, 36, 7, 1, '2021-09-06 14:06:40', '2021-09-06 14:06:40'),
(844, 36, 4, 1, '2021-09-06 14:06:40', '2021-09-06 14:06:40'),
(845, 36, 3, 1, '2021-09-06 14:06:40', '2021-09-06 14:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `listing_categories`
--

CREATE TABLE `listing_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_categories`
--

INSERT INTO `listing_categories` (`id`, `name`, `slug`, `icon`, `icon_image`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hotel And Resort', 'hotel-and-resort', 'fab fa-asymmetrik', 'public/uploads/custom-images/listing-category-icon-2021-07-29-06-03-32-8082.png', 'public/uploads/custom-images/listing-category-icon-2021-08-31-09-33-42-7654.jpg', 1, '2021-07-29 12:03:32', '2021-08-31 03:33:46'),
(2, 'Business', 'business', 'fas fa-bullhorn', 'public/uploads/custom-images/listing-category-icon-2021-07-29-06-04-16-3557.png', 'public/uploads/custom-images/listing-category-icon-2021-08-31-10-10-40-5416.jpg', 1, '2021-07-29 12:04:16', '2021-08-31 04:10:48'),
(3, 'Restaurant', 'restaurant', 'fas fa-eye', 'public/uploads/custom-images/listing-category-icon-2021-07-29-06-05-59-4348.png', 'public/uploads/custom-images/listing-category-icon-2021-08-31-09-34-54-9154.jpg', 1, '2021-07-29 12:06:00', '2021-08-31 03:34:58'),
(4, 'Fitness Club', 'fitness-club', 'fab fa-cc-visa', 'public/uploads/custom-images/listing-category-icon-2021-07-29-06-09-59-4879.png', 'public/uploads/custom-images/listing-category-icon-2021-09-03-10-59-17-8485.jpg', 1, '2021-07-29 12:09:59', '2021-09-03 16:59:19'),
(5, 'Event and Club', 'event-and-club', 'fas fa-chart-area', 'public/uploads/custom-images/listing-category-icon-2021-07-29-06-11-23-7684.png', 'public/uploads/custom-images/listing-category-icon-2021-08-31-09-37-36-9226.jpg', 1, '2021-07-29 12:11:23', '2021-08-31 03:37:38'),
(9, 'Home and Garden', 'home-and-garden', 'fab fa-audible', 'public/uploads/custom-images/listing-category-icon-2021-08-31-09-38-27-5219.png', 'public/uploads/custom-images/listing-category-icon-2021-08-31-09-38-28-8483.jpg', 1, '2021-08-25 14:16:53', '2021-08-31 03:38:30'),
(10, 'Education', 'education', 'far fa-address-book', 'public/uploads/custom-images/listing-category-icon-2021-09-02-03-38-27-5760.png', 'public/uploads/custom-images/listing-category-icon-2021-09-02-03-38-28-5138.jpg', 1, '2021-09-02 09:38:32', '2021-09-02 09:38:32'),
(11, 'Housing', 'housing', 'fab fa-algolia', 'public/uploads/custom-images/listing-category-icon-2021-09-02-03-39-45-9210.png', 'public/uploads/custom-images/listing-category-icon-2021-09-03-09-36-19-9542.jpg', 1, '2021-09-02 09:39:48', '2021-09-03 15:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `listing_claimes`
--

CREATE TABLE `listing_claimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_claimes`
--

INSERT INTO `listing_claimes` (`id`, `name`, `email`, `listing_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'monayem islam', 'test@gmail.com', 18, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words', '2021-08-24 11:08:33', '2021-08-24 11:08:33'),
(2, 'jubair ahmed', 'jubair@gmail.com', 21, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2021-08-24 11:15:02', '2021-08-24 11:15:02'),
(3, 'listkhoj', 'listkhoj.contact@gmail.com', 36, 'a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam', '2021-08-27 15:41:38', '2021-08-27 15:41:38'),
(5, 'Morshedul arefin', 'arefin@gmail.com', 36, 'posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diamtincidunt.', '2021-08-27 15:45:15', '2021-08-27 15:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `listing_images`
--

CREATE TABLE `listing_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_images`
--

INSERT INTO `listing_images` (`id`, `listing_id`, `image`, `created_at`, `updated_at`) VALUES
(161, 34, 'public/uploads/custom-images/listing-sm-2021-08-25-10-16-56-8010.jpg', '2021-08-25 16:16:56', '2021-08-25 16:16:56'),
(162, 34, 'public/uploads/custom-images/listing-sm-2021-08-25-10-16-56-6534.jpg', '2021-08-25 16:16:57', '2021-08-25 16:16:57'),
(164, 35, 'public/uploads/custom-images/listing-sm-2021-08-25-11-16-44-4629.jpg', '2021-08-25 17:16:44', '2021-08-25 17:16:44'),
(165, 35, 'public/uploads/custom-images/listing-sm-2021-08-25-11-16-44-4678.jpg', '2021-08-25 17:16:45', '2021-08-25 17:16:45'),
(214, 22, 'public/uploads/custom-images/listing-sm-2021-08-30-11-17-07-5672.jpg', '2021-08-30 17:17:10', '2021-08-30 17:17:10'),
(215, 22, 'public/uploads/custom-images/listing-sm-2021-08-30-11-17-10-2625.jpg', '2021-08-30 17:17:14', '2021-08-30 17:17:14'),
(216, 22, 'public/uploads/custom-images/listing-sm-2021-08-30-11-17-28-3257.jpg', '2021-08-30 17:17:33', '2021-08-30 17:17:33'),
(217, 22, 'public/uploads/custom-images/listing-sm-2021-08-30-11-17-33-2053.jpg', '2021-08-30 17:17:34', '2021-08-30 17:17:34'),
(218, 1, 'public/uploads/custom-images/listing-sm-2021-08-30-11-20-36-1660.jpg', '2021-08-30 17:20:41', '2021-08-30 17:20:41'),
(219, 1, 'public/uploads/custom-images/listing-sm-2021-08-30-11-20-41-6298.jpg', '2021-08-30 17:20:44', '2021-08-30 17:20:44'),
(220, 1, 'public/uploads/custom-images/listing-sm-2021-08-30-11-22-50-6639.jpg', '2021-08-30 17:22:56', '2021-08-30 17:22:56'),
(221, 1, 'public/uploads/custom-images/listing-sm-2021-08-30-11-22-56-6325.jpg', '2021-08-30 17:23:03', '2021-08-30 17:23:03'),
(222, 2, 'public/uploads/custom-images/listing-sm-2021-08-30-11-25-30-6738.jpg', '2021-08-30 17:25:36', '2021-08-30 17:25:36'),
(223, 2, 'public/uploads/custom-images/listing-sm-2021-08-30-11-25-36-5084.jpg', '2021-08-30 17:25:43', '2021-08-30 17:25:43'),
(224, 15, 'public/uploads/custom-images/listing-sm-2021-08-30-11-36-57-3831.jpg', '2021-08-30 17:37:02', '2021-08-30 17:37:02'),
(225, 15, 'public/uploads/custom-images/listing-sm-2021-08-30-11-37-02-8772.jpg', '2021-08-30 17:37:05', '2021-08-30 17:37:05'),
(226, 15, 'public/uploads/custom-images/listing-sm-2021-08-30-11-37-42-4455.jpg', '2021-08-30 17:37:45', '2021-08-30 17:37:45'),
(227, 13, 'public/uploads/custom-images/listing-sm-2021-08-30-11-40-51-5819.jpg', '2021-08-30 17:40:54', '2021-08-30 17:40:54'),
(228, 13, 'public/uploads/custom-images/listing-sm-2021-08-30-11-40-54-1553.jpg', '2021-08-30 17:40:59', '2021-08-30 17:40:59'),
(229, 13, 'public/uploads/custom-images/listing-sm-2021-08-30-11-41-18-6301.jpg', '2021-08-30 17:41:28', '2021-08-30 17:41:28'),
(230, 13, 'public/uploads/custom-images/listing-sm-2021-08-30-11-41-28-6832.jpg', '2021-08-30 17:41:30', '2021-08-30 17:41:30'),
(231, 9, 'public/uploads/custom-images/listing-sm-2021-08-30-11-52-53-9130.jpg', '2021-08-30 17:53:00', '2021-08-30 17:53:00'),
(232, 9, 'public/uploads/custom-images/listing-sm-2021-08-30-11-53-00-2022.jpg', '2021-08-30 17:53:03', '2021-08-30 17:53:03'),
(233, 9, 'public/uploads/custom-images/listing-sm-2021-08-30-11-53-15-1144.jpg', '2021-08-30 17:53:19', '2021-08-30 17:53:19'),
(234, 4, 'public/uploads/custom-images/listing-sm-2021-08-30-11-56-43-5515.jpg', '2021-08-30 17:56:52', '2021-08-30 17:56:52'),
(235, 4, 'public/uploads/custom-images/listing-sm-2021-08-30-11-56-52-1215.jpg', '2021-08-30 17:56:55', '2021-08-30 17:56:55'),
(236, 4, 'public/uploads/custom-images/listing-sm-2021-08-30-11-57-23-1281.jpg', '2021-08-30 17:57:26', '2021-08-30 17:57:26'),
(237, 4, 'public/uploads/custom-images/listing-sm-2021-08-30-11-57-39-1879.jpg', '2021-08-30 17:57:42', '2021-08-30 17:57:42'),
(238, 3, 'public/uploads/custom-images/listing-sm-2021-08-31-12-01-25-3774.jpg', '2021-08-30 18:01:30', '2021-08-30 18:01:30'),
(239, 3, 'public/uploads/custom-images/listing-sm-2021-08-31-12-01-30-1157.jpg', '2021-08-30 18:01:34', '2021-08-30 18:01:34'),
(240, 3, 'public/uploads/custom-images/listing-sm-2021-08-31-12-01-46-2767.jpg', '2021-08-30 18:01:51', '2021-08-30 18:01:51'),
(241, 3, 'public/uploads/custom-images/listing-sm-2021-08-31-12-02-38-3342.jpg', '2021-08-30 18:02:40', '2021-08-30 18:02:40'),
(242, 19, 'public/uploads/custom-images/listing-sm-2021-08-31-09-04-17-5495.jpg', '2021-08-31 03:04:19', '2021-08-31 03:04:19'),
(243, 19, 'public/uploads/custom-images/listing-sm-2021-08-31-09-04-19-4858.jpg', '2021-08-31 03:04:23', '2021-08-31 03:04:23'),
(244, 19, 'public/uploads/custom-images/listing-sm-2021-08-31-09-04-52-5554.jpg', '2021-08-31 03:04:56', '2021-08-31 03:04:56'),
(245, 19, 'public/uploads/custom-images/listing-sm-2021-08-31-09-04-56-8459.jpg', '2021-08-31 03:04:58', '2021-08-31 03:04:58'),
(246, 18, 'public/uploads/custom-images/listing-sm-2021-08-31-09-08-10-3927.jpg', '2021-08-31 03:08:13', '2021-08-31 03:08:13'),
(247, 18, 'public/uploads/custom-images/listing-sm-2021-08-31-09-08-14-2148.jpg', '2021-08-31 03:08:16', '2021-08-31 03:08:16'),
(248, 18, 'public/uploads/custom-images/listing-sm-2021-08-31-09-08-52-4956.jpg', '2021-08-31 03:09:01', '2021-08-31 03:09:01'),
(249, 18, 'public/uploads/custom-images/listing-sm-2021-08-31-09-09-01-1024.jpg', '2021-08-31 03:09:04', '2021-08-31 03:09:04'),
(250, 17, 'public/uploads/custom-images/listing-sm-2021-08-31-09-13-13-5075.jpg', '2021-08-31 03:13:14', '2021-08-31 03:13:14'),
(251, 17, 'public/uploads/custom-images/listing-sm-2021-08-31-09-13-14-2241.jpg', '2021-08-31 03:13:18', '2021-08-31 03:13:18'),
(252, 17, 'public/uploads/custom-images/listing-sm-2021-08-31-09-13-58-5123.jpg', '2021-08-31 03:14:02', '2021-08-31 03:14:02'),
(253, 17, 'public/uploads/custom-images/listing-sm-2021-08-31-09-14-02-6282.jpg', '2021-08-31 03:14:08', '2021-08-31 03:14:08'),
(254, 16, 'public/uploads/custom-images/listing-sm-2021-08-31-09-21-53-8331.jpg', '2021-08-31 03:21:57', '2021-08-31 03:21:57'),
(255, 16, 'public/uploads/custom-images/listing-sm-2021-08-31-09-21-57-5341.jpg', '2021-08-31 03:22:01', '2021-08-31 03:22:01'),
(256, 16, 'public/uploads/custom-images/listing-sm-2021-08-31-09-22-01-7545.jpg', '2021-08-31 03:22:07', '2021-08-31 03:22:07'),
(257, 21, 'public/uploads/custom-images/listing-sm-2021-08-31-09-25-32-9592.jpg', '2021-08-31 03:25:35', '2021-08-31 03:25:35'),
(258, 21, 'public/uploads/custom-images/listing-sm-2021-08-31-09-25-35-5922.jpg', '2021-08-31 03:25:37', '2021-08-31 03:25:37'),
(259, 21, 'public/uploads/custom-images/listing-sm-2021-08-31-09-25-37-4951.jpg', '2021-08-31 03:25:40', '2021-08-31 03:25:40'),
(260, 20, 'public/uploads/custom-images/listing-sm-2021-08-31-09-27-39-8763.jpg', '2021-08-31 03:27:45', '2021-08-31 03:27:45'),
(261, 20, 'public/uploads/custom-images/listing-sm-2021-08-31-09-27-45-2147.jpg', '2021-08-31 03:27:53', '2021-08-31 03:27:53'),
(262, 20, 'public/uploads/custom-images/listing-sm-2021-08-31-09-27-53-3043.jpg', '2021-08-31 03:27:56', '2021-08-31 03:27:56'),
(263, 36, 'public/uploads/custom-images/listing-sm-2021-08-31-10-08-54-4313.jpg', '2021-08-31 04:08:57', '2021-08-31 04:08:57'),
(264, 36, 'public/uploads/custom-images/listing-sm-2021-08-31-10-08-57-9044.jpg', '2021-08-31 04:09:00', '2021-08-31 04:09:00'),
(265, 36, 'public/uploads/custom-images/listing-sm-2021-08-31-10-09-00-7193.jpg', '2021-08-31 04:09:03', '2021-08-31 04:09:03'),
(266, 36, 'public/uploads/custom-images/listing-sm-2021-08-31-10-09-03-6844.jpg', '2021-08-31 04:09:10', '2021-08-31 04:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `listing_packages`
--

CREATE TABLE `listing_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `number_of_aminities` int(11) DEFAULT NULL,
  `number_of_photo` int(11) DEFAULT NULL,
  `number_of_video` int(11) DEFAULT NULL,
  `number_of_listing` int(11) DEFAULT NULL,
  `number_of_feature_listing` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_packages`
--

INSERT INTO `listing_packages` (`id`, `package_name`, `package_type`, `price`, `number_of_days`, `number_of_aminities`, `number_of_photo`, `number_of_video`, `number_of_listing`, `number_of_feature_listing`, `status`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Free', '0', 0, 30, 3, 3, 0, 3, 0, 1, 0, '2021-07-29 14:08:47', '2021-09-03 15:12:09'),
(2, 'Premium', '1', 200, 40, 5, 5, 5, 5, 3, 0, 1, '2021-07-29 14:10:14', '2021-09-02 09:41:00'),
(3, 'Pro', '1', 300, 300, 5, 5, 5, 10, 5, 0, 1, '2021-07-29 14:10:56', '2021-09-02 09:42:04'),
(4, 'Premium', '1', 300, 520, 20, 20, 20, 200, 10, 1, 1, '2021-07-29 14:11:59', '2021-09-02 09:42:52'),
(5, 'Unlimited', '1', 800, -1, -1, -1, -1, -1, -1, 1, 1, '2021-08-16 09:34:48', '2021-08-16 09:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `listing_reviews`
--

CREATE TABLE `listing_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_reviews`
--

INSERT INTO `listing_reviews` (`id`, `user_id`, `listing_id`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'This is a very nice place.', 4, 1, '2021-07-29 14:54:17', '2021-09-02 15:23:52'),
(3, 3, 1, 'Lorem Ipsum is simply dummy text ', 3, 1, '2021-08-04 12:41:21', NULL),
(4, 4, 2, 'Lorem Ipsum is not simply random text', 5, 1, '2021-08-04 12:43:21', NULL),
(5, 5, 1, 'Lorem Ipsum is not simply random text', 3, 0, '2021-08-04 12:55:02', '2021-08-24 05:27:10'),
(6, 6, 1, 'Test Review', 4, 1, '2021-08-06 10:06:26', NULL),
(8, 18, 19, 'This is a very nice place.', 4, 1, '2021-08-27 09:16:36', '2021-09-02 13:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `listing_schedules`
--

CREATE TABLE `listing_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `is_open` tinyint(4) NOT NULL DEFAULT 0,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_schedules`
--

INSERT INTO `listing_schedules` (`id`, `listing_id`, `day_id`, `is_open`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, '10:00 AM', '2:00 PM', 1, '2021-07-29 14:32:59', '2021-08-03 10:29:05'),
(2, 4, 2, 1, '12:00 PM', '11:00 PM', 1, '2021-07-29 14:33:11', '2021-07-29 14:33:11'),
(3, 4, 6, 1, '10:00 AM', '11:00 PM', 1, '2021-07-29 14:33:33', '2021-07-29 14:33:33'),
(4, 3, 5, 1, '10:00 AM', '3:00 PM', 1, '2021-07-29 14:33:59', '2021-07-29 14:33:59'),
(5, 3, 2, 1, '12:00 PM', '1:00 AM', 1, '2021-07-29 14:34:23', '2021-07-29 14:34:23'),
(7, 7, 3, 1, '10:00 AM', '3:00 PM', 1, '2021-07-31 06:43:15', '2021-07-31 06:54:03'),
(8, 7, 7, 1, '12:00 PM', '8:00 PM', 1, '2021-07-31 06:48:49', '2021-07-31 06:50:28'),
(11, 5, 2, 1, '11:00 AM', '2:00 PM', 1, '2021-07-31 15:06:50', '2021-08-01 14:15:39'),
(12, 5, 3, 1, '10:00 AM', '10:00 AM', 1, '2021-08-01 02:36:04', '2021-08-01 02:36:04'),
(13, 9, 2, 1, '10:00 AM', '8:00 PM', 1, '2021-08-03 12:13:55', '2021-08-05 15:52:57'),
(14, 9, 6, 1, '10:00 AM', '9:00 PM', 1, '2021-08-03 12:18:19', '2021-08-03 12:18:19'),
(19, 19, 3, 1, '10:00 AM', '1:00 PM', 1, '2021-08-25 02:05:06', '2021-08-25 04:09:54'),
(20, 19, 5, 1, '8:00 AM', '6:00 PM', 1, '2021-08-25 02:08:19', '2021-08-25 04:05:43'),
(21, 18, 2, 1, '12:00 PM', '1:00 AM', 1, '2021-08-30 15:31:34', '2021-08-30 15:31:34'),
(22, 17, 4, 1, '12:00 PM', '10:00 PM', 1, '2021-08-30 15:31:56', '2021-08-30 15:31:56'),
(23, 2, 2, 1, '11:00 AM', '9:00 PM', 1, '2021-08-31 07:37:05', '2021-08-31 07:37:05'),
(24, 13, 4, 1, '10:00 AM', '6:00 PM', 1, '2021-08-31 09:36:40', '2021-08-31 09:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `listing_videos`
--

CREATE TABLE `listing_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_videos`
--

INSERT INTO `listing_videos` (`id`, `listing_id`, `video_link`, `created_at`, `updated_at`) VALUES
(44, 21, 'https://www.youtube.com/watch?v=Zv11L-ZfrSg', '2021-08-18 07:11:14', '2021-08-18 07:11:14'),
(45, 20, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:12:46', '2021-08-18 07:12:46'),
(46, 20, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 07:12:46', '2021-08-18 07:12:46'),
(47, 20, 'https://www.youtube.com/watch?v=LXb3EKWsInQ', '2021-08-18 07:12:46', '2021-08-18 07:12:46'),
(48, 20, 'https://www.youtube.com/watch?v=Zv11L-ZfrSg', '2021-08-18 07:12:46', '2021-08-18 07:12:46'),
(49, 19, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 07:14:05', '2021-08-18 07:14:05'),
(50, 19, 'https://www.youtube.com/watch?v=Zv11L-ZfrSg', '2021-08-18 07:14:05', '2021-08-18 07:14:05'),
(51, 19, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:14:05', '2021-08-18 07:14:05'),
(52, 19, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 07:14:05', '2021-08-18 07:14:05'),
(53, 17, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 07:15:55', '2021-08-18 07:15:55'),
(57, 17, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:17:11', '2021-08-18 07:17:11'),
(58, 17, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 07:17:11', '2021-08-18 07:17:11'),
(59, 17, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 07:17:11', '2021-08-18 07:17:11'),
(60, 18, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 07:18:42', '2021-08-18 07:18:42'),
(61, 18, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 07:18:42', '2021-08-18 07:18:42'),
(62, 18, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:18:42', '2021-08-18 07:18:42'),
(63, 18, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 07:18:42', '2021-08-18 07:18:42'),
(64, 16, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 07:19:47', '2021-08-18 07:19:47'),
(65, 16, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 07:19:47', '2021-08-18 07:19:47'),
(66, 16, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 07:19:47', '2021-08-18 07:19:47'),
(67, 16, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 07:19:47', '2021-08-18 07:19:47'),
(68, 22, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 07:44:16', '2021-08-18 07:44:16'),
(69, 22, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:44:16', '2021-08-18 07:44:16'),
(70, 22, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 07:44:16', '2021-08-18 07:44:16'),
(71, 22, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 07:44:16', '2021-08-18 07:44:16'),
(72, 15, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:52:25', '2021-08-18 07:52:25'),
(74, 15, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 07:52:26', '2021-08-18 07:52:26'),
(76, 15, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 07:53:56', '2021-08-18 07:53:56'),
(77, 13, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 07:55:04', '2021-08-18 07:55:04'),
(78, 13, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 07:55:04', '2021-08-18 07:55:04'),
(79, 13, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 07:55:04', '2021-08-18 07:55:04'),
(80, 9, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 08:01:47', '2021-08-18 08:01:47'),
(81, 9, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 08:01:47', '2021-08-18 08:01:47'),
(82, 9, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 08:01:47', '2021-08-18 08:01:47'),
(83, 4, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 08:06:30', '2021-08-18 08:06:30'),
(84, 4, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 08:06:30', '2021-08-18 08:06:30'),
(85, 4, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 08:06:30', '2021-08-18 08:06:30'),
(86, 3, 'https://www.youtube.com/watch?v=FisOoN7Ynk8', '2021-08-18 08:07:49', '2021-08-18 08:07:49'),
(87, 3, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 08:07:49', '2021-08-18 08:07:49'),
(88, 2, 'https://www.youtube.com/watch?v=rw7bxTqkYYs', '2021-08-18 08:09:07', '2021-08-18 08:09:07'),
(89, 2, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 08:09:07', '2021-08-18 08:09:07'),
(90, 2, 'https://www.youtube.com/watch?v=CV2P-xsEiYE', '2021-08-18 08:09:07', '2021-08-18 08:09:07'),
(91, 1, 'https://www.youtube.com/watch?v=YTJg8q9Q940', '2021-08-18 08:10:58', '2021-08-18 08:10:58'),
(92, 1, 'https://www.youtube.com/watch?v=BHACKCNDMW8', '2021-08-18 08:10:58', '2021-08-18 08:10:58'),
(93, 1, 'https://www.youtube.com/watch?v=EpLCLrPyPO0', '2021-08-18 08:10:58', '2021-08-18 08:10:58'),
(94, 1, 'https://www.youtube.com/watch?v=FisOoN7Ynk8', '2021-08-18 08:10:58', '2021-08-18 08:10:58'),
(108, 36, 'https://www.youtube.com/watch?v=Zv11L-ZfrSg', '2021-08-27 08:44:43', '2021-08-27 08:44:43'),
(109, 36, 'https://www.youtube.com/watch?v=CTcoCHKnkT8', '2021-08-27 08:44:43', '2021-08-27 08:44:43'),
(110, 36, 'https://www.youtube.com/watch?v=bUCfv8D_hoQ', '2021-08-27 08:44:43', '2021-08-27 08:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`, `slug`, `icon`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New York', 'new-york', 'far fa-address-card', 'public/uploads/custom-images/location-2021-08-31-09-54-29-6745.jpg', 1, '2021-07-29 11:56:40', '2021-08-31 03:54:34'),
(2, 'London', 'london', 'fas fa-balance-scale', 'public/uploads/custom-images/location-2021-08-31-09-54-46-4105.jpg', 1, '2021-07-29 11:57:09', '2021-08-31 03:54:50'),
(3, 'Paris', 'paris', 'fas fa-bullhorn', 'public/uploads/custom-images/location-2021-08-31-09-55-04-8033.jpg', 1, '2021-07-29 11:57:24', '2021-08-31 03:55:07'),
(4, 'HongKong', 'hongkong', 'fas fa-arrows-alt', 'public/uploads/custom-images/location-2021-08-31-09-58-30-9709.jpg', 1, '2021-07-29 11:57:50', '2021-08-31 03:58:35'),
(5, 'Moscow', 'moscow', 'fas fa-asterisk', 'public/uploads/custom-images/location-2021-09-03-09-37-21-7928.jpg', 1, '2021-07-29 11:58:43', '2021-09-03 15:37:28'),
(6, 'Tokyo', 'tokyo', 'fas fa-bicycle', 'public/uploads/custom-images/location-2021-09-03-10-52-21-7987.jpg', 1, '2021-07-29 11:59:02', '2021-09-03 16:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `manage_texts`
--

CREATE TABLE `manage_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_texts`
--

INSERT INTO `manage_texts` (`id`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'What are you looking for', 'What are you looking for?', NULL, '2021-08-11 15:20:50'),
(2, 'all categories', 'All Categories', NULL, '2021-08-17 12:35:24'),
(3, 'all location', 'All Location', NULL, '2021-08-17 12:35:24'),
(4, 'Search', 'Search', NULL, '2021-08-17 12:35:24'),
(5, 'view all', 'View All', NULL, '2021-08-17 12:35:24'),
(6, 'all city', 'All City', NULL, '2021-08-17 12:35:24'),
(7, 'close', 'Close', NULL, '2021-08-17 12:35:24'),
(8, 'open', 'Open', NULL, '2021-08-17 12:35:24'),
(9, 'reviews', 'Reviews', NULL, '2021-08-17 12:35:24'),
(10, 'featured', 'Featured', NULL, '2021-08-17 12:35:24'),
(11, 'verified', 'Verified', NULL, '2021-08-17 12:35:24'),
(12, 'read more', 'Read More', NULL, '2021-08-11 15:28:31'),
(13, 'get started', 'Get Started', NULL, '2021-08-11 15:28:31'),
(14, 'days', 'Days', NULL, '2021-08-17 12:35:24'),
(15, '(qty) Listings Submission', 'Listings Submission', NULL, '2021-08-01 04:19:04'),
(16, '(qty) days expiration', 'Days Expiration', NULL, '2021-08-17 12:35:24'),
(17, '(qty) Aminities', 'Aminities', NULL, '2021-08-01 04:18:01'),
(18, 'Photos', 'Photos', NULL, NULL),
(19, 'videos', 'Videos', NULL, '2021-08-17 12:35:24'),
(20, 'Featured Listing Available\r\n', 'Featured Listing Available', NULL, '2021-08-01 04:18:01'),
(21, '(qty) Featured Listing Submissions', 'Featured Listing Submissions', NULL, NULL),
(22, 'hosted by', 'Hosted by', NULL, '2021-08-17 12:35:24'),
(23, 'subscribe', 'Subscribe Here', NULL, '2021-08-17 12:35:24'),
(24, 'email', 'Email', NULL, '2021-08-17 12:35:24'),
(25, 'Important links\r\n', 'Important Links', NULL, '2021-08-17 12:35:24'),
(26, 'contact us', 'Contact Us', NULL, '2021-08-17 12:35:24'),
(27, 'Features', 'Features', NULL, '2021-08-17 12:35:24'),
(28, 'Add To Favorite', 'Add to Favorite', NULL, '2021-08-17 12:35:24'),
(29, 'download broshure', 'Download Broshure', NULL, '2021-08-17 12:35:24'),
(30, 'Gallery', 'Gallery', NULL, '2021-08-17 12:35:24'),
(31, 'Amenities and Features\r\n', 'Amenities and Features', NULL, '2021-08-11 15:28:31'),
(32, 'Location Map\r\n', 'Location Map', NULL, '2021-08-11 15:35:20'),
(33, 'out of', 'Out of', NULL, '2021-08-11 15:35:20'),
(34, 'Opening Hours\r\n', 'Opening Hours', NULL, '2021-08-11 15:35:20'),
(35, 'day off', 'Day Off', NULL, '2021-08-11 15:35:20'),
(36, 'contact here', 'Contact Here', NULL, '2021-08-11 15:35:20'),
(37, 'name', 'Name', NULL, '2021-08-11 15:35:20'),
(38, 'email', 'Email', NULL, '2021-08-11 15:35:20'),
(39, 'phone', 'Phone', NULL, '2021-08-11 15:35:20'),
(40, 'subject', 'Subject', NULL, '2021-08-11 15:35:20'),
(41, 'message', 'Message', NULL, '2021-08-11 15:35:20'),
(42, 'send message', 'Send Message', NULL, '2021-08-11 15:35:20'),
(43, 'Similar Listing\r\n', 'Similar Listing', NULL, '2021-08-11 15:35:20'),
(44, 'Recently Added', 'Recently Added', NULL, '2021-08-11 15:35:20'),
(45, 'Add Reviews & Rate\r\n', 'Add Review & Rate', NULL, '2021-08-11 15:35:20'),
(46, 'comment', 'Comment', NULL, '2021-08-11 15:35:21'),
(47, 'submit comment', 'Submit Commment', NULL, '2021-08-11 15:35:21'),
(48, 'add a comment', 'Add a Comment', NULL, '2021-08-11 15:35:21'),
(49, 'views', 'Views', NULL, '2021-08-11 15:35:21'),
(50, 'Search', 'Search', NULL, '2021-08-11 15:35:21'),
(51, 'Categories', 'Categories', NULL, '2021-08-11 15:35:21'),
(52, 'Popular Posts\r\n', 'Popular Post', NULL, '2021-08-11 15:35:21'),
(53, 'Connect and follow\r\n', 'Connect and Follow', NULL, '2021-08-11 15:35:21'),
(55, 'address', 'Address', NULL, '2021-08-11 15:35:21'),
(56, 'listing', 'Listing', NULL, '2021-08-11 15:35:21'),
(57, 'sign in', 'Sign In', NULL, '2021-08-11 15:35:21'),
(58, 'login', 'Login', NULL, '2021-08-11 15:35:21'),
(59, 'register', 'Register', NULL, '2021-08-11 15:35:21'),
(60, 'send email', 'Send Email', NULL, '2021-08-11 15:35:21'),
(61, 'password', 'Password', NULL, '2021-08-11 15:35:21'),
(62, 'default order', 'Default Order', NULL, '2021-08-11 15:35:21'),
(63, 'most views', 'Most Views', NULL, '2021-08-11 15:35:21'),
(64, 'oldest listing', 'Oldest Listing', NULL, '2021-08-11 15:35:21'),
(65, 'new listing', 'New Listing', NULL, '2021-08-11 15:35:21'),
(66, 'reset password', 'Reset Password', NULL, '2021-08-11 15:35:21'),
(67, 'confirm password', 'Confirm Password', NULL, '2021-08-11 15:35:21'),
(68, 'dashboard', 'Dashboard', NULL, '2021-08-11 15:35:21'),
(69, 'my listing', 'My Listing', NULL, '2021-08-11 15:35:21'),
(70, 'add listing', 'Create Listing', NULL, '2021-08-11 15:35:21'),
(71, 'wishlist', 'Wishlist', NULL, '2021-08-11 15:35:21'),
(72, 'my profile', 'My Profile', NULL, '2021-08-11 15:35:21'),
(73, 'orders', 'Orders', NULL, '2021-08-11 15:35:21'),
(74, 'logout', 'Logout', NULL, '2021-08-11 15:35:21'),
(75, 'active listing', 'Active Listing', NULL, '2021-08-11 15:35:21'),
(76, 'total views', 'Total Views', NULL, '2021-08-11 15:35:21'),
(77, 'Visitor Reviews\r\n', 'Visitor Reviews', NULL, '2021-08-11 15:35:21'),
(78, 'total wishlist', 'Total Wishlist', NULL, '2021-08-11 15:35:21'),
(79, 'Listings Types\r\n', 'Listing Types', NULL, '2021-08-11 15:35:21'),
(80, 'active', 'Active', NULL, '2021-08-11 15:35:21'),
(81, 'pending', 'Pending', NULL, '2021-08-11 15:35:21'),
(82, 'expired', 'Expired', NULL, '2021-08-11 15:35:21'),
(83, 'schedule', 'Schedule', NULL, '2021-08-11 15:35:21'),
(84, 'edit', 'Edit', NULL, '2021-08-11 15:35:21'),
(85, 'delete', 'Delete', NULL, '2021-08-11 15:35:21'),
(86, 'package', 'Package', NULL, '2021-08-11 15:35:21'),
(87, 'select package', 'Select Package', NULL, '2021-08-11 15:35:21'),
(89, 'Basic Informations\r\n', 'Basic Informations', NULL, '2021-08-11 15:35:21'),
(90, 'title', 'Title', NULL, '2021-08-11 15:35:21'),
(91, 'slug', 'Slug', NULL, '2021-08-11 15:35:21'),
(92, 'category', 'Category', NULL, '2021-08-11 15:35:21'),
(93, 'website', 'Website', NULL, '2021-08-11 15:35:21'),
(94, 'Latitude ', 'Latitue', NULL, '2021-08-11 15:35:21'),
(95, 'Longitude ', 'Logitude', NULL, '2021-08-11 15:35:21'),
(96, 'Video And Image\r\n', 'Video and Image', NULL, '2021-08-11 15:39:19'),
(97, 'logo', 'Logo', NULL, '2021-08-11 15:39:20'),
(98, 'thumbnail Image', 'Thumbnail Image', NULL, '2021-08-11 15:39:20'),
(99, 'pdf file', 'PDF', NULL, '2021-08-11 15:39:20'),
(100, 'add more fields', 'Add More Fields', NULL, '2021-08-11 15:39:20'),
(101, 'Listing Details Information\r\n', 'Listing Details Information', NULL, '2021-08-11 15:39:20'),
(102, 'Short Description', 'Short Description', NULL, '2021-08-11 15:39:20'),
(103, 'description', 'Description', NULL, '2021-08-11 15:39:20'),
(104, 'Amenities', 'Amenities', NULL, '2021-08-11 15:39:20'),
(105, 'Social Link', 'Social Link', NULL, '2021-08-11 15:39:20'),
(106, 'facebook', 'Facebook', NULL, '2021-08-11 15:39:20'),
(107, 'twitter', 'Twitter', NULL, '2021-08-11 15:39:20'),
(108, 'linkedin', 'Linkedin', NULL, '2021-08-11 15:39:20'),
(109, 'whatsapp', 'Whatsapp', NULL, '2021-08-11 15:39:20'),
(110, 'instagram', 'Instagram', NULL, '2021-08-11 15:39:20'),
(111, 'Pinterest', 'Pinterest', NULL, '2021-08-11 15:39:20'),
(112, 'Tumblr', 'Tumblr', NULL, '2021-08-11 15:39:20'),
(113, 'youtube', 'Youtube', NULL, '2021-08-11 15:39:20'),
(114, 'Allow Feature', 'Allow Feature', NULL, '2021-08-11 15:44:35'),
(115, 'seo title', 'Seo Title', NULL, '2021-08-11 15:44:35'),
(116, 'Seo Description\r\n', 'Seo Description', NULL, '2021-08-11 15:44:35'),
(117, 'save', 'Save', NULL, '2021-08-11 15:44:35'),
(118, 'update', 'Update', NULL, '2021-08-11 15:44:35'),
(119, 'select category', 'Select Category', NULL, '2021-08-11 15:44:35'),
(120, 'select location', 'Select Location', NULL, '2021-08-11 15:44:35'),
(121, 'image', 'Image', NULL, '2021-08-11 15:44:35'),
(122, 'video', 'Video', NULL, '2021-08-11 15:44:35'),
(123, 'yes', 'Yes', NULL, '2021-08-11 15:44:35'),
(124, 'no', 'No', NULL, '2021-08-11 15:44:35'),
(125, 'location', 'Location', NULL, '2021-08-11 15:44:35'),
(126, 'old image', 'Existing Image', NULL, '2021-08-11 15:44:35'),
(127, 'old videos', 'Old Videos', NULL, '2021-08-11 15:44:35'),
(128, 'existing logo', 'Existing Logo', NULL, '2021-08-11 15:44:35'),
(129, 'Existing Thumbnail\r\n', 'Existing Thumbnail', NULL, '2021-08-11 15:44:35'),
(130, 'Listing Schedule Table', 'Listing Schedule Table', NULL, '2021-08-11 15:44:35'),
(131, 'serial number', 'SN', NULL, '2021-08-11 15:44:35'),
(132, 'day', 'Day', NULL, '2021-08-11 15:44:35'),
(133, 'start time', 'Start Time', NULL, '2021-08-11 15:44:35'),
(134, 'end time', 'End Time', NULL, '2021-08-11 15:44:35'),
(135, 'status', 'Status', NULL, '2021-08-11 15:44:35'),
(136, 'action', 'Action', NULL, '2021-08-11 15:44:35'),
(137, 'create schedule', 'Create Schedule', NULL, '2021-08-11 15:44:36'),
(138, 'Listing Schedule Form', 'Listing Schedule Form', NULL, '2021-08-11 15:44:36'),
(139, 'select day', 'Select Day', NULL, '2021-08-11 15:44:36'),
(140, 'active', 'Active', NULL, '2021-08-11 15:44:36'),
(141, 'in active', 'InActive', NULL, '2021-08-11 15:44:36'),
(142, 'go back', 'Go Back', NULL, '2021-08-11 15:44:36'),
(143, 'Visitor Reviews\r\n', 'Visitor Reviews', NULL, '2021-08-11 15:44:36'),
(144, 'my reviews', 'My Reviews', NULL, '2021-08-11 15:44:36'),
(145, 'about me', 'About Me', NULL, '2021-08-11 15:44:36'),
(146, 'upload image', 'Upload Image', NULL, '2021-08-11 15:44:36'),
(147, 'user profile image', 'User Profile Image', NULL, '2021-08-11 15:44:36'),
(148, 'Change Password\r\n', 'Change Password', NULL, '2021-08-11 15:44:36'),
(149, 'Current Password\r\n', 'Current Password', NULL, '2021-08-11 15:44:36'),
(150, 'new password', 'New Password', NULL, '2021-08-11 15:44:36'),
(151, 'purchase date', 'Purchase Date', NULL, '2021-08-11 15:44:36'),
(152, 'Expired Date	', 'Expired Date', NULL, '2021-08-11 15:44:36'),
(153, 'price', 'Price', NULL, '2021-08-11 15:44:36'),
(154, 'Payment method	', 'Payment Method', NULL, '2021-08-11 15:44:36'),
(155, 'Transaction id', 'Transaction Id', NULL, '2021-08-11 15:44:36'),
(156, 'setting', 'Setting', NULL, '2021-08-11 15:44:36'),
(157, 'general setting', 'General Setting', NULL, '2021-08-11 15:44:36'),
(158, 'blog comment setting', 'Blog Comment Setting', NULL, '2021-08-11 15:44:36'),
(159, 'cookie consent modal', 'Cookie Consent Modal', NULL, '2021-08-11 15:49:43'),
(160, 'payment account', 'Payment Account', NULL, '2021-08-11 15:49:43'),
(161, 'google recaptcha', 'Google Recaptcha', NULL, '2021-08-11 15:49:43'),
(162, 'live chat', 'Live Chat', NULL, '2021-08-11 15:49:43'),
(163, 'preloader', 'Preloader', NULL, '2021-08-11 15:49:43'),
(164, 'google analytic option', 'Google Analytic Option', NULL, '2021-08-11 15:49:43'),
(165, 'theme color', 'Theme Color', NULL, '2021-08-11 15:49:43'),
(166, 'clear database', 'Clear Database', NULL, '2021-08-11 15:49:43'),
(167, 'email template', 'Email Template', NULL, '2021-08-11 15:49:43'),
(168, 'banner image', 'Banner Image', NULL, '2021-08-11 15:49:43'),
(169, 'login image', 'Login Image', NULL, '2021-08-11 15:49:43'),
(170, 'default profile image', 'Default Profile Image', NULL, '2021-08-11 15:49:43'),
(171, 'background image', 'Background Image', NULL, '2021-08-11 15:49:43'),
(172, 'favicon', 'Favicon', NULL, '2021-08-11 15:49:43'),
(173, 'existing favicon', 'Existing Favicon', NULL, '2021-08-11 15:49:43'),
(174, 'Email For Send Contact Message', 'Email For Send Contact Message', NULL, '2021-08-11 15:49:43'),
(175, 'Save Contact Message in Database', 'Save Contact Message in Database', NULL, '2021-08-11 15:49:43'),
(176, 'Google Map Api Key', 'Google Map Api Key', NULL, '2021-08-11 15:49:43'),
(177, 'Text Direction', 'Text Direction', NULL, '2021-08-11 15:49:43'),
(178, 'Currency Name', 'Currency Name', NULL, '2021-08-11 15:49:43'),
(179, 'Currency Icon', 'Currency Icon', NULL, '2021-08-11 15:49:43'),
(180, 'TimeZone ', 'TimeZone', NULL, '2021-08-11 15:49:43'),
(181, 'LTR', 'LTR', NULL, '2021-08-11 15:49:43'),
(182, 'RTL', 'RTL', NULL, '2021-08-11 15:49:43'),
(183, 'comment type', 'Comment Type', NULL, '2021-08-11 15:49:43'),
(184, 'custom comment', 'Custom Comment', NULL, '2021-08-11 15:49:43'),
(185, 'facebook comment', 'Facebook Comment', NULL, '2021-08-11 15:49:43'),
(186, 'Facebook App Id', 'Facebook App Id', NULL, '2021-08-11 15:49:43'),
(187, 'allow cookie consent', 'Allow Cookie Consent', NULL, '2021-08-11 15:49:43'),
(188, 'Border', 'Border', NULL, '2021-08-11 15:49:43'),
(189, 'Corners', 'Corners', NULL, '2021-08-11 15:49:43'),
(190, 'Background Color', 'Background Color', NULL, '2021-08-11 15:49:43'),
(191, 'text color', 'Text Color', NULL, '2021-08-11 15:49:43'),
(192, 'border color', 'Border Color', NULL, '2021-08-11 15:49:43'),
(193, 'button color', 'Button Color', NULL, '2021-08-11 15:49:43'),
(194, 'button text color', 'Button Text Color', NULL, '2021-08-11 15:49:43'),
(195, 'link text', 'Link Text', NULL, '2021-08-11 15:49:43'),
(196, 'button text', 'Button Text', NULL, '2021-08-11 15:49:43'),
(197, 'message', 'Message', NULL, '2021-08-11 15:49:43'),
(198, 'Allow Google Recaptcha', 'Allow Google Recaptcha', NULL, '2021-08-11 15:49:43'),
(199, 'Recaptcha Site Key', 'Captcha Site Key', NULL, '2021-08-11 15:49:43'),
(200, 'Recaptcha Secret Key', 'Captcha Secret Key', NULL, '2021-08-11 15:49:43'),
(201, 'clear all data', 'Clear All Data', NULL, '2021-08-11 15:49:43'),
(202, 'allow Tawk Live Chat', 'Allow Tawk Live Chat', NULL, '2021-08-11 15:49:43'),
(203, 'Tawk Live Direct Chat Link', 'Tawk Live Direct Chat Link', NULL, '2021-08-11 15:49:43'),
(204, 'preloader image', 'Preloader Image', NULL, '2021-08-11 15:55:26'),
(205, 'allow preloader', 'Allow Preloader', NULL, '2021-08-11 15:55:26'),
(206, 'Allow Google Analytic', 'Allow Google Analytic', NULL, '2021-08-11 15:55:26'),
(207, 'Analytic Tracking Id', 'Analytic Tracking Id', NULL, '2021-08-11 15:55:26'),
(208, 'email type', 'Email Type', NULL, '2021-08-11 15:55:26'),
(209, 'Variable', 'Variable', NULL, '2021-08-11 15:55:26'),
(210, 'Meaning', 'Meaning', NULL, '2021-08-11 15:55:26'),
(211, 'User Name\r\n', 'User Name', NULL, '2021-08-11 15:55:26'),
(212, 'user email', 'User Email', NULL, '2021-08-11 15:55:26'),
(213, 'user phone', 'User Phone', NULL, '2021-08-11 15:55:26'),
(214, 'Message Subject\r\n', 'Message Subject', NULL, '2021-08-11 15:55:26'),
(215, 'Paypal Account Mode', 'Paypal Account Mode', NULL, '2021-08-11 15:55:26'),
(216, 'Paypal Client Id', 'Paypal Client Id', NULL, '2021-08-11 15:55:26'),
(217, 'Paypal Secret Key', 'Paypal Secret Key', NULL, '2021-08-11 15:55:26'),
(218, 'Stripe Key', 'Stripe Key', NULL, '2021-08-11 15:55:26'),
(219, 'Stripe Secret', 'Stripe Secret', NULL, '2021-08-11 15:55:26'),
(220, 'Payment Page\r\n', 'Payment Page', NULL, '2021-08-11 15:55:26'),
(221, 'stripe', 'Stripe', NULL, '2021-08-11 15:55:26'),
(222, 'paypal', 'Paypal', NULL, '2021-08-11 15:55:26'),
(223, 'pay with stripe', 'Pay With Stripe', NULL, '2021-08-11 15:55:26'),
(224, 'pay with paypal', 'Pay with Paypal', NULL, '2021-08-11 15:55:26'),
(225, 'Card Number', 'Card Number', NULL, '2021-08-11 15:55:26'),
(226, 'Cvc', 'CVC', NULL, '2021-08-11 15:55:26'),
(227, 'month', 'Month', NULL, '2021-08-11 15:55:26'),
(228, 'year', 'Year', NULL, '2021-08-11 15:55:26'),
(229, 'pleas input valid information', 'pleas input valid information', NULL, '2021-08-11 15:55:26'),
(230, 'blog', 'Blog', NULL, '2021-08-11 15:55:26'),
(231, 'blog category', 'Blog Category', NULL, '2021-08-11 15:55:26'),
(232, 'blog comment', 'Blog Comment', NULL, '2021-08-11 15:55:26'),
(233, 'new blog category', 'New Blog Category', NULL, '2021-08-11 15:55:26'),
(234, 'Blog Category Table\r\n', 'Category Table', NULL, '2021-08-11 15:55:26'),
(235, 'Blog Category Form\r\n', 'Category Form', NULL, '2021-08-11 15:55:26'),
(236, 'create blog', 'Create Blog', NULL, '2021-08-11 15:55:26'),
(237, 'Blogs Table\r\n', 'Blog Table', NULL, '2021-08-11 15:55:26'),
(238, 'blog form', 'Blog Form', NULL, '2021-08-11 15:55:26'),
(239, 'Show Home Page', 'Show HomePage', NULL, '2021-08-11 15:55:26'),
(241, 'blogs', 'Blogs', NULL, '2021-08-11 15:55:26'),
(242, 'Comments Table\r\n', 'Comments Table', NULL, '2021-08-11 15:55:26'),
(243, 'view ', 'View', NULL, '2021-08-11 15:55:26'),
(244, 'contact', 'Contact', NULL, '2021-08-11 15:55:26'),
(245, 'contact information', 'Contact Info', NULL, '2021-08-11 15:55:26'),
(246, 'contact message', 'Contact Message', NULL, '2021-08-11 15:55:26'),
(247, 'topbar contact', 'Topbar Contact', NULL, '2021-08-11 15:55:26'),
(248, 'footer contact', 'Footer Contact', NULL, '2021-08-11 15:55:26'),
(249, 'social contact', 'Social Contact', NULL, '2021-08-11 15:55:26'),
(250, 'Contact Header', 'Contact Header', NULL, '2021-08-11 15:55:26'),
(251, 'footer about', 'Footer About', NULL, '2021-08-11 15:55:26'),
(252, 'contact phones', 'Contact Phone', NULL, '2021-08-11 15:55:26'),
(253, 'contact emails', 'Contact Email', NULL, '2021-08-11 15:55:26'),
(254, 'Google Map Embed Code', 'Google Map Embed Code', NULL, '2021-08-11 15:55:26'),
(255, 'copyright', 'CopyRight', NULL, '2021-08-11 15:55:26'),
(256, 'topbar phone', 'Topbar Phone', NULL, '2021-08-11 15:55:26'),
(257, 'topbar email', 'Topbar Email', NULL, '2021-08-11 15:55:26'),
(258, 'footer phone', 'Footer Phone', NULL, '2021-08-11 15:55:26'),
(259, 'footer email', 'Footer Email', NULL, '2021-08-11 15:55:26'),
(260, 'footer address', 'Footer Address', NULL, '2021-08-11 15:55:26'),
(261, 'subscriber', 'Subscriber', NULL, '2021-08-11 15:55:26'),
(262, ' email for subscriber', 'Email For Subscriber', NULL, '2021-08-11 16:09:44'),
(263, 'Subscriber Table\r\n', 'Subscriber Table', NULL, '2021-08-11 16:09:44'),
(264, 'admin', 'Admin', NULL, '2021-08-11 16:09:44'),
(265, 'new admin', 'New Admin', NULL, '2021-08-11 16:09:44'),
(266, 'Admin Table\r\n', 'Admin Table', NULL, '2021-08-11 16:09:44'),
(267, 'all admin', 'All Admin', NULL, '2021-08-17 12:35:24'),
(268, 'seo setup', 'Seo Setup', NULL, '2021-08-11 16:09:44'),
(269, 'home page', 'Home Page', NULL, '2021-08-11 16:09:44'),
(270, 'listing page', 'Listing Page', NULL, '2021-08-11 16:09:44'),
(271, 'about us', 'About Us', NULL, '2021-08-11 16:09:44'),
(272, 'pricing plan', 'Pricing Plan', NULL, '2021-08-11 16:09:44'),
(273, 'listing category', 'Listing Category', NULL, '2021-08-11 16:09:44'),
(274, 'blog page', 'Blog Page', NULL, '2021-08-11 16:09:44'),
(275, 'contact us', 'Contact Us', NULL, '2021-08-11 16:09:44'),
(276, 'meta description', 'Meta Description', NULL, '2021-08-11 16:09:44'),
(277, 'home section', 'Home Section', NULL, '2021-08-11 16:09:44'),
(278, 'banner section', 'Banner Section', NULL, '2021-08-11 16:09:44'),
(279, 'feature', 'Feature', NULL, '2021-08-11 16:09:44'),
(280, 'overview', 'Overview', NULL, '2021-08-11 16:09:44'),
(281, 'testimonial', 'Testimonial', NULL, '2021-08-11 16:09:44'),
(282, 'partner', 'Partner', NULL, '2021-08-11 16:09:44'),
(283, 'Existing Banner image\r\n', 'Existing Banner Image', NULL, '2021-08-11 16:09:44'),
(284, 'new banner image', 'New Banner Image', NULL, '2021-08-11 16:09:44'),
(285, 'create feature', 'Create Feature', NULL, '2021-08-11 16:09:44'),
(286, 'features table', 'Feature Table', NULL, '2021-08-11 16:09:44'),
(287, 'icon', 'Icon', NULL, '2021-08-11 16:09:44'),
(288, 'Feature Form\r\n', 'Feature Form', NULL, '2021-08-11 16:09:44'),
(289, 'create overview', 'Create Overview', NULL, '2021-08-11 16:09:44'),
(290, 'overview video', 'Overview Video', NULL, '2021-08-11 16:09:44'),
(291, 'Overview Table\r\n', 'Overview Table', NULL, '2021-08-11 16:09:44'),
(292, 'quantity', 'Qty', NULL, '2021-08-11 16:09:44'),
(293, 'Overview Form\r\n', 'Overview Form', NULL, '2021-08-11 16:09:44'),
(294, 'all overview', 'All Overview', NULL, '2021-08-11 16:09:44'),
(295, 'video link', 'Video Link', NULL, '2021-08-11 16:09:44'),
(296, 'designation', 'Designation', NULL, '2021-08-28 15:59:39'),
(297, 'rating', 'Rating', NULL, '2021-08-11 16:09:44'),
(298, 'creat testimonial', 'Create Testimonial', NULL, '2021-08-11 16:09:44'),
(299, 'testimonial form', 'Testimonial Form', NULL, '2021-08-11 16:09:44'),
(300, 'testimonial table', 'Testimonial Table', NULL, '2021-08-11 16:09:44'),
(301, 'create partner', 'Create Partner', NULL, '2021-08-11 16:09:44'),
(302, 'partner table', 'Partner Table', NULL, '2021-08-11 16:09:44'),
(303, 'profile link', 'Profile Link', NULL, '2021-08-11 16:09:44'),
(304, 'partner form', 'Partner Form', NULL, '2021-08-11 16:09:44'),
(305, 'section control', 'Section Control', NULL, '2021-08-11 16:09:44'),
(306, 'about section', 'About Section', NULL, '2021-08-11 16:09:44'),
(307, 'package section', 'Package Section', NULL, '2021-08-11 16:09:44'),
(308, 'menu section', 'Menu Section', NULL, '2021-08-11 16:09:44'),
(309, 'section name', 'Section Name', NULL, '2021-08-11 16:09:44'),
(310, 'header', 'Header', NULL, '2021-08-11 16:09:44'),
(311, 'content quantity', 'Content Qty', NULL, '2021-08-11 16:09:44'),
(312, 'form', 'Form', NULL, '2021-08-11 16:09:44'),
(313, 'Short title', 'Short Title', NULL, '2021-08-11 16:09:44'),
(314, 'pages', 'Pages', NULL, '2021-08-11 16:09:44'),
(315, 'about', 'About', NULL, '2021-08-11 16:09:44'),
(316, 'Terms and Conditions', 'Terms and Conditions', NULL, '2021-08-11 16:09:44'),
(317, 'Existing Background Image', 'Existing Background Image', NULL, '2021-08-11 16:09:44'),
(318, 'change Background Image', 'Change Background Image', NULL, '2021-08-11 16:09:44'),
(319, 'Privacy Policy\r\n', 'Privacy Policy', NULL, '2021-08-11 16:09:44'),
(320, 'language', 'Language', NULL, '2021-08-11 16:09:44'),
(321, 'website language', 'Website Language', NULL, '2021-08-11 16:09:44'),
(322, 'validation language', 'Validation Language', NULL, '2021-08-11 16:09:44'),
(323, 'notification language', 'Notification Language', NULL, '2021-08-11 16:09:44'),
(324, 'manage staff', 'Manage Staff', NULL, '2021-08-17 12:35:24'),
(325, 'create staff', 'Create Staff', NULL, '2021-08-11 16:09:44'),
(326, 'author', 'Author', NULL, '2021-08-11 16:09:44'),
(327, 'staff form', 'Staff Form', NULL, '2021-08-11 16:09:44'),
(328, 'staff table', 'Staff Table', NULL, '2021-08-11 16:09:44'),
(329, 'all staff', 'All Staff', NULL, '2021-08-11 16:09:44'),
(330, 'user', 'User', NULL, '2021-08-11 16:09:44'),
(331, 'user table', 'User Table', NULL, '2021-08-11 16:09:44'),
(332, 'User information\r\n', 'User Information', NULL, '2021-08-11 16:09:44'),
(333, 'about user', 'About User', NULL, '2021-08-11 16:09:44'),
(334, 'review', 'Review', NULL, '2021-08-11 16:09:44'),
(335, 'review table', 'Review Table', NULL, '2021-08-11 16:09:44'),
(336, 'create package  ', 'Create Package', NULL, '2021-08-11 16:09:44'),
(337, 'Package Table', 'Package Table', NULL, '2021-08-11 16:09:44'),
(338, 'package type', 'Package Type', NULL, '2021-08-11 16:09:44'),
(339, 'all package', 'All Package', NULL, '2021-08-11 16:09:44'),
(340, 'Package Form\r\n', 'Package Form', NULL, '2021-08-11 16:09:44'),
(341, 'paid', 'Paid', NULL, '2021-08-11 16:09:44'),
(342, 'free', 'Free', NULL, '2021-08-11 16:09:44'),
(343, 'package name', 'Package name', NULL, '2021-08-11 16:09:44'),
(344, 'package price', 'Package Price', NULL, '2021-08-11 16:09:44'),
(345, 'number of days', 'Number of Days', NULL, '2021-08-11 16:09:44'),
(346, 'number of aminities', 'Number of Aminities', NULL, '2021-08-11 16:09:44'),
(347, 'number of photo', 'Number Of Photo', NULL, '2021-08-11 16:09:44'),
(348, 'number of video', 'Number Of Video', NULL, '2021-08-11 16:09:44'),
(349, 'number of listing', 'Number Of Listing', NULL, '2021-08-11 16:09:44'),
(350, 'allow featured', 'Allow Featured', NULL, '2021-08-11 16:09:44'),
(351, 'number of featured listing', 'Number Of Featured Listing', NULL, '2021-08-11 16:09:44'),
(352, 'create aminity', 'Create Amintiy', NULL, '2021-08-11 16:09:44'),
(353, 'aminity table', 'Aminities Table', NULL, '2021-08-11 16:09:44'),
(354, 'aminity form', 'Aminity Form', NULL, '2021-08-11 16:09:44'),
(355, 'aminities', 'Aminities', NULL, '2021-08-11 16:09:44'),
(356, 'aminity', 'Aminity', NULL, '2021-08-11 16:09:44'),
(357, 'location table', 'Location', NULL, '2021-08-11 16:09:44'),
(358, 'create location', 'Create Location', NULL, '2021-08-11 16:09:44'),
(359, 'location form', 'Location Form', NULL, '2021-08-11 16:09:44'),
(360, 'locations', 'Locations', NULL, '2021-08-11 16:09:44'),
(361, 'icon image', 'Icon Image', NULL, '2021-08-11 16:09:44'),
(362, 'create listing category', 'Create Listing Category', NULL, '2021-08-11 16:09:44'),
(363, 'listing category table', 'Listing Category Table', NULL, '2021-08-11 16:16:22'),
(364, 'listing categories', 'Listing Categories', NULL, '2021-08-11 16:16:22'),
(365, 'Listing Category Form\r\n', 'Listing Category Form', NULL, '2021-08-11 16:16:22'),
(366, 'old icon image', 'Old Icon Image', NULL, '2021-08-11 16:16:22'),
(367, 'all listing', 'All Listing', NULL, '2021-08-11 16:16:22'),
(368, 'my listing', 'My Listing', NULL, '2021-08-11 16:16:22'),
(369, 'pending listing', 'Pending Listing', NULL, '2021-08-11 16:16:22'),
(370, 'listing table', 'Listing Table', NULL, '2021-08-11 16:16:22'),
(371, 'create listing', 'Create Listing', NULL, '2021-08-11 16:16:22'),
(372, 'others', 'Others', NULL, '2021-08-11 16:16:22'),
(373, 'manage image', 'Manage Image', NULL, '2021-08-11 16:16:22'),
(374, 'manage video', 'Manage Video', NULL, '2021-08-11 16:16:22'),
(375, 'manage schedule', 'Manage Schedule', NULL, '2021-08-11 16:16:22'),
(376, 'order', 'Order', NULL, '2021-08-11 16:16:22'),
(377, 'order details', 'Order Details', NULL, '2021-08-11 16:16:22'),
(378, 'order table', 'Order Table', NULL, '2021-08-11 16:16:22'),
(379, 'listing form', 'Listing Form', NULL, '2021-08-11 16:16:22'),
(380, 'allow verified', 'Allow Verified', NULL, '2021-08-11 16:16:22'),
(381, 'listing image', 'Listing Image', NULL, '2021-08-11 16:16:22'),
(382, 'Logo and Thumbnail', 'Logo and Thumbnail', NULL, '2021-08-11 16:16:22'),
(383, 'listing slider image', 'Listing Slider Image', NULL, '2021-08-11 16:16:22'),
(384, 'Slider Image not available', 'Slider Image Not Available', NULL, '2021-08-11 16:16:22'),
(385, 'listing video', 'Listing Video', NULL, '2021-08-11 16:16:22'),
(386, 'Video Not Available\r\n', 'Video Not Available', NULL, '2021-08-11 16:16:22'),
(387, 'listing schedule', 'Listing Schedule', NULL, '2021-08-11 16:16:22'),
(388, 'total listing', 'Total Listing', NULL, '2021-08-11 16:16:22'),
(389, 'total user', 'Total User', NULL, '2021-08-11 16:16:22'),
(390, 'earnings', 'Earnings', NULL, '2021-08-11 16:16:22'),
(391, 'monthly', 'Monthly', NULL, '2021-08-11 16:16:22'),
(392, 'total', 'Total', NULL, '2021-08-11 16:16:22'),
(393, 'total subscriber', 'Total Subscriber', NULL, '2021-08-11 16:16:22'),
(394, 'total order', 'Total Order', NULL, '2021-08-11 16:16:22'),
(395, 'blog not found', 'Blog Not Found', NULL, '2021-08-11 16:16:22'),
(396, 'listing not found', 'Listing Not Found', NULL, '2021-08-11 16:16:22'),
(397, 'day table', 'Day Table', NULL, '2021-08-11 16:16:22'),
(398, 'day form', 'Day Form', NULL, '2021-08-11 16:16:22'),
(399, 'default day', 'Default Day', NULL, '2021-08-11 16:16:22'),
(400, 'custom day', 'Custom Day', NULL, '2021-08-11 16:16:22'),
(401, 'total amount', 'Total Amount', NULL, '2021-08-11 16:16:22'),
(402, 'pre notification day for expired order ', 'Pre Notification Day For Expired Order', NULL, '2021-08-11 16:16:22'),
(403, 'message from', 'Message From', NULL, '2021-08-17 12:35:25'),
(404, 'admin login', 'Admin Login', NULL, '2021-08-11 16:18:05'),
(405, 'forget password', 'Forgot Password', NULL, '2021-08-11 16:18:05'),
(406, 'admin forget password', 'Admin Forgot Password', NULL, '2021-08-11 16:18:05'),
(407, 'Admin Reset Password\r\n', 'Admin Reset Password', NULL, '2021-08-11 16:18:05'),
(408, 'staff login', 'Staff Login', NULL, '2021-08-11 16:18:05'),
(409, 'Staff Forget Password\r\n', 'Staff Forgot Password', NULL, '2021-08-11 16:18:05'),
(410, 'staff reset password', 'Staff Reset Password', NULL, '2021-08-11 16:18:05'),
(411, 'custom page', 'Custom Page', NULL, '2021-08-11 16:18:05'),
(412, 'create custom page', 'Create Page', NULL, '2021-08-11 16:18:05'),
(413, 'Custom Page Table\r\n', 'Custom Page Table', NULL, '2021-08-11 16:18:05'),
(414, 'page name', 'Page Name', NULL, '2021-08-11 16:18:05'),
(415, 'all custom page', 'All Custom Page', NULL, '2021-08-11 16:18:05'),
(416, 'custom page form', 'Custom Page Form', NULL, '2021-08-11 16:18:05'),
(417, 'package details', 'Package Details', NULL, '2021-08-11 16:18:05'),
(418, 'load more listing', 'load more listing', NULL, NULL),
(419, 'Already Bought', 'Already Bought', NULL, '2021-08-17 12:35:25'),
(420, 'expired', 'Expired', NULL, '2021-08-17 12:35:25'),
(421, 'Extend', 'Extend', NULL, NULL),
(422, 'renew', 'Renew', NULL, '2021-08-17 12:35:25'),
(423, 'pagination', 'Pagination', NULL, '2021-08-17 12:35:25'),
(424, 'For Unlimitd Quantity', 'For Unlimitd Quantity', NULL, NULL),
(425, 'Unlimited', 'Unlimited', NULL, NULL),
(426, 'Currently Active', 'Currently Active', NULL, NULL),
(427, 'Payment Status', 'Payment Status', NULL, NULL),
(428, 'Success', 'Success', NULL, NULL),
(429, 'Free', 'Free', NULL, NULL),
(430, 'Print', 'Print', NULL, NULL),
(431, 'Maximum Listing', 'Maximum Listing', NULL, NULL),
(432, 'Maximum Photo', 'Maximum Photo', NULL, NULL),
(433, 'Maximum Video', 'Maximum Video', NULL, NULL),
(434, 'Maximum Aminities', 'Maximum Aminities', NULL, NULL),
(435, 'Currently Active Package', 'Currently Active Package', NULL, NULL),
(436, 'favourite', 'Favourite', NULL, NULL),
(437, 'Image And File', 'Image And File', NULL, NULL),
(438, 'Profile Banner Image', 'Profile Banner Image', NULL, NULL),
(439, 'User Listing', 'User Listing', NULL, NULL),
(440, 'Old Pdf', 'Old Pdf', NULL, NULL),
(441, 'Featured Listing Not Available\r\n', 'Featured Listing Not Available', NULL, '2021-08-28 15:59:39'),
(442, 'Card Icon', 'Card Icon', NULL, NULL),
(443, 'Card Icon Form', 'Card Icon Form', NULL, NULL),
(444, 'New Icon', 'New Icon', NULL, NULL),
(445, 'Icon Table', 'Icon Table', NULL, NULL),
(446, 'Allow Footer Credit Card Section', 'Allow Footer Credit Card Section', NULL, NULL),
(447, 'Email Configuration', 'Email Configuration', NULL, NULL),
(448, 'Mail Type', 'Mail Type', NULL, NULL),
(449, 'Mail Host', 'Mail Host', NULL, NULL),
(450, 'Email Password', 'Email Password', NULL, NULL),
(451, 'SMTP User Name', 'SMTP User Name', NULL, NULL),
(452, 'SMTP Password', 'SMTP Password', NULL, NULL),
(453, 'Mail Encryption', 'Mail Encryption', NULL, NULL),
(454, 'Mail Port', 'Mail Port', NULL, NULL),
(455, 'Closed', 'Closed', NULL, NULL),
(456, 'Submit Review', 'Submit Review', NULL, NULL),
(457, 'Claim', 'Claim', NULL, NULL),
(458, 'Claimed', 'Claimed', NULL, NULL),
(459, 'Claim Form', 'Claim Form', NULL, NULL),
(460, 'Send Claim', 'Send Claim', NULL, NULL),
(461, 'Claim Table', 'Claim Table', NULL, NULL),
(462, 'Verify', 'Verify', NULL, NULL),
(463, 'About', 'About', NULL, NULL),
(464, 'Feature', 'Feature', NULL, NULL),
(465, 'Overview ', 'Overview', NULL, '2021-08-28 15:59:40'),
(466, 'Partner ', 'Partner', NULL, '2021-08-28 15:59:40'),
(467, 'Package', 'Package', NULL, NULL),
(468, 'Subscriber', 'Subscriber', NULL, NULL),
(469, 'Banner', 'Banner', NULL, NULL),
(470, 'location ', 'Location', NULL, '2021-08-28 15:59:40'),
(471, 'listings', 'Listings', NULL, NULL),
(472, 'Blog', 'Blog', NULL, NULL),
(473, 'testimonial ', 'Testimonial', NULL, '2021-08-28 15:59:40'),
(474, 'Banner Category', 'Banner Category', NULL, NULL),
(475, 'Are you sure want to start with this package ?', 'Are you sure want to start with this package ?', NULL, NULL),
(476, 'Active Listing Not Available', 'Active Listing Not Available', NULL, NULL),
(477, 'Sidebar Header', 'Sidebar Header', NULL, NULL),
(478, 'Sidebar Header Icon', 'Sidebar Header Icon', NULL, NULL),
(479, 'Currency Rate', 'Currency Rate', NULL, NULL),
(480, 'amount of real currency', 'Amount Of Real Currency', NULL, NULL),
(481, 'Amount Of USD', 'Amount Of USD', NULL, NULL),
(482, 'Footer Logo', 'Footer Logo', NULL, NULL),
(483, 'Existing Footer Logo', 'Existing Footer Logo', NULL, NULL);

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
(53, '2021_06_07_155525_create_terms_policies_table', 13),
(55, '2014_10_12_000000_create_users_table', 14),
(56, '2014_10_12_100000_create_password_resets_table', 14),
(57, '2019_08_19_000000_create_failed_jobs_table', 14),
(58, '2021_06_01_154935_create_doctors_table', 14),
(59, '2021_06_01_154955_create_admins_table', 14),
(60, '2021_06_02_061442_create_departments_table', 14),
(61, '2021_06_02_061452_create_department_images_table', 14),
(62, '2021_06_02_105225_create_locations_table', 14),
(63, '2021_06_02_113729_create_blog_categories_table', 14),
(64, '2021_06_02_115615_create_blogs_table', 14),
(65, '2021_06_03_041937_create_features_table', 14),
(66, '2021_06_03_060558_create_home_sections_table', 14),
(67, '2021_06_03_143301_create_services_table', 14),
(68, '2021_06_03_143735_create_service_images_table', 14),
(69, '2021_06_03_161038_create_service_faqs_table', 14),
(70, '2021_06_04_041544_create_department_faqs_table', 14),
(71, '2021_06_04_053020_create_videos_table', 14),
(72, '2021_06_06_042100_create_faq_categories_table', 14),
(73, '2021_06_06_045120_create_faqs_table', 14),
(74, '2021_06_06_152014_create_blog_comments_table', 14),
(75, '2021_06_06_152604_create_testimonials_table', 14),
(76, '2021_06_07_050501_create_abouts_table', 14),
(77, '2021_06_07_101918_create_doctor_social_links_table', 14),
(78, '2021_06_07_160726_create_condition_privacies_table', 14),
(79, '2021_06_09_075611_create_contact_messages_table', 15),
(82, '2021_06_09_085640_create_contact_us_table', 16),
(83, '2021_06_09_131532_create_sliders_table', 17),
(84, '2021_06_10_044031_create_medicines_table', 18),
(85, '2021_06_10_090440_create_schedules_table', 19),
(86, '2021_06_10_093637_create_days_table', 20),
(87, '2021_06_11_083301_create_contact_information_table', 21),
(88, '2021_06_11_133427_create_works_table', 22),
(89, '2021_06_11_133553_create_work_faqs_table', 22),
(90, '2021_06_12_075620_create_appointments_table', 23),
(91, '2021_06_12_083244_create_leaves_table', 23),
(92, '2021_06_14_041145_create_habits_table', 24),
(93, '2021_06_14_050412_create_prescribes_table', 25),
(94, '2021_06_14_102344_create_advice_table', 26),
(95, '2021_06_15_111126_create_subscribes_table', 27),
(96, '2021_06_16_135618_create_payment_accounts_table', 28),
(97, '2021_06_18_042314_create_settings_table', 29),
(98, '2021_06_18_052104_create_manage_navigations_table', 30),
(99, '2021_06_18_052805_create_manage_pages_table', 31),
(100, '2021_06_19_052404_create_partners_table', 32),
(102, '2021_06_19_154658_create_custome_pages_table', 33),
(103, '2021_06_20_163121_create_overviews_table', 34),
(106, '2021_06_24_005829_create_medicine_types_table', 35),
(107, '2021_06_24_011107_create_orders_table', 35),
(111, '2021_06_24_175001_create_cancle_appointments_table', 36),
(113, '2021_06_25_041121_create_cancel_orders_table', 37),
(114, '2021_06_27_114416_create_banner_images_table', 38),
(117, '2021_06_28_100743_create_navigations_table', 39),
(119, '2021_06_28_110714_create_manage_texts_table', 40),
(121, '2021_07_01_113430_create_messages_table', 41),
(123, '2021_07_02_081300_create_manage_texts_table', 42),
(126, '2021_07_04_073021_create_email_templates_table', 43),
(128, '2021_07_05_091055_create_manage_texts_table', 44),
(129, '2021_07_05_153851_create_validation_texts_table', 45),
(130, '2021_07_06_023416_create_notification_texts_table', 46),
(131, '2021_07_08_132239_create_subscriber_emails_table', 47),
(134, '2021_07_18_094223_create_listing_categories_table', 48),
(135, '2021_07_18_164612_create_subscriber_contents_table', 49),
(136, '2021_07_18_211825_create_overview_videos_table', 50),
(137, '2021_07_19_120309_create_about_sections_table', 51),
(138, '2021_07_20_091642_create_aminities_table', 52),
(140, '2021_07_20_095410_create_listing_packages_table', 53),
(141, '2021_07_20_154151_create_listings_table', 54),
(142, '2021_07_20_162410_create_listing_images_table', 55),
(143, '2021_07_20_163439_create_listing_videos_table', 56),
(144, '2021_07_20_163626_create_listing_aminities_table', 57),
(145, '2021_07_20_211256_create_package_sections_table', 58),
(146, '2021_07_22_130153_create_listing_schedules_table', 59),
(147, '2021_07_24_220152_create_wishlishts_table', 60),
(148, '2021_07_24_222009_create_wishlists_table', 61),
(150, '2021_07_25_090126_create_orders_table', 62),
(151, '2021_07_26_123955_create_listing_reviews_table', 63),
(153, '2021_07_28_232258_create_seo_texts_table', 64),
(154, '2021_07_30_091313_create_validation_texts_table', 65),
(155, '2021_07_30_140006_create_modal_consents_table', 66),
(156, '2021_08_06_192922_create_custom_pages_table', 67),
(157, '2021_08_15_131338_create_paginators_table', 68),
(158, '2021_08_23_152942_create_payment_card_logos_table', 69),
(159, '2021_08_23_170702_create_email_configurations_table', 70),
(160, '2021_08_24_155414_create_listing_claimes_table', 71);

-- --------------------------------------------------------

--
-- Table structure for table `modal_consents`
--

CREATE TABLE `modal_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `border` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modal_consents`
--

INSERT INTO `modal_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'small', '#4ac4b6', '#f4f1f1', '#da2b2b', '#ecf1f3', '#111fee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'More Info', 'Yes', NULL, NULL, '2021-08-23 05:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `name`, `navbar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 1, NULL, '2021-08-12 05:42:48'),
(2, 'Listing', 'Listings', 1, NULL, '2021-08-24 12:28:02'),
(3, 'Pages', 'Pages', 1, NULL, '2021-08-12 05:42:48'),
(4, 'About Us', 'About Us', 1, NULL, '2021-08-12 05:42:48'),
(5, 'Pricing Plan', 'Pricing Plan', 1, NULL, '2021-08-12 05:42:48'),
(6, 'Listing Category', 'Listings Category', 1, NULL, '2021-08-24 12:28:19'),
(7, 'Blog', 'Blog', 1, NULL, '2021-08-12 05:42:48'),
(8, 'Contact Us', 'Contact', 1, NULL, '2021-08-12 05:42:48'),
(9, 'Add Listing', 'Add Listing', 1, NULL, '2021-08-12 05:42:48'),
(10, 'Dashboard', 'Dashboard', 1, NULL, '2021-08-12 05:42:48'),
(11, 'Register', 'Register', 1, NULL, '2021-08-12 05:42:48'),
(12, 'Login', 'Login', 1, NULL, '2021-08-12 05:42:48'),
(13, 'Forget Password', 'Forget Password', 1, NULL, '2021-08-12 05:42:48'),
(14, 'Reset Password', 'Reset Password', 1, NULL, '2021-08-12 05:42:48'),
(15, 'Terms and Condition', 'Terms and Conditions', 1, NULL, '2021-08-24 12:28:09'),
(16, 'Privacy Policy', 'Privacy Policy', 1, NULL, '2021-08-12 05:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_texts`
--

INSERT INTO `notification_texts` (`id`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'Comment Submited successfully', 'Comment Submited successfully', NULL, '2021-07-31 18:11:59'),
(2, 'Subscribed successfully', 'Subscribed successfully', NULL, '2021-07-31 18:11:59'),
(3, 'Already Subscribed', 'Already Subscribed', NULL, '2021-07-31 18:11:59'),
(4, 'Verified successfully', 'Verified successfully', NULL, '2021-07-31 18:11:59'),
(5, 'Invalid token', 'Invalid token', NULL, '2021-07-31 18:11:59'),
(6, 'Message Send Successfully', 'Message Send Successfully', NULL, '2021-07-31 18:11:59'),
(7, 'Something Went Wrong', 'Something Went Wrong', NULL, '2021-07-31 18:11:59'),
(8, 'Updated Successfully', 'Updated Successfully', NULL, '2021-08-11 16:19:23'),
(9, 'Created Successfully', 'Created Successfuly', NULL, '2021-08-11 16:19:23'),
(10, 'Deleted Successfully\r\n', 'Deleted Successfuly', NULL, '2021-08-11 16:19:23'),
(11, 'Active Successfully', 'Active Successfuly', NULL, '2021-08-11 16:19:23'),
(12, 'In Active Successfully', 'InActive Successfuly', NULL, '2021-08-11 16:19:23'),
(13, 'Password Change Successfully', 'Password Change Successfully', NULL, NULL),
(14, 'Old Password does not match', 'Old Password does not match', NULL, NULL),
(16, 'Comment Already Submited', 'Comment Already Submited', NULL, NULL),
(17, 'Maximum Listing Already Exist', 'Maximum Listing Already Exist', NULL, NULL),
(18, 'Day Already Exist', 'Day Already Exist', NULL, NULL),
(19, 'Already Purchase this Package', 'Already Purchase this Package', NULL, NULL),
(20, 'Payment Successfully', 'Payment Successfully', NULL, NULL),
(21, 'Payment Faild', 'Payment Faild', NULL, NULL),
(22, 'Wishlist Addedd Successfully', 'Wishlist Addedd Successfully', NULL, NULL),
(23, 'Already Added in Wishlist', 'Already Added in Wishlist', NULL, NULL),
(24, 'email send successfully', 'Email send successfully', NULL, '2021-08-19 11:36:52'),
(25, 'invalid email', 'Invalid email', NULL, '2021-08-19 11:36:52'),
(26, 'login successfully', 'Login success', NULL, '2021-08-19 11:36:52'),
(28, 'invalid Login Information', 'Invalid Login Information', NULL, '2021-08-19 11:36:52'),
(29, 'inactive user', 'Inactive user', NULL, '2021-08-19 11:36:52'),
(30, 'Logout Successfully', 'Logout Successfully', NULL, NULL),
(31, 'Thanks For Registration. Before Login, Please Verify Your Email.', 'Thanks For Registration. Before Login, Please Verify Your Email.', NULL, '2021-08-23 05:38:04'),
(32, 'Are you sure want to delete this item? ', 'Are you sure want to delete this item?', NULL, '2021-07-31 18:11:26'),
(33, 'Every Field Will Be Required', 'Every Field Will Be Required', NULL, NULL),
(34, 'Forgot Password Token has been Sent to Your Email', 'Forgot Password Token has been Sent to Your Email', NULL, NULL),
(35, 'email does not exist', 'Email does not exist', NULL, '2021-08-19 11:36:52'),
(36, 'Please Set your new password', 'Please Set your new password', NULL, NULL),
(37, 'login here', 'Login here', NULL, '2021-08-19 11:36:52'),
(38, 'Your package has expired', 'Your package has expired', NULL, '2021-08-11 16:19:23'),
(39, 'You have no listing', 'You have no listing', NULL, NULL),
(40, 'Review Already Submited', 'Review Already Submited', NULL, NULL),
(41, 'Claim Send Successfully', 'Claim Send Successfully', NULL, NULL),
(42, 'Are you sure want to Verify this item ?', 'Are you sure want to Verify this item ?', NULL, NULL),
(43, 'Verify Successfully', 'Verify Successfully', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_package_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `expired_day` int(11) NOT NULL,
  `expired_date` date DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `amount_usd` decimal(10,0) NOT NULL,
  `amount_real_currency` int(11) NOT NULL,
  `currency_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `listing_package_id`, `purchase_date`, `expired_day`, `expired_date`, `payment_method`, `transaction_id`, `payment_status`, `amount_usd`, `amount_real_currency`, `currency_type`, `currency_icon`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 4, '2021-08-16', 5, '2021-08-21', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-16 10:08:13', '2021-09-02 17:05:22'),
(5, 2, 1, '2021-08-16', 30, '2021-09-15', 'Stripe', 'txn_3JP69EHWLjS9yT0S11S8aLtn', 1, '0', 0, '', '', 0, '2021-08-16 13:46:40', '2021-09-02 17:05:22'),
(6, 2, 2, '2021-08-16', 40, '2021-09-25', 'Paypal', 'PAYID-MENG5YI1JM239663A577813X', 1, '0', 0, '', '', 0, '2021-08-16 13:58:47', '2021-09-02 17:05:22'),
(7, 2, 2, '2021-08-16', 40, '2021-09-25', 'Stripe', 'txn_3JP6rwHWLjS9yT0S1mch9O72', 1, '0', 0, '', '', 0, '2021-08-16 14:32:51', '2021-09-02 17:05:22'),
(8, 2, 2, '2021-08-16', 40, '2021-09-25', 'Paypal', 'PAYID-MENHPQI85K28586SS923711U', 1, '0', 0, '', '', 0, '2021-08-16 14:36:16', '2021-09-02 17:05:22'),
(9, 2, 1, '2021-08-16', 30, '2021-09-15', 'Stripe', 'txn_3JP737HWLjS9yT0S0KzqYpmy', 1, '0', 0, '', '', 0, '2021-08-16 14:44:24', '2021-09-02 17:05:22'),
(10, 2, 2, '2021-08-16', 40, '2021-09-25', 'Paypal', 'PAYID-MENHUJY2WS74191V3662105C', 1, '0', 0, '', '', 0, '2021-08-16 14:46:42', '2021-09-02 17:05:22'),
(11, 2, 2, '2021-08-16', 40, '2021-09-25', 'Stripe', 'txn_3JP8BLHWLjS9yT0S19EqOyW3', 1, '0', 0, '', '', 0, '2021-08-16 15:56:58', '2021-09-02 17:05:22'),
(12, 2, 1, '2021-08-16', 30, '2021-09-15', 'Stripe', 'txn_3JP8LZHWLjS9yT0S1inWE3WR', 1, '0', 0, '', '', 0, '2021-08-16 16:07:31', '2021-09-02 17:05:22'),
(13, 2, 1, '2021-08-16', 30, '2021-09-15', 'Paypal', 'PAYID-MENI3SQ4LT39049M43020543', 1, '0', 0, '', '', 0, '2021-08-16 16:10:43', '2021-09-02 17:05:22'),
(14, 2, 1, '2021-08-16', 30, '2021-09-15', 'Paypal', 'PAYID-MENI3SQ4LT39049M43020543', 1, '0', 0, '', '', 0, '2021-08-16 16:11:23', '2021-09-02 17:05:22'),
(15, 2, 1, '2021-08-16', 30, '2021-09-15', 'Paypal', 'PAYID-MENJYXA2VB86833JM359342G', 1, '0', 0, '', '', 0, '2021-08-16 17:12:17', '2021-09-02 17:05:22'),
(16, 2, 2, '2021-08-16', 40, '2021-09-25', 'Paypal', 'PAYID-MENJ3NI3JE42487E5241142R', 1, '0', 0, '', '', 0, '2021-08-16 17:17:56', '2021-09-02 17:05:22'),
(17, 2, 2, '2021-08-16', 40, '2021-09-25', 'Stripe', 'txn_3JP9elHWLjS9yT0S1AVeUCRT', 1, '0', 0, '', '', 0, '2021-08-16 17:31:30', '2021-09-02 17:05:22'),
(18, 2, 1, '2021-08-16', 30, '2021-09-15', 'Stripe', 'txn_3JP9iKHWLjS9yT0S1QqzuJI4', 1, '0', 0, '', '', 0, '2021-08-16 17:35:07', '2021-09-02 17:05:22'),
(19, 2, 1, '2021-08-16', 30, '2021-09-15', 'Paypal', 'PAYID-MENKGYQ4VM91689HD921791S', 1, '0', 0, '', '', 0, '2021-08-16 17:42:48', '2021-09-02 17:05:22'),
(20, 2, 5, '2021-08-16', -1, NULL, 'Stripe', 'txn_3JP9zRHWLjS9yT0S1PG1nAeb', 1, '0', 0, '', '', 0, '2021-08-16 17:52:51', '2021-09-02 17:05:22'),
(21, 2, 5, '2021-08-16', -1, NULL, 'Paypal', 'PAYID-MENKNHI9AF87630MM090503R', 1, '0', 0, '', '', 0, '2021-08-16 17:55:56', '2021-09-02 17:05:22'),
(22, 2, 1, '2021-08-17', 30, '2021-09-16', 'Stripe', 'txn_3JPIQhHWLjS9yT0S0RUowYKH', 1, '0', 0, '', '', 0, '2021-08-17 02:53:29', '2021-09-02 17:05:22'),
(23, 2, 5, '2021-08-17', -1, NULL, 'Stripe', 'txn_3JPISuHWLjS9yT0S0KunvRhe', 1, '0', 0, '', '', 0, '2021-08-17 02:55:47', '2021-09-02 17:05:22'),
(24, 2, 5, '2021-08-17', -1, NULL, 'Stripe', 'txn_3JPIWeHWLjS9yT0S0u0ECosj', 1, '0', 0, '', '', 0, '2021-08-17 02:59:39', '2021-09-02 17:05:22'),
(25, 2, 2, '2021-08-17', 40, '2021-09-26', 'Stripe', 'txn_3JPIZIHWLjS9yT0S1PstqqEK', 1, '0', 0, '', '', 0, '2021-08-17 03:02:23', '2021-09-02 17:05:22'),
(26, 2, 2, '2021-08-17', 40, '2021-09-26', 'Stripe', 'txn_3JPIZJHWLjS9yT0S04tVwpM9', 1, '0', 0, '', '', 0, '2021-08-17 03:02:25', '2021-09-02 17:05:22'),
(27, 2, 5, '2021-08-17', -1, NULL, 'Paypal', 'PAYID-MENSTIA2U972437UB5662515', 1, '0', 0, '', '', 0, '2021-08-17 03:15:19', '2021-09-02 17:05:22'),
(28, 2, 1, '2021-08-17', 30, NULL, 'Paypal', 'PAYID-MENSVBQ38T78360XX1837307', 1, '0', 0, '', '', 0, '2021-08-17 03:18:46', '2021-09-02 17:05:22'),
(29, 2, 5, '2021-08-17', -1, NULL, 'Paypal', 'PAYID-MENSVTY1JS49724VX140672G', 1, '0', 0, '', '', 0, '2021-08-17 03:20:02', '2021-09-02 17:05:22'),
(30, 2, 2, '2021-08-17', 40, '2021-09-16', 'Stripe', 'txn_3JPJDKHWLjS9yT0S1rhxmGDr', 1, '0', 0, '', '', 0, '2021-08-17 03:43:44', '2021-09-02 17:05:22'),
(31, 2, 4, '2021-08-18', 5, '2021-08-23', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-18 05:12:24', '2021-09-02 17:05:22'),
(32, 2, 5, '2021-08-18', -1, NULL, 'Stripe', 'txn_3JPiTDHWLjS9yT0S0M1vKHU3', 1, '0', 0, '', '', 0, '2021-08-18 06:41:54', '2021-09-02 17:05:22'),
(33, 2, 3, '2021-08-20', -1, '2021-08-12', 'Stripe', 'txn_3JQOo6HWLjS9yT0S0dCG3LUE', 1, '0', 0, '', '', 0, '2021-08-20 03:54:17', '2021-09-02 17:05:22'),
(34, 2, 1, '2021-08-20', 30, '2021-09-19', 'Stripe', 'txn_3JQQ2nHWLjS9yT0S0Xi73UOi', 1, '0', 0, '', '', 0, '2021-08-20 05:13:31', '2021-09-02 17:05:22'),
(35, 2, 5, '2021-08-20', -1, NULL, 'Stripe', 'txn_3JQQRrHWLjS9yT0S1JiQBzXX', 1, '0', 0, '', '', 0, '2021-08-20 05:39:24', '2021-09-02 17:05:22'),
(36, 2, 1, '2021-08-20', 30, '2021-09-19', 'Stripe', 'txn_3JQUBmHWLjS9yT0S0q0F0VrD', 1, '0', 0, '', '', 0, '2021-08-20 09:39:08', '2021-09-02 17:05:22'),
(37, 2, 4, '2021-08-20', 5, '2021-08-25', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-20 09:43:22', '2021-09-02 17:05:22'),
(38, 2, 1, '2021-08-20', 30, '2021-09-19', 'Stripe', 'txn_3JQUHrHWLjS9yT0S0hkym7a5', 1, '0', 0, '', '', 0, '2021-08-20 09:45:20', '2021-09-02 17:05:22'),
(40, 2, 1, '2021-08-20', 30, '2021-09-19', 'Stripe', 'txn_3JQUlBHWLjS9yT0S1xGIM4zP', 1, '0', 0, '', '', 0, '2021-08-20 10:15:37', '2021-09-02 17:05:22'),
(41, 3, 2, '2021-08-20', 40, '2021-09-29', 'Stripe', 'txn_3JQUrkHWLjS9yT0S0C6khVsZ', 1, '0', 0, '', '', 1, '2021-08-20 10:22:24', '2021-08-20 10:22:24'),
(42, 2, 5, '2021-08-20', -1, NULL, 'Stripe', 'txn_3JQUshHWLjS9yT0S0ml1FLBW', 1, '0', 0, '', '', 0, '2021-08-20 10:23:23', '2021-09-02 17:05:22'),
(43, 2, 1, '2021-08-20', 30, '2021-09-19', 'Stripe', 'txn_3JQUv3HWLjS9yT0S1DYfsJ8a', 1, '0', 0, '', '', 0, '2021-08-20 10:25:49', '2021-09-02 17:05:22'),
(44, 2, 4, '2021-08-20', 5, '2021-08-25', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-20 10:26:35', '2021-09-02 17:05:22'),
(45, 2, 5, '2021-08-20', -1, NULL, 'Stripe', 'txn_3JQV2PHWLjS9yT0S1DUkVP4J', 1, '0', 0, '', '', 0, '2021-08-20 10:33:25', '2021-09-02 17:05:22'),
(46, 2, 4, '2021-08-20', 5, '2021-08-25', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-20 10:34:10', '2021-09-02 17:05:22'),
(47, 2, 3, '2021-08-20', 300, '2022-06-16', 'Paypal', 'PAYID-MEPYLWY18106934YE0563932', 1, '0', 0, '', '', 0, '2021-08-20 10:38:57', '2021-09-02 17:05:22'),
(48, 2, 4, '2021-08-23', 5, '2021-08-28', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-23 09:21:21', '2021-09-02 17:05:22'),
(49, 2, 5, '2021-08-23', -1, NULL, 'Stripe', 'txn_3JReTNHWLjS9yT0S03ZwSorp', 1, '0', 0, '', '', 0, '2021-08-23 14:49:59', '2021-09-02 17:05:22'),
(50, 2, 1, '2021-08-25', 30, '2021-09-24', 'Stripe', 'txn_3JSCmcHWLjS9yT0S0Py1fgve', 1, '0', 0, '', '', 0, '2021-08-25 03:28:12', '2021-09-02 17:05:22'),
(51, 2, 5, '2021-08-25', -1, NULL, 'Paypal', 'PAYID-MES3R7I4AM84733290514429', 1, '0', 0, '', '', 0, '2021-08-25 03:29:36', '2021-09-02 17:05:22'),
(52, 2, 4, '2021-08-25', 5, '2021-08-30', NULL, NULL, 0, '0', 0, '', '', 0, '2021-08-25 07:23:18', '2021-09-02 17:05:22'),
(53, 2, 3, '2021-08-25', 300, '2022-06-21', 'Stripe', 'txn_3JSGSuHWLjS9yT0S0CKwYhKS', 1, '0', 0, '', '', 0, '2021-08-25 07:24:08', '2021-09-02 17:05:22'),
(54, 2, 5, '2021-08-25', -1, NULL, 'Paypal', 'PAYID-MES7B7I3CR58323437142052', 1, '0', 0, '', '', 0, '2021-08-25 07:28:20', '2021-09-02 17:05:22'),
(55, 18, 3, '2021-08-27', 400, '2022-06-23', 'Stripe', 'txn_3JT0c2HWLjS9yT0S13hMz7w4', 1, '0', 0, '', '', 1, '2021-08-27 08:40:35', '2021-08-27 08:40:35'),
(56, 2, 4, '2021-09-02', 520, '2023-02-04', 'Stripe', 'txn_3JVIGsHWLjS9yT0S1UDJSx9p', 1, '0', 0, '', '', 0, '2021-09-02 15:56:13', '2021-09-02 17:05:22'),
(57, 2, 1, '2021-09-02', 30, '2021-10-02', NULL, NULL, 0, '0', 0, 'INR', '₹', 0, '2021-09-02 16:47:18', '2021-09-02 17:05:22'),
(58, 2, 4, '2021-09-02', 520, '2023-02-04', 'Stripe', 'txn_3JVJ9zHWLjS9yT0S0kOyLfDm', 1, '4', 300, 'INR', '₹', 0, '2021-09-02 16:53:07', '2021-09-02 17:05:22'),
(59, 2, 5, '2021-09-02', -1, NULL, 'Paypal', 'PAYID-MEYQF4I3D523849V91455350', 1, '11', 800, 'INR', '₹', 0, '2021-09-02 16:59:58', '2021-09-02 17:05:22'),
(60, 2, 4, '2021-09-02', 520, '2023-02-04', 'Stripe', 'txn_3JVJKaHWLjS9yT0S1BgkZRcY', 1, '357', 300, 'euro', '€', 0, '2021-09-02 17:04:04', '2021-09-02 17:05:22'),
(61, 2, 5, '2021-09-02', -1, NULL, 'Paypal', 'PAYID-MEYQINY0GB73091SV979781R', 1, '952', 800, 'euro', '€', 1, '2021-09-02 17:05:22', '2021-09-02 17:05:22');

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overviews`
--

INSERT INTO `overviews` (`id`, `name`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Our Team', '100', 1, '2021-07-29 17:22:57', '2021-09-03 16:15:26'),
(2, 'Happy Customers', '500', 1, '2021-07-29 17:23:13', '2021-09-03 16:14:18'),
(3, 'All Categories', '120', 1, '2021-07-30 05:51:27', '2021-09-03 16:15:35'),
(4, 'Total Listing', '300', 1, '2021-07-30 05:51:44', '2021-09-03 16:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `overview_videos`
--

CREATE TABLE `overview_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overview_videos`
--

INSERT INTO `overview_videos` (`id`, `video_link`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/watch?v=RZ7AXg5khUU', '2021-07-30 06:03:51', '2021-07-30 06:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `package_sections`
--

CREATE TABLE `package_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_quantity` int(11) NOT NULL DEFAULT 0,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_sections`
--

INSERT INTO `package_sections` (`id`, `header`, `icon`, `description`, `section_name`, `content_quantity`, `show_homepage`, `created_at`, `updated_at`) VALUES
(1, 'Choose the Package', 'far fa-address-card', 'All the top locations-from Restaurants, shopping, hotels and more All the top locations-from Restaurants, shopping, hotels and more', 'Package Section', 6, 1, NULL, '2021-09-06 10:21:10'),
(2, 'Subscribe to Newsletter', NULL, 'Subscribe to get update and information. Don\'t worry, we won\'t send spam!', 'Subscribe Section', 0, 1, NULL, '2021-08-24 12:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `paginators`
--

CREATE TABLE `paginators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paginators`
--

INSERT INTO `paginators` (`id`, `page`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 20, NULL, '2021-08-28 17:19:49'),
(2, 'Listing', 20, NULL, '2021-08-20 13:31:28'),
(3, 'Listing Category', 20, NULL, '2021-08-28 17:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/custom-images/partner-2021-09-06-01-17-43-4790.jpg', '#', 1, '2021-08-01 04:28:48', '2021-09-06 07:17:46'),
(2, 'public/uploads/custom-images/partner-2021-09-06-01-18-11-4838.jpg', '#', 1, '2021-08-01 04:28:58', '2021-09-06 07:18:15'),
(3, 'public/uploads/custom-images/partner-2021-09-06-01-18-26-4704.jpg', '#', 1, '2021-08-01 04:29:12', '2021-09-06 07:18:26');

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
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_accounts`
--

INSERT INTO `payment_accounts` (`id`, `account_mode`, `paypal_client_id`, `paypal_secret`, `stripe_key`, `stripe_secret`, `captcha_key`, `captcha_secret`, `bank_account`, `created_at`, `updated_at`) VALUES
(1, 'sandbox', 'ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg', 'EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT', 'pk_test_51HRx1ZHWLjS9yT0SlXNBrziVO9S4zUF6dialYIeewTSKHNAQS6GD4zJw1u1GMuMIDzpUuaYGHE3JdCrN8G3GdlRE009jEZJwkL', 'sk_test_51HRx1ZHWLjS9yT0SArpDKztTe6M9I8e7pv61S2GSDjCaVtRYpI7ciVCcEnNBr9DBxMczWcWe4DaOGwoAb2JHLjkH00Ywjuxdyq', NULL, NULL, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', '2021-06-17 10:51:03', '2021-07-15 15:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `payment_card_logos`
--

CREATE TABLE `payment_card_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_card_logos`
--

INSERT INTO `payment_card_logos` (`id`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'far fa-credit-card', 1, '2021-08-23 09:51:14', '2021-08-29 09:55:42'),
(2, 'fas fa-credit-card', 1, '2021-08-23 09:53:26', '2021-08-29 09:55:57'),
(3, 'fab fa-cc-visa', 1, '2021-08-23 10:05:39', '2021-08-29 09:56:10'),
(5, 'fab fa-cc-mastercard', 1, '2021-08-23 10:34:19', '2021-08-29 09:56:22'),
(6, 'fab fa-cc-paypal', 1, '2021-08-23 10:34:31', '2021-08-29 09:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `seo_texts`
--

CREATE TABLE `seo_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_texts`
--

INSERT INTO `seo_texts` (`id`, `page_name`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'ListKhoj-HomePage', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-08-06 04:12:04'),
(2, 'Listings Page', 'ListKhoj-Listing Page', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-07-28 17:54:27'),
(3, 'About Us', 'ListKhoj-About us', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, NULL),
(4, 'Pricing Plan', 'ListKhoj-Pricing', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, NULL),
(5, 'Listing Category', 'ListKhoj-Listing Category', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, NULL),
(6, 'Blog Page', 'ListKhoj-Blog Page', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, NULL),
(7, 'Contact Us', 'ListKhoj-Contact us', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(4) DEFAULT 1,
  `patient_can_register` int(2) DEFAULT 1,
  `save_contact_message` int(191) DEFAULT 0,
  `comment_type` int(1) DEFAULT 1,
  `preloader` int(1) DEFAULT 1,
  `preloader_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_cookie_consent` int(1) DEFAULT 0,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_captcha` int(11) NOT NULL DEFAULT 0,
  `live_chat` int(1) NOT NULL DEFAULT 0,
  `livechat_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `currency_rate` float NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `google_analytic` int(1) NOT NULL DEFAULT 0,
  `google_analytic_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#0000FF',
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#0000FF',
  `google_map_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenotification_day` int(11) NOT NULL,
  `allow_credit_card_section` int(2) NOT NULL,
  `dashboard_header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dashbaord_header_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `email`, `show`, `patient_can_register`, `save_contact_message`, `comment_type`, `preloader`, `preloader_image`, `facebook_comment_script`, `cookie_text`, `cookie_button_text`, `allow_cookie_consent`, `captcha_key`, `captcha_secret`, `allow_captcha`, `live_chat`, `livechat_script`, `text_direction`, `currency_icon`, `currency_name`, `currency_rate`, `timezone`, `google_analytic`, `google_analytic_code`, `theme_one`, `theme_two`, `google_map_api_key`, `prenotification_day`, `allow_credit_card_section`, `dashboard_header`, `dashbaord_header_icon`, `created_at`, `updated_at`) VALUES
(10, 'public/uploads/website-images/logo-2021-09-06-02-57-42-9229.png', 'public/uploads/website-images/favicon-2021-08-23-11-39-03-7105.png', 'admin@gmail.com', 1, 1, 1, 1, 0, 'public/uploads/website-images/preloader_image-2021-08-23-11-57-24-6178.png', '882238482112522', 'We use cookies to personalize content and ads, to provide social media features and to analyze our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.', 'Accept', 1, '6LcVO6cbAAAAAOzIEwPlU66nL1rxD4VAS38tjpBX', '6LcVO6cbAAAAALVNrpZfNRfd0Gy_9a_fJRLiMVUI', 0, 0, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 'LTR', '₹', 'INR', 0.014, 'Asia/Dhaka', 0, 'UA-84213520-6', '#1977f4', '#f1634c', 'AIzaSyD_8C7p0Ws2gUu7wo0b6pK9Qu7LuzX2iWY', 5, 1, 'ListKhoj', 'fas fa-anchor', '2021-06-18 09:25:14', '2021-09-06 08:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(8, 'public/uploads/website-images/home-page-banner-2021-08-31-09-44-00-4125.jpg', '2021-07-12 02:54:31', '2021-08-31 03:44:05'),
(14, 'public/uploads/website-images/home-page-banner-2021-07-18-08-24-06-1702.jpg', '2021-07-18 14:24:06', '2021-07-18 14:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_contents`
--

CREATE TABLE `subscriber_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_contents`
--

INSERT INTO `subscriber_contents` (`id`, `header`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Subscribe to Newsletter', 'Subscribe to get update and information. Don\'t worry, we won\'t send spam!', NULL, '2021-07-18 10:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_emails`
--

CREATE TABLE `subscriber_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_emails`
--

INSERT INTO `subscriber_emails` (`id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, '2021-07-13 02:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `verify_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aboutkhali666l.83@gmail.com', 'gPm3CYRl5xPWRcgJcNOgvai1W', 0, '2021-07-29 11:48:18', '2021-07-29 11:48:18'),
(3, 'aboutkhalil.83@gmail.com', NULL, 1, '2021-07-29 11:49:46', '2021-07-29 11:50:14'),
(4, 'doctor@gmail.com', 'NOJOxITrYGYRQoAyIXKMefyWM', 0, '2021-07-30 06:17:12', '2021-07-30 06:17:12'),
(5, 'testsubscriber@gmail.com', 'zEdIkwqhdJYG9WANTO8R3Bvix', 0, '2021-08-23 06:46:03', '2021-08-23 06:46:03'),
(6, 'olivia@gmail.com', 'qSEypEXJXoBECJ1J4ILZbn6Ty', 0, '2021-08-23 06:47:58', '2021-08-23 06:47:58'),
(7, 'docto12r@gmail.com', '3VWzK8xx698zAmnLa9LRJgFz2', 0, '2021-08-23 06:49:12', '2021-08-23 06:49:12'),
(8, 'demo@mail.com', 'Ws2HtjuwgxAEeYOFNwyGbLlWp', 0, '2021-08-25 07:18:57', '2021-08-25 07:18:57'),
(9, 'demo4@mail.com', 'aoI7ANDpDQMcdcfzMWvbxEJlE', 0, '2021-08-25 07:20:03', '2021-08-25 07:20:03'),
(10, 'olivia636@gmail.com', 'sZ5BYGUfuF6bGUJz8RrKztwqa', 0, '2021-08-25 07:22:24', '2021-08-25 07:22:24'),
(11, 'test3www3@gmail.com', '1ikudZogxRF6pfbPiz49MgIR6', 0, '2021-08-25 07:26:43', '2021-08-25 07:26:43'),
(12, 'testemail@gmail.com', 'pZlJ9lTRJUnJc0Cjf4QF5MB96', 0, '2021-08-25 07:41:31', '2021-08-25 07:41:31'),
(13, 'abdullah33@gmail.com', 'P4Uc9GJJe6uSLlkhuC59ntk1B', 0, '2021-08-25 07:49:03', '2021-08-25 07:49:03'),
(14, 'k2k@gmail.com', 'lRAGNlEdvkgGzyEy57OfxhR4z', 0, '2021-08-25 07:50:01', '2021-08-25 07:50:01'),
(15, 'apdddp@digitalsodddfts.com', 'HYjRdCz29kMc50iklrmu4C2z6', 0, '2021-08-27 05:21:53', '2021-08-27 05:21:53'),
(16, 'apddddp@digitalsofts.com', 'vkoqyPrFCaM6R3g1bw4k748OG', 0, '2021-08-27 05:36:19', '2021-08-27 05:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `description`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ibrahim Khalil', 'public/uploads/custom-images/testimonial-2021-08-31-09-44-58-4262.jpg', 'Founder', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 4, 1, '2021-08-01 04:27:20', '2021-08-31 03:45:06'),
(2, 'Monayem Islam', 'public/uploads/custom-images/testimonial-2021-08-31-09-45-19-1374.jpg', 'CEO', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 3, 1, '2021-08-01 04:27:51', '2021-08-31 03:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tumblr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(2) NOT NULL DEFAULT 0,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `phone`, `image`, `about`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `instagram`, `pinterest`, `tumblr`, `youtube`, `email_verified_token`, `email_verified`, `forget_password_token`, `password`, `status`, `website`, `address`, `remember_token`, `banner_image`, `created_at`, `updated_at`) VALUES
(2, 'David Simmons', 'david-simmons', 'user@gmail.com', '112-223-443', 'public/uploads/custom-images/user-2021-08-31-09-31-04-4394.jpg', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'YUe02Sp81illv1CQC5ZQuxMPGdHBzR2XkLDKDeDczhD1Qc7Jhz4BPIb0InueMr4U5d6GpifUb6hdqeYCQ9fCMROovIJ0n6pSqCNQ', '$2y$10$DKSbdX1tUimRsg4MjoWk0OCXB.Dy8ocMfubHJPoSNoEmcGvQE0Zx.', 1, 'https://phpeeepasswordhash.com/', '3848 Swick Hill, New Orleans', NULL, 'public/uploads/custom-images/listing-banner-2021-08-31-09-31-30-2108.jpg', '2021-07-29 11:32:04', '2021-09-02 15:10:47'),
(3, 'Jone Doe', '', 'test@gmail.com', '123-233-2233\r\n\r\n', 'public/uploads/custom-images/user-2021-08-04-02-51-23-5462.jpg', 'about', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QC9ht2aJpNlwhtK4JY0uypDEoO9k05PBye6FgfnIsTcTZKLxiWtbrKAX95SEY6yq58O8A9rZ8OMeiDLBnuKn9AgssGqmsTNXSH5b', 1, NULL, '$2y$10$0G6K5N36N4.lia.4/Q9dzOdLsVxRBiM94lsulIeDAft1QQZNjeQzG', 1, NULL, NULL, NULL, '', '2021-08-04 08:49:33', '2021-08-04 08:51:23'),
(4, 'Anthony Kelvin', '', 'test2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, NULL, '', NULL, NULL),
(5, 'test 3', '', 'test3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, NULL, '', NULL, NULL),
(6, 'test user6 ', '', 'test6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 0, NULL, NULL, NULL, '', NULL, NULL),
(7, 'test user 44', '', 'test3333@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VHZWyK9c8LgPZUREqyX5XvubZjnrGFFJAn9amjFH4ALIGroPBnVeMj96Men5JKHNaeKuxb1tmoU9cCfnzRuxtFmDOFaL0sRE6tVW', 0, NULL, '$2y$10$NiIKnnzj0fcdwq7/a3k9m.xq9N8S8i4FU62sddqB2pzqJj4bROFtq', 0, NULL, NULL, NULL, '', '2021-08-11 05:52:36', '2021-08-11 05:52:36'),
(8, 'C programming first part', '', 'cprog@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALwtO2jYY9tbgggjY5Giowpp9mPW4n0QuM35u3JOc06EXrzXg3vKkh5fjN5ZBPUTIqI4wukhLbfn3okdDnhRYFLN2KhHHvMEAM9Z', 0, NULL, '$2y$10$c8K8GrWFs9SZcMjZUHwuEudstDeFeSuhGvMhbLeVS7tMIYXxTHjPW', 0, NULL, NULL, NULL, '', '2021-08-11 05:54:36', '2021-08-11 05:54:36'),
(9, 'tst', '', 'aboutdffdfsdsoftmart@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'x6s4JVP9WYwnmQ1SHGEf34rd8an0MK0FF1QROtVfdeExg3gtzyKt960TU8fbVrT5bDCGLRC3CK2dAH8L3Ns6GYhhEIQhbCLpi0q9', 0, NULL, '$2y$10$U1G1VHaSOUrOi4XAHkBrre29ZINH5hUF4xNygMizsIbueuQaz8pI6', 0, NULL, NULL, NULL, '', '2021-08-11 05:59:27', '2021-08-11 05:59:27'),
(10, 'junaid siddik', 'junaid-siddik', 'junaid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALSZAV66UkJz9hvw3LESpiQ8gaAy7ItZtkhmyE5hrjWogZDFECqsuhVg2iSAwFSR55zsXxVgwZSknXWPOzqlcltM5F85oeeAz7JB', 0, 'wnpHiZeVr2C8nbtKQ1UkSULy616K7be4Tc48JDULRXMVNrBscVNqC7Cw2XVYApYIKV7ZnazOGcYNEOLMRg9ahF269CtZzCJ8oeWt', '$2y$10$eMVCKsKq8Q.AAZgEbzz2GOqo6hrIBCRpL9DzQ1eeOU/rSnngI25hW', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:40:16', '2021-08-24 07:42:13'),
(11, 'abdullah', 'abdullah', 'abdullah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tDFqwNy3TihX2vDWKEuLZ7cnej93n1OnxoNi82p6tnYiA67gVYS71FZ5lB2oeXzHcwwTBUAfyHmmrxBQonLteqiZPzPKxiPOErYu', 0, NULL, '$2y$10$OWGxmN6LVc00FSuqg709/.e8neV4hf3/3mQoALbMHZfY4Sajl7kGO', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:42:46', '2021-08-24 07:42:46'),
(12, 'abdullah', 'abdullah', 'abdullahd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'J4TkLrbT0WI90LDN9E2t0E2fQvC0PxjpnhLNY4e1T5DKCb8CCL9ObG6lAgkfqAfDIDqItDOuh6E5WPjFDr51Sh9kQPCHaqmrOlrm', 0, NULL, '$2y$10$juhbdVYbzQye.Ya4VC0UW.1F89Ywt3Hzhf9W94J2K0SdOsVYSZjhK', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:43:52', '2021-08-24 07:43:52'),
(13, 'abdullah', 'abdullah', 'abdullah34@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VKLWuShtyfRUhzO4GJumu7q9XEiLsqdi2IlUbN7B8xsPnKV4RYIEFi2DvufUMDJTQHRYU4yVxllcgrYkSogpiHgerUbw2Jr2z7VO', 0, NULL, '$2y$10$3HtTIulxtKAaOdaNpRbCW.NxKuB0KvAnYN8NtRYRxQcC1l0Puk7I2', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:44:47', '2021-08-24 07:44:47'),
(14, 'abdullah', 'abdullah', 'abdullah3664@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FQBJoTxFlyrmux3sSPOku7AWFT3M2Gk9DArGkHs6urbEuPrIc4yGYpPtNmPB8bK8eT9ATlKYbDaQmfJZuFbBibztvJz48R41RY3u', 0, NULL, '$2y$10$SOtYtEDNIh24SY/d8k1ra.r1X67dybun4kdGnsPY47.MV88OeL2W2', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:45:34', '2021-08-24 07:45:34'),
(15, 'abdullah', 'abdullah', 'abdullah2k@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vefkfsYPoCDB0JlvM25M4u0aSEc5wclxOonynP617fbIvziq5iCmkyV3lYgztcNEn4oCVVS6jsf6X5gATiytDcKnDCte0jtwb0Ad', 0, NULL, '$2y$10$.27SqqAm8iPBPUFwn51souEY6Ge0hL2Mf5LzzccxyBo4fVvQs4ngq', 0, NULL, NULL, NULL, NULL, '2021-08-24 07:48:51', '2021-08-24 07:48:51'),
(16, 'rabiul islam', 'rabiul-islam', 'rabby@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sUMguXMNjVv82FiqxdTcAx9ANEbU825RvapPLRrHCYTkHnwNjv56PW3Db67eHW3EV24gGuGgqKQtY6wFR6SoK6t5qFC1akTAYm0s', 0, NULL, '$2y$10$n823UWBfFgX8iaWORWRAh.RUjmqxX1u6Xd/u9Rs6u53fgml.vWku6', 0, NULL, NULL, NULL, NULL, '2021-08-24 08:32:48', '2021-08-24 08:32:48'),
(17, 'test', 'test', 'test546@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1wvbUnug9SzLs02LvoPWXXacFXA6hG4f22yxo9EPd4nG3yeTb8ELs4uSigbdHhmQMdbUPQrxVB90tD5YHBQRS9Kjx3DxEFHTxoGK', 0, NULL, '$2y$10$FOj3MI7NHpWEWqHWglpUQev9MRur7KvZKL7V5DRFvlmB84o7a62OW', 0, NULL, NULL, NULL, NULL, '2021-08-27 05:21:11', '2021-08-27 05:21:11'),
(18, 'Listkhoj us', 'listkhoj', 'listkhoj12@gmail.com', '185-658-487', NULL, 'All the top locations-from Restaurants, shopping, hotels and moreAll the top locations-from Restaurants, shopping, hotels and moreAll the top locations-from Restaurants, shopping, hotels and moreAll the top locations-from Restaurants, shopping, hotels and more', '#', '#', '#', '#', NULL, '#', NULL, '#', NULL, 1, NULL, '$2y$10$aUSry81u8z5NTFYvBD4etuNLWzJbaS5aAkG.vQjHsK/eLJIeSVgXS', 1, 'www.uk@gmail.com', 'London, UK', NULL, NULL, '2021-08-27 05:38:41', '2021-08-27 09:10:22'),
(19, 'listkhoj 23', 'listkhoj-23', 'admin123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZJ2t1l3Frg0KTG3q0rY9h9mOy5HhvRLWQDqWw9R9XhsTGzuVFP3dTSvYtMp7WwlRnvt41ap0rHBUwKrJOK1zCHMsIFA7EMVJd8Eb', 0, NULL, '$2y$10$Q0Gs1RBbr4oyP0Cu5rZ2D.otttn8JVUMHlMOvOMuw//j0zGxZdOFK', 0, NULL, NULL, NULL, NULL, '2021-08-27 05:57:42', '2021-08-27 05:57:42'),
(20, 'listkhoj', 'listkhoj', 'listkhoj1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nsaYdhi3kJHKVc824pYgRbxgueVxc0tRTkGD0tAaTUpfgYG4CPn1D6H8gIU2m6FXtCYxIkR2vR39LlsQXLbcAur9r0BrJH8P4gJa', 0, NULL, '$2y$10$wG8gvTD1hVpT/WNxY6JkkOxbsk2vImQu/Ipnus9dOjwOTWB8S1A4y', 0, NULL, NULL, NULL, NULL, '2021-08-27 06:04:44', '2021-08-27 06:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `validation_texts`
--

CREATE TABLE `validation_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `validation_texts`
--

INSERT INTO `validation_texts` (`id`, `default_text`, `custom_text`, `created_at`, `updated_at`) VALUES
(1, 'email field is required', 'Email field is required', NULL, '2021-08-19 11:36:12'),
(2, 'Insert Your Valid Email', 'Insert Your Valid Email', NULL, '2021-07-31 18:29:38'),
(3, 'Email Already Exist', 'Email Already Exist', NULL, '2021-07-31 18:29:38'),
(4, 'name field is required', 'Name field is required', NULL, '2021-08-19 11:36:12'),
(5, 'phone field is required', 'Phone field is required', NULL, '2021-08-19 11:36:12'),
(6, 'subject field is required', 'Subject field is required', NULL, '2021-08-19 11:36:12'),
(7, 'message field is required', 'Message field is required', NULL, '2021-08-19 11:36:12'),
(8, 'user type field is required', 'User type field is required', NULL, '2021-08-19 11:36:12'),
(9, 'search field is required', 'Search field is required', NULL, '2021-08-19 11:36:12'),
(10, 'comment field is required', 'Comment field is required', NULL, '2021-08-19 11:36:12'),
(11, 'about field is required', 'About field is required', NULL, '2021-08-19 11:36:12'),
(12, 'Password field is required', 'Password field is required', NULL, NULL),
(13, 'Current Password field is required', 'Current Password field is required', NULL, NULL),
(14, 'Confirmation  Password Does not match', 'Confirmation Password Does not match', NULL, NULL),
(15, 'Rating Field is Required', 'Rating Field is Required', NULL, NULL),
(16, 'Listing Field is Required', 'Listing Field is Required', NULL, NULL),
(17, 'Package Field is Required', 'Package Field is Required', NULL, NULL),
(18, 'Title Field is Required', 'Title Field is Required', NULL, NULL),
(19, 'Slug  Field is Required', 'Slug  Field is Required', NULL, NULL),
(20, 'Category Field is Required', 'Category Field is Required', NULL, NULL),
(21, 'Location Field is Required', 'Location Field is Required', NULL, NULL),
(22, 'Address Field is Required', 'Address Field is Required', NULL, NULL),
(23, 'latitude Field is Required', 'latitude Field is Required', NULL, NULL),
(24, 'longitude Field is Required', 'longitude Field is Required', NULL, NULL),
(25, 'Logo Field is Required', 'Logo Field is Required', NULL, NULL),
(26, 'Thumbnail Image Field is Required', 'Thumbnail Image Field is Required', NULL, NULL),
(27, 'Image Field is Required', 'Image Field is Required', NULL, NULL),
(29, 'sort Description is required', 'Short Description is required', NULL, '2021-08-19 11:36:12'),
(30, 'Description is required', 'Description is required', NULL, NULL),
(31, 'day field is required', 'Day field is required', NULL, '2021-08-19 11:36:12'),
(32, 'start time field is required', 'Start time field is required', NULL, '2021-08-19 11:36:12'),
(33, 'end time field is required', 'End time field is required', NULL, '2021-08-19 11:36:12'),
(34, 'status field is required', 'Status field is required', NULL, '2021-08-19 11:36:12'),
(35, 'Password Minimum 3 character', 'Password Minimum 3 character', NULL, NULL),
(36, 'Please Complete the recaptcha to submit the form', 'Please Complete the recaptcha to submit the form', NULL, NULL),
(37, 'video link field is required', 'Video link field is required', NULL, '2021-08-19 11:36:12'),
(38, 'content quantity filed is required', 'Content quantity filed is required', NULL, '2021-08-19 11:36:12'),
(39, 'show homepage filed is required', 'Show homepage filed is required', NULL, '2021-08-19 11:36:12'),
(40, 'header filed is required', 'Header filed is required', NULL, '2021-08-19 11:36:12'),
(41, 'sort title filed is required', 'Short title filed is required', NULL, '2021-08-19 11:36:12'),
(42, 'icon field is required', 'Icon field is required', NULL, '2021-08-19 11:36:12'),
(43, 'aminity field is required', 'Aminity field is required', NULL, '2021-08-19 11:36:12'),
(44, 'name already exist', 'Name already exist', NULL, '2021-08-19 11:36:12'),
(45, 'slug already exist', 'Slug already exist', NULL, '2021-08-19 11:36:12'),
(46, 'title already exist', 'Title already exist', NULL, '2021-08-19 11:36:12'),
(47, 'terms and condition field is required', 'Terms and condition field is required', NULL, '2021-08-19 11:36:12'),
(48, 'privacy policy field is required', 'Privacy policy field is required', NULL, '2021-08-19 11:36:12'),
(49, 'map embed code field is required', 'Map embed code field is required', NULL, '2021-08-19 11:36:12'),
(50, 'copyright filed is required', 'Copyright filed is required', NULL, '2021-08-19 11:36:12'),
(51, 'custom day field is required', 'Custom day field is required', NULL, '2021-08-19 11:36:12'),
(52, 'icon image filed is required', 'Icon image filed is required', NULL, '2021-08-19 11:36:12'),
(53, 'verified filed is required', 'Verified filed is required', NULL, '2021-08-19 11:36:12'),
(54, 'featured filed is required', 'Featured filed is required', NULL, '2021-08-19 11:36:12'),
(55, 'package type field is required', 'Package type field is required', NULL, '2021-08-19 11:36:12'),
(56, 'package name field is required', 'Package name field is required', NULL, '2021-08-19 11:36:12'),
(57, 'price field is required', 'Price field is required', NULL, '2021-08-19 11:36:12'),
(58, 'number of days field is required', 'Number of days field is required', NULL, '2021-08-19 11:36:12'),
(59, 'number of aminities field is required', 'Number of aminities field is required', NULL, '2021-08-19 11:36:12'),
(60, 'number of photo field is required', 'Number of photo field is required', NULL, '2021-08-19 11:36:12'),
(61, 'number of video field is required', 'Number of video field is required', NULL, '2021-08-19 11:36:12'),
(62, 'number of listing field is required', 'Number of listing field is required', NULL, '2021-08-19 11:36:12'),
(63, 'number of feature listing field is required', 'Number of feature listing field is required', NULL, '2021-08-19 11:36:12'),
(64, 'location already exist', 'Location already exist', NULL, '2021-08-19 11:36:12'),
(65, 'qty field is required', 'Qty field is required', NULL, '2021-08-19 11:36:12'),
(66, 'account mode field is required', 'Account mode field is required', NULL, '2021-08-19 11:36:12'),
(67, 'paypal client id field is required', 'Paypal client id field is required', NULL, '2021-08-19 11:36:12'),
(68, 'paypal secret field is required', 'Paypal secret field is required', NULL, '2021-08-19 11:36:12'),
(69, 'stripe key field is required', 'Stripe key field is required', NULL, '2021-08-19 11:36:12'),
(70, 'stripe secret field is required', 'Stripe secret field is required', NULL, '2021-08-19 11:36:12'),
(71, 'meta description field is required', 'Meta description field is required', NULL, '2021-08-19 11:36:12'),
(72, 'currency name field is required', 'Currency name field is required', NULL, '2021-08-19 11:36:12'),
(73, 'currency icon field is required', 'Currency icon field is required', NULL, '2021-08-19 11:36:12'),
(74, 'google map api key field is required', 'Google map api key field is required', NULL, '2021-08-19 11:36:12'),
(75, 'prenotification day field is required', 'Prenotification day field is required', NULL, '2021-08-19 11:36:12'),
(76, 'facebook comment script field is required', 'Facebook comment script field is required', NULL, '2021-08-19 11:36:12'),
(77, 'allow filed is required', 'Allow filed is required', NULL, '2021-08-19 11:36:12'),
(78, 'border filed is required', 'Border filed is required', NULL, '2021-08-19 11:36:12'),
(79, 'corner filed is required', 'Corner filed is required', NULL, '2021-08-19 11:36:12'),
(80, 'background color filed is required', 'Background color filed is required', NULL, '2021-08-19 11:36:12'),
(81, 'text color filed is required', 'Text color filed is required', NULL, '2021-08-19 11:36:12'),
(82, 'border color filed is required', 'Border color filed is required', NULL, '2021-08-19 11:36:12'),
(83, 'button color filed is required', 'Button color filed is required', NULL, '2021-08-19 11:36:12'),
(84, 'button text color filed is required', 'Button text color filed is required', NULL, '2021-08-19 11:36:12'),
(85, 'link text filed is required', 'Link text filed is required', NULL, '2021-08-19 11:36:12'),
(86, 'button text filed is required', 'Button text filed is required', NULL, '2021-08-19 11:36:12'),
(87, 'captcha key filed is required', 'Captcha key filed is required', NULL, '2021-08-19 11:36:12'),
(88, 'captcha secret filed is required', 'Captcha secret filed is required', NULL, '2021-08-19 11:36:12'),
(89, 'livechat script filed is required', 'Livechat script filed is required', NULL, '2021-08-19 11:36:12'),
(90, 'google analytic code field is required', 'Google analytic code field is required', NULL, '2021-08-19 11:36:12'),
(91, 'designation filed is required', 'Designation filed is required', NULL, '2021-08-19 11:36:12'),
(92, 'page name field is required', 'Page name field is required', NULL, '2021-08-19 11:36:12'),
(93, 'page name already exist', 'Page name already exist', NULL, '2021-08-19 11:36:12'),
(94, 'Bannaer Image Field Is Required', 'Bannaer Image Field Is Required', NULL, NULL),
(95, 'email password field is required', 'Email Password Field is Required', NULL, NULL),
(96, 'Mail Host Field is Required', 'Mail Host Field is Required', NULL, NULL),
(97, 'SMTP User Field is Required', 'SMTP User Field is Required', NULL, NULL),
(98, 'SMTP Password Field is Required', 'SMTP Password Field is Required', NULL, NULL),
(99, 'Mail Port Field is Required', 'Mail Port Field is Required', NULL, NULL),
(100, 'Mail Encryption Field is Required', 'Mail Encryption Field is Required', NULL, NULL),
(102, 'Claim Field is Required', 'Claim Field is Required', NULL, NULL),
(103, 'Google Map Embed Code field is required', 'Google Map Embed Code field is required', NULL, NULL),
(104, 'Dashboard header field is required', 'Dashboard header field is required', NULL, NULL),
(105, 'Dashboard header icon field is required', 'Dashboard header icon field is required', NULL, NULL),
(106, 'Currency Rate Filed Required', 'Currency Rate Filed Required', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, '2021-07-31 15:21:55', '2021-07-31 15:21:55'),
(3, 2, 2, '2021-07-31 15:32:34', '2021-07-31 15:32:34'),
(5, 2, 21, '2021-08-18 06:03:22', '2021-08-18 06:03:22'),
(6, 2, 20, '2021-08-18 06:40:12', '2021-08-18 06:40:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `aminities`
--
ALTER TABLE `aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_aminities`
--
ALTER TABLE `listing_aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_categories`
--
ALTER TABLE `listing_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_claimes`
--
ALTER TABLE `listing_claimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_images`
--
ALTER TABLE `listing_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_packages`
--
ALTER TABLE `listing_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_reviews`
--
ALTER TABLE `listing_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_schedules`
--
ALTER TABLE `listing_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_videos`
--
ALTER TABLE `listing_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_texts`
--
ALTER TABLE `manage_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal_consents`
--
ALTER TABLE `modal_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overview_videos`
--
ALTER TABLE `overview_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_sections`
--
ALTER TABLE `package_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginators`
--
ALTER TABLE `paginators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_card_logos`
--
ALTER TABLE `payment_card_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_texts`
--
ALTER TABLE `seo_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_contents`
--
ALTER TABLE `subscriber_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validation_texts`
--
ALTER TABLE `validation_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `aminities`
--
ALTER TABLE `aminities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `listing_aminities`
--
ALTER TABLE `listing_aminities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=846;

--
-- AUTO_INCREMENT for table `listing_categories`
--
ALTER TABLE `listing_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `listing_claimes`
--
ALTER TABLE `listing_claimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listing_images`
--
ALTER TABLE `listing_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `listing_packages`
--
ALTER TABLE `listing_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listing_reviews`
--
ALTER TABLE `listing_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `listing_schedules`
--
ALTER TABLE `listing_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `listing_videos`
--
ALTER TABLE `listing_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manage_texts`
--
ALTER TABLE `manage_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `modal_consents`
--
ALTER TABLE `modal_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overview_videos`
--
ALTER TABLE `overview_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_sections`
--
ALTER TABLE `package_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paginators`
--
ALTER TABLE `paginators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_card_logos`
--
ALTER TABLE `payment_card_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo_texts`
--
ALTER TABLE `seo_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscriber_contents`
--
ALTER TABLE `subscriber_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `validation_texts`
--
ALTER TABLE `validation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
