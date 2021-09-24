-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 08:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsmala`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'FPodoEdmaCobZDm7bysMkJqPJs6aaCLH', 1, '2021-05-29 07:21:16', '2021-05-29 07:21:16', '2021-05-29 07:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `ad_name`, `ad_size`, `ad_type`, `ad_url`, `ad_image_id`, `ad_code`, `ad_text`, `created_at`, `updated_at`) VALUES
(1, 'Buy Now', '970*90', 'image', '', 51, NULL, NULL, '2021-05-29 07:21:12', '2021-05-29 07:21:12'),
(2, 'ZcZxc', '100*90', 'image', 'https//google.com', 116, NULL, NULL, '2021-05-31 14:41:22', '2021-05-31 14:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `ad_locations`
--

CREATE TABLE `ad_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_locations`
--

INSERT INTO `ad_locations` (`id`, `title`, `unique_name`, `ad_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Banner', 'top_banner', NULL, 1, NULL, NULL),
(2, 'Home Page Middle', 'home_page_middle', NULL, 1, NULL, NULL),
(3, 'Home Page Bottom', 'home_page_bottom', NULL, 1, NULL, NULL),
(4, 'Widget', 'widget', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tabs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audio_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_mp3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_ogg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `audio_name`, `disk`, `original`, `audio_mp3`, `audio_ogg`, `duration`, `audio_type`, `created_at`, `updated_at`) VALUES
(1, 'musically_jingle1.mp3', 'local', 'audios/20210531104156_original_audio42.mp3', '', '', '', 'mp3', '2021-05-31 04:56:56', '2021-05-31 04:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `audio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `language`, `slug`, `meta_description`, `meta_keywords`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sports', 'en', 'world', NULL, NULL, 1, '2021-05-29 07:21:49', '2021-05-29 07:21:49'),
(2, 1, 'Football', 'en', 'asia', '', '', 1, '2021-05-29 08:45:56', '2021-05-29 08:45:56'),
(3, 2, 'Cricket', 'en', 'nepal', '', '', 1, '2021-05-29 09:54:45', '2021-05-29 09:54:45'),
(4, 1, 'Volleyball', 'en', 'volleyball', '', '', 1, '2021-05-29 15:33:30', '2021-05-31 14:23:15'),
(5, 1, 'dandibiyo', 'en', 'dandibiyo', '', '', 1, '2021-07-08 04:44:54', '2021-07-08 04:44:54'),
(6, 1, 'pahpap', 'en', 'pahpap', '', '', 1, '2021-07-29 03:45:25', '2021-07-29 03:45:25'),
(7, NULL, 'Winifred Clay', 'en', 'winifred-clay', '', '', 1, '2021-09-24 06:35:02', '2021-09-24 06:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 250, '2021-09-24 06:26:46', '2021-09-24 06:26:46'),
(2, 2, 250, '2021-09-24 06:26:46', '2021-09-24 06:26:46'),
(3, 4, 250, '2021-09-24 06:26:46', '2021-09-24 06:26:46'),
(4, 1, 251, '2021-09-24 06:37:50', '2021-09-24 06:37:50'),
(5, 2, 251, '2021-09-24 06:37:50', '2021-09-24 06:37:50'),
(6, 5, 251, '2021-09-24 06:37:50', '2021-09-24 06:37:50'),
(7, 1, 252, '2021-09-24 06:50:02', '2021-09-24 06:50:02'),
(11, 5, 252, '2021-09-24 06:54:10', '2021-09-24 06:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, '{\"common\":\"Nepal\"}', 'NP'),
(2, '{\"common\":\"India\"}', 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cron_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_group`, `subject`, `template_body`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-05-29 07:21:48', '2021-05-29 07:21:48'),
(2, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-05-29 07:21:48', '2021-05-29 07:21:48'),
(3, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'en', '2021-05-29 07:21:48', '2021-05-29 07:21:48'),
(4, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-05-29 07:21:48', '2021-05-29 07:21:48'),
(5, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2021-05-29 07:21:48', '2021-05-29 07:21:48'),
(6, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2021-05-29 07:21:49', '2021-05-29 07:21:49'),
(7, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'ar', '2021-05-29 07:21:49', '2021-05-29 07:21:49'),
(8, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'ar', '2021-05-29 07:21:49', '2021-05-29 07:21:49'),
(9, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'np', '2021-05-29 14:11:33', '2021-05-29 14:11:33'),
(10, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'np', '2021-05-29 14:11:33', '2021-05-29 14:11:33'),
(11, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'np', '2021-05-29 14:11:33', '2021-05-29 14:11:33'),
(12, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'np', '2021-05-29 14:11:33', '2021-05-29 14:11:33');

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
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2021-05-29 07:21:56', '2021-05-29 07:21:56'),
(2, 'flag-icon flag-icon-ae', 'ae', '2021-05-29 07:21:57', '2021-05-29 07:21:57'),
(3, 'flag-icon flag-icon-af', 'af', '2021-05-29 07:21:58', '2021-05-29 07:21:58'),
(4, 'flag-icon flag-icon-ag', 'ag', '2021-05-29 07:21:58', '2021-05-29 07:21:58'),
(5, 'flag-icon flag-icon-ai', 'ai', '2021-05-29 07:21:58', '2021-05-29 07:21:58'),
(6, 'flag-icon flag-icon-al', 'al', '2021-05-29 07:21:58', '2021-05-29 07:21:58'),
(7, 'flag-icon flag-icon-am', 'am', '2021-05-29 07:21:59', '2021-05-29 07:21:59'),
(8, 'flag-icon flag-icon-ao', 'ao', '2021-05-29 07:21:59', '2021-05-29 07:21:59'),
(9, 'flag-icon flag-icon-aq', 'aq', '2021-05-29 07:22:00', '2021-05-29 07:22:00'),
(10, 'flag-icon flag-icon-ar', 'ar', '2021-05-29 07:22:00', '2021-05-29 07:22:00'),
(11, 'flag-icon flag-icon-as', 'as', '2021-05-29 07:22:00', '2021-05-29 07:22:00'),
(12, 'flag-icon flag-icon-at', 'at', '2021-05-29 07:22:01', '2021-05-29 07:22:01'),
(13, 'flag-icon flag-icon-au', 'au', '2021-05-29 07:22:01', '2021-05-29 07:22:01'),
(14, 'flag-icon flag-icon-aw', 'aw', '2021-05-29 07:22:01', '2021-05-29 07:22:01'),
(15, 'flag-icon flag-icon-ax', 'ax', '2021-05-29 07:22:02', '2021-05-29 07:22:02'),
(16, 'flag-icon flag-icon-az', 'az', '2021-05-29 07:22:02', '2021-05-29 07:22:02'),
(17, 'flag-icon flag-icon-ba', 'ba', '2021-05-29 07:22:03', '2021-05-29 07:22:03'),
(18, 'flag-icon flag-icon-bb', 'bb', '2021-05-29 07:22:03', '2021-05-29 07:22:03'),
(19, 'flag-icon flag-icon-bd', 'bd', '2021-05-29 07:22:03', '2021-05-29 07:22:03'),
(20, 'flag-icon flag-icon-be', 'be', '2021-05-29 07:22:03', '2021-05-29 07:22:03'),
(21, 'flag-icon flag-icon-bf', 'bf', '2021-05-29 07:22:04', '2021-05-29 07:22:04'),
(22, 'flag-icon flag-icon-bg', 'bg', '2021-05-29 07:22:04', '2021-05-29 07:22:04'),
(23, 'flag-icon flag-icon-bh', 'bh', '2021-05-29 07:22:04', '2021-05-29 07:22:04'),
(24, 'flag-icon flag-icon-bi', 'bi', '2021-05-29 07:22:04', '2021-05-29 07:22:04'),
(25, 'flag-icon flag-icon-bj', 'bj', '2021-05-29 07:22:05', '2021-05-29 07:22:05'),
(26, 'flag-icon flag-icon-bl', 'bl', '2021-05-29 07:22:05', '2021-05-29 07:22:05'),
(27, 'flag-icon flag-icon-bm', 'bm', '2021-05-29 07:22:05', '2021-05-29 07:22:05'),
(28, 'flag-icon flag-icon-bn', 'bn', '2021-05-29 07:22:05', '2021-05-29 07:22:05'),
(29, 'flag-icon flag-icon-bo', 'bo', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(30, 'flag-icon flag-icon-bq', 'bq', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(31, 'flag-icon flag-icon-br', 'br', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(32, 'flag-icon flag-icon-bs', 'bs', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(33, 'flag-icon flag-icon-bt', 'bt', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(34, 'flag-icon flag-icon-bv', 'bv', '2021-05-29 07:22:06', '2021-05-29 07:22:06'),
(35, 'flag-icon flag-icon-bw', 'bw', '2021-05-29 07:22:07', '2021-05-29 07:22:07'),
(36, 'flag-icon flag-icon-by', 'by', '2021-05-29 07:22:07', '2021-05-29 07:22:07'),
(37, 'flag-icon flag-icon-bz', 'bz', '2021-05-29 07:22:07', '2021-05-29 07:22:07'),
(38, 'flag-icon flag-icon-ca', 'ca', '2021-05-29 07:22:08', '2021-05-29 07:22:08'),
(39, 'flag-icon flag-icon-cc', 'cc', '2021-05-29 07:22:08', '2021-05-29 07:22:08'),
(40, 'flag-icon flag-icon-cd', 'cd', '2021-05-29 07:22:08', '2021-05-29 07:22:08'),
(41, 'flag-icon flag-icon-cf', 'cf', '2021-05-29 07:22:08', '2021-05-29 07:22:08'),
(42, 'flag-icon flag-icon-cg', 'cg', '2021-05-29 07:22:09', '2021-05-29 07:22:09'),
(43, 'flag-icon flag-icon-ch', 'ch', '2021-05-29 07:22:09', '2021-05-29 07:22:09'),
(44, 'flag-icon flag-icon-ci', 'ci', '2021-05-29 07:22:10', '2021-05-29 07:22:10'),
(45, 'flag-icon flag-icon-ck', 'ck', '2021-05-29 07:22:10', '2021-05-29 07:22:10'),
(46, 'flag-icon flag-icon-cl', 'cl', '2021-05-29 07:22:10', '2021-05-29 07:22:10'),
(47, 'flag-icon flag-icon-cm', 'cm', '2021-05-29 07:22:10', '2021-05-29 07:22:10'),
(48, 'flag-icon flag-icon-cn', 'cn', '2021-05-29 07:22:11', '2021-05-29 07:22:11'),
(49, 'flag-icon flag-icon-co', 'co', '2021-05-29 07:22:11', '2021-05-29 07:22:11'),
(50, 'flag-icon flag-icon-cr', 'cr', '2021-05-29 07:22:12', '2021-05-29 07:22:12'),
(51, 'flag-icon flag-icon-cu', 'cu', '2021-05-29 07:22:12', '2021-05-29 07:22:12'),
(52, 'flag-icon flag-icon-cv', 'cv', '2021-05-29 07:22:12', '2021-05-29 07:22:12'),
(53, 'flag-icon flag-icon-cw', 'cw', '2021-05-29 07:22:12', '2021-05-29 07:22:12'),
(54, 'flag-icon flag-icon-cx', 'cx', '2021-05-29 07:22:12', '2021-05-29 07:22:12'),
(55, 'flag-icon flag-icon-cy', 'cy', '2021-05-29 07:22:13', '2021-05-29 07:22:13'),
(56, 'flag-icon flag-icon-cz', 'cz', '2021-05-29 07:22:13', '2021-05-29 07:22:13'),
(57, 'flag-icon flag-icon-de', 'de', '2021-05-29 07:22:13', '2021-05-29 07:22:13'),
(58, 'flag-icon flag-icon-dj', 'dj', '2021-05-29 07:22:13', '2021-05-29 07:22:13'),
(59, 'flag-icon flag-icon-dk', 'dk', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(60, 'flag-icon flag-icon-dm', 'dm', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(61, 'flag-icon flag-icon-do', 'do', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(62, 'flag-icon flag-icon-dz', 'dz', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(63, 'flag-icon flag-icon-ec', 'ec', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(64, 'flag-icon flag-icon-ee', 'ee', '2021-05-29 07:22:14', '2021-05-29 07:22:14'),
(65, 'flag-icon flag-icon-eg', 'eg', '2021-05-29 07:22:15', '2021-05-29 07:22:15'),
(66, 'flag-icon flag-icon-eh', 'eh', '2021-05-29 07:22:15', '2021-05-29 07:22:15'),
(67, 'flag-icon flag-icon-er', 'er', '2021-05-29 07:22:15', '2021-05-29 07:22:15'),
(68, 'flag-icon flag-icon-es', 'es', '2021-05-29 07:22:15', '2021-05-29 07:22:15'),
(69, 'flag-icon flag-icon-et', 'et', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(70, 'flag-icon flag-icon-fi', 'fi', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(71, 'flag-icon flag-icon-fj', 'fj', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(72, 'flag-icon flag-icon-fk', 'fk', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(73, 'flag-icon flag-icon-fm', 'fm', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(74, 'flag-icon flag-icon-fo', 'fo', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(75, 'flag-icon flag-icon-fr', 'fr', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(76, 'flag-icon flag-icon-ga', 'ga', '2021-05-29 07:22:16', '2021-05-29 07:22:16'),
(77, 'flag-icon flag-icon-gb', 'gb', '2021-05-29 07:22:17', '2021-05-29 07:22:17'),
(78, 'flag-icon flag-icon-gd', 'gd', '2021-05-29 07:22:17', '2021-05-29 07:22:17'),
(79, 'flag-icon flag-icon-ge', 'ge', '2021-05-29 07:22:17', '2021-05-29 07:22:17'),
(80, 'flag-icon flag-icon-gf', 'gf', '2021-05-29 07:22:17', '2021-05-29 07:22:17'),
(81, 'flag-icon flag-icon-gg', 'gg', '2021-05-29 07:22:17', '2021-05-29 07:22:17'),
(82, 'flag-icon flag-icon-gh', 'gh', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(83, 'flag-icon flag-icon-gi', 'gi', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(84, 'flag-icon flag-icon-gl', 'gl', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(85, 'flag-icon flag-icon-gm', 'gm', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(86, 'flag-icon flag-icon-gn', 'gn', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(87, 'flag-icon flag-icon-gp', 'gp', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(88, 'flag-icon flag-icon-gq', 'gq', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(89, 'flag-icon flag-icon-gr', 'gr', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(90, 'flag-icon flag-icon-gs', 'gs', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(91, 'flag-icon flag-icon-gt', 'gt', '2021-05-29 07:22:18', '2021-05-29 07:22:18'),
(92, 'flag-icon flag-icon-gu', 'gu', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(93, 'flag-icon flag-icon-gw', 'gw', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(94, 'flag-icon flag-icon-gy', 'gy', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(95, 'flag-icon flag-icon-hk', 'hk', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(96, 'flag-icon flag-icon-hm', 'hm', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(97, 'flag-icon flag-icon-hn', 'hn', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(98, 'flag-icon flag-icon-hr', 'hr', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(99, 'flag-icon flag-icon-ht', 'ht', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(100, 'flag-icon flag-icon-hu', 'hu', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(101, 'flag-icon flag-icon-id', 'id', '2021-05-29 07:22:19', '2021-05-29 07:22:19'),
(102, 'flag-icon flag-icon-ie', 'ie', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(103, 'flag-icon flag-icon-il', 'il', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(104, 'flag-icon flag-icon-im', 'im', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(105, 'flag-icon flag-icon-in', 'in', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(106, 'flag-icon flag-icon-io', 'io', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(107, 'flag-icon flag-icon-iq', 'iq', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(108, 'flag-icon flag-icon-ir', 'ir', '2021-05-29 07:22:20', '2021-05-29 07:22:20'),
(109, 'flag-icon flag-icon-is', 'is', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(110, 'flag-icon flag-icon-it', 'it', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(111, 'flag-icon flag-icon-je', 'je', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(112, 'flag-icon flag-icon-jm', 'jm', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(113, 'flag-icon flag-icon-jo', 'jo', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(114, 'flag-icon flag-icon-jp', 'jp', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(115, 'flag-icon flag-icon-ke', 'ke', '2021-05-29 07:22:21', '2021-05-29 07:22:21'),
(116, 'flag-icon flag-icon-kg', 'kg', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(117, 'flag-icon flag-icon-kh', 'kh', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(118, 'flag-icon flag-icon-ki', 'ki', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(119, 'flag-icon flag-icon-km', 'km', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(120, 'flag-icon flag-icon-kn', 'kn', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(121, 'flag-icon flag-icon-kp', 'kp', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(122, 'flag-icon flag-icon-kr', 'kr', '2021-05-29 07:22:22', '2021-05-29 07:22:22'),
(123, 'flag-icon flag-icon-kw', 'kw', '2021-05-29 07:22:23', '2021-05-29 07:22:23'),
(124, 'flag-icon flag-icon-ky', 'ky', '2021-05-29 07:22:23', '2021-05-29 07:22:23'),
(125, 'flag-icon flag-icon-kz', 'kz', '2021-05-29 07:22:23', '2021-05-29 07:22:23'),
(126, 'flag-icon flag-icon-la', 'la', '2021-05-29 07:22:23', '2021-05-29 07:22:23'),
(127, 'flag-icon flag-icon-lb', 'lb', '2021-05-29 07:22:23', '2021-05-29 07:22:23'),
(128, 'flag-icon flag-icon-lc', 'lc', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(129, 'flag-icon flag-icon-li', 'li', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(130, 'flag-icon flag-icon-lk', 'lk', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(131, 'flag-icon flag-icon-lr', 'lr', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(132, 'flag-icon flag-icon-ls', 'ls', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(133, 'flag-icon flag-icon-lt', 'lt', '2021-05-29 07:22:24', '2021-05-29 07:22:24'),
(134, 'flag-icon flag-icon-lu', 'lu', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(135, 'flag-icon flag-icon-lv', 'lv', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(136, 'flag-icon flag-icon-ly', 'ly', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(137, 'flag-icon flag-icon-ma', 'ma', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(138, 'flag-icon flag-icon-mc', 'mc', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(139, 'flag-icon flag-icon-md', 'md', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(140, 'flag-icon flag-icon-me', 'me', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(141, 'flag-icon flag-icon-mf', 'mf', '2021-05-29 07:22:25', '2021-05-29 07:22:25'),
(142, 'flag-icon flag-icon-mg', 'mg', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(143, 'flag-icon flag-icon-mh', 'mh', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(144, 'flag-icon flag-icon-mk', 'mk', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(145, 'flag-icon flag-icon-ml', 'ml', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(146, 'flag-icon flag-icon-mm', 'mm', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(147, 'flag-icon flag-icon-mn', 'mn', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(148, 'flag-icon flag-icon-mo', 'mo', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(149, 'flag-icon flag-icon-mp', 'mp', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(150, 'flag-icon flag-icon-mq', 'mq', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(151, 'flag-icon flag-icon-mr', 'mr', '2021-05-29 07:22:26', '2021-05-29 07:22:26'),
(152, 'flag-icon flag-icon-ms', 'ms', '2021-05-29 07:22:27', '2021-05-29 07:22:27'),
(153, 'flag-icon flag-icon-mt', 'mt', '2021-05-29 07:22:27', '2021-05-29 07:22:27'),
(154, 'flag-icon flag-icon-mu', 'mu', '2021-05-29 07:22:27', '2021-05-29 07:22:27'),
(155, 'flag-icon flag-icon-mv', 'mv', '2021-05-29 07:22:27', '2021-05-29 07:22:27'),
(156, 'flag-icon flag-icon-mw', 'mw', '2021-05-29 07:22:27', '2021-05-29 07:22:27'),
(157, 'flag-icon flag-icon-mx', 'mx', '2021-05-29 07:22:28', '2021-05-29 07:22:28'),
(158, 'flag-icon flag-icon-my', 'my', '2021-05-29 07:22:28', '2021-05-29 07:22:28'),
(159, 'flag-icon flag-icon-mz', 'mz', '2021-05-29 07:22:28', '2021-05-29 07:22:28'),
(160, 'flag-icon flag-icon-na', 'na', '2021-05-29 07:22:28', '2021-05-29 07:22:28'),
(161, 'flag-icon flag-icon-nc', 'nc', '2021-05-29 07:22:28', '2021-05-29 07:22:28'),
(162, 'flag-icon flag-icon-ne', 'ne', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(163, 'flag-icon flag-icon-nf', 'nf', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(164, 'flag-icon flag-icon-ng', 'ng', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(165, 'flag-icon flag-icon-ni', 'ni', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(166, 'flag-icon flag-icon-nl', 'nl', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(167, 'flag-icon flag-icon-no', 'no', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(168, 'flag-icon flag-icon-np', 'np', '2021-05-29 07:22:29', '2021-05-29 07:22:29'),
(169, 'flag-icon flag-icon-nr', 'nr', '2021-05-29 07:22:30', '2021-05-29 07:22:30'),
(170, 'flag-icon flag-icon-nu', 'nu', '2021-05-29 07:22:30', '2021-05-29 07:22:30'),
(171, 'flag-icon flag-icon-nz', 'nz', '2021-05-29 07:22:30', '2021-05-29 07:22:30'),
(172, 'flag-icon flag-icon-om', 'om', '2021-05-29 07:22:30', '2021-05-29 07:22:30'),
(173, 'flag-icon flag-icon-pa', 'pa', '2021-05-29 07:22:30', '2021-05-29 07:22:30'),
(174, 'flag-icon flag-icon-pe', 'pe', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(175, 'flag-icon flag-icon-pf', 'pf', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(176, 'flag-icon flag-icon-pg', 'pg', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(177, 'flag-icon flag-icon-ph', 'ph', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(178, 'flag-icon flag-icon-pk', 'pk', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(179, 'flag-icon flag-icon-pl', 'pl', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(180, 'flag-icon flag-icon-pm', 'pm', '2021-05-29 07:22:31', '2021-05-29 07:22:31'),
(181, 'flag-icon flag-icon-pn', 'pn', '2021-05-29 07:22:32', '2021-05-29 07:22:32'),
(182, 'flag-icon flag-icon-pr', 'pr', '2021-05-29 07:22:32', '2021-05-29 07:22:32'),
(183, 'flag-icon flag-icon-ps', 'ps', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(184, 'flag-icon flag-icon-pt', 'pt', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(185, 'flag-icon flag-icon-pw', 'pw', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(186, 'flag-icon flag-icon-py', 'py', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(187, 'flag-icon flag-icon-qa', 'qa', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(188, 'flag-icon flag-icon-re', 're', '2021-05-29 07:22:33', '2021-05-29 07:22:33'),
(189, 'flag-icon flag-icon-ro', 'ro', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(190, 'flag-icon flag-icon-rs', 'rs', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(191, 'flag-icon flag-icon-ru', 'ru', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(192, 'flag-icon flag-icon-rw', 'rw', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(193, 'flag-icon flag-icon-sa', 'sa', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(194, 'flag-icon flag-icon-sb', 'sb', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(195, 'flag-icon flag-icon-sc', 'sc', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(196, 'flag-icon flag-icon-sd', 'sd', '2021-05-29 07:22:34', '2021-05-29 07:22:34'),
(197, 'flag-icon flag-icon-se', 'se', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(198, 'flag-icon flag-icon-sg', 'sg', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(199, 'flag-icon flag-icon-sh', 'sh', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(200, 'flag-icon flag-icon-si', 'si', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(201, 'flag-icon flag-icon-sj', 'sj', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(202, 'flag-icon flag-icon-sk', 'sk', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(203, 'flag-icon flag-icon-sl', 'sl', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(204, 'flag-icon flag-icon-sm', 'sm', '2021-05-29 07:22:35', '2021-05-29 07:22:35'),
(205, 'flag-icon flag-icon-sn', 'sn', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(206, 'flag-icon flag-icon-so', 'so', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(207, 'flag-icon flag-icon-sr', 'sr', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(208, 'flag-icon flag-icon-ss', 'ss', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(209, 'flag-icon flag-icon-st', 'st', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(210, 'flag-icon flag-icon-sv', 'sv', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(211, 'flag-icon flag-icon-sx', 'sx', '2021-05-29 07:22:36', '2021-05-29 07:22:36'),
(212, 'flag-icon flag-icon-sy', 'sy', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(213, 'flag-icon flag-icon-sz', 'sz', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(214, 'flag-icon flag-icon-tc', 'tc', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(215, 'flag-icon flag-icon-td', 'td', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(216, 'flag-icon flag-icon-tf', 'tf', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(217, 'flag-icon flag-icon-tg', 'tg', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(218, 'flag-icon flag-icon-th', 'th', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(219, 'flag-icon flag-icon-tj', 'tj', '2021-05-29 07:22:37', '2021-05-29 07:22:37'),
(220, 'flag-icon flag-icon-tk', 'tk', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(221, 'flag-icon flag-icon-tl', 'tl', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(222, 'flag-icon flag-icon-tm', 'tm', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(223, 'flag-icon flag-icon-tn', 'tn', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(224, 'flag-icon flag-icon-to', 'to', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(225, 'flag-icon flag-icon-tr', 'tr', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(226, 'flag-icon flag-icon-tt', 'tt', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(227, 'flag-icon flag-icon-tv', 'tv', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(228, 'flag-icon flag-icon-tw', 'tw', '2021-05-29 07:22:38', '2021-05-29 07:22:38'),
(229, 'flag-icon flag-icon-tz', 'tz', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(230, 'flag-icon flag-icon-ua', 'ua', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(231, 'flag-icon flag-icon-ug', 'ug', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(232, 'flag-icon flag-icon-um', 'um', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(233, 'flag-icon flag-icon-us', 'us', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(234, 'flag-icon flag-icon-uy', 'uy', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(235, 'flag-icon flag-icon-uz', 'uz', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(236, 'flag-icon flag-icon-va', 'va', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(237, 'flag-icon flag-icon-vc', 'vc', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(238, 'flag-icon flag-icon-ve', 've', '2021-05-29 07:22:39', '2021-05-29 07:22:39'),
(239, 'flag-icon flag-icon-vg', 'vg', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(240, 'flag-icon flag-icon-vi', 'vi', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(241, 'flag-icon flag-icon-vn', 'vn', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(242, 'flag-icon flag-icon-vu', 'vu', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(243, 'flag-icon flag-icon-wf', 'wf', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(244, 'flag-icon flag-icon-ws', 'ws', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(245, 'flag-icon flag-icon-ye', 'ye', '2021-05-29 07:22:40', '2021-05-29 07:22:40'),
(246, 'flag-icon flag-icon-yt', 'yt', '2021-05-29 07:22:41', '2021-05-29 07:22:41'),
(247, 'flag-icon flag-icon-za', 'za', '2021-05-29 07:22:41', '2021-05-29 07:22:41'),
(248, 'flag-icon flag-icon-zm', 'zm', '2021-05-29 07:22:41', '2021-05-29 07:22:41'),
(249, 'flag-icon flag-icon-zw', 'zw', '2021-05-29 07:22:41', '2021-05-29 07:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tab` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 no, 1 yes',
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `disk`, `original_image`, `og_image`, `thumbnail`, `big_image`, `big_image_two`, `medium_image`, `medium_image_two`, `medium_image_three`, `small_image`, `created_at`, `updated_at`) VALUES
(1, 'local', 'images/20210529165808_original_8.webp', 'images/20210529165808_ogImage_6.jpg', 'images/20210529165809_thumbnail_100x100_37.webp', 'images/20210529165809_big_1080x1000_37.webp', 'images/20210529165810_big_730x400_44.webp', 'images/20210529165810_medium_358x215_30.webp', 'images/20210529165810_medium_350x190_13.webp', 'images/20210529165811_medium_255x175_8.webp', 'images/20210529165811_small_123x83_50.webp', '2021-05-29 11:13:31', '2021-05-29 11:13:31'),
(2, 'local', 'images/20210529165840_original_42.webp', 'images/20210529165840_ogImage_24.jpg', 'images/20210529165840_thumbnail_100x100_14.webp', 'images/20210529165840_big_1080x1000_29.webp', 'images/20210529165840_big_730x400_3.webp', 'images/20210529165840_medium_358x215_32.webp', 'images/20210529165840_medium_350x190_30.webp', 'images/20210529165840_medium_255x175_35.webp', 'images/20210529165840_small_123x83_37.webp', '2021-05-29 11:13:42', '2021-05-29 11:13:42'),
(3, 'local', 'images/20210529165843_original_50.webp', 'images/20210529165843_ogImage_23.jpg', 'images/20210529165843_thumbnail_100x100_19.webp', 'images/20210529165843_big_1080x1000_37.webp', 'images/20210529165843_big_730x400_18.webp', 'images/20210529165843_medium_358x215_13.webp', 'images/20210529165843_medium_350x190_3.webp', 'images/20210529165843_medium_255x175_32.webp', 'images/20210529165843_small_123x83_37.webp', '2021-05-29 11:13:46', '2021-05-29 11:13:46'),
(4, 'local', 'images/20210529165846_original_26.webp', 'images/20210529165846_ogImage_46.jpg', 'images/20210529165846_thumbnail_100x100_29.webp', 'images/20210529165846_big_1080x1000_39.webp', 'images/20210529165846_big_730x400_13.webp', 'images/20210529165846_medium_358x215_36.webp', 'images/20210529165846_medium_350x190_44.webp', 'images/20210529165846_medium_255x175_35.webp', 'images/20210529165846_small_123x83_19.webp', '2021-05-29 11:13:49', '2021-05-29 11:13:49'),
(5, 'local', 'images/20210529165849_original_33.webp', 'images/20210529165849_ogImage_13.jpg', 'images/20210529165849_thumbnail_100x100_32.webp', 'images/20210529165849_big_1080x1000_15.webp', 'images/20210529165849_big_730x400_39.webp', 'images/20210529165849_medium_358x215_12.webp', 'images/20210529165849_medium_350x190_39.webp', 'images/20210529165849_medium_255x175_10.webp', 'images/20210529165849_small_123x83_29.webp', '2021-05-29 11:13:52', '2021-05-29 11:13:52'),
(6, 'local', 'images/20210529165853_original_4.webp', 'images/20210529165853_ogImage_32.jpg', 'images/20210529165853_thumbnail_100x100_37.webp', 'images/20210529165853_big_1080x1000_14.webp', 'images/20210529165853_big_730x400_15.webp', 'images/20210529165853_medium_358x215_2.webp', 'images/20210529165853_medium_350x190_2.webp', 'images/20210529165853_medium_255x175_5.webp', 'images/20210529165853_small_123x83_28.webp', '2021-05-29 11:13:55', '2021-05-29 11:13:55'),
(7, 'local', 'images/20210529165856_original_36.webp', 'images/20210529165856_ogImage_9.jpg', 'images/20210529165856_thumbnail_100x100_18.webp', 'images/20210529165856_big_1080x1000_10.webp', 'images/20210529165856_big_730x400_50.webp', 'images/20210529165856_medium_358x215_37.webp', 'images/20210529165856_medium_350x190_44.webp', 'images/20210529165856_medium_255x175_46.webp', 'images/20210529165856_small_123x83_43.webp', '2021-05-29 11:13:58', '2021-05-29 11:13:58'),
(8, 'local', 'images/20210529165858_original_9.webp', 'images/20210529165858_ogImage_25.jpg', 'images/20210529165858_thumbnail_100x100_49.webp', 'images/20210529165858_big_1080x1000_33.webp', 'images/20210529165858_big_730x400_43.webp', 'images/20210529165858_medium_358x215_41.webp', 'images/20210529165858_medium_350x190_15.webp', 'images/20210529165858_medium_255x175_19.webp', 'images/20210529165858_small_123x83_23.webp', '2021-05-29 11:14:03', '2021-05-29 11:14:03'),
(9, 'local', 'images/20210529165904_original_37.webp', 'images/20210529165904_ogImage_14.jpg', 'images/20210529165904_thumbnail_100x100_5.webp', 'images/20210529165904_big_1080x1000_41.webp', 'images/20210529165904_big_730x400_34.webp', 'images/20210529165904_medium_358x215_23.webp', 'images/20210529165904_medium_350x190_5.webp', 'images/20210529165904_medium_255x175_46.webp', 'images/20210529165904_small_123x83_36.webp', '2021-05-29 11:14:06', '2021-05-29 11:14:06'),
(10, 'local', 'images/20210529165906_original_13.webp', 'images/20210529165906_ogImage_30.jpg', 'images/20210529165906_thumbnail_100x100_1.webp', 'images/20210529165906_big_1080x1000_49.webp', 'images/20210529165906_big_730x400_40.webp', 'images/20210529165906_medium_358x215_5.webp', 'images/20210529165906_medium_350x190_44.webp', 'images/20210529165906_medium_255x175_29.webp', 'images/20210529165906_small_123x83_24.webp', '2021-05-29 11:14:09', '2021-05-29 11:14:09'),
(11, 'local', 'images/20210529165910_original_23.webp', 'images/20210529165910_ogImage_24.jpg', 'images/20210529165910_thumbnail_100x100_44.webp', 'images/20210529165910_big_1080x1000_3.webp', 'images/20210529165910_big_730x400_29.webp', 'images/20210529165910_medium_358x215_29.webp', 'images/20210529165910_medium_350x190_50.webp', 'images/20210529165910_medium_255x175_12.webp', 'images/20210529165910_small_123x83_14.webp', '2021-05-29 11:14:12', '2021-05-29 11:14:12'),
(12, 'local', 'images/20210529165912_original_16.webp', 'images/20210529165912_ogImage_23.jpg', 'images/20210529165912_thumbnail_100x100_31.webp', 'images/20210529165912_big_1080x1000_32.webp', 'images/20210529165912_big_730x400_7.webp', 'images/20210529165912_medium_358x215_28.webp', 'images/20210529165912_medium_350x190_11.webp', 'images/20210529165912_medium_255x175_14.webp', 'images/20210529165912_small_123x83_4.webp', '2021-05-29 11:14:15', '2021-05-29 11:14:15'),
(13, 'local', 'images/20210529170152_original_28.webp', 'images/20210529170152_ogImage_43.jpg', 'images/20210529170152_thumbnail_100x100_2.webp', 'images/20210529170152_big_1080x1000_17.webp', 'images/20210529170152_big_730x400_42.webp', 'images/20210529170152_medium_358x215_24.webp', 'images/20210529170152_medium_350x190_47.webp', 'images/20210529170152_medium_255x175_44.webp', 'images/20210529170152_small_123x83_15.webp', '2021-05-29 11:16:55', '2021-05-29 11:16:55'),
(14, 'local', 'images/20210529170155_original_31.webp', 'images/20210529170155_ogImage_29.jpg', 'images/20210529170155_thumbnail_100x100_33.webp', 'images/20210529170155_big_1080x1000_23.webp', 'images/20210529170155_big_730x400_42.webp', 'images/20210529170155_medium_358x215_23.webp', 'images/20210529170155_medium_350x190_2.webp', 'images/20210529170155_medium_255x175_14.webp', 'images/20210529170155_small_123x83_45.webp', '2021-05-29 11:16:58', '2021-05-29 11:16:58'),
(15, 'local', 'images/20210529170158_original_2.webp', 'images/20210529170158_ogImage_46.jpg', 'images/20210529170158_thumbnail_100x100_46.webp', 'images/20210529170158_big_1080x1000_8.webp', 'images/20210529170158_big_730x400_39.webp', 'images/20210529170158_medium_358x215_26.webp', 'images/20210529170158_medium_350x190_22.webp', 'images/20210529170158_medium_255x175_38.webp', 'images/20210529170158_small_123x83_23.webp', '2021-05-29 11:17:01', '2021-05-29 11:17:01'),
(16, 'local', 'images/20210529170202_original_7.webp', 'images/20210529170202_ogImage_35.jpg', 'images/20210529170202_thumbnail_100x100_17.webp', 'images/20210529170202_big_1080x1000_23.webp', 'images/20210529170202_big_730x400_36.webp', 'images/20210529170202_medium_358x215_1.webp', 'images/20210529170202_medium_350x190_22.webp', 'images/20210529170202_medium_255x175_13.webp', 'images/20210529170202_small_123x83_27.webp', '2021-05-29 11:17:04', '2021-05-29 11:17:04'),
(17, 'local', 'images/20210529171830_original_9.webp', 'images/20210529171830_ogImage_36.jpg', 'images/20210529171830_thumbnail_100x100_22.webp', 'images/20210529171830_big_1080x1000_11.webp', 'images/20210529171830_big_730x400_33.webp', 'images/20210529171830_medium_358x215_3.webp', 'images/20210529171830_medium_350x190_11.webp', 'images/20210529171830_medium_255x175_9.webp', 'images/20210529171830_small_123x83_42.webp', '2021-05-29 11:33:40', '2021-05-29 11:33:40'),
(18, 'local', 'images/20210529171840_original_15.webp', 'images/20210529171840_ogImage_24.jpg', 'images/20210529171840_thumbnail_100x100_34.webp', 'images/20210529171840_big_1080x1000_18.webp', 'images/20210529171840_big_730x400_6.webp', 'images/20210529171840_medium_358x215_48.webp', 'images/20210529171840_medium_350x190_35.webp', 'images/20210529171840_medium_255x175_46.webp', 'images/20210529171840_small_123x83_21.webp', '2021-05-29 11:33:49', '2021-05-29 11:33:49'),
(19, 'local', 'images/20210529171849_original_48.webp', 'images/20210529171849_ogImage_46.jpg', 'images/20210529171849_thumbnail_100x100_11.webp', 'images/20210529171849_big_1080x1000_46.webp', 'images/20210529171849_big_730x400_3.webp', 'images/20210529171849_medium_358x215_26.webp', 'images/20210529171849_medium_350x190_38.webp', 'images/20210529171849_medium_255x175_40.webp', 'images/20210529171849_small_123x83_35.webp', '2021-05-29 11:34:01', '2021-05-29 11:34:01'),
(20, 'local', 'images/20210529171901_original_3.webp', 'images/20210529171901_ogImage_35.jpg', 'images/20210529171901_thumbnail_100x100_34.webp', 'images/20210529171901_big_1080x1000_1.webp', 'images/20210529171901_big_730x400_18.webp', 'images/20210529171901_medium_358x215_35.webp', 'images/20210529171901_medium_350x190_11.webp', 'images/20210529171901_medium_255x175_25.webp', 'images/20210529171901_small_123x83_48.webp', '2021-05-29 11:34:14', '2021-05-29 11:34:14'),
(21, 'local', 'images/20210529171914_original_25.webp', 'images/20210529171914_ogImage_25.jpg', 'images/20210529171914_thumbnail_100x100_38.webp', 'images/20210529171914_big_1080x1000_49.webp', 'images/20210529171914_big_730x400_20.webp', 'images/20210529171914_medium_358x215_45.webp', 'images/20210529171914_medium_350x190_13.webp', 'images/20210529171914_medium_255x175_43.webp', 'images/20210529171914_small_123x83_10.webp', '2021-05-29 11:34:24', '2021-05-29 11:34:24'),
(22, 'local', 'images/20210529171924_original_37.webp', 'images/20210529171924_ogImage_27.jpg', 'images/20210529171924_thumbnail_100x100_12.webp', 'images/20210529171924_big_1080x1000_38.webp', 'images/20210529171924_big_730x400_36.webp', 'images/20210529171924_medium_358x215_43.webp', 'images/20210529171924_medium_350x190_1.webp', 'images/20210529171924_medium_255x175_6.webp', 'images/20210529171924_small_123x83_15.webp', '2021-05-29 11:34:37', '2021-05-29 11:34:37'),
(23, 'local', 'images/20210529172253_original_49.webp', 'images/20210529172253_ogImage_48.jpg', 'images/20210529172253_thumbnail_100x100_21.webp', 'images/20210529172253_big_1080x1000_26.webp', 'images/20210529172253_big_730x400_25.webp', 'images/20210529172253_medium_358x215_49.webp', 'images/20210529172253_medium_350x190_15.webp', 'images/20210529172253_medium_255x175_40.webp', 'images/20210529172253_small_123x83_15.webp', '2021-05-29 11:39:27', '2021-05-29 11:39:27'),
(24, 'local', 'images/20210529172428_original_29.webp', 'images/20210529172428_ogImage_38.jpg', 'images/20210529172428_thumbnail_100x100_10.webp', 'images/20210529172428_big_1080x1000_17.webp', 'images/20210529172428_big_730x400_45.webp', 'images/20210529172428_medium_358x215_41.webp', 'images/20210529172428_medium_350x190_34.webp', 'images/20210529172428_medium_255x175_22.webp', 'images/20210529172428_small_123x83_22.webp', '2021-05-29 11:40:20', '2021-05-29 11:40:20'),
(25, 'local', 'images/20210529172520_original_34.webp', 'images/20210529172520_ogImage_9.jpg', 'images/20210529172520_thumbnail_100x100_36.webp', 'images/20210529172520_big_1080x1000_33.webp', 'images/20210529172520_big_730x400_35.webp', 'images/20210529172520_medium_358x215_6.webp', 'images/20210529172520_medium_350x190_11.webp', 'images/20210529172520_medium_255x175_29.webp', 'images/20210529172520_small_123x83_45.webp', '2021-05-29 11:40:52', '2021-05-29 11:40:52'),
(26, 'local', 'images/20210529172553_original_34.webp', 'images/20210529172553_ogImage_1.jpg', 'images/20210529172553_thumbnail_100x100_19.webp', 'images/20210529172553_big_1080x1000_41.webp', 'images/20210529172553_big_730x400_38.webp', 'images/20210529172553_medium_358x215_19.webp', 'images/20210529172553_medium_350x190_43.webp', 'images/20210529172553_medium_255x175_11.webp', 'images/20210529172553_small_123x83_39.webp', '2021-05-29 11:41:46', '2021-05-29 11:41:46'),
(27, 'local', 'images/20210529172646_original_22.webp', 'images/20210529172646_ogImage_9.jpg', 'images/20210529172646_thumbnail_100x100_1.webp', 'images/20210529172646_big_1080x1000_44.webp', 'images/20210529172646_big_730x400_2.webp', 'images/20210529172646_medium_358x215_40.webp', 'images/20210529172646_medium_350x190_6.webp', 'images/20210529172646_medium_255x175_3.webp', 'images/20210529172646_small_123x83_40.webp', '2021-05-29 11:42:59', '2021-05-29 11:42:59'),
(28, 'local', 'images/20210529175250_original_11.webp', 'images/20210529175250_ogImage_34.jpg', 'images/20210529175251_thumbnail_100x100_36.webp', 'images/20210529175251_big_1080x1000_23.webp', 'images/20210529175251_big_730x400_25.webp', 'images/20210529175251_medium_358x215_27.webp', 'images/20210529175251_medium_350x190_39.webp', 'images/20210529175252_medium_255x175_4.webp', 'images/20210529175252_small_123x83_30.webp', '2021-05-29 12:08:17', '2021-05-29 12:08:17'),
(29, 'local', 'images/20210529175331_original_19.webp', 'images/20210529175331_ogImage_16.jpg', 'images/20210529175331_thumbnail_100x100_22.webp', 'images/20210529175331_big_1080x1000_31.webp', 'images/20210529175331_big_730x400_22.webp', 'images/20210529175331_medium_358x215_7.webp', 'images/20210529175331_medium_350x190_27.webp', 'images/20210529175331_medium_255x175_35.webp', 'images/20210529175331_small_123x83_31.webp', '2021-05-29 12:08:39', '2021-05-29 12:08:39'),
(30, 'local', 'images/20210529175340_original_33.webp', 'images/20210529175340_ogImage_26.jpeg', 'images/20210529175340_thumbnail_100x100_32.webp', 'images/20210529175340_big_1080x1000_5.webp', 'images/20210529175340_big_730x400_17.webp', 'images/20210529175340_medium_358x215_37.webp', 'images/20210529175340_medium_350x190_37.webp', 'images/20210529175340_medium_255x175_34.webp', 'images/20210529175340_small_123x83_32.webp', '2021-05-29 12:08:48', '2021-05-29 12:08:48'),
(31, 'local', 'images/20210529175348_original_25.webp', 'images/20210529175348_ogImage_20.jpg', 'images/20210529175348_thumbnail_100x100_25.webp', 'images/20210529175348_big_1080x1000_17.webp', 'images/20210529175348_big_730x400_22.webp', 'images/20210529175348_medium_358x215_22.webp', 'images/20210529175348_medium_350x190_23.webp', 'images/20210529175348_medium_255x175_43.webp', 'images/20210529175348_small_123x83_14.webp', '2021-05-29 12:08:56', '2021-05-29 12:08:56'),
(32, 'local', 'images/20210529175357_original_9.webp', 'images/20210529175357_ogImage_1.jpg', 'images/20210529175357_thumbnail_100x100_11.webp', 'images/20210529175357_big_1080x1000_30.webp', 'images/20210529175357_big_730x400_24.webp', 'images/20210529175357_medium_358x215_8.webp', 'images/20210529175357_medium_350x190_26.webp', 'images/20210529175357_medium_255x175_8.webp', 'images/20210529175357_small_123x83_39.webp', '2021-05-29 12:09:04', '2021-05-29 12:09:04'),
(33, 'local', 'images/20210529175405_original_1.webp', 'images/20210529175405_ogImage_24.jpg', 'images/20210529175405_thumbnail_100x100_50.webp', 'images/20210529175405_big_1080x1000_5.webp', 'images/20210529175405_big_730x400_19.webp', 'images/20210529175405_medium_358x215_17.webp', 'images/20210529175405_medium_350x190_7.webp', 'images/20210529175405_medium_255x175_24.webp', 'images/20210529175405_small_123x83_15.webp', '2021-05-29 12:09:12', '2021-05-29 12:09:12'),
(34, 'local', 'images/20210529175413_original_9.webp', 'images/20210529175413_ogImage_6.jpg', 'images/20210529175413_thumbnail_100x100_46.webp', 'images/20210529175413_big_1080x1000_25.webp', 'images/20210529175413_big_730x400_32.webp', 'images/20210529175413_medium_358x215_4.webp', 'images/20210529175413_medium_350x190_44.webp', 'images/20210529175413_medium_255x175_48.webp', 'images/20210529175413_small_123x83_15.webp', '2021-05-29 12:09:20', '2021-05-29 12:09:20'),
(35, 'local', 'images/20210529175420_original_46.webp', 'images/20210529175420_ogImage_45.jpg', 'images/20210529175420_thumbnail_100x100_42.webp', 'images/20210529175420_big_1080x1000_12.webp', 'images/20210529175420_big_730x400_28.webp', 'images/20210529175420_medium_358x215_29.webp', 'images/20210529175420_medium_350x190_31.webp', 'images/20210529175420_medium_255x175_11.webp', 'images/20210529175420_small_123x83_25.webp', '2021-05-29 12:09:28', '2021-05-29 12:09:28'),
(36, 'local', 'images/20210529175429_original_28.webp', 'images/20210529175429_ogImage_14.jpg', 'images/20210529175429_thumbnail_100x100_26.webp', 'images/20210529175429_big_1080x1000_45.webp', 'images/20210529175429_big_730x400_17.webp', 'images/20210529175429_medium_358x215_13.webp', 'images/20210529175429_medium_350x190_6.webp', 'images/20210529175429_medium_255x175_6.webp', 'images/20210529175429_small_123x83_29.webp', '2021-05-29 12:09:36', '2021-05-29 12:09:36'),
(37, 'local', 'images/20210529175437_original_15.webp', 'images/20210529175437_ogImage_19.jpg', 'images/20210529175437_thumbnail_100x100_17.webp', 'images/20210529175437_big_1080x1000_30.webp', 'images/20210529175437_big_730x400_42.webp', 'images/20210529175437_medium_358x215_25.webp', 'images/20210529175437_medium_350x190_37.webp', 'images/20210529175437_medium_255x175_1.webp', 'images/20210529175437_small_123x83_10.webp', '2021-05-29 12:09:45', '2021-05-29 12:09:45'),
(38, 'local', 'images/20210529175445_original_21.webp', 'images/20210529175445_ogImage_34.jpg', 'images/20210529175445_thumbnail_100x100_7.webp', 'images/20210529175445_big_1080x1000_35.webp', 'images/20210529175445_big_730x400_45.webp', 'images/20210529175445_medium_358x215_7.webp', 'images/20210529175445_medium_350x190_20.webp', 'images/20210529175445_medium_255x175_32.webp', 'images/20210529175445_small_123x83_2.webp', '2021-05-29 12:09:52', '2021-05-29 12:09:52'),
(39, 'local', 'images/20210529175452_original_17.webp', 'images/20210529175452_ogImage_9.jpg', 'images/20210529175452_thumbnail_100x100_41.webp', 'images/20210529175452_big_1080x1000_20.webp', 'images/20210529175452_big_730x400_39.webp', 'images/20210529175452_medium_358x215_45.webp', 'images/20210529175452_medium_350x190_45.webp', 'images/20210529175452_medium_255x175_3.webp', 'images/20210529175452_small_123x83_28.webp', '2021-05-29 12:10:01', '2021-05-29 12:10:01'),
(40, 'local', 'images/20210529175501_original_28.webp', 'images/20210529175501_ogImage_13.jpg', 'images/20210529175501_thumbnail_100x100_10.webp', 'images/20210529175501_big_1080x1000_36.webp', 'images/20210529175501_big_730x400_21.webp', 'images/20210529175501_medium_358x215_24.webp', 'images/20210529175501_medium_350x190_48.webp', 'images/20210529175501_medium_255x175_45.webp', 'images/20210529175501_small_123x83_41.webp', '2021-05-29 12:10:10', '2021-05-29 12:10:10'),
(41, 'local', 'images/20210529175510_original_37.webp', 'images/20210529175510_ogImage_4.jpg', 'images/20210529175510_thumbnail_100x100_17.webp', 'images/20210529175510_big_1080x1000_7.webp', 'images/20210529175510_big_730x400_20.webp', 'images/20210529175510_medium_358x215_1.webp', 'images/20210529175510_medium_350x190_35.webp', 'images/20210529175510_medium_255x175_5.webp', 'images/20210529175510_small_123x83_47.webp', '2021-05-29 12:10:20', '2021-05-29 12:10:20'),
(42, 'local', 'images/20210529175520_original_40.webp', 'images/20210529175520_ogImage_20.png', 'images/20210529175520_thumbnail_100x100_47.webp', 'images/20210529175520_big_1080x1000_46.webp', 'images/20210529175520_big_730x400_49.webp', 'images/20210529175520_medium_358x215_24.webp', 'images/20210529175520_medium_350x190_21.webp', 'images/20210529175520_medium_255x175_7.webp', 'images/20210529175520_small_123x83_38.webp', '2021-05-29 12:10:36', '2021-05-29 12:10:36'),
(43, 'local', 'images/20210529190724_original_6.webp', 'images/20210529190724_ogImage_31.jpg', 'images/20210529190724_thumbnail_100x100_7.webp', 'images/20210529190724_big_1080x1000_15.webp', 'images/20210529190724_big_730x400_28.webp', 'images/20210529190724_medium_358x215_42.webp', 'images/20210529190724_medium_350x190_28.webp', 'images/20210529190724_medium_255x175_8.webp', 'images/20210529190724_small_123x83_2.webp', '2021-05-29 13:22:36', '2021-05-29 13:22:36'),
(44, 'local', 'images/20210529190736_original_27.webp', 'images/20210529190736_ogImage_13.jpg', 'images/20210529190736_thumbnail_100x100_2.webp', 'images/20210529190736_big_1080x1000_14.webp', 'images/20210529190736_big_730x400_35.webp', 'images/20210529190736_medium_358x215_35.webp', 'images/20210529190736_medium_350x190_4.webp', 'images/20210529190736_medium_255x175_26.webp', 'images/20210529190736_small_123x83_22.webp', '2021-05-29 13:22:45', '2021-05-29 13:22:45'),
(45, 'local', 'images/20210529190746_original_30.webp', 'images/20210529190746_ogImage_8.jpg', 'images/20210529190746_thumbnail_100x100_38.webp', 'images/20210529190746_big_1080x1000_38.webp', 'images/20210529190746_big_730x400_40.webp', 'images/20210529190746_medium_358x215_13.webp', 'images/20210529190746_medium_350x190_24.webp', 'images/20210529190746_medium_255x175_13.webp', 'images/20210529190746_small_123x83_29.webp', '2021-05-29 13:22:56', '2021-05-29 13:22:56'),
(46, 'local', 'images/20210529190756_original_32.webp', 'images/20210529190756_ogImage_1.jpg', 'images/20210529190756_thumbnail_100x100_46.webp', 'images/20210529190756_big_1080x1000_48.webp', 'images/20210529190756_big_730x400_6.webp', 'images/20210529190756_medium_358x215_14.webp', 'images/20210529190756_medium_350x190_42.webp', 'images/20210529190756_medium_255x175_21.webp', 'images/20210529190756_small_123x83_42.webp', '2021-05-29 13:23:09', '2021-05-29 13:23:09'),
(47, 'local', 'images/20210529190810_original_43.webp', 'images/20210529190810_ogImage_32.jpg', 'images/20210529190810_thumbnail_100x100_37.webp', 'images/20210529190810_big_1080x1000_23.webp', 'images/20210529190810_big_730x400_36.webp', 'images/20210529190810_medium_358x215_18.webp', 'images/20210529190810_medium_350x190_12.webp', 'images/20210529190810_medium_255x175_13.webp', 'images/20210529190810_small_123x83_33.webp', '2021-05-29 13:23:18', '2021-05-29 13:23:18'),
(48, 'local', 'images/20210529190818_original_35.webp', 'images/20210529190818_ogImage_6.jpg', 'images/20210529190818_thumbnail_100x100_20.webp', 'images/20210529190818_big_1080x1000_15.webp', 'images/20210529190818_big_730x400_13.webp', 'images/20210529190818_medium_358x215_20.webp', 'images/20210529190818_medium_350x190_19.webp', 'images/20210529190818_medium_255x175_22.webp', 'images/20210529190818_small_123x83_45.webp', '2021-05-29 13:23:30', '2021-05-29 13:23:30'),
(49, 'local', 'images/20210529190831_original_25.webp', 'images/20210529190831_ogImage_47.jpg', 'images/20210529190831_thumbnail_100x100_10.webp', 'images/20210529190831_big_1080x1000_10.webp', 'images/20210529190831_big_730x400_50.webp', 'images/20210529190831_medium_358x215_27.webp', 'images/20210529190831_medium_350x190_22.webp', 'images/20210529190831_medium_255x175_4.webp', 'images/20210529190831_small_123x83_31.webp', '2021-05-29 13:23:38', '2021-05-29 13:23:38'),
(50, 'local', 'images/20210529190838_original_48.webp', 'images/20210529190838_ogImage_37.jpg', 'images/20210529190838_thumbnail_100x100_48.webp', 'images/20210529190838_big_1080x1000_11.webp', 'images/20210529190838_big_730x400_40.webp', 'images/20210529190838_medium_358x215_48.webp', 'images/20210529190838_medium_350x190_20.webp', 'images/20210529190838_medium_255x175_46.webp', 'images/20210529190838_small_123x83_44.webp', '2021-05-29 13:23:46', '2021-05-29 13:23:46'),
(51, 'local', 'images/20210529190846_original_40.webp', 'images/20210529190846_ogImage_33.jpg', 'images/20210529190846_thumbnail_100x100_23.webp', 'images/20210529190846_big_1080x1000_40.webp', 'images/20210529190846_big_730x400_5.webp', 'images/20210529190846_medium_358x215_28.webp', 'images/20210529190846_medium_350x190_18.webp', 'images/20210529190846_medium_255x175_41.webp', 'images/20210529190846_small_123x83_50.webp', '2021-05-29 13:23:55', '2021-05-29 13:23:55'),
(52, 'local', 'images/20210529190855_original_16.webp', 'images/20210529190855_ogImage_11.jpg', 'images/20210529190855_thumbnail_100x100_20.webp', 'images/20210529190855_big_1080x1000_12.webp', 'images/20210529190855_big_730x400_34.webp', 'images/20210529190855_medium_358x215_11.webp', 'images/20210529190855_medium_350x190_29.webp', 'images/20210529190855_medium_255x175_31.webp', 'images/20210529190855_small_123x83_32.webp', '2021-05-29 13:24:04', '2021-05-29 13:24:04'),
(53, 'local', 'images/20210529190904_original_32.webp', 'images/20210529190904_ogImage_17.jpg', 'images/20210529190904_thumbnail_100x100_31.webp', 'images/20210529190904_big_1080x1000_46.webp', 'images/20210529190904_big_730x400_29.webp', 'images/20210529190904_medium_358x215_29.webp', 'images/20210529190904_medium_350x190_49.webp', 'images/20210529190904_medium_255x175_8.webp', 'images/20210529190904_small_123x83_32.webp', '2021-05-29 13:24:12', '2021-05-29 13:24:12'),
(54, 'local', 'images/20210529190913_original_44.webp', 'images/20210529190913_ogImage_2.jpg', 'images/20210529190913_thumbnail_100x100_48.webp', 'images/20210529190913_big_1080x1000_6.webp', 'images/20210529190913_big_730x400_4.webp', 'images/20210529190913_medium_358x215_10.webp', 'images/20210529190913_medium_350x190_20.webp', 'images/20210529190913_medium_255x175_14.webp', 'images/20210529190913_small_123x83_40.webp', '2021-05-29 13:24:23', '2021-05-29 13:24:23'),
(55, 'local', 'images/20210529190924_original_7.webp', 'images/20210529190924_ogImage_23.jpg', 'images/20210529190924_thumbnail_100x100_31.webp', 'images/20210529190924_big_1080x1000_45.webp', 'images/20210529190924_big_730x400_44.webp', 'images/20210529190924_medium_358x215_7.webp', 'images/20210529190924_medium_350x190_41.webp', 'images/20210529190924_medium_255x175_50.webp', 'images/20210529190924_small_123x83_37.webp', '2021-05-29 13:24:35', '2021-05-29 13:24:35'),
(56, 'local', 'images/20210529190935_original_6.webp', 'images/20210529190935_ogImage_4.jpg', 'images/20210529190935_thumbnail_100x100_19.webp', 'images/20210529190935_big_1080x1000_40.webp', 'images/20210529190935_big_730x400_1.webp', 'images/20210529190935_medium_358x215_11.webp', 'images/20210529190935_medium_350x190_19.webp', 'images/20210529190935_medium_255x175_20.webp', 'images/20210529190935_small_123x83_5.webp', '2021-05-29 13:24:44', '2021-05-29 13:24:44'),
(57, 'local', 'images/20210529190944_original_25.webp', 'images/20210529190944_ogImage_41.jpeg', 'images/20210529190944_thumbnail_100x100_12.webp', 'images/20210529190944_big_1080x1000_7.webp', 'images/20210529190944_big_730x400_13.webp', 'images/20210529190944_medium_358x215_27.webp', 'images/20210529190944_medium_350x190_41.webp', 'images/20210529190944_medium_255x175_20.webp', 'images/20210529190944_small_123x83_40.webp', '2021-05-29 13:24:53', '2021-05-29 13:24:53'),
(58, 'local', 'images/20210529191006_original_40.webp', 'images/20210529191006_ogImage_25.jpg', 'images/20210529191006_thumbnail_100x100_17.webp', 'images/20210529191006_big_1080x1000_38.webp', 'images/20210529191006_big_730x400_47.webp', 'images/20210529191006_medium_358x215_49.webp', 'images/20210529191006_medium_350x190_18.webp', 'images/20210529191006_medium_255x175_36.webp', 'images/20210529191006_small_123x83_24.webp', '2021-05-29 13:25:17', '2021-05-29 13:25:17'),
(59, 'local', 'images/20210529191018_original_47.webp', 'images/20210529191018_ogImage_48.jpg', 'images/20210529191018_thumbnail_100x100_38.webp', 'images/20210529191018_big_1080x1000_49.webp', 'images/20210529191018_big_730x400_35.webp', 'images/20210529191018_medium_358x215_46.webp', 'images/20210529191018_medium_350x190_32.webp', 'images/20210529191018_medium_255x175_21.webp', 'images/20210529191018_small_123x83_33.webp', '2021-05-29 13:25:28', '2021-05-29 13:25:28'),
(60, 'local', 'images/20210529191028_original_39.webp', 'images/20210529191028_ogImage_12.jpg', 'images/20210529191028_thumbnail_100x100_16.webp', 'images/20210529191028_big_1080x1000_49.webp', 'images/20210529191028_big_730x400_40.webp', 'images/20210529191028_medium_358x215_3.webp', 'images/20210529191028_medium_350x190_15.webp', 'images/20210529191028_medium_255x175_14.webp', 'images/20210529191028_small_123x83_32.webp', '2021-05-29 13:25:39', '2021-05-29 13:25:39'),
(61, 'local', 'images/20210529191043_original_44.webp', 'images/20210529191043_ogImage_42.jpg', 'images/20210529191043_thumbnail_100x100_49.webp', 'images/20210529191043_big_1080x1000_34.webp', 'images/20210529191043_big_730x400_17.webp', 'images/20210529191043_medium_358x215_46.webp', 'images/20210529191043_medium_350x190_49.webp', 'images/20210529191043_medium_255x175_29.webp', 'images/20210529191043_small_123x83_31.webp', '2021-05-29 13:25:54', '2021-05-29 13:25:54'),
(62, 'local', 'images/20210529191055_original_48.webp', 'images/20210529191055_ogImage_29.jpg', 'images/20210529191055_thumbnail_100x100_8.webp', 'images/20210529191055_big_1080x1000_18.webp', 'images/20210529191055_big_730x400_28.webp', 'images/20210529191055_medium_358x215_32.webp', 'images/20210529191055_medium_350x190_47.webp', 'images/20210529191055_medium_255x175_11.webp', 'images/20210529191055_small_123x83_40.webp', '2021-05-29 13:26:06', '2021-05-29 13:26:06'),
(63, 'local', 'images/20210529191106_original_46.webp', 'images/20210529191106_ogImage_39.jpg', 'images/20210529191106_thumbnail_100x100_27.webp', 'images/20210529191106_big_1080x1000_34.webp', 'images/20210529191106_big_730x400_34.webp', 'images/20210529191106_medium_358x215_36.webp', 'images/20210529191106_medium_350x190_38.webp', 'images/20210529191106_medium_255x175_5.webp', 'images/20210529191106_small_123x83_43.webp', '2021-05-29 13:26:18', '2021-05-29 13:26:18'),
(64, 'local', 'images/20210529191118_original_11.webp', 'images/20210529191118_ogImage_10.jpg', 'images/20210529191118_thumbnail_100x100_15.webp', 'images/20210529191118_big_1080x1000_11.webp', 'images/20210529191118_big_730x400_8.webp', 'images/20210529191118_medium_358x215_30.webp', 'images/20210529191118_medium_350x190_40.webp', 'images/20210529191118_medium_255x175_14.webp', 'images/20210529191118_small_123x83_6.webp', '2021-05-29 13:26:28', '2021-05-29 13:26:28'),
(65, 'local', 'images/20210529191128_original_22.webp', 'images/20210529191128_ogImage_35.jpg', 'images/20210529191128_thumbnail_100x100_40.webp', 'images/20210529191128_big_1080x1000_37.webp', 'images/20210529191128_big_730x400_32.webp', 'images/20210529191128_medium_358x215_21.webp', 'images/20210529191128_medium_350x190_44.webp', 'images/20210529191128_medium_255x175_42.webp', 'images/20210529191128_small_123x83_44.webp', '2021-05-29 13:26:37', '2021-05-29 13:26:37'),
(66, 'local', 'images/20210529191137_original_38.webp', 'images/20210529191137_ogImage_13.jpg', 'images/20210529191137_thumbnail_100x100_41.webp', 'images/20210529191137_big_1080x1000_33.webp', 'images/20210529191137_big_730x400_2.webp', 'images/20210529191137_medium_358x215_28.webp', 'images/20210529191137_medium_350x190_49.webp', 'images/20210529191137_medium_255x175_5.webp', 'images/20210529191137_small_123x83_16.webp', '2021-05-29 13:26:46', '2021-05-29 13:26:46'),
(67, 'local', 'images/20210529191147_original_4.webp', 'images/20210529191147_ogImage_38.jpg', 'images/20210529191147_thumbnail_100x100_28.webp', 'images/20210529191147_big_1080x1000_21.webp', 'images/20210529191147_big_730x400_17.webp', 'images/20210529191147_medium_358x215_32.webp', 'images/20210529191147_medium_350x190_29.webp', 'images/20210529191147_medium_255x175_50.webp', 'images/20210529191147_small_123x83_7.webp', '2021-05-29 13:26:57', '2021-05-29 13:26:57'),
(68, 'local', 'images/20210529191158_original_19.webp', 'images/20210529191158_ogImage_5.jpg', 'images/20210529191158_thumbnail_100x100_27.webp', 'images/20210529191158_big_1080x1000_34.webp', 'images/20210529191158_big_730x400_25.webp', 'images/20210529191158_medium_358x215_13.webp', 'images/20210529191158_medium_350x190_17.webp', 'images/20210529191158_medium_255x175_17.webp', 'images/20210529191158_small_123x83_26.webp', '2021-05-29 13:27:07', '2021-05-29 13:27:07'),
(69, 'local', 'images/20210529191208_original_21.webp', 'images/20210529191208_ogImage_31.jpg', 'images/20210529191208_thumbnail_100x100_45.webp', 'images/20210529191208_big_1080x1000_4.webp', 'images/20210529191208_big_730x400_32.webp', 'images/20210529191208_medium_358x215_26.webp', 'images/20210529191208_medium_350x190_39.webp', 'images/20210529191208_medium_255x175_8.webp', 'images/20210529191208_small_123x83_21.webp', '2021-05-29 13:27:17', '2021-05-29 13:27:17'),
(70, 'local', 'images/20210529191218_original_46.webp', 'images/20210529191218_ogImage_41.jpg', 'images/20210529191218_thumbnail_100x100_44.webp', 'images/20210529191218_big_1080x1000_42.webp', 'images/20210529191218_big_730x400_20.webp', 'images/20210529191218_medium_358x215_12.webp', 'images/20210529191218_medium_350x190_26.webp', 'images/20210529191218_medium_255x175_38.webp', 'images/20210529191218_small_123x83_18.webp', '2021-05-29 13:27:26', '2021-05-29 13:27:26'),
(71, 'local', 'images/20210529191226_original_7.webp', 'images/20210529191226_ogImage_49.jpg', 'images/20210529191226_thumbnail_100x100_8.webp', 'images/20210529191226_big_1080x1000_19.webp', 'images/20210529191226_big_730x400_31.webp', 'images/20210529191226_medium_358x215_7.webp', 'images/20210529191226_medium_350x190_18.webp', 'images/20210529191226_medium_255x175_25.webp', 'images/20210529191226_small_123x83_38.webp', '2021-05-29 13:27:36', '2021-05-29 13:27:36'),
(72, 'local', 'images/20210529191236_original_7.webp', 'images/20210529191236_ogImage_13.jpg', 'images/20210529191236_thumbnail_100x100_17.webp', 'images/20210529191236_big_1080x1000_32.webp', 'images/20210529191236_big_730x400_3.webp', 'images/20210529191236_medium_358x215_42.webp', 'images/20210529191236_medium_350x190_6.webp', 'images/20210529191236_medium_255x175_39.webp', 'images/20210529191236_small_123x83_11.webp', '2021-05-29 13:27:44', '2021-05-29 13:27:44'),
(73, 'local', 'images/20210530141042_original_37.webp', 'images/20210530141042_ogImage_44.jpg', 'images/20210530141042_thumbnail_100x100_44.webp', 'images/20210530141042_big_1080x1000_24.webp', 'images/20210530141042_big_730x400_18.webp', 'images/20210530141042_medium_358x215_19.webp', 'images/20210530141042_medium_350x190_2.webp', 'images/20210530141042_medium_255x175_50.webp', 'images/20210530141042_small_123x83_13.webp', '2021-05-30 08:25:53', '2021-05-30 08:25:53'),
(74, 'local', 'images/20210530141042_original_12.webp', 'images/20210530141042_ogImage_48.jpg', 'images/20210530141042_thumbnail_100x100_50.webp', 'images/20210530141042_big_1080x1000_31.webp', 'images/20210530141042_big_730x400_30.webp', 'images/20210530141042_medium_358x215_42.webp', 'images/20210530141042_medium_350x190_22.webp', 'images/20210530141042_medium_255x175_26.webp', 'images/20210530141042_small_123x83_44.webp', '2021-05-30 08:25:59', '2021-05-30 08:25:59'),
(75, 'local', 'images/20210530141044_original_45.webp', 'images/20210530141044_ogImage_30.jpg', 'images/20210530141044_thumbnail_100x100_15.webp', 'images/20210530141044_big_1080x1000_29.webp', 'images/20210530141044_big_730x400_5.webp', 'images/20210530141044_medium_358x215_40.webp', 'images/20210530141044_medium_350x190_22.webp', 'images/20210530141044_medium_255x175_36.webp', 'images/20210530141044_small_123x83_4.webp', '2021-05-30 08:26:01', '2021-05-30 08:26:01'),
(76, 'local', 'images/20210530141054_original_20.webp', 'images/20210530141054_ogImage_6.jpg', 'images/20210530141054_thumbnail_100x100_15.webp', 'images/20210530141054_big_1080x1000_8.webp', 'images/20210530141054_big_730x400_17.webp', 'images/20210530141054_medium_358x215_14.webp', 'images/20210530141054_medium_350x190_45.webp', 'images/20210530141054_medium_255x175_16.webp', 'images/20210530141054_small_123x83_6.webp', '2021-05-30 08:26:01', '2021-05-30 08:26:01'),
(77, 'local', 'images/20210530141103_original_47.webp', 'images/20210530141103_ogImage_22.jpg', 'images/20210530141103_thumbnail_100x100_24.webp', 'images/20210530141103_big_1080x1000_13.webp', 'images/20210530141103_big_730x400_18.webp', 'images/20210530141103_medium_358x215_10.webp', 'images/20210530141103_medium_350x190_17.webp', 'images/20210530141103_medium_255x175_4.webp', 'images/20210530141103_small_123x83_45.webp', '2021-05-30 08:26:08', '2021-05-30 08:26:08'),
(78, 'local', 'images/20210530141059_original_18.webp', 'images/20210530141059_ogImage_27.jpg', 'images/20210530141059_thumbnail_100x100_12.webp', 'images/20210530141059_big_1080x1000_25.webp', 'images/20210530141059_big_730x400_21.webp', 'images/20210530141059_medium_358x215_17.webp', 'images/20210530141059_medium_350x190_10.webp', 'images/20210530141059_medium_255x175_50.webp', 'images/20210530141059_small_123x83_10.webp', '2021-05-30 08:26:13', '2021-05-30 08:26:13'),
(79, 'local', 'images/20210530141109_original_35.webp', 'images/20210530141109_ogImage_27.jpg', 'images/20210530141109_thumbnail_100x100_12.webp', 'images/20210530141109_big_1080x1000_40.webp', 'images/20210530141109_big_730x400_13.webp', 'images/20210530141109_medium_358x215_15.webp', 'images/20210530141109_medium_350x190_21.webp', 'images/20210530141109_medium_255x175_2.webp', 'images/20210530141109_small_123x83_50.webp', '2021-05-30 08:26:15', '2021-05-30 08:26:15'),
(80, 'local', 'images/20210530141101_original_23.webp', 'images/20210530141101_ogImage_28.jpg', 'images/20210530141101_thumbnail_100x100_4.webp', 'images/20210530141101_big_1080x1000_49.webp', 'images/20210530141101_big_730x400_17.webp', 'images/20210530141101_medium_358x215_42.webp', 'images/20210530141101_medium_350x190_49.webp', 'images/20210530141101_medium_255x175_36.webp', 'images/20210530141101_small_123x83_36.webp', '2021-05-30 08:26:16', '2021-05-30 08:26:16'),
(81, 'local', 'images/20210530141115_original_40.webp', 'images/20210530141115_ogImage_2.jpg', 'images/20210530141115_thumbnail_100x100_9.webp', 'images/20210530141115_big_1080x1000_21.webp', 'images/20210530141115_big_730x400_19.webp', 'images/20210530141115_medium_358x215_10.webp', 'images/20210530141115_medium_350x190_30.webp', 'images/20210530141115_medium_255x175_38.webp', 'images/20210530141115_small_123x83_31.webp', '2021-05-30 08:26:22', '2021-05-30 08:26:22'),
(82, 'local', 'images/20210530141114_original_25.webp', 'images/20210530141114_ogImage_8.jpg', 'images/20210530141114_thumbnail_100x100_47.webp', 'images/20210530141114_big_1080x1000_20.webp', 'images/20210530141114_big_730x400_17.webp', 'images/20210530141114_medium_358x215_50.webp', 'images/20210530141114_medium_350x190_18.webp', 'images/20210530141114_medium_255x175_8.webp', 'images/20210530141114_small_123x83_21.webp', '2021-05-30 08:26:26', '2021-05-30 08:26:26'),
(83, 'local', 'images/20210530141123_original_35.webp', 'images/20210530141123_ogImage_21.jpg', 'images/20210530141123_thumbnail_100x100_46.webp', 'images/20210530141123_big_1080x1000_50.webp', 'images/20210530141123_big_730x400_6.webp', 'images/20210530141123_medium_358x215_13.webp', 'images/20210530141123_medium_350x190_45.webp', 'images/20210530141123_medium_255x175_2.webp', 'images/20210530141123_small_123x83_35.webp', '2021-05-30 08:26:29', '2021-05-30 08:26:29'),
(84, 'local', 'images/20210530141116_original_5.webp', 'images/20210530141116_ogImage_15.jpg', 'images/20210530141116_thumbnail_100x100_37.webp', 'images/20210530141116_big_1080x1000_14.webp', 'images/20210530141116_big_730x400_44.webp', 'images/20210530141116_medium_358x215_7.webp', 'images/20210530141116_medium_350x190_43.webp', 'images/20210530141116_medium_255x175_27.webp', 'images/20210530141116_small_123x83_25.webp', '2021-05-30 08:26:30', '2021-05-30 08:26:30'),
(85, 'local', 'images/20210530141129_original_24.webp', 'images/20210530141129_ogImage_2.jpg', 'images/20210530141129_thumbnail_100x100_28.webp', 'images/20210530141129_big_1080x1000_19.webp', 'images/20210530141129_big_730x400_42.webp', 'images/20210530141129_medium_358x215_36.webp', 'images/20210530141129_medium_350x190_32.webp', 'images/20210530141129_medium_255x175_18.webp', 'images/20210530141129_small_123x83_18.webp', '2021-05-30 08:26:35', '2021-05-30 08:26:35'),
(86, 'local', 'images/20210530141127_original_26.webp', 'images/20210530141127_ogImage_35.jpg', 'images/20210530141127_thumbnail_100x100_9.webp', 'images/20210530141127_big_1080x1000_37.webp', 'images/20210530141127_big_730x400_43.webp', 'images/20210530141127_medium_358x215_10.webp', 'images/20210530141127_medium_350x190_44.webp', 'images/20210530141127_medium_255x175_48.webp', 'images/20210530141127_small_123x83_8.webp', '2021-05-30 08:26:40', '2021-05-30 08:26:40'),
(87, 'local', 'images/20210530141136_original_18.webp', 'images/20210530141136_ogImage_14.jpg', 'images/20210530141136_thumbnail_100x100_14.webp', 'images/20210530141136_big_1080x1000_32.webp', 'images/20210530141136_big_730x400_10.webp', 'images/20210530141136_medium_358x215_25.webp', 'images/20210530141136_medium_350x190_36.webp', 'images/20210530141136_medium_255x175_22.webp', 'images/20210530141136_small_123x83_26.webp', '2021-05-30 08:26:43', '2021-05-30 08:26:43'),
(88, 'local', 'images/20210530141131_original_19.webp', 'images/20210530141131_ogImage_46.jpg', 'images/20210530141131_thumbnail_100x100_12.webp', 'images/20210530141131_big_1080x1000_1.webp', 'images/20210530141131_big_730x400_26.webp', 'images/20210530141131_medium_358x215_42.webp', 'images/20210530141131_medium_350x190_1.webp', 'images/20210530141131_medium_255x175_38.webp', 'images/20210530141131_small_123x83_16.webp', '2021-05-30 08:26:46', '2021-05-30 08:26:46'),
(89, 'local', 'images/20210530141144_original_9.webp', 'images/20210530141144_ogImage_31.jpg', 'images/20210530141144_thumbnail_100x100_3.webp', 'images/20210530141144_big_1080x1000_45.webp', 'images/20210530141144_big_730x400_5.webp', 'images/20210530141144_medium_358x215_45.webp', 'images/20210530141144_medium_350x190_29.webp', 'images/20210530141144_medium_255x175_23.webp', 'images/20210530141144_small_123x83_22.webp', '2021-05-30 08:26:52', '2021-05-30 08:26:52'),
(90, 'local', 'images/20210530141141_original_37.webp', 'images/20210530141141_ogImage_43.jpeg', 'images/20210530141141_thumbnail_100x100_33.webp', 'images/20210530141141_big_1080x1000_11.webp', 'images/20210530141141_big_730x400_25.webp', 'images/20210530141141_medium_358x215_22.webp', 'images/20210530141141_medium_350x190_1.webp', 'images/20210530141141_medium_255x175_37.webp', 'images/20210530141141_small_123x83_26.webp', '2021-05-30 08:26:55', '2021-05-30 08:26:55'),
(91, 'local', 'images/20210530141152_original_18.webp', 'images/20210530141152_ogImage_22.jpg', 'images/20210530141152_thumbnail_100x100_49.webp', 'images/20210530141152_big_1080x1000_50.webp', 'images/20210530141152_big_730x400_14.webp', 'images/20210530141152_medium_358x215_29.webp', 'images/20210530141152_medium_350x190_50.webp', 'images/20210530141152_medium_255x175_10.webp', 'images/20210530141152_small_123x83_1.webp', '2021-05-30 08:26:59', '2021-05-30 08:26:59'),
(92, 'local', 'images/20210530141146_original_35.webp', 'images/20210530141146_ogImage_30.jpg', 'images/20210530141146_thumbnail_100x100_13.webp', 'images/20210530141146_big_1080x1000_44.webp', 'images/20210530141146_big_730x400_49.webp', 'images/20210530141146_medium_358x215_50.webp', 'images/20210530141146_medium_350x190_39.webp', 'images/20210530141146_medium_255x175_17.webp', 'images/20210530141146_small_123x83_1.webp', '2021-05-30 08:27:04', '2021-05-30 08:27:04'),
(93, 'local', 'images/20210530141200_original_2.webp', 'images/20210530141200_ogImage_35.jpg', 'images/20210530141200_thumbnail_100x100_34.webp', 'images/20210530141200_big_1080x1000_50.webp', 'images/20210530141200_big_730x400_48.webp', 'images/20210530141200_medium_358x215_25.webp', 'images/20210530141200_medium_350x190_19.webp', 'images/20210530141200_medium_255x175_3.webp', 'images/20210530141200_small_123x83_14.webp', '2021-05-30 08:27:08', '2021-05-30 08:27:08'),
(94, 'local', 'images/20210530141155_original_5.webp', 'images/20210530141155_ogImage_32.jpg', 'images/20210530141155_thumbnail_100x100_16.webp', 'images/20210530141155_big_1080x1000_30.webp', 'images/20210530141155_big_730x400_22.webp', 'images/20210530141155_medium_358x215_22.webp', 'images/20210530141155_medium_350x190_25.webp', 'images/20210530141155_medium_255x175_8.webp', 'images/20210530141155_small_123x83_42.webp', '2021-05-30 08:27:10', '2021-05-30 08:27:10'),
(95, 'local', 'images/20210530141208_original_29.webp', 'images/20210530141208_ogImage_31.jpg', 'images/20210530141208_thumbnail_100x100_10.webp', 'images/20210530141208_big_1080x1000_22.webp', 'images/20210530141208_big_730x400_23.webp', 'images/20210530141208_medium_358x215_39.webp', 'images/20210530141208_medium_350x190_42.webp', 'images/20210530141208_medium_255x175_5.webp', 'images/20210530141208_small_123x83_39.webp', '2021-05-30 08:27:16', '2021-05-30 08:27:16'),
(96, 'local', 'images/20210530141204_original_26.webp', 'images/20210530141204_ogImage_11.jpg', 'images/20210530141204_thumbnail_100x100_5.webp', 'images/20210530141204_big_1080x1000_3.webp', 'images/20210530141204_big_730x400_3.webp', 'images/20210530141204_medium_358x215_38.webp', 'images/20210530141204_medium_350x190_38.webp', 'images/20210530141204_medium_255x175_15.webp', 'images/20210530141204_small_123x83_12.webp', '2021-05-30 08:27:20', '2021-05-30 08:27:20'),
(97, 'local', 'images/20210530141210_original_18.webp', 'images/20210530141210_ogImage_10.jpg', 'images/20210530141210_thumbnail_100x100_13.webp', 'images/20210530141210_big_1080x1000_11.webp', 'images/20210530141210_big_730x400_22.webp', 'images/20210530141210_medium_358x215_18.webp', 'images/20210530141210_medium_350x190_15.webp', 'images/20210530141210_medium_255x175_46.webp', 'images/20210530141210_small_123x83_49.webp', '2021-05-30 08:27:24', '2021-05-30 08:27:24'),
(98, 'local', 'images/20210530141216_original_27.webp', 'images/20210530141216_ogImage_30.jpg', 'images/20210530141216_thumbnail_100x100_21.webp', 'images/20210530141216_big_1080x1000_13.webp', 'images/20210530141216_big_730x400_32.webp', 'images/20210530141216_medium_358x215_14.webp', 'images/20210530141216_medium_350x190_12.webp', 'images/20210530141216_medium_255x175_16.webp', 'images/20210530141216_small_123x83_12.webp', '2021-05-30 08:27:24', '2021-05-30 08:27:24'),
(99, 'local', 'images/20210530141220_original_30.webp', 'images/20210530141220_ogImage_7.jpg', 'images/20210530141220_thumbnail_100x100_37.webp', 'images/20210530141220_big_1080x1000_3.webp', 'images/20210530141220_big_730x400_47.webp', 'images/20210530141220_medium_358x215_49.webp', 'images/20210530141220_medium_350x190_45.webp', 'images/20210530141220_medium_255x175_33.webp', 'images/20210530141220_small_123x83_11.webp', '2021-05-30 08:27:36', '2021-05-30 08:27:36'),
(100, 'local', 'images/20210530141225_original_25.webp', 'images/20210530141225_ogImage_23.jpeg', 'images/20210530141225_thumbnail_100x100_16.webp', 'images/20210530141225_big_1080x1000_2.webp', 'images/20210530141225_big_730x400_42.webp', 'images/20210530141225_medium_358x215_23.webp', 'images/20210530141225_medium_350x190_20.webp', 'images/20210530141225_medium_255x175_8.webp', 'images/20210530141225_small_123x83_44.webp', '2021-05-30 08:27:37', '2021-05-30 08:27:37'),
(101, 'local', 'images/20210530141238_original_20.webp', 'images/20210530141238_ogImage_40.jpg', 'images/20210530141238_thumbnail_100x100_17.webp', 'images/20210530141238_big_1080x1000_13.webp', 'images/20210530141238_big_730x400_6.webp', 'images/20210530141238_medium_358x215_43.webp', 'images/20210530141238_medium_350x190_6.webp', 'images/20210530141238_medium_255x175_30.webp', 'images/20210530141238_small_123x83_20.webp', '2021-05-30 08:27:51', '2021-05-30 08:27:51'),
(102, 'local', 'images/20210530141237_original_45.webp', 'images/20210530141237_ogImage_22.jpg', 'images/20210530141237_thumbnail_100x100_47.webp', 'images/20210530141237_big_1080x1000_34.webp', 'images/20210530141237_big_730x400_27.webp', 'images/20210530141237_medium_358x215_18.webp', 'images/20210530141237_medium_350x190_27.webp', 'images/20210530141237_medium_255x175_43.webp', 'images/20210530141237_small_123x83_44.webp', '2021-05-30 08:27:52', '2021-05-30 08:27:52'),
(103, 'local', 'images/20210530141251_original_4.webp', 'images/20210530141251_ogImage_37.jpg', 'images/20210530141251_thumbnail_100x100_27.webp', 'images/20210530141251_big_1080x1000_49.webp', 'images/20210530141251_big_730x400_4.webp', 'images/20210530141251_medium_358x215_8.webp', 'images/20210530141251_medium_350x190_45.webp', 'images/20210530141251_medium_255x175_12.webp', 'images/20210530141251_small_123x83_27.webp', '2021-05-30 08:28:05', '2021-05-30 08:28:05'),
(104, 'local', 'images/20210530141252_original_33.webp', 'images/20210530141252_ogImage_5.jpg', 'images/20210530141252_thumbnail_100x100_33.webp', 'images/20210530141252_big_1080x1000_16.webp', 'images/20210530141252_big_730x400_48.webp', 'images/20210530141252_medium_358x215_10.webp', 'images/20210530141252_medium_350x190_4.webp', 'images/20210530141252_medium_255x175_4.webp', 'images/20210530141252_small_123x83_26.webp', '2021-05-30 08:28:10', '2021-05-30 08:28:10'),
(105, 'local', 'images/20210530141306_original_11.webp', 'images/20210530141306_ogImage_19.jpg', 'images/20210530141306_thumbnail_100x100_47.webp', 'images/20210530141306_big_1080x1000_2.webp', 'images/20210530141306_big_730x400_7.webp', 'images/20210530141306_medium_358x215_9.webp', 'images/20210530141306_medium_350x190_24.webp', 'images/20210530141306_medium_255x175_8.webp', 'images/20210530141306_small_123x83_16.webp', '2021-05-30 08:28:19', '2021-05-30 08:28:19');
INSERT INTO `images` (`id`, `disk`, `original_image`, `og_image`, `thumbnail`, `big_image`, `big_image_two`, `medium_image`, `medium_image_two`, `medium_image_three`, `small_image`, `created_at`, `updated_at`) VALUES
(106, 'local', 'images/20210530141310_original_8.webp', 'images/20210530141310_ogImage_37.jpg', 'images/20210530141310_thumbnail_100x100_31.webp', 'images/20210530141310_big_1080x1000_35.webp', 'images/20210530141310_big_730x400_44.webp', 'images/20210530141310_medium_358x215_24.webp', 'images/20210530141310_medium_350x190_8.webp', 'images/20210530141310_medium_255x175_6.webp', 'images/20210530141310_small_123x83_14.webp', '2021-05-30 08:28:25', '2021-05-30 08:28:25'),
(107, 'local', 'images/20210530141319_original_37.webp', 'images/20210530141319_ogImage_28.jpg', 'images/20210530141319_thumbnail_100x100_13.webp', 'images/20210530141319_big_1080x1000_50.webp', 'images/20210530141319_big_730x400_49.webp', 'images/20210530141319_medium_358x215_26.webp', 'images/20210530141319_medium_350x190_38.webp', 'images/20210530141319_medium_255x175_12.webp', 'images/20210530141319_small_123x83_19.webp', '2021-05-30 08:28:31', '2021-05-30 08:28:31'),
(108, 'local', 'images/20210530141325_original_28.webp', 'images/20210530141325_ogImage_4.jpg', 'images/20210530141325_thumbnail_100x100_36.webp', 'images/20210530141325_big_1080x1000_25.webp', 'images/20210530141325_big_730x400_8.webp', 'images/20210530141325_medium_358x215_27.webp', 'images/20210530141325_medium_350x190_22.webp', 'images/20210530141325_medium_255x175_4.webp', 'images/20210530141325_small_123x83_29.webp', '2021-05-30 08:28:42', '2021-05-30 08:28:42'),
(109, 'local', 'images/20210530141332_original_41.webp', 'images/20210530141332_ogImage_42.png', 'images/20210530141332_thumbnail_100x100_32.webp', 'images/20210530141332_big_1080x1000_25.webp', 'images/20210530141332_big_730x400_37.webp', 'images/20210530141332_medium_358x215_31.webp', 'images/20210530141332_medium_350x190_50.webp', 'images/20210530141332_medium_255x175_9.webp', 'images/20210530141332_small_123x83_17.webp', '2021-05-30 08:28:57', '2021-05-30 08:28:57'),
(110, 'local', 'images/20210530141358_original_48.webp', 'images/20210530141358_ogImage_49.jpg', 'images/20210530141358_thumbnail_100x100_1.webp', 'images/20210530141358_big_1080x1000_41.webp', 'images/20210530141358_big_730x400_50.webp', 'images/20210530141358_medium_358x215_47.webp', 'images/20210530141358_medium_350x190_4.webp', 'images/20210530141358_medium_255x175_30.webp', 'images/20210530141358_small_123x83_13.webp', '2021-05-30 08:29:14', '2021-05-30 08:29:14'),
(111, 'local', 'images/20210530141414_original_12.webp', 'images/20210530141414_ogImage_50.jpg', 'images/20210530141414_thumbnail_100x100_39.webp', 'images/20210530141414_big_1080x1000_32.webp', 'images/20210530141414_big_730x400_33.webp', 'images/20210530141414_medium_358x215_8.webp', 'images/20210530141414_medium_350x190_13.webp', 'images/20210530141414_medium_255x175_1.webp', 'images/20210530141414_small_123x83_41.webp', '2021-05-30 08:29:26', '2021-05-30 08:29:26'),
(112, 'local', 'images/20210530141342_original_40.webp', 'images/20210530141342_ogImage_42.jpg', 'images/20210530141342_thumbnail_100x100_27.webp', 'images/20210530141342_big_1080x1000_37.webp', 'images/20210530141342_big_730x400_5.webp', 'images/20210530141342_medium_358x215_34.webp', 'images/20210530141342_medium_350x190_35.webp', 'images/20210530141342_medium_255x175_35.webp', 'images/20210530141342_small_123x83_49.webp', '2021-05-30 08:29:40', '2021-05-30 08:29:40'),
(113, 'local', 'images/20210530141549_original_50.webp', 'images/20210530141549_ogImage_4.jpg', 'images/20210530141549_thumbnail_100x100_44.webp', 'images/20210530141549_big_1080x1000_24.webp', 'images/20210530141549_big_730x400_15.webp', 'images/20210530141549_medium_358x215_27.webp', 'images/20210530141549_medium_350x190_15.webp', 'images/20210530141549_medium_255x175_17.webp', 'images/20210530141549_small_123x83_18.webp', '2021-05-30 08:32:06', '2021-05-30 08:32:06'),
(114, 'local', 'images/20210530141706_original_31.webp', 'images/20210530141706_ogImage_10.jpg', 'images/20210530141706_thumbnail_100x100_5.webp', 'images/20210530141706_big_1080x1000_44.webp', 'images/20210530141706_big_730x400_32.webp', 'images/20210530141706_medium_358x215_20.webp', 'images/20210530141706_medium_350x190_31.webp', 'images/20210530141706_medium_255x175_32.webp', 'images/20210530141706_small_123x83_42.webp', '2021-05-30 08:32:20', '2021-05-30 08:32:20'),
(115, 'local', 'images/20210530143529_original_44.webp', 'images/20210530143529_ogImage_28.jpg', 'images/20210530143529_thumbnail_100x100_45.webp', 'images/20210530143529_big_1080x1000_4.webp', 'images/20210530143529_big_730x400_33.webp', 'images/20210530143529_medium_358x215_46.webp', 'images/20210530143529_medium_350x190_25.webp', 'images/20210530143529_medium_255x175_2.webp', 'images/20210530143529_small_123x83_14.webp', '2021-05-30 08:50:43', '2021-05-30 08:50:43'),
(116, 'local', 'images/20210530143654_original_27.webp', 'images/20210530143654_ogImage_44.jpg', 'images/20210530143654_thumbnail_100x100_34.webp', 'images/20210530143654_big_1080x1000_10.webp', 'images/20210530143654_big_730x400_16.webp', 'images/20210530143654_medium_358x215_26.webp', 'images/20210530143654_medium_350x190_31.webp', 'images/20210530143654_medium_255x175_50.webp', 'images/20210530143654_small_123x83_16.webp', '2021-05-30 08:52:19', '2021-05-30 08:52:19'),
(117, 'local', 'images/20210530143719_original_36.webp', 'images/20210530143719_ogImage_22.jpg', 'images/20210530143719_thumbnail_100x100_36.webp', 'images/20210530143719_big_1080x1000_28.webp', 'images/20210530143719_big_730x400_44.webp', 'images/20210530143719_medium_358x215_13.webp', 'images/20210530143719_medium_350x190_5.webp', 'images/20210530143719_medium_255x175_38.webp', 'images/20210530143719_small_123x83_36.webp', '2021-05-30 08:52:44', '2021-05-30 08:52:44'),
(118, 'local', 'images/20210530143744_original_31.webp', 'images/20210530143744_ogImage_7.jpg', 'images/20210530143744_thumbnail_100x100_47.webp', 'images/20210530143744_big_1080x1000_21.webp', 'images/20210530143744_big_730x400_23.webp', 'images/20210530143744_medium_358x215_2.webp', 'images/20210530143744_medium_350x190_44.webp', 'images/20210530143744_medium_255x175_17.webp', 'images/20210530143744_small_123x83_26.webp', '2021-05-30 08:53:09', '2021-05-30 08:53:09'),
(119, 'local', 'images/20210530143810_original_13.webp', 'images/20210530143810_ogImage_49.png', 'images/20210530143810_thumbnail_100x100_4.webp', 'images/20210530143810_big_1080x1000_25.webp', 'images/20210530143810_big_730x400_9.webp', 'images/20210530143810_medium_358x215_35.webp', 'images/20210530143810_medium_350x190_41.webp', 'images/20210530143810_medium_255x175_23.webp', 'images/20210530143810_small_123x83_31.webp', '2021-05-30 08:53:38', '2021-05-30 08:53:38'),
(120, 'local', 'images/20210530143838_original_6.webp', 'images/20210530143838_ogImage_3.jpg', 'images/20210530143838_thumbnail_100x100_20.webp', 'images/20210530143838_big_1080x1000_11.webp', 'images/20210530143838_big_730x400_37.webp', 'images/20210530143838_medium_358x215_25.webp', 'images/20210530143838_medium_350x190_42.webp', 'images/20210530143838_medium_255x175_36.webp', 'images/20210530143838_small_123x83_19.webp', '2021-05-30 08:54:03', '2021-05-30 08:54:03'),
(121, 'local', 'images/20210530143903_original_19.webp', 'images/20210530143903_ogImage_49.jpg', 'images/20210530143903_thumbnail_100x100_30.webp', 'images/20210530143903_big_1080x1000_4.webp', 'images/20210530143903_big_730x400_16.webp', 'images/20210530143903_medium_358x215_46.webp', 'images/20210530143903_medium_350x190_3.webp', 'images/20210530143903_medium_255x175_10.webp', 'images/20210530143903_small_123x83_14.webp', '2021-05-30 08:54:26', '2021-05-30 08:54:26'),
(122, 'local', 'images/20210530143926_original_2.webp', 'images/20210530143926_ogImage_7.jpg', 'images/20210530143926_thumbnail_100x100_26.webp', 'images/20210530143926_big_1080x1000_2.webp', 'images/20210530143926_big_730x400_15.webp', 'images/20210530143926_medium_358x215_29.webp', 'images/20210530143926_medium_350x190_3.webp', 'images/20210530143926_medium_255x175_27.webp', 'images/20210530143926_small_123x83_1.webp', '2021-05-30 08:54:49', '2021-05-30 08:54:49'),
(123, 'local', 'images/20210530143949_original_38.webp', 'images/20210530143949_ogImage_35.jpg', 'images/20210530143949_thumbnail_100x100_16.webp', 'images/20210530143949_big_1080x1000_49.webp', 'images/20210530143949_big_730x400_13.webp', 'images/20210530143949_medium_358x215_44.webp', 'images/20210530143949_medium_350x190_11.webp', 'images/20210530143949_medium_255x175_41.webp', 'images/20210530143949_small_123x83_10.webp', '2021-05-30 08:55:15', '2021-05-30 08:55:15'),
(124, 'local', 'images/20210530144015_original_44.webp', 'images/20210530144015_ogImage_43.jpg', 'images/20210530144015_thumbnail_100x100_9.webp', 'images/20210530144015_big_1080x1000_29.webp', 'images/20210530144015_big_730x400_7.webp', 'images/20210530144015_medium_358x215_36.webp', 'images/20210530144015_medium_350x190_25.webp', 'images/20210530144015_medium_255x175_25.webp', 'images/20210530144015_small_123x83_34.webp', '2021-05-30 08:55:38', '2021-05-30 08:55:38'),
(125, 'local', 'images/20210530144038_original_38.webp', 'images/20210530144038_ogImage_21.jpg', 'images/20210530144038_thumbnail_100x100_30.webp', 'images/20210530144038_big_1080x1000_7.webp', 'images/20210530144038_big_730x400_46.webp', 'images/20210530144038_medium_358x215_19.webp', 'images/20210530144038_medium_350x190_17.webp', 'images/20210530144038_medium_255x175_43.webp', 'images/20210530144038_small_123x83_4.webp', '2021-05-30 08:56:11', '2021-05-30 08:56:11'),
(126, 'local', 'images/20210531203029_original_30.webp', 'images/20210531203029_ogImage_33.jpg', 'images/20210531203029_thumbnail_100x100_14.webp', 'images/20210531203029_big_1080x1000_34.webp', 'images/20210531203029_big_730x400_43.webp', 'images/20210531203029_medium_358x215_45.webp', 'images/20210531203029_medium_350x190_5.webp', 'images/20210531203029_medium_255x175_23.webp', 'images/20210531203029_small_123x83_16.webp', '2021-05-31 14:45:41', '2021-05-31 14:45:41'),
(127, 'local', 'images/20210531203043_original_21.webp', 'images/20210531203043_ogImage_47.jpg', 'images/20210531203043_thumbnail_100x100_9.webp', 'images/20210531203043_big_1080x1000_5.webp', 'images/20210531203043_big_730x400_26.webp', 'images/20210531203043_medium_358x215_7.webp', 'images/20210531203043_medium_350x190_8.webp', 'images/20210531203043_medium_255x175_47.webp', 'images/20210531203043_small_123x83_26.webp', '2021-05-31 14:45:47', '2021-05-31 14:45:47'),
(128, 'local', 'images/20210531203047_original_18.webp', 'images/20210531203047_ogImage_12.jpg', 'images/20210531203047_thumbnail_100x100_28.webp', 'images/20210531203047_big_1080x1000_19.webp', 'images/20210531203047_big_730x400_39.webp', 'images/20210531203047_medium_358x215_30.webp', 'images/20210531203047_medium_350x190_2.webp', 'images/20210531203047_medium_255x175_32.webp', 'images/20210531203047_small_123x83_6.webp', '2021-05-31 14:45:51', '2021-05-31 14:45:51'),
(129, 'local', 'images/20210531203052_original_22.webp', 'images/20210531203052_ogImage_8.jpg', 'images/20210531203052_thumbnail_100x100_49.webp', 'images/20210531203052_big_1080x1000_10.webp', 'images/20210531203052_big_730x400_44.webp', 'images/20210531203052_medium_358x215_10.webp', 'images/20210531203052_medium_350x190_35.webp', 'images/20210531203052_medium_255x175_16.webp', 'images/20210531203052_small_123x83_20.webp', '2021-05-31 14:45:56', '2021-05-31 14:45:56'),
(130, 'local', 'images/20210531203056_original_40.webp', 'images/20210531203056_ogImage_11.jpg', 'images/20210531203056_thumbnail_100x100_40.webp', 'images/20210531203056_big_1080x1000_3.webp', 'images/20210531203056_big_730x400_42.webp', 'images/20210531203056_medium_358x215_1.webp', 'images/20210531203056_medium_350x190_41.webp', 'images/20210531203056_medium_255x175_9.webp', 'images/20210531203056_small_123x83_33.webp', '2021-05-31 14:46:01', '2021-05-31 14:46:01'),
(131, 'local', 'images/20210531203101_original_21.webp', 'images/20210531203101_ogImage_6.jpg', 'images/20210531203101_thumbnail_100x100_36.webp', 'images/20210531203101_big_1080x1000_13.webp', 'images/20210531203101_big_730x400_5.webp', 'images/20210531203101_medium_358x215_14.webp', 'images/20210531203101_medium_350x190_33.webp', 'images/20210531203101_medium_255x175_5.webp', 'images/20210531203101_small_123x83_50.webp', '2021-05-31 14:46:05', '2021-05-31 14:46:05'),
(132, 'local', 'images/20210531203106_original_13.webp', 'images/20210531203106_ogImage_1.jpg', 'images/20210531203106_thumbnail_100x100_20.webp', 'images/20210531203106_big_1080x1000_10.webp', 'images/20210531203106_big_730x400_5.webp', 'images/20210531203106_medium_358x215_41.webp', 'images/20210531203106_medium_350x190_26.webp', 'images/20210531203106_medium_255x175_11.webp', 'images/20210531203106_small_123x83_1.webp', '2021-05-31 14:46:11', '2021-05-31 14:46:11'),
(133, 'local', 'images/20210531203112_original_16.webp', 'images/20210531203112_ogImage_32.jpg', 'images/20210531203112_thumbnail_100x100_37.webp', 'images/20210531203112_big_1080x1000_31.webp', 'images/20210531203112_big_730x400_42.webp', 'images/20210531203112_medium_358x215_20.webp', 'images/20210531203112_medium_350x190_46.webp', 'images/20210531203112_medium_255x175_38.webp', 'images/20210531203112_small_123x83_23.webp', '2021-05-31 14:46:17', '2021-05-31 14:46:17'),
(134, 'local', 'images/20210531203118_original_30.webp', 'images/20210531203118_ogImage_44.jpg', 'images/20210531203118_thumbnail_100x100_49.webp', 'images/20210531203118_big_1080x1000_9.webp', 'images/20210531203118_big_730x400_29.webp', 'images/20210531203118_medium_358x215_22.webp', 'images/20210531203118_medium_350x190_3.webp', 'images/20210531203118_medium_255x175_30.webp', 'images/20210531203118_small_123x83_35.webp', '2021-05-31 14:46:22', '2021-05-31 14:46:22'),
(135, 'local', 'images/20210531203122_original_21.webp', 'images/20210531203122_ogImage_46.jpg', 'images/20210531203122_thumbnail_100x100_42.webp', 'images/20210531203122_big_1080x1000_37.webp', 'images/20210531203122_big_730x400_30.webp', 'images/20210531203122_medium_358x215_32.webp', 'images/20210531203122_medium_350x190_44.webp', 'images/20210531203122_medium_255x175_26.webp', 'images/20210531203122_small_123x83_16.webp', '2021-05-31 14:46:28', '2021-05-31 14:46:28'),
(136, 'local', 'images/20210531203128_original_12.webp', 'images/20210531203128_ogImage_5.jpg', 'images/20210531203128_thumbnail_100x100_14.webp', 'images/20210531203128_big_1080x1000_2.webp', 'images/20210531203128_big_730x400_38.webp', 'images/20210531203128_medium_358x215_27.webp', 'images/20210531203128_medium_350x190_47.webp', 'images/20210531203128_medium_255x175_18.webp', 'images/20210531203128_small_123x83_28.webp', '2021-05-31 14:46:32', '2021-05-31 14:46:32'),
(137, 'local', 'images/20210531203132_original_12.webp', 'images/20210531203132_ogImage_49.jpg', 'images/20210531203132_thumbnail_100x100_25.webp', 'images/20210531203132_big_1080x1000_34.webp', 'images/20210531203132_big_730x400_43.webp', 'images/20210531203132_medium_358x215_16.webp', 'images/20210531203132_medium_350x190_43.webp', 'images/20210531203132_medium_255x175_22.webp', 'images/20210531203132_small_123x83_24.webp', '2021-05-31 14:46:36', '2021-05-31 14:46:36'),
(138, 'local', 'images/20210531203137_original_39.webp', 'images/20210531203137_ogImage_28.jpg', 'images/20210531203137_thumbnail_100x100_12.webp', 'images/20210531203137_big_1080x1000_11.webp', 'images/20210531203137_big_730x400_11.webp', 'images/20210531203137_medium_358x215_5.webp', 'images/20210531203137_medium_350x190_28.webp', 'images/20210531203137_medium_255x175_37.webp', 'images/20210531203137_small_123x83_25.webp', '2021-05-31 14:46:40', '2021-05-31 14:46:40'),
(139, 'local', 'images/20210531203141_original_31.webp', 'images/20210531203141_ogImage_48.jpg', 'images/20210531203141_thumbnail_100x100_15.webp', 'images/20210531203141_big_1080x1000_14.webp', 'images/20210531203141_big_730x400_23.webp', 'images/20210531203141_medium_358x215_25.webp', 'images/20210531203141_medium_350x190_44.webp', 'images/20210531203141_medium_255x175_22.webp', 'images/20210531203141_small_123x83_15.webp', '2021-05-31 14:46:45', '2021-05-31 14:46:45'),
(140, 'local', 'images/20210531203205_original_2.webp', 'images/20210531203205_ogImage_20.jpg', 'images/20210531203205_thumbnail_100x100_1.webp', 'images/20210531203205_big_1080x1000_10.webp', 'images/20210531203205_big_730x400_31.webp', 'images/20210531203205_medium_358x215_19.webp', 'images/20210531203205_medium_350x190_7.webp', 'images/20210531203205_medium_255x175_40.webp', 'images/20210531203205_small_123x83_35.webp', '2021-05-31 14:47:28', '2021-05-31 14:47:28'),
(141, 'local', 'images/20210531203228_original_11.webp', 'images/20210531203228_ogImage_38.jpg', 'images/20210531203228_thumbnail_100x100_40.webp', 'images/20210531203228_big_1080x1000_22.webp', 'images/20210531203228_big_730x400_5.webp', 'images/20210531203228_medium_358x215_2.webp', 'images/20210531203228_medium_350x190_13.webp', 'images/20210531203228_medium_255x175_5.webp', 'images/20210531203228_small_123x83_10.webp', '2021-05-31 14:47:54', '2021-05-31 14:47:54'),
(142, 'local', 'images/20210531203255_original_36.webp', 'images/20210531203255_ogImage_46.jpg', 'images/20210531203255_thumbnail_100x100_47.webp', 'images/20210531203255_big_1080x1000_6.webp', 'images/20210531203255_big_730x400_16.webp', 'images/20210531203255_medium_358x215_50.webp', 'images/20210531203255_medium_350x190_7.webp', 'images/20210531203255_medium_255x175_21.webp', 'images/20210531203255_small_123x83_5.webp', '2021-05-31 14:48:24', '2021-05-31 14:48:24'),
(143, 'local', 'images/20210531203324_original_19.webp', 'images/20210531203324_ogImage_44.jpg', 'images/20210531203324_thumbnail_100x100_48.webp', 'images/20210531203324_big_1080x1000_2.webp', 'images/20210531203324_big_730x400_5.webp', 'images/20210531203324_medium_358x215_16.webp', 'images/20210531203324_medium_350x190_50.webp', 'images/20210531203324_medium_255x175_23.webp', 'images/20210531203324_small_123x83_21.webp', '2021-05-31 14:48:56', '2021-05-31 14:48:56'),
(144, 'local', 'images/20210531203356_original_45.webp', 'images/20210531203356_ogImage_41.jpg', 'images/20210531203356_thumbnail_100x100_12.webp', 'images/20210531203356_big_1080x1000_34.webp', 'images/20210531203356_big_730x400_24.webp', 'images/20210531203356_medium_358x215_5.webp', 'images/20210531203356_medium_350x190_33.webp', 'images/20210531203356_medium_255x175_45.webp', 'images/20210531203356_small_123x83_23.webp', '2021-05-31 14:49:15', '2021-05-31 14:49:15'),
(145, 'local', 'images/20210531203415_original_40.webp', 'images/20210531203415_ogImage_36.jpg', 'images/20210531203415_thumbnail_100x100_30.webp', 'images/20210531203415_big_1080x1000_38.webp', 'images/20210531203415_big_730x400_37.webp', 'images/20210531203415_medium_358x215_48.webp', 'images/20210531203415_medium_350x190_26.webp', 'images/20210531203415_medium_255x175_18.webp', 'images/20210531203415_small_123x83_31.webp', '2021-05-31 14:49:27', '2021-05-31 14:49:27'),
(146, 'local', 'images/20210531203427_original_12.webp', 'images/20210531203427_ogImage_32.jpg', 'images/20210531203427_thumbnail_100x100_3.webp', 'images/20210531203427_big_1080x1000_40.webp', 'images/20210531203427_big_730x400_15.webp', 'images/20210531203427_medium_358x215_35.webp', 'images/20210531203427_medium_350x190_9.webp', 'images/20210531203427_medium_255x175_19.webp', 'images/20210531203427_small_123x83_5.webp', '2021-05-31 14:49:39', '2021-05-31 14:49:39'),
(147, 'local', 'images/20210531203439_original_5.webp', 'images/20210531203439_ogImage_3.jpg', 'images/20210531203439_thumbnail_100x100_44.webp', 'images/20210531203439_big_1080x1000_36.webp', 'images/20210531203439_big_730x400_12.webp', 'images/20210531203439_medium_358x215_11.webp', 'images/20210531203439_medium_350x190_31.webp', 'images/20210531203439_medium_255x175_36.webp', 'images/20210531203439_small_123x83_50.webp', '2021-05-31 14:49:51', '2021-05-31 14:49:51'),
(148, 'local', 'images/20210531203451_original_19.webp', 'images/20210531203451_ogImage_42.jpg', 'images/20210531203451_thumbnail_100x100_21.webp', 'images/20210531203451_big_1080x1000_3.webp', 'images/20210531203451_big_730x400_45.webp', 'images/20210531203451_medium_358x215_42.webp', 'images/20210531203451_medium_350x190_5.webp', 'images/20210531203451_medium_255x175_15.webp', 'images/20210531203451_small_123x83_40.webp', '2021-05-31 14:50:03', '2021-05-31 14:50:03'),
(149, 'local', 'images/20210531203503_original_39.webp', 'images/20210531203503_ogImage_40.jpg', 'images/20210531203503_thumbnail_100x100_46.webp', 'images/20210531203503_big_1080x1000_7.webp', 'images/20210531203503_big_730x400_15.webp', 'images/20210531203503_medium_358x215_23.webp', 'images/20210531203503_medium_350x190_32.webp', 'images/20210531203503_medium_255x175_14.webp', 'images/20210531203503_small_123x83_40.webp', '2021-05-31 14:50:15', '2021-05-31 14:50:15'),
(150, 'local', 'images/20210531203515_original_5.webp', 'images/20210531203515_ogImage_20.jpg', 'images/20210531203515_thumbnail_100x100_34.webp', 'images/20210531203515_big_1080x1000_2.webp', 'images/20210531203515_big_730x400_22.webp', 'images/20210531203515_medium_358x215_48.webp', 'images/20210531203515_medium_350x190_4.webp', 'images/20210531203515_medium_255x175_25.webp', 'images/20210531203515_small_123x83_19.webp', '2021-05-31 14:50:27', '2021-05-31 14:50:27'),
(151, 'local', 'images/20210531203527_original_1.webp', 'images/20210531203527_ogImage_30.jpg', 'images/20210531203527_thumbnail_100x100_50.webp', 'images/20210531203527_big_1080x1000_17.webp', 'images/20210531203527_big_730x400_32.webp', 'images/20210531203527_medium_358x215_36.webp', 'images/20210531203527_medium_350x190_36.webp', 'images/20210531203527_medium_255x175_41.webp', 'images/20210531203527_small_123x83_29.webp', '2021-05-31 14:50:38', '2021-05-31 14:50:38'),
(152, 'local', 'images/20210531203538_original_1.webp', 'images/20210531203538_ogImage_50.jpg', 'images/20210531203538_thumbnail_100x100_48.webp', 'images/20210531203538_big_1080x1000_40.webp', 'images/20210531203538_big_730x400_26.webp', 'images/20210531203538_medium_358x215_28.webp', 'images/20210531203538_medium_350x190_17.webp', 'images/20210531203538_medium_255x175_29.webp', 'images/20210531203538_small_123x83_23.webp', '2021-05-31 14:50:50', '2021-05-31 14:50:50'),
(153, 'local', 'images/20210531203551_original_33.webp', 'images/20210531203551_ogImage_24.jpg', 'images/20210531203551_thumbnail_100x100_7.webp', 'images/20210531203551_big_1080x1000_20.webp', 'images/20210531203551_big_730x400_48.webp', 'images/20210531203551_medium_358x215_16.webp', 'images/20210531203551_medium_350x190_2.webp', 'images/20210531203551_medium_255x175_19.webp', 'images/20210531203551_small_123x83_25.webp', '2021-05-31 14:51:04', '2021-05-31 14:51:04'),
(154, 'local', 'images/20210531203604_original_2.webp', 'images/20210531203604_ogImage_11.jpg', 'images/20210531203604_thumbnail_100x100_4.webp', 'images/20210531203604_big_1080x1000_45.webp', 'images/20210531203604_big_730x400_47.webp', 'images/20210531203604_medium_358x215_8.webp', 'images/20210531203604_medium_350x190_23.webp', 'images/20210531203604_medium_255x175_28.webp', 'images/20210531203604_small_123x83_34.webp', '2021-05-31 14:51:15', '2021-05-31 14:51:15'),
(155, 'local', 'images/20210608153717_original_16.webp', 'images/20210608153717_ogImage_44.jpg', 'images/20210608153717_thumbnail_100x100_3.webp', 'images/20210608153717_big_1080x1000_29.webp', 'images/20210608153717_big_730x400_15.webp', 'images/20210608153717_medium_358x215_5.webp', 'images/20210608153717_medium_350x190_12.webp', 'images/20210608153717_medium_255x175_43.webp', 'images/20210608153717_small_123x83_23.webp', '2021-06-08 09:52:20', '2021-06-08 09:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `icon_class`, `text_direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'active', 'flag-icon flag-icon-us', 'LTR', '2021-05-29 07:21:55', '2021-05-29 07:21:55'),
(2, 'नेपाली', 'np', 'active', 'flag-icon flag-icon-np', 'LTR', '2021-05-29 14:11:32', '2021-05-29 14:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `language_configs`
--

CREATE TABLE `language_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_configs`
--

INSERT INTO `language_configs` (`id`, `language_id`, `name`, `script`, `native`, `regional`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Latn', 'English', 'en_GB', '2021-05-29 07:21:56', '2021-05-29 07:21:56'),
(2, 2, 'नेपाली', 'Nepali', '', 'np_NP', '2021-05-29 14:11:32', '2021-05-29 14:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(193, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(194, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(195, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(196, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(197, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(198, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(199, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(200, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(201, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(202, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(203, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(204, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(205, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(206, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(207, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-05-29 14:11:59', '2021-05-29 14:11:59'),
(208, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(209, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(210, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(211, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(212, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(213, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(214, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(215, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(216, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(217, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(218, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(219, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(220, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(221, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(222, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(223, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-05-29 14:12:00', '2021-05-29 14:12:00'),
(224, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(225, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(226, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(227, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(228, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(229, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(230, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(231, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(232, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(233, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(234, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(235, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(236, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(237, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(238, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-05-29 14:12:01', '2021-05-29 14:12:01'),
(239, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-05-29 14:12:02', '2021-05-29 14:12:02'),
(240, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-05-29 14:12:02', '2021-05-29 14:12:02'),
(241, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-05-29 14:12:02', '2021-05-29 14:12:02'),
(242, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-05-29 14:12:02', '2021-05-29 14:12:02'),
(243, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-05-29 14:12:02', '2021-05-29 14:12:02'),
(244, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(245, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(246, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(247, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(248, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(249, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(250, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(251, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(252, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(253, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(254, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(255, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(256, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(257, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(258, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-05-29 14:12:03', '2021-05-29 14:12:03'),
(259, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(260, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(261, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(262, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(263, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(264, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(265, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(266, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(267, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(268, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(269, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(270, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-05-29 14:12:04', '2021-05-29 14:12:04'),
(271, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-05-29 14:12:05', '2021-05-29 14:12:05'),
(272, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-05-29 14:12:05', '2021-05-29 14:12:05'),
(273, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-05-29 14:12:05', '2021-05-29 14:12:05'),
(274, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(275, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(276, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(277, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(278, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(279, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(280, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-05-29 14:12:06', '2021-05-29 14:12:06'),
(281, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(282, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(283, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(284, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(285, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(286, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(287, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-05-29 14:12:07', '2021-05-29 14:12:07'),
(288, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(289, 1, 'np', 'auth', 'failed', 'These credentials do not match our records.', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(290, 1, 'np', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(291, 1, 'np', 'pagination', 'previous', '&laquo; Previous', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(292, 1, 'np', 'pagination', 'next', 'Next &raquo;', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(293, 1, 'np', 'passwords', 'reset', 'Your password has been reset!', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(294, 1, 'np', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(295, 1, 'np', 'passwords', 'token', 'This password reset token is invalid.', '2021-05-29 14:12:08', '2021-05-29 14:12:08'),
(296, 1, 'np', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(297, 1, 'np', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(298, 1, 'np', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(299, 1, 'np', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(300, 1, 'np', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(301, 1, 'np', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(302, 1, 'np', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(303, 1, 'np', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(304, 1, 'np', 'validation', 'array', 'The :attribute must be an array.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(305, 1, 'np', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(306, 1, 'np', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(307, 1, 'np', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(308, 1, 'np', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(309, 1, 'np', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-05-29 14:12:09', '2021-05-29 14:12:09'),
(310, 1, 'np', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(311, 1, 'np', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(312, 1, 'np', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(313, 1, 'np', 'validation', 'date', 'The :attribute is not a valid date.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(314, 1, 'np', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(315, 1, 'np', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(316, 1, 'np', 'validation', 'different', 'The :attribute and :other must be different.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(317, 1, 'np', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(318, 1, 'np', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(319, 1, 'np', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(320, 1, 'np', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-05-29 14:12:10', '2021-05-29 14:12:10'),
(321, 1, 'np', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(322, 1, 'np', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(323, 1, 'np', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(324, 1, 'np', 'validation', 'file', 'The :attribute must be a file.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(325, 1, 'np', 'validation', 'filled', 'The :attribute field must have a value.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(326, 1, 'np', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(327, 1, 'np', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(328, 1, 'np', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(329, 1, 'np', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(330, 1, 'np', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(331, 1, 'np', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(332, 1, 'np', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(333, 1, 'np', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(334, 1, 'np', 'validation', 'image', 'The :attribute must be an image.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(335, 1, 'np', 'validation', 'in', 'The selected :attribute is invalid.', '2021-05-29 14:12:11', '2021-05-29 14:12:11'),
(336, 1, 'np', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(337, 1, 'np', 'validation', 'integer', 'The :attribute must be an integer.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(338, 1, 'np', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(339, 1, 'np', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(340, 1, 'np', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(341, 1, 'np', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(342, 1, 'np', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(343, 1, 'np', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(344, 1, 'np', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(345, 1, 'np', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(346, 1, 'np', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(347, 1, 'np', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(348, 1, 'np', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-05-29 14:12:12', '2021-05-29 14:12:12'),
(349, 1, 'np', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(350, 1, 'np', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(351, 1, 'np', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(352, 1, 'np', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(353, 1, 'np', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(354, 1, 'np', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(355, 1, 'np', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(356, 1, 'np', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(357, 1, 'np', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(358, 1, 'np', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(359, 1, 'np', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(360, 1, 'np', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(361, 1, 'np', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-05-29 14:12:13', '2021-05-29 14:12:13'),
(362, 1, 'np', 'validation', 'numeric', 'The :attribute must be a number.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(363, 1, 'np', 'validation', 'present', 'The :attribute field must be present.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(364, 1, 'np', 'validation', 'regex', 'The :attribute format is invalid.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(365, 1, 'np', 'validation', 'required', 'The :attribute field is required.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(366, 1, 'np', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(367, 1, 'np', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(368, 1, 'np', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(369, 1, 'np', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(370, 1, 'np', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(371, 1, 'np', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(372, 1, 'np', 'validation', 'same', 'The :attribute and :other must match.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(373, 1, 'np', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(374, 1, 'np', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(375, 1, 'np', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-05-29 14:12:14', '2021-05-29 14:12:14'),
(376, 1, 'np', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(377, 1, 'np', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(378, 1, 'np', 'validation', 'string', 'The :attribute must be a string.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(379, 1, 'np', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(380, 1, 'np', 'validation', 'unique', 'The :attribute has already been taken.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(381, 1, 'np', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(382, 1, 'np', 'validation', 'url', 'The :attribute format is invalid.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(383, 1, 'np', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(384, 1, 'np', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-05-29 14:12:15', '2021-05-29 14:12:15'),
(1724, 1, 'en', '_json', 'app_name', 'NeonX', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1725, 1, 'en', '_json', 'app_full_name', 'SPORTSMALA - Sports News and magazine', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1726, 1, 'en', '_json', 'login', 'Login', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1727, 1, 'en', '_json', 'registration', 'Registration', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1728, 1, 'en', '_json', 'back_to', 'Back to', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1729, 1, 'en', '_json', 'back_to_home', 'Back to Home', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1730, 1, 'en', '_json', 'please_enter_your_user_information', 'Please enter your user information.', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1731, 1, 'en', '_json', 'remember_me', 'Remember Me', '2021-05-29 14:14:07', '2021-05-29 14:14:07'),
(1732, 1, 'en', '_json', 'create_an_account', 'Create an Account', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1733, 1, 'en', '_json', 'forgot_password', 'Forgot Password', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1734, 1, 'en', '_json', 'about', 'About', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1735, 1, 'en', '_json', 'support', 'Support', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1736, 1, 'en', '_json', 'contact_us', 'Contact Us', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1737, 1, 'en', '_json', 'notification', 'Notification', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1738, 1, 'en', '_json', 'view_all_notifications', 'View all notifications', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1739, 1, 'en', '_json', 'available', 'Available', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1740, 1, 'en', '_json', 'account', 'Account', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1741, 1, 'en', '_json', 'setting', 'Setting', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1742, 1, 'en', '_json', 'logout', 'Logout', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1743, 1, 'en', '_json', 'dashboard', 'Dashboard', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1744, 1, 'en', '_json', 'menu', 'Menu', '2021-05-29 14:14:08', '2021-05-29 14:14:08'),
(1745, 1, 'en', '_json', 'home', 'Home', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1746, 1, 'en', '_json', 'users', 'Users', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1747, 1, 'en', '_json', 'add_user', 'Add User', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1748, 1, 'en', '_json', 'roles_&_permissions', 'Roles & Permissions', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1749, 1, 'en', '_json', 'roles', 'Roles', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1750, 1, 'en', '_json', 'modules', 'Modules', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1751, 1, 'en', '_json', 'permission_management', 'Permission Management', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1752, 1, 'en', '_json', 'language_settings', 'Language Settings', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1753, 1, 'en', '_json', 'add_role', 'Add Role', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1754, 1, 'en', '_json', 'name', 'Name', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1755, 1, 'en', '_json', 'slug', 'Slug', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1756, 1, 'en', '_json', 'permissions', 'Permissions', '2021-05-29 14:14:09', '2021-05-29 14:14:09'),
(1757, 1, 'en', '_json', 'module', 'Module', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1758, 1, 'en', '_json', 'read', 'Read', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1759, 1, 'en', '_json', 'write', 'Write', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1760, 1, 'en', '_json', 'delete', 'Delete', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1761, 1, 'en', '_json', 'first_name', 'First Name', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1762, 1, 'en', '_json', 'last_name', 'Last Name', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1763, 1, 'en', '_json', 'email', 'Email', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1764, 1, 'en', '_json', 'role', 'Role', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1765, 1, 'en', '_json', 'password', 'Password', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1766, 1, 'en', '_json', 'confirm_password', 'Confirm Password', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1767, 1, 'en', '_json', 'image', 'Image', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1768, 1, 'en', '_json', 'administrators', 'Administrators', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1769, 1, 'en', '_json', 'last_login', 'Last Login', '2021-05-29 14:14:10', '2021-05-29 14:14:10'),
(1770, 1, 'en', '_json', 'options', 'Options', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1771, 1, 'en', '_json', 'showing', 'Showing', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1772, 1, 'en', '_json', 'to', 'To', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1773, 1, 'en', '_json', 'of', 'Of', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1774, 1, 'en', '_json', 'entries', 'Entries', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1775, 1, 'en', '_json', 'update_role_and_permission', 'Update Role And Permission', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1776, 1, 'en', '_json', 'role_name', 'Role Name', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1777, 1, 'en', '_json', 'save_changes', 'Save Changes', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1778, 1, 'en', '_json', 'add_permission', 'Add permission', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1779, 1, 'en', '_json', 'description', 'Description', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1780, 1, 'en', '_json', 'created', 'Created', '2021-05-29 14:14:11', '2021-05-29 14:14:11'),
(1781, 1, 'en', '_json', 'edit', 'Edit', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1782, 1, 'en', '_json', 'profile', 'Profile', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1783, 1, 'en', '_json', 'change_password', 'Change Password', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1784, 1, 'en', '_json', 'edit_profile', 'Update Profile', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1785, 1, 'en', '_json', 'avatar', 'Avatar', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1786, 1, 'en', '_json', 'status', 'Status', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1787, 1, 'en', '_json', 'join_date', 'Join Date', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1788, 1, 'en', '_json', 'confirmed', 'Confirmed', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1789, 1, 'en', '_json', 'unconfirmed', 'Unconfirmed', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1790, 1, 'en', '_json', 'inactive', 'Inactive', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1791, 1, 'en', '_json', 'active', 'Active', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1792, 1, 'en', '_json', 'banned', 'Banned', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1793, 1, 'en', '_json', 'change_role', 'Change Role', '2021-05-29 14:14:12', '2021-05-29 14:14:12'),
(1794, 1, 'en', '_json', 'ban_user', 'Ban User', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1795, 1, 'en', '_json', 'unban_user', 'Unban User', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1796, 1, 'en', '_json', 'close', 'Close', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1797, 1, 'en', '_json', 'save', 'Save', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1798, 1, 'en', '_json', 'old_password', 'Old Password', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1799, 1, 'en', '_json', 'new_password', 'New Password', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1800, 1, 'en', '_json', 'update', 'Update', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1801, 1, 'en', '_json', 'default_language', 'Default Language', '2021-05-29 14:14:13', '2021-05-29 14:14:13'),
(1802, 1, 'en', '_json', 'language', 'Language', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1803, 1, 'en', '_json', 'add_language', 'Add Language', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1804, 1, 'en', '_json', 'language_name', 'Language Name', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1805, 1, 'en', '_json', 'short_form', 'Short Form', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1806, 1, 'en', '_json', 'script', 'Script', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1807, 1, 'en', '_json', 'native', 'Native', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1808, 1, 'en', '_json', 'regional', 'Regional', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1809, 1, 'en', '_json', 'text_direction', 'Text Direction', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1810, 1, 'en', '_json', 'ltr', 'LTR', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1811, 1, 'en', '_json', 'rtl', 'RTL', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1812, 1, 'en', '_json', 'languages', 'Languages', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1813, 1, 'en', '_json', 'code', 'Code', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1814, 1, 'en', '_json', 'edit_phrase', 'Edit Phrase', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1815, 1, 'en', '_json', 'plain_text', 'Plain Text', '2021-05-29 14:14:14', '2021-05-29 14:14:14'),
(1816, 1, 'en', '_json', 'translated_text', 'Translated Text', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1817, 1, 'en', '_json', 'add', 'Add', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1818, 1, 'en', '_json', 'phrase', 'Phrase', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1819, 1, 'en', '_json', 'translated_language', 'Translated Language', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1820, 1, 'en', '_json', 'flag', 'Flag', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1821, 1, 'en', '_json', 'select_option', 'Select option', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1822, 1, 'en', '_json', 'update_languages', 'Update Language', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1823, 1, 'en', '_json', 'gallery', 'Gallery', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1824, 1, 'en', '_json', 'password_confirmation', 'Password Confirmation', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1825, 1, 'en', '_json', 'update_language', 'Update Language', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1826, 1, 'en', '_json', 'add_image', 'Add Image', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1827, 1, 'en', '_json', 'save_change', 'Save Change', '2021-05-29 14:14:15', '2021-05-29 14:14:15'),
(1828, 1, 'en', '_json', 'general_settings', 'General Settings', '2021-05-29 14:14:16', '2021-05-29 14:14:16'),
(1829, 1, 'en', '_json', 'company_informations', 'Company Informations', '2021-05-29 14:14:16', '2021-05-29 14:14:16'),
(1830, 1, 'en', '_json', 'social_media_settings', 'Social Media Settings', '2021-05-29 14:14:16', '2021-05-29 14:14:16'),
(1831, 1, 'en', '_json', 'settings', 'Settings', '2021-05-29 14:14:17', '2021-05-29 14:14:17'),
(1832, 1, 'en', '_json', 'email_settings', 'Email Settings', '2021-05-29 14:14:17', '2021-05-29 14:14:17'),
(1833, 1, 'en', '_json', 'timezone', 'Timezone', '2021-05-29 14:14:17', '2021-05-29 14:14:17'),
(1834, 1, 'en', '_json', 'application_name', 'Application Name', '2021-05-29 14:14:17', '2021-05-29 14:14:17'),
(1835, 1, 'en', '_json', 'copyright', 'Copyright', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1836, 1, 'en', '_json', 'copyright_text', 'Copyright Text', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1837, 1, 'en', '_json', 'address', 'Address', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1838, 1, 'en', '_json', 'phone', 'Phone', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1839, 1, 'en', '_json', 'facebook_url', 'Facebook URL', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1840, 1, 'en', '_json', 'twitter_url', 'Twitter URL', '2021-05-29 14:14:18', '2021-05-29 14:14:18'),
(1841, 1, 'en', '_json', 'google_url', 'Google URL', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1842, 1, 'en', '_json', 'instagram_url', 'Instagram URL', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1843, 1, 'en', '_json', 'pinterest_url', 'Pinterest URL', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1844, 1, 'en', '_json', 'linkedin_url', 'Linkedin URL', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1845, 1, 'en', '_json', 'youtube_url', 'Youtube URL', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1846, 1, 'en', '_json', 'mail_driver', 'Mail driver', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1847, 1, 'en', '_json', 'mail_host', 'Mail host', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1848, 1, 'en', '_json', 'mail_port', 'Mail port', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1849, 1, 'en', '_json', 'mail_address', 'Mail address', '2021-05-29 14:14:19', '2021-05-29 14:14:19'),
(1850, 1, 'en', '_json', 'mail_username', 'Mail username', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1851, 1, 'en', '_json', 'mail_password', 'Mail password', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1852, 1, 'en', '_json', 'mail_encryption', 'Mail encryption', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1853, 1, 'en', '_json', 'path', 'Path', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1854, 1, 'en', '_json', 'add_logo', 'Add Logo', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1855, 1, 'en', '_json', 'add_favicon', 'Add Favicon', '2021-05-29 14:14:20', '2021-05-29 14:14:20'),
(1856, 1, 'en', '_json', 'zip_code', 'Zip Code', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1857, 1, 'en', '_json', 'city', 'City', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1858, 1, 'en', '_json', 'state', 'State', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1859, 1, 'en', '_json', 'country', 'Country', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1860, 1, 'en', '_json', 'website', 'Website', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1861, 1, 'en', '_json', 'company_registration', 'Company Registration', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1862, 1, 'en', '_json', 'tax_number', 'Tax Number', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1863, 1, 'en', '_json', 'email_template', 'Email Template', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1864, 1, 'en', '_json', 'templates', 'Templates', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1865, 1, 'en', '_json', 'email_group', 'Email Group', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1866, 1, 'en', '_json', 'subject', 'Subject', '2021-05-29 14:14:21', '2021-05-29 14:14:21'),
(1867, 1, 'en', '_json', 'template_body', 'Template body', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1868, 1, 'en', '_json', 'send_code', 'Send code', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1869, 1, 'en', '_json', 'reset_password', 'Reset password', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1870, 1, 'en', '_json', 'update_template', 'Update template', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1871, 1, 'en', '_json', 'default_language_changed', 'Default language changed', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1872, 1, 'en', '_json', 'new_language_added', 'New language successfully added.', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1873, 1, 'en', '_json', 'successfully_updated', 'Successfully updated.', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1874, 1, 'en', '_json', 'successfully_added', 'Successfully added.', '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(1875, 1, 'en', '_json', 'reset_code_is_send_to_mail', 'Reset Code is send to your mail', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1876, 1, 'en', '_json', 'you_can_login_with_new_password', 'You can login with  new password', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1877, 1, 'en', '_json', 'email_password_mismatch', 'Email & Password Mismatch', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1878, 1, 'en', '_json', 'you_are_banned', 'You are banned. Please try after few moment.', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1879, 1, 'en', '_json', 'your_account_is_not_activated', 'Your account is not activated.', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1880, 1, 'en', '_json', 'your_account_activation_successfully', 'your account activation successfully', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1881, 1, 'en', '_json', 'check_your_mail_for_active', 'Check your mail for activating your account.', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1882, 1, 'en', '_json', 'new_role_successfully_created', 'New role successfully created.', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1883, 1, 'en', '_json', 'successfully_update_role', 'Successfully update user role.', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1884, 1, 'en', '_json', 'ban_this_user', 'Ban this user', '2021-05-29 14:14:23', '2021-05-29 14:14:23'),
(1885, 1, 'en', '_json', 'unban_this_user', 'Reactive this user. Please Check mail for active account.', '2021-05-29 14:14:24', '2021-05-29 14:14:24'),
(1886, 1, 'en', '_json', 'permission_successfully_updated', 'Permission successfully updated.', '2021-05-29 14:14:24', '2021-05-29 14:14:24'),
(1887, 1, 'en', '_json', 'check_user_mail_for_active_this_account', 'Check your mail for active this account.', '2021-05-29 14:14:25', '2021-05-29 14:14:25'),
(1888, 1, 'en', '_json', 'the_email_has_already_been_taken', 'The email has already been taken', '2021-05-29 14:14:25', '2021-05-29 14:14:25'),
(1889, 1, 'en', '_json', 'please_check_again', 'Please check again.', '2021-05-29 14:14:25', '2021-05-29 14:14:25'),
(1890, 1, 'en', '_json', 'successfully_deleted', 'Successfully Deleted', '2021-05-29 14:14:25', '2021-05-29 14:14:25'),
(1891, 1, 'en', '_json', 'not_found', 'Not found', '2021-05-29 14:14:25', '2021-05-29 14:14:25'),
(1892, 1, 'en', '_json', 'you_can_not_delete_this', 'You can not delete this.', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1893, 1, 'en', '_json', 'are_you_sure?', 'Are you sure?', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1894, 1, 'en', '_json', 'it_will_be_deleted_permanently', 'It will be deleted permanently!', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1895, 1, 'en', '_json', 'cancel', 'Cancel', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1896, 1, 'en', '_json', 'deleted', 'Deleted', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1897, 1, 'en', '_json', 'something_went_wrong_with_ajax', 'Something went wrong with ajax !', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1898, 1, 'en', '_json', 'group', 'Group', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1899, 1, 'en', '_json', 'default_messages', 'Messages', '2021-05-29 14:14:26', '2021-05-29 14:14:26'),
(1900, 1, 'en', '_json', 'add_page', 'Add Page', '2021-05-29 14:14:27', '2021-05-29 14:14:27'),
(1901, 1, 'en', '_json', 'pages', 'Pages', '2021-05-29 14:14:27', '2021-05-29 14:14:27'),
(1902, 1, 'en', '_json', 'title', 'Title', '2021-05-29 14:14:27', '2021-05-29 14:14:27'),
(1903, 1, 'en', '_json', 'slug_message', 'Slug Message', '2021-05-29 14:14:27', '2021-05-29 14:14:27'),
(1904, 1, 'en', '_json', 'template', 'Template', '2021-05-29 14:14:28', '2021-05-29 14:14:28'),
(1905, 1, 'en', '_json', 'visibility', 'Visibility', '2021-05-29 14:14:28', '2021-05-29 14:14:28'),
(1906, 1, 'en', '_json', 'show', 'Show', '2021-05-29 14:14:28', '2021-05-29 14:14:28'),
(1907, 1, 'en', '_json', 'hide', 'Hide', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1908, 1, 'en', '_json', 'show_only_to_registered_users', 'Show only to registered users', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1909, 1, 'en', '_json', 'successfully_update_menu_arrangement', 'Successfully update menu arrangement.', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1910, 1, 'en', '_json', 'yes', 'Yes', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1911, 1, 'en', '_json', 'no', 'No', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1912, 1, 'en', '_json', 'show_title', 'Show Title', '2021-05-29 14:14:29', '2021-05-29 14:14:29'),
(1913, 1, 'en', '_json', 'show_breadcrumb', 'Show Breadcrumb', '2021-05-29 14:14:30', '2021-05-29 14:14:30'),
(1914, 1, 'en', '_json', 'show_right_column', 'Show Right Column', '2021-05-29 14:14:30', '2021-05-29 14:14:30'),
(1915, 1, 'en', '_json', 'show_on_menu', 'Show On Menu', '2021-05-29 14:14:30', '2021-05-29 14:14:30'),
(1916, 1, 'en', '_json', 'top_menu', 'Top Menu', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1917, 1, 'en', '_json', 'main_menu', 'Main Menu', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1918, 1, 'en', '_json', 'footer', 'Footer', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1919, 1, 'en', '_json', 'do_not_add_to_menu', 'Do not add to menu', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1920, 1, 'en', '_json', 'meta_tag', 'Meta Tag', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1921, 1, 'en', '_json', 'keywords', 'Keywords', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1922, 1, 'en', '_json', 'location', 'Location', '2021-05-29 14:14:31', '2021-05-29 14:14:31'),
(1923, 1, 'en', '_json', 'date_added', 'Date Added', '2021-05-29 14:14:32', '2021-05-29 14:14:32'),
(1924, 1, 'en', '_json', 'update_page', 'Update Page', '2021-05-29 14:14:32', '2021-05-29 14:14:32'),
(1925, 1, 'en', '_json', 'menu_order', 'Menu order', '2021-05-29 14:14:32', '2021-05-29 14:14:32'),
(1926, 1, 'en', '_json', 'back_to_pages', 'Back to pages', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1927, 1, 'en', '_json', 'feature_image', 'Feature image', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1928, 1, 'en', '_json', 'page_layout', 'Layout', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1929, 1, 'en', '_json', 'seo', 'SEO', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1930, 1, 'en', '_json', 'page_content', 'Content', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1931, 1, 'en', '_json', 'remark', 'Remark', '2021-05-29 14:14:33', '2021-05-29 14:14:33'),
(1932, 1, 'en', '_json', 'add_menu', 'Add menu', '2021-05-29 14:14:34', '2021-05-29 14:14:34'),
(1933, 1, 'en', '_json', 'edit_menu', 'Edit menu', '2021-05-29 14:14:34', '2021-05-29 14:14:34'),
(1934, 1, 'en', '_json', 'add_menu_item', 'Add menu item', '2021-05-29 14:14:34', '2021-05-29 14:14:34'),
(1935, 1, 'en', '_json', 'label', 'Label', '2021-05-29 14:14:35', '2021-05-29 14:14:35'),
(1936, 1, 'en', '_json', 'order', 'Order', '2021-05-29 14:14:35', '2021-05-29 14:14:35'),
(1937, 1, 'en', '_json', 'parent', 'Parent', '2021-05-29 14:14:35', '2021-05-29 14:14:35'),
(1938, 1, 'en', '_json', 'custom', 'Custom', '2021-05-29 14:14:36', '2021-05-29 14:14:36'),
(1939, 1, 'en', '_json', 'page', 'Page', '2021-05-29 14:14:36', '2021-05-29 14:14:36'),
(1940, 1, 'en', '_json', 'post', 'Post', '2021-05-29 14:14:36', '2021-05-29 14:14:36'),
(1941, 1, 'en', '_json', 'source', 'Source', '2021-05-29 14:14:36', '2021-05-29 14:14:36'),
(1942, 1, 'en', '_json', 'url', 'URL', '2021-05-29 14:14:36', '2021-05-29 14:14:36'),
(1943, 1, 'en', '_json', 'post_id', 'Post id', '2021-05-29 14:14:37', '2021-05-29 14:14:37'),
(1944, 1, 'en', '_json', 'page_id', 'Page id', '2021-05-29 14:14:37', '2021-05-29 14:14:37'),
(1945, 1, 'en', '_json', 'menu_item', 'Menu item', '2021-05-29 14:14:37', '2021-05-29 14:14:37'),
(1946, 1, 'en', '_json', 'update_menu_item', 'Update menu item', '2021-05-29 14:14:37', '2021-05-29 14:14:37'),
(1947, 1, 'en', '_json', 'back_to_menu_item', 'Back to menu item', '2021-05-29 14:14:37', '2021-05-29 14:14:37'),
(1948, 1, 'en', '_json', 'menu_location', 'Menu Location', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1949, 1, 'en', '_json', 'create_new_menu', 'Create new menu', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1950, 1, 'en', '_json', 'create', 'Create', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1951, 1, 'en', '_json', 'choice_page', 'Choice page', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1952, 1, 'en', '_json', 'posts', 'Posts', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1953, 1, 'en', '_json', 'appearance', 'Appearance', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1954, 1, 'en', '_json', 'theme', 'Theme', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1955, 1, 'en', '_json', 'delete_menu_item', 'Delete menu item?', '2021-05-29 14:14:38', '2021-05-29 14:14:38'),
(1956, 1, 'en', '_json', 'select_menu', 'Select menu', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1957, 1, 'en', '_json', 'delete_this_menu', 'Delete this menu?', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1958, 1, 'en', '_json', 'drag_drop_menu_item_for_rearrange', 'Drag & Drop menu item for rearrange.', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1959, 1, 'en', '_json', 'open_in_new_teb', 'Open in new teb', '2021-05-29 14:14:39', '2021-05-29 14:14:39');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1960, 1, 'en', '_json', 'select_language', 'Select Language', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1961, 1, 'en', '_json', 'category_name', 'Category name', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1962, 1, 'en', '_json', 'show_on_homepage', 'Show on homepage', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1963, 1, 'en', '_json', 'category_block_style', 'Category block style', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1964, 1, 'en', '_json', 'add_category', 'Add Category', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1965, 1, 'en', '_json', 'update_category', 'Update Category', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1966, 1, 'en', '_json', 'add_sub_category', 'Add sub category', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1967, 1, 'en', '_json', 'parent_category', 'Parent category', '2021-05-29 14:14:39', '2021-05-29 14:14:39'),
(1968, 1, 'en', '_json', 'sub_category_name', 'Sub category name', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1969, 1, 'en', '_json', 'update_sub_category', 'Update sub category', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1970, 1, 'en', '_json', 'categories', 'Categories', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1971, 1, 'en', '_json', 'sub_categories', 'Sub Categories', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1972, 1, 'en', '_json', 'select_category', 'Select Category', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1973, 1, 'en', '_json', 'select_sub_category', 'Select Sub Category', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1974, 1, 'en', '_json', 'add_post', 'Add post', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1975, 1, 'en', '_json', 'posts_details', 'Posts details', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1976, 1, 'en', '_json', 'content', 'Content', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1977, 1, 'en', '_json', 'add_to_featured', 'Add to featured', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1978, 1, 'en', '_json', 'add_to_breaking', 'Add to breaking', '2021-05-29 14:14:40', '2021-05-29 14:14:40'),
(1979, 1, 'en', '_json', 'add_to_slider', 'Add to slider', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1980, 1, 'en', '_json', 'add_to_recommended', 'Add to recommended', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1981, 1, 'en', '_json', 'show_only_to_authenticate_users', 'Show only to authenticated users', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1982, 1, 'en', '_json', 'seo_details', 'SEO Details', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1983, 1, 'en', '_json', 'tags', 'Tags', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1984, 1, 'en', '_json', 'sub_category', 'Sub Category', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1985, 1, 'en', '_json', 'send_post_to_newsletter', 'Send post to newsletter', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1986, 1, 'en', '_json', 'send_notification_subscribers', 'Send notification to subscribers', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1987, 1, 'en', '_json', 'publish', 'Publish', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1988, 1, 'en', '_json', 'published', 'Published', '2021-05-29 14:14:41', '2021-05-29 14:14:41'),
(1989, 1, 'en', '_json', 'create_post', 'Create post', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1990, 1, 'en', '_json', 'category', 'Category', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1991, 1, 'en', '_json', 'draft', 'Draft', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1992, 1, 'en', '_json', 'scheduled', 'Scheduled', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1993, 1, 'en', '_json', 'schedule_date', 'Schedule Date', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1994, 1, 'en', '_json', 'post_type', 'Post Type', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1995, 1, 'en', '_json', 'post_by', 'Post By', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1996, 1, 'en', '_json', 'hit', 'Hit', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1997, 1, 'en', '_json', 'added_date', 'Added date', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1998, 1, 'en', '_json', 'breaking', 'Breaking', '2021-05-29 14:14:42', '2021-05-29 14:14:42'),
(1999, 1, 'en', '_json', 'featured', 'Featured', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2000, 1, 'en', '_json', 'recommended', 'Recommended', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2001, 1, 'en', '_json', 'slider', 'Slider', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2002, 1, 'en', '_json', 'view', 'View', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2003, 1, 'en', '_json', 'breaking_posts', 'Breaking Posts', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2004, 1, 'en', '_json', 'featured_posts', 'Featured Posts', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2005, 1, 'en', '_json', 'pending_posts', 'Pending Posts', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2006, 1, 'en', '_json', 'recommended_posts', 'Recommended Posts', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2007, 1, 'en', '_json', 'slider_posts', 'Slider Posts', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2008, 1, 'en', '_json', 'unpublished', 'Unpublish', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2009, 1, 'en', '_json', 'update_order', 'Update Order', '2021-05-29 14:14:43', '2021-05-29 14:14:43'),
(2010, 1, 'en', '_json', 'remove', 'Remove', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2011, 1, 'en', '_json', 'create_article', 'Create Article', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2012, 1, 'en', '_json', 'default_storage', 'Default Storage', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2013, 1, 'en', '_json', 'aws_access_key_id', 'AWS access key id', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2014, 1, 'en', '_json', 'aws_secret_access_key', 'AWS secret access key', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2015, 1, 'en', '_json', 'aws_default_region', 'AWS default region', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2016, 1, 'en', '_json', 'aws_bucket', 'AWS bucket', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2017, 1, 'en', '_json', 'upload_video', 'Upload Video', '2021-05-29 14:14:44', '2021-05-29 14:14:44'),
(2018, 1, 'en', '_json', 'remove_video', 'Remote Video', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2019, 1, 'en', '_json', 'add_video', 'Add Video', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2020, 1, 'en', '_json', 'image_gallery', 'Image Gallery', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2021, 1, 'en', '_json', 'upload', 'Upload', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2022, 1, 'en', '_json', 'select_image', 'Select Image', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2023, 1, 'en', '_json', 'storage_settings', 'Storage Setting', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2024, 1, 'en', '_json', 'it_will_be_remove_form_this_feature', 'It will be remove form this feature', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2025, 1, 'en', '_json', 'it_will_be_added_to_this_feature', 'It will be added to this feature', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2026, 1, 'en', '_json', 'added', 'Added', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2027, 1, 'en', '_json', 'removed', 'Removed', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2028, 1, 'en', '_json', 'create_video_post', 'Create Video Post', '2021-05-29 14:14:45', '2021-05-29 14:14:45'),
(2029, 1, 'en', '_json', 'update_post', 'Update post', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2030, 1, 'en', '_json', 'no_more_records', 'No more records!', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2031, 1, 'en', '_json', 'load_more', 'Load more...', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2032, 1, 'en', '_json', 'select_video', 'Select video', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2033, 1, 'en', '_json', 'video_gallery', 'Video gallery', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2034, 1, 'en', '_json', 'post_thumbnail', 'Post Thumbnail', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2035, 1, 'en', '_json', 'video_url_type', 'Video url type', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2036, 1, 'en', '_json', 'video_url', 'Video url', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2037, 1, 'en', '_json', 'add_video_thumbnail', 'Add video thumbnail', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2038, 1, 'en', '_json', 'ads', 'Ads', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2039, 1, 'en', '_json', 'ad_location', 'Ad Location', '2021-05-29 14:14:46', '2021-05-29 14:14:46'),
(2040, 1, 'en', '_json', 'create_ad', 'Create ad', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2041, 1, 'en', '_json', 'ad_name', 'Ad Name', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2042, 1, 'en', '_json', 'ad_size', 'Ad Size', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2043, 1, 'en', '_json', 'ad_type', 'Ad Type', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2044, 1, 'en', '_json', 'ad_url', 'Ad URL', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2045, 1, 'en', '_json', 'ad_image', 'Ad Image', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2046, 1, 'en', '_json', 'ad_code', 'Ad Code', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2047, 1, 'en', '_json', 'ads_details', 'Ads Details', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2048, 1, 'en', '_json', 'back_to_ads', 'Back to Ads', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2049, 1, 'en', '_json', 'enable', 'Enable', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2050, 1, 'en', '_json', 'disable', 'Disable', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2051, 1, 'en', '_json', 'update_ad_image', 'Update ad image', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2052, 1, 'en', '_json', 'edit_ad', 'Edit Ad', '2021-05-29 14:14:47', '2021-05-29 14:14:47'),
(2053, 1, 'en', '_json', 'update_ad', 'Update Ad', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2054, 1, 'en', '_json', 'ads_location', 'Ads Location', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2055, 1, 'en', '_json', 'unique_name', 'Unique Name', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2056, 1, 'en', '_json', 'ad_text', 'Ad Text', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2057, 1, 'en', '_json', 'text', 'Text', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2058, 1, 'en', '_json', 'send_notification', 'Send Notification', '2021-05-29 14:14:48', '2021-05-29 14:14:48'),
(2059, 1, 'en', '_json', 'notification_setting', 'Notification Setting', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2060, 1, 'en', '_json', 'notification_setting_details', 'Notification Setting Details', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2061, 1, 'en', '_json', 'onesignal_api_key', 'Onesignal API Key', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2062, 1, 'en', '_json', 'onesignal_app_id', 'Onesignal App Id', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2063, 1, 'en', '_json', 'onesignal_action_message', 'Onesignal Action Message', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2064, 1, 'en', '_json', 'onesignal_accept_button', 'Onesignal Accept Button', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2065, 1, 'en', '_json', 'onesignal_cancel_button', 'Onesignal Cancel Button', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2066, 1, 'en', '_json', 'icon_url', 'Icon URL', '2021-05-29 14:14:49', '2021-05-29 14:14:49'),
(2067, 1, 'en', '_json', 'image_url', 'Image URL', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2068, 1, 'en', '_json', 'message', 'Message', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2069, 1, 'en', '_json', 'headings', 'Headings', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2070, 1, 'en', '_json', 'send_custom_notification', 'Send custom notification', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2071, 1, 'en', '_json', 'successfully_send', 'Successfully Send', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2072, 1, 'en', '_json', 'send_email_to_subscribers', 'Send email to subscribers', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2073, 1, 'en', '_json', 'newsletter', 'Newsletter', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2074, 1, 'en', '_json', 'subscribers', 'Subscribers', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2075, 1, 'en', '_json', 'send_email', 'Send email', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2076, 1, 'en', '_json', 'add_poll', 'Add Poll', '2021-05-29 14:14:50', '2021-05-29 14:14:50'),
(2077, 1, 'en', '_json', 'back_to_polls', 'Back to polls', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2078, 1, 'en', '_json', 'question', 'Question', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2079, 1, 'en', '_json', 'option_1', 'Option 1', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2080, 1, 'en', '_json', 'option_2', 'Option 2', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2081, 1, 'en', '_json', 'option_3', 'Option 3', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2082, 1, 'en', '_json', 'option_4', 'Option 4', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2083, 1, 'en', '_json', 'option_5', 'Option 5', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2084, 1, 'en', '_json', 'option_6', 'Option 6', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2085, 1, 'en', '_json', 'option_7', 'Option 7', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2086, 1, 'en', '_json', 'option_8', 'Option 8', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2087, 1, 'en', '_json', 'option_9', 'Option 9', '2021-05-29 14:14:51', '2021-05-29 14:14:51'),
(2088, 1, 'en', '_json', 'option_10', 'Option 10', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2089, 1, 'en', '_json', 'auth_required', 'Auth required', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2090, 1, 'en', '_json', 'polls', 'Polls', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2091, 1, 'en', '_json', 'poll', 'Poll', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2092, 1, 'en', '_json', 'vote', 'Vote', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2093, 1, 'en', '_json', 'update_poll', 'Update poll', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2094, 1, 'en', '_json', 'create_poll', 'Create poll', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2095, 1, 'en', '_json', 'result', 'Result', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2096, 1, 'en', '_json', 'total_vote', 'Total vote', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2097, 1, 'en', '_json', 'widgets', 'Widgets', '2021-05-29 14:14:52', '2021-05-29 14:14:52'),
(2098, 1, 'en', '_json', 'short_code', 'Short code', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2099, 1, 'en', '_json', 'add_widget', 'Add widget', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2100, 1, 'en', '_json', 'update_widget', 'Update Widget', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2101, 1, 'en', '_json', 'back_to_widgets', 'Back to widgets', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2102, 1, 'en', '_json', 'default', 'Default', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2103, 1, 'en', '_json', 'type', 'Type', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2104, 1, 'en', '_json', 'send_date', 'Send date', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2105, 1, 'en', '_json', 'contact_messages', 'Contact messages', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2106, 1, 'en', '_json', 'comment', 'Comment', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2107, 1, 'en', '_json', 'comments', 'Comments', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2108, 1, 'en', '_json', 'comment_at', 'Comment At', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2109, 1, 'en', '_json', 'unseen', 'Unseen', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2110, 1, 'en', '_json', 'seen', 'Seen', '2021-05-29 14:14:53', '2021-05-29 14:14:53'),
(2111, 1, 'en', '_json', 'replay', 'Replay', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2112, 1, 'en', '_json', 'all', 'All', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2113, 1, 'en', '_json', 'filter', 'Filter', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2114, 1, 'en', '_json', 'seo_settings', 'SEO Settings', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2115, 1, 'en', '_json', 'seo_title', 'SEO Title', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2116, 1, 'en', '_json', 'seo_keywords', 'SEO Keywords', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2117, 1, 'en', '_json', 'seo_meta_description', 'SEO Meta Description', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2118, 1, 'en', '_json', 'author_name', 'Author Name', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2119, 1, 'en', '_json', 'google_analytics_id', 'Google Analytics ID', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2120, 1, 'en', '_json', 'select_current_theme', 'Select current theme', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2121, 1, 'en', '_json', 'og_title', 'OG Title', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2122, 1, 'en', '_json', 'og_description', 'OG Description', '2021-05-29 14:14:54', '2021-05-29 14:14:54'),
(2123, 1, 'en', '_json', 'og_image', 'OG Image', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2124, 1, 'en', '_json', 'add_section', 'Add Section', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2125, 1, 'en', '_json', 'section_label', 'Section label', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2126, 1, 'en', '_json', 'post_amount', 'Post Amount', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2127, 1, 'en', '_json', 'section_style', 'Section Style', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2128, 1, 'en', '_json', 'sections', 'Sections', '2021-05-29 14:14:55', '2021-05-29 14:14:55'),
(2129, 1, 'en', '_json', 'primary_section', 'Primary Sections', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2130, 1, 'en', '_json', 'update_section', 'Update Section', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2131, 1, 'en', '_json', 'update_theme', 'Update Theme', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2132, 1, 'en', '_json', 'header', 'Header', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2133, 1, 'en', '_json', 'themes_options', 'Themes Options', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2134, 1, 'en', '_json', 'modulus', 'Modules', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2135, 1, 'en', '_json', 'home_content', 'Home Page Setting', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2136, 1, 'en', '_json', 'primary_color', 'Primary Color', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2137, 1, 'en', '_json', 'font', 'Font', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2138, 1, 'en', '_json', 'option', 'Option', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2139, 1, 'en', '_json', 'please_select_at_least_one_item', 'Please select at least one Item.', '2021-05-29 14:14:56', '2021-05-29 14:14:56'),
(2140, 1, 'en', '_json', 'socials', 'Socials', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2141, 1, 'en', '_json', 'create_social', 'Create Social', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2142, 1, 'en', '_json', 'back_to_socials', 'Back to Socials', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2143, 1, 'en', '_json', 'social_details', 'Social Details', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2144, 1, 'en', '_json', 'icon_bg_color', 'Icon Backgroud color', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2145, 1, 'en', '_json', 'text_bg_color', 'Text Background color', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2146, 1, 'en', '_json', 'click_me_to_visit_site', 'Click here to visit', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2147, 1, 'en', '_json', 'use_class_of_font_awesome_icon', 'Use class of font awesome icon', '2021-05-29 14:14:57', '2021-05-29 14:14:57'),
(2148, 1, 'en', '_json', 'icon', 'Icon', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2149, 1, 'en', '_json', 'color', 'Color', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2150, 1, 'en', '_json', 'about_site', 'About Site', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2151, 1, 'en', '_json', 'start_date', 'Start Date', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2152, 1, 'en', '_json', 'end_date', 'End Date', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2153, 1, 'en', '_json', 'right_side_bar', 'Right Sidebar', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2154, 1, 'en', '_json', 'content_type', 'Content Type', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2155, 1, 'en', '_json', 'stay_connected', 'Stay Connected', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2156, 1, 'en', '_json', 'breaking_news', 'Breaking News', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2157, 1, 'en', '_json', 'submit_now', 'Submit Now', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2158, 1, 'en', '_json', 'about_us', 'About Us', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2159, 1, 'en', '_json', 'you_have_to_select_one_option', 'You have to select one option.', '2021-05-29 14:14:58', '2021-05-29 14:14:58'),
(2160, 1, 'en', '_json', 'you_have_to_login_for_voting', 'You have to login for voting.', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2161, 1, 'en', '_json', 'vote_has_been_submitted_successfully', 'Vote has been submitted successfully.', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2162, 1, 'en', '_json', 'vote_has_been_submitted_unsuccessfully', 'Vote has been submitted unsuccessfully.', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2163, 1, 'en', '_json', 'thank_you', 'Thank You', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2164, 1, 'en', '_json', 'oops', 'Oops', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2165, 1, 'en', '_json', 'select_language_for_below_fields', 'Select language for below fields', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2166, 1, 'en', '_json', 'sign_up', 'Sign Up', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2167, 1, 'en', '_json', 'newsletter_description', 'Subscribe to our mailing list to get the new updates!', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2168, 1, 'en', '_json', 'follow_us', 'Follow Us', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2169, 1, 'en', '_json', 'reply_from', 'Reply From', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2170, 1, 'en', '_json', 'page_type', 'Page Type', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2171, 1, 'en', '_json', 'page_template_type', 'Page Tempalte Type', '2021-05-29 14:14:59', '2021-05-29 14:14:59'),
(2172, 1, 'en', '_json', 'without_sidebar', 'Without Sidebar', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2173, 1, 'en', '_json', 'with_right_sidebar', 'With Right Sidebar', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2174, 1, 'en', '_json', 'with_left_sidebar', 'With Left Sidebar', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2175, 1, 'en', '_json', 'send_a_message', 'Send a Message', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2176, 1, 'en', '_json', 'recaptcha_settings', 'reCaptcha Settings', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2177, 1, 'en', '_json', 'captcha_secret', 'Captcha Secret', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2178, 1, 'en', '_json', 'captcha_sitekey', 'Captcha Sitekey', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2179, 1, 'en', '_json', 'captcha', 'Captcha', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2180, 1, 'en', '_json', 'test_mail_subject', 'This is test mail subject', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2181, 1, 'en', '_json', 'test_mail_success_message', 'Your email working fine.', '2021-05-29 14:15:00', '2021-05-29 14:15:00'),
(2182, 1, 'en', '_json', 'test_mail_error_message', 'Something went wrong, please check email setting', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2183, 1, 'en', '_json', 'test_mail_message', 'This is test mail', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2184, 1, 'en', '_json', 'already_have_an_account', 'Already have an account?', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2185, 1, 'en', '_json', 'successfully_registration_need_to_mail_verification', 'You have registered successfully, you have to verify your email address.', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2186, 1, 'en', '_json', 'dont_have_an_account', 'Don\'t you have an account?', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2187, 1, 'en', '_json', 'available_merge_fields', 'Available Merge Fields', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2188, 1, 'en', '_json', 'site_logo', 'Site Logo', '2021-05-29 14:15:01', '2021-05-29 14:15:01'),
(2189, 1, 'en', '_json', 'username', 'Username', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2190, 1, 'en', '_json', 'site_name', 'Site Name', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2191, 1, 'en', '_json', 'site_url', 'Site Url', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2192, 1, 'en', '_json', 'user_email', 'User Email', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2193, 1, 'en', '_json', 'activate_url', 'Activate Url', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2194, 1, 'en', '_json', 'post_title', 'Post Title', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2195, 1, 'en', '_json', 'read_more', 'Read More', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2196, 1, 'en', '_json', 'popular_post', 'Popular Post', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2197, 1, 'en', '_json', 'latest_post', 'Latest Post', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2198, 1, 'en', '_json', 'recommended_post', 'Recommended Post', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2199, 1, 'en', '_json', 'our_blog', 'Our Blog', '2021-05-29 14:15:02', '2021-05-29 14:15:02'),
(2200, 1, 'en', '_json', 'posted_on', 'Posted On', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2201, 1, 'en', '_json', 'no_content_available', 'No content available.', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2202, 1, 'en', '_json', 'successfully_unsubscribed', 'Successfully Unsubscribed', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2203, 1, 'en', '_json', 'unsuccessfully_unsubscribed', 'Unsuccessfully Unsubscribed', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2204, 1, 'en', '_json', 'show_ad_in_bottom', 'Show ad in bottom?', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2205, 1, 'en', '_json', 'must_select', 'Select at least one', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2206, 1, 'en', '_json', 'default_mode', 'Default Mode', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2207, 1, 'en', '_json', 'dark_mode', 'Dark Mode', '2021-05-29 14:15:03', '2021-05-29 14:15:03'),
(2208, 1, 'en', '_json', 'submitted_posts', 'Submitted Post', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2209, 1, 'en', '_json', 'unpublish', 'Unpublish', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2210, 1, 'en', '_json', 'comment_settings', 'Comment Settings', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2211, 1, 'en', '_json', 'all_comments', 'All Comments', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2212, 1, 'en', '_json', 'today', 'Today', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2213, 1, 'en', '_json', 'in_build', 'In Build', '2021-05-29 14:15:04', '2021-05-29 14:15:04'),
(2214, 1, 'en', '_json', 'disqus_comment', 'Disqus Comment', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2215, 1, 'en', '_json', 'disqus_short', 'Disqus Short Name', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2216, 1, 'en', '_json', 'facebook_comment', 'Facebook Comment', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2217, 1, 'en', '_json', 'facebook_app_id', 'Facebook App ID', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2218, 1, 'en', '_json', 'signature', 'Signature', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2219, 1, 'en', '_json', 'search', 'Search here', '2021-05-29 14:15:05', '2021-05-29 14:15:05'),
(2220, 1, 'en', '_json', 'input_user', 'User name', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2221, 1, 'en', '_json', 'input_email', 'login@your-email.com', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2222, 1, 'en', '_json', 'input_message', 'your message here..', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2223, 1, 'en', '_json', 'submit_news', 'Submit News', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2224, 1, 'en', '_json', 'post_image', 'Post Image', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2225, 1, 'en', '_json', 'subscribe', 'Subscribe', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2226, 1, 'en', '_json', 'email_address', 'Email Address', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2227, 1, 'en', '_json', 'view_results', 'View Results', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2228, 1, 'en', '_json', 'custom_header_footer', 'Custom Header Footer', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2229, 1, 'en', '_json', 'custom_css', 'Custom CSS', '2021-05-29 14:15:06', '2021-05-29 14:15:06'),
(2230, 1, 'en', '_json', 'predefined_header', 'Predefined Header', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2231, 1, 'en', '_json', 'custom_js', 'Custom JS', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2232, 1, 'en', '_json', 'addthis_public_id', 'AddThis Public ID', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2233, 1, 'en', '_json', 'adthis_option', 'AddThis Option', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2234, 1, 'en', '_json', 'article_detail_prefix', 'Article Detail Prefix', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2235, 1, 'en', '_json', 'page_detail_prefix', 'Page Detail Prefix', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2236, 1, 'en', '_json', 'url_settings', 'Route Setting', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2237, 1, 'en', '_json', 'cron_information', 'Cron Information', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2238, 1, 'en', '_json', 'update_cron_information', 'Update info', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2239, 1, 'en', '_json', 'related_post', 'You May Also Like', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2240, 1, 'en', '_json', 'cron_job_completed_successfully', 'Cron Job Completed successfully', '2021-05-29 14:15:07', '2021-05-29 14:15:07'),
(2241, 1, 'en', '_json', 'cron_job_completed_unsuccessfully', 'Cron job completed unsuccessfully', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2242, 1, 'en', '_json', 'total_visits', 'Total Visits', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2243, 1, 'en', '_json', 'total_visitors', 'Total Visitors', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2244, 1, 'en', '_json', 'total_unique_visits', 'Total Unique Visits', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2245, 1, 'en', '_json', 'total_unique_visitors', 'Total Unique Visitors', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2246, 1, 'en', '_json', 'visit_vs_visitor', 'Visit Vs Visitor', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2247, 1, 'en', '_json', 'submitted_post', 'Submitted Post', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2248, 1, 'en', '_json', 'post_published', 'Post Published', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2249, 1, 'en', '_json', 'total_register_users', 'Total Register Users', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2250, 1, 'en', '_json', 'browser_usages', 'Browser Usages', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2251, 1, 'en', '_json', 'current_month_visitors', 'Current Month Visitors', '2021-05-29 14:15:08', '2021-05-29 14:15:08'),
(2252, 1, 'en', '_json', 'current_month_visits', 'Current Month Visits', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2253, 1, 'en', '_json', 'top_hits_post', 'Top Hits Post', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2254, 1, 'en', '_json', 'available_tags', 'Available Tags', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2255, 1, 'en', '_json', 'add_tag', 'Add New Tag here..', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2256, 1, 'en', '_json', 'subscribe_description', 'Subscribe to our newsletter', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2257, 1, 'en', '_json', 'videos', 'Videos', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2258, 1, 'en', '_json', 'page_not_found', 'Page not found', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2259, 1, 'en', '_json', '404_message', 'It looks like you found a glitch in the page...', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2260, 1, 'en', '_json', '1', '403', '2021-05-29 14:15:09', '2021-05-29 14:15:09'),
(2261, 1, 'en', '_json', 'access_forbidden', 'Access forbidden', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2262, 1, 'en', '_json', '403_message', 'Access to this resource on the server is denied.', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2263, 1, 'en', '_json', 'generate_sitemap', 'Generate Sitemap', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2264, 1, 'en', '_json', 'successfully_generated', 'Sitemap Generated Successfully', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2265, 1, 'en', '_json', 'go_to_sitemap', 'Go to Sitemap', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2266, 1, 'en', '_json', 'cron', 'Cron', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2267, 1, 'en', '_json', 'cpanel_cron_command', 'cPanel CRON Command', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2268, 1, 'en', '_json', 'video_convert_cron', 'Video Convert CRON', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2269, 1, 'en', '_json', 'schedule_post_cron', 'Schedule Post CRON', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2270, 1, 'en', '_json', 'ffmpeg_description', 'This system will compress, convert, and optimize videos to mp4. This system require \'ffmpeg\' to be installed in your server. If you can\'t install FFMPEG, please contact your hosting provider, and they shall install it.', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2271, 1, 'en', '_json', 'ffmpeg_status', 'ffmpeg Status', '2021-05-29 14:15:10', '2021-05-29 14:15:10'),
(2272, 1, 'en', '_json', 'ffmpeg_settings', 'ffmpeg Setting', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2273, 1, 'en', '_json', 'no_page_available', 'No page available', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2274, 1, 'en', '_json', 'no_post_available', 'No post available', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2275, 1, 'en', '_json', 'no_category_available', 'No category available', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2276, 1, 'en', '_json', 'all_post', 'All Post', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2277, 1, 'en', '_json', 'your_email_is_invalid', 'Your email is invalid.', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2278, 1, 'en', '_json', 'is_mega_menu', 'is mega menu.?', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2279, 1, 'en', '_json', 'tab_type', 'tab type', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2280, 1, 'en', '_json', 'category_type', 'category type', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2281, 1, 'en', '_json', 'add_to_editor_picks', 'Add to editor picks', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2282, 1, 'en', '_json', 'editor_picks', 'Editor picks', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2283, 1, 'en', '_json', 'server_error', 'Server error', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2284, 1, 'en', '_json', '500_message', 'Oops something went wrong, this server unable to complete you request.', '2021-05-29 14:15:11', '2021-05-29 14:15:11'),
(2285, 1, 'en', '_json', 'run_manually', 'Run Manually', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2286, 1, 'en', '_json', 'for_all', 'For All', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2287, 1, 'en', '_json', 'video_convert', 'Video Convert', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2288, 1, 'en', '_json', 'schedule_post', 'Schedule Post', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2289, 1, 'en', '_json', 'newsletter_cron', 'Newsletter Cron', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2290, 1, 'en', '_json', 'please_make_sure_you_have_set_writable_permision_following_folder', 'Please make sure you have set writable following folder.', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2291, 1, 'en', '_json', 'bad_request', 'Bad Request', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2292, 1, 'en', '_json', '405_message', 'Possible Reason: Method Not Allowed.', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2293, 1, 'en', '_json', 'update_social', 'Update Social', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2294, 1, 'en', '_json', 'your_account_is_banned', 'Your account is banned', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2295, 1, 'en', '_json', 'member_since', 'Member Since', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2296, 1, 'en', '_json', 'preloader_option', 'Preloader Option', '2021-05-29 14:15:12', '2021-05-29 14:15:12'),
(2297, 1, 'en', '_json', 'preference_setting', 'Preference Setting', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2298, 1, 'en', '_json', 'my_profile', 'My Profile', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2299, 1, 'en', '_json', 'show_email_on_profile_page', 'Show email on profile page', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2300, 1, 'en', '_json', 'about_me', 'About me', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2301, 1, 'en', '_json', 'login_with_facebook', 'Login with Facebook', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2302, 1, 'en', '_json', 'login_with_twitter', 'Login with Twitter', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2303, 1, 'en', '_json', 'login_with_google', 'Login with Google', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2304, 1, 'en', '_json', 'sign_up_with_facebook', 'Sign up with Facebook', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2305, 1, 'en', '_json', 'sign_up_with_twitter', 'Sign up with Twitter', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2306, 1, 'en', '_json', 'sign_up_with_google', 'Sign up with Google', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2307, 1, 'en', '_json', 'social_login_settings', 'Social Login Settings', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2308, 1, 'en', '_json', 'facebook_client_id', 'Facebook Client ID', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2309, 1, 'en', '_json', 'facebook_client_secretkey', 'Facebook client secretkey', '2021-05-29 14:15:13', '2021-05-29 14:15:13'),
(2310, 1, 'en', '_json', 'facebook_callback_url', 'Facebook callback URL', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2311, 1, 'en', '_json', 'facebook_login_visibility', 'Facebook login visibility', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2312, 1, 'en', '_json', 'google_client_id', 'Google client ID', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2313, 1, 'en', '_json', 'google_client_secretkey', 'Google client secretkey', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2314, 1, 'en', '_json', 'google_callback_url', 'Google callback URL', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2315, 1, 'en', '_json', 'google_login_visibility', 'Google login visibility', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2316, 1, 'en', '_json', 'something_went_wrong_please_check_your_social_login_settings', 'Something went wrong! Please check your social login settings.', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2317, 1, 'en', '_json', 'addthis_script', 'AddThis Script', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2318, 1, 'en', '_json', 'addthis_toolbox', 'AddThis Toolbox code', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2319, 1, 'en', '_json', 'like', 'Like', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2320, 1, 'en', '_json', 'love', 'Love', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2321, 1, 'en', '_json', 'haha', 'HaHa', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2322, 1, 'en', '_json', 'wow', 'Wow', '2021-05-29 14:15:14', '2021-05-29 14:15:14'),
(2323, 1, 'en', '_json', 'sad', 'Sad', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2324, 1, 'en', '_json', 'angry', 'Angry', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2325, 1, 'en', '_json', 'others', 'others', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2326, 1, 'en', '_json', 'whats_your_reaction', 'What\'s your reaction?', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2327, 1, 'en', '_json', 'you_and', 'you and', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2328, 1, 'en', '_json', 'please_select_a_date', 'Please select a date!', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2329, 1, 'en', '_json', 'archive', 'Archive', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2330, 1, 'en', '_json', 'you_can_make_child_only_for_category_for_tab_mega_menu', 'You can make child only category for tab mega menu.', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2331, 1, 'en', '_json', 'you_can_make_child_max_length_2', 'You can make child length max 2.', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2332, 1, 'en', '_json', 'read_now', 'Read now', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2333, 1, 'en', '_json', 'article_detail', 'Article detail', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2334, 1, 'en', '_json', 'create_audio_post', 'Create Audio post', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2335, 1, 'en', '_json', 'upload_audio', 'Upload Audio', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2336, 1, 'en', '_json', 'add_audio', 'Add Audio', '2021-05-29 14:15:15', '2021-05-29 14:15:15'),
(2337, 1, 'en', '_json', 'select_audio', 'Select Audio', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2338, 1, 'en', '_json', 'show_author_on_post_detail', 'Show author on post detail page', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2339, 1, 'en', '_json', 'submit', 'Submit', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2340, 1, 'en', '_json', 'albums', 'Albums', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2341, 1, 'en', '_json', 'images', 'Images', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2342, 1, 'en', '_json', 'gallery_images', 'Gallery Images', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2343, 1, 'en', '_json', 'album', 'Album', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2344, 1, 'en', '_json', 'tab', 'Tab', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2345, 1, 'en', '_json', 'set_as_cover', 'Set as cover', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2346, 1, 'en', '_json', 'it_will_be_set_as_album_cover', 'It will be set as album cover', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2347, 1, 'en', '_json', 'select_album_first', 'Select album first', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2348, 1, 'en', '_json', 'select_album', 'Select album', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2349, 1, 'en', '_json', 'add_gallery_image', 'Add gallery Image', '2021-05-29 14:15:16', '2021-05-29 14:15:16'),
(2350, 1, 'en', '_json', 'album_name', 'Album name', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2351, 1, 'en', '_json', 'tabs', 'Tabs', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2352, 1, 'en', '_json', 'add_album', 'Add album', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2353, 1, 'en', '_json', 'hit_enter', 'Write and hit enter', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2354, 1, 'en', '_json', 'update_album', 'Update album', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2355, 1, 'en', '_json', 'update_gallery_image', 'Update gallery image', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2356, 1, 'en', '_json', 'select_tab', 'Select tab', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2357, 1, 'en', '_json', 'change_image', 'Change Image', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2358, 1, 'en', '_json', 'back', 'Back', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2359, 1, 'en', '_json', 'update_image', 'Update Image', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2360, 1, 'en', '_json', 'album_cover', 'Album Cover', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2361, 1, 'en', '_json', 'image_and_text', 'Image and Text', '2021-05-29 14:15:17', '2021-05-29 14:15:17'),
(2362, 1, 'en', '_json', 'text_and_image', 'Text and Image', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2363, 1, 'en', '_json', 'text_image_text', 'Text, Image and Text', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2364, 1, 'en', '_json', 'video', 'Video', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2365, 1, 'en', '_json', 'embadded', 'Embedded', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2366, 1, 'en', '_json', 'add_content', 'Add Content', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2367, 1, 'en', '_json', 'twitter', 'Twitter', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2368, 1, 'en', '_json', 'vimeo', 'Vimeo', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2369, 1, 'en', '_json', 'youtube', 'Youtube', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2370, 1, 'en', '_json', 'youtube_embed', 'Youtube Embed', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2371, 1, 'en', '_json', 'vimeo_embed', 'Vimeo Embed', '2021-05-29 14:15:18', '2021-05-29 14:15:18'),
(2372, 1, 'en', '_json', 'twitter_embed', 'Twitter Embed', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2373, 1, 'en', '_json', 'image_left', 'Image Left', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2374, 1, 'en', '_json', 'image_right', 'Image Right', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2375, 1, 'en', '_json', 'image_center', 'Image center', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2376, 1, 'en', '_json', 'right_sidebar', 'Right Sidebar', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2377, 1, 'en', '_json', 'rss_feeds', 'RSS Feeds', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2378, 1, 'en', '_json', 'feed_name', 'Feed Name', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2379, 1, 'en', '_json', 'feed_url', 'Feed URL', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2380, 1, 'en', '_json', 'auto_update', 'Auto update', '2021-05-29 14:15:19', '2021-05-29 14:15:19'),
(2381, 1, 'en', '_json', 'add_rss_source', 'Add RSS source', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2382, 1, 'en', '_json', 'feed_details', 'Feed details', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2383, 1, 'en', '_json', 'valid_feed_url', 'Valid feed URL', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2384, 1, 'en', '_json', 'number_of_post_to_import', 'Number of posts to import', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2385, 1, 'en', '_json', 'show_read_more', 'Show read more', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2386, 1, 'en', '_json', 'keep_post_original_publish_date', 'Keep post original publish date', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2387, 1, 'en', '_json', 'add_feed', 'Add feed', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2388, 1, 'en', '_json', 'update_rss_source', 'Update RSS source', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2389, 1, 'en', '_json', 'update_rss', 'Update RSS', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2390, 1, 'en', '_json', 'rss_auto_update_post_import', 'RSS auto update post import', '2021-05-29 14:15:20', '2021-05-29 14:15:20'),
(2391, 1, 'en', '_json', 'sorry_invalid_rss_feed_url:', 'Sorry invalid rss feed URL', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2392, 1, 'en', '_json', 'read_actual_content', 'Read actual content', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2393, 1, 'en', '_json', 'cover_image', 'Cover Image', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2394, 1, 'en', '_json', 'your_version', 'Your version', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2395, 1, 'en', '_json', 'go_to_upgrade', 'Go to database sync', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2396, 1, 'en', '_json', 'database_sync', 'Database Sync', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2397, 1, 'en', '_json', 'already_up_to_date', 'Already Up To Date', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2398, 0, 'np', '_json', 'login', '', '2021-05-29 14:15:21', '2021-05-29 14:16:25'),
(2399, 1, 'np', '_json', 'registration', '', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2400, 1, 'np', '_json', 'back_to', ' ', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2401, 1, 'np', '_json', 'back_to_home', '', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2402, 1, 'np', '_json', 'please_enter_your_user_information', '', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2403, 1, 'np', '_json', 'remember_me', ' ', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2404, 1, 'np', '_json', 'create_an_account', ' ', '2021-05-29 14:15:21', '2021-05-29 14:15:21'),
(2405, 1, 'np', '_json', 'forgot_password', ' ', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2406, 1, 'np', '_json', 'app_name', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2407, 1, 'np', '_json', 'app_full_name', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2408, 1, 'np', '_json', 'about', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2409, 1, 'np', '_json', 'support', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2410, 1, 'np', '_json', 'contact_us', ' ', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2411, 1, 'np', '_json', 'notification', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2412, 1, 'np', '_json', 'view_all_notifications', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2413, 1, 'np', '_json', 'available', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2414, 1, 'np', '_json', 'account', '', '2021-05-29 14:15:22', '2021-05-29 14:15:22'),
(2415, 1, 'np', '_json', 'setting', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2416, 1, 'np', '_json', 'logout', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2417, 1, 'np', '_json', 'dashboard', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2418, 1, 'np', '_json', 'menu', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2419, 1, 'np', '_json', 'home', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2420, 1, 'np', '_json', 'add_user', ' ', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2421, 1, 'np', '_json', 'users', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2422, 1, 'np', '_json', 'roles_&_permissions', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2423, 1, 'np', '_json', 'roles', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2424, 1, 'np', '_json', 'modulus', '', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2425, 1, 'np', '_json', 'permission_management', ' ', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2426, 1, 'np', '_json', 'language_settings', ' ', '2021-05-29 14:15:23', '2021-05-29 14:15:23'),
(2427, 1, 'np', '_json', 'add_role', ' ', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2428, 1, 'np', '_json', 'name', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2429, 1, 'np', '_json', 'slug', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2430, 1, 'np', '_json', 'permissions', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2431, 1, 'np', '_json', 'module', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2432, 1, 'np', '_json', 'read', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2433, 1, 'np', '_json', 'write', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2434, 1, 'np', '_json', 'delete', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2435, 1, 'np', '_json', 'first_name', ' ', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2436, 1, 'np', '_json', 'last_name', ' ', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2437, 1, 'np', '_json', 'email', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2438, 1, 'np', '_json', 'role', '', '2021-05-29 14:15:24', '2021-05-29 14:15:24'),
(2439, 1, 'np', '_json', 'password', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2440, 1, 'np', '_json', 'password_confirmation', ' ', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2441, 1, 'np', '_json', 'image', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2442, 1, 'np', '_json', 'administrators', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2443, 1, 'np', '_json', 'last_login', ' ', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2444, 1, 'np', '_json', 'options', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2445, 1, 'np', '_json', 'showing', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2446, 1, 'np', '_json', 'to', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2447, 1, 'np', '_json', 'of', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2448, 1, 'np', '_json', 'entries', '', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2449, 1, 'np', '_json', 'update_role_and_permission', '   ', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2450, 1, 'np', '_json', 'role_name', ' ', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2451, 1, 'np', '_json', 'save_changes', ' ', '2021-05-29 14:15:25', '2021-05-29 14:15:25'),
(2452, 1, 'np', '_json', 'add_permission', ' ', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2453, 1, 'np', '_json', 'description', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2454, 1, 'np', '_json', 'created', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2455, 1, 'np', '_json', 'edit', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2456, 1, 'np', '_json', 'profile', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2457, 1, 'np', '_json', 'change_password', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2458, 1, 'np', '_json', 'edit_profile', ' ', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2459, 1, 'np', '_json', 'avatar', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2460, 1, 'np', '_json', 'status', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2461, 1, 'np', '_json', 'join_date', ' ', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2462, 1, 'np', '_json', 'confirmed', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2463, 1, 'np', '_json', 'unconfirmed', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2464, 1, 'np', '_json', 'inactive', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2465, 1, 'np', '_json', 'active', '', '2021-05-29 14:15:26', '2021-05-29 14:15:26'),
(2466, 1, 'np', '_json', 'banned', '', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2467, 1, 'np', '_json', 'change_role', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2468, 1, 'np', '_json', 'ban_user', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2469, 1, 'np', '_json', 'unban_user', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2470, 1, 'np', '_json', 'close', '', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2471, 1, 'np', '_json', 'save', '', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2472, 1, 'np', '_json', 'old_password', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2473, 1, 'np', '_json', 'new_password', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2474, 1, 'np', '_json', 'confirm_password', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2475, 1, 'np', '_json', 'update', '', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2476, 1, 'np', '_json', 'default_language', ' ', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2477, 1, 'np', '_json', 'language', '', '2021-05-29 14:15:27', '2021-05-29 14:15:27'),
(2478, 1, 'np', '_json', 'add_language', ' ', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2479, 1, 'np', '_json', 'language_name', ' ', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2480, 1, 'np', '_json', 'short_form', ' ', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2481, 1, 'np', '_json', 'script', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2482, 1, 'np', '_json', 'native', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2483, 1, 'np', '_json', 'regional', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2484, 1, 'np', '_json', 'text_direction', ' ', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2485, 1, 'np', '_json', 'ltr', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2486, 1, 'np', '_json', 'rtl', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2487, 1, 'np', '_json', 'languages', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2488, 1, 'np', '_json', 'code', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2489, 1, 'np', '_json', 'edit_phrase', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2490, 1, 'np', '_json', 'translated_text', '', '2021-05-29 14:15:28', '2021-05-29 14:15:28'),
(2491, 1, 'np', '_json', 'add', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2492, 1, 'np', '_json', 'phrase', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2493, 1, 'np', '_json', 'translated_language', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2494, 1, 'np', '_json', 'update_language', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2495, 1, 'np', '_json', 'select_option', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2496, 1, 'np', '_json', 'update_languages', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2497, 1, 'np', '_json', 'gallery', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2498, 1, 'np', '_json', 'add_image', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2499, 1, 'np', '_json', 'general_settings', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2500, 1, 'np', '_json', 'contact_settings', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2501, 1, 'np', '_json', 'save_change', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2502, 1, 'np', '_json', 'modules', '', '2021-05-29 14:15:29', '2021-05-29 14:15:29'),
(2503, 1, 'np', '_json', 'plain_text', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2504, 1, 'np', '_json', 'flag', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2505, 1, 'np', '_json', 'social_media_settings', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2506, 1, 'np', '_json', 'email_settings', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2507, 1, 'np', '_json', 'timezone', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2508, 1, 'np', '_json', 'application_name', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2509, 1, 'np', '_json', 'copyright', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2510, 1, 'np', '_json', 'copyright_text', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2511, 1, 'np', '_json', 'address', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2512, 1, 'np', '_json', 'phone', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2513, 1, 'np', '_json', 'facebook_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2514, 1, 'np', '_json', 'twitter_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2515, 1, 'np', '_json', 'google_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2516, 1, 'np', '_json', 'instagram_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2517, 1, 'np', '_json', 'pinterest_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2518, 1, 'np', '_json', 'linkedin_url', '', '2021-05-29 14:15:30', '2021-05-29 14:15:30'),
(2519, 1, 'np', '_json', 'youtube_url', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2520, 1, 'np', '_json', 'settings', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2521, 1, 'np', '_json', 'mail_driver', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2522, 1, 'np', '_json', 'mail_host', ' ', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2523, 1, 'np', '_json', 'mail_port', ' ', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2524, 1, 'np', '_json', 'mail_address', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2525, 1, 'np', '_json', 'mail_username', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2526, 1, 'np', '_json', 'mail_password', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2527, 1, 'np', '_json', 'path', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2528, 1, 'np', '_json', 'add_logo', '', '2021-05-29 14:15:31', '2021-05-29 14:15:31'),
(2529, 1, 'np', '_json', 'add_favicon', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2530, 1, 'np', '_json', 'zip_code', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2531, 1, 'np', '_json', 'city', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2532, 1, 'np', '_json', 'state', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2533, 1, 'np', '_json', 'country', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2534, 1, 'np', '_json', 'website', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2535, 1, 'np', '_json', 'company_registration', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2536, 1, 'np', '_json', 'tax_number', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2537, 1, 'np', '_json', 'email_template', '', '2021-05-29 14:15:32', '2021-05-29 14:15:32'),
(2538, 1, 'np', '_json', 'templates', '', '2021-05-29 14:15:33', '2021-05-29 14:15:33'),
(2539, 1, 'np', '_json', 'email_group', '', '2021-05-29 14:15:33', '2021-05-29 14:15:33'),
(2540, 1, 'np', '_json', 'subject', '', '2021-05-29 14:15:33', '2021-05-29 14:15:33'),
(2541, 1, 'np', '_json', 'template_body', '', '2021-05-29 14:15:33', '2021-05-29 14:15:33'),
(2542, 1, 'np', '_json', 'update_template', '', '2021-05-29 14:15:33', '2021-05-29 14:15:33'),
(2543, 1, 'np', '_json', 'send_code', '', '2021-05-29 14:15:34', '2021-05-29 14:15:34'),
(2544, 1, 'np', '_json', 'reset_password', '', '2021-05-29 14:15:34', '2021-05-29 14:15:34'),
(2545, 1, 'np', '_json', 'default_language_changed', ' ', '2021-05-29 14:15:34', '2021-05-29 14:15:34'),
(2546, 1, 'np', '_json', 'new_language_added', '', '2021-05-29 14:15:34', '2021-05-29 14:15:34'),
(2547, 1, 'np', '_json', 'successfully_updated', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2548, 1, 'np', '_json', 'successfully_added', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2549, 1, 'np', '_json', 'reset_code_is_send_to_mail', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2550, 1, 'np', '_json', 'you_can_login_with_new_password', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2551, 1, 'np', '_json', 'email_password_mismatch', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2552, 1, 'np', '_json', 'you_are_banned', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2553, 1, 'np', '_json', 'your_account_is_not_activated', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2554, 1, 'np', '_json', 'your_account_activation_successfully', '', '2021-05-29 14:15:35', '2021-05-29 14:15:35'),
(2555, 1, 'np', '_json', 'check_your_mail_for_active', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2556, 1, 'np', '_json', 'new_role_successfully_created', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2557, 1, 'np', '_json', 'successfully_update_role', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2558, 1, 'np', '_json', 'ban_this_user', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2559, 1, 'np', '_json', 'unban_this_user', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2560, 1, 'np', '_json', 'permission_successfully_updated', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2561, 1, 'np', '_json', 'check_user_mail_for_active_this_account', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2562, 1, 'np', '_json', 'the_email_has_already_been_taken', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2563, 1, 'np', '_json', 'please_check_again', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2564, 1, 'np', '_json', 'successfully_deleted', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2565, 1, 'np', '_json', 'not_found', '', '2021-05-29 14:15:36', '2021-05-29 14:15:36'),
(2566, 1, 'np', '_json', 'you_can_not_delete_this', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2567, 1, 'np', '_json', 'group', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2568, 1, 'np', '_json', 'default_messages', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2569, 1, 'np', '_json', 'are_you_sure?', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2570, 1, 'np', '_json', 'it_will_be_deleted_permanently', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2571, 1, 'np', '_json', 'cancel', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2572, 1, 'np', '_json', 'deleted', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2573, 1, 'np', '_json', 'something_went_wrong_with_ajax', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2574, 1, 'np', '_json', 'add_page', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2575, 1, 'np', '_json', 'pages', '', '2021-05-29 14:15:37', '2021-05-29 14:15:37'),
(2576, 1, 'np', '_json', 'title', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2577, 1, 'np', '_json', 'template', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2578, 1, 'np', '_json', 'visibility', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2579, 1, 'np', '_json', 'show', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2580, 1, 'np', '_json', 'hide', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2581, 1, 'np', '_json', 'show_only_to_registered_users', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2582, 1, 'np', '_json', 'successfully_update_menu_arrangement', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2583, 1, 'np', '_json', 'yes', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2584, 1, 'np', '_json', 'no', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2585, 1, 'np', '_json', 'show_title', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2586, 1, 'np', '_json', 'show_breadcrumb', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2587, 1, 'np', '_json', 'show_right_column', '', '2021-05-29 14:15:38', '2021-05-29 14:15:38'),
(2588, 1, 'np', '_json', 'show_on_menu', '  ', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2589, 1, 'np', '_json', 'top_menu', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2590, 1, 'np', '_json', 'main_menu', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2591, 1, 'np', '_json', 'footer', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2592, 1, 'np', '_json', 'do_not_add_to_menu', '    ', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2593, 1, 'np', '_json', 'meta_tag', ' ', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2594, 1, 'np', '_json', 'keywords', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2595, 1, 'np', '_json', 'location', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2596, 1, 'np', '_json', 'date_added', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2597, 1, 'np', '_json', 'update_page', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2598, 1, 'np', '_json', 'menu_order', '', '2021-05-29 14:15:39', '2021-05-29 14:15:39'),
(2599, 1, 'np', '_json', 'back_to_pages', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2600, 1, 'np', '_json', 'feature_image', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2601, 1, 'np', '_json', 'page_layout', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2602, 1, 'np', '_json', 'remark', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2603, 1, 'np', '_json', 'add_menu', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2604, 1, 'np', '_json', 'edit_menu', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2605, 1, 'np', '_json', 'add_menu_item', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2606, 1, 'np', '_json', 'label', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2607, 1, 'np', '_json', 'order', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2608, 1, 'np', '_json', 'parent', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2609, 1, 'np', '_json', 'custom', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2610, 1, 'np', '_json', 'page', '', '2021-05-29 14:15:40', '2021-05-29 14:15:40'),
(2611, 1, 'np', '_json', 'post', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2612, 1, 'np', '_json', 'source', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2613, 1, 'np', '_json', 'url', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2614, 1, 'np', '_json', 'mail_encryption', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2615, 1, 'np', '_json', 'seo', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2616, 1, 'np', '_json', 'post_id', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2617, 1, 'np', '_json', 'page_id', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2618, 1, 'np', '_json', 'menu_item', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2619, 1, 'np', '_json', 'update_menu_item', '', '2021-05-29 14:15:41', '2021-05-29 14:15:41'),
(2620, 1, 'np', '_json', 'back_to_menu_item', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2621, 1, 'np', '_json', 'menu_location', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2622, 1, 'np', '_json', 'create_new_menu', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2623, 1, 'np', '_json', 'create', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2624, 1, 'np', '_json', 'choice_page', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2625, 1, 'np', '_json', 'posts', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2626, 1, 'np', '_json', 'appearance', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2627, 1, 'np', '_json', 'drag_drop_menu_item_for_rearrange', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2628, 1, 'np', '_json', 'theme', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2629, 1, 'np', '_json', 'delete_menu_item', '', '2021-05-29 14:15:42', '2021-05-29 14:15:42'),
(2630, 1, 'np', '_json', 'select_menu', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2631, 1, 'np', '_json', 'delete_this_menu', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2632, 1, 'np', '_json', 'open_in_new_teb', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2633, 1, 'np', '_json', 'category_name', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2634, 1, 'np', '_json', 'select_language', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2635, 1, 'np', '_json', 'show_on_homepage', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2636, 1, 'np', '_json', 'category_block_style', '', '2021-05-29 14:15:43', '2021-05-29 14:15:43'),
(2637, 1, 'np', '_json', 'add_category', '', '2021-05-29 14:15:44', '2021-05-29 14:15:44'),
(2638, 1, 'np', '_json', 'update_category', '', '2021-05-29 14:15:44', '2021-05-29 14:15:44'),
(2639, 1, 'np', '_json', 'add_sub_category', '', '2021-05-29 14:15:44', '2021-05-29 14:15:44'),
(2640, 1, 'np', '_json', 'parent_category', '', '2021-05-29 14:15:44', '2021-05-29 14:15:44'),
(2641, 1, 'np', '_json', 'sub_category_name', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2642, 1, 'np', '_json', 'update_sub_category', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2643, 1, 'np', '_json', 'sub_categories', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2644, 1, 'np', '_json', 'categories', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2645, 1, 'np', '_json', 'select_category', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2646, 1, 'np', '_json', 'select_sub_category', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2647, 1, 'np', '_json', 'add_post', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2648, 1, 'np', '_json', 'posts_details', '', '2021-05-29 14:15:45', '2021-05-29 14:15:45'),
(2649, 1, 'np', '_json', 'content', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2650, 1, 'np', '_json', 'add_to_featured', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2651, 1, 'np', '_json', 'add_to_breaking', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2652, 1, 'np', '_json', 'add_to_slider', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2653, 1, 'np', '_json', 'add_to_recommended', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2654, 1, 'np', '_json', 'add_to_editor_picks', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2655, 1, 'np', '_json', 'editor_picks', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2656, 1, 'np', '_json', 'show_only_to_authenticate_users', '', '2021-05-29 14:15:46', '2021-05-29 14:15:46'),
(2657, 1, 'np', '_json', 'seo_details', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2658, 1, 'np', '_json', 'tags', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2659, 1, 'np', '_json', 'sub_category', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2660, 1, 'np', '_json', 'send_post_to_newsletter', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2661, 1, 'np', '_json', 'send_notification_subscribers', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2662, 1, 'np', '_json', 'publish', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2663, 1, 'np', '_json', 'published', '', '2021-05-29 14:15:47', '2021-05-29 14:15:47'),
(2664, 1, 'np', '_json', 'create_post', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2665, 1, 'np', '_json', 'category', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2666, 1, 'np', '_json', 'draft', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2667, 1, 'np', '_json', 'scheduled', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2668, 1, 'np', '_json', 'schedule_date', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2669, 1, 'np', '_json', 'post_type', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2670, 1, 'np', '_json', 'post_by', '', '2021-05-29 14:15:48', '2021-05-29 14:15:48'),
(2671, 1, 'np', '_json', 'hit', '', '2021-05-29 14:15:49', '2021-05-29 14:15:49'),
(2672, 1, 'np', '_json', 'added_date', '', '2021-05-29 14:15:49', '2021-05-29 14:15:49'),
(2673, 1, 'np', '_json', 'breaking', '', '2021-05-29 14:15:49', '2021-05-29 14:15:49'),
(2674, 1, 'np', '_json', 'featured', '', '2021-05-29 14:15:50', '2021-05-29 14:15:50'),
(2675, 1, 'np', '_json', 'recommended', '', '2021-05-29 14:15:50', '2021-05-29 14:15:50'),
(2676, 1, 'np', '_json', 'slider', '', '2021-05-29 14:15:50', '2021-05-29 14:15:50'),
(2677, 1, 'np', '_json', 'view', '', '2021-05-29 14:15:50', '2021-05-29 14:15:50'),
(2678, 1, 'np', '_json', 'breaking_posts', '', '2021-05-29 14:15:51', '2021-05-29 14:15:51'),
(2679, 1, 'np', '_json', 'featured_posts', '', '2021-05-29 14:15:51', '2021-05-29 14:15:51'),
(2680, 1, 'np', '_json', 'pending_posts', '', '2021-05-29 14:15:51', '2021-05-29 14:15:51'),
(2681, 1, 'np', '_json', 'recommended_posts', '', '2021-05-29 14:15:51', '2021-05-29 14:15:51'),
(2682, 1, 'np', '_json', 'slider_posts', '', '2021-05-29 14:15:52', '2021-05-29 14:15:52'),
(2683, 1, 'np', '_json', 'unpublished', '', '2021-05-29 14:15:52', '2021-05-29 14:15:52'),
(2684, 1, 'np', '_json', 'update_order', '', '2021-05-29 14:15:53', '2021-05-29 14:15:53'),
(2685, 1, 'np', '_json', 'remove', '', '2021-05-29 14:15:53', '2021-05-29 14:15:53'),
(2686, 1, 'np', '_json', 'create_article', '', '2021-05-29 14:15:53', '2021-05-29 14:15:53'),
(2687, 1, 'np', '_json', 'default_storage', '', '2021-05-29 14:15:53', '2021-05-29 14:15:53'),
(2688, 1, 'np', '_json', 'aws_access_key_id', '', '2021-05-29 14:15:53', '2021-05-29 14:15:53'),
(2689, 1, 'np', '_json', 'aws_secret_access_key', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2690, 1, 'np', '_json', 'aws_default_region', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2691, 1, 'np', '_json', 'aws_bucket', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2692, 1, 'np', '_json', 'upload_video', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2693, 1, 'np', '_json', 'remove_video', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2694, 1, 'np', '_json', 'add_video', '', '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(2695, 1, 'np', '_json', 'image_gallery', '', '2021-05-29 14:15:55', '2021-05-29 14:15:55'),
(2696, 1, 'np', '_json', 'upload', '', '2021-05-29 14:15:55', '2021-05-29 14:15:55'),
(2697, 1, 'np', '_json', 'select_image', '', '2021-05-29 14:15:55', '2021-05-29 14:15:55'),
(2698, 1, 'np', '_json', 'storage_settings', '', '2021-05-29 14:15:55', '2021-05-29 14:15:55'),
(2699, 1, 'np', '_json', 'it_will_be_remove_form_this_feature', '', '2021-05-29 14:15:56', '2021-05-29 14:15:56'),
(2700, 1, 'np', '_json', 'it_will_be_added_to_this_feature', '', '2021-05-29 14:15:56', '2021-05-29 14:15:56'),
(2701, 1, 'np', '_json', 'added', '', '2021-05-29 14:15:56', '2021-05-29 14:15:56'),
(2702, 1, 'np', '_json', 'removed', '', '2021-05-29 14:15:56', '2021-05-29 14:15:56'),
(2703, 1, 'np', '_json', 'create_video_post', '', '2021-05-29 14:15:56', '2021-05-29 14:15:56'),
(2704, 1, 'np', '_json', 'update_post', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2705, 1, 'np', '_json', 'no_more_records', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2706, 1, 'np', '_json', 'load_more', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2707, 1, 'np', '_json', 'select_video', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2708, 1, 'np', '_json', 'video_gallery', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2709, 1, 'np', '_json', 'post_thumbnail', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2710, 1, 'np', '_json', 'video_url_type', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2711, 1, 'np', '_json', 'video_url', '', '2021-05-29 14:15:57', '2021-05-29 14:15:57'),
(2712, 1, 'np', '_json', 'add_video_thumbnail', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2713, 1, 'np', '_json', 'ads', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2714, 1, 'np', '_json', 'ad_location', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2715, 1, 'np', '_json', 'create_ad', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2716, 1, 'np', '_json', 'ad_name', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2717, 1, 'np', '_json', 'ad_size', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2718, 1, 'np', '_json', 'ad_type', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2719, 1, 'np', '_json', 'ad_url', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2720, 1, 'np', '_json', 'ad_image', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2721, 1, 'np', '_json', 'ad_code', '', '2021-05-29 14:15:58', '2021-05-29 14:15:58'),
(2722, 1, 'np', '_json', 'ads_details', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2723, 1, 'np', '_json', 'back_to_ads', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2724, 1, 'np', '_json', 'enable', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2725, 1, 'np', '_json', 'disable', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2726, 1, 'np', '_json', 'update_ad_image', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2727, 1, 'np', '_json', 'edit_ad', '', '2021-05-29 14:15:59', '2021-05-29 14:15:59'),
(2728, 1, 'np', '_json', 'update_ad', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2729, 1, 'np', '_json', 'ads_location', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2730, 1, 'np', '_json', 'unique_name', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2731, 1, 'np', '_json', 'ad_text', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2732, 1, 'np', '_json', 'text', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2733, 1, 'np', '_json', 'send_notification', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2734, 1, 'np', '_json', 'notification_setting_details', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2735, 1, 'np', '_json', 'notification_setting', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2736, 1, 'np', '_json', 'onesignal_api_key', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2737, 1, 'np', '_json', 'onesignal_app_id', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2738, 1, 'np', '_json', 'onesignal_action_message', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2739, 1, 'np', '_json', 'onesignal_accept_button', '', '2021-05-29 14:16:00', '2021-05-29 14:16:00'),
(2740, 1, 'np', '_json', 'onesignal_cancel_button', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2741, 1, 'np', '_json', 'icon_url', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2742, 1, 'np', '_json', 'image_url', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2743, 1, 'np', '_json', 'message', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2744, 1, 'np', '_json', 'headings', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2745, 1, 'np', '_json', 'send_custom_notification', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2746, 1, 'np', '_json', 'successfully_send', '', '2021-05-29 14:16:01', '2021-05-29 14:16:01'),
(2747, 1, 'np', '_json', 'send_email_to_subscribers', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2748, 1, 'np', '_json', 'Newsletter', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2749, 1, 'np', '_json', 'subscribers', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2750, 1, 'np', '_json', 'send_email', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2751, 1, 'np', '_json', 'add_poll', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2752, 1, 'np', '_json', 'back_to_polls', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2753, 1, 'np', '_json', 'question', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2754, 1, 'np', '_json', 'option_1', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2755, 1, 'np', '_json', 'option_2', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2756, 1, 'np', '_json', 'option_3', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2757, 1, 'np', '_json', 'option_4', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2758, 1, 'np', '_json', 'option_5', '', '2021-05-29 14:16:02', '2021-05-29 14:16:02'),
(2759, 1, 'np', '_json', 'option_6', '', '2021-05-29 14:16:03', '2021-05-29 14:16:03'),
(2760, 1, 'np', '_json', 'option_7', '', '2021-05-29 14:16:03', '2021-05-29 14:16:03'),
(2761, 1, 'np', '_json', 'option_8', '', '2021-05-29 14:16:03', '2021-05-29 14:16:03'),
(2762, 1, 'np', '_json', 'option_9', '', '2021-05-29 14:16:03', '2021-05-29 14:16:03'),
(2763, 1, 'np', '_json', 'option_10', '', '2021-05-29 14:16:04', '2021-05-29 14:16:04'),
(2764, 1, 'np', '_json', 'auth_required', '', '2021-05-29 14:16:04', '2021-05-29 14:16:04'),
(2765, 1, 'np', '_json', 'update_poll', '', '2021-05-29 14:16:04', '2021-05-29 14:16:04'),
(2766, 1, 'np', '_json', 'create_poll', '', '2021-05-29 14:16:04', '2021-05-29 14:16:04'),
(2767, 1, 'np', '_json', 'polls', '', '2021-05-29 14:16:05', '2021-05-29 14:16:05'),
(2768, 1, 'np', '_json', 'poll', '', '2021-05-29 14:16:05', '2021-05-29 14:16:05'),
(2769, 1, 'np', '_json', 'vote', '', '2021-05-29 14:16:05', '2021-05-29 14:16:05'),
(2770, 1, 'np', '_json', 'result', '', '2021-05-29 14:16:06', '2021-05-29 14:16:06'),
(2771, 1, 'np', '_json', 'total_vote', '', '2021-05-29 14:16:06', '2021-05-29 14:16:06'),
(2772, 1, 'np', '_json', 'widgets', '', '2021-05-29 14:16:06', '2021-05-29 14:16:06'),
(2773, 1, 'np', '_json', 'short_code', '', '2021-05-29 14:16:06', '2021-05-29 14:16:06'),
(2774, 1, 'np', '_json', 'add_widget', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2775, 1, 'np', '_json', 'update_widget', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2776, 1, 'np', '_json', 'back_to_widgets', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2777, 1, 'np', '_json', 'default', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2778, 1, 'np', '_json', 'type', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2779, 1, 'np', '_json', 'send_date', '', '2021-05-29 14:16:07', '2021-05-29 14:16:07'),
(2780, 1, 'np', '_json', 'contact_messages', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2781, 1, 'np', '_json', 'comment', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2782, 1, 'np', '_json', 'comments', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2783, 1, 'np', '_json', 'comment_at', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2784, 1, 'np', '_json', 'unseen', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2785, 1, 'np', '_json', 'seen', '', '2021-05-29 14:16:08', '2021-05-29 14:16:08'),
(2786, 1, 'np', '_json', 'replay', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2787, 1, 'np', '_json', 'all', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2788, 1, 'np', '_json', 'filter', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2789, 1, 'np', '_json', 'seo_settings', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2790, 1, 'np', '_json', 'seo_title', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2791, 1, 'np', '_json', 'seo_keywords', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2792, 1, 'np', '_json', 'seo_meta_description', '', '2021-05-29 14:16:09', '2021-05-29 14:16:09'),
(2793, 1, 'np', '_json', 'author_name', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2794, 1, 'np', '_json', 'google_analytics_id', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2795, 1, 'np', '_json', 'select_current_theme', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2796, 1, 'np', '_json', 'og_title', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2797, 1, 'np', '_json', 'og_description', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2798, 1, 'np', '_json', 'og_image', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2799, 1, 'np', '_json', 'add_section', '', '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(2800, 1, 'np', '_json', 'section_label', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2801, 1, 'np', '_json', 'post_amount', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2802, 1, 'np', '_json', 'section_style', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2803, 1, 'np', '_json', 'sections', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2804, 1, 'np', '_json', 'primary_section', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2805, 1, 'np', '_json', 'update_section', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2806, 1, 'np', '_json', 'update_theme', '', '2021-05-29 14:16:11', '2021-05-29 14:16:11'),
(2807, 1, 'np', '_json', 'header', '', '2021-05-29 14:16:12', '2021-05-29 14:16:12'),
(2808, 1, 'np', '_json', 'themes_options', '', '2021-05-29 14:16:12', '2021-05-29 14:16:12'),
(2809, 1, 'np', '_json', 'page_content', '', '2021-05-29 14:16:12', '2021-05-29 14:16:12'),
(2810, 1, 'np', '_json', 'socials', 'Socials', '2021-05-29 14:16:12', '2021-05-29 14:16:12'),
(2811, 1, 'np', '_json', 'create_social', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2812, 1, 'np', '_json', 'back_to_socials', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2813, 1, 'np', '_json', 'social_details', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2814, 1, 'np', '_json', 'bg_color', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2815, 1, 'np', '_json', 'click_me_to_visit_site', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2816, 1, 'np', '_json', 'use_class_of_font_awesome_icon', '', '2021-05-29 14:16:13', '2021-05-29 14:16:13'),
(2817, 1, 'np', '_json', 'icon', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2818, 1, 'np', '_json', 'about_site', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2819, 1, 'np', '_json', 'icon_bg_color', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2820, 1, 'np', '_json', 'text_bg_color', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2821, 1, 'np', '_json', 'start_date', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2822, 1, 'np', '_json', 'end_date', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2823, 1, 'np', '_json', 'right_sidebar', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2824, 1, 'np', '_json', 'content_type', '', '2021-05-29 14:16:14', '2021-05-29 14:16:14'),
(2825, 1, 'np', '_json', 'select_language_for_below_fields', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2826, 1, 'np', '_json', 'dont_have_an_account', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2827, 1, 'np', '_json', 'sign_up', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2828, 1, 'np', '_json', 'already_have_an_account', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2829, 1, 'np', '_json', 'submit_now', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2830, 1, 'np', '_json', 'follow_us', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2831, 1, 'np', '_json', 'reply_from', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2832, 1, 'np', '_json', 'breaking_news', '', '2021-05-29 14:16:15', '2021-05-29 14:16:15'),
(2833, 1, 'np', '_json', 'reply', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2834, 1, 'np', '_json', 'subscribe_description', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2835, 1, 'np', '_json', 'subscribe', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2836, 1, 'np', '_json', 'stay_connected', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2837, 1, 'np', '_json', 'newsletter', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2838, 1, 'np', '_json', 'newsletter_description', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2839, 1, 'np', '_json', 'weather', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2840, 1, 'np', '_json', 'about_us', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2841, 1, 'np', '_json', 'you_have_to_select_one_option', '', '2021-05-29 14:16:16', '2021-05-29 14:16:16'),
(2842, 1, 'np', '_json', 'you_have_to_login_for_voting', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2843, 1, 'np', '_json', 'vote_has_been_submitted_successfully', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2844, 1, 'np', '_json', 'vote_has_been_submitted_unsuccessfully', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2845, 1, 'np', '_json', 'thank_you', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2846, 1, 'np', '_json', 'oops', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2847, 1, 'np', '_json', 'page_type', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2848, 1, 'np', '_json', 'page_template_type', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2849, 1, 'np', '_json', 'without_sidebar', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2850, 1, 'np', '_json', 'with_right_sidebar', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2851, 1, 'np', '_json', 'with_left_sidebar', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2852, 1, 'np', '_json', 'send_a_message', '', '2021-05-29 14:16:17', '2021-05-29 14:16:17'),
(2853, 1, 'np', '_json', 'recaptcha_settings', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2854, 1, 'np', '_json', 'captcha_secret', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2855, 1, 'np', '_json', 'captcha_sitekey', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2856, 1, 'np', '_json', 'captcha', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2857, 1, 'np', '_json', 'test_mail_subject', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2858, 1, 'np', '_json', 'test_mail_success_message', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2859, 1, 'np', '_json', 'test_mail_error_message', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2860, 1, 'np', '_json', 'test_mail_message', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2861, 1, 'np', '_json', 'successfully_registration_need_to_mail_verification', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2862, 1, 'np', '_json', 'available_merge_fields', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2863, 1, 'np', '_json', 'site_logo', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2864, 1, 'np', '_json', 'username', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2865, 1, 'np', '_json', 'site_name', '', '2021-05-29 14:16:18', '2021-05-29 14:16:18'),
(2866, 1, 'np', '_json', 'site_url', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2867, 1, 'np', '_json', 'user_email', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2868, 1, 'np', '_json', 'activate_url', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2869, 1, 'np', '_json', 'post_title', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2870, 1, 'np', '_json', 'read_more', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2871, 1, 'np', '_json', 'our_blog', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2872, 1, 'np', '_json', 'popular_post', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2873, 1, 'np', '_json', 'latest_post', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2874, 1, 'np', '_json', 'recommended_post', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2875, 1, 'np', '_json', 'posted_on', '', '2021-05-29 14:16:19', '2021-05-29 14:16:19'),
(2876, 1, 'np', '_json', 'no_content_available', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2877, 1, 'np', '_json', 'successfully_unsubscribed', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2878, 1, 'np', '_json', 'unsuccessfully_unsubscribed', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2879, 1, 'np', '_json', 'show_ad_in_bottom', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2880, 1, 'np', '_json', 'must_select', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2881, 1, 'np', '_json', 'default_mode', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2882, 1, 'np', '_json', 'dark_mode', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2883, 1, 'np', '_json', 'today', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2884, 1, 'np', '_json', 'comment_settings', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2885, 1, 'np', '_json', 'all_comments', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2886, 1, 'np', '_json', 'unpublish', '', '2021-05-29 14:16:20', '2021-05-29 14:16:20'),
(2887, 1, 'np', '_json', 'submitted_posts', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2888, 1, 'np', '_json', 'in_build', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2889, 1, 'np', '_json', 'disqus_comment', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2890, 1, 'np', '_json', 'disqus_short', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2891, 1, 'np', '_json', 'facebook_comment', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2892, 1, 'np', '_json', 'facebook_app_id', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2893, 1, 'np', '_json', 'signature', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2894, 1, 'np', '_json', 'search', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2895, 1, 'np', '_json', 'input_user', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2896, 1, 'np', '_json', 'input_email', '', '2021-05-29 14:16:21', '2021-05-29 14:16:21'),
(2897, 1, 'np', '_json', 'input_message', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2898, 1, 'np', '_json', 'submit_news', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2899, 1, 'np', '_json', 'post_image', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2900, 1, 'np', '_json', 'email_address', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2901, 1, 'np', '_json', 'view_results', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2902, 1, 'np', '_json', 'custom_header_footer', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2903, 1, 'np', '_json', 'predefined_header', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2904, 1, 'np', '_json', 'custom_js', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2905, 1, 'np', '_json', 'custom_css', '', '2021-05-29 14:16:22', '2021-05-29 14:16:22'),
(2906, 1, 'np', '_json', 'addthis_public_id', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2907, 1, 'np', '_json', 'adthis_option', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2908, 1, 'np', '_json', 'article_detail_prefix', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2909, 1, 'np', '_json', 'page_detail_prefix', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2910, 1, 'np', '_json', 'url_settings', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2911, 1, 'np', '_json', 'cron_information', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2912, 1, 'np', '_json', 'update_cron_information', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2913, 1, 'np', '_json', 'related_post', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2914, 1, 'np', '_json', 'cron_job_completed_successfully', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2915, 1, 'np', '_json', 'cron_job_completed_unsuccessfully', '', '2021-05-29 14:16:23', '2021-05-29 14:16:23'),
(2916, 1, 'np', '_json', 'total_visits', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2917, 1, 'np', '_json', 'total_visitors', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2918, 1, 'np', '_json', 'total_unique_visits', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2919, 1, 'np', '_json', 'total_unique_visitors', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2920, 1, 'np', '_json', 'visit_vs_visitor', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2921, 1, 'np', '_json', 'submitted_post', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2922, 1, 'np', '_json', 'post_published', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2923, 1, 'np', '_json', 'total_register_users', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2924, 1, 'np', '_json', 'browser_usages', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2925, 1, 'np', '_json', 'current_month_visitors', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2926, 1, 'np', '_json', 'current_month_visits', '', '2021-05-29 14:16:24', '2021-05-29 14:16:24'),
(2927, 1, 'np', '_json', 'top_hits_post', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2928, 1, 'np', '_json', 'available_tags', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2929, 1, 'np', '_json', 'add_tag', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2930, 1, 'np', '_json', 'videos', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2931, 1, 'np', '_json', 'page_not_found', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2932, 1, 'np', '_json', '404_message', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2933, 1, 'np', '_json', '1', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2934, 1, 'np', '_json', '403_message', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2935, 1, 'np', '_json', 'generate_sitemap', '', '2021-05-29 14:16:25', '2021-05-29 14:16:25'),
(2936, 1, 'np', '_json', 'successfully_generated', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2937, 1, 'np', '_json', 'go_to_sitemap', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2938, 1, 'np', '_json', '2', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2939, 1, 'np', '_json', 'server_error', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2940, 1, 'np', '_json', '500_message', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2941, 1, 'np', '_json', 'cron ', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2942, 1, 'np', '_json', 'cPanel_cron_command', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2943, 1, 'np', '_json', 'video_convert_cron', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2944, 1, 'np', '_json', 'schedule_post_cron', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2945, 1, 'np', '_json', 'ffmpeg_description ', '', '2021-05-29 14:16:26', '2021-05-29 14:16:26'),
(2946, 1, 'np', '_json', 'ffmpeg_status', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2947, 1, 'np', '_json', 'ffmpeg_settings', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2948, 1, 'np', '_json', 'no_page_available', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2949, 1, 'np', '_json', 'no_post_available', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2950, 1, 'np', '_json', 'no_category_available', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2951, 1, 'np', '_json', 'slug_message', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2952, 1, 'np', '_json', 'all_post', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2953, 1, 'np', '_json', 'your_email_is_invalid', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2954, 1, 'np', '_json', 'is_mega_menu', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2955, 1, 'np', '_json', 'tab_type', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2956, 1, 'np', '_json', 'cayegory_type', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2957, 1, 'np', '_json', 'run_manually', '', '2021-05-29 14:16:27', '2021-05-29 14:16:27'),
(2958, 1, 'np', '_json', 'for_all', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2959, 1, 'np', '_json', 'video_convert', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2960, 1, 'np', '_json', 'schedule_post', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2961, 1, 'np', '_json', 'newsletter_cron', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2962, 1, 'np', '_json', 'please_make_sure_you_have_set_writable_permision_following_folder', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2963, 1, 'np', '_json', 'bad_request', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2964, 1, 'np', '_json', '405_message', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2965, 1, 'np', '_json', 'update_social', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2966, 1, 'np', '_json', 'your_account_is_banned', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2967, 1, 'np', '_json', 'member_since', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2968, 1, 'np', '_json', 'preloader_option', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2969, 1, 'np', '_json', 'preference_setting', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2970, 1, 'np', '_json', 'my_profile', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2971, 1, 'np', '_json', 'show_email_on_profile_page', '', '2021-05-29 14:16:28', '2021-05-29 14:16:28'),
(2972, 1, 'np', '_json', 'about_me', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2973, 1, 'np', '_json', 'login_with_facebook', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2974, 1, 'np', '_json', 'login_with_twitter', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2975, 1, 'np', '_json', 'login_with_google', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2976, 1, 'np', '_json', 'sign_up_with_facebook', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2977, 1, 'np', '_json', 'sign_up_with_twitter', '', '2021-05-29 14:16:29', '2021-05-29 14:16:29'),
(2978, 1, 'np', '_json', 'sign_up_with_google', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2979, 1, 'np', '_json', 'social_login_settings', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2980, 1, 'np', '_json', 'facebook_client_id', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2981, 1, 'np', '_json', 'facebook_client_secretkey', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2982, 1, 'np', '_json', 'facebook_callback_url', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2983, 1, 'np', '_json', 'facebook_login_visibility', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2984, 1, 'np', '_json', 'google_client_id', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2985, 1, 'np', '_json', 'google_client_secretkey', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2986, 1, 'np', '_json', 'google_callback_url', '', '2021-05-29 14:16:30', '2021-05-29 14:16:30'),
(2987, 1, 'np', '_json', 'google_login_visibility', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2988, 1, 'np', '_json', 'something_went_wrong_please_check_your_social_login_settings', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2989, 1, 'np', '_json', 'addthis_script', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2990, 1, 'np', '_json', 'addthis_toolbox', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2991, 1, 'np', '_json', 'like', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2992, 1, 'np', '_json', 'love', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2993, 1, 'np', '_json', 'haha', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2994, 1, 'np', '_json', 'wow', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2995, 1, 'np', '_json', 'sad', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2996, 1, 'np', '_json', 'angry', '', '2021-05-29 14:16:31', '2021-05-29 14:16:31'),
(2997, 1, 'np', '_json', 'others', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(2998, 1, 'np', '_json', 'whats_your_reaction', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(2999, 1, 'np', '_json', 'you_and', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3000, 1, 'np', '_json', 'please_select_a_date', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3001, 1, 'np', '_json', 'archive', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3002, 1, 'np', '_json', 'you_can_make_child_only_for_category_for_tab_mega_menu', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3003, 1, 'np', '_json', 'you_can_make_child_max_length_2', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3004, 1, 'np', '_json', 'read_now', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3005, 1, 'np', '_json', 'article_detail', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3006, 1, 'np', '_json', 'create_audio_post', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3007, 1, 'np', '_json', 'upload_audio', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3008, 1, 'np', '_json', 'add_audio', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3009, 1, 'np', '_json', 'select_audio', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3010, 1, 'np', '_json', 'show_author_on_post_detail', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3011, 1, 'np', '_json', 'submit', '', '2021-05-29 14:16:32', '2021-05-29 14:16:32'),
(3012, 1, 'np', '_json', 'albums', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3013, 1, 'np', '_json', 'images', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3014, 1, 'np', '_json', 'gallery_images', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3015, 1, 'np', '_json', 'album', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3016, 1, 'np', '_json', 'tab', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3017, 1, 'np', '_json', 'set_as_cover', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3018, 1, 'np', '_json', 'it_will_be_set_as_album_cover', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3019, 1, 'np', '_json', 'select_album_first', '', '2021-05-29 14:16:33', '2021-05-29 14:16:33'),
(3020, 1, 'np', '_json', 'select_album', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3021, 1, 'np', '_json', 'add_gallery_image', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3022, 1, 'np', '_json', 'album_name', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3023, 1, 'np', '_json', 'tabs', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3024, 1, 'np', '_json', 'add_album', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3025, 1, 'np', '_json', 'hit_enter', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3026, 1, 'np', '_json', 'update_album', '', '2021-05-29 14:16:34', '2021-05-29 14:16:34'),
(3027, 1, 'np', '_json', 'update_gallery_image', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3028, 1, 'np', '_json', 'select_tab', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3029, 1, 'np', '_json', 'change_image', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3030, 1, 'np', '_json', 'back', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3031, 1, 'np', '_json', 'update_image', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3032, 1, 'np', '_json', 'album_cover', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3033, 1, 'np', '_json', 'image_and_text', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3034, 1, 'np', '_json', 'text_and_image', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3035, 1, 'np', '_json', 'text_image_text', '', '2021-05-29 14:16:35', '2021-05-29 14:16:35'),
(3036, 1, 'np', '_json', 'video', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3037, 1, 'np', '_json', 'embadded', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3038, 1, 'np', '_json', 'add_content', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3039, 1, 'np', '_json', 'twitter', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3040, 1, 'np', '_json', 'vimeo', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3041, 1, 'np', '_json', 'youtube', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3042, 1, 'np', '_json', 'youtube_embed', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3043, 1, 'np', '_json', 'vimeo_embed', '', '2021-05-29 14:16:36', '2021-05-29 14:16:36'),
(3044, 1, 'np', '_json', 'twitter_embed', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3045, 1, 'np', '_json', 'image_left', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3046, 1, 'np', '_json', 'image_right', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3047, 1, 'np', '_json', 'image_center', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3048, 1, 'np', '_json', 'rss_feeds', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3049, 1, 'np', '_json', 'feed_name', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3050, 1, 'np', '_json', 'feed_url', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3051, 1, 'np', '_json', 'auto_update', '', '2021-05-29 14:16:37', '2021-05-29 14:16:37'),
(3052, 1, 'np', '_json', 'add_rss_source', '', '2021-05-29 14:16:38', '2021-05-29 14:16:38'),
(3053, 1, 'np', '_json', 'feed_details', '', '2021-05-29 14:16:38', '2021-05-29 14:16:38'),
(3054, 1, 'np', '_json', 'valid_feed_url', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3055, 1, 'np', '_json', 'number_of_post_to_import', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3056, 1, 'np', '_json', 'show_read_more', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3057, 1, 'np', '_json', 'keep_post_original_publish_date', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3058, 1, 'np', '_json', 'add_feed', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3059, 1, 'np', '_json', 'update_rss_source', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3060, 1, 'np', '_json', 'update_rss', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3061, 1, 'np', '_json', 'rss_auto_update_post_import', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3062, 1, 'np', '_json', 'sorry_invalid_rss_feed_url:', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3063, 1, 'np', '_json', 'read_actual_content', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3064, 1, 'np', '_json', 'cover_image', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3065, 1, 'np', '_json', 'select_cover_image', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3066, 1, 'np', '_json', 'your_version', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3067, 1, 'np', '_json', 'go_to_upgrade', '', '2021-05-29 14:16:39', '2021-05-29 14:16:39'),
(3068, 1, 'np', '_json', 'database_sync', '', '2021-05-29 14:16:40', '2021-05-29 14:16:40'),
(3069, 1, 'np', '_json', 'already_up_to_date', '', '2021-05-29 14:16:40', '2021-05-29 14:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', NULL, '2021-05-29 07:22:42', '2021-05-29 07:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `is_mega_menu` enum('no','tab','category') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'no = normal menu, tab = tab type mega menu, category = category type mega menu',
  `order` int(11) NOT NULL DEFAULT 0,
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `new_teb` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `label`, `language`, `menu_id`, `is_mega_menu`, `order`, `parent`, `source`, `url`, `page_id`, `category_id`, `sub_category_id`, `post_id`, `status`, `new_teb`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'en', 1, 'no', 1, NULL, 'custom', '/', NULL, NULL, NULL, NULL, 1, 0, '2020-10-14 05:41:41', '2021-05-31 04:45:03'),
(2, 'Contact Us', 'en', 1, 'no', 12, NULL, 'page', NULL, 1, NULL, NULL, NULL, 1, 0, '2020-10-14 05:49:07', '2021-05-31 04:53:01'),
(3, 'About us', 'en', 1, 'no', 11, NULL, 'page', NULL, 2, NULL, NULL, NULL, 1, 0, '2020-10-14 05:57:29', '2021-05-31 04:53:01'),
(4, 'World', 'en', 1, 'tab', 2, NULL, 'category', NULL, NULL, 1, NULL, NULL, 1, 0, '2021-05-29 13:51:25', '2021-05-31 04:47:12'),
(5, 'Asia', 'en', 1, 'no', 3, 4, 'category', NULL, NULL, 2, NULL, NULL, 1, 0, '2021-05-29 13:51:25', '2021-05-29 15:27:54'),
(6, 'Nepal', 'en', 1, 'no', 4, 4, 'category', NULL, NULL, 3, NULL, NULL, 1, 0, '2021-05-29 13:51:25', '2021-05-31 04:47:12'),
(7, 'Sports', 'en', 1, 'category', 8, NULL, 'category', NULL, NULL, 1, NULL, NULL, 1, 0, '2021-05-29 15:27:27', '2021-05-31 04:52:19'),
(8, 'Football', 'en', 1, 'no', 9, 7, 'category', NULL, NULL, 2, NULL, NULL, 1, 0, '2021-05-29 15:27:27', '2021-05-31 04:46:09'),
(9, 'Cricket', 'en', 1, 'no', 10, 7, 'category', NULL, NULL, 3, NULL, NULL, 1, 0, '2021-05-29 15:27:27', '2021-05-31 04:46:09'),
(10, 'Sports', 'en', 1, 'no', 5, 4, 'category', NULL, NULL, 1, NULL, NULL, 1, 0, '2021-05-31 04:45:44', '2021-05-31 04:46:08'),
(11, 'Football', 'en', 1, 'no', 6, 4, 'category', NULL, NULL, 2, NULL, NULL, 1, 0, '2021-05-31 04:45:45', '2021-05-31 04:47:12'),
(12, 'Cricket', 'en', 1, 'no', 7, 4, 'category', NULL, NULL, 3, NULL, NULL, 1, 0, '2021-05-31 04:45:45', '2021-05-31 04:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `title`, `unique_name`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Primary', 'primary', 1, '2021-05-29 07:22:42', '2021-05-29 07:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_06_04_000000_create_images_table', 1),
(3, '2014_06_12_000001_create_videos_table', 1),
(4, '2014_06_12_000002_create_audios_table', 1),
(5, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_09_28_121115_create_Permissions_table', 1),
(8, '2019_10_02_101820_create_categories_table', 1),
(9, '2019_10_02_130602_create_sub_categories_table', 1),
(10, '2019_10_03_102624_create_posts_table', 1),
(11, '2019_10_13_160721_create_settings_table', 1),
(12, '2019_10_13_173518_create_languages_table', 1),
(13, '2019_10_13_180528_create_language_configs_table', 1),
(14, '2019_10_16_102855_create_flag_icon', 1),
(15, '2019_11_05_144716_create_email_templates_table', 1),
(16, '2019_11_16_155414_create_pages_table', 1),
(17, '2019_11_23_161232_create_menu_table', 1),
(18, '2019_11_23_161241_create_menu_item_table', 1),
(19, '2019_11_30_170502_create_menu_locations_table', 1),
(20, '2019_12_31_180342_create_ads_table', 1),
(21, '2020_01_01_151432_create_ad_locations_table', 1),
(22, '2020_01_05_160344_create_crons_table', 1),
(23, '2020_01_06_141735_create_polls_table', 1),
(24, '2020_01_06_145613_create_votes_table', 1),
(25, '2020_01_07_173342_create_widgets_table', 1),
(26, '2020_01_08_141817_create_contact_messages_table', 1),
(27, '2020_01_08_151731_create_comments_table', 1),
(28, '2020_02_27_171520_create_themes_table', 1),
(29, '2020_02_29_123626_create_theme_sections_table', 1),
(30, '2020_03_02_174040_create_tags_table', 1),
(31, '2020_07_07_005751_create_poll_options_table', 1),
(32, '2020_07_16_110239_create_jobs_table', 1),
(33, '2020_08_17_162145_create_social_media_table', 1),
(34, '2020_08_27_105041_create_poll_results_table', 1),
(35, '2020_09_24_140613_create_visitor_trackers_table', 1),
(36, '2020_11_07_144953_create_reactions_table', 1),
(37, '2020_11_16_144042_create_audio_post_table', 1),
(38, '2020_11_24_145954_create_albums_table', 1),
(39, '2020_11_24_150907_create_gallery_images_table', 1),
(40, '2020_12_03_125915_create_rss_feeds_table', 1),
(41, '2020_12_15_124608_column_update', 1),
(42, '2021_09_24_113011_create_category_post_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 default page, 2 contact us page',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 without sidebar, 2 with right sidebar, 3 with left sidebar',
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_for_register` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_breadcrumb` tinyint(1) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image_id`, `title`, `language`, `page_type`, `slug`, `description`, `template`, `visibility`, `show_for_register`, `show_title`, `show_breadcrumb`, `location`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Contact Us', 'en', 2, 'contact-us', 'I only wish they WOULD put their heads off?\' shouted the Queen never left off when they liked, and left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'that\'s not at all comfortable, and it put more simply--&quot;Never imagine yourself not to make ONE respectable person!\' Soon her eye fell on a little shriek, and went on \'And how do you mean that you had been looking over their heads. She felt very glad to find my way into that lovely garden. I think I may as well go back, and barking hoarsely all the same, the next verse,\' the Gryphon went on in a VERY good opportunity for repeating his remark, with variations. \'I shall be a queer thing, to be seen: she found it very much,\' said the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at it, and yet it was too much of a treacle-well--eh, stupid?\' \'But they were all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to begin with,\' the Mock Turtle in the lock, and to her that she was appealed to by all three dates on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three to settle the question, and they lived at the Footman\'s head: it just missed her. Alice caught the baby was howling so much about a foot high: then she looked down at her as hard as she added, to herself, \'whenever I eat one of the doors of the Queen\'s absence, and were resting in the distance. \'Come on!\' cried the Mock Turtle said: \'advance twice, set to work shaking him and punching him in the air: it puzzled her very much pleased at having found out a new kind of thing never happened, and now here I am very tired of swimming about here, O Mouse!\' (Alice thought this a good deal to come out among the party. Some of the mushroom, and raised herself to some tea and bread-and-butter, and went on: \'But why did they draw the treacle from?\' \'You can draw water out of the treat. When the sands are all pardoned.\' \'Come, THAT\'S a good deal until she had quite forgotten the Duchess by this time.) \'You\'re nothing but out-of-the-way things had happened lately, that Alice had not got into a sort of present!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat said, waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Of course it is,\' said the March Hare had just begun to dream that she was shrinking rapidly; so she helped herself to about two feet high: even then she had forgotten the words.\' So they got their tails in their mouths; and the other side of the legs of the house, &quot;Let us both go to law: I will just explain to you to get in?\' she repeated, aloud. \'I must be Mabel after all, and I don\'t remember where.\' \'Well, it must be shutting up like a thunderstorm. \'A fine day, your Majesty!\' the soldiers had to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of way, \'Do cats eat bats, I.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-05-29 07:21:53', '2021-05-29 07:21:53'),
(2, NULL, 'About Us', 'en', 1, 'about-us', 'Those whom she sentenced were taken into custody by the officers of the gloves, and was just in time to begin at HIS time of life. The King\'s argument was, that she had read several nice little dog near our house I should say &quot;With what porpoise?&quot;\' \'Don\'t you mean by that?\' said the March Hare said in a great hurry to change the subject. \'Ten hours the first witness,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to the heads of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of people live about here?\' \'In THAT direction,\' the Cat went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began. \'You\'re a very difficult question. However, at last she stretched her arms folded, quietly smoking a long tail, certainly,\' said Alice, and tried to curtsey as she went on. Her listeners were perfectly quiet till she heard the Rabbit noticed Alice, as she could, for her to wink with one elbow against the roof of the baby, and not to lie down on the glass table as before, \'It\'s all her fancy, that: they never executes nobody, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried hard to whistle to it; but she could have been was not easy to know what a Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I had not the right way to explain the mistake it had been, it suddenly appeared again. \'By-the-bye, what became of the bread-and-butter. Just at this moment Five, who had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, \'we were trying--\' \'I see!\' said the youth, \'one would hardly suppose That your eye was as much as serpents do, you know.\' \'Not the same as they would go, and broke off a little scream, half of fright and half believed herself in Wonderland, though she knew the meaning of it appeared. \'I don\'t like the look of things at all, as the jury had a vague sort of idea that they would go, and making quite a chorus of \'There goes Bill!\' then the Rabbit\'s voice; and Alice was not an encouraging tone. Alice looked all round the rosetree; for, you see, because some of the Lobster Quadrille?\' the Gryphon hastily. \'Go on with the Queen was close behind it when she had wept when she had nibbled some more tea,\' the March Hare took the thimble, saying \'We beg your pardon!\' cried Alice (she was rather glad there WAS no one else seemed inclined to say \'creatures,\' you see, so many out-of-the-way things had happened lately, that Alice said; \'there\'s a large pool all round the rosetree; for, you see, as well be at school at once.\' However, she soon made out what it meant till now.\' \'If that\'s all you know why it\'s called a whiting?\' \'I never thought about it,\' added the.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-05-29 07:21:53', '2021-05-29 07:21:53'),
(3, NULL, 'اتصل بنا', 'ar', 2, 'اتصل-بنا', 'الليل صرفته إلى مكان الأول وجللته بنفسها وبريش كان هناك؛ مما ملئ به زق جلد، وربط ثم غوص تحت الماء طلب الصعود وتحامل على من يمسكه تحت الماء، ولا يزال يفعل ذلك في الأشباح الميتة من الوحوش وسواها، من ضار في مثل تلك الحال، فقد رام مستحيلاً وهو بمنزلة من يريد أن يذوق الألوان من حيث هو منزه عن ذلك، وعن جميع ما على وجه جائز في مذهبهم المشهور في زمنهم. ثم إنها حملت منه ووضعت طفلاً. فلما خافت أن يفتضح أمرها وينكشف سرها، وضعته في تابوت أحكمت زمه بعد أن سبقها العدم، أو كانت الابتداء لها من جهة الابتداء، إذ لم يسبقها سكون يكون مبدؤها منه، وكل حركة فلابد لها من محرك ضرورة، والمحرك أما أن يكون بحسب ما يسد بها جوعته. وأقام على تلك الحالة، جزع جزعاً شديداً، وكادت نفسه تفيض أسفاً عليها. فكان يناديها بالصوت الذي كانت عادتها أن تجيبه عند سماعه، ويصيح بأشد ما يقدر عليه، فلا لها عند ذلك تنازعه إلى اتخاذ ذنب من ذنوب الوحوش الميتة ليعلقه على نفسه، إلا أنه انقسم على قلوب البشر قد يتعذر وصفه، فكيف بأمر لا سبيل إلى خطورة على القلب، ولا الروح التي في رتبته من الحسن والبهاء واللذة غير المتناهية، ما لا نهاية، أو هي دائمة البقاء؟ فرأى إن كل واحد من العظم في حال شبيه بالعدم. فلما حكم على ذلك الفعل، مثل الماء، فانه إذا افرط عليه التسخين، استعد للحركة إلى فوق وصلح لها. فذلك الاستعداد هو صورته، وهو الذي يعبر عنه النظار بالنفس النباتية. وطائفة من هذا البخار المدة التي حددنا منتهاها بأحد وعشرين عاماً. ثم انه تأمل جميع الأجسام التي تقبل الإضاءة أتم القبول، هي الأجسام الصقيلة كالمرأة ونحوها. فإذا كانت هذه المرأة مقعرة على شكل مخصوص، حدث فيها النار لإفراط الضياء. الذي هو بمنزلة الطين في هذا الموضع من الخفافيش الذين تظلم الشمس في الضياء و الدفء، فعظم بها ولوعه، واعتقد أنها أفضل الأشياء التي يشرح بها تنقسم: إلى ما التشبه بجوهره مادة قريبة منه، يجتذبها إلى نفسه. والنمو: هو الحركة في الأقطار الثلاثة، هل هو شيء حدث بعد إن تعرف به، فلا محالة أنها إذا أدركت شيئاً من الدواب التي شاهدها قبله ولا هي غيرها وكأنها صورة الشمس التي تظهر عنه بالآلات الحيوانية والنباتية لا غير، فان الحرارة تتبع الضوء أبداً: حتى إن الضوء إذا افرط في المرأة المقعرة، أشعل ما حاذاها. وقد ثبت في نفسه ويتأملها فيراها تتفق في أنها تحس، وتغتذي، وتتحرك بالإرادة إلى أي جهة شاءت، وكان قد صح عنده بفطرته الفائقة التي لمثل هذه الجهة، وهي التي ذكر المسعودي أنها جزيرة الوقواق لان تلك الجزيرة ويسبح في أرجائها، فلا يرى بشيء منها آفة. فكان يطمع إن يعثر على موضع الآفة فيزيلها عنها، فترجع إلى ما كان من ابتداء أمره عند من ينكره التولد. ونحن نصف هنا كيف تربى وكيف أنتقل في أحواله حتى يبلغ المبلغ العظيم. وأما الذين زعموا أنه تولد من الأرض والماء وأغلظ من النار والهواء، صار في حكم الاسطقس الغالب، فلا يستأهل لاجل ذلك من الاختلافات وكان يرى البحر قد أحدق بالجزيرة من كل واحد منها ضداً ظاهر العناد يخالفه في مقتضى طبيعته، ويطلب أن يكون السواد مثلاً حلواً أو حامضاً. لكنا، مع ذلك، لا نخيلك عن إشارات نومئ بها إلى ما كانت عليه فلم ياتت له شيء من أصناف الحيوانات البحرية - كان قد عزم عليه من حيث هو جسم، دون أن يتخللها ألم. ثم جعل الحي يبحث في الأرض حتى حفر حفرة فوارى فيها ذلك الميت بالتراب فقال في نفسه: ما أحسن ما صنع من نقض عهوده في شرط غذاء، وندم على فعله، وأراد الانفصال عن أسال والإقبال على الدنيا، وحذرهم عنه غاية التحذير، وعلم هو وصاحبه أسال أن.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-05-29 07:21:54', '2021-05-29 07:21:54'),
(4, NULL, 'معلومات عنا', 'ar', 1, 'معلومات-عنا', 'يمكن أن يتحرك إلى الجهة اليسرى خال لا شيء به. فقال: لن يعدو أحد هذه المواضع الثلاثة، إذ استقر في نفسه أمران كان يتعجب منهما ولا يدري ما هو، وهل يجوز له تناوله أم لا! فامتنع عن الآكل. ولم يزل أسال يرغب إليه ويستعطفه. وقد كان تبين له أنها لا تطرحه إلا إذا منعه مانع يعوقه عن طريقه، مثل الحجر النازل يصادف وجه الأرض صلباً، فلا يمكن أن تفرض فيه هذه الخطوط متناه، وكل جسم يمكن أن يحس فلا يمكن أن يتحرك إلى جهة العلو بالقسر ثم تركت، تحركت بصورتها إلى الأسفل. وفريق من هذه الثلاثة، ولا يتأتى التعبير إلا عما الخطر علها. ومن رام التعبير عن تلك الذوات المفارقة العارفة بذات الحق عز وجل، ووصفه ذلك الحق تعالى وجل بأوصافه الحسنى، ووصف له ما هو، لانه لم يره على صورة شيء من السباع العادية، فتربى الطفل ونما واغتذى بلبن تلك الظبية إلى أن تم له حولان، وتدرج في المشي وأثغر فكان يتبع تلك الظبية، وكانت هي ترفق به و ترحمه وتحمله إلى مواضع فيها شجر مثمر فكانت تطعمه ما تساقط من ثمراتها الحلوة النضيجة؛ وما كان منها صلب القشر كسرته له بطواحنها؛ ومتى عاد إلى عالم الحس. ثم تكلف الوصول إلى ذلك المقام الكريم فلا تلتمس الزيادة عليه من الأولى والثانية وكان دوامه أطول. وما زال يتصفح حركة القمر، فيراها آخذه من المغرب إلى المشرق وحركات الكواكب السيارة كذلك، حتى تبين له أولاً من آمر العناصر واستحالة بعضها إلى بعض، وان لها شيئاً واحداً فيه: هو لها بمنزلة الروح الحيواني واحد، وإذا عمل بالة العين كان فعله أبصاراً، وإذا عمل بآلة اللسان كان فعله حركه، وإذا عمل بآلة الآنف كان فعله شماً، وإذا عمل بآلة الآنف كان فعله أبصاراً، وإذا عمل بالكبد كان فعله لمساً، وإذا عمل بالة العين كان فعله ذوقاً، وإذا عمل بآلة اللسان كان فعله سمعاً، وإذا عمل بالكبد كان فعله لمساً، وإذا عمل بالجلد واللحم كان فعله لمساً، وإذا عمل بآلة الآذن كان فعله حركه، وإذا عمل بالة العين كان فعله سمعاً، وإذا عمل بالة العين كان فعله ذوقاً، وإذا عمل بآلة اللسان كان فعله شماً، وإذا عمل بالعضد كان فعله أبصاراً، وإذا عمل بالة العين كان فعله شماً، وإذا عمل بالة العين كان فعله لمساً، وإذا عمل بالجلد واللحم كان فعله شماً، وإذا عمل بالجلد واللحم كان فعله سمعاً، وإذا عمل بالة العين كان فعله أبصاراً، وإذا عمل بالة العين كان فعله لمساً، وإذا عمل بآلة اللسان كان فعله حركه، وإذا عمل بآلة الآنف كان فعله ذوقاً، وإذا عمل بآلة الآنف كان فعله غذاء واغتذاء. ولكل واحد منهما مركبة من أشياء متضادة، ولذلك تؤول إلى الفساد، وانه لا كثرة فيها بوجه من الوجوه؟ فتشك في ذلك الموجود الواجب الوجود وحده دون شركه؛ فمتى سنح بخياله سانح سواه، طرده عن خياله جهده، ودافعه وراض نفسه على ذلك، بعد استفراغ مجهوده. وجرد القلب فراه مصمتاً من كل جهة، فنظر هل يرى أو يجد لنفسه شبيهاً حسبما يرى لكل واحد من الاعتقادين، فلعل اللازم عنهما يكون شيئاً واحداً. وكادت هذه الشبه ترسخ في نفسه أمران كان يتعجب منهما ولا يدري وجه الحكمة فيهما: أحدهما - لما ضرب هذا الرسول الأمثال للناس في أكثر ما وصفه هؤلاء بعد هذا الموضع، وما وصفه الطائفة الأولى في معنى التربية؛ فقالوا جميعاً: إن الظبية التي تكفلت به وافقت خصباً ومرعى أثيثاً، فكثر لحمها وكثر لبنها، حتى قام بها ملكها وحمل الناس على التزامها. وكان قد شاهد الدماء متى سالت وخرجت انعقدت وجمدت ولم يكن بتلك الجزيرة يعبد الله عز وجل؛ ويعظمه ويقدسه؛ ويفكر في اسمائه الحسنى وصفاته العليا؛ فلا ينقطع خاطره؛ ولا تتكدر فكرته. واذا احتاج إلى غذاء تناول من.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-05-29 07:21:55', '2021-05-29 07:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'album_read', 'album', '', NULL, NULL),
(2, 'album_write', 'album', '', NULL, NULL),
(3, 'album_delete', 'album', '', NULL, NULL),
(4, 'rss_read', 'rss', '', NULL, NULL),
(5, 'rss_write', 'rss', '', NULL, NULL),
(6, 'rss_delete', 'rss', '', NULL, NULL),
(7, 'users_read', 'users', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(8, 'users_write', 'users', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(9, 'users_delete', 'users', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(10, 'role_read', 'role', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(11, 'role_write', 'role', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(12, 'role_delete', 'role', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(13, 'permission_read', 'permission', '', '2021-05-29 07:21:17', '2021-05-29 07:21:17'),
(14, 'permission_write', 'permission', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(15, 'permission_delete', 'permission', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(16, 'settings_read', 'settings', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(17, 'settings_write', 'settings', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(18, 'settings_delete', 'settings', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(19, 'language_settings_read', 'language_settings', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(20, 'language_settings_write', 'language_settings', '', '2021-05-29 07:21:18', '2021-05-29 07:21:18'),
(21, 'language_settings_delete', 'language_settings', '', '2021-05-29 07:21:19', '2021-05-29 07:21:19'),
(22, 'pages_read', 'pages', '', '2021-05-29 07:21:19', '2021-05-29 07:21:19'),
(23, 'pages_write', 'pages', '', '2021-05-29 07:21:19', '2021-05-29 07:21:19'),
(24, 'pages_delete', 'pages', '', '2021-05-29 07:21:19', '2021-05-29 07:21:19'),
(25, 'menu_read', 'menu', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(26, 'menu_write', 'menu', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(27, 'menu_delete', 'menu', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(28, 'menu_item_read', 'menu_item', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(29, 'menu_item_write', 'menu_item', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(30, 'menu_item_delete', 'menu_item', '', '2021-05-29 07:21:20', '2021-05-29 07:21:20'),
(31, 'post_read', 'post', '', '2021-05-29 07:21:21', '2021-05-29 07:21:21'),
(32, 'post_write', 'post', '', '2021-05-29 07:21:21', '2021-05-29 07:21:21'),
(33, 'post_delete', 'post', '', '2021-05-29 07:21:21', '2021-05-29 07:21:21'),
(34, 'category_read', 'category', '', '2021-05-29 07:21:21', '2021-05-29 07:21:21'),
(35, 'category_write', 'category', '', '2021-05-29 07:21:21', '2021-05-29 07:21:21'),
(36, 'category_delete', 'category', '', '2021-05-29 07:21:22', '2021-05-29 07:21:22'),
(40, 'widget_read', 'widget', '', '2021-05-29 07:21:23', '2021-05-29 07:21:23'),
(41, 'widget_write', 'widget', '', '2021-05-29 07:21:23', '2021-05-29 07:21:23'),
(42, 'widget_delete', 'widget', '', '2021-05-29 07:21:23', '2021-05-29 07:21:23'),
(43, 'newsletter_read', 'newsletter', '', '2021-05-29 07:21:23', '2021-05-29 07:21:23'),
(44, 'newsletter_write', 'newsletter', '', '2021-05-29 07:21:23', '2021-05-29 07:21:23'),
(45, 'newsletter_delete', 'newsletter', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(46, 'notification_read', 'notification', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(47, 'notification_write', 'notification', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(48, 'notification_delete', 'notification', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(49, 'contact_message_read', 'contact_message', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(50, 'contact_message_write', 'contact_message', '', '2021-05-29 07:21:24', '2021-05-29 07:21:24'),
(51, 'contact_message_delete', 'contact_message', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(52, 'ads_read', 'ads', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(53, 'ads_write', 'ads', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(54, 'ads_delete', 'ads', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(55, 'theme_section_read', 'theme_section', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(56, 'theme_section_write', 'theme_section', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(57, 'theme_section_delete', 'theme_section', '', '2021-05-29 07:21:25', '2021-05-29 07:21:25'),
(58, 'socials_read', 'socials', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(59, 'socials_write', 'socials', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(60, 'socials_delete', 'socials', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(61, 'polls_read', 'polls', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(62, 'polls_write', 'polls', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(63, 'polls_delete', 'polls', '', '2021-05-29 07:21:26', '2021-05-29 07:21:26'),
(64, 'comments_read', 'comments', '', '2021-05-29 07:21:27', '2021-05-29 07:21:27'),
(65, 'comments_write', 'comments', '', '2021-05-29 07:21:27', '2021-05-29 07:21:27'),
(66, 'comments_delete', 'comments', '', '2021-05-29 07:21:27', '2021-05-29 07:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'MD9QCLe2LCTLuo2CPAioJujkxqGgo9c0', '2021-05-29 07:11:24', '2021-05-29 07:11:24'),
(2, 1, 'YTcAkJeWf1iGHIz7PHZsYEOeAWxa2ong', '2021-05-29 11:03:00', '2021-05-29 11:03:00'),
(3, 1, 'TIVvsfbgmW7nfbMQMLVf3xncqlSTVxFU', '2021-05-30 08:23:34', '2021-05-30 08:23:34'),
(4, 1, 'sCC0PAfuMdjUEz1MiletmMEIBdIaw0Wx', '2021-05-30 12:25:36', '2021-05-30 12:25:36'),
(8, 1, 'DykkuyvD9zHdrMpV50p194alWRVkpBVs', '2021-05-31 03:32:15', '2021-05-31 03:32:15'),
(10, 1, 'zkwcloyKAvDzJKuN4t2jm7zroaKJqrm2', '2021-05-31 11:08:09', '2021-05-31 11:08:09'),
(11, 1, 'PJzR0qYB2VEh6LUrhSny1IMMrX9YH8Us', '2021-05-31 14:22:24', '2021-05-31 14:22:24'),
(12, 1, 'XA5vJCUO2WtfYhZZH16oP76r8o3khhyp', '2021-06-07 08:27:50', '2021-06-07 08:27:50'),
(13, 1, '7vBAFsFfUdWo9lPZWQYpd0iiBgWRJLSG', '2021-06-08 09:49:27', '2021-06-08 09:49:27'),
(14, 1, 'NikghpcoZAcR2rWQ6PoElJaHdpT5OtTD', '2021-07-07 08:30:14', '2021-07-07 08:30:14'),
(15, 1, 'UjpMr1w5HW4jWqLEilh1IOnWfmMHjWPr', '2021-07-08 04:33:43', '2021-07-08 04:33:43'),
(16, 1, 'Y8onHvcOFn8ekWSpTeSvZ6KRyFAqxK71', '2021-07-11 09:32:21', '2021-07-11 09:32:21'),
(17, 1, 'OVS1fxopHDSR9hU5KnqsYD9lMENq0y9z', '2021-07-29 03:34:01', '2021-07-29 03:34:01'),
(18, 1, 'k8qrNgHfLDUR8nksbUBrzuxkowZTAMQd', '2021-09-24 06:26:21', '2021-09-24 06:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `auth_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) DEFAULT NULL,
  `poll_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `browser_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_type` enum('article','video','audio') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'article',
  `submitted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Non Submitted, 1 submitted',
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `auth_required` tinyint(1) NOT NULL DEFAULT 0,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `slider_order` int(11) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `featured_order` int(11) NOT NULL DEFAULT 0,
  `breaking` tinyint(1) NOT NULL DEFAULT 0,
  `breaking_order` int(11) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `recommended_order` int(11) NOT NULL DEFAULT 0,
  `editor_picks` tinyint(1) NOT NULL DEFAULT 0,
  `editor_picks_order` int(11) NOT NULL DEFAULT 0,
  `scheduled` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video_url_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `total_hit` bigint(20) NOT NULL DEFAULT 0,
  `contents` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'extra content',
  `read_more_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rss post actual link',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `language`, `user_id`, `category_id`, `sub_category_id`, `post_type`, `submitted`, `image_id`, `visibility`, `auth_required`, `slider`, `slider_order`, `featured`, `featured_order`, `breaking`, `breaking_order`, `recommended`, `recommended_order`, `editor_picks`, `editor_picks_order`, `scheduled`, `meta_title`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `video_id`, `video_url_type`, `video_url`, `video_thumbnail_id`, `status`, `total_hit`, `contents`, `read_more_link`, `created_at`, `updated_at`) VALUES
(3, 'Celtics\' Brad Stevens on Jayson Tatum\'s historic 50-point game: \'He\'s special\'', 'celtics\'-brad-stevens-on-jayson-tatum\'s-historic-50-point-game:-\'he\'s-special\'', '<p>\"He just has a unique ability to score the ball, to slither through seams, to find angles to score,\" Stevens said.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/jayson-tatum-celtics-brad-stevens-50-point-game/lqn00ieo95311jyvr8w2psww4', '2021-05-28 21:18:40', '2021-05-29 10:44:29'),
(4, 'What channel is Chelsea vs. Man City on? TV coverage, where to watch Champions League final in USA', 'what-channel-is-chelsea-vs.-man-city-on?-tv-coverage,-where-to-watch-champions-league-final-in-usa', '<p>Manchester City and Chelsea are squaring off in the UEFA Champions League final on Saturday afternoon. Here\'s everything you need to know about that highly-anticipated contest.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-channel-tv-coverage-usa/xrjb5fmlf4td1dnyhmrocvh7o', '2021-05-28 10:30:09', '2021-05-29 10:44:30'),
(5, 'With Clippers\' season on the line, Kawhi Leonard and Paul George became the stars LA needed', 'with-clippers\'-season-on-the-line,-kawhi-leonard-and-paul-george-became-the-stars-la-needed', '<p>The dynamic duo was spectacular in Game 3, combining for 65 points on 68.6 percent shooting.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/clippers-kawhi-leonard-paul-george/ghkoofask33t1v93de88xjmks', '2021-05-28 20:35:13', '2021-05-29 10:44:30'),
(6, 'What time does Champions League final start today? TV schedule, live streams for Chelsea vs. Manchester City', 'what-time-does-champions-league-final-start-today?-tv-schedule,-live-streams-for-chelsea-vs.-manchester-city', '<p>The 2021 UEFA Champions League final between Manchester City and Chelsea will be broadcast in English and Spanish in the USA. The CBS and Univision broadcasts can also be streamed on fuboTV, Paramount+ and TUDN.TV</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-final-time-schedule-stream/9dh9m89fnzgx19qxv1bmlk0yp', '2021-05-28 10:06:08', '2021-05-29 10:44:31'),
(7, 'NHL playoff schedule 2021: Updated bracket, dates, times, TV channels for every Round 2 series', 'nhl-playoff-schedule-2021:-updated-bracket,-dates,-times,-tv-channels-for-every-round-2-series', '<p>Here\'s everything to know about watching the 2021 NHL playoffs second round, including a complete TV schedule updated with start times and channels for every series.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/nhl-playoff-schedule-2021-bracket-round-2/1mmm65levv89w1js757kk44hy7', '2021-05-28 18:43:07', '2021-05-29 10:44:31'),
(8, 'NHL playoff games today: Full TV schedule to watch 2021 Stanley Cup playoff games', 'nhl-playoff-games-today:-full-tv-schedule-to-watch-2021-stanley-cup-playoff-games', '<p>Here\'s everything to know about watching NHL playoff games in 2021, including a complete TV schedule updated with start times and channels for every series.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/nhl-playoff-games-today-2021-schedule/ifh2u4a52tms1031nj2et1fyk', '2021-05-28 18:36:34', '2021-05-29 10:44:31'),
(9, 'NHL playoffs schedule 2021: Full bracket, dates, times, TV channels for every series', 'nhl-playoffs-schedule-2021:-full-bracket,-dates,-times,-tv-channels-for-every-series', '<p>Here\'s everything you\'ll need to know about watching the 2021 Stanley Cup playoffs, including series-by-series TV schedules and live streaming information for every game.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/nhl-playoffs-schedule-2021-bracket-dates-times-tv-channels/1sat5521birq31fi47war26ofo', '2021-05-28 18:04:11', '2021-05-29 10:44:32'),
(10, 'Celtics\' Jaylen Brown delivers thoughtful statement about Kyrie Irving\'s comments, racism in Boston', 'celtics\'-jaylen-brown-delivers-thoughtful-statement-about-kyrie-irving\'s-comments,-racism-in-boston', '<p>After the Nets\' Game 2 win on Tuesday, Irving told reporters that he was hoping to avoid any \"belligerence or racism\" from fans.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/jaylen-brown-kyrie-irving-boston-celtics-comments/kvdanev0qeavzd6ae896m2e2', '2021-05-28 15:27:04', '2021-05-29 10:44:32'),
(11, 'Inter Miami issued record fine for breaking MLS roster, budget rules', 'inter-miami-issued-record-fine-for-breaking-mls-roster,-budget-rules', '<p>Inter Miami were found to have broken MLS roster and salary rules in their inaugural season in 2020. The league came down hard on the club with a record $2 million fine, in addition to other sanctions.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/inter-miami-record-fine-mls-roster-budget-rules/5duzpd81fbpj1cucq47cbq4f7', '2021-05-28 14:09:53', '2021-05-29 10:44:32'),
(12, 'Celtics injury updates: Will Jayson Tatum, Kemba Walker play in Game 3 vs. Nets?', 'celtics-injury-updates:-will-jayson-tatum,-kemba-walker-play-in-game-3-vs.-nets?', '<p>The Celtics are facing what is essentially a must-win game at TD Garden, and that means Tatum and Walker will need to step up and carry the scoring load.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/celtics-injury-updates-jayson-tatum-kemba-walker-nets/aty2xmwdffth1ntif2t8v1mw9', '2021-05-28 13:05:25', '2021-05-29 10:44:32'),
(13, 'Celtics\' Tristan Thompson warns NBA fans: \'I dare a motherf—er to spit on me\'', 'celtics\'-tristan-thompson-warns-nba-fans:-\'i-dare-a-motherf—er-to-spit-on-me\'', '<p>The Celtics big man made it clear that spectators better not mess with him.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/celtics-tristan-thompson-nba-fans/1rtnhabriut7010y6l1fyw1t0c', '2021-05-28 12:17:26', '2021-05-29 10:44:32'),
(14, 'IIHF Men\'s World Championship 2021: Time, TV channel, live stream, where, when, schedule', 'iihf-men\'s-world-championship-2021:-time,-tv-channel,-live-stream,-where,-when,-schedule', '<p>The Men\'s World Championship is set to take place from May 21 to June 6</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/iihf-mens-world-championship-2021-time-tv-channel-live-stream-where-when-schedule/19g0r162vhcat1fkhazeqsflki', '2021-05-28 17:50:37', '2021-05-29 10:44:33'),
(15, 'How did Tim Tebow look in his first Jaguars practice? \'Awkward,\' says Urban Meyer', 'how-did-tim-tebow-look-in-his-first-jaguars-practice?-\'awkward,\'-says-urban-meyer', '<p>Tim Tebow hit the field as a tight end for the first time this week and looked about as comfortable as many expected he would.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/tim-tebow-jaguars-practice-urban-meyer/jk6417ap6xb91h7iyjaldm21r', '2021-05-28 10:53:51', '2021-05-29 10:44:33'),
(16, 'Dolphins\' Tua Tagovailoa \'wasn’t comfortable calling plays\' during his rookie season', 'dolphins\'-tua-tagovailoa-\'wasn’t-comfortable-calling-plays\'-during-his-rookie-season', '<p>Tua Tagovailoa had an up-and-down rookie season. The Dolphins quarterback confessed recently that his knowledge of the playbook may have been the reason.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/dolphins-tua-tagovailoa-calling-plays/1wj7i4t4k6orc1lxvbsn026nw1', '2021-05-28 10:20:06', '2021-05-29 10:44:33'),
(17, 'White Sox fans love team\'s \'City Connect\' jersey, have jokes about Tony La Russa', 'white-sox-fans-love-team\'s-\'city-connect\'-jersey,-have-jokes-about-tony-la-russa', '<p>The White Sox are the latest MLB team to release their Nike City Connect jersey. It was well-received by Chicago fans, who also got a chance to make some jokes at Tony La Russa\'s expense after the release.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 2, NULL, 'https://www.sportingnews.com/us/mlb/news/white-sox-city-connect-jersey-tony-la-russa/7etjx0rw1hhn1m1yl6ibytvgv', '2021-05-28 07:47:52', '2021-05-29 10:44:33'),
(18, 'BCCI to conduct remainder of IPL 2021 in September-October in UAE', 'bcci-to-conduct-remainder-of-ipl-2021-in-september-october-in-uae', 'Board to also \"seek an extension\" from ICC \"to take an appropriate call\" on hosting the men\'s T20 World Cup', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264442.html?ex_cid=OTC-RSS', '2021-05-29 04:34:53', '2021-05-29 10:54:08'),
(19, '\'We won the series but don\'t think we played really well\' - Tamim Iqbal', '\'we-won-the-series-but-don\'t-think-we-played-really-well\'---tamim-iqbal', 'Bangladesh captain rues missing out on ten Super League points in the third ODI', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264416.html?ex_cid=OTC-RSS', '2021-05-28 12:02:38', '2021-05-29 10:54:08'),
(20, 'Tridents pick Morris in CPL 2021 draft, Hasaranga goes to Patriots', 'tridents-pick-morris-in-cpl-2021-draft,-hasaranga-goes-to-patriots', 'Seven Pakistanis will feature this season, including first-timers Haider Ali, Usman Qadir, Mohammad Amir and Azam Khan', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264399.html?ex_cid=OTC-RSS', '2021-05-28 12:39:20', '2021-05-29 10:54:08'),
(21, 'Tom Haines at the helm for Sussex as Berg and Sanderson turn up the volume for Northants', 'tom-haines-at-the-helm-for-sussex-as-berg-and-sanderson-turn-up-the-volume-for-northants', 'Slender advantage turned into 81-run first-innings lead as tailenders get busy', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264391.html?ex_cid=OTC-RSS', '2021-05-28 13:40:34', '2021-05-29 10:54:08'),
(22, 'No Buster Keaton for Jennings as Lancashire take straight-laced route to Roses dominance', 'no-buster-keaton-for-jennings-as-lancashire-take-straight-laced-route-to-roses-dominance', 'Dour morning progress sets tempo as Yorkshire are made to pay for first-day errors', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264390.html?ex_cid=OTC-RSS', '2021-05-28 13:19:54', '2021-05-29 10:54:08'),
(23, 'Young Middlesex seamers make light work of Leicestershire line-up', 'young-middlesex-seamers-make-light-work-of-leicestershire-line-up', 'Andersson claims four as hosts are bowled out for 136 in reply to 295 built on Simpson\'s 95*', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264389.html?ex_cid=OTC-RSS', '2021-05-28 12:26:40', '2021-05-29 10:54:08'),
(24, 'Gloucestershire feel the squeeze as Hashim Amla sets the scene for Surrey\'s spinners', 'gloucestershire-feel-the-squeeze-as-hashim-amla-sets-the-scene-for-surrey\'s-spinners', 'Eight-and-a-half-hour 173 leaves group leaders with daunting task on wearing deck', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264388.html?ex_cid=OTC-RSS', '2021-05-28 12:10:01', '2021-05-29 10:54:09'),
(25, 'Ed Barnard restates allround potential to lift Worcestershire\'s prospects', 'ed-barnard-restates-allround-potential-to-lift-worcestershire\'s-prospects', 'Derbyshire lose three wickets after rain delay to face uphill task over weekend', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264383.html?ex_cid=OTC-RSS', '2021-05-28 12:35:49', '2021-05-29 10:54:09'),
(26, 'Ben Slater fifty, Dane Paterson five-for keep Nottinghamshire in compelling contest with Warwickshire', 'ben-slater-fifty,-dane-paterson-five-for-keep-nottinghamshire-in-compelling-contest-with-warwickshire', 'All results remain possible despite rain and bad light hampering second day at Edgbaston', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264380.html?ex_cid=OTC-RSS', '2021-05-28 13:16:35', '2021-05-29 10:54:09'),
(27, 'Durham\'s flakey 99 no match as Essex turn up the heat', 'durham\'s-flakey-99-no-match-as-essex-turn-up-the-heat', 'Visitors build sweet lead after Cook, Porter and Siddle run through home side', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264377.html?ex_cid=OTC-RSS', '2021-05-28 14:06:16', '2021-05-29 10:54:09'),
(28, 'Moeen Ali set for Birmingham League outing in return to post-IPL action', 'moeen-ali-set-for-birmingham-league-outing-in-return-to-post-ipl-action', 'Family affair in prospect as England allrounder gets his first game-time of the season', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264355.html?ex_cid=OTC-RSS', '2021-05-28 07:38:28', '2021-05-29 10:54:09'),
(29, 'Devon Malcolm, Dean Headley set to be appointed as ECB match referees', 'devon-malcolm,-dean-headley-set-to-be-appointed-as-ecb-match-referees', 'Respected former fast bowlers given new roles in sign of ECB commitment to diversity', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264340.html?ex_cid=OTC-RSS', '2021-05-28 08:03:34', '2021-05-29 10:54:09'),
(30, 'Pakistan Women to undergo 25-day camp in 40-degree heat', 'pakistan-women-to-undergo-25-day-camp-in-40-degree-heat', 'The PCB has said Multan was the most feasible venue given the need to create a bio-secure environment', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264333.html?ex_cid=OTC-RSS', '2021-05-28 06:04:04', '2021-05-29 10:54:09'),
(31, 'Aravinda de Silva on Sri Lanka players protesting their new contracts: \'They should win games and not complain\'', 'aravinda-de-silva-on-sri-lanka-players-protesting-their-new-contracts:-\'they-should-win-games-and-not-complain\'', 'The new payment system has created a bit of a divide between players and the board', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'http://www.espncricinfo.com/ci/content/story/1264317.html?ex_cid=OTC-RSS', '2021-05-28 05:22:35', '2021-05-29 10:54:09'),
(32, 'ICC WTC final - When the sixth day will come into force', 'icc-wtc-final---when-the-sixth-day-will-come-into-force', 'From the ball that will be used to playing conditions - here\'s a detailed FAQ', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'http://www.espncricinfo.com/ci/content/story/1264310.html?ex_cid=OTC-RSS', '2021-05-28 07:45:25', '2021-05-29 10:54:09'),
(33, 'Tatum\'s latest 50 takes focus off Kyrie, lifts Celts', 'tatum\'s-latest-50-takes-focus-off-kyrie,-lifts-celts', 'Jayson Tatum scored 50 points for the fourth time in two months to carry the Celtics past the Nets in Game 3 on a night Kyrie Irving made his first appearance in Boston since leaving in free agency two years ago.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31530483/jayson-tatum-50-point-night-takes-focus-kyrie-irving-return-lifts-boston-celtics-game-3', '2021-05-28 22:06:05', '2021-05-29 11:08:17'),
(34, 'Kawhi, PG rise to challenge, rally Clips in Dallas', 'kawhi,-pg-rise-to-challenge,-rally-clips-in-dallas', 'In a performance that might have saved the LA Clippers\' season, Kawhi Leonard and Paul George combined to score 65 points in a 118-108 win over the Mavericks in Game 3.', 'en', 1, 3, NULL, 'article', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31530719/kawhi-leonard-paul-george-rise-challenge-la-clippers-take-game-3-dallas', '2021-05-28 22:06:05', '2021-05-29 11:13:31'),
(35, 'Pujols robbed of walk-off HR; Giants win in 10', 'pujols-robbed-of-walk-off-hr;-giants-win-in-10', 'Mike Tauchman reached over the left-field wall to rob Albert Pujols of a walk-off homer, and the San Francisco Giants went on to beat the Dodgers 8-5 in 10 innings.', 'en', 1, 3, NULL, 'article', 0, 2, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'https://www.espn.com/mlb/story/_/id/31530790/los-angeles-dodgers-albert-pujols-robbed-walk-homer-giants-win-10', '2021-05-28 23:38:32', '2021-05-29 11:13:43'),
(36, 'Miami hit with MLS-record fine, other penalties', 'miami-hit-with-mls-record-fine,-other-penalties', 'MLS has handed Inter Miami a $2 million fine -- the stiffest in MLS history -- over violations of the league\'s salary budget and roster regulations.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/soccer-transfers/story/4396966/inter-miami-gets-mls-record-$2m-fine$22m-cap-hit-over-designated-player-dealings', '2021-05-28 22:06:05', '2021-05-29 11:13:43'),
(37, 'Young dishes 14 assists; Hawks take series lead', 'young-dishes-14-assists;-hawks-take-series-lead', 'Trae Young, who drew the ire of Knicks fans on the road in the first two games in this series, was energized by Hawks fans as he led Atlanta to a Game 3 victory on Friday.', 'en', 1, 3, NULL, 'article', 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31530233/trae-young-dishes-14-assists-leads-atlanta-hawks-2-1-series-lead-new-york-knicks', '2021-05-28 22:06:05', '2021-05-29 11:13:46'),
(38, 'Report: Jays investigating new Alomar allegation', 'report:-jays-investigating-new-alomar-allegation', 'The Toronto Blue Jays have opened an investigation into a second allegation of sexual misconduct against Roberto Alomar, according to a report.', 'en', 1, 3, NULL, 'article', 0, 4, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31529417/toronto-blue-jays-investigation-new-sexual-misconduct-allegation-roberto-alomar', '2021-05-28 22:06:05', '2021-05-29 11:13:49'),
(39, 'Ja reflects on fan incidents; Snyder apologizes', 'ja-reflects-on-fan-incidents;-snyder-apologizes', 'Grizzlies star Ja Morant said it \"bothered\" him when he learned about the vulgar, racist remarks directed at his family by three Jazz fans. Utah coach Quin Snyder publicly apologized to Morant\'s family for the incident.', 'en', 1, 3, NULL, 'article', 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31529981/memphis-grizzlies-ja-morant-reflects-fan-incident-utah-quin-snyder-apologizes', '2021-05-28 22:06:05', '2021-05-29 11:13:53'),
(40, 'Yanks\' Urshela awarded walk after only 3 balls', 'yanks\'-urshela-awarded-walk-after-only-3-balls', 'Gio Urshela tossed his bat aside after taking ball three and headed to first. Nobody from the Tigers appeared to argue.', 'en', 1, 3, NULL, 'article', 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31529628/new-york-yankees-gio-urshela-awarded-walk-only-3-balls-vs-detroit-tigers', '2021-05-28 22:06:05', '2021-05-29 11:13:55'),
(41, 'Pulisic, Steffen making UCL final a fitting end to a great season for U.S.', 'pulisic,-steffen-making-ucl-final-a-fitting-end-to-a-great-season-for-u.s.', 'To date, just one American has won the Champions League: Jovan Kirovski, with Borussia Dortmund in 1996. That will change on Saturday.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/united-states-usa/story/4396418/christian-pulisiczack-steffen-in-champions-league-final-is-fitting-end-to-great-season-for-us-in-europe', '2021-05-28 19:32:47', '2021-05-29 11:13:56'),
(42, 'Ultimate Champions League preview: Storylines for Man City vs. Chelsea', 'ultimate-champions-league-preview:-storylines-for-man-city-vs.-chelsea', 'Who will claim European soccer\'s ultimate prize? We break down the things to watch for.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/uefa-champions-league/story/4395565/champions-league-winner-man-city-or-chelsea-guardiola-vs-tuchelfoden-vs-mountexpert-predictions', '2021-05-28 19:32:47', '2021-05-29 11:13:56'),
(43, '2021 draft: Mock drafts, rankings, order and analysis', '2021-draft:-mock-drafts,-rankings,-order-and-analysis', 'Who is the No. 1 prospect? Where does your favorite team pick?', 'en', 1, 3, NULL, 'article', 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31465786/2021-mlb-draft-mock-drafts-rankings-order-analysis', '2021-05-28 13:47:25', '2021-05-29 11:13:58'),
(44, 'Tim Tebow\'s makes transition, Trevor Lawrence rookie mistakes for Jaguars', 'tim-tebow\'s-makes-transition,-trevor-lawrence-rookie-mistakes-for-jaguars', 'The former QB made some positive plays, while the team\'s new QB endured expected struggles in the first OTA session open to the media.', 'en', 1, 3, NULL, 'article', 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/blog/jacksonville-jaguars/post/_/id/29229/tebows-transition-smooth-so-far-for-jaguars-lawrence-has-typical-rookie-qb-mistakes', '2021-05-28 04:30:17', '2021-05-29 11:14:04'),
(45, 'Bucs rookie Joe Tryon\'s plan for NFL money? Pay for his sister\'s school, mom\'s bills', 'bucs-rookie-joe-tryon\'s-plan-for-nfl-money?-pay-for-his-sister\'s-school,-mom\'s-bills', 'The first-round pick was driven to success by his family. Now he\'s ready to repay them.', 'en', 1, 3, NULL, 'article', 0, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/blog/tampa-bay-buccaneers/post/_/id/24897/what-will-bucs-rookie-joe-tryon-do-first-with-his-nfl-money-pay-for-his-sisters-school-moms-bills', '2021-05-28 04:30:17', '2021-05-29 11:14:06'),
(46, 'What\'s the latest on Deshaun Watson? Texans aren\'t tipping their hand', 'what\'s-the-latest-on-deshaun-watson?-texans-aren\'t-tipping-their-hand', 'Texans ownership has denied being \"Patriots South,\" but like their counterparts to the East, they are playing things close to the vest.', 'en', 1, 3, NULL, 'article', 0, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/blog/houston-texans/post/_/id/25702/whats-the-latest-on-deshaun-watson-texans-arent-tipping-their-hand', '2021-05-28 00:15:43', '2021-05-29 11:14:10'),
(47, 'Biggest surprises of the 2021 WNBA season so far: The good, the bad, the injuries', 'biggest-surprises-of-the-2021-wnba-season-so-far:-the-good,-the-bad,-the-injuries', 'Our panel breaks down the hits and misses of the season so far, as well as which players and absences are making the biggest impact across the WNBA.', 'en', 1, 3, NULL, 'article', 0, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/wnba/story/_/id/31515324/biggest-surprises-2021-wnba-season-far-good-bad-injuries', '2021-05-27 04:28:36', '2021-05-29 11:14:12'),
(48, 'A.J. Foyt, Mario Andretti, Rick Mears ... will Scott Dixon be an Indy 500 legend?', 'a.j.-foyt,-mario-andretti,-rick-mears-...-will-scott-dixon-be-an-indy-500-legend?', 'Scott Dixon raced to victory in the 2008 Indianapolis 500 and has finished second three times. But this year\'s pole sitter isn\'t bitter about his near misses -- he\'s thankful just to be there.', 'en', 1, 3, NULL, 'article', 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/racing/story/_/id/31522804/indianapolis-500-pole-sitter-scott-dixon-elusive-second-win-place-owes-nothing', '2021-05-28 03:21:04', '2021-05-29 11:14:15'),
(49, 'Ashwin opens up on sleepless nights during IPL after family members tested positive for Covid-19', 'ashwin-opens-up-on-sleepless-nights-during-ipl-after-family-members-tested-positive-for-covid-19', '\"I was playing matches without any sleep. Since I found it taxing, I had to quit IPL and go home midway\"\n', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264287.html?ex_cid=OTC-RSS', '2021-05-28 05:04:22', '2021-05-29 11:15:04'),
(50, 'Kusal Perera, Dushmantha Chameera prevent Bangladesh sweep', 'kusal-perera,-dushmantha-chameera-prevent-bangladesh-sweep', 'First points for Sri Lanka in ODI Super League; Bangladesh take series 2-1', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264286.html?ex_cid=OTC-RSS', '2021-05-28 09:35:13', '2021-05-29 11:15:05'),
(51, 'Conway: Williamson watching you bat from gully is pretty intimidating', 'conway:-williamson-watching-you-bat-from-gully-is-pretty-intimidating', 'The left-hand batter strengthened his chances of a Test debut with a half-century in the intra-squad warm-up game', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264281.html?ex_cid=OTC-RSS', '2021-05-28 10:32:12', '2021-05-29 11:15:05'),
(52, 'WTC final: India and New Zealand to share trophy in case of a draw or a tie', 'wtc-final:-india-and-new-zealand-to-share-trophy-in-case-of-a-draw-or-a-tie', 'Reserve day to be used only if time lost on first five days are not made up on those days', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264280.html?ex_cid=OTC-RSS', '2021-05-28 03:08:37', '2021-05-29 11:15:05'),
(53, 'Naseem Shah invited to rejoin PSL bubble despite Covid-19 protocol violation', 'naseem-shah-invited-to-rejoin-psl-bubble-despite-covid-19-protocol-violation', 'Quetta quick had initially arrived at the tournament hotel in Lahore with a non-compliant PCR test', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264262.html?ex_cid=OTC-RSS', '2021-05-27 23:52:21', '2021-05-29 11:15:05'),
(54, 'Jack Carson caters for the crowd as Ben Sanderson bosses Sussex once more ', 'jack-carson-caters-for-the-crowd-as-ben-sanderson-bosses-sussex-once-more', 'Young spinner shows vital all-round ability to withstand Northants onslaught', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264255.html?ex_cid=OTC-RSS', '2021-05-27 13:44:20', '2021-05-29 11:15:05'),
(55, 'Harry Duke puts \'em up with maiden fifty to save Yorkshire from Roses ignominy', 'harry-duke-puts-\'em-up-with-maiden-fifty-to-save-yorkshire-from-roses-ignominy', 'Teenage wicketkeeper produces fighting knock but Lancashire on top at close', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264254.html?ex_cid=OTC-RSS', '2021-05-27 13:46:30', '2021-05-29 11:15:06'),
(56, 'Middlesex demonstrate renewed batting grit as Callum Parkinson points to spinners\' impact', 'middlesex-demonstrate-renewed-batting-grit-as-callum-parkinson-points-to-spinners\'-impact', 'John Simpson finds late support to rescue another top-order wobble', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264253.html?ex_cid=OTC-RSS', '2021-05-27 13:37:58', '2021-05-29 11:15:06'),
(57, 'Hashim Amla plays the classics as Surrey faithful dance to his tune', 'hashim-amla-plays-the-classics-as-surrey-faithful-dance-to-his-tune', 'Captain\'s knock revives Surrey after table-toppers make early running', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264252.html?ex_cid=OTC-RSS', '2021-05-28 06:19:39', '2021-05-29 11:15:06'),
(58, 'Jack Haynes 97 puts Worcestershire on front foot against Derbyshire ', 'jack-haynes-97-puts-worcestershire-on-front-foot-against-derbyshire', 'Young batter reaches career-best score but falls short of maiden hundred', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264251.html?ex_cid=OTC-RSS', '2021-05-27 13:33:18', '2021-05-29 11:15:06'),
(59, 'Crowd at Edgbaston evokes feelings of first day of summer', 'crowd-at-edgbaston-evokes-feelings-of-first-day-of-summer', 'Will Rhodes leads the way for hosts with 91 before Dane Paterson\'s triple strike edges Notts ahead', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264250.html?ex_cid=OTC-RSS', '2021-05-27 14:21:51', '2021-05-29 11:15:06'),
(60, 'Essex rise from 182 all out to take control against Durham', 'essex-rise-from-182-all-out-to-take-control-against-durham', 'Hosts fluff their lines in response to meagre first innings as 16 wickets fall in a day', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264249.html?ex_cid=OTC-RSS', '2021-05-28 01:17:06', '2021-05-29 11:15:06'),
(61, 'Netherlands to debut in Super League with three ODIs against Ireland', 'netherlands-to-debut-in-super-league-with-three-odis-against-ireland', 'Team will be missing key players like van der Merwe and ten Doeschate who have not been released by their counties', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264237.html?ex_cid=OTC-RSS', '2021-05-27 10:47:04', '2021-05-29 11:15:06'),
(62, 'Gayle returns to Patriots; Shakib back with Tallawahs', 'gayle-returns-to-patriots;-shakib-back-with-tallawahs', 'All squads will be revealed at the CPL draft that will take place on Friday', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264233.html?ex_cid=OTC-RSS', '2021-05-27 08:38:04', '2021-05-29 11:15:06'),
(63, 'Ashley Giles: No official request for England to accommodate IPL restart', 'ashley-giles:-no-official-request-for-england-to-accommodate-ipl-restart', 'England players unlikely to be released for tournament restart, says ECB director of cricket', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264231.html?ex_cid=OTC-RSS', '2021-05-27 12:14:59', '2021-05-29 11:15:07'),
(64, 'Why did Kyrie Irving leave the Celtics? How Boston disappointment led to Nets signing in 2019 free agency', 'why-did-kyrie-irving-leave-the-celtics?-how-boston-disappointment-led-to-nets-signing-in-2019-free-agency', '<p>Kyrie Irving said before the 2018-19 season that he was going to stay with the Celtics. That didn\'t end up happening. Here\'s why.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/kyrie-irving-celtics-nets-signing/w0xixdmvtl6n139m91zzc1ors', '2021-05-28 13:28:51', '2021-05-29 11:15:20'),
(65, 'Marcus Smart immediately contradicts Danny Ainge\'s comments about Kyrie Irving, racism', 'marcus-smart-immediately-contradicts-danny-ainge\'s-comments-about-kyrie-irving,-racism', '<p>Danny Ainge was evidently surprised that Kyrie Irving alleged \"subtle racism\" among Boston fans. The Celtics\' GM said that he has \"never heard that\" from any Celtics player. Apparently, he didn\'t ask Marcus Smart.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/celtics-marcus-smart-danny-ainge-comments-kyrie-irving/1923x595g2bg312hdgxjgh4rna', '2021-05-28 05:12:12', '2021-05-29 11:15:21'),
(66, 'Patriots long snapper Joe Cardona\'s steady career a model for academy players to follow', 'patriots-long-snapper-joe-cardona\'s-steady-career-a-model-for-academy-players-to-follow', '<p>Joe Cardona leads a dual life in the NFL, but he\'s found a balance between long snapper and naval officer.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/patriots-long-snapper-joe-cardona-naval-academy-nfl-players/1hsod9k6u75r81a5jz0snkfuo6', '2021-05-28 14:37:49', '2021-05-29 11:15:21'),
(67, 'Massimiliano Allegri back as Juventus manager after Andrea Pirlo departure', 'massimiliano-allegri-back-as-juventus-manager-after-andrea-pirlo-departure', '<p>Massimiliano Allegri officially made his return to Juventus, two years after his first stint in charge. He takes over for Andrea Pirlo, who will not be returning after one year at the helm.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/massimiliano-allegri-back-as-juventus-manager-andrea-pirlo/a5wehni9adgl1vhe8ibcv3f5b', '2021-05-28 05:04:58', '2021-05-29 11:15:21'),
(68, 'WWE reportedly \'in talks\' with NJPW to establish a \'working relationship\'', 'wwe-reportedly-\'in-talks\'-with-njpw-to-establish-a-\'working-relationship\'', '<p>Could WWE and NJPW soon have a strategic partnership? According to the latest WWE news, one could be in the works between the American and Japanese wrestling leaders.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/wwe/news/wwe-in-talks-with-njpw/m2l0e9l68zz81phnszo0zr48i', '2021-05-28 04:34:02', '2021-05-29 11:15:21'),
(69, 'Liverpool transfer news: Latest player signings, reports and rumors for 2021-2022 season', 'liverpool-transfer-news:-latest-player-signings,-reports-and-rumors-for-2021-2022-season', '<p>Liverpool FC addressed a key need by acquiring 22-year-old RB Leipzig center back Ibrahima Konate. The France Under-21 international will boost a squad that was decimated by injuries to its defensive corps.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/liverpool-transfer-news-latest-player-signings-reports-rumors/1sndkhmb6h7uj1xbcs6d5pl0en', '2021-05-28 04:09:22', '2021-05-29 11:15:22'),
(70, 'Brandon Jacobs inspired by Tim Tebow to start comeback with position change: \'Just give me one chance\'', 'brandon-jacobs-inspired-by-tim-tebow-to-start-comeback-with-position-change:-\'just-give-me-one-chance\'', '<p>Former Giants Super Bowl-winning running back Brandon Jacobs is looking to make an NFL comeback at a new position after seeing Tim Tebow do the same with the Jaguars.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/brandon-jacobs-comeback-tim-tebow/1m35rpzc942tvzp3y9sns1oqn', '2021-05-28 07:00:29', '2021-05-29 11:15:22'),
(71, 'French Open schedule 2021: Full draws, TV coverage, channels & more to watch every tennis match', 'french-open-schedule-2021:-full-draws,-tv-coverage,-channels-&-more-to-watch-every-tennis-match', '<p>Here\'s everything you need to know about watching the 2021 French Open, including a full TV schedule and live-streaming information.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/tennis/news/french-open-2021-schedule-watch-coverage-channels/zwe3r1phjx4e1xfh8x2uhrj0z', '2021-05-28 03:12:09', '2021-05-29 11:15:22'),
(72, 'Andrea Pirlo out as Juventus manager', 'andrea-pirlo-out-as-juventus-manager', '<p>Italian giants Juventus officially announced that Andrea Pirlo would not be returning to the club after a debut season as head coach that saw the team miss out on the UEFA Champions League and Serie A championship.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/andrea-pirlo-out-as-juventus-manager/37yekrcxzdh61erai6mcw2au2', '2021-05-28 05:08:40', '2021-05-29 11:15:22'),
(73, 'Will Christian Pulisic start for Chelsea in Champions League final? Tackling the big question facing U.S. soccer\'s biggest star', 'will-christian-pulisic-start-for-chelsea-in-champions-league-final?-tackling-the-big-question-facing-u.s.-soccer\'s-biggest-star', '<p>U.S. national team star Christian Pulisic has made it abundantly clear he wants to be a regular starter for Chelsea. The UEFA Champions League final against Manchester City could be the opportunity for him to cement that role as the club\'s undisputed difference maker.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/christian-pulisic-start-chelsea-champions-league/sc4idwkvj8tl10kk88ycbjnhb', '2021-05-28 02:29:08', '2021-05-29 11:15:22'),
(74, 'Christian Pulisic in Champions League final: USMNT pioneers on the next step forward for American soccer', 'christian-pulisic-in-champions-league-final:-usmnt-pioneers-on-the-next-step-forward-for-american-soccer', '<p>U.S. national team star Christian Pulisic is set to become the first male American player to take the field in a UEFA Champions League final. It\'s a big deal as far as milestones in American soccer history.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/christian-pulisic-champions-league-final-usmnt-soccer/26gcga0ocohp1ruezguhxf4sw', '2021-05-28 02:28:57', '2021-05-29 11:15:22'),
(75, 'Can Champions League glory launch Christian Pulisic into crossover stardom?', 'can-champions-league-glory-launch-christian-pulisic-into-crossover-stardom?', '<p>Christian Pulisic is recognized as a world-class soccer talent with Chelsea. As he prepares to play the UEFA Champions League final against Manchester City, what will it take for Pulisic to turn into a crossover soccer star?</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-christian-pulisic-crossover-stardom/1qatzw0d2zass1kazclk3do85z', '2021-05-28 05:02:44', '2021-05-29 11:15:23'),
(76, 'When will Noah Syndergaard return to Mets? Latest news, injury updates after Tommy John setback', 'when-will-noah-syndergaard-return-to-mets?-latest-news,-injury-updates-after-tommy-john-setback', '<p>Noah Syndergaard\'s return from Tommy John surgery has been delayed by elbow inflammation. When will he return to the diamond? And what\'s the latest news on his injury? Sporting News has all the latest injury updates about the Mets pitcher.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/mlb/news/noah-syndergaard-injury-update-return-mets/16dh0z5ay0nas10p12p2xumnhg', '2021-05-28 12:55:03', '2021-05-29 11:15:23'),
(77, 'Cardinals\' Mike Shildt says umpires picked the wrong time and pitcher to air MLB\'s \'dirty little secret\'', 'cardinals\'-mike-shildt-says-umpires-picked-the-wrong-time-and-pitcher-to-air-mlb\'s-\'dirty-little-secret\'', '<p>The St. Louis manager was upset that umpires went after a clean pitcher on his team when pitchers on other teams are blatantly cheating.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/mlb/news/mike-shildt-cardinals-mlb-dirty-little-secret/18ehkae8z14a9161z1s275ije7', '2021-05-28 02:04:56', '2021-05-29 11:15:23'),
(78, 'Real Madrid\'s top candidates to replace Zinedine Zidane as manager', 'real-madrid\'s-top-candidates-to-replace-zinedine-zidane-as-manager', '<p>After the departure of Zinedine Zidane, there are four names circulated as potential replacements: Raul Gonzalez, Xabi Alonso, Antonio Conte and Mauricio Pochettino. But one of the four jumps out from the rest.</p>', 'en', 1, 1, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/real-madrid-manager-candidates-zinedine-zidane/izwu5br7jt0w1rvf5r39hjihd', '2021-05-28 02:03:03', '2021-05-29 11:15:23'),
(79, 'The state of the KHL: Busting myths, international expansion, crossover NHL events, more', 'the-state-of-the-khl:-busting-myths,-international-expansion,-crossover-nhl-events,-more', 'As the Stanley Cup playoffs proceed in North America, we check in on the status of the Russia-based pro league.', 'en', 1, 3, NULL, 'article', 0, 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nhl/story/_/id/31515257/the-state-khl-2021-busting-myths-international-expansion-crossover-nhl-events-more', '2021-05-28 03:02:23', '2021-05-29 11:16:55'),
(80, 'Why it\'s unlikely that Kane will leave Tottenham', 'why-it\'s-unlikely-that-kane-will-leave-tottenham', 'It\'s all about leverage -- in business, in sports, in life. And when it comes to Harry Kane and a move away from Spurs, he simply has very little.', 'en', 1, 3, NULL, 'article', 0, 14, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/soccer-transfers/story/4396347/harry-kane-unlikely-to-leave-tottenham-englands-captain-has-no-leverage-in-a-depressedflooded-transfer-market', '2021-05-28 01:46:38', '2021-05-29 11:16:58'),
(81, 'Real Madrid Keep or Dump: Ramos, Varane, Hazard to go? Bale to stay?', 'real-madrid-keep-or-dump:-ramos,-varane,-hazard-to-go?-bale-to-stay?', 'Real Madrid\'s aging squad needs a refresh and Sergio Ramos may leave, with David Alaba arriving.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/real-madrid/story/4381111/real-madrid-keep-or-dump-ramosvaranehazard-to-go-bale-to-stay', '2021-05-28 01:46:38', '2021-05-29 11:16:58'),
(82, 'Ringside Seat: Haney on \'another level\' and ready for next step; Donaire still a top fighter', 'ringside-seat:-haney-on-\'another-level\'-and-ready-for-next-step;-donaire-still-a-top-fighter', 'Devin Haney believes he\'s a top 135-pounder, but Jorge Linares will have something to say about that.', 'en', 1, 3, NULL, 'article', 0, 15, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/boxing/story/_/id/31520987/devin-haney-another-level-ready-next-step-nonito-donaire-top-fighter', '2021-05-28 02:01:14', '2021-05-29 11:17:02'),
(83, 'French Open preview: The King of Clay, Serena\'s ongoing quest, Roger\'s return and more', 'french-open-preview:-the-king-of-clay,-serena\'s-ongoing-quest,-roger\'s-return-and-more', 'Which players do you need to watch at the year\'s second major? (Spoiler alert: One rhymes with Nafael Radal.) And will any of the 2020 Cinderellas be able to replicate their success?', 'en', 1, 3, NULL, 'article', 0, 16, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/tennis/story/_/id/31516789/2021-french-open-storylines-rafael-nadal-serena-williams-take-center-stage', '2021-05-28 09:50:17', '2021-05-29 11:17:04');
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `language`, `user_id`, `category_id`, `sub_category_id`, `post_type`, `submitted`, `image_id`, `visibility`, `auth_required`, `slider`, `slider_order`, `featured`, `featured_order`, `breaking`, `breaking_order`, `recommended`, `recommended_order`, `editor_picks`, `editor_picks_order`, `scheduled`, `meta_title`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `video_id`, `video_url_type`, `video_url`, `video_thumbnail_id`, `status`, `total_hit`, `contents`, `read_more_link`, `created_at`, `updated_at`) VALUES
(84, 'Ashley Giles: England will be conservative with Jofra Archer\'s comeback', 'ashley-giles:-england-will-be-conservative-with-jofra-archer\'s-comeback', '\'I\'m very confident we\'ll get him back, and get him back as we\'ve seen Jofra in the past,\' Giles says\n', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264225.html?ex_cid=OTC-RSS', '2021-05-27 06:15:17', '2021-05-29 11:31:44'),
(85, 'Door not closed on Sri Lanka seniors - Mickey Arthur', 'door-not-closed-on-sri-lanka-seniors---mickey-arthur', 'Batting coach Grant Flower reckons SL\'s inexperience has played a role in their first series loss against Bangladesh', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264223.html?ex_cid=OTC-RSS', '2021-05-27 10:09:57', '2021-05-29 11:31:44'),
(86, 'Sri Lanka search for answers as Bangladesh eye clean sweep', 'sri-lanka-search-for-answers-as-bangladesh-eye-clean-sweep', 'Sri Lanka\'s top order have lacked runs, while Bangladesh\'s bowlers have hunted in a pack', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264215.html?ex_cid=OTC-RSS', '2021-05-27 05:41:45', '2021-05-29 11:31:44'),
(87, 'Jofra Archer: \'If I don\'t get this right, I won\'t play any cricket. Period\'', 'jofra-archer:-\'if-i-don\'t-get-this-right,-i-won\'t-play-any-cricket.-period\'', 'The England quick, who underwent elbow surgery last week, insists he is placing no timeframe on his recovery\n', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264210.html?ex_cid=OTC-RSS', '2021-05-27 04:01:10', '2021-05-29 11:31:44'),
(88, 'Mehidy Hasan Miraz on his rise to No. 2 in the ODI rankings: \'I focused on economy rate\'', 'mehidy-hasan-miraz-on-his-rise-to-no.-2-in-the-odi-rankings:-\'i-focused-on-economy-rate\'', '\'I planned so that the batsmen couldn\'t dominate me, even if I didn\'t take wickets,\' says Bangladesh offspinner', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264187.html?ex_cid=OTC-RSS', '2021-05-26 08:57:29', '2021-05-29 11:31:44'),
(89, 'Smriti Mandhana: \'Never felt I would experience a day-night Test\'', 'smriti-mandhana:-\'never-felt-i-would-experience-a-day-night-test\'', 'Before she can think of the pink ball, however, her immediate focus is on tackling the Dukes ball in England', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264181.html?ex_cid=OTC-RSS', '2021-05-26 08:24:36', '2021-05-29 11:31:44'),
(90, 'Ben Foakes out of New Zealand Tests after tearing hamstring in dressing-room accident', 'ben-foakes-out-of-new-zealand-tests-after-tearing-hamstring-in-dressing-room-accident', 'James Bracey set to debut behind stumps, as England call up Billings, Hameed', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264152.html?ex_cid=OTC-RSS', '2021-05-26 08:26:48', '2021-05-29 11:31:44'),
(91, 'Alex Wakely, Northants\' two-time T20-winning captain, retires from professional cricket', 'alex-wakely,-northants\'-two-time-t20-winning-captain,-retires-from-professional-cricket', 'Wakely captained an unfancied side to 2013 and 2016 titles', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264112.html?ex_cid=OTC-RSS', '2021-05-26 14:20:08', '2021-05-29 11:31:45'),
(92, 'Mehidy Hasan Miraz rises up to No.2 in  ODI bowler rankings', 'mehidy-hasan-miraz-rises-up-to-no.2-in-odi-bowler-rankings', 'Mustafizur Rahman also breaks into the top ten, while Mushfiqur Rahim climbs to No.14 among batters', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264103.html?ex_cid=OTC-RSS', '2021-05-26 04:12:33', '2021-05-29 11:31:45'),
(93, 'Jofra Archer faces fitness race for first India Test after elbow surgery', 'jofra-archer-faces-fitness-race-for-first-india-test-after-elbow-surgery', 'Fast bowler to start \"intensive rehabilitation period\" before review in four weeks', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264101.html?ex_cid=OTC-RSS', '2021-05-26 03:21:35', '2021-05-29 11:31:45'),
(94, 'Edgbaston Test: Spectators to be allowed at up to 70% capacity', 'edgbaston-test:-spectators-to-be-allowed-at-up-to-70%-capacity', 'It is understood that spectators only need to wear masks when moving around inside the ground', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264092.html?ex_cid=OTC-RSS', '2021-05-26 06:22:37', '2021-05-29 11:31:45'),
(95, 'New Zealand Women contracts: Thamsyn Newton back, Brooke Halliday among three new faces', 'new-zealand-women-contracts:-thamsyn-newton-back,-brooke-halliday-among-three-new-faces', 'Katie Perkins, Holly Huddleston, Anna Peterson and Natalie Dodd left out of the list', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264079.html?ex_cid=OTC-RSS', '2021-05-25 23:46:51', '2021-05-29 11:31:45'),
(96, 'Kyle Jamieson banking on the experience of his fellow pacers for England tour', 'kyle-jamieson-banking-on-the-experience-of-his-fellow-pacers-for-england-tour', 'Fast bowler also \"mindful\" of not wanting \"to go searching too much\" with the Dukes ball', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264074.html?ex_cid=OTC-RSS', '2021-05-25 23:02:34', '2021-05-29 11:31:45'),
(97, 'Coconut water, ice collars, lighter kits: How the PSL plans to beat the Abu Dhabi heat', 'coconut-water,-ice-collars,-lighter-kits:-how-the-psl-plans-to-beat-the-abu-dhabi-heat', 'Teams bracing for a \"difficult but not impossible\" time as temperatures expected to rise to  40 degrees Celsius during the day', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264069.html?ex_cid=OTC-RSS', '2021-05-25 23:02:54', '2021-05-29 11:31:45'),
(98, 'CPL 2021: Mohammad Amir to play for Barbados, Shoaib Malik returns to Guyana', 'cpl-2021:-mohammad-amir-to-play-for-barbados,-shoaib-malik-returns-to-guyana', 'Nepal spinner Sandeep Lamichhane will pair up with defending champions Trinbago Knight Riders', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264062.html?ex_cid=OTC-RSS', '2021-05-25 11:55:55', '2021-05-29 11:31:45'),
(99, 'Australia to tour Bangladesh for five T20Is in August', 'australia-to-tour-bangladesh-for-five-t20is-in-august', 'Bangladesh are also slated to host New Zealand and England ahead of the T20 World Cup', 'en', 1, 2, NULL, 'article', 0, 17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264043.html?ex_cid=OTC-RSS', '2021-05-25 08:32:02', '2021-05-29 11:33:40'),
(100, 'BCCI mulls September-October window for remainder of IPL 2021', 'bcci-mulls-september-october-window-for-remainder-of-ipl-2021', 'This, however, could require a rejigging of various boards\' calendars', 'en', 1, 2, NULL, 'article', 0, 18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264041.html?ex_cid=OTC-RSS', '2021-05-25 08:12:12', '2021-05-29 11:33:49'),
(101, 'Taskin Ahmed steps in as concussion sub for Mohammad Saifuddin', 'taskin-ahmed-steps-in-as-concussion-sub-for-mohammad-saifuddin', 'First instance of a concussion substitute being used in a men\'s ODI', 'en', 1, 2, NULL, 'article', 0, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264038.html?ex_cid=OTC-RSS', '2021-05-25 23:34:41', '2021-05-29 11:34:01'),
(102, 'PSL 2021: Quetta Gladiators\' Anwar Ali tests positive for Covid-19, to miss flight to Abu Dhabi', 'psl-2021:-quetta-gladiators\'-anwar-ali-tests-positive-for-covid-19,-to-miss-flight-to-abu-dhabi', 'The cricketer will now isolate in a hotel room in Karachi for a minimum of ten days', 'en', 1, 2, NULL, 'article', 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264030.html?ex_cid=OTC-RSS', '2021-05-25 05:31:23', '2021-05-29 11:34:14'),
(103, 'Mushfiqur, bowlers help Bangladesh record maiden series win over Sri Lanka', 'mushfiqur,-bowlers-help-bangladesh-record-maiden-series-win-over-sri-lanka', 'Bangladesh atop World Cup Super League points table ', 'en', 1, 2, NULL, 'article', 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264013.html?ex_cid=OTC-RSS', '2021-05-25 10:35:30', '2021-05-29 11:34:24'),
(104, '\'The world stops a little bit\' - emotional Tim Seifert recounts Covid-19 experience', '\'the-world-stops-a-little-bit\'---emotional-tim-seifert-recounts-covid-19-experience', '\"When everyone left and I was the only overseas player left in India, that\'s when it got real for me\"\n', 'en', 1, 2, NULL, 'article', 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264011.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:34:37'),
(105, 'George Dockrell and William Porterfield win ODI recalls for Ireland squad to play Netherlands', 'george-dockrell-and-william-porterfield-win-odi-recalls-for-ireland-squad-to-play-netherlands', 'Batting form behind Dockrell\'s return; Graeme McCarter also in 15-man squad', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263995.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:36:04'),
(106, 'India women players finally set to receive T20 World Cup prize money', 'india-women-players-finally-set-to-receive-t20-world-cup-prize-money', 'The BCCI on Monday asked the players to raise invoices to get their share', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263994.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:37:52'),
(107, 'Shahid Afridi, Naseem Shah ruled out of PSL ', 'shahid-afridi,-naseem-shah-ruled-out-of-psl', 'Afridi was ruled out with a back injury, while a Covid-19 violation cost Naseem Shah his involvement in the league', 'en', 1, 2, NULL, 'article', 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263993.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:39:27'),
(108, 'Katie Levick battles suspected long Covid ahead of season start', 'katie-levick-battles-suspected-long-covid-ahead-of-season-start', 'Northern Diamonds legspinner says she\'s \"at the other end now and keen to get back on the pitch\"', 'en', 1, 2, NULL, 'article', 0, 24, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263990.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:40:20'),
(109, 'Sri Lanka look to arrest slide as Bangladesh eye series win', 'sri-lanka-look-to-arrest-slide-as-bangladesh-eye-series-win', 'The visitors are currently 12th on the ODI Super League table with no wins in four games', 'en', 1, 2, NULL, 'article', 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263987.html?ex_cid=OTC-RSS', '2021-05-25 04:09:35', '2021-05-29 11:40:53'),
(110, 'BCCI to donate 2000 oxygen concentrators towards India\'s Covid relief', 'bcci-to-donate-2000-oxygen-concentrators-towards-india\'s-covid-relief', 'Meanwhile, the Pandya brothers are also dispatching oxygen concentrators to the centres dealing with the crisis', 'en', 1, 2, NULL, 'article', 0, 26, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263986.html?ex_cid=OTC-RSS', '2021-05-25 04:08:21', '2021-05-29 11:41:46'),
(111, 'Nick Gubbins, Peter Handscomb give Middlesex a sniff before intoxicating final day ends in draw', 'nick-gubbins,-peter-handscomb-give-middlesex-a-sniff-before-intoxicating-final-day-ends-in-draw', 'Group Two strugglers dig deep after Surrey dangle carrot but chase fizzles out after drizzle', 'en', 1, 2, NULL, 'article', 0, 27, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263972.html?ex_cid=OTC-RSS', '2021-05-23 15:16:42', '2021-05-29 11:42:59'),
(112, 'Will Aaron Rodgers leave the Packers? Six scenarios that could unfold after June 1', 'will-aaron-rodgers-leave-the-packers?-six-scenarios-that-could-unfold-after-june-1', '<p>What will the Packers and Aaron Rodgers do after June 1? That\'s the big question heading into the summer.</p>', 'en', 1, 1, NULL, 'article', 0, 28, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nfl/news/aaron-rodgers-packers-scenarios/11u6g8y399t2y1dltqog07qogk', '2021-05-28 02:01:16', '2021-05-29 12:08:24'),
(113, 'Canadiens vs. Leafs Game 6 ticket prices range in the thousands', 'canadiens-vs.-leafs-game-6-ticket-prices-range-in-the-thousands', '<p>The Stanley Cup playoff game will be the first with fans in Canada since before the pandemic. Bell Centre will host up to 2,500 spectators.</p>', 'en', 1, 1, NULL, 'article', 0, 29, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/canadiens-leafs-game-6-ticket-prices/1xply7s5kog8c1jbusvi4o029k', '2021-05-28 01:44:20', '2021-05-29 12:08:40'),
(114, 'Canadiens vs. Maple Leafs score, results: Montreal wins in OT after being up 3-0, sends series to Game 6', 'canadiens-vs.-maple-leafs-score,-results:-montreal-wins-in-ot-after-being-up-3-0,-sends-series-to-game-6', '<p>After seeing their 3-0 lead evaporate, the Canadiens win in overtime and send the series to a Game 6 on Saturday.</p>', 'en', 1, 1, NULL, 'article', 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/canadiens-maple-leafs-live-score-updates-highlights-game-5-stanley-cup-playoffs/1xloeosr38xmq1jhnjqecfg88i', '2021-05-28 01:44:05', '2021-05-29 12:08:48'),
(115, 'Here are the 5 closest Indianapolis 500 finishes in race history', 'here-are-the-5-closest-indianapolis-500-finishes-in-race-history', '<p>Nothing is better than a photo finish at the Indianapolis 500. Here\'s a breakdown of the five closest margins of victory in Indy 500 history.</p>', 'en', 1, 1, NULL, 'article', 0, 31, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'https://www.sportingnews.com/us/nascar/news/indianapolis-500-closest-finishes/d6b7dvust40k1qrgdmqfop200', '2021-05-28 01:39:38', '2021-05-29 12:08:56'),
(116, 'Fastest Indy 500 drivers: A history of speed in the race leading up to its 105th running', 'fastest-indy-500-drivers:-a-history-of-speed-in-the-race-leading-up-to-its-105th-running', '<p>Take a look at how the race has evolved over the years in speed.</p>', 'en', 1, 1, NULL, 'article', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-fastest-lap-average-speed/4m8rfylp5wjy1od56j7dd63em', '2021-05-28 01:39:26', '2021-05-29 12:09:04'),
(117, 'Indy 500 fan attendance, laps, drivers & everything else to know about the 2021 race', 'indy-500-fan-attendance,-laps,-drivers-&-everything-else-to-know-about-the-2021-race', '<p>Here is a complete guide to the 2021 Indy 500, including Indianapolis Motor Speedway\'s fan attendance policy, the length of the race, the drivers competing and the national anthem singer.</p>', 'en', 1, 1, NULL, 'article', 0, 33, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-2021-attendance-laps-drivers/1tppgk6mecobj1niuktuk1svfs', '2021-05-28 01:39:52', '2021-05-29 12:09:13'),
(118, 'Who will win the Indy 500 in 2021? Odds, expert picks & betting favorites for race at Indianapolis', 'who-will-win-the-indy-500-in-2021?-odds,-expert-picks-&-betting-favorites-for-race-at-indianapolis', '<p>Here are the complete odds to win Sunday\'s Indy 500 at Indianapolis Motor Speedway.</p>', 'en', 1, 1, NULL, 'article', 0, 34, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-odds-picks-favorites-2021/yf73kbzai2ty1mge8mbtqhcr2', '2021-05-28 01:38:25', '2021-05-29 12:09:20'),
(119, 'Indy 500 qualifying results: Pole, starting lineup for 2021 race at Indianapolis', 'indy-500-qualifying-results:-pole,-starting-lineup-for-2021-race-at-indianapolis', '<p>The 2021 Indy 500 will start with one of the sport\'s best drivers on the pole.</p>', 'en', 1, 1, NULL, 'article', 0, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-qualifying-2021-results-pole-starting-lineup-indianapolis/1hjdwozg8axip1513pplm1d5f9', '2021-05-28 01:38:12', '2021-05-29 12:09:29'),
(120, 'Chelsea vs. Manchester City odds, picks, predictions for 2021 Champions League final', 'chelsea-vs.-manchester-city-odds,-picks,-predictions-for-2021-champions-league-final', '<p>The 2021 Champions League final between two English heavyweights in Manchester City and Chelsea should be evenly balanced, but there are some standout trends to watch.</p>', 'en', 1, 1, NULL, 'article', 0, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-final-2021-odds-predictions/fxnhc9cwzl7015lcxk6jo4lbe', '2021-05-28 01:32:25', '2021-05-29 12:09:36'),
(121, 'Champions League final 2021: Date, time, odds, TV schedule & location for Chelsea vs. Manchester City', 'champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '<p>Here is a complete guide to the 2021 UEFA Champions League final between Chelsea and Manchester City, including the start time and channel for viewers in the United States plus updated betting odds.</p>', 'en', 1, 1, NULL, 'article', 0, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-final-2021-chelsea-manchester-city/b22cg0lfkv921ck97bt9kokh3', '2021-05-28 01:32:16', '2021-05-29 12:09:45'),
(122, 'Champions League live streams: How to watch 2021 UEFA soccer final online in USA', 'champions-league-live-streams:-how-to-watch-2021-uefa-soccer-final-online-in-usa', '<p>How can you watch the UEFA Champions League final between Manchester City and Chelsea? Sporting News has you covered with all the answers ahead of one of soccer\'s biggest tournaments of the year.</p>', 'en', 1, 1, NULL, 'article', 0, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-live-streams-usa/1olc79ww2vak81odo3fvw2tk2q', '2021-05-28 01:26:38', '2021-05-29 12:09:52'),
(123, 'Champions League prize money breakdown: How much do the winners get in 2021?', 'champions-league-prize-money-breakdown:-how-much-do-the-winners-get-in-2021?', '<p>The UEFA Champions League is the most lucrative cup competition in the world and the finalists will reap the biggest cash infusion of the tournament: a cool $23.18 million will go to the winner between Manchester City and Chelsea.</p>', 'en', 1, 1, NULL, 'article', 0, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-prize-money-breakdown-how-much-do-the-winners-get-in-2021/5i1j0n2hh9r01ffvgqfsp541l', '2021-05-28 01:26:26', '2021-05-29 12:10:01'),
(124, 'NBA playoff bracket 2021: Updated TV schedule, scores, results for Round 1', 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', '<p>Here\'s the complete bracket for the 2021 NBA playoffs, including start times, TV channels and scores for every game.</p>', 'en', 1, 1, NULL, 'article', 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 6, NULL, 'https://www.sportingnews.com/us/nba/news/nba-playoff-bracket-2021-schedule-scores-round-1/aet9rpwszeb17xx3zf2urdhy', '2021-05-28 21:31:12', '2021-05-29 12:10:10'),
(125, 'NBA playoff games today 2021: Live scores, TV schedule & more to watch Saturday\'s matchups', 'nba-playoff-games-today-2021:-live-scores,-tv-schedule-&-more-to-watch-saturday\'s-matchups', '<p>Here\'s everything to know about watching NBA playoff games, including a complete TV schedule for today\'s slate.</p>', 'en', 1, 1, NULL, 'article', 0, 41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/nba-playoff-games-today-2021-scores-schedule/pfk47eoncemt1cstzhvvip64z', '2021-05-28 21:26:55', '2021-05-29 12:10:20'),
(126, 'NBA playoff schedule 2021: Full bracket, dates, times, TV channels for play-in, playoff games', 'nba-playoff-schedule-2021:-full-bracket,-dates,-times,-tv-channels-for-play-in,-playoff-games', '<p>Here\'s everything you need to know about watching the 2021 NBA playoffs, including TV schedules for play-in and playoff games.</p>', 'en', 1, 1, NULL, 'article', 0, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/nba-playoff-schedule-2021-bracket-dates-channels/lgshedeg1xr01ribq0hn6rd04', '2021-05-28 21:28:27', '2021-05-29 12:10:36'),
(127, 'How long is John Tavares out? Injury timeline, return date, latest updates on Maple Leafs captain', 'how-long-is-john-tavares-out?-injury-timeline,-return-date,-latest-updates-on-maple-leafs-captain', '<p>John Tavares suffered a concussion against the Canadiens. How long will the Leafs captain be out? Here are the latest updates on his condition.</p>', 'en', 1, 1, NULL, 'article', 0, 43, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/how-long-is-john-tavares-out-injury-timeline-return-date-latest-updates-on-maple-leafs/l4paitnc3qzt1dnag76b475d0', '2021-05-29 03:24:20', '2021-05-29 13:22:36'),
(128, 'Chelsea vs. Manchester City payroll breakdown: Champions League final is a battle of super-rich clubs', 'chelsea-vs.-manchester-city-payroll-breakdown:-champions-league-final-is-a-battle-of-super-rich-clubs', '<p>Chelsea and Manchester City built super clubs over more than a decade. Their investments, spending power and their ability to develop talent have made them world forces and they don\'t look to be slowing down any time soon.</p>', 'en', 1, 1, NULL, 'article', 0, 44, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/chelsea-manchester-city-payroll-breakdown/toxkxkgplero1whm7rn5j17gh', '2021-05-29 03:16:32', '2021-05-29 13:22:46'),
(129, 'Indy 500 purse, payout breakdown: How much prize money does the winner get in 2021?', 'indy-500-purse,-payout-breakdown:-how-much-prize-money-does-the-winner-get-in-2021?', '<p>What is the potential payday for the winner of this year\'s Indy 500?</p>', 'en', 1, 1, NULL, 'article', 0, 45, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-purse-payout-2021-prize-money/19932p9yh3f6i185tfh5nfi02j', '2021-05-29 03:08:01', '2021-05-29 13:22:56'),
(130, 'How to watch Champions League in the USA: Full TV schedule for 2021 on CBS channels, live streams', 'how-to-watch-champions-league-in-the-usa:-full-tv-schedule-for-2021-on-cbs-channels,-live-streams', '<p>Here is a complete guide to watching 2021 UEFA Champions League games in the United States, including start times and TV channels plus live-streaming information for games exclusive to Paramount+.</p>', 'en', 1, 1, NULL, 'article', 0, 46, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-2021-schedule-channel-watch-in-usa/1ckbw02nmx5131aqqp4csx7xwc', '2021-05-29 02:47:34', '2021-05-29 13:23:09'),
(131, 'Chelsea vs. Manchester City betting odds, picks, predictions for 2021 Champions League final', 'chelsea-vs.-manchester-city-betting-odds,-picks,-predictions-for-2021-champions-league-final', '<p>The 2021 Champions League final between two English heavyweights in Manchester City and Chelsea should be evenly balanced, but there are some standout trends to watch.</p>', 'en', 1, 1, NULL, 'article', 0, 47, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-final-2021-odds-predictions/fxnhc9cwzl7015lcxk6jo4lbe', '2021-05-29 02:50:22', '2021-05-29 13:23:18'),
(132, 'Where is the Champions League final in 2021? Location, fan attendance, tickets & why it was moved', 'where-is-the-champions-league-final-in-2021?-location,-fan-attendance,-tickets-&-why-it-was-moved', '<p>Here\'s everything you need to know about the Champions League final, and why it moved from Istanbul, Turkey, to Porto, Portugal.</p>', 'en', 1, 1, NULL, 'article', 0, 48, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/champions-league-final-2021-location-fans-tickets/1euwma0gcqn4b13na2wa4uxfg8', '2021-05-29 02:36:09', '2021-05-29 13:23:30'),
(133, 'Suns\' Chris Paul is painfully aware of his playoff history with referee Scott Foster', 'suns\'-chris-paul-is-painfully-aware-of-his-playoff-history-with-referee-scott-foster', '<p>Paul has clashed with Foster several times throughout his career, including during last year\'s playoffs in the Florida \"bubble.\"</p>', 'en', 1, 1, NULL, 'article', 0, 49, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/chris-paul-scott-foster-suns-playoff-history/8wfi0qzbmxrn173qxoyz008yg', '2021-05-28 01:12:35', '2021-05-29 13:23:38'),
(134, 'Anthony Davis reacts to Devin Booker\'s Flagrant 2 foul on Dennis Schroder: \'It\'s a dirty play\'', 'anthony-davis-reacts-to-devin-booker\'s-flagrant-2-foul-on-dennis-schroder:-\'it\'s-a-dirty-play\'', '<p>Booker\'s foul may have been the result of pent-up frustration, as he scored just 19 points on 6-of-19 shooting in the loss.</p>', 'en', 1, 1, NULL, 'article', 0, 50, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/anthony-davis-devin-booker-dennis-schroder-foul-dirty/r5vxhits06n717ohe5d259qb1', '2021-05-28 01:12:19', '2021-05-29 13:23:46'),
(135, 'Multiple Jazz fans banned indefinitely after making vulgar, racist comments toward Ja Morant\'s family', 'multiple-jazz-fans-banned-indefinitely-after-making-vulgar,-racist-comments-toward-ja-morant\'s-family', '<p>Wednesday\'s NBA playoff action was overshadowed by bad fan behavior, including an ugly incident during Game 2 of the first-round series between the Grizzlies and Jazz.</p>', 'en', 1, 1, NULL, 'article', 0, 51, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/jazz-fans-banned-ja-morant-family-comments/1ryafwjat9n3b1jf5ev9iqy4es', '2021-05-28 01:12:02', '2021-05-29 13:23:55'),
(136, 'NCAA lacrosse championship date, times, TV schedule for 2021 men\'s, women\'s Final Four', 'ncaa-lacrosse-championship-date,-times,-tv-schedule-for-2021-men\'s,-women\'s-final-four', '<p>Will North Carolina pull off a sweep in the men\'s and women\'s Final Four? Sporting News previews the weekend.</p>', 'en', 1, 1, NULL, 'article', 0, 52, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/other-sports/news/ncaa-lacrosse-championship-times-schedule/xu8defn0965x1ets9oy8t3994', '2021-05-27 16:50:01', '2021-05-29 13:24:04'),
(137, 'Nike cut ties with Neymar amid investigation into sexual assault allegation', 'nike-cut-ties-with-neymar-amid-investigation-into-sexual-assault-allegation', '<p>Nike said it ended its agreement with PSG star Neymar in 2020 after he refused to cooperate with an investigation into sexual assault allegations brought by a Nike employee against him.</p>', 'en', 1, 1, NULL, 'article', 0, 53, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/nike-cut-ties-neymar-investigation-sexual-assault-allegation/1dsuxfe5wtyl21989nyjwc9vk2', '2021-05-27 19:29:57', '2021-05-29 13:24:13'),
(138, 'Liga MX final 2021: Date, time, odds, TV schedule & location for Cruz Azul vs. Santos Laguna', 'liga-mx-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-cruz-azul-vs.-santos-laguna', '<p>It\'s been 23 years since Cruz Azul last won the Liga MX title and they\'ll be looking to finally end the drought in the 2021 Liga MX Clausura final against Santos Laguna. La Maquina will take a 1-0 aggregate-goal lead into Sunday\'s second leg.</p>', 'en', 1, 1, NULL, 'article', 0, 54, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/liga-mx-final-2021-date-time-odds-tv-schedule-cruz-azul-santos/rqp2tfwa8umt1ncjo6z6akrm4', '2021-05-28 03:19:01', '2021-05-29 13:24:23'),
(139, 'Angels\' Shohei Ohtani scratched from start because of pregame traffic', 'angels\'-shohei-ohtani-scratched-from-start-because-of-pregame-traffic', '<p>Ohtani and some of his teammates had to get off their bus and onto a train to make it to the stadium for the Halos\' game against the A\'s in Oakland.</p>', 'en', 1, 1, NULL, 'article', 0, 55, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/mlb/news/shohei-ohtani-scratched-start-angels-pregame-traffic/mgtejiouzazi1ba4iotlz5fi4', '2021-05-27 17:46:44', '2021-05-29 13:24:35'),
(140, 'Maple Leafs injury update: Why isn\'t Nick Foligno playing vs. Canadiens?', 'maple-leafs-injury-update:-why-isn\'t-nick-foligno-playing-vs.-canadiens?', '<p>Toronto was without the centerman in Games 3 and 4 and will now be without him in Game 5, too.</p>', 'en', 1, 1, NULL, 'article', 0, 56, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/maple-leafs-injury-nick-foligno-playing-canadiens/50ibj4y6atyz1pooc9qtlboqz', '2021-05-27 13:38:13', '2021-05-29 13:24:44'),
(141, 'Devin Haney vs. Jorge Linares fight date, time, PPV price, odds & location for 2021 boxing match', 'devin-haney-vs.-jorge-linares-fight-date,-time,-ppv-price,-odds-&-location-for-2021-boxing-match', '<p>Devin Haney will defend his WBC lightweight championship against former world champion Jorge Linares in Las Vegas. Here\'s how to watch the fight.</p>', 'en', 1, 1, NULL, 'article', 0, 57, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/boxing/news/devin-haney-jorge-linares-fight-date-time-ppv-price-odds/s2x021u33o6m1hh5ute5ouj6m', '2021-05-27 13:03:50', '2021-05-29 13:24:53'),
(142, '\'Scoring big hundreds and taking five-fors\' - Dean Elgar\'s South Africa ready for a \'new chapter\'', '\'scoring-big-hundreds-and-taking-five-fors\'---dean-elgar\'s-south-africa-ready-for-a-\'new-chapter\'', 'New Test captain wants team to play \"more and better cricket\" as they rebuild their red-ball game\n', 'en', 1, 2, NULL, 'article', 0, 58, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'http://www.espncricinfo.com/ci/content/story/1264483.html?ex_cid=OTC-RSS', '2021-05-29 07:29:59', '2021-05-29 13:25:18'),
(143, 'Why BCCI wants more time on T20 World Cup decision', 'why-bcci-wants-more-time-on-t20-world-cup-decision', 'Tax exemptions from government and covid-19 pandemic are key factors', 'en', 1, 2, NULL, 'article', 0, 59, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264479.html?ex_cid=OTC-RSS', '2021-05-29 07:19:35', '2021-05-29 13:25:28'),
(144, 'Tamim Iqbal fined for protesting against his dismissal ', 'tamim-iqbal-fined-for-protesting-against-his-dismissal', 'The Bangladesh captain has been docked 15 percent match fee and accrued one demerit point ', 'en', 1, 2, NULL, 'article', 0, 60, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264478.html?ex_cid=OTC-RSS', '2021-05-29 06:04:56', '2021-05-29 13:25:40'),
(145, 'Luke Fletcher claims career-best as Nottinghamshire crush winless Worcester', 'luke-fletcher-claims-career-best-as-nottinghamshire-crush-winless-worcester', 'Notts seamer takes 7 for 37 and 10 for the match after Ben Duckett\'s pivotal 177 not out', 'en', 1, 2, NULL, 'article', 0, 61, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263971.html?ex_cid=OTC-RSS', '2021-05-23 12:00:07', '2021-05-29 13:25:55'),
(146, '\'We know that the job is not done\' - Tamim Iqbal after Bangladesh snap ten-match winless streak', '\'we-know-that-the-job-is-not-done\'---tamim-iqbal-after-bangladesh-snap-ten-match-winless-streak', 'Captain toasts success, but calls for an improved performance from his team', 'en', 1, 2, NULL, 'article', 0, 62, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263970.html?ex_cid=OTC-RSS', '2021-05-23 12:10:05', '2021-05-29 13:26:06'),
(147, 'Ben Aitchison takes career-best 6 for 28 as Derbyshire draw with Durham', 'ben-aitchison-takes-career-best-6-for-28-as-derbyshire-draw-with-durham', 'Ned Eckersley\'s 82 and a composed 39 by Cameron Bancroft rule out any late drama', 'en', 1, 2, NULL, 'article', 0, 63, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263967.html?ex_cid=OTC-RSS', '2021-05-23 10:42:55', '2021-05-29 13:26:18'),
(148, 'Danny Briggs, Will Rhodes guard against drama as rain has final say at Chelmsford', 'danny-briggs,-will-rhodes-guard-against-drama-as-rain-has-final-say-at-chelmsford', 'Only 22.5 overs possible on final day as Warwickshire see off new ball', 'en', 1, 2, NULL, 'article', 0, 64, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263964.html?ex_cid=OTC-RSS', '2021-05-23 10:14:30', '2021-05-29 13:26:28'),
(149, 'West Indies\' Marquino Mindley tests positive for Covid-19', 'west-indies\'-marquino-mindley-tests-positive-for-covid-19', 'Jamaica seamer was part of a training camp in St Lucia, ahead of the home season', 'en', 1, 2, NULL, 'article', 0, 65, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263961.html?ex_cid=OTC-RSS', '2021-05-23 11:03:54', '2021-05-29 13:26:37'),
(150, 'Craig Overton takes timely four-for as Gloucestershire, Somerset draw', 'craig-overton-takes-timely-four-for-as-gloucestershire,-somerset-draw', 'Both sides have a strong chance of qualifying for Division One', 'en', 1, 2, NULL, 'article', 0, 66, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263960.html?ex_cid=OTC-RSS', '2021-05-23 10:28:37', '2021-05-29 13:26:47'),
(151, 'BCB president Nazmul Hassan slams Bangladesh\'s mentality after \'very ugly\' dismissals', 'bcb-president-nazmul-hassan-slams-bangladesh\'s-mentality-after-\'very-ugly\'-dismissals', '\"Winning or losing today is not important. There\'s no point bringing a good coach if this is their shot-selection\"', 'en', 1, 2, NULL, 'article', 0, 67, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263956.html?ex_cid=OTC-RSS', '2021-05-23 09:38:56', '2021-05-29 13:26:58'),
(152, 'Alex Davies squeezes in an unbeaten half-century before weather wins out', 'alex-davies-squeezes-in-an-unbeaten-half-century-before-weather-wins-out', 'Only 34.3 overs played across all four days as Lancashire draw at Northamptonshire', 'en', 1, 2, NULL, 'article', 0, 68, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263953.html?ex_cid=OTC-RSS', '2021-05-23 08:54:39', '2021-05-29 13:27:07'),
(153, 'Rain thwarts attempts to make a game of Kent vs Glamorgan', 'rain-thwarts-attempts-to-make-a-game-of-kent-vs-glamorgan', 'Both sides make sporting declarations before play is abandoned in weather-hit round', 'en', 1, 2, NULL, 'article', 0, 69, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263950.html?ex_cid=OTC-RSS', '2021-05-23 07:56:43', '2021-05-29 13:27:18'),
(154, 'Mushfiqur, Miraz give Bangladesh 1-0 lead despite Hasaranga heroics', 'mushfiqur,-miraz-give-bangladesh-1-0-lead-despite-hasaranga-heroics', 'Wanindu Hasaranga kept Bangladesh honest in the dying stages, but Bangladesh\'s batsmen had ensured they had enough runs to play with', 'en', 1, 2, NULL, 'article', 0, 70, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263872.html?ex_cid=OTC-RSS', '2021-05-23 09:57:01', '2021-05-29 13:27:26'),
(155, 'First ODI on schedule after Covid-19 scare in Sri Lanka camp', 'first-odi-on-schedule-after-covid-19-scare-in-sri-lanka-camp', 'Two of the three members of the Sri Lanka contingent who had previously tested positive returned negative tests on Sunday', 'en', 1, 2, NULL, 'article', 0, 71, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263864.html?ex_cid=OTC-RSS', '2021-05-23 08:07:39', '2021-05-29 13:27:36'),
(156, 'Retro Live - relive the excitement of past IPL finals', 'retro-live---relive-the-excitement-of-past-ipl-finals', '<p>We bring you fresh ball-by-ball commentary of the 2008, 2009, 2010 and 2012 IPL title clashes</p>', 'en', 1, 2, NULL, 'article', 0, 72, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Retro Live - relive the excitement of past IPL finals', NULL, NULL, NULL, NULL, 'style_2', NULL, NULL, NULL, NULL, 1, 2, NULL, 'http://www.espncricinfo.com/ci/content/story/1263488.html?ex_cid=OTC-RSS', '2021-05-27 23:26:14', '2021-05-29 13:30:19'),
(157, 'Braves\' Ozuna arrested on felony assault charge', 'braves\'-ozuna-arrested-on-felony-assault-charge', 'Major League Baseball will open an investigation into Atlanta\'s Marcell Ozuna, sources told ESPN on Saturday, following his arrest in Georgia stemming from a domestic incident in which he choked his wife and threw her against a wall, according to police.', 'en', 1, 3, NULL, 'article', 0, 73, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31535124/atlanta-braves-star-marcell-ozuna-arrested-charged-aggravated-assault-strangulation-misdemeanor-battery-family-violence', '2021-05-29 20:46:16', '2021-05-30 08:25:54'),
(158, 'What channel is the Indy 500 on today? TV coverage & live stream to watch the 2021 race in Indianapolis', 'what-channel-is-the-indy-500-on-today?-tv-coverage-&-live-stream-to-watch-the-2021-race-in-indianapolis', '<p>Here\'s all the information you need to watch the Indy 500 in 2021, including the TV channel and live-streaming options.</p>', 'en', 1, 1, NULL, 'article', 0, 74, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-channel-tv-coverage-live-stream/18s41hvqxt2b01p4f0ujxqrvdo', '2021-05-29 15:28:11', '2021-05-30 08:25:59'),
(159, 'West Indies return to full training as players test negative for Covid-19', 'west-indies-return-to-full-training-as-players-test-negative-for-covid-19', 'Earlier, the players were forced to train in smaller groups after fast bowler Mindley had tested positive', 'en', 1, 2, NULL, 'article', 0, 75, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264509.html?ex_cid=OTC-RSS', '2021-05-29 22:35:47', '2021-05-30 08:26:01'),
(160, 'Embiid chides Wiz for not doubling as Sixers roll', 'embiid-chides-wiz-for-not-doubling-as-sixers-roll', 'Joel Embiid posted a playoff career high of 36 points while shooting 14-of-18 from the field in the 76ers\' dominant win over the Wizards on Saturday.', 'en', 1, 3, NULL, 'article', 0, 75, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31535174/sixers-joel-embiid-cruises-playoff-career-high-36-points-rout-washington-wizards', '2021-05-29 20:46:16', '2021-05-30 08:26:02'),
(161, 'Malone: Nuggets \'played soft\' in loss to Blazers', 'malone:-nuggets-\'played-soft\'-in-loss-to-blazers', 'Michael Malone said Denver\'s starting unit played \"awful\" after a blowout loss to Portland on Saturday that tied the series at 2-2.', 'en', 1, 3, NULL, 'article', 0, 77, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31534579/denver-nuggets-michael-malone-calls-starting-unit-blowout-loss-blazer', '2021-05-29 20:46:16', '2021-05-30 08:26:09'),
(162, 'Chelsea, Pulisic top Man City to win UCL title', 'chelsea,-pulisic-top-man-city-to-win-ucl-title', 'null', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/report?gameId=600626', '2021-05-29 20:46:16', '2021-05-30 08:26:09'),
(163, 'Donovan Mitchell wasn\'t perfect in Jazz\'s Game 3 win, but he showed up at the perfect time', 'donovan-mitchell-wasn\'t-perfect-in-jazz\'s-game-3-win,-but-he-showed-up-at-the-perfect-time', '<p>Mitchell scored 10 of the Jazz\'s last 14 points, leading Utah to a 121-111 victory over the Grizzlies.</p>', 'en', 1, 1, NULL, 'article', 0, 78, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/donovan-mitchell-jazz-game-3/tbhe3787l1kb1o2zrorrjv2w6', '2021-05-29 19:55:00', '2021-05-30 08:26:14'),
(164, 'Conley: Win in Memphis, playing Morant \'surreal\'', 'conley:-win-in-memphis,-playing-morant-\'surreal\'', 'Mike Conley, who spent 12 seasons with the Memphis Grizzlies, called it a \"surreal\" experience to face his former team and its new young point guard, Ja Morant, in a road playoff game.', 'en', 1, 3, NULL, 'article', 0, 79, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31536252/mike-conley-leads-utah-jazz-victory-surreal-return-memphis', '2021-05-29 20:46:16', '2021-05-30 08:26:15'),
(165, 'Danni Wyatt strikes blow in openers\' battle as Vipers make Lightning start', 'danni-wyatt-strikes-blow-in-openers\'-battle-as-vipers-make-lightning-start', 'Tammy Beaumont half-century trumped by England team-mate in Ageas Bowl opener', 'en', 1, 2, NULL, 'article', 0, 80, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264501.html?ex_cid=OTC-RSS', '2021-05-29 12:02:50', '2021-05-30 08:26:16'),
(166, 'Jazz great Mark Eaton, 64, dies after bike crash', 'jazz-great-mark-eaton,-64,-dies-after-bike-crash', 'Mark Eaton, a two-time NBA Defensive Player of the Year who played all 11 seasons with the Utah Jazz and had his number retired by the franchise, has died at the age of 64.', 'en', 1, 3, NULL, 'article', 0, 81, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31532507/former-utah-jazz-center-mark-eaton-dies-bicycle-crash-age-64', '2021-05-29 20:46:16', '2021-05-30 08:26:23'),
(167, 'Devin Haney vs. Jorge Linares results: Haney retains WBC belt, but he\'s forced to work for it', 'devin-haney-vs.-jorge-linares-results:-haney-retains-wbc-belt,-but-he\'s-forced-to-work-for-it', '<p>Devin Haney limped to the finish after taking a big shot late in the 10th round.</p>', 'en', 1, 1, NULL, 'article', 0, 82, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/boxing/news/devin-haney-vs-jorge-linares-results-wbc/1rsnm6u4cytgj13ay1bq8p8o4p', '2021-05-29 19:56:44', '2021-05-30 08:26:26');
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `language`, `user_id`, `category_id`, `sub_category_id`, `post_type`, `submitted`, `image_id`, `visibility`, `auth_required`, `slider`, `slider_order`, `featured`, `featured_order`, `breaking`, `breaking_order`, `recommended`, `recommended_order`, `editor_picks`, `editor_picks_order`, `scheduled`, `meta_title`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `video_id`, `video_url_type`, `video_url`, `video_thumbnail_id`, `status`, `total_hit`, `contents`, `read_more_link`, `created_at`, `updated_at`) VALUES
(168, 'Haney retains belt in strong but flawed showing', 'haney-retains-belt-in-strong-but-flawed-showing', 'Devin Haney\'s strong performance in his unanimous decision victory over Jorge Linares was marred late after a big right hand in the 10th round left Haney on his heels the rest of the way.', 'en', 1, 3, NULL, 'article', 0, 83, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/boxing/story/_/id/31535922/devin-haney-survives-late-charge-jorge-linares-retain-wbc-lightweight-title', '2021-05-29 20:46:16', '2021-05-30 08:26:29'),
(169, 'Central Sparks fly as Amy Jones and Issy Wong leave Diamonds feeling rough', 'central-sparks-fly-as-amy-jones-and-issy-wong-leave-diamonds-feeling-rough', 'Lauren Winfield-Hill\'s century in vain as tables are turned in two-wicket victory', 'en', 1, 2, NULL, 'article', 0, 84, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264500.html?ex_cid=OTC-RSS', '2021-05-29 11:47:02', '2021-05-30 08:26:30'),
(170, 'Pastrnak\'s hat trick fuels frenzied fans in Boston', 'pastrnak\'s-hat-trick-fuels-frenzied-fans-in-boston', 'David Pastrnak notched his second career playoff hat trick, further fueling a frenzied TD Garden crowd, as the Bruins defeated the Islanders in Game 1 Saturday night.', 'en', 1, 3, NULL, 'article', 0, 85, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nhl/story/_/id/31535564/david-pastrnak-found-touch-nets-three-boston-bruins-emphatic-game-1-win', '2021-05-29 20:46:16', '2021-05-30 08:26:36'),
(171, 'What time does the NASCAR race start today? TV schedule, channel for Coca-Cola 600 at Charlotte', 'what-time-does-the-nascar-race-start-today?-tv-schedule,-channel-for-coca-cola-600-at-charlotte', '<p>NASCAR continues its 2021 regular season with the Coca-Cola 600 at Charlotte Motor Speedway. Here\'s everything to know about Sunday\'s race, including the start time and TV channel.</p>', 'en', 1, 1, NULL, 'article', 0, 86, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/nascar-race-time-schedule-channel-charlotte/1i6tuuza2fcz21ub1m1do03kjl', '2021-05-29 15:33:20', '2021-05-30 08:26:40'),
(172, 'Are the 2021 Rockies the worst offensive team in modern baseball history?', 'are-the-2021-rockies-the-worst-offensive-team-in-modern-baseball-history?', 'Altitude in play or not, the numbers are the numbers, and so far the Rockies are shaping up as one of the worst hitting teams ever.', 'en', 1, 3, NULL, 'article', 0, 87, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31534437/are-2021-rockies-worst-offensive-team-modern-baseball-history', '2021-05-29 18:23:21', '2021-05-30 08:26:43'),
(173, 'Dillon Pennington\'s career-best haul sees Worcestershire close in', 'dillon-pennington\'s-career-best-haul-sees-worcestershire-close-in', 'Derbyshire narrowly fail to avoid follow on and ship six wickets before close', 'en', 1, 2, NULL, 'article', 0, 88, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264498.html?ex_cid=OTC-RSS', '2021-05-30 01:29:36', '2021-05-30 08:26:46'),
(174, 'French Open experts\' picks: Nadal man to beat; Gauff ready for Slam run', 'french-open-experts\'-picks:-nadal-man-to-beat;-gauff-ready-for-slam-run', 'Rafael Nadal cruising to a record 14th French Open crown seems inevitable, but who will win the women\'s title?', 'en', 1, 3, NULL, 'article', 0, 89, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/tennis/story/_/id/31532712/french-open-2021-experts-picks-our-gurus-see-rafael-nadal-coco-gauff-ash-barty-making-big-runs', '2021-05-29 19:34:57', '2021-05-30 08:26:52'),
(175, 'Tuchel keeps it simple to beat overthinking Guardiola', 'tuchel-keeps-it-simple-to-beat-overthinking-guardiola', 'While Chelsea\'s approach was based on past success, Man City changed too much and paid dearly.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/uefa-champions-league/story/4397089/thomas-tuchel-stays-simplepep-guardiola-overthinks-again-as-chelsea-beat-man-city-to-win-ucl', '2021-05-29 19:50:48', '2021-05-30 08:26:52'),
(176, 'NHL playoff bracket predictions, picks, odds & series breakdowns for 2021 Stanley Cup second round', 'nhl-playoff-bracket-predictions,-picks,-odds-&-series-breakdowns-for-2021-stanley-cup-second-round', '<p>Sporting News projects the entire NHL playoff bracket, including expert predictions for each second-round series and our pick to win the 2021 Stanley Cup.</p>', 'en', 1, 1, NULL, 'article', 0, 90, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/nhl-playoff-bracket-2021-predictions-picks-odds-second-round/1jdjphpq7xh4p1wtig7hrs7lrg', '2021-05-29 19:25:36', '2021-05-30 08:26:55'),
(177, 'Finally, Roger Penske gets first \'real\' Indianapolis 500 as the man in charge', 'finally,-roger-penske-gets-first-\'real\'-indianapolis-500-as-the-man-in-charge', 'Roger Penske took over the Indianapolis Motor Speedway in January 2020, only to see the pandemic postpone the Indy 500 from May to August, without fans or fanfare. Now, \"The Captain\" is ready for his first May race as the boss.', 'en', 1, 3, NULL, 'article', 0, 91, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/racing/story/_/id/31528766/finally-roger-penske-gets-first-real-indianapolis-500-man-charge', '2021-05-29 19:38:58', '2021-05-30 08:26:59'),
(178, 'Chris Wright\'s six-for keeps Middlesex waiting as Leicestershire find their fight', 'chris-wright\'s-six-for-keeps-middlesex-waiting-as-leicestershire-find-their-fight', 'Veteran seamer stars against former team to take contest into final-day chase', 'en', 1, 2, NULL, 'article', 0, 92, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264497.html?ex_cid=OTC-RSS', '2021-05-29 16:07:51', '2021-05-30 08:27:04'),
(179, 'Can Devin Haney beat the top lightweights in the division? What now for Jorge Linares?', 'can-devin-haney-beat-the-top-lightweights-in-the-division?-what-now-for-jorge-linares?', 'Devin Haney defended his title against Jorge Linares, but did Haney do enough to establish himself as a top fighter at 135 pounds?', 'en', 1, 3, NULL, 'article', 0, 93, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/boxing/story/_/id/31535882/can-devin-haney-beat-top-lightweights-division-now-jorge-linares', '2021-05-29 20:49:51', '2021-05-30 08:27:08'),
(180, 'David Pastrnak sets tone with suit, hat trick in Bruins\' Game 1 win vs. Islanders', 'david-pastrnak-sets-tone-with-suit,-hat-trick-in-bruins\'-game-1-win-vs.-islanders', '<p>The forward was flashy on and off the ice in Boston\'s victory Saturday night.</p>', 'en', 1, 1, NULL, 'article', 0, 94, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/david-pastrnak-suit-hat-trick-bruins-game-1-win-islanders/1mcomsq3e6wee1azoavq2c5lat', '2021-05-29 19:10:02', '2021-05-30 08:27:10'),
(181, 'How lightweight hopeful Clay Collard turned the PFL on its head', 'how-lightweight-hopeful-clay-collard-turned-the-pfl-on-its-head', 'No more a long shot, Clay Collard plans to keep punching his way to PFL\'s $1 million prize.', 'en', 1, 3, NULL, 'article', 0, 95, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mma/story/_/id/31527373/how-lightweight-hopeful-clay-collard-turned-pfl-head', '2021-05-29 02:52:50', '2021-05-30 08:27:16'),
(182, 'Anya Shrubsole steals Thunder\'s thunder in stunning one-wicket win', 'anya-shrubsole-steals-thunder\'s-thunder-in-stunning-one-wicket-win', 'England star rescues run-chase after Emma Lamb century posts imposing target', 'en', 1, 2, NULL, 'article', 0, 96, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264496.html?ex_cid=OTC-RSS', '2021-05-29 11:09:41', '2021-05-30 08:27:20'),
(183, 'What time does the Indy 500 start today? Full schedule & lineup for the 2021 race in Indianapolis', 'what-time-does-the-indy-500-start-today?-full-schedule-&-lineup-for-the-2021-race-in-indianapolis', '<p>The start time for the 2021 Indy 500 is a little ambiguous since NBC broadcasts so much of the pre-race. Here is the complete schedule to see what time the green flag will be waved at the Indianapolis Motor Speedway.</p>', 'en', 1, 1, NULL, 'article', 0, 97, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nascar/news/indy-500-time-schedule-lineup-2021-race/184gfce4en5vd11gja7u4oizom', '2021-05-29 15:25:00', '2021-05-30 08:27:24'),
(184, 'Transfer Talk: Arsenal eye Kounde, Tapsoba to revamp defence', 'transfer-talk:-arsenal-eye-kounde,-tapsoba-to-revamp-defence', 'Arsenal are after two centre-backs after an underwhelming season saw them finish 8th in the Premier League. Transfer Talk is LIVE with the latest.', 'en', 1, 3, NULL, 'article', 0, 97, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/blog-transfer-talk/story/4397821/live-transfer-talk-arsenal-eye-jules-koundeedmond-tapsoba-to-revamp-defence', '2021-05-29 18:27:25', '2021-05-30 08:27:24'),
(185, 'Yorkshire face final-day fight as Josh Bohannon bats Lancashire to the brink', 'yorkshire-face-final-day-fight-as-josh-bohannon-bats-lancashire-to-the-brink', 'Bowlers find visitors less compliant than in first innings after Lancs secure huge lead', 'en', 1, 2, NULL, 'article', 0, 99, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264495.html?ex_cid=OTC-RSS', '2021-05-29 12:44:03', '2021-05-30 08:27:37'),
(186, 'Maple Leafs vs. Canadiens score, results: Jesperi Kotkaniemi scores in OT, sends series to Game 7', 'maple-leafs-vs.-canadiens-score,-results:-jesperi-kotkaniemi-scores-in-ot,-sends-series-to-game-7', '<p>It\'ll come down to one game on Monday. Oh, baby, Game 7 is coming.</p>', 'en', 1, 1, NULL, 'article', 0, 100, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nhl/news/maple-leafs-canadiens-live-score-updates-highlights-game-6-stanley-cup-playoffs/18y9cgxztp9j11rgl05wflycif', '2021-05-29 20:58:55', '2021-05-30 08:27:38'),
(187, 'MLB to investigate Marcell Ozuna arrest on domestic violence charges, report says', 'mlb-to-investigate-marcell-ozuna-arrest-on-domestic-violence-charges,-report-says', '<p>The Braves outfielder was booked into Fulton County Jail and charged with assault and battery stemming from an alleged domestic dispute.</p>', 'en', 1, 1, NULL, 'article', 0, 101, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/mlb/news/marcell-ozuna-arrest-mlb-investigate/xcnr0nsymeet16hq5bfnr7894', '2021-05-29 17:48:48', '2021-05-30 08:27:51'),
(188, 'Zak Chappell provides the point of difference to ruffle Warwickshire\'s poise', 'zak-chappell-provides-the-point-of-difference-to-ruffle-warwickshire\'s-poise', 'Michael Burgess resists after Nottinghamshire find route through middle-order', 'en', 1, 2, NULL, 'article', 0, 102, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264494.html?ex_cid=OTC-RSS', '2021-05-29 12:56:31', '2021-05-30 08:27:52'),
(189, 'Trail Blazers\' Jusuf Nurkic calls out Kendrick Perkins after Game 4 win; ESPN analyst fires back', 'trail-blazers\'-jusuf-nurkic-calls-out-kendrick-perkins-after-game-4-win;-espn-analyst-fires-back', '<p>Nurkic\'s anger stemmed from a tweet sent out Friday in which Perkins called Nurkic and Enes Kanter \"the [worst] defensive bigs in the NBA.\"</p>', 'en', 1, 1, NULL, 'article', 0, 103, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/jusuf-nurkic-kendrick-perkins-trail-blazers-espn/1t7yfuwiepx6r1gqb1c5sbz4gc', '2021-05-29 14:38:03', '2021-05-30 08:28:06'),
(190, 'Simon Kerrigan five-for puts Northants on course despite Tom Haines ton', 'simon-kerrigan-five-for-puts-northants-on-course-despite-tom-haines-ton', 'Northants two down and 87 from victory after being set 218 in fourth innings', 'en', 1, 2, NULL, 'article', 0, 104, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264493.html?ex_cid=OTC-RSS', '2021-05-29 13:43:26', '2021-05-30 08:28:10'),
(191, 'Christian Pulisic makes history by winning Champions League final and takes all of U.S. soccer along for the ride', 'christian-pulisic-makes-history-by-winning-champions-league-final-and-takes-all-of-u.s.-soccer-along-for-the-ride', '<p>Christian Pulisic became the first American to play and win a Champions League final, playing a major role in Chelsea\'s triumph. When it came time for the celebrations, he made sure to give a nod to his American soccer roots.</p>', 'en', 1, 1, NULL, 'article', 0, 105, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/christian-pulisic-winning-champions-league-us-soccer-chelsea/2abh9faypphp104mkgti43yqw', '2021-05-29 16:34:02', '2021-05-30 08:28:19'),
(192, 'Essex pad out their Group One lead as lbws abound in three-day thumping of Durham', 'essex-pad-out-their-group-one-lead-as-lbws-abound-in-three-day-thumping-of-durham', 'One of the world\'s most boring records takes Essex closer to shot at title defence', 'en', 1, 2, NULL, 'article', 0, 106, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264492.html?ex_cid=OTC-RSS', '2021-05-29 16:05:45', '2021-05-30 08:28:25'),
(193, 'Bucks\' Twitter account trolls Heat fans after Milwaukee sweeps Miami out of NBA playoffs', 'bucks\'-twitter-account-trolls-heat-fans-after-milwaukee-sweeps-miami-out-of-nba-playoffs', '<p>Milwaukee completed a dominant sweep of Miami with a 120-103 win, becoming the first team to advance to the second round of the 2021 NBA playoffs.</p>', 'en', 1, 1, NULL, 'article', 0, 107, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/nba/news/bucks-twitter-heat-fans-milwaukee-miami-nba-playoffs/1sg7a09ehnxwa1eqgl5swy7jis', '2021-05-29 12:16:33', '2021-05-30 08:28:31'),
(194, 'Dan Moriarty, Amar Virdi strut their stuff as Surrey spin a web around Gloucestershire', 'dan-moriarty,-amar-virdi-strut-their-stuff-as-surrey-spin-a-web-around-gloucestershire', 'Young Surrey spinners seize control as Gloucestershire follow-on at The Kia Oval', 'en', 1, 2, NULL, 'article', 0, 108, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264491.html?ex_cid=OTC-RSS', '2021-05-29 13:09:38', '2021-05-30 08:28:42'),
(195, 'Chelsea vs. Manchester City score, result, highlights from 2021 Champions League final', 'chelsea-vs.-manchester-city-score,-result,-highlights-from-2021-champions-league-final', '<p>Chelsea pulled off the upset in the UEFA Champions League final, beating English Premier League champions Manchester City 1-0 in a compelling match. Christian Pulisic became the first US national team player to appear in a final and nearly scored.</p>', 'en', 1, 1, NULL, 'article', 0, 109, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/chelsea-manchester-city-live-score-updates-highlights/f62uxfw8wast18h2cao5xyebl', '2021-05-29 14:56:36', '2021-05-30 08:28:57'),
(196, 'Roman Quinn injury update: Phillies outfielder exits game with Achilles injury after scoring run', 'roman-quinn-injury-update:-phillies-outfielder-exits-game-with-achilles-injury-after-scoring-run', '<p>Quinn\'s ruptured Achilles is the latest in a long line of injuries for the Phillies outfielder.</p>', 'en', 1, 1, NULL, 'article', 0, 110, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/mlb/news/roman-quinn-injury-update-phillies-achilles-score-run/1sqk55margfu51hj4vxjh3i1jk', '2021-05-29 11:14:53', '2021-05-30 08:29:14'),
(197, 'Christian Pulisic makes Champions League history as first USMNT player to appear, win final', 'christian-pulisic-makes-champions-league-history-as-first-usmnt-player-to-appear,-win-final', '<p>Christian Pulisic became the first USMNT player to appear in a UEFA Champions League final after coming off the bench against Manchester City. Chelsea would go on to win the match 1-0, their second-ever Champions League trophy.</p>', 'en', 1, 1, NULL, 'article', 0, 111, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.sportingnews.com/us/soccer/news/christian-pulisic-champions-league-history-american-final/uzyrze2azute1gp858rwtlrqb', '2021-05-29 14:37:31', '2021-05-30 08:29:26'),
(198, 'Sophia Dunkley asserts her England credentials to leave Sunrisers seeing Stars', 'sophia-dunkley-asserts-her-england-credentials-to-leave-sunrisers-seeing-stars', 'Tash Farrant puts seal on crushing win with five-wicket haul at Chelmsford', 'en', 1, 2, NULL, 'article', 0, 112, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264489.html?ex_cid=OTC-RSS', '2021-05-29 10:29:40', '2021-05-30 08:29:40'),
(199, 'Rashid Khan to fly to England for T20 Blast immediately after PSL', 'rashid-khan-to-fly-to-england-for-t20-blast-immediately-after-psl', 'The Lahore Qalandars have re-signed the legspinner after his replacement Shakib Al Hasan pulled out of the PSL', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263859.html?ex_cid=OTC-RSS', '2021-05-22 12:05:17', '2021-05-30 08:30:49'),
(200, 'Multan Sultans sign Shimron Hetmyer in PSL mini replacement draft', 'multan-sultans-sign-shimron-hetmyer-in-psl-mini-replacement-draft', 'Quetta have picked Zahir Khan to fill in for Ben Cutting, while Islamabad have chosen not to replace the unavailable Janneman Malan', 'en', 1, 2, NULL, 'article', 0, 113, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263854.html?ex_cid=OTC-RSS', '2021-05-22 12:03:04', '2021-05-30 08:32:06'),
(201, 'Weather prevents Kent push in wake of Hurricane Stevens', 'weather-prevents-kent-push-in-wake-of-hurricane-stevens', 'Matt Quinn claimed the third Glamorgan wicket to fall but only 6.2 overs were possible', 'en', 1, 2, NULL, 'article', 0, 114, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263852.html?ex_cid=OTC-RSS', '2021-05-23 02:38:26', '2021-05-30 08:32:20'),
(202, 'De Ligt opts out of COVID jab: \'Not mandatory\'', 'de-ligt-opts-out-of-covid-jab:-\'not-mandatory\'', 'Matthijs de Ligt says he opted not to take a coronavirus shot because he wants to be \"in charge\" of his body.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/juventus-itajuventus/story/4397134/juventus-defender-matthijs-de-ligt-rules-out-covid-19-jab-it-is-not-mandatory', '2021-05-29 15:13:05', '2021-05-30 08:50:04'),
(203, 'Northants-Lancashire game on ice despite Gareth Berg breakthrough', 'northants-lancashire-game-on-ice-despite-gareth-berg-breakthrough', 'Only 11 overs possible at wet Wantage Road, with Keaton Jennings the batter to fall', 'en', 1, 2, NULL, 'article', 0, 115, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263849.html?ex_cid=OTC-RSS', '2021-05-22 10:44:43', '2021-05-30 08:50:43'),
(204, 'Hampshire\'s innings forfeit fails to tempt Leicestershire after Kyle Abbott six-for', 'hampshire\'s-innings-forfeit-fails-to-tempt-leicestershire-after-kyle-abbott-six-for', 'Visitors avoid follow-on by one run, then decline chance to chase 150 in 21 overs', 'en', 1, 2, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263848.html?ex_cid=OTC-RSS', '2021-05-22 11:50:25', '2021-05-30 08:51:53'),
(205, 'Ben Duckett 177*, Luke Fletcher five-for revives Nottinghamshire hopes of victory', 'ben-duckett-177*,-luke-fletcher-five-for-revives-nottinghamshire-hopes-of-victory', 'Worcestershire in trouble on 53 for 6 after home side race to 400 for 5 dec', 'en', 1, 2, NULL, 'article', 0, 116, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263847.html?ex_cid=OTC-RSS', '2021-05-22 12:48:16', '2021-05-30 08:52:19'),
(206, 'Tom Abell century lights way for Somerset in bonus-points scramble', 'tom-abell-century-lights-way-for-somerset-in-bonus-points-scramble', 'Somerset captain\'s unbeaten 132 sets up declaration before visiting seamers strike', 'en', 1, 2, NULL, 'article', 0, 117, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263845.html?ex_cid=OTC-RSS', '2021-05-22 14:50:09', '2021-05-30 08:52:44'),
(207, 'Chris Rushworth six-for keeps Derbyshire in check', 'chris-rushworth-six-for-keeps-derbyshire-in-check', 'Durham lose two before the close after limiting hosts to 258', 'en', 1, 2, NULL, 'article', 0, 118, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263844.html?ex_cid=OTC-RSS', '2021-05-22 12:41:55', '2021-05-30 08:53:10'),
(208, 'Alastair Cook, Ryan ten Doeschate steal a march on young guns to inch Essex into ascendancy', 'alastair-cook,-ryan-ten-doeschate-steal-a-march-on-young-guns-to-inch-essex-into-ascendancy', 'Olly Stone and Dan Lawrence miss their chances to impress before Lord\'s Test', 'en', 1, 2, NULL, 'article', 0, 119, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263843.html?ex_cid=OTC-RSS', '2021-05-23 03:35:01', '2021-05-30 08:53:38'),
(209, 'Kemar Roach burst rocks Middlesex and keeps London derby alive into final day', 'kemar-roach-burst-rocks-middlesex-and-keeps-london-derby-alive-into-final-day', 'Mark Stoneman, Rory Burns add unbroken century stand to pile pressure on Middlesex', 'en', 1, 2, NULL, 'article', 0, 120, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263842.html?ex_cid=OTC-RSS', '2021-05-22 14:15:46', '2021-05-30 08:54:03'),
(210, 'Andre Russell retained by Jamaica Tallawahs; Dwayne Bravo, Sherfane Rutherford traded to Patriots', 'andre-russell-retained-by-jamaica-tallawahs;-dwayne-bravo,-sherfane-rutherford-traded-to-patriots', 'All the transfers and retentions ahead of the CPL 2021 season', 'en', 1, 2, NULL, 'article', 0, 121, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263826.html?ex_cid=OTC-RSS', '2021-05-27 08:35:43', '2021-05-30 08:54:26'),
(211, 'Kusal Perera: Contract concerns on our minds but priority is to win the series ', 'kusal-perera:-contract-concerns-on-our-minds-but-priority-is-to-win-the-series', 'He also suggests players are unhappy with having to do fitness tests for future tours, in the middle of ongoing tours', 'en', 1, 2, NULL, 'article', 0, 122, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263816.html?ex_cid=OTC-RSS', '2021-05-22 05:22:52', '2021-05-30 08:54:49'),
(212, 'Russell Domingo wants Bangladesh \'to stick to basics and not try anything fancy\'', 'russell-domingo-wants-bangladesh-\'to-stick-to-basics-and-not-try-anything-fancy\'', '\"With the home advantage, we always start as favourites, but we can\'t underestimate Sri Lanka\"', 'en', 1, 2, NULL, 'article', 0, 123, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263812.html?ex_cid=OTC-RSS', '2021-05-22 04:29:39', '2021-05-30 08:55:15'),
(213, 'Khaled Mahmud tests positive for Covid-19', 'khaled-mahmud-tests-positive-for-covid-19', 'Mahmud was supposed to be the team director for the ODI series against Sri Lanka starting Sunday', 'en', 1, 2, NULL, 'article', 0, 124, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1263808.html?ex_cid=OTC-RSS', '2021-05-22 03:03:16', '2021-05-30 08:55:38'),
(214, 'New-look Sri Lanka face struggling Bangladesh in search for Super League points', 'new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', '<p>Shakib Al Hasan is likely to slot back at No. 3 for the hosts</p>', 'en', 1, 2, NULL, 'article', 0, 125, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'New-look Sri Lanka face struggling Bangladesh in search for Super League points', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 2, '{\"1\":{\"ads\":{\"ads\":\"2\"}}}', 'http://www.espncricinfo.com/ci/content/story/1263807.html?ex_cid=OTC-RSS', '2021-05-22 05:50:14', '2021-05-31 14:42:02'),
(217, 'Celtics fan arrested after bottle nearly hits Kyrie', 'celtics-fan-arrested-after-bottle-nearly-hits-kyrie', '\"You\'re seeing a lot of old ways come up ... just underlying racism and treating people like they\'re in a human zoo,\" Kyrie Irving said of the incident after the game.', 'en', 1, 3, NULL, 'article', 0, 126, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31540143/boston-celtics-fan-appears-throw-water-bottle-brooklyn-nets-kyrie-irving', '2021-05-31 04:31:37', '2021-05-31 14:45:42'),
(218, 'Clips lean on dynamic duo, seize control of series', 'clips-lean-on-dynamic-duo,-seize-control-of-series', 'Kawhi Leonard and Paul George overwhelmed the Mavericks in Game 4 on Sunday night, combining to score 45 points in the first three quarters.', 'en', 1, 3, NULL, 'article', 0, 127, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31540996/clippers-kawhi-leonard-paul-george-power-win-mavericks-seize-back-control-series', '2021-05-31 04:31:37', '2021-05-31 14:45:47'),
(219, 'Luka won\'t blame nerve issue for \'terrible\' game', 'luka-won\'t-blame-nerve-issue-for-\'terrible\'-game', 'Luka Doncic acknowledged his cervical strain is a nerve issue but downplayed its impact on his \"terrible\" performance in Sunday\'s series-tying loss to the Clippers.', 'en', 1, 3, NULL, 'article', 0, 128, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31540854/mavericks-luka-doncic-acknowledges-nerve-issue-downplays-impact-terrible-game', '2021-05-31 04:31:37', '2021-05-31 14:45:52'),
(220, 'DeBoer defends Vegas choice in net after 7-1 loss', 'deboer-defends-vegas-choice-in-net-after-7-1-loss', 'Saying \"there was a lot of rationale\" to starting Robin Lehner over Marc-Andre Fleury in Game 1, Vegas coach Peter DeBoer and his Golden Knights will focus on evening the series with Colorado, rather than dwelling on the 7-1 loss.', 'en', 1, 3, NULL, 'article', 0, 129, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nhl/story/_/id/31540570/peter-deboer-defends-vegas-golden-knights-strategy-loss-saying-was-perfect-opportunity-start-robin-lehner', '2021-05-31 04:31:37', '2021-05-31 14:45:56'),
(221, 'Former coach Zidane publicly blasts Real Madrid', 'former-coach-zidane-publicly-blasts-real-madrid', 'Zinedine Zidane has written an open letter and blame a lack of \"trust\" and \"messages leaked to the media\" for his decision to leave Real Madrid.', 'en', 1, 3, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/soccer/real-madrid/story/4398571/zidane-criticises-real-madrid-over-lack-of-trust-and-leaked-messages', '2021-05-31 04:31:37', '2021-05-31 14:45:56'),
(222, 'Sources: Seahawks, Falcons discuss Jones trade', 'sources:-seahawks,-falcons-discuss-jones-trade', 'The Seahawks have had trade discussions with the Falcons regarding Julio Jones, and the star receiver has been in contact with Russell Wilson, sources told ESPN\'s Dianna Russini.', 'en', 1, 3, NULL, 'article', 0, 130, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nfl/story/_/id/31537944/seattle-seahawks-atlanta-falcons-discuss-julio-jones-trade-sources-say', '2021-05-31 04:31:37', '2021-05-31 14:46:01'),
(223, 'Report: NHL ironing out Canada-US travel plans', 'report:-nhl-ironing-out-canada-us-travel-plans', 'An exemption that would let teams enter Canada for Stanley Cup playoff games without having to isolate for 14 days is being ironed out between the NHL and health officials, according to a report Sunday by The Canadian Press.', 'en', 1, 3, NULL, 'article', 0, 131, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nhl/story/_/id/31540404/nhl-working-health-authorities-plot-travel-exemption-canada-united-states-later-postseason-report-says', '2021-05-31 04:31:37', '2021-05-31 14:46:06'),
(224, 'Hughes retires as Storm coach; Quinn takes over', 'hughes-retires-as-storm-coach;-quinn-takes-over', 'Telling ESPN Sunday that \"the time seems to be right,\" Seattle Storm coach Dan Hughes, 66, a WNBA champion and two-time Coach of the Year, announced his retirement, handing over the 5-1 team to assistant Noelle Quinn.', 'en', 1, 3, NULL, 'article', 0, 132, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/wnba/story/_/id/31538762/with-seattle-storm-amazing-shape-dan-hughes-retires-coach-assistant-noelle-quinn-takes-over', '2021-05-31 04:31:37', '2021-05-31 14:46:12'),
(225, 'Memorial Day MLB standings check: Surprises, disappointments and who will rule from here', 'memorial-day-mlb-standings-check:-surprises,-disappointments-and-who-will-rule-from-here', 'From last place in May to the World Series in October? Two 100-win teams in one division? Our MLB experts make sense of the season so far.', 'en', 1, 3, NULL, 'article', 0, 133, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/mlb/story/_/id/31526705/memorial-day-mlb-standings-check-surprises-disappointments-rule-here', '2021-05-31 02:36:14', '2021-05-31 14:46:18'),
(226, 'Aaron Rodgers to the Broncos: What would it take?', 'aaron-rodgers-to-the-broncos:-what-would-it-take?', 'Rodgers is unhappy, and the Packers get significant salary-cap relief if they trade (or release) him after Tuesday. How the Broncos could make it work.', 'en', 1, 3, NULL, 'article', 0, 134, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/blog/denver-broncos/post/_/id/38363/aaron-rodgers-to-the-denver-broncos-what-would-it-take', '2021-05-31 02:36:16', '2021-05-31 14:46:22'),
(227, 'From shooting jumpers to asking personal questions, Carson Wentz fitting in with Colts', 'from-shooting-jumpers-to-asking-personal-questions,-carson-wentz-fitting-in-with-colts', 'The new Colts QB is embracing a fresh start in Indy, and his teammates are excited about having him around.', 'en', 1, 3, NULL, 'article', 0, 135, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/blog/indianapolis-colts/post/_/id/26408/from-shooting-jump-shots-to-asking-personal-questions-to-throwing-the-deep-ball-carson-wentz-is-fitting-in-with-colts', '2021-05-31 02:36:17', '2021-05-31 14:46:28'),
(228, '\'These shoulders were built for a reason\': LeBron ready for challenge if AD can\'t go', '\'these-shoulders-were-built-for-a-reason\':-lebron-ready-for-challenge-if-ad-can\'t-go', 'After the Lakers lost Anthony Davis and Game 4, they face yet another hurdle. But LeBron isn\'t about to back down.', 'en', 1, 3, NULL, 'article', 0, 136, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nba/story/_/id/31539372/2021-nba-playoffs-lebron-james-ready-challenge-anthony-davis-injury-keeps-out', '2021-05-31 04:17:03', '2021-05-31 14:46:32'),
(229, 'NHL Playoffs Daily: Game 7 showdown for Maple Leafs, Canadiens', 'nhl-playoffs-daily:-game-7-showdown-for-maple-leafs,-canadiens', 'It comes down to this for Toronto and Montreal. Plus, get caught up on all of the other series.', 'en', 1, 3, NULL, 'article', 0, 137, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/nhl/story/_/id/31537721/nhl-playoffs-daily-2021-game-7-showdown-toronto-maple-leafs-montreal-canadiens', '2021-05-31 03:13:18', '2021-05-31 14:46:36'),
(230, '76ers, Wizards play first game at venue with legal sportsbook', '76ers,-wizards-play-first-game-at-venue-with-legal-sportsbook', 'During an NBA playoff game in Washington, D.C., fans were able, for the first time, to bet at a legal sportsbook in the arena', 'en', 1, 3, NULL, 'article', 0, 138, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'https://www.espn.com/chalk/story/_/id/31538668/76ers-wizards-play-first-game-venue-legal-sportsbook', '2021-05-31 04:27:36', '2021-05-31 14:46:41'),
(231, 'Barca complete signing of Aguero from Man City', 'barca-complete-signing-of-aguero-from-man-city', 'Sergio Aguero will join Barcelona on a free transfer from Manchester City when his contract expires next month, it was announced on Monday.', 'en', 1, 3, NULL, 'article', 0, 139, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'https://www.espn.com/soccer/soccer-transfers/story/4398296/barcelona-sign-sergio-aguero-from-manchester-city-on-free-transfer', '2021-05-31 04:34:46', '2021-05-31 14:46:45'),
(232, 'BCCI\'s top brass in UAE: IPL, T20 World Cup on the agenda', 'bcci\'s-top-brass-in-uae:-ipl,-t20-world-cup-on-the-agenda', 'Discussions to be held on IPL bio-bubble norms, crowds, and hosting of the ICC event among other things', 'en', 1, 2, NULL, 'article', 0, 140, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264696.html?ex_cid=OTC-RSS', '2021-05-31 08:42:56', '2021-05-31 14:47:28'),
(233, 'Nick Hockley: Australia players\' IPL availability yet to be discussed ', 'nick-hockley:-australia-players\'-ipl-availability-yet-to-be-discussed', 'Priority is to reunite the IPL returnees with families as they come out of quarantine on Monday, CA CEO says', 'en', 1, 2, NULL, 'article', 0, 141, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264623.html?ex_cid=OTC-RSS', '2021-05-31 03:00:15', '2021-05-31 14:47:54'),
(234, 'Nick Hockley named permanent Cricket Australia chief executive after interim role for a year', 'nick-hockley-named-permanent-cricket-australia-chief-executive-after-interim-role-for-a-year', 'Hockley stepped into the job last June following the sacking of Kevin Roberts', 'en', 1, 2, NULL, 'article', 0, 142, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264611.html?ex_cid=OTC-RSS', '2021-05-30 22:50:17', '2021-05-31 14:48:24'),
(235, 'Smit Patel quits BCCI system to \'carve out a second coming of sorts\' in America', 'smit-patel-quits-bcci-system-to-\'carve-out-a-second-coming-of-sorts\'-in-america', 'The first stop is the Caribbean where he\'ll play in the upcoming CPL for the Barbados Tridents', 'en', 1, 2, NULL, 'article', 0, 143, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264609.html?ex_cid=OTC-RSS', '2021-05-31 00:58:38', '2021-05-31 14:48:56'),
(236, 'Explainer: Why are England and New Zealand playing a Test series now?', 'explainer:-why-are-england-and-new-zealand-playing-a-test-series-now?', 'It\'s not on the FTP, it\'s not part of the WTC, and it won\'t feature any of England\'s IPL players (bar one)', 'en', 1, 2, NULL, 'article', 0, 144, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264564.html?ex_cid=OTC-RSS', '2021-05-31 02:48:37', '2021-05-31 14:49:15'),
(237, '\'Forensic\' Ollie Robinson already planning for New Zealand ahead of expected Test debut', '\'forensic\'-ollie-robinson-already-planning-for-new-zealand-ahead-of-expected-test-debut', 'Sussex coach James Kirtley praises seamer\'s \"ability to dissect batsmen\"', 'en', 1, 2, NULL, 'article', 0, 145, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264567.html?ex_cid=OTC-RSS', '2021-05-30 11:49:38', '2021-05-31 14:49:27'),
(238, 'Saqib Mahmood etches himself into Roses history as Lancashire finally break Yorkshire resolve', 'saqib-mahmood-etches-himself-into-roses-history-as-lancashire-finally-break-yorkshire-resolve', 'Pace bowler\'s maiden five-for secures victory in dying embers of the day', 'en', 1, 2, NULL, 'article', 0, 146, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264561.html?ex_cid=OTC-RSS', '2021-05-31 05:19:34', '2021-05-31 14:49:39'),
(239, 'Danny Briggs inspires Warwickshire to victory as Group One gets tight', 'danny-briggs-inspires-warwickshire-to-victory-as-group-one-gets-tight', 'Spinner\'s fifty and four-for helps seal victory as Warwickshire stay in hunt for top-two spot', 'en', 1, 2, NULL, 'article', 0, 147, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264560.html?ex_cid=OTC-RSS', '2021-05-30 12:14:17', '2021-05-31 14:49:51'),
(240, 'Marcus Harris, Colin Ackermann gun down 378 as Leicestershire break season\'s duck', 'marcus-harris,-colin-ackermann-gun-down-378-as-leicestershire-break-season\'s-duck', 'Pair\'s 243-run stand proves crucial as Middlesex sink to sixth defeat in eight', 'en', 1, 2, NULL, 'article', 0, 148, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264559.html?ex_cid=OTC-RSS', '2021-05-30 11:52:41', '2021-05-31 14:50:03'),
(241, 'Mithali Raj moves on from 2018 spat with Powar - \'We can\'t be living in the past\'', 'mithali-raj-moves-on-from-2018-spat-with-powar---\'we-can\'t-be-living-in-the-past\'', '\'When it comes to playing for India, it\'s like serving your country, so personal issues, I don\'t really give any weightage\'', 'en', 1, 2, NULL, 'article', 0, 149, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264553.html?ex_cid=OTC-RSS', '2021-05-30 07:40:56', '2021-05-31 14:50:15'),
(242, 'Surrey flex their muscle with dominant display despite Jonny Tattersall defiance', 'surrey-flex-their-muscle-with-dominant-display-despite-jonny-tattersall-defiance', 'Gloucestershire loanee stranded on 86 as Surrey claim final five wickets ', 'en', 1, 2, NULL, 'article', 0, 150, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264551.html?ex_cid=OTC-RSS', '2021-05-30 07:53:44', '2021-05-31 14:50:27'),
(243, 'Rob Keogh, Saif Zaib ensure no nerves for Northants in Hove stroll', 'rob-keogh,-saif-zaib-ensure-no-nerves-for-northants-in-hove-stroll', 'Visitors up to third in Group Three with Sussex unable to exert pressure on chase', 'en', 1, 2, NULL, 'article', 0, 151, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264549.html?ex_cid=OTC-RSS', '2021-05-30 06:48:28', '2021-05-31 14:50:38'),
(244, 'Worcestershire wrap up points after maiden five-for, nine in the match for Dillon Pennington', 'worcestershire-wrap-up-points-after-maiden-five-for,-nine-in-the-match-for-dillon-pennington', 'Young seamer registers career-best performance for the second day running', 'en', 1, 2, NULL, 'article', 0, 152, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264548.html?ex_cid=OTC-RSS', '2021-05-30 06:23:30', '2021-05-31 14:50:50'),
(245, 'Group of PSL players and staff to leave for Abu Dhabi via Bahrain ', 'group-of-psl-players-and-staff-to-leave-for-abu-dhabi-via-bahrain', 'Another hurdle overcome as the PSL strives to get underway next month', 'en', 1, 2, NULL, 'article', 0, 153, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, 'http://www.espncricinfo.com/ci/content/story/1264533.html?ex_cid=OTC-RSS', '2021-05-31 00:10:45', '2021-05-31 14:51:04'),
(246, 'Star-studded Dhaka Premier League gets underway inside BCB\'s biggest bio-bubble', 'star-studded-dhaka-premier-league-gets-underway-inside-bcb\'s-biggest-bio-bubble', 'Tournament scheduled in a way that most of Bangladesh\'s top cricketers can take part during the break after the ODIs against Sri Lanka, and before their departure to Zimbabwe on June 29', 'en', 1, 2, NULL, 'article', 0, 154, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, 'http://www.espncricinfo.com/ci/content/story/1264530.html?ex_cid=OTC-RSS', '2021-05-30 04:23:11', '2021-05-31 14:51:15'),
(247, 'South Korea’s 2002 World Cup star Yoo Sang-chul dies at 49 : World Cup match winner', 'south-korea’s-2002-world-cup-star-yoo-sang-chul-dies-at-49-:-world-cup-match-winner', '<h2 class=\"synopsis\">The most famous of the Yoo\'s 18 goals was the one that sealed his country\'s first ever win in a World Cup match &mdash; 2-0 against Poland.</h2>\r\n<p>Yoo Sang-chul, one of the stars of South Korea&rsquo;s surprising run to the semifinals at the 2002 World Cup, has died after long battle with pancreatic&nbsp;<a class=\"\" href=\"https://indianexpress.com/about/cancer/\">cancer</a>. He was 49.</p>\r\n<p>Yoo played 124 times for South Korea from 1994 to 2005. The most famous of the Yoo&rsquo;s 18 goals was the one that sealed his country&rsquo;s first ever win in a World Cup match &mdash; 2-0 against Poland. It was in South Korea&rsquo;s first game in the World Cup it was co-hosting with Japan.</p>\r\n<p>&ldquo;We will forever remember the shouts and glory of that day with you. Rest in peace,&rdquo; the Korea Football Association said in a message posted Monday on its social media channels.</p>\r\n<p>South Korea&rsquo;s inspired run on home soil also included a win over Portugal in the group stage and a golden goal win over Italy in the Round of 16, with millions of people pouring onto the streets to celebrate. The Koreans advanced to the semifinals on penalties after their quarterfinal against Spain ended 0-0.</p>\r\n<p>The campaign concluded with a 1-0 loss to Germany in the semifinals and a 3-2 loss to Turkey in the third-place playoff. Reaching the top four remains the best performance by an Asian team at FIFA&rsquo;s global tournament.</p>\r\n<p>Yoo, a versatile midfielder who also played at the back and in attack during his long career, was included by FIFA in its 2002 World Cup All-Star team after appearing in all seven games for the South Koreans.</p>\r\n<p>After retiring in 2005, Yoo, who won league titles as a player in Japan with Yokohama F.Marinos and in South Korea with Ulsan Horangi, worked as a pundit on national television.</p>\r\n<p>Yoo started his coaching career in the K-League with Daejeon Citizen in 2011 and his last job was as head coach of Incheon United.</p>\r\n<p>He was diagnosed with cancer in November 2019 but remained with the team and only quit as head coach two months later, after helping Incheon avoid relegation to the second tier.</p>\r\n<div class=\"non-city-story-widget\">&nbsp;</div>\r\n<p>According to the Yonhap news agency, Yoo is one of only two players in K-League history to be included in the season-ending top XI as a forward, a midfielder and a defender.</p>', 'en', 1, 2, NULL, 'article', 0, 155, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'South Korea’s 2002 World Cup star Yoo Sang-chul dies at 49 : World Cup match winner', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2021-06-08 09:53:01', '2021-06-08 09:53:01'),
(248, 'testse', 'testse', '<p>afa fasfasdf</p>', 'en', 1, 2, NULL, 'article', 0, 154, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'testse', NULL, NULL, NULL, NULL, 'style_2', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-07-07 08:32:50', '2021-07-07 08:32:50'),
(249, 'afasdf', 'afasdf', '<p>asfasfds asfasfd</p>', 'en', 1, 6, NULL, 'article', 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'afasdf', NULL, NULL, NULL, NULL, 'style_2', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-07-29 03:46:32', '2021-07-29 03:46:32'),
(250, 'Welcome to Re Knowledge Community', 'welcome-to-re-knowledge-community', '<p>asdffdsa</p>', 'en', 1, NULL, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Welcome to Re Knowledge Community', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-09-24 06:26:46', '2021-09-24 06:26:46'),
(251, 'Welcome to Re Knowledge Communityasfasdf', 'welcome-to-re-knowledge-communityasfasdf', '<p>asdfasdfasdf</p>', 'en', 1, NULL, NULL, 'article', 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Welcome to Re Knowledge Communityasfasdf', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-09-24 06:37:50', '2021-09-24 06:37:50');
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `language`, `user_id`, `category_id`, `sub_category_id`, `post_type`, `submitted`, `image_id`, `visibility`, `auth_required`, `slider`, `slider_order`, `featured`, `featured_order`, `breaking`, `breaking_order`, `recommended`, `recommended_order`, `editor_picks`, `editor_picks_order`, `scheduled`, `meta_title`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `video_id`, `video_url_type`, `video_url`, `video_thumbnail_id`, `status`, `total_hit`, `contents`, `read_more_link`, `created_at`, `updated_at`) VALUES
(252, 'My personal category', 'my-personal-category', '<p>dfasdfadsf</p>', 'en', 1, NULL, NULL, 'article', 0, 154, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'My personal category', NULL, NULL, NULL, NULL, 'default', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-09-24 06:50:02', '2021-09-24 06:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_reaction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', '{\"users_read\":true,\"users_write\":true,\"users_delete\":true,\"settings_read\":true,\"settings_write\":true,\"settings_delete\":true,\"role_read\":true,\"role_write\":true,\"role_delete\":true,\"permission_read\":true,\"permission_write\":true,\"permission_delete\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"language_settings_delete\":true,\"pages_read\":true,\"pages_write\":true,\"pages_delete\":true,\"menu_read\":true,\"menu_write\":true,\"menu_delete\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"menu_item_delete\":true,\"post_read\":true,\"post_write\":true,\"post_delete\":true,\"category_read\":true,\"category_write\":true,\"category_delete\":true,\"widget_read\":true,\"widget_write\":true,\"widget_delete\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"newsletter_delete\":true,\"notification_read\":true,\"notification_write\":true,\"notification_delete\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"contact_message_delete\":true,\"ads_read\":true,\"ads_write\":true,\"ads_delete\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"theme_section_delete\":true,\"polls_read\":false,\"polls_write\":false,\"polls_delete\":false,\"socials_read\":true,\"socials_write\":true,\"socials_delete\":true,\"comments_read\":true,\"comments_write\":true,\"comments_delete\":true,\"album_read\":true,\"album_write\":true,\"album_delete\":true,\"rss_read\":true,\"rss_write\":true,\"rss_delete\":true}', '2021-05-29 07:21:13', '2021-05-29 07:21:13'),
(2, 'admin', 'Admin', '{\"users_read\":true,\"users_write\":true,\"settings_read\":true,\"settings_write\":true,\"role_read\":true,\"role_write\":true,\"permission_read\":true,\"permission_write\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"socials_read\":true,\"socials_write\":true,\"comments_read\":true,\"comments_write\":true,\"album_read\":true,\"album_write\":true,\"rss_read\":true,\"rss_write\":true}', '2021-05-29 07:21:14', '2021-05-31 05:17:50'),
(3, 'editor', 'Editor', '{\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true}', '2021-05-29 07:21:14', '2021-05-31 05:17:50'),
(4, 'user', 'User', NULL, '2021-05-29 07:21:14', '2021-05-29 07:21:14'),
(5, 'subscriber', 'Subscriber', NULL, '2021-05-29 07:21:14', '2021-05-29 07:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-29 07:21:16', '2021-05-29 07:21:16'),
(2, 4, '2021-05-31 10:41:23', '2021-05-31 10:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_limit` smallint(6) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `show_read_more` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `keep_date` tinyint(1) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rss_feeds`
--

INSERT INTO `rss_feeds` (`id`, `name`, `feed_url`, `language`, `category_id`, `sub_category_id`, `post_limit`, `auto_update`, `show_read_more`, `status`, `keep_date`, `meta_keywords`, `meta_description`, `tags`, `scheduled_date`, `layout`, `created_at`, `updated_at`) VALUES
(1, 'Sporting News', 'http://www.sportingnews.com/us/rss', 'en', 1, NULL, 15, 1, 1, 1, 1, NULL, NULL, NULL, '2021-05-29 10:43:46', 'default', '2021-05-29 10:43:46', '2021-05-29 10:43:46'),
(2, 'ESPN Cric Info', 'http://www.espncricinfo.com/rss/content/feeds/news/0.xml', 'en', 2, NULL, 15, 1, 1, 1, 1, NULL, NULL, NULL, '2021-05-29 10:53:00', 'default', '2021-05-29 10:53:26', '2021-05-29 11:31:13'),
(3, 'ESPN News', 'https://www.espn.com/espn/rss/news', 'en', 3, NULL, 15, 1, 1, 1, 1, NULL, NULL, NULL, '2021-05-29 11:06:41', 'default', '2021-05-29 11:06:41', '2021-05-29 11:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'facebook_client_id', '', 'en', NULL, NULL),
(2, 'facebook_client_secretkey', '', 'en', NULL, NULL),
(3, 'facebook_visibility', '0', 'en', NULL, NULL),
(4, 'facebook_callback_url', '', 'en', NULL, NULL),
(5, 'google_client_id', '', 'en', NULL, NULL),
(6, 'google_client_secretkey', '', 'en', NULL, NULL),
(7, 'google_visibility', '0', 'en', NULL, NULL),
(8, 'google_callback_url', '', 'en', NULL, NULL),
(9, 'preloader_option', '1', 'en', NULL, NULL),
(10, 'submit_news_status', '1', 'en', NULL, NULL),
(11, 'version', '110', 'en', NULL, NULL),
(12, 'default_language', 'en', 'en', '2021-05-29 07:21:34', '2021-05-29 07:21:34'),
(13, 'timezone', 'Asia/Katmandu', 'en', '2021-05-29 07:21:34', '2021-05-31 04:16:48'),
(14, 'application_name', 'SportsMala', 'en', '2021-05-29 07:21:34', '2021-05-29 07:21:34'),
(15, 'mail_driver', 'smtp', 'en', '2021-05-29 07:21:34', '2021-05-29 07:21:34'),
(16, 'mail_host', 'smtp.gmail.com', 'en', '2021-05-29 07:21:34', '2021-05-29 07:21:34'),
(17, 'sendmail_path', '/usr/bin/sendmail -bs', 'en', '2021-05-29 07:21:35', '2021-05-29 07:21:35'),
(18, 'mail_port', '465', 'en', '2021-05-29 07:21:35', '2021-05-29 07:21:35'),
(19, 'mail_address', 'mail.sportsmala@gmail.com', 'en', '2021-05-29 07:21:35', '2021-05-31 10:37:24'),
(20, 'mail_name', 'SportsMala - Sports News and Magazine', 'en', '2021-05-29 07:21:35', '2021-05-29 07:21:35'),
(21, 'mail_username', 'mail.sportsmala@gmail.com', 'en', '2021-05-29 07:21:35', '2021-05-31 10:37:24'),
(22, 'mail_password', 'KhelKud123@Viswa', 'en', '2021-05-29 07:21:35', '2021-05-31 10:37:25'),
(23, 'mail_encryption', 'ssl', 'en', '2021-05-29 07:21:35', '2021-05-29 07:21:35'),
(24, 'default_storage', 'local', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(25, 'aws_access_key_id', '***********', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(26, 'aws_secret_access_key', '***************', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(27, 'aws_default_region', 'ap-south-1', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(28, 'aws_bucket', 'demo11223', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(29, 'logo', 'images/logo.png', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(30, 'favicon', 'images/favicon.png', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(31, 'onesignal_api_key', '****************', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(32, 'onesignal_app_id', '************', 'en', '2021-05-29 07:21:36', '2021-05-29 07:21:36'),
(33, 'onesignal_action_message', 'We\'d like to show you notifications for the latest updates.', 'en', '2021-05-29 07:21:37', '2021-05-29 07:21:37'),
(34, 'onesignal_accept_button', 'ALLOW', 'en', '2021-05-29 07:21:37', '2021-05-29 07:21:37'),
(35, 'onesignal_cancel_button', 'NO THANKS', 'en', '2021-05-29 07:21:37', '2021-05-29 07:21:37'),
(36, 'notification_status', '1', 'en', '2021-05-29 07:21:37', '2021-05-29 07:21:37'),
(37, 'seo_title', 'SportsMala - Sports News and Magazine', 'en', '2021-05-29 07:21:37', '2021-05-29 07:21:37'),
(38, 'seo_keywords', '', 'en', '2021-05-29 07:21:38', '2021-05-29 07:21:38'),
(39, 'seo_meta_description', '', 'en', '2021-05-29 07:21:38', '2021-05-29 07:21:38'),
(40, 'author_name', 'byteRays', 'en', '2021-05-29 07:21:38', '2021-05-29 07:21:38'),
(41, 'og_title', 'SportsMala - Sports News and Magazine', 'en', '2021-05-29 07:21:38', '2021-05-29 07:21:38'),
(42, 'og_description', '', 'en', '2021-05-29 07:21:39', '2021-05-29 07:21:39'),
(43, 'og_image', 'images/20201018123322_og_image_49.png', 'en', '2021-05-29 07:21:39', '2021-05-29 07:21:39'),
(44, 'google_analytics_id', 'UA-xxxxxxxx-1', 'en', '2021-05-29 07:21:39', '2021-05-29 07:21:39'),
(45, 'page_detail_prefix', NULL, 'en', '2021-05-29 07:21:39', '2021-05-31 15:08:38'),
(46, 'article_detail_prefix', NULL, 'en', '2021-05-29 07:21:39', '2021-05-31 15:08:38'),
(47, 'url', 'http://127.0.0.1:8000', 'en', '2021-05-29 07:21:40', '2021-05-29 07:21:40'),
(48, 'address', 'Kathmandu', 'en', '2021-05-29 07:21:40', '2021-05-29 07:21:40'),
(49, 'email', 'info@sportsmala.com', 'en', '2021-05-29 07:21:40', '2021-05-29 07:21:40'),
(50, 'phone', '014470160', 'en', '2021-05-29 07:21:40', '2021-05-31 03:25:14'),
(51, 'zip_code', '1207', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(52, 'city', 'Kathmandu', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(53, 'state', 'Bagmati', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(54, 'country', 'Nepal', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(55, 'website', 'https://www.sportsmala.com', 'en', '2021-05-29 07:21:41', '2021-05-31 03:26:03'),
(56, 'company_registration', '123456789', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(57, 'tax_number', '123456789', 'en', '2021-05-29 07:21:41', '2021-05-29 07:21:41'),
(58, 'about_us_description', 'SportsMala is the first Sports news, event and activities websites of Nepal.', 'en', '2021-05-29 07:21:42', '2021-05-31 03:25:14'),
(59, 'captcha_secret', '**********', 'en', '2021-05-29 07:21:42', '2021-05-29 07:21:42'),
(60, 'captcha_sitekey', '***********', 'en', '2021-05-29 07:21:42', '2021-05-29 07:21:42'),
(61, 'captcha_visibility', '0', 'en', '2021-05-29 07:21:42', '2021-05-29 07:21:42'),
(62, 'copyright_text', 'Copyright © 2020 SportsMala - Sports News and Magazine - All Rights Reserved.', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(63, 'signature', '<p>Best Regards</p>', 'en', '2021-05-29 07:21:43', '2021-05-31 10:33:10'),
(64, 'addthis_public_id', '**********', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(65, 'addthis_toolbox', '**********', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(66, 'adthis_option', '1', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(67, 'inbuild_comment', '1', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(68, 'disqus_comment', '1', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(69, 'disqus_short_name', 'sportsmala', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(70, 'facebook_comment', '1', 'en', '2021-05-29 07:21:43', '2021-05-29 07:21:43'),
(71, 'facebook_app_id', '********', 'en', '2021-05-29 07:21:44', '2021-05-29 07:21:44'),
(72, 'predefined_header', '', 'en', '2021-05-29 07:21:44', '2021-05-29 07:21:44'),
(73, 'custom_header_style', '', 'en', '2021-05-29 07:21:44', '2021-05-29 07:21:44'),
(74, 'custom_footer_js', '', 'en', '2021-05-29 07:21:44', '2021-05-29 07:21:44'),
(75, 'ffmpeg_status', '1', 'en', '2021-05-29 07:21:44', '2021-05-29 07:21:44'),
(76, 'application_name', 'SportsMala', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(77, 'address', 'Kathmandu', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(78, 'phone', '01400620055', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(79, 'zip_code', '1207', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(80, 'city', 'Kathmandu', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(81, 'state', 'Kathmandu', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(82, 'country', 'Nepal', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(83, 'website', 'spaGreen.net', 'ar', '2021-05-29 07:21:45', '2021-05-29 07:21:45'),
(84, 'company_registration', '123456789', 'ar', '2021-05-29 07:21:46', '2021-05-29 07:21:46'),
(85, 'tax_number', '123456789', 'en', '2021-05-29 07:21:46', '2021-05-29 07:21:46'),
(86, 'about_us_description', 'اعترضه عوارض كثيرة، من استحالة وجود ما لا يستضيء به، وهو الهواء الشفاف جداً؛ ومنها ما يستضيء به غاية الاستضاءة وهي الأجسام الكثيفة فتراه يظهر فيها. فإنه وإن نسب إلى الجسم الذي يظهر فيه، فليس هو في ذاته تلك الشريفة، هل يمكن أن يتبدل ويتعاقب على أوجه كثيرة، وهو معنى الجسمية؛ والآخر ما تنفرد به حقيقة كل واحد منهما الآخر، ولولا ذلك لكانا شيئاً واحداً فيه: هو لها بمنزلة الروح الحيواني مما يقيه من الخارج، ويدفع عنه وجوه الأذى: من البرد والحر والمطر ولفح الشمس والحيوانات المؤذية ونحو ذلك. ورأى أنه إن تناول ضرورية من هذه الأجسام الصقيلة في المثال المتقدم، يشبه معنى الجسمية التي لسائر الأجسام ذوات الصور. وهذا الشيء الذي به عرف الموجود الواجب الوجود، وقد كان تبين له أنها من حقيقة. فلاح له بهذا الاعتبار، إن الجسم، بما هو جسم. وقد تبين فيها أيضاً إن الأجسام التي في عالم الكون والفساد، وهو البدن المظلم ذو الأعضاء المنقسمة، والقوى المختلفة، والمنازع المتفننة. والتشبه الثاني: يجب عليه من حال المشاهدة، إلا بعد التمرن والاعتمال مدة طويلة في التشبه الثاني، فيحصل له به هذا الموضع الذي كان يحرك هذا الحيوان، وأن في كل وقت أشد ما يكون الضوء في وسطه، لأنه أبعد المواضع من المظلمة، ولأنه يقابل من الشمس أبداً هو أعظم من الأرض قط، وإنما يكون الموضع وسط دائرة الضياء إذا كانت الشمس على سمت رؤوس الساكنين فيه، وحينئذ تكون الحرارة في ذلك المقام إلا بالوصول إليه. فأصغ الآن بسمع قلبك، وحدق ييصر إلى ما تحتها من عالم الكون والفساد، تفكر في هذا الوقت مزيد بيان بالمشافهة على ما أودعه هذه الاوراق فان المجال ضيق، والتحكم بالألفاظ على آمر ليس من شأنه أن يلفظ به خطر. فأقول: انه لما عاد إلى مثل حاله الأول؟ فلم يجد شيئاً يعم الأجسام كلها. إلا معنى الامتداد الموجود في جميعها في الأقطار الثلاثة: الطول، والعرض، والعمق؛ لا ينفك شيء منها سوى الظبية التي ربته، ووصف له شأنه كله وكيف ترقى بالمعرفة، حتى انتهى إلى عالم الحس. ثم تكلف الوصول إلى ذلك الموجود الواجب الوجود. وقد كان حصل عنده العلم فحصلت عنده الذات. وهذه الذات لا تحصل إلا عند من ينكره التولد. ونحن نصف هنا كيف تربى وكيف أنتقل في أحواله حتى يبلغ المبلغ العظيم. وأما الذين زعموا أنه تولد من الأرض قط، وإنما يكون الموضع وسط دائرة الضياء إذا كانت الشمس على سمت.', 'ar', '2021-05-29 07:21:46', '2021-05-29 07:21:46'),
(87, 'copyright_text', 'حقوق النشر  © 2020 ONNO News and Magazine - كل الحقوق محفوظة.', 'ar', '2021-05-29 07:21:46', '2021-05-29 07:21:46'),
(88, 'signature', 'Best Regards', 'ar', '2021-05-29 07:21:46', '2021-05-29 07:21:46'),
(89, 'onesignal_action_message', 'We\'d like to show you notifications for the latest updates.', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(90, 'onesignal_accept_button', 'ALLOW', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(91, 'onesignal_cancel_button', 'NO THANKS', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(92, 'seo_title', 'Your Website Title', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(93, 'seo_keywords', '', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(94, 'seo_meta_description', '', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(95, 'author_name', 'SpaGreen', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(96, 'og_title', 'Your Website Title', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(97, 'og_description', '', 'ar', '2021-05-29 07:21:47', '2021-05-29 07:21:47'),
(98, 'status', NULL, 'en', '2021-05-31 03:25:14', '2021-05-31 03:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon_bg_color`, `text_bg_color`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '#', '#0061C2', '#056ED8', 'fa fa-facebook', 1, '2021-05-29 07:20:24', '2021-05-29 07:20:24'),
(2, 'Youtube', '#', '#FE031C', '#E50017', 'fa fa-youtube-play', 1, '2021-05-29 07:20:26', '2021-05-29 07:20:26'),
(3, 'Twitter', '#', '#2391FF', '#349AFF', 'fa fa-twitter', 1, '2021-05-29 07:20:26', '2021-05-29 07:20:26'),
(4, 'Linkedin', '#', '#349AFF', '#349affd9', 'fa fa-linkedin', 1, '2021-05-29 07:20:26', '2021-05-29 07:20:26'),
(5, 'Skype', '#', '#4ba3fcd9', '#4BA3FC', 'fa fa-skype', 1, '2021-05-29 07:20:26', '2021-05-29 07:20:26'),
(6, 'Pinterest', '#', '#C2000D', '#c2000dd9', 'fa fa-pinterest-square', 1, '2021-05-29 07:20:26', '2021-05-29 07:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `slug`, `category_id`, `language`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(2, 'Nepal', 'nepal', 2, 'en', '', '', '2021-05-29 08:47:45', '2021-05-29 08:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_hit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `total_hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 10, 1, '2021-05-29 07:21:27', '2021-05-29 07:21:27'),
(2, 'Football', 12, 1, '2021-05-29 07:21:28', '2021-05-29 07:21:28'),
(3, 'Cricket', 10, 1, '2021-05-29 07:21:28', '2021-05-29 07:21:28'),
(4, 'Education', 10, 1, '2021-05-29 07:21:28', '2021-05-29 07:21:28'),
(5, 'Business', 10, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(6, 'Technology', 10, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(7, 'Science', 10, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(8, 'Bangladesh', 2, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(9, 'World Cup', 10, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(10, 'Politics', 6, 1, '2021-05-29 07:21:29', '2021-05-29 07:21:29'),
(11, 'Computer', 2, 1, '2021-05-29 07:21:30', '2021-05-29 07:21:30'),
(12, 'Apple', 3, 1, '2021-05-29 07:21:30', '2021-05-29 07:21:30'),
(13, 'Microsoft', 3, 1, '2021-05-29 07:21:30', '2021-05-29 07:21:30'),
(14, 'Google', 4, 1, '2021-05-29 07:21:30', '2021-05-29 07:21:30'),
(15, 'Travel', 10, 1, '2021-05-29 07:21:30', '2021-05-29 07:21:30'),
(16, 'Virus', 10, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(17, 'Culture', 10, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(18, 'Culture', 10, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(19, 'Health', 10, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(20, 'Tree', 5, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(21, 'Environment', 8, 1, '2021-05-29 07:21:31', '2021-05-29 07:21:31'),
(22, 'Pollution', 6, 1, '2021-05-29 07:21:32', '2021-05-29 07:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `options`, `status`, `created_at`, `updated_at`) VALUES
(1, 'theme_one', NULL, '{\"header_style\":\"header_1\",\"footer_style\":\"footer_1\",\"primary_color\":\"#1f509e\",\"fonts\":\"Noto+Sans+JP\",\"mode\":\"\"}', 1, '2021-05-29 07:22:41', '2021-05-29 15:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `theme_sections`
--

CREATE TABLE `theme_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `section_style` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_sections`
--

INSERT INTO `theme_sections` (`id`, `theme_id`, `type`, `label`, `order`, `category_id`, `ad_id`, `post_amount`, `section_style`, `is_primary`, `status`, `language`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Primary Section', 1, NULL, NULL, 10, 'style_1', 1, 1, NULL, '2021-05-29 07:22:41', '2021-07-07 08:30:39'),
(2, 1, 3, 'latest_post', 6, NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-05-29 07:22:41', '2021-05-29 07:22:41'),
(3, 1, 1, 'Sports', 1, 1, 2, NULL, 'style_5', 0, 1, 'en', '2021-05-31 14:42:56', '2021-05-31 14:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'it will be array data',
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `newsletter_enable` tinyint(1) NOT NULL DEFAULT 1,
  `is_user_banned` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 banned, 1 unbanned',
  `user_banned_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribe_banned` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 banned, 1 unbanned',
  `subscribe_banned_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'it will be array data',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 inactive user, 1 active user',
  `deactivate_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_auth_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'this is for mobile app.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `profile_image`, `image_id`, `newsletter_enable`, `is_user_banned`, `user_banned_reason`, `is_subscribe_banned`, `subscribe_banned_reason`, `about_us`, `social_media`, `is_active`, `deactivate_reason`, `firebase_auth_id`, `created_at`, `updated_at`) VALUES
(1, 'bishal.khatri343@gmail.com', '$2y$10$f.af4a1ISfkdvHqCYCg6tOK03dEqYgTcrbYjUC6qGZziRsyXRJ3W2', '{\"email_show\":0}', '2021-09-24 06:26:21', 'Admin', 'User', NULL, NULL, 0, 1, NULL, 1, NULL, NULL, '', 1, NULL, NULL, '2021-05-29 07:21:15', '2021-09-24 06:26:21'),
(2, 'npalien4u@gmail.com', '$2y$10$QAkLp0/lcxm9Vzqt5VVAquFwWbITIEddEL3o7IHY0Nxy7aUjXU7WC', NULL, NULL, 'Alien', 'Shrestha', NULL, NULL, 1, 1, NULL, 1, NULL, NULL, '', 1, NULL, NULL, '2021-05-31 10:41:23', '2021-05-31 10:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_144p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_240p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_360p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_480p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_720p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_1080p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_trackers`
--

CREATE TABLE `visitor_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_type` tinyint(1) DEFAULT NULL COMMENT '1, home page, 2 post details, 3 page detail',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_trackers`
--

INSERT INTO `visitor_trackers` (`id`, `page_type`, `slug`, `url`, `source_url`, `ip`, `agent_browser`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/install', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 07:07:49', '2021-05-29 07:07:49'),
(2, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 07:11:27', '2021-05-29 07:11:27'),
(3, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/sub-categories', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 07:40:20', '2021-05-29 07:40:20'),
(4, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 08:44:21', '2021-05-29 08:44:21'),
(5, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:18:32', '2021-05-29 10:18:32'),
(6, 2, 'sample-video-post', 'http://sportsmala.laravel.lab/story/sample-video-post', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 10:18:44', '2021-05-29 10:18:44'),
(7, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/sample-video-post', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:18:47', '2021-05-29 10:18:47'),
(8, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/rss-feeds', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:33:34', '2021-05-29 10:33:34'),
(9, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:44:04', '2021-05-29 10:44:04'),
(10, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:44:49', '2021-05-29 10:44:49'),
(11, 2, 'white-sox-fans-love-team\'s-\'city-connect\'-jersey,-have-jokes-about-tony-la-russa', 'http://sportsmala.laravel.lab/story/white-sox-fans-love-team%27s-%27city-connect%27-jersey,-have-jokes-about-tony-la-russa', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 10:45:00', '2021-05-29 10:45:00'),
(12, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/white-sox-fans-love-team%27s-%27city-connect%27-jersey,-have-jokes-about-tony-la-russa', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 10:54:21', '2021-05-29 10:54:21'),
(13, 2, 'icc-wtc-final---when-the-sixth-day-will-come-into-force', 'http://sportsmala.laravel.lab/story/icc-wtc-final---when-the-sixth-day-will-come-into-force', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 10:54:57', '2021-05-29 10:54:57'),
(14, 2, 'aravinda-de-silva-on-sri-lanka-players-protesting-their-new-contracts:-\'they-should-win-games-and-not-complain\'', 'http://sportsmala.laravel.lab/story/aravinda-de-silva-on-sri-lanka-players-protesting-their-new-contracts:-%27they-should-win-games-and-not-complain%27', 'http://sportsmala.laravel.lab/story/icc-wtc-final---when-the-sixth-day-will-come-into-force', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 10:55:15', '2021-05-29 10:55:15'),
(15, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:03:02', '2021-05-29 11:03:02'),
(16, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-password', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:13:57', '2021-05-29 11:13:57'),
(17, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-password', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:15:18', '2021-05-29 11:15:18'),
(18, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-password', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:15:56', '2021-05-29 11:15:56'),
(19, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-password', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:16:25', '2021-05-29 11:16:25'),
(20, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:18:00', '2021-05-29 11:18:00'),
(21, 2, NULL, 'http://sportsmala.laravel.lab/category/nepal', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:18:33', '2021-05-29 11:18:33'),
(22, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/category/nepal', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:29:57', '2021-05-29 11:29:57'),
(23, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:30:14', '2021-05-29 11:30:14'),
(24, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/post/rss-feeds', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:34:15', '2021-05-29 11:34:15'),
(25, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:34:34', '2021-05-29 11:34:34'),
(26, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:35:05', '2021-05-29 11:35:05'),
(27, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 11:35:21', '2021-05-29 11:35:21'),
(28, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 12:10:05', '2021-05-29 12:10:05'),
(29, 2, 'here-are-the-5-closest-indianapolis-500-finishes-in-race-history', 'http://sportsmala.laravel.lab/story/here-are-the-5-closest-indianapolis-500-finishes-in-race-history', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 12:10:30', '2021-05-29 12:10:30'),
(30, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/manually-feeding/1', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 12:10:43', '2021-05-29 12:10:43'),
(31, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/here-are-the-5-closest-indianapolis-500-finishes-in-race-history', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 12:10:51', '2021-05-29 12:10:51'),
(32, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/here-are-the-5-closest-indianapolis-500-finishes-in-race-history', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:05:36', '2021-05-29 13:05:36'),
(33, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/here-are-the-5-closest-indianapolis-500-finishes-in-race-history', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:05:51', '2021-05-29 13:05:51'),
(34, 2, 'white-sox-fans-love-team\'s-\'city-connect\'-jersey,-have-jokes-about-tony-la-russa', 'http://sportsmala.laravel.lab/story/white-sox-fans-love-team%27s-%27city-connect%27-jersey,-have-jokes-about-tony-la-russa', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 13:06:58', '2021-05-29 13:06:58'),
(35, 2, 'champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 13:07:39', '2021-05-29 13:07:39'),
(36, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:08:01', '2021-05-29 13:08:01'),
(37, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:12:25', '2021-05-29 13:12:25'),
(38, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:16:00', '2021-05-29 13:16:00'),
(39, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:17:55', '2021-05-29 13:17:55'),
(40, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:19:14', '2021-05-29 13:19:14'),
(41, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:20:30', '2021-05-29 13:20:30'),
(42, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:24:15', '2021-05-29 13:24:15'),
(43, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:25:04', '2021-05-29 13:25:04'),
(44, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/champions-league-final-2021:-date,-time,-odds,-tv-schedule-&-location-for-chelsea-vs.-manchester-city', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:25:30', '2021-05-29 13:25:30'),
(45, 2, '\'scoring-big-hundreds-and-taking-five-fors\'---dean-elgar\'s-south-africa-ready-for-a-\'new-chapter\'', 'http://sportsmala.laravel.lab/story/%27scoring-big-hundreds-and-taking-five-fors%27---dean-elgar%27s-south-africa-ready-for-a-%27new-chapter%27', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 13:25:57', '2021-05-29 13:25:57'),
(46, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/%27scoring-big-hundreds-and-taking-five-fors%27---dean-elgar%27s-south-africa-ready-for-a-%27new-chapter%27', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:26:46', '2021-05-29 13:26:46'),
(47, 2, 'retro-live---relive-the-excitement-of-past-ipl-finals', 'http://sportsmala.laravel.lab/story/retro-live---relive-the-excitement-of-past-ipl-finals', 'http://sportsmala.laravel.lab/search?search=retro+live', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 13:29:46', '2021-05-29 13:29:46'),
(48, 2, 'retro-live---relive-the-excitement-of-past-ipl-finals', 'http://sportsmala.laravel.lab/story/retro-live---relive-the-excitement-of-past-ipl-finals', 'http://sportsmala.laravel.lab/search?search=retro+live', '192.168.88.100', 'Google Chrome', '2021-05-29', '2021-05-29 13:30:26', '2021-05-29 13:30:26'),
(49, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/retro-live---relive-the-excitement-of-past-ipl-finals', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:49:19', '2021-05-29 13:49:19'),
(50, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/retro-live---relive-the-excitement-of-past-ipl-finals', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:51:44', '2021-05-29 13:51:44'),
(51, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/retro-live---relive-the-excitement-of-past-ipl-finals', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:52:10', '2021-05-29 13:52:10'),
(52, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:52:25', '2021-05-29 13:52:25'),
(53, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:52:28', '2021-05-29 13:52:28'),
(54, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:52:41', '2021-05-29 13:52:41'),
(55, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/submit/news', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:57:27', '2021-05-29 13:57:27'),
(56, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/submit/news', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 13:58:52', '2021-05-29 13:58:52'),
(57, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/submit/news', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:04:28', '2021-05-29 14:04:28'),
(58, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/submit/news', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:05:14', '2021-05-29 14:05:14'),
(59, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/submit/news', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:07:41', '2021-05-29 14:07:41'),
(60, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:07:57', '2021-05-29 14:07:57'),
(61, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:08:30', '2021-05-29 14:08:30'),
(62, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:08:32', '2021-05-29 14:08:32'),
(63, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:08:47', '2021-05-29 14:08:47'),
(64, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:08:48', '2021-05-29 14:08:48'),
(65, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:14:22', '2021-05-29 14:14:22'),
(66, 1, NULL, 'http://sportsmala.laravel.lab/np', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:15:54', '2021-05-29 14:15:54'),
(67, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:16:10', '2021-05-29 14:16:10'),
(68, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:18:22', '2021-05-29 14:18:22'),
(69, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:18:53', '2021-05-29 14:18:53'),
(70, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:20:09', '2021-05-29 14:20:09'),
(71, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 14:20:56', '2021-05-29 14:20:56'),
(72, 1, NULL, 'http://sportsmala.laravel.lab/np', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:21:23', '2021-05-29 15:21:23'),
(73, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:22:57', '2021-05-29 15:22:57'),
(74, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/np', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:28:02', '2021-05-29 15:28:02'),
(75, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:28:09', '2021-05-29 15:28:09'),
(76, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:28:26', '2021-05-29 15:28:26'),
(77, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:35:58', '2021-05-29 15:35:58'),
(78, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:36:20', '2021-05-29 15:36:20'),
(79, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:36:37', '2021-05-29 15:36:37'),
(80, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:36:51', '2021-05-29 15:36:51'),
(81, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:37:09', '2021-05-29 15:37:09'),
(82, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:37:42', '2021-05-29 15:37:42'),
(83, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:38:24', '2021-05-29 15:38:24'),
(84, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:44:24', '2021-05-29 15:44:24'),
(85, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:44:35', '2021-05-29 15:44:35'),
(86, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:46:21', '2021-05-29 15:46:21'),
(87, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:47:20', '2021-05-29 15:47:20'),
(88, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:48:10', '2021-05-29 15:48:10'),
(89, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.10', 'Google Chrome', NULL, '2021-05-29 15:48:45', '2021-05-29 15:48:45'),
(90, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/', '192.168.88.10', 'Google Chrome', NULL, '2021-05-29 15:49:10', '2021-05-29 15:49:10'),
(91, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.10', 'Google Chrome', NULL, '2021-05-29 15:49:19', '2021-05-29 15:49:19'),
(92, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:50:07', '2021-05-29 15:50:07'),
(93, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:50:08', '2021-05-29 15:50:08'),
(94, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:50:58', '2021-05-29 15:50:58'),
(95, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:51:00', '2021-05-29 15:51:00'),
(96, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:51:07', '2021-05-29 15:51:07'),
(97, 2, 'nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', 'http://sportsmala.laravel.lab/story/nba-playoff-bracket-2021:-updated-tv-schedule,-scores,-results-for-round-1', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:51:14', '2021-05-29 15:51:14'),
(98, 2, 'pujols-robbed-of-walk-off-hr;-giants-win-in-10', 'http://sportsmala.laravel.lab/story/pujols-robbed-of-walk-off-hr;-giants-win-in-10', 'http://sportsmala.laravel.lab/', '192.168.88.10', 'Google Chrome', '2021-05-29', '2021-05-29 15:51:36', '2021-05-29 15:51:36'),
(99, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', NULL, '2021-05-29 15:51:53', '2021-05-29 15:51:53'),
(100, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Mozilla Firefox', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(101, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(102, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Mozilla Firefox', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(103, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(104, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(105, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(106, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.12', 'Mozilla Firefox', NULL, '2021-05-30 08:01:57', '2021-05-30 08:01:57'),
(107, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:23:39', '2021-05-30 08:23:39'),
(108, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-preference', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:49:39', '2021-05-30 08:49:39'),
(109, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/author-preference', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:50:11', '2021-05-30 08:50:11'),
(110, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:51:29', '2021-05-30 08:51:29'),
(111, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:51:52', '2021-05-30 08:51:52'),
(112, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 08:52:03', '2021-05-30 08:52:03'),
(113, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 12:24:21', '2021-05-30 12:24:21'),
(114, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.12', 'Google Chrome', NULL, '2021-05-30 12:25:38', '2021-05-30 12:25:38'),
(115, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-30 14:26:24', '2021-05-30 14:26:24'),
(116, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:05:19', '2021-05-31 03:05:19'),
(117, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:05:38', '2021-05-31 03:05:38'),
(118, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:08:16', '2021-05-31 03:08:16'),
(119, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:08:41', '2021-05-31 03:08:41'),
(120, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/setting-company', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:25:41', '2021-05-31 03:25:41'),
(121, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:27:04', '2021-05-31 03:27:04'),
(122, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:31:39', '2021-05-31 03:31:39'),
(123, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:40:58', '2021-05-31 03:40:58'),
(124, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:41:06', '2021-05-31 03:41:06'),
(125, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:41:13', '2021-05-31 03:41:13'),
(126, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:41:22', '2021-05-31 03:41:22'),
(127, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:41:44', '2021-05-31 03:41:44'),
(128, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:41:55', '2021-05-31 03:41:55'),
(129, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:42:03', '2021-05-31 03:42:03'),
(130, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:42:48', '2021-05-31 03:42:48'),
(131, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:43:08', '2021-05-31 03:43:08'),
(132, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:43:16', '2021-05-31 03:43:16'),
(133, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:43:46', '2021-05-31 03:43:46'),
(134, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:43:51', '2021-05-31 03:43:51'),
(135, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:44:39', '2021-05-31 03:44:39'),
(136, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:44:46', '2021-05-31 03:44:46'),
(137, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:45:02', '2021-05-31 03:45:02'),
(138, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:45:21', '2021-05-31 03:45:21'),
(139, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:45:39', '2021-05-31 03:45:39'),
(140, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:45:47', '2021-05-31 03:45:47'),
(141, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:46:06', '2021-05-31 03:46:06'),
(142, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:46:28', '2021-05-31 03:46:28'),
(143, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:46:40', '2021-05-31 03:46:40'),
(144, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 03:46:51', '2021-05-31 03:46:51'),
(145, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/comments', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:43:23', '2021-05-31 04:43:23'),
(146, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/comments', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:43:31', '2021-05-31 04:43:31'),
(147, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:43:38', '2021-05-31 04:43:38'),
(148, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:43:38', '2021-05-31 04:43:38'),
(149, 2, NULL, 'http://sportsmala.laravel.lab/category/nepal', 'http://sportsmala.laravel.lab/category/asia', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:44:21', '2021-05-31 04:44:21'),
(150, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/category/nepal', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 04:44:26', '2021-05-31 04:44:26'),
(151, 2, NULL, 'http://sportsmala.laravel.lab/category/world', 'http://sportsmala.laravel.lab/page/about-us', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 05:03:09', '2021-05-31 05:03:09'),
(152, 2, 'baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/story/baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 05:03:23', '2021-05-31 05:03:23'),
(153, 2, 'baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/story/baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 05:04:00', '2021-05-31 05:04:00'),
(154, 2, 'baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/story/baby-elephant-surprises-caretaker-with-a-hug', 'http://sportsmala.laravel.lab/category/world', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 05:06:00', '2021-05-31 05:06:00'),
(155, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 07:31:07', '2021-05-31 07:31:07'),
(156, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/setting-email', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 10:39:03', '2021-05-31 10:39:03'),
(157, 2, NULL, 'http://sportsmala.laravel.lab/category/asia', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 11:07:47', '2021-05-31 11:07:47'),
(158, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/appearance/sections', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 14:43:05', '2021-05-31 14:43:05'),
(159, 2, 'new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', 'http://sportsmala.laravel.lab/story/new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', 'http://sportsmala.laravel.lab/search?search=sri', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 14:44:47', '2021-05-31 14:44:47'),
(160, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 14:45:13', '2021-05-31 14:45:13'),
(161, 2, 'new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', 'http://sportsmala.laravel.lab/story/new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 14:46:08', '2021-05-31 14:46:08'),
(162, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/story/new-look-sri-lanka-face-struggling-bangladesh-in-search-for-super-league-points', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 14:46:49', '2021-05-31 14:46:49'),
(163, 2, 'barca-complete-signing-of-aguero-from-man-city', 'http://sportsmala.laravel.lab/story/barca-complete-signing-of-aguero-from-man-city', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 14:47:15', '2021-05-31 14:47:15'),
(164, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 15:08:00', '2021-05-31 15:08:00'),
(165, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/setting/settings-url', '192.168.88.100', 'Google Chrome', NULL, '2021-05-31 15:08:43', '2021-05-31 15:08:43'),
(166, 2, 'star-studded-dhaka-premier-league-gets-underway-inside-bcb\'s-biggest-bio-bubble', 'http://sportsmala.laravel.lab/article/star-studded-dhaka-premier-league-gets-underway-inside-bcb%27s-biggest-bio-bubble', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-05-31', '2021-05-31 15:08:51', '2021-05-31 15:08:51'),
(167, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-06-03 14:48:27', '2021-06-03 14:48:27'),
(168, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post', '192.168.88.100', 'Google Chrome', NULL, '2021-06-08 09:53:25', '2021-06-08 09:53:25'),
(169, 2, 'south-korea’s-2002-world-cup-star-yoo-sang-chul-dies-at-49-:-world-cup-match-winner', 'http://sportsmala.laravel.lab/article/south-korea%E2%80%99s-2002-world-cup-star-yoo-sang-chul-dies-at-49-:-world-cup-match-winner', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', '2021-06-08', '2021-06-08 09:53:57', '2021-06-08 09:53:57'),
(170, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-07 08:25:54', '2021-07-07 08:25:54'),
(171, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-07-07 08:26:02', '2021-07-07 08:26:02'),
(172, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-07-07 08:30:49', '2021-07-07 08:30:49'),
(173, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/', '192.168.88.100', 'Google Chrome', NULL, '2021-07-07 08:33:01', '2021-07-07 08:33:01'),
(174, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/dashboard', '192.168.88.100', 'Google Chrome', NULL, '2021-07-11 09:32:27', '2021-07-11 09:32:27'),
(175, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:27:39', '2021-07-12 11:27:39'),
(176, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:28:05', '2021-07-12 11:28:05'),
(177, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:30:11', '2021-07-12 11:30:11'),
(178, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:30:34', '2021-07-12 11:30:34'),
(179, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:30:49', '2021-07-12 11:30:49'),
(180, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:31:32', '2021-07-12 11:31:32'),
(181, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:32:29', '2021-07-12 11:32:29'),
(182, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:32:45', '2021-07-12 11:32:45'),
(183, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:33:06', '2021-07-12 11:33:06'),
(184, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:33:35', '2021-07-12 11:33:35'),
(185, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:33:57', '2021-07-12 11:33:57'),
(186, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:34:46', '2021-07-12 11:34:46'),
(187, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:35:01', '2021-07-12 11:35:01'),
(188, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:35:24', '2021-07-12 11:35:24'),
(189, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:35:39', '2021-07-12 11:35:39'),
(190, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:36:22', '2021-07-12 11:36:22'),
(191, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:37:02', '2021-07-12 11:37:02'),
(192, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:38:01', '2021-07-12 11:38:01'),
(193, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:39:23', '2021-07-12 11:39:23'),
(194, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:40:56', '2021-07-12 11:40:56'),
(195, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:45:29', '2021-07-12 11:45:29'),
(196, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:46:45', '2021-07-12 11:46:45'),
(197, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:47:14', '2021-07-12 11:47:14'),
(198, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:47:26', '2021-07-12 11:47:26'),
(199, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:48:26', '2021-07-12 11:48:26'),
(200, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:49:04', '2021-07-12 11:49:04'),
(201, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:49:22', '2021-07-12 11:49:22'),
(202, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:49:33', '2021-07-12 11:49:33'),
(203, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/login', '192.168.88.100', 'Google Chrome', NULL, '2021-07-12 11:49:42', '2021-07-12 11:49:42'),
(204, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-07-29 03:33:15', '2021-07-29 03:33:15'),
(205, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/categories', '192.168.88.100', 'Google Chrome', NULL, '2021-07-29 03:35:35', '2021-07-29 03:35:35'),
(206, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab/post/create/article', '192.168.88.100', 'Google Chrome', NULL, '2021-07-29 03:46:44', '2021-07-29 03:46:44'),
(207, 1, NULL, 'http://sportsmala.laravel.lab', 'http://sportsmala.laravel.lab', '192.168.88.100', 'Google Chrome', NULL, '2021-09-20 03:33:48', '2021-09-20 03:33:48'),
(208, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/search?search=f', '127.0.0.1', 'Google Chrome', NULL, '2021-09-24 06:27:50', '2021-09-24 06:27:50'),
(209, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/post/create/article', '127.0.0.1', 'Google Chrome', NULL, '2021-09-24 06:38:22', '2021-09-24 06:38:22'),
(210, 1, NULL, 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/post/edit/article/250', '127.0.0.1', 'Google Chrome', NULL, '2021-09-24 06:48:10', '2021-09-24 06:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `location` int(11) NOT NULL DEFAULT 1,
  `content_type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_custom` tinyint(1) NOT NULL DEFAULT 1,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `title`, `language`, `content`, `short_code`, `order`, `location`, `content_type`, `status`, `is_custom`, `ad_id`, `poll_id`, `created_at`, `updated_at`) VALUES
(1, 'Popular Posts', 'en', NULL, 'popular_posts', 1, 1, 1, 1, 1, NULL, NULL, '2021-05-29 07:22:43', '2021-05-29 07:22:43'),
(2, 'Follow Us', 'en', NULL, 'follow_us', 2, 1, 5, 1, 1, NULL, NULL, '2021-05-29 07:22:44', '2021-05-29 07:22:44'),
(3, 'Newsletter', 'en', NULL, 'newletter', 3, 1, 4, 1, 1, NULL, NULL, '2021-05-29 07:22:44', '2021-05-29 07:22:44'),
(4, 'Popular Posts', 'en', NULL, NULL, 1, 2, 1, 1, 1, NULL, NULL, '2021-05-29 07:22:44', '2021-05-29 07:22:44'),
(5, 'Newsletter', 'en', NULL, NULL, 3, 2, 4, 1, 1, NULL, NULL, '2021-05-29 07:22:44', '2021-05-29 07:22:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_foreign` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_ad_image_id_foreign` (`ad_image_id`);

--
-- Indexes for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ad_locations_unique_name_unique` (`unique_name`),
  ADD KEY `ad_locations_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_slug_unique` (`slug`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crons_video_id_foreign` (`video_id`);

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
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_album_id_foreign` (`album_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_configs`
--
ALTER TABLE `language_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_parent_foreign` (`parent`),
  ADD KEY `menu_item_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_item_category_id_foreign` (`category_id`),
  ADD KEY `menu_item_page_id_foreign` (`page_id`),
  ADD KEY `menu_item_post_id_foreign` (`post_id`),
  ADD KEY `menu_item_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_locations_unique_name_unique` (`unique_name`),
  ADD KEY `menu_locations_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_image_id_foreign` (`image_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_options_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_results_poll_option_id_foreign` (`poll_option_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`),
  ADD KEY `posts_video_thumbnail_id_foreign` (`video_thumbnail_id`),
  ADD KEY `posts_video_id_foreign` (`video_id`),
  ADD KEY `posts_visibility_status_slider_language_auth_required_index` (`visibility`,`status`,`slider`,`language`,`auth_required`),
  ADD KEY `posts_featured_breaking_recommended_editor_picks_tags_index` (`featured`,`breaking`,`recommended`,`editor_picks`,`tags`),
  ADD KEY `posts_recommended_order_featured_order_id_index` (`recommended_order`,`featured_order`,`id`),
  ADD KEY `posts_post_type_video_url_type_total_hit_index` (`post_type`,`video_url_type`,`total_hit`),
  ADD KEY `posts_created_at_updated_at_index` (`created_at`,`updated_at`),
  ADD KEY `posts_user_id_category_id_index` (`user_id`,`category_id`),
  ADD KEY `posts_sub_category_id_video_thumbnail_id_index` (`sub_category_id`,`video_thumbnail_id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rss_feeds_category_id_foreign` (`category_id`),
  ADD KEY `rss_feeds_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themes_name_index` (`name`);

--
-- Indexes for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_sections_ad_id_foreign` (`ad_id`),
  ADD KEY `theme_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_image_id_foreign` (`image_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widgets_short_code_unique` (`short_code`),
  ADD KEY `widgets_ad_id_foreign` (`ad_id`),
  ADD KEY `widgets_poll_id_foreign` (`poll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ad_locations`
--
ALTER TABLE `ad_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_configs`
--
ALTER TABLE `language_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3742;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_results`
--
ALTER TABLE `poll_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_sections`
--
ALTER TABLE `theme_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_ad_image_id_foreign` FOREIGN KEY (`ad_image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD CONSTRAINT `ad_locations_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crons`
--
ALTER TABLE `crons`
  ADD CONSTRAINT `crons_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD CONSTRAINT `menu_locations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD CONSTRAINT `poll_results_poll_option_id_foreign` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_thumbnail_id_foreign` FOREIGN KEY (`video_thumbnail_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD CONSTRAINT `theme_sections_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `theme_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `widgets_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
