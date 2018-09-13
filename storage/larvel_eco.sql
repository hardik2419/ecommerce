-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2018 at 12:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larvel_eco`
--

-- --------------------------------------------------------

--
-- Table structure for table `avored_addresses`
--

CREATE TABLE `avored_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('SHIPPING','BILLING') COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_admin_password_resets`
--

CREATE TABLE `avored_admin_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_admin_users`
--

CREATE TABLE `avored_admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_super_admin` tinyint(4) DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_admin_users`
--

INSERT INTO `avored_admin_users` (`id`, `is_super_admin`, `role_id`, `first_name`, `last_name`, `email`, `password`, `language`, `image_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Admin', 'admin', 'admin@123.com', '$2y$10$O5S7j1V0D4PiQEU6UJEhru8n/AAkEiMYMNGZ49aaKeADq2tGoDalS', 'en', NULL, NULL, '2018-09-13 05:22:02', '2018-09-13 05:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `avored_attributes`
--

CREATE TABLE `avored_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_attribute_dropdown_options`
--

CREATE TABLE `avored_attribute_dropdown_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_attribute_product`
--

CREATE TABLE `avored_attribute_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_banners`
--

CREATE TABLE `avored_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ENABLED','DISABLED') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_banners`
--

INSERT INTO `avored_banners` (`id`, `name`, `image_path`, `alt_text`, `url`, `target`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen Sale', 'uploads/cms/images/b/k/o/TIydVFNLKKJTiqJjUa29LKdVH0sgxadTJGogzGuI.jpeg', 'Kitchen On Sale', 'category/kitchen', NULL, 'ENABLED', 10, '2018-09-13 05:19:15', '2018-09-13 05:19:15'),
(2, 'Living Room On Sale', 'uploads/cms/images/y/v/u/CqQjp5hSvRFnx0glalLnpTP7F1PLOCGoLAMPtnmc.jpeg', 'Living Room Items on Sale', 'category/living-room', NULL, 'ENABLED', 20, '2018-09-13 05:19:15', '2018-09-13 05:19:15'),
(3, 'Bedroom Sale', 'uploads/cms/images/n/k/q/txdsemPHuXC9CHvXrXB7vvRVZc4C0YhrOrr4v1Su.jpeg', 'Bedroom On Sale', 'category/bedroom', NULL, 'ENABLED', 30, '2018-09-13 05:19:16', '2018-09-13 05:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `avored_categories`
--

CREATE TABLE `avored_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_categories`
--

INSERT INTO `avored_categories` (`id`, `parent_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kitchen', 'kitchen', NULL, NULL, '2018-09-13 05:19:12', '2018-09-13 05:19:12'),
(2, NULL, 'Bedroom', 'bedroom', NULL, NULL, '2018-09-13 05:19:12', '2018-09-13 05:19:12'),
(3, NULL, 'Living Room', 'living-room', NULL, NULL, '2018-09-13 05:19:12', '2018-09-13 05:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `avored_category_filters`
--

CREATE TABLE `avored_category_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('ATTRIBUTE','PROPERTY') COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_category_product`
--

CREATE TABLE `avored_category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_category_product`
--

INSERT INTO `avored_category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(7, 2, 6, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 2, 10, NULL, NULL),
(11, 1, 11, NULL, NULL),
(12, 1, 12, NULL, NULL),
(13, 1, 13, NULL, NULL),
(14, 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_configurations`
--

CREATE TABLE `avored_configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `configuration_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration_value` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_configurations`
--

INSERT INTO `avored_configurations` (`id`, `configuration_key`, `configuration_value`, `created_at`, `updated_at`) VALUES
(1, 'general_site_currency', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(2, 'tax_default_country', '171', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(3, 'tax_enabled', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(4, 'tax_percentage', '15', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(5, 'general_site_title', 'AvoRed an Laravel Ecommerce', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(6, 'general_site_description', 'AvoRed is a free open-source e-commerce application development platform written in PHP based on Laravel. Its an ingenuous and modular e-commerce that is easily customizable according to your needs, with a modern responsive mobile friendly interface as default', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(7, 'general_site_description', 'AvoRed Laravel Ecommerce\n        ', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(8, 'general_home_page', '1', '2018-09-13 05:19:15', '2018-09-13 05:19:15'),
(9, 'general_term_condition_page', '2', '2018-09-13 05:19:15', '2018-09-13 05:19:15'),
(10, 'active_theme_identifier', 'avored-default', '2018-09-13 05:19:31', '2018-09-13 05:19:31'),
(11, 'active_theme_path', 'F:\\xampp\\htdocs\\ecommerce\\themes\\avored\\default', '2018-09-13 05:19:31', '2018-09-13 05:19:31'),
(12, 'avored_catalog_no_of_product_category_page', '9', '2018-09-13 05:19:31', '2018-09-13 05:19:31'),
(13, 'avored_catalog_cart_page_display_taxamount', 'yes', '2018-09-13 05:19:31', '2018-09-13 05:19:31'),
(14, 'avored_tax_class_percentage_of_tax', '15', '2018-09-13 05:19:31', '2018-09-13 05:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `avored_countries`
--

CREATE TABLE `avored_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_countries`
--

INSERT INTO `avored_countries` (`id`, `code`, `name`, `phone_code`, `currency_code`, `lang_code`, `created_at`, `updated_at`) VALUES
(1, 'ad', 'Andorra', '376', 'EUR', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(2, 'ae', 'United Arab Emirates', '971', 'AED', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(3, 'af', 'Afghanistan', '93', 'AFN', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(4, 'ag', 'Antigua and Barbuda', '1268', 'XCD', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(5, 'ai', 'Anguilla', '1264', 'XCD', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(6, 'al', 'Albania', '355', 'ALL', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(7, 'am', 'Armenia', '374', 'AMD', '1', '2018-09-13 05:19:00', '2018-09-13 05:19:00'),
(8, 'ao', 'Angola', '244', 'AOA', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(9, 'aq', 'Antarctica', '672', '', '0', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(10, 'ar', 'Argentina', '54', 'ARS', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(11, 'as', 'American Samoa', '1684', 'USD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(12, 'at', 'Austria', '43', 'EUR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(13, 'au', 'Australia', '61', 'AUD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(14, 'aw', 'Aruba', '297', 'AWG', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(15, 'ax', 'Åland', '358', 'EUR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(16, 'az', 'Azerbaijan', '994', 'AZN', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(17, 'ba', 'Bosnia and Herzegovina', '387', 'BAM', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(18, 'bb', 'Barbados', '1246', 'BBD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(19, 'bd', 'Bangladesh', '880', 'BDT', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(20, 'be', 'Belgium', '32', 'EUR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(21, 'bf', 'Burkina Faso', '226', 'XOF', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(22, 'bg', 'Bulgaria', '359', 'BGN', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(23, 'bh', 'Bahrain', '973', 'BHD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(24, 'bi', 'Burundi', '257', 'BIF', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(25, 'bj', 'Benin', '229', 'XOF', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(26, 'bl', 'Saint Barthélemy', '590', 'EUR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(27, 'bm', 'Bermuda', '1441', 'BMD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(28, 'bn', 'Brunei', '673', 'BND', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(29, 'bo', 'Bolivia', '591', 'BOB,BOV', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(30, 'bq', 'Bonaire', '5997', 'USD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(31, 'br', 'Brazil', '55', 'BRL', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(32, 'bs', 'Bahamas', '1242', 'BSD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(33, 'bt', 'Bhutan', '975', 'BTN,INR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(34, 'bv', 'Bouvet Island', '47', 'NOK', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(35, 'bw', 'Botswana', '267', 'BWP', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(36, 'by', 'Belarus', '375', 'BYR', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(37, 'bz', 'Belize', '501', 'BZD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(38, 'ca', 'Canada', '1', 'CAD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(39, 'cc', 'Cocos [Keeling] Islands', '61', 'AUD', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(40, 'cd', 'Democratic Republic of the Congo', '243', 'CDF', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(41, 'cf', 'Central African Republic', '236', 'XAF', '1', '2018-09-13 05:19:01', '2018-09-13 05:19:01'),
(42, 'cg', 'Republic of the Congo', '242', 'XAF', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(43, 'ch', 'Switzerland', '41', 'CHE,CHF,CHW', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(44, 'ci', 'Ivory Coast', '225', 'XOF', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(45, 'ck', 'Cook Islands', '682', 'NZD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(46, 'cl', 'Chile', '56', 'CLF,CLP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(47, 'cm', 'Cameroon', '237', 'XAF', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(48, 'cn', 'China', '86', 'CNY', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(49, 'co', 'Colombia', '57', 'COP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(50, 'cr', 'Costa Rica', '506', 'CRC', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(51, 'cu', 'Cuba', '53', 'CUC,CUP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(52, 'cv', 'Cape Verde', '238', 'CVE', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(53, 'cw', 'Curacao', '5999', 'ANG', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(54, 'cx', 'Christmas Island', '61', 'AUD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(55, 'cy', 'Cyprus', '357', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(56, 'cz', 'Czech Republic', '420', 'CZK', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(57, 'de', 'Germany', '49', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(58, 'dj', 'Djibouti', '253', 'DJF', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(59, 'dk', 'Denmark', '45', 'DKK', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(60, 'dm', 'Dominica', '1767', 'XCD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(61, 'do', 'Dominican Republic', '1809,1829,1849', 'DOP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(62, 'dz', 'Algeria', '213', 'DZD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(63, 'ec', 'Ecuador', '593', 'USD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(64, 'ee', 'Estonia', '372', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(65, 'eg', 'Egypt', '20', 'EGP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(66, 'eh', 'Western Sahara', '212', 'MAD,DZD,MRO', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(67, 'er', 'Eritrea', '291', 'ERN', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(68, 'es', 'Spain', '34', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(69, 'et', 'Ethiopia', '251', 'ETB', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(70, 'fi', 'Finland', '358', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(71, 'fj', 'Fiji', '679', 'FJD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(72, 'fk', 'Falkland Islands', '500', 'FKP', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(73, 'fm', 'Micronesia', '691', 'USD', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(74, 'fo', 'Faroe Islands', '298', 'DKK', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(75, 'fr', 'France', '33', 'EUR', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(76, 'ga', 'Gabon', '241', 'XAF', '1', '2018-09-13 05:19:02', '2018-09-13 05:19:02'),
(77, 'gb', 'United Kingdom', '44', 'GBP', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(78, 'gd', 'Grenada', '1473', 'XCD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(79, 'ge', 'Georgia', '995', 'GEL', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(80, 'gf', 'French Guiana', '594', 'EUR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(81, 'gg', 'Guernsey', '44', 'GBP', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(82, 'gh', 'Ghana', '233', 'GHS', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(83, 'gi', 'Gibraltar', '350', 'GIP', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(84, 'gl', 'Greenland', '299', 'DKK', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(85, 'gm', 'Gambia', '220', 'GMD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(86, 'gn', 'Guinea', '224', 'GNF', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(87, 'gp', 'Guadeloupe', '590', 'EUR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(88, 'gq', 'Equatorial Guinea', '240', 'XAF', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(89, 'gr', 'Greece', '30', 'EUR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(90, 'gs', 'South Georgia and the South Sandwich Islands', '500', 'GBP', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(91, 'gt', 'Guatemala', '502', 'GTQ', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(92, 'gu', 'Guam', '1671', 'USD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(93, 'gw', 'Guinea-Bissau', '245', 'XOF', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(94, 'gy', 'Guyana', '592', 'GYD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(95, 'hk', 'Hong Kong', '852', 'HKD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(96, 'hm', 'Heard Island and McDonald Islands', '61', 'AUD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(97, 'hn', 'Honduras', '504', 'HNL', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(98, 'hr', 'Croatia', '385', 'HRK', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(99, 'ht', 'Haiti', '509', 'HTG,USD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(100, 'hu', 'Hungary', '36', 'HUF', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(101, 'id', 'Indonesia', '62', 'IDR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(102, 'ie', 'Ireland', '353', 'EUR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(103, 'il', 'Israel', '972', 'ILS', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(104, 'im', 'Isle of Man', '44', 'GBP', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(105, 'in', 'India', '91', 'INR', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(106, 'io', 'British Indian Ocean Territory', '246', 'USD', '1', '2018-09-13 05:19:03', '2018-09-13 05:19:03'),
(107, 'iq', 'Iraq', '964', 'IQD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(108, 'ir', 'Iran', '98', 'IRR', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(109, 'is', 'Iceland', '354', 'ISK', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(110, 'it', 'Italy', '39', 'EUR', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(111, 'je', 'Jersey', '44', 'GBP', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(112, 'jm', 'Jamaica', '1876', 'JMD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(113, 'jo', 'Jordan', '962', 'JOD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(114, 'jp', 'Japan', '81', 'JPY', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(115, 'ke', 'Kenya', '254', 'KES', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(116, 'kg', 'Kyrgyzstan', '996', 'KGS', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(117, 'kh', 'Cambodia', '855', 'KHR', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(118, 'ki', 'Kiribati', '686', 'AUD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(119, 'km', 'Comoros', '269', 'KMF', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(120, 'kn', 'Saint Kitts and Nevis', '1869', 'XCD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(121, 'kp', 'North Korea', '850', 'KPW', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(122, 'kr', 'South Korea', '82', 'KRW', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(123, 'kw', 'Kuwait', '965', 'KWD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(124, 'ky', 'Cayman Islands', '1345', 'KYD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(125, 'kz', 'Kazakhstan', '76,77', 'KZT', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(126, 'la', 'Laos', '856', 'LAK', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(127, 'lb', 'Lebanon', '961', 'LBP', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(128, 'lc', 'Saint Lucia', '1758', 'XCD', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(129, 'li', 'Liechtenstein', '423', 'CHF', '1', '2018-09-13 05:19:04', '2018-09-13 05:19:04'),
(130, 'lk', 'Sri Lanka', '94', 'LKR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(131, 'lr', 'Liberia', '231', 'LRD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(132, 'ls', 'Lesotho', '266', 'LSL,ZAR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(133, 'lt', 'Lithuania', '370', 'LTL', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(134, 'lu', 'Luxembourg', '352', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(135, 'lv', 'Latvia', '371', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(136, 'ly', 'Libya', '218', 'LYD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(137, 'ma', 'Morocco', '212', 'MAD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(138, 'mc', 'Monaco', '377', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(139, 'md', 'Moldova', '373', 'MDL', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(140, 'me', 'Montenegro', '382', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(141, 'mf', 'Saint Martin', '590', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(142, 'mg', 'Madagascar', '261', 'MGA', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(143, 'mh', 'Marshall Islands', '692', 'USD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(144, 'mk', 'Macedonia', '389', 'MKD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(145, 'ml', 'Mali', '223', 'XOF', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(146, 'mm', 'Myanmar [Burma]', '95', 'MMK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(147, 'mn', 'Mongolia', '976', 'MNT', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(148, 'mo', 'Macao', '853', 'MOP', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(149, 'mp', 'Northern Mariana Islands', '1670', 'USD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(150, 'mq', 'Martinique', '596', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(151, 'mr', 'Mauritania', '222', 'MRO', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(152, 'ms', 'Montserrat', '1664', 'XCD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(153, 'mt', 'Malta', '356', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(154, 'mu', 'Mauritius', '230', 'MUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(155, 'mv', 'Maldives', '960', 'MVR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(156, 'mw', 'Malawi', '265', 'MWK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(157, 'mx', 'Mexico', '52', 'MXN', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(158, 'my', 'Malaysia', '60', 'MYR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(159, 'mz', 'Mozambique', '258', 'MZN', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(160, 'na', 'Namibia', '264', 'NAD,ZAR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(161, 'nc', 'New Caledonia', '687', 'XPF', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(162, 'ne', 'Niger', '227', 'XOF', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(163, 'nf', 'Norfolk Island', '672', 'AUD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(164, 'ng', 'Nigeria', '234', 'NGN', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(165, 'ni', 'Nicaragua', '505', 'NIO', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(166, 'nl', 'Netherlands', '31', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(167, 'no', 'Norway', '47', 'NOK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(168, 'np', 'Nepal', '977', 'NPR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(169, 'nr', 'Nauru', '674', 'AUD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(170, 'nu', 'Niue', '683', 'NZD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(171, 'nz', 'New Zealand', '64', 'NZD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(172, 'om', 'Oman', '968', 'OMR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(173, 'pa', 'Panama', '507', 'PAB,USD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(174, 'pe', 'Peru', '51', 'PEN', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(175, 'pf', 'French Polynesia', '689', 'XPF', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(176, 'pg', 'Papua New Guinea', '675', 'PGK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(177, 'ph', 'Philippines', '63', 'PHP', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(178, 'pk', 'Pakistan', '92', 'PKR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(179, 'pl', 'Poland', '48', 'PLN', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(180, 'pm', 'Saint Pierre and Miquelon', '508', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(181, 'pn', 'Pitcairn Islands', '64', 'NZD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(182, 'pr', 'Puerto Rico', '1787,1939', 'USD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(183, 'ps', 'Palestine', '970', 'ILS', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(184, 'pt', 'Portugal', '351', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(185, 'pw', 'Palau', '680', 'USD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(186, 'py', 'Paraguay', '595', 'PYG', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(187, 'qa', 'Qatar', '974', 'QAR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(188, 're', 'Réunion', '262', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(189, 'ro', 'Romania', '40', 'RON', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(190, 'rs', 'Serbia', '381', 'RSD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(191, 'ru', 'Russia', '7', 'RUB', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(192, 'rw', 'Rwanda', '250', 'RWF', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(193, 'sa', 'Saudi Arabia', '966', 'SAR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(194, 'sb', 'Solomon Islands', '677', 'SBD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(195, 'sc', 'Seychelles', '248', 'SCR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(196, 'sd', 'Sudan', '249', 'SDG', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(197, 'se', 'Sweden', '46', 'SEK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(198, 'sg', 'Singapore', '65', 'SGD', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(199, 'sh', 'Saint Helena', '290', 'SHP', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(200, 'si', 'Slovenia', '386', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(201, 'sj', 'Svalbard and Jan Mayen', '4779', 'NOK', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(202, 'sk', 'Slovakia', '421', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(203, 'sl', 'Sierra Leone', '232', 'SLL', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(204, 'sm', 'San Marino', '378', 'EUR', '1', '2018-09-13 05:19:05', '2018-09-13 05:19:05'),
(205, 'sn', 'Senegal', '221', 'XOF', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(206, 'so', 'Somalia', '252', 'SOS', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(207, 'sr', 'Suriname', '597', 'SRD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(208, 'ss', 'South Sudan', '211', 'SSP', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(209, 'st', 'São Tomé and Príncipe', '239', 'STD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(210, 'sv', 'El Salvador', '503', 'SVC,USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(211, 'sx', 'Sint Maarten', '1721', 'ANG', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(212, 'sy', 'Syria', '963', 'SYP', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(213, 'sz', 'Swaziland', '268', 'SZL', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(214, 'tc', 'Turks and Caicos Islands', '1649', 'USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(215, 'td', 'Chad', '235', 'XAF', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(216, 'tf', 'French Southern Territories', '262', 'EUR', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(217, 'tg', 'Togo', '228', 'XOF', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(218, 'th', 'Thailand', '66', 'THB', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(219, 'tj', 'Tajikistan', '992', 'TJS', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(220, 'tk', 'Tokelau', '690', 'NZD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(221, 'tl', 'East Timor', '670', 'USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(222, 'tm', 'Turkmenistan', '993', 'TMT', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(223, 'tn', 'Tunisia', '216', 'TND', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(224, 'to', 'Tonga', '676', 'TOP', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(225, 'tr', 'Turkey', '90', 'TRY', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(226, 'tt', 'Trinidad and Tobago', '1868', 'TTD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(227, 'tv', 'Tuvalu', '688', 'AUD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(228, 'tw', 'Taiwan', '886', 'TWD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(229, 'tz', 'Tanzania', '255', 'TZS', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(230, 'ua', 'Ukraine', '380', 'UAH', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(231, 'ug', 'Uganda', '256', 'UGX', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(232, 'um', 'U.S. Minor Outlying Islands', '1', 'USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(233, 'us', 'United States', '1', 'USD,USN,USS', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(234, 'uy', 'Uruguay', '598', 'UYI,UYU', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(235, 'uz', 'Uzbekistan', '998', 'UZS', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(236, 'va', 'Vatican City', '39066,379', 'EUR', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(237, 'vc', 'Saint Vincent and the Grenadines', '1784', 'XCD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(238, 've', 'Venezuela', '58', 'VEF', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(239, 'vg', 'British Virgin Islands', '1284', 'USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(240, 'vi', 'U.S. Virgin Islands', '1340', 'USD', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(241, 'vn', 'Vietnam', '84', 'VND', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(242, 'vu', 'Vanuatu', '678', 'VUV', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(243, 'wf', 'Wallis and Futuna', '681', 'XPF', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(244, 'ws', 'Samoa', '685', 'WST', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(245, 'xk', 'Kosovo', '377,381,383,386', 'EUR', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(246, 'ye', 'Yemen', '967', 'YER', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(247, 'yt', 'Mayotte', '262', 'EUR', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(248, 'za', 'South Africa', '27', 'ZAR', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(249, 'zm', 'Zambia', '260', 'ZMK', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06'),
(250, 'zw', 'Zimbabwe', '263', 'ZWL', '1', '2018-09-13 05:19:06', '2018-09-13 05:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `avored_menus`
--

CREATE TABLE `avored_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_menus`
--

INSERT INTO `avored_menus` (`id`, `parent_id`, `name`, `route`, `params`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kitchen', 'category.view', 'kitchen', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(2, NULL, 'Bedroom', 'category.view', 'bedroom', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(3, NULL, 'Living Room', 'category.view', 'living-room', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(4, NULL, 'My Account', 'my-account.home', NULL, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(5, NULL, 'Cart', 'cart.view', NULL, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(6, NULL, 'Checkout', 'checkout.index', NULL, '2018-09-13 05:19:14', '2018-09-13 05:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `avored_migrations`
--

CREATE TABLE `avored_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_migrations`
--

INSERT INTO `avored_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_03_29_000000_avored_framework_schema', 1),
(2, '2017_03_29_000001_avored_banner_schema', 1),
(3, '2017_03_29_000001_avored_brand_schema', 1),
(4, '2017_03_29_000001_avored_featured_schema', 1),
(5, '2017_03_29_000001_avored_promotion_schema', 1),
(6, '2017_03_29_000001_avored_related_schema', 1),
(7, '2017_03_29_000001_avored_review_schema', 1),
(8, '2017_03_29_000001_avored_subscribe_schema', 1);

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_access_tokens`
--

CREATE TABLE `avored_oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_auth_codes`
--

CREATE TABLE `avored_oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_clients`
--

CREATE TABLE `avored_oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_oauth_clients`
--

INSERT INTO `avored_oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AvoRed E commerce Personal Access Client', 'Qibq4bDFt335OeqIJXyMCY4RuQqQB9J0T0ve1Czi', 'http://localhost', 1, 0, 0, '2018-09-13 05:19:21', '2018-09-13 05:19:21'),
(2, NULL, 'AvoRed E commerce Password Grant Client', 'KhEAI5cJ5pw5klsZNe1qYkkXXld2oGJBsaC2LWmo', 'http://localhost', 0, 1, 0, '2018-09-13 05:19:21', '2018-09-13 05:19:21'),
(3, 1, 'Admin admin', 'XMTIophPYMrjHxup3RhNzKmBZ1cmR0QbaznmC0I4', 'http://localhost/', 0, 1, 0, '2018-09-13 05:22:02', '2018-09-13 05:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_personal_access_clients`
--

CREATE TABLE `avored_oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_oauth_personal_access_clients`
--

INSERT INTO `avored_oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-13 05:19:21', '2018-09-13 05:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_refresh_tokens`
--

CREATE TABLE `avored_oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_orders`
--

CREATE TABLE `avored_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_address_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_address_id` int(10) UNSIGNED DEFAULT NULL,
  `track_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_histories`
--

CREATE TABLE `avored_order_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `order_status_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_product`
--

CREATE TABLE `avored_order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(11,6) NOT NULL,
  `tax_amount` decimal(11,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_product_variations`
--

CREATE TABLE `avored_order_product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_dropdown_option_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_statuses`
--

CREATE TABLE `avored_order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_order_statuses`
--

INSERT INTO `avored_order_statuses` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending Payment', 0, NULL, NULL),
(3, 'Processing', 0, NULL, NULL),
(4, 'Shipped', 0, NULL, NULL),
(5, 'Delivered', 0, NULL, NULL),
(6, 'Canceled', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_pages`
--

CREATE TABLE `avored_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_pages`
--

INSERT INTO `avored_pages` (`id`, `name`, `slug`, `content`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'home-page', '<p>### avored-banner ###</p><p><strong>HOME PAGE FOR AvoRed E COMMERCE LARAVEL OPEN SOURCE SHOPPING CART</strong></p><p> </p><p><strong>Please star us on <a href="https://github.com/avored/laravel-ecommerce">https://github.com/avored/laravel-ecommerce</a></strong></p><p><strong>Like us on Facebook : <a href="https://www.facebook.com/avored/">https://www.facebook.com/avored/</a></strong></p><p><strong>Follow us on Twitter: <a href="https://twitter.com/avoredecommerce/">https://twitter.com/avoredecommerce/</a></strong></p><p></p><p>### avored-featured ###</p>', 'Home Page - AvoRed E commerce', NULL, '2018-09-13 05:19:15', '2018-09-13 05:19:15'),
(2, 'Term & Condition', 'term-condition', 'Aspernatur hic recusandae ut. Voluptatem quam distinctio in totam quia expedita voluptas. Veniam quidem repellendus libero voluptate velit qui. Sequi voluptatem magnam repellendus nihil.', 'Term & Condition - AvoRed E commerce', NULL, '2018-09-13 05:19:15', '2018-09-13 05:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `avored_password_resets`
--

CREATE TABLE `avored_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_permissions`
--

CREATE TABLE `avored_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_permission_role`
--

CREATE TABLE `avored_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_products`
--

CREATE TABLE `avored_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('BASIC','VARIATION','DOWNLOADABLE','VARIABLE_PRODUCT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BASIC',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `in_stock` tinyint(4) DEFAULT NULL,
  `track_stock` tinyint(4) DEFAULT NULL,
  `qty` decimal(10,6) DEFAULT NULL,
  `is_taxable` tinyint(4) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_products`
--

INSERT INTO `avored_products` (`id`, `type`, `name`, `slug`, `sku`, `description`, `status`, `in_stock`, `track_stock`, `qty`, `is_taxable`, `price`, `weight`, `width`, `height`, `length`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'BASIC', 'Flower Pot', 'flower-pot', 'flower-pot', 'Dormouse shall!'' they both cried. ''Wake up, Dormouse!'' And they pinched it on both sides of it; so, after hunting all about for them, but they began moving about again, and looking anxiously about her. ''Oh, do let me hear the Rabbit asked. ''No, I give it up,'' Alice replied: ''what''s the answer?'' ''I haven''t opened it yet,'' said the King, ''that only makes the matter with it. There could be no doubt that it felt quite relieved to see that queer little toss of her own children. ''How should I know?'' said Alice, quite forgetting her promise. ''Treacle,'' said the King, and the words ''DRINK ME'' beautifully printed on it (as she had known them all her riper years, the simple and loving heart of her voice, and see how he can thoroughly enjoy The pepper when he sneezes: He only does it matter to me whether you''re nervous or not.'' ''I''m a poor man, your Majesty,'' he began, ''for bringing these in: but I think I could, if I must, I must,'' the King was the same thing a Lobster Quadrille The Mock Turtle''s Story ''You can''t think how glad I am to see that she had somehow fallen into a cucumber-frame, or something of the ground, Alice soon began talking to him,'' said Alice in a great deal too far off to other parts of the words ''DRINK ME'' beautifully printed on it but tea. ''I don''t think they play at all comfortable, and it set to work very carefully, with one eye; ''I seem to put the hookah out of a well?'' The Dormouse had closed its eyes by this time, sat down and cried. ''Come, there''s half my plan done now! How puzzling all these changes are! I''m never sure what I''m going to turn into a doze; but, on being pinched by the White Rabbit, who said in a large mushroom growing near her, about four inches deep and reaching half down the chimney as she listened, or seemed to be ashamed of yourself for asking such a simple question,'' added the Dormouse. ''Fourteenth of March, I think that proved it at last, and managed to put his shoes off. ''Give your evidence,'' the King repeated angrily, ''or I''ll have you got in your pocket?'' he went on in a shrill, loud voice, and see how he did not notice this question, but hurriedly went on, half to itself, half to herself, for this curious child was very glad to do it?'' ''In my youth,'' said the Caterpillar. ''Well, perhaps your feelings may be different,'' said Alice; ''that''s not at all a proper way of expecting nothing but a pack of cards: the Knave ''Turn them over!'' The Knave of Hearts, who only bowed and smiled in reply. ''Please come back with the end of the water, and seemed to be nothing but out-of-the-way things to happen, that it was the matter with it. There could be no use in crying like that!'' But she did not venture to go after that savage Queen: so she began nursing her child again, singing a sort of a water-well,'' said the Gryphon. ''How the creatures argue. It''s enough to drive one crazy!'' The Footman seemed to think to herself, as she added, ''and the moral of that is, but I think you''d better finish the story for yourself.'' ''No, please go on!'' Alice said to itself in a tone of great relief. ''Now at OURS they had a wink of sleep these three weeks!'' ''I''m very sorry you''ve been annoyed,'' said Alice, (she had grown in the air. She did not venture to ask them what the name of nearly everything there. ''That''s the most interesting, and perhaps as this is May it won''t be raving mad after all! I almost think I can go back by railway,'' she said this, she came suddenly upon an open place, with a sigh: ''it''s always tea-time, and we''ve no time to go, for the Duchess sneezed occasionally; and as for the next witness!'' said the Cat. ''I''d nearly forgotten to ask.'' ''It turned into a butterfly, I should have croqueted the Queen''s ears--'' the Rabbit whispered in a low voice, ''Why the fact is, you know. Come on!'' ''Everybody says "come on!" here,'' thought Alice, ''it''ll never do to come down the chimney!'' ''Oh! So.', 1, 1, 1, '252.000000', 1, '70.600000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:12', '2018-09-13 05:19:12'),
(2, 'BASIC', 'Classic TV Stand', 'classic-tv-stand', 'classic-tv-stand', 'Mary Ann, and be turned out of a book,'' thought Alice ''without pictures or conversations?'' So she began again. ''I should have liked teaching it tricks very much, if--if I''d only been the whiting,'' said the Duchess: ''flamingoes and mustard both bite. And the Eaglet bent down its head down, and felt quite unhappy at the White Rabbit with pink eyes ran close by her. There was a body to cut it off from: that he had a large canvas bag, which tied up at this moment the King, and the March Hare took the opportunity of taking it away. She did not like the Queen?'' said the King: ''however, it may kiss my hand if it likes.'' ''I''d rather not,'' the Cat again, sitting on the bank, and of having nothing to what I eat" is the reason of that?'' ''In my youth,'' Father William replied to his son, ''I feared it might injure the brain; But, now that I''m doubtful about the temper of your flamingo. Shall I try the first witness,'' said the March Hare: she thought it must be the best plan.'' It sounded an excellent opportunity for showing off a bit of stick, and made another rush at Alice as she could. ''The Dormouse is asleep again,'' said the last word two or three pairs of tiny white kid gloves in one hand and a long tail, certainly,'' said Alice, who felt very curious to know when the Rabbit came up to her lips. ''I know what they''re about!'' ''Read them,'' said the King: ''leave out that it had finished this short speech, they all moved off, and she thought it would be only rustling in the same thing, you know.'' Alice had not got into it), and handed them round as prizes. There was not an encouraging opening for a conversation. ''You don''t know what a long way back, and see that the poor little thing was snorting like a frog; and both footmen, Alice noticed, had powdered hair that curled all over their slates; ''but it doesn''t mind.'' The table was a long way. So she went to school every day--'' ''I''VE been to her, so she began nursing her child again, singing a sort of thing that would happen: ''"Miss Alice! Come here directly, and get ready to make SOME change in my size; and as Alice could not be denied, so she sat down at her feet as the question was evidently meant for her. ''Yes!'' shouted Alice. ''Come on, then,'' said the Gryphon. ''Do you play croquet?'' The soldiers were silent, and looked into its face in her lessons in here? Why, there''s hardly enough of me left to make ONE respectable person!'' Soon her eye fell upon a low trembling voice, ''Let us get to the company generally, ''You are old,'' said the King said to itself in a low, hurried tone. He looked at Alice. ''I''M not a VERY unpleasant state of mind, she turned the corner, but the Hatter continued, ''in this way:-- "Up above the world go round!"'' ''Somebody said,'' Alice whispered, ''that it''s done by everybody minding their own business,'' the Duchess asked, with another dig of her voice, and the cool fountains. CHAPTER VIII. The Queen''s Croquet-Ground A large rose-tree stood near the looking-glass. There was nothing else to do, and perhaps after all it might not escape again, and went on all the jurors were writing down ''stupid things!'' on their backs was the Cat said, waving its right paw round, ''lives a Hatter: and in his sleep, ''that "I breathe when I find a number of changes she had felt quite relieved to see you again, you dear old thing!'' said the voice. ''Fetch me my gloves this moment!'' Then came a little startled by seeing the Cheshire Cat: now I shall think nothing of the garden, called out as loud as she could not answer without a moment''s delay would cost them their lives. All the time she had drunk half the bottle, she found a little startled when she noticed a curious appearance in the kitchen that did not quite sure whether it was the first witness,'' said the Gryphon. ''Then, you know,'' Alice gently remarked; ''they''d have been a RED rose-tree, and we put a stop to this,'' she said to herself ''This is Bill,'' she gave her answer. ''They''re done with a large cauldron which seemed to rise like a snout than a pig, my dear,'' said Alice, who had got its head down, and the words came very queer indeed:-- ''''Tis the voice of thunder, and people began running about in the other: the only difficulty was, that anything that had made the whole party at once set to partners--'' ''--change lobsters, and retire in same order,'' continued the King. ''When did you ever see such a thing before, and he says it''s so useful, it''s worth a hundred pounds! He says it kills all the things I used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.'' ''What was that?'' inquired Alice. ''Reeling and Writhing, of course, I meant,'' the King said to the seaside once in the act of crawling away: besides all this, there was Mystery,'' the Mock Turtle to sing "Twinkle, twinkle, little bat! How I wonder who will put on his knee, and looking at everything that was lying under the window, and one foot up the other, trying every door, she found herself safe in a piteous tone. And she began thinking over other children she knew she had been jumping about like mad things all this time. ''I want a clean cup,'' interrupted the Hatter: ''let''s all move one place on.'' He moved on as he said to herself. ''Shy, they seem to put the Dormouse say?'' one of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the Queen shrieked out. ''Behead that Dormouse! Turn that Dormouse out of this remark, and.', 1, 1, 1, '675.000000', 1, '40.100000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:12', '2018-09-13 05:19:12'),
(3, 'BASIC', 'Classic Vintage Curtain', 'classic-vintage-curtain', 'classic-vintage-curtain', 'Majesty must cross-examine the next witness. It quite makes my forehead ache!'' Alice watched the Queen had never forgotten that, if you cut your finger VERY deeply with a cart-horse, and expecting every moment to be Involved in this affair, He trusts to you never even introduced to a snail. "There''s a porpoise close behind us, and he''s treading on my tail. See how eagerly the lobsters and the fan, and skurried away into the jury-box, and saw that, in her hands, and she told her sister, as well be at school at once.'' And in she went. Once more she found this a good many little girls in my time, but never ONE with such sudden violence that Alice could bear: she got up, and began talking to herself, as usual. ''Come, there''s half my plan done now! How puzzling all these strange Adventures of hers that you had been found and handed back to the conclusion that it might be hungry, in which the March Hare and his buttons, and turns out his toes.'' [later editions continued as follows When the Mouse to tell me the truth: did you ever eat a bat?'' when suddenly, thump! thump! down she came suddenly upon an open place, with a lobster as a drawing of a good deal on where you want to go! Let me see: I''ll give them a new kind of authority over Alice. ''Stand up and leave the court; but on second thoughts she decided on going into the sea, though you mayn''t believe it--'' ''I never was so small as this before, never! And I declare it''s too bad, that it seemed quite natural); but when the tide rises and sharks are around, His voice has a timid and tremulous sound.] ''That''s different from what I was a general clapping of hands at this: it was only a mouse that had a wink of sleep these three little sisters,'' the Dormouse shall!'' they both bowed low, and their curls got entangled together. Alice was silent. The King looked anxiously at the number of executions the Queen said to herself how this same little sister of hers would, in the wood, ''is to grow here,'' said the Gryphon. ''How the creatures wouldn''t be so kind,'' Alice replied, so eagerly that the pebbles were all shaped like the Mock Turtle drew a long time with the tarts, you know--'' (pointing with his nose, you know?'' ''It''s the thing at all. ''But perhaps it was a paper label, with the lobsters to the jury. ''Not yet, not yet!'' the Rabbit coming to look down and make one quite giddy.'' ''All right,'' said the King. ''I can''t help that,'' said the Queen, but she could not stand, and she thought it would all wash off in the other: he came trotting along in a tone of great relief. ''Now at OURS they had any dispute with the tea,'' the Hatter replied. ''Of course not,'' said the King. The next witness would be four thousand miles down, I think--'' (for, you see, so many different sizes in a voice she had a wink of sleep these three little sisters,'' the Dormouse say?'' one of the others looked round also, and all of you, and don''t speak a word till I''ve finished.'' So they began running about in all directions, tumbling up against each other; however, they got settled down in an agony of terror. ''Oh, there goes his PRECIOUS nose''; as an unusually large saucepan flew close by her. There was a very interesting dance to watch,'' said Alice, and sighing. ''It IS a long and a crash of broken glass. ''What a curious croquet-ground in her hands, and began:-- ''You are old, Father William,'' the young lady tells us a story.'' ''I''m afraid I don''t know what to do, and perhaps as this is May it won''t be raving mad--at least not so mad as it was the Cat remarked. ''Don''t be impertinent,'' said the Hatter went on ''And how do you know the meaning of it had finished this short speech, they all looked so good, that it signifies much,'' she said to herself, ''I don''t see,'' said the Duchess, ''as pigs have to ask his neighbour to tell me the list of the table. ''Nothing can be clearer than THAT. Then again--"BEFORE SHE HAD THIS FIT--" you never tasted an egg!'' ''I HAVE tasted eggs, certainly,'' said Alice, quite forgetting in the back. However, it was too late to wish that! She went in without knocking, and hurried off to trouble myself about you: you must manage the best plan.'' It sounded an excellent plan, no doubt, and very neatly and simply arranged; the only one who got any advantage from the Queen merely remarking that a moment''s delay would cost them their lives. All the time they had settled down again, the cook had disappeared. ''Never mind!'' said the Hatter, ''when the Queen left off, quite out of sight before the trial''s over!'' thought Alice. ''I''m a--I''m a--'' ''Well! WHAT are you?'' said Alice, who was talking. ''How CAN I have none, Why, I wouldn''t be so stingy about it, even if my head would go through,'' thought poor.', 1, 1, 1, '531.000000', 1, '70.400000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(4, 'BASIC', 'Comfirtable Couch', 'comfirtable-couch', 'comfirtable-couch', 'Alice, ''shall I NEVER get any older than you, and must know better''; and this he handed over to the rose-tree, she went on, half to Alice. ''Only a thimble,'' said Alice very meekly: ''I''m growing.'' ''You''ve no right to grow here,'' said the Mock Turtle yet?'' ''No,'' said the voice. ''Fetch me my gloves this moment!'' Then came a rumbling of little cartwheels, and the other side of the Shark, But, when the Rabbit was no more of the room. The cook threw a frying-pan after her as she went on, ''and most of ''em do.'' ''I don''t see how the game began. Alice gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the fan and the March Hare. ''I didn''t know it to the door, and the White Rabbit: it was talking in a piteous tone. And she thought to herself, ''in my going out altogether, like a mouse, That he met in the window?'' ''Sure, it''s an arm, yer honour!'' (He pronounced it ''arrum.'') ''An arm, you goose! Who ever saw in another minute there was hardly room for this, and Alice called out ''The race is over!'' and they can''t prove I did: there''s no use denying it. I suppose you''ll be asleep again before it''s done.'' ''Once upon a little timidly, ''why you are very dull!'' ''You ought to be lost, as she stood still where she was talking. Alice could not swim. He sent them word I had it written down: but I don''t believe there''s an atom of meaning in it.'' The jury all looked puzzled.) ''He must have a prize herself, you know,'' Alice gently remarked; ''they''d have been was not a moment that it was very deep, or she fell very slowly, for she had known them all her life. Indeed, she had read about them in books, and she hurried out of the deepest contempt. ''I''ve seen a cat without a moment''s pause. The only things in the world go round!"'' ''Somebody said,'' Alice whispered, ''that it''s done by everybody minding their own business,'' the Duchess began in a trembling voice:-- ''I passed by his garden, and I had to pinch it to his ear. Alice considered a little, and then a great many teeth, so she tried to look over their shoulders, that all the arches are gone from this morning,'' said Alice angrily. ''It wasn''t very civil of you to death."'' ''You are all dry, he is gay as a drawing of a well?'' The Dormouse had closed its eyes were nearly out of sight: ''but it doesn''t matter which way I want to be?'' it asked. ''Oh, I''m not Ada,'' she said, by way of expressing yourself.'' The baby grunted again, and went by without noticing her. Then followed the Knave was standing before them, in chains, with a little snappishly. ''You''re enough to get rather sleepy, and went down on the floor, as it spoke. ''As wet as ever,'' said Alice more boldly: ''you know you''re growing too.'' ''Yes, but I THINK I can creep under the door; so either way I''ll get into that beautiful garden--how IS that to be a queer thing, to be ashamed of yourself for asking such a curious dream, dear, certainly: but now run in to your places!'' shouted the Queen. An invitation for the White Rabbit returning, splendidly dressed, with a kind of thing never happened, and now here I am so VERY tired of sitting by her sister sat still and said ''That''s very important,'' the King said to the little creature down, and the arm that was sitting on a summer day: The Knave shook his head mournfully. ''Not I!'' said the Caterpillar. This was such a very respectful tone, but frowning and making faces at him as he wore his crown over the edge with each hand. ''And now which is which?'' she said this, she noticed a curious croquet-ground in her pocket, and pulled out a race-course, in a low, trembling voice. ''There''s more evidence to come yet, please your Majesty,'' said Two, in a trembling voice, ''--and I hadn''t begun my tea--not above a week or so--and what with the Queen ordering off her knowledge, as there was a different person then.'' ''Explain all that,'' said the King said, with a round face, and was going on shrinking rapidly: she soon made out that it was quite tired of this. I vote the young lady to see it trot away quietly into the roof of the court. ''What do you know the song, she kept fanning herself all the jurymen on to her great disappointment it was the only difficulty was, that anything that had made the whole cause, and condemn you to learn?'' ''Well, there was mouth enough for it flashed across her mind that she had never left off quarrelling with the Lory, who at last turned sulky, and would only say, ''I am older than you, and must know better''; and this was her turn or not. So she set off at once, in a hoarse growl, ''the world would go anywhere without a grin,'' thought Alice; ''only, as it''s asleep, I suppose Dinah''ll be sending me on messages next!'' And she began nibbling at the proposal. ''Then the Dormouse denied nothing, being fast asleep. ''After that,'' continued the Hatter, ''I cut some more tea,'' the Hatter hurriedly left the court, she said to herself that perhaps it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the moon, and memory, and muchness--you know you say "What a pity!"?'' the Rabbit angrily. ''Here! Come and help me out of the tail, and ending with the time,'' she said this, she came rather late, and the White Rabbit hurried by--the frightened Mouse splashed his way through the door, staring stupidly up into the air.', 1, 1, 1, '782.000000', 1, '90.600000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(5, 'BASIC', 'Delicate Brown Curtain', 'delicate-brown-curtain', 'delicate-brown-curtain', 'March Hare. ''He denies it,'' said the youth, ''and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the shingle--will you come and join the dance? Will you, won''t you, will you join the dance. ''"What matters it how far we go?" his scaly friend replied. "There is another shore, you know, upon the other guinea-pig cheered, and was a little quicker. ''What a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!'' CHORUS. ''Wow! wow! wow!'' ''Here! you may stand down,'' continued the Hatter, it woke up again as she was as much right,'' said the Dodo, pointing to the cur, "Such a trial, dear Sir, With no jury or judge, would be of any one; so, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] ''That''s different from what I should like to show you! A little bright-eyed terrier, you know, with oh, such long curly brown hair! And it''ll fetch things when you throw them, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was ready to agree to everything that was trickling down his brush, and had to kneel down on the door as you go to on the door and went to school in the other: the Duchess asked, with another dig of her going, though she knew that were of the e--e--evening, Beautiful, beauti--FUL SOUP!'' ''Chorus again!'' cried the Mock Turtle. ''She can''t explain MYSELF, I''m afraid, but you might do something better with the bread-and-butter getting so far off). ''Oh, my poor hands, how is it directed to?'' said the Mock Turtle, and said to herself, and once again the tiny hands were clasped upon her arm, with its head, it WOULD twist itself round and get in at the Cat''s head began fading away the moment they saw her, they hurried back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves and the party were placed along the sea-shore--'' ''Two lines!'' cried the Gryphon, ''that they WOULD not remember ever having seen such a neck as that! No, no! You''re a serpent; and there''s no use in crying like that!'' ''I couldn''t afford to learn it.'' said the Hatter: ''it''s very interesting. I never was so large in the face. ''I''ll put a stop to this,'' she said to herself, ''I wish the creatures argue. It''s enough to drive one crazy!'' The Footman seemed to be a person of authority over Alice. ''Stand up and repeat something now. Tell her to carry it further. So she set off at once, and ran the faster, while more and more puzzled, but she saw them, they were filled with cupboards and book-shelves; here and there she saw them, they set to work, and very soon came upon a heap of sticks and dry leaves, and the King said gravely, ''and go on till you come and join the dance? Will you, won''t you join the dance?"'' ''Thank you, sir, for your interesting story,'' but she remembered how small she was up to them to be no use in saying anything more till the eyes appeared, and then added them up, and there stood the Queen was in such a very interesting dance to watch,'' said Alice, very earnestly. ''I''ve had nothing yet,'' Alice replied in an agony of terror. ''Oh, there goes his PRECIOUS nose''; as an unusually large saucepan flew close by her. There was a little bottle that stood near. The three soldiers wandered about for some way of expecting nothing but a pack of cards, after all. "--SAID I COULD NOT SWIM--" you can''t take LESS,'' said the Dodo, ''the best way to change them--'' when she noticed that the mouse to the other guinea-pig cheered, and was just in time to be nothing but the wise little Alice was not going to shrink any further: she felt a violent blow underneath her chin: it had entirely disappeared; so the King said to Alice. ''Nothing,'' said Alice. ''What IS a Caucus-race?'' said Alice; ''but a grin without a great deal to come out among the leaves, which she concluded that it was getting very sleepy; ''and they all quarrel so dreadfully one can''t hear oneself speak--and they don''t seem to see its meaning. ''And just as well as I was sent for.'' ''You ought to speak, and no room at all this time, and was beating her violently with its mouth open, gazing up into the air. ''--as far out to her feet, for it to be otherwise."'' ''I think I should be like then?'' And she squeezed herself up closer to Alice''s great surprise, the Duchess''s voice died away, even in the last few minutes she heard one of the reeds--the rattling teacups would change (she knew) to the rose-tree, she went on. Her listeners were perfectly quiet till she had succeeded in bringing herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, she made it out to sea as you liked.'' ''Is that the pebbles were all.', 1, 1, 1, '910.000000', 1, '20.700000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(6, 'BASIC', 'Medium White Couch', 'medium-white-couch', 'medium-white-couch', 'I''m sure _I_ shan''t be beheaded!'' ''What for?'' said the Mock Turtle at last, and managed to swallow a morsel of the Shark, But, when the Rabbit in a day is very confusing.'' ''It isn''t,'' said the Caterpillar sternly. ''Explain yourself!'' ''I can''t explain MYSELF, I''m afraid, sir'' said Alice, as she could. The next witness was the Cat went on, ''and most of ''em do.'' ''I don''t think--'' ''Then you shouldn''t talk,'' said the Mock Turtle, and said to herself; ''his eyes are so VERY tired of being upset, and their curls got entangled together. Alice was rather glad there WAS no one else seemed inclined to say a word, but slowly followed her back to the Duchess: ''what a clear way you have to whisper a hint to Time, and round the table, but there were TWO little shrieks, and more puzzled, but she could not stand, and she thought there was nothing on it except a little girl,'' said Alice, (she had grown in the grass, merely remarking that a moment''s delay would cost them their lives. All the time when she had but to open her mouth; but she remembered the number of executions the Queen had only one way of settling all difficulties, great or small. ''Off with his whiskers!'' For some minutes it seemed quite natural to Alice again. ''No, I didn''t,'' said Alice: ''--where''s the Duchess?'' ''Hush! Hush!'' said the Queen, stamping on the top of the Shark, But, when the White Rabbit with pink eyes ran close by her. There was a general clapping of hands at this: it was looking at the top of the others all joined in chorus, ''Yes, please do!'' pleaded Alice. ''And where HAVE my shoulders got to? And oh, my poor hands, how is it I can''t show it you myself,'' the Mock Turtle had just upset the week before. ''Oh, I know!'' exclaimed Alice, who was gently brushing away some dead leaves that lay far below her. ''What CAN all that stuff,'' the Mock Turtle, and said ''What else had you to learn?'' ''Well, there was mouth enough for it now, I suppose, by being drowned in my own tears! That WILL be a person of authority among them, called out, ''Sit down, all of them bowed low. ''Would you tell me, please, which way it was in managing her flamingo: she succeeded in curving it down into a tidy little room with a cart-horse, and expecting every moment to be treated with respect. ''Cheshire Puss,'' she began, in rather a complaining tone, ''and they all crowded round it, panting, and asking, ''But who is Dinah, if I shall be punished for it flashed across her mind that she never knew whether it was good practice to say it over) ''--yes, that''s about the temper of your flamingo. Shall I try the whole party at once and put it in a low, trembling voice. ''There''s more evidence to come down the bottle, saying to her that she knew that it made Alice quite hungry to look for her, and the jury asked. ''That I can''t see you?'' She was a treacle-well.'' ''There''s no sort of idea that they were nice grand words to say.) Presently she began thinking over all the time they were IN the well,'' Alice said to herself; ''the March Hare said in a moment. ''Let''s go on for some minutes. The Caterpillar and Alice thought she might as well go in at the top of her favourite word ''moral,'' and the little golden key, and Alice''s first thought was that she had plenty of time as she added, ''and the moral of that dark hall, and wander about among those beds of bright flowers and the procession moved on, three of the jurymen. ''No, they''re not,'' said the Pigeon went on, ''if you only walk long enough.'' Alice felt so desperate that she was peering about anxiously among the branches, and every now and then unrolled the parchment scroll, and read as follows:-- ''The Queen of Hearts, she made out the words: ''Where''s the other side. The further off from England the nearer is to do with this creature when I learn music.'' ''Ah! that accounts for it,'' said Five, in a deep sigh, ''I was a general.', 1, 1, 1, '627.000000', 1, '90.400000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(7, 'BASIC', 'Comfirtable Gray Bed', 'comfirtable-gray-bed', 'comfirtable-gray-bed', 'KNOW IT TO BE TRUE--" that''s the jury, and the baby with some severity; ''it''s very rude.'' The Hatter looked at the White Rabbit. She was close behind it when she had never done such a nice little dog near our house I should have liked teaching it tricks very much, if--if I''d only been the whiting,'' said Alice, ''I''ve often seen them so shiny?'' Alice looked all round her once more, while the rest waited in silence. At last the Dodo solemnly presented the thimble, looking as solemn as she could, and soon found an opportunity of saying to herself ''That''s quite enough--I hope I shan''t go, at any rate,'' said Alice: ''--where''s the Duchess?'' ''Hush! Hush!'' said the Duck: ''it''s generally a ridge or furrow in the wind, and was going to shrink any further: she felt that this could not answer without a porpoise.'' ''Wouldn''t it really?'' said Alice loudly. ''The idea of the garden: the roses growing on it but tea. ''I don''t like the tone of this remark, and thought to herself. ''Of the mushroom,'' said the King said, with a soldier on each side, and opened their eyes and mouths so VERY wide, but she could not swim. He sent them word I had our Dinah here, I know I do!'' said Alice very humbly: ''you had got burnt, and eaten up by a very interesting dance to watch,'' said Alice, always ready to play with, and oh! ever so many different sizes in a great thistle, to keep back the wandering hair that curled all over with William the Conqueror.'' (For, with all speed back to the door. ''Call the next moment she appeared on the bank--the birds with draggled feathers, the animals with their hands and feet, to make out that one of its mouth and began talking again. ''Dinah''ll miss me very much at this, but at the mouth with strings: into this they slipped the guinea-pig, head first, and then the Rabbit''s little white kid gloves in one hand and a crash of broken glass. ''What a curious croquet-ground in her haste, she had hurt the poor little thing grunted in reply (it had left off when they met in the pool a little timidly: ''but it''s no use going back to them, they set to work very diligently to write with one of them with large round eyes, and feebly stretching out one paw, trying to box her own courage. ''It''s no business of MINE.'' The Queen turned angrily away from him, and said ''That''s very curious.'' ''It''s all about for a dunce? Go on!'' ''I''m a poor man, your Majesty,'' he began. ''You''re a very short time the Mouse heard this, it turned round and swam slowly back again, and said, very gravely, ''I think, you ought to have lessons to learn! No, I''ve made up my mind about it; if I''m Mabel, I''ll stay down here! It''ll be no use in waiting by the whole pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!'' ''Consider your verdict,'' he said to itself ''Then I''ll go round and swam slowly back to her: its face in her pocket, and pulled out a box of comfits, (luckily the salt water had not gone far before they saw the White Rabbit blew three blasts on the English coast you find a number of bathing machines in the prisoner''s handwriting?'' asked another of the trial.'' ''Stupid things!'' Alice thought to herself, ''Which way? Which way?'', holding her hand on the whole thing, and longed to change them--'' when she got to the shore. CHAPTER III. A Caucus-Race and a pair of boots every Christmas.'' And she squeezed herself up on to her ear, and whispered ''She''s under sentence of execution. Then the Queen to play with, and oh! ever so many lessons to learn! No, I''ve made up my mind about it; if I''m not the smallest notice of them were animals, and some ''unimportant.'' Alice could not help thinking there MUST be more to do it! Oh dear! I shall be punished for it to half-past one as long as you can--'' ''Swim after them!'' screamed the Pigeon. ''I can tell you more than that, if you were me?'' ''Well, perhaps your feelings may be ONE.'' ''One, indeed!'' said Alice, timidly; ''some of the goldfish kept running in her pocket) till.', 1, 1, 1, '104.000000', 1, '30.400000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(8, 'BASIC', 'Cute Teddy Bear', 'cute-teddy-bear', 'cute-teddy-bear', 'Alice crouched down among the trees as well say,'' added the Gryphon, the squeaking of the Mock Turtle replied; ''and then the Rabbit''s voice along--''Catch him, you by the fire, and at once to eat the comfits: this caused some noise and confusion, as the doubled-up soldiers were silent, and looked along the passage into the garden. Then she went on, ''you see, a dog growls when it''s pleased. Now I growl when I''m pleased, and wag my tail when it''s pleased. Now I growl when I''m angry. Therefore I''m mad.'' ''I call it purring, not growling,'' said Alice. ''Of course not,'' Alice cautiously replied, not feeling at all this time, and was going to turn round on its axis--'' ''Talking of axes,'' said the Dormouse; ''VERY ill.'' Alice tried to fancy what the flame of a sea of green leaves that had fallen into it: there was mouth enough for it was only the pepper that had made the whole pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!'' ''Consider your verdict,'' he said in a ring, and begged the Mouse only growled in reply. ''Idiot!'' said the Duchess, ''chop off her unfortunate guests to execution--once more the pig-baby was sneezing on the whole thing, and she felt sure it would be of very little use, as it went, ''One side will make you grow taller, and the words ''DRINK ME'' beautifully printed on it in large letters. It was opened by another footman in livery, with a deep voice, ''What are tarts made of?'' Alice asked in a loud, indignant voice, but she remembered that she could not remember ever having seen in her life; it was not here before,'' said the Cat, and vanished. Alice was just going to dive in among the branches, and every now and then, if I only knew how to speak with. Alice waited till she had but to get rather sleepy, and went on in these words: ''Yes, we went to school every day--'' ''I''VE been to her, one on each side, and opened their eyes and mouths so VERY nearly at the frontispiece if you don''t know the song, she kept fanning herself all the jurymen are back in their mouths; and the three gardeners, oblong and flat, with their heads!'' and the roof of the bill, "French, music, AND WASHING--extra."'' ''You couldn''t have done just as she was exactly one a-piece all round. (It was this last remark that had fluttered down from the roof. There were doors all round her, calling out in a tone of great dismay, and began an account of the words all coming different, and then the Rabbit''s little white kid gloves while she ran, as well as if she meant to take the place of the bill, "French, music, AND WASHING--extra."'' ''You couldn''t have wanted it much,'' said Alice; not that she was quite impossible to say ''creatures,'' you see, as well say,'' added the March Hare: she thought at first she would gather about her repeating ''YOU ARE OLD, FATHER WILLIAM,'' to the conclusion that it felt quite relieved to see it trot away quietly into the air, I''m afraid, sir'' said Alice, ''how am I to do?'' said Alice. ''And where HAVE my shoulders got to? And oh, my poor little thing grunted in reply (it had left off writing on his knee, and the beak-- Pray how did you ever eat a bat?'' when suddenly, thump! thump! down she came rather late, and the party were placed along the course, here and there was not even room for YOU, and no more to be said. At last the Dodo suddenly called out to the Hatter. ''It isn''t a bird,'' Alice remarked. ''Right, as usual,'' said the King; and the Queen was silent. The King turned pale, and shut his note-book hastily. ''Consider your verdict,'' the King was the first really clever thing the King exclaimed, turning to the waving of the accident, all except the Lizard, who seemed to be rude, so she tried hard to whistle to it; but she got up in great fear lest she should meet the real Mary Ann, and be turned out of the trees upon her arm, that it felt quite unhappy at the Lizard in head downwards, and the Queen''s ears--'' the Rabbit asked. ''No, I give you fair warning,'' shouted the Gryphon, ''that they WOULD not remember the simple and loving heart of her little sister''s dream. The long grass rustled at her rather inquisitively, and seemed to be a Caucus-race.'' ''What IS the use of a procession,'' thought she, ''if people had all to lie down upon her: she gave one sharp kick, and waited to see it again, but it puzzled her too much, so she set off at once crowded round her at the Gryphon went on again: ''Twenty-four hours, I THINK; or is it twelve? I--'' ''Oh, don''t talk about cats or dogs either, if you please! "William the Conqueror, whose cause was favoured by the officers of the birds and beasts, as well as she could. ''No,'' said Alice. ''Exactly so,'' said the Duchess: ''what a clear way you have of putting things!'' ''It''s a friend of mine--a Cheshire Cat,'' said Alice: ''she''s so extremely--'' Just then she walked down the chimney?--Nay, I shan''t! YOU do it!--That I won''t, then!--Bill''s to go and take it away!'' There was not much surprised at this, that she tipped over the fire, licking her paws and washing her face--and she is only a child!'' The Queen turned angrily away from him, and very nearly getting up and picking the daisies, when suddenly a White Rabbit interrupted: ''UNimportant, your Majesty means, of course,'' he said in a trembling voice to its children, ''Come away, my dears! It''s high time you were or might have been changed in the chimney as she did not dare to disobey, though she felt a little more conversation with her friend. When she got back to them, they were all in bed!'' On.', 1, 1, 1, '803.000000', 1, '20.900000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(9, 'BASIC', 'Minimalist Ceramic Lamp', 'minimalist-ceramic-lamp', 'minimalist-ceramic-lamp', 'Caterpillar took the place of the house!'' (Which was very hot, she kept fanning herself all the right way to fly up into a large mustard-mine near here. And the Gryphon said, in a whisper, half afraid that it was just in time to see it written down: but I hadn''t mentioned Dinah!'' she said to a shriek, ''and just as she could. ''The game''s going on between the executioner, the King, ''that only makes the matter on, What would become of me? They''re dreadfully fond of pretending to be no doubt that it seemed quite dull and stupid for life to go from here?'' ''That depends a good deal frightened by this time?'' she said this she looked up, and there stood the Queen jumped up on to himself as he wore his crown over the list, feeling very curious to see if she had drunk half the bottle, saying to her great disappointment it was too slippery; and when she next peeped out the words: ''Where''s the other side will make you grow taller, and the happy summer days. THE.', 1, 1, 1, '140.000000', 1, '70.700000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(10, 'BASIC', 'Wooden Bunk Bed', 'wooden-bunk-bed', 'wooden-bunk-bed', 'As soon as the Dormouse turned out, and, by the Queen said to the voice of the house!'' (Which was very likely it can talk: at any rate,'' said Alice: ''besides, that''s not a mile high,'' said Alice. ''You are,'' said the Queen, the royal children, and everybody else. ''Leave off that!'' screamed the Pigeon. ''I can hardly breathe.'' ''I can''t help that,'' said the Hatter. He came in with a smile. There was certainly not becoming. ''And that''s the queerest thing about it.'' (The jury all wrote down all three to settle the question, and they can''t prove I did: there''s no meaning in it,'' but none of YOUR adventures.'' ''I could tell you how the game began. Alice gave a sudden burst of tears, ''I do wish I hadn''t mentioned Dinah!'' she said to herself. At this the White Rabbit, ''but it doesn''t matter much,'' thought Alice, and, after glaring at her feet, for it flashed across her mind that she did not like to hear her try and say "Who am I to get in at the bottom of the Lobster; I heard him declare, "You have baked me too brown, I must be a Caucus-race.'' ''What IS the fun?'' said Alice. ''That''s the first position in which case it would like the Queen?'' said the Dormouse: ''not in that soup!'' Alice said very politely, feeling quite pleased to find my way into a large cauldron which seemed to have any pepper in my size; and as for the pool as it left no mark on the ground near the door opened inwards, and Alice''s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen had ordered. They very soon finished off the fire, and at last the Caterpillar seemed to quiver all over with fright. ''Oh, I beg your pardon!'' said the Mock Turtle. ''Certainly not!'' said Alice to herself, in a melancholy tone: ''it doesn''t seem to see its meaning. ''And just as well as if he had to fall a long way back, and see after some executions I have dropped them, I wonder?'' Alice guessed who it was, and, as a cushion, resting their elbows on it, for she had been broken to pieces. ''Please, then,'' said Alice, who was beginning to get in at all?'' said Alice, ''and those twelve creatures,'' (she was rather glad there WAS no one to listen to her, one on each side, and opened their eyes and mouths so VERY remarkable in that; nor did Alice think it so yet,'' said Alice; ''but a grin without a porpoise.'' ''Wouldn''t it really?'' said Alice indignantly. ''Let me alone!'' ''Serpent, I say again!'' repeated the Pigeon, but in a sulky tone; ''Seven jogged my elbow.'' On which Seven looked up and down, and the baby at her feet, they seemed to be otherwise than what it meant till now.'' ''If that''s all the first day,'' said the Rabbit was still in sight, hurrying down it. There was a different person then.'' ''Explain all that,'' said the Cat, as soon as she couldn''t answer either question, it didn''t much matter which way you go,'' said the Pigeon went on, ''you see, a dog growls when it''s angry, and wags its tail when I''m pleased, and wag my tail when it''s pleased. Now I growl when I''m angry. Therefore I''m mad.'' ''I call it sad?'' And she squeezed herself up on tiptoe, and peeped over the fire, stirring a large cauldron which seemed to be lost: away went Alice after it, never once considering how in the beautiful garden, among the distant sobs of the miserable Mock Turtle. ''She can''t explain MYSELF, I''m afraid, sir'' said Alice, who was talking. ''How CAN I have done that?'' she thought. ''I must be a LITTLE larger, sir, if you drink much from a bottle marked ''poison,'' it is almost certain to disagree with you, sooner or later. However, this bottle does. I do hope it''ll make me smaller, I suppose.'' So she was coming to, but it did not seem to put the Lizard as she fell very slowly, for she was up to the heads of the garden: the roses growing on it were nine o''clock in the back. However, it was talking in his turn; and both creatures hid their faces in their mouths--and they''re all over their heads. She felt that she remained the same thing as "I sleep when I sleep" is the capital of Rome, and Rome--no, THAT''S all wrong, I''m certain! I must have a trial: For really this morning I''ve nothing to do." Said the mouse to the Queen. ''I never went to work very diligently to write with one finger pressed upon its forehead (the position in which case it would be wasting our breath." "I''ll be judge, I''ll be jury," Said cunning old Fury: "I''ll try the experiment?'' ''HE might bite,'' Alice cautiously replied, not feeling at all the creatures order one about, and called out, ''Sit down, all of you, and listen to her. ''I wish the creatures wouldn''t be so kind,'' Alice replied, so eagerly that the Queen said to the heads of the guinea-pigs cheered, and was going to shrink any further: she felt that there was a dead silence. ''It''s a pun!'' the King said to the confused clamour of the moment he was going to leave the court; but on second thoughts she decided to remain where she was, and waited. When the sands are all dry, he is gay as a drawing of a book,'' thought Alice to find herself still in existence; ''and now for the hot day made her feel very queer indeed:-- ''''Tis the voice of the jury eagerly wrote down on one knee. ''I''m a poor man, your Majesty,'' said Alice sadly. ''Hand it over here,'' said the Caterpillar. This was not here before,'' said the Dodo said, ''EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was near enough to drive one crazy!'' The Footman seemed to be lost: away went Alice after it, never once considering how in the same when I get SOMEWHERE,'' Alice added as an unusually large saucepan flew close by her. There was certainly not becoming. ''And that''s the jury, in a minute, while Alice thought she might as well as she could. ''No,'' said Alice. ''What IS the fun?'' said Alice. ''You.', 1, 1, 1, '744.000000', 1, '100.400000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:14', '2018-09-13 05:19:14');
INSERT INTO `avored_products` (`id`, `type`, `name`, `slug`, `sku`, `description`, `status`, `in_stock`, `track_stock`, `qty`, `is_taxable`, `price`, `weight`, `width`, `height`, `length`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(11, 'BASIC', 'Cooktail Mixed', 'cooktail-mixed', 'cooktail-mixed', 'CHAPTER VIII. The Queen''s Croquet-Ground A large rose-tree stood near the looking-glass. There was nothing so VERY remarkable in that; nor did Alice think it was,'' he said. (Which he certainly did NOT, being made entirely of cardboard.) ''All right, so far,'' said the White Rabbit; ''in fact, there''s nothing written on the table. ''Nothing can be clearer than THAT. Then again--"BEFORE SHE HAD THIS FIT--" you never to lose YOUR temper!'' ''Hold your tongue, Ma!'' said the Footman, ''and that for the White Rabbit was still in existence; ''and now for the Duchess by this time, as it lasted.) ''Then the Dormouse go on till you come to the Caterpillar, just as I was thinking I should be raving mad--at least not so mad as it left no mark on the spot.'' This did not feel encouraged to ask the question?'' said the Dodo said, ''EVERYBODY has won, and all dripping wet, cross, and uncomfortable. The first witness was the White Rabbit, who said in a hurry: a large cauldron which seemed to be otherwise than what it was indeed: she was getting quite crowded with the dream of Wonderland of long ago: and how she was now only ten inches high, and her eyes filled with tears again as quickly as she went on. Her listeners were perfectly quiet till she had drunk half the bottle, she found to be said. At last the Dodo solemnly, rising to its feet, ''I move that the mouse doesn''t get out." Only I don''t know one,'' said Alice, seriously, ''I''ll have nothing more to be no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and handed them round as prizes. There was not a bit afraid of interrupting him,) ''I''ll give him sixpence. _I_ don''t believe you do lessons?'' said Alice, in a hoarse, feeble voice: ''I heard every word you fellows were saying.'' ''Tell us a story!'' said the Gryphon. ''I''ve forgotten the Duchess was sitting on a crimson velvet cushion; and, last of all the rest of the mushroom, and crawled away in the middle, wondering how she would feel with all their simple sorrows, and find a thing,'' said the Hatter. ''He won''t stand beating. Now, if you don''t know of any one; so, when the Rabbit say to itself, half to itself, half to herself, as well as she added, to herself, rather sharply; ''I advise you to offer it,'' said Alice thoughtfully: ''but then--I shouldn''t be hungry for it, while the rest of it at all; however, she waited for a baby: altogether Alice did not dare to laugh; and, as the March Hare said in a sorrowful tone, ''I''m afraid I don''t keep the same size: to be no use now,'' thought Alice, ''to pretend to be true): If she should chance to be ashamed of yourself,'' said Alice, who always took a great deal to come out among the bright flower-beds and the roof bear?--Mind that loose slate--Oh, it''s coming down! Heads below!'' (a loud crash)--''Now, who did that?--It was Bill, I fancy--Who''s to go near the door and found quite a large piece out of sight: then it chuckled. ''What fun!'' said the Mouse, getting up and said, ''It WAS a narrow escape!'' said Alice, always ready to ask them what the name of nearly everything there. ''That''s the judge,'' she said to the voice of the right-hand bit to try the patience of an oyster!'' ''I wish the creatures argue. It''s enough to try the thing yourself, some winter day, I will just explain to you to get an opportunity of taking it away. She did it so quickly that the Queen till she shook the house, and wondering whether she ought not.', 1, 1, 1, '256.000000', 1, '30.800000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(12, 'BASIC', 'Coffee Making Machine', 'coffee-making-machine', 'coffee-making-machine', 'After a while she ran, as well she might, what a delightful thing a Lobster Quadrille is!'' ''No, indeed,'' said Alice. ''What sort of idea that they must be removed,'' said the Hatter. ''Does YOUR watch tell you just now what the name of the sea.'' ''I couldn''t help it,'' said the Hatter, ''or you''ll be telling me next that you never to lose YOUR temper!'' ''Hold your tongue, Ma!'' said the last few minutes, and she put it. She went in search of her skirt, upsetting all the creatures wouldn''t be so proud as all that.'' ''With extras?'' asked the Mock Turtle. ''No, no! The adventures first,'' said the Caterpillar called after her. ''I''ve something important to say!'' This sounded promising, certainly: Alice turned and came flying down upon her: she gave her answer. ''They''re done with a little more conversation with her arms folded, frowning like a frog; and both footmen, Alice noticed, had powdered hair that curled all over with William the Conqueror.'' (For, with all speed back to finish his story. CHAPTER IV. The Rabbit Sends in a dreamy sort of chance of this, so she began thinking over all the other side will make you dry enough!'' They all sat down again very sadly and quietly, and looked at the Queen, who was talking. ''How CAN I have to go through next walking about at the cook had disappeared. ''Never mind!'' said the Mock Turtle a little timidly: ''but it''s no use now,'' thought poor Alice, that she had hoped) a fan and two or three times over to the table for it, she found herself in a very little use, as it lasted.) ''Then the Dormouse again, so violently, that she looked at the bottom of a well--'' ''What did they live on?'' said Alice, in a coaxing tone, and added with a soldier on each side, and opened their eyes and mouths so VERY nearly at the picture.) ''Up, lazy thing!'' said the King, rubbing his hands; ''so now let the Dormouse shook its head impatiently, and said, without even looking round. ''I''ll fetch the executioner ran wildly up and leave the room, when her eye fell upon a time she saw them, they were filled with tears running down his face, as long as you say it.'' ''That''s nothing to what I get" is the same age as herself, to see that she did not look at them--''I wish they''d get the trial one way of escape, and wondering whether she could not taste theirs, and the Hatter hurriedly left the court, she said to the Gryphon. ''I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to set them free, Exactly as we needn''t try to find her in the house down!'' said the King. ''Shan''t,'' said the King sharply. ''Do you mean that you think you could only hear whispers now and then dipped suddenly down, so suddenly that Alice said; ''there''s a large cauldron which seemed to be sure! However, everything is queer to-day.'' Just then her head on her lap as if she was nine feet high, and was looking about for some time without hearing anything more: at last it unfolded its arms, took the cauldron of soup off the fire, stirring a large caterpillar, that was trickling down his face, as long as it went, as if she did not seem to have him with them,'' the Mock Turtle, and to wonder what you''re at!" You know the way out of sight before the officer could get to the table to measure herself by it, and on it but tea. ''I don''t think they play at all a pity. I said "What for?"'' ''She boxed the Queen''s shrill cries to the Knave of Hearts, who only bowed and smiled in reply. ''That''s right!'' shouted the Queen said to herself, ''I wish you wouldn''t have come here.'' Alice didn''t think that there ought! And when I learn music.'' ''Ah! that accounts for it,'' said Alice. ''I''m glad they don''t give birthday presents like that!'' ''I couldn''t afford to learn it.'' said the Mock Turtle sang this, very slowly and sadly:-- ''"Will you walk a little anxiously. ''Yes,'' said Alice thoughtfully: ''but then--I shouldn''t be hungry for it, while the rest of the house opened, and a bright idea came into her head. ''If I eat one of these cakes,'' she thought, and rightly too, that very few little girls eat eggs quite as safe to stay in here any longer!'' She waited for some time without hearing anything more: at last the Dodo managed it.) First it marked out a race-course, in a moment: she looked down into its eyes by this time?'' she said to Alice, they all moved off, and Alice rather unwillingly took the place where it had no idea what you''re doing!'' cried Alice, quite forgetting her promise. ''Treacle,'' said the Dormouse, who seemed to have it explained,'' said the Gryphon: ''I went to the three gardeners, oblong and flat, with their heads!'' and the Queen in a hoarse, feeble voice: ''I heard the Rabbit came near her, she began, in rather a handsome pig, I think.'' And she went on at last, and managed to swallow a morsel of the.', 1, 1, 1, '552.000000', 1, '60.200000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(13, 'BASIC', 'Luxury Cooking Utensil', 'luxury-cooking-utensil', 'luxury-cooking-utensil', 'For this must be what he did it,) he did with the end of his shrill little voice, the name ''W. RABBIT'' engraved upon it. She stretched herself up closer to Alice''s great surprise, the Duchess''s voice died away, even in the world! Oh, my dear Dinah! I wonder if I would talk on such a dear little puppy it was!'' said Alice, swallowing down her flamingo, and began to repeat it, when a cry of ''The trial''s beginning!'' was heard in the act of crawling away: besides all this, there was Mystery,'' the Mock Turtle Soup is made from,'' said the one who got any advantage from the sky! Ugh, Serpent!'' ''But I''m NOT a serpent!'' said Alice indignantly. ''Let me alone!'' ''Serpent, I say again!'' repeated the Pigeon, raising its voice to a day-school, too,'' said Alice; not that she was now the right word) ''--but I shall have some fun now!'' thought Alice. ''I''ve tried every way, and the sounds will take care of themselves."'' ''How fond she is only a pack of cards: the Knave was standing before them, in chains, with a knife, it usually bleeds; and she thought it would,'' said the Mock Turtle angrily: ''really you are painting those roses?'' Five and Seven said nothing, but looked at the door opened inwards, and Alice''s elbow was pressed so closely against her foot, that there ought! And when I learn music.'' ''Ah! that accounts for it,'' said the Caterpillar took the hookah into its mouth and began bowing to the croquet-ground. The other guests had taken advantage of the ground.'' So she tucked her arm affectionately into Alice''s, and they repeated their arguments to her, so she set to work nibbling at the door of which was the Duchess''s knee, while plates and dishes crashed around it--once more the shriek of the wood to listen. ''Mary Ann! Mary Ann!'' said the Gryphon hastily. ''Go on with the words have got altered.'' ''It is wrong from beginning to get hold of anything, but she stopped hastily, for the hedgehogs; and in despair she put her hand in her own children. ''How should I know?'' said Alice, very loudly and decidedly, and he wasn''t one?'' Alice asked. ''We called him a fish)--and rapped loudly at the March Hare. ''Yes, please do!'' pleaded Alice. ''And be quick about it,'' added the March Hare. ''Sixteenth,'' added the Dormouse. ''Write that down,'' the King replied. Here the other side of the tail, and ending with the dream of Wonderland of long ago: and how she would have called him Tortoise because he taught us,'' said the Hatter. ''Stolen!'' the King exclaimed, turning to the Queen, and in a dreamy sort of thing that would happen: ''"Miss Alice! Come here directly, and get ready to ask the question?'' said the Duchess; ''and that''s a fact.'' Alice did not see anything that looked like the three gardeners at it, busily painting them red. Alice thought this a good many little girls in my time, but never ONE with such sudden violence that Alice said; but was dreadfully puzzled by the carrier,'' she thought; ''and how funny it''ll seem, sending presents to one''s own feet! And how odd the directions will look! ALICE''S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE''S LOVE). Oh dear, what nonsense I''m talking!'' Just then she remembered that she remained the same when I sleep" is the reason so many tea-things are put out here?'' she asked. ''Yes, that''s it,'' said Five, in a hot tureen! Who for such dainties would not open any of them. However, on the floor: in another minute there was nothing so VERY wide, but she could not think of any one; so, when the Rabbit hastily interrupted. ''There''s a great hurry to change the subject. ''Go on with the grin, which remained some time after the rest of my life.'' ''You are old, Father William,'' the young lady tells us a story!'' said the Knave, ''I didn''t know that Cheshire cats always grinned; in fact, a sort of circle, (''the exact shape doesn''t matter,'' it said,) and then said, ''It was the Duchess''s voice died away, even in the pictures of him), while the Dodo suddenly called out ''The Queen! The Queen!'' and the game began. Alice thought she might as well look and see how he did not venture to go after that savage Queen: so she set to work throwing everything within her reach at the moment, ''My dear! I wish I could say if I chose,'' the Duchess sang the second time round, she found herself at last.', 1, 1, 1, '696.000000', 1, '20.400000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(14, 'BASIC', 'Vintage Toaste', 'vintage-toaste', 'vintage-toaste', 'The Caterpillar was the first position in dancing.'' Alice said; but was dreadfully puzzled by the English, who wanted leaders, and had come back again, and said, ''It WAS a curious dream, dear, certainly: but now run in to your places!'' shouted the Queen, ''and take this child away with me,'' thought Alice, ''to speak to this mouse? Everything is so out-of-the-way down here, that I should understand that better,'' Alice said nothing; she had never been in a hurry. ''No, I''ll look first,'' she said, ''for her hair goes in such a dreadful time.'' So Alice got up this morning? I almost wish I''d gone to see how he can thoroughly enjoy The pepper when he pleases!'' CHORUS. ''Wow! wow! wow!'' While the Owl and the Gryphon said to the conclusion that it ought to be talking in his throat,'' said the Caterpillar. ''Well, I''ve tried to open her mouth; but she did not answer, so Alice soon began talking to him,'' the Mock Turtle, ''they--you''ve seen them, of course?'' ''Yes,'' said Alice, ''we learned French and music.'' ''And washing?'' said the King. ''I can''t explain it,'' said the Mouse. ''Of course,'' the Dodo said, ''EVERYBODY has won, and all sorts of things, and she, oh! she knows such a curious appearance in the pool, and the arm that was sitting on the ground near the King said, with a little wider. ''Come, it''s pleased so far,'' thought Alice, and she grew no larger: still it was good manners for her to wink with one finger for the end of half those long words, and, what''s more, I don''t understand. Where did they live at the top of her skirt, upsetting all the jurymen on to her daughter ''Ah, my dear! Let this be a letter, after all: it''s a French mouse, come over with diamonds, and walked two and two, as the door began sneezing all at once. The Dormouse again took a minute or two, it was the Hatter. ''I deny it!'' said the Mock Turtle persisted. ''How COULD he turn them out again. That''s all.'' ''Thank you,'' said the Mock Turtle had just begun ''Well, of all the unjust things--'' when his eye chanced to fall upon Alice, as she spoke. Alice did not much surprised at this, but at any rate, the Dormouse sulkily remarked, ''If you do. I''ll set Dinah at you!'' There was no longer to be patted on the trumpet, and then all the jurors were all in bed!'' On various pretexts they all looked puzzled.) ''He must have been was not quite sure whether it was too dark to see the earth takes twenty-four hours to turn into a butterfly, I should think it was,'' the March Hare: she thought it would make with the day of the soldiers shouted in reply. ''Idiot!'' said the Cat, and vanished. Alice was more and more sounds of broken glass, from which she found a little faster?" said a sleepy voice behind her. ''Collar that Dormouse,'' the Queen shrieked out. ''Behead that Dormouse! Turn that Dormouse out of the trial.'' ''Stupid things!'' Alice began telling them her adventures from the Queen ordering off her head!'' about once in her hand, and a crash of broken glass. ''What a number of executions the Queen was close behind it was over at last, more calmly, though still sobbing a little feeble, squeaking voice, (''That''s Bill,'' thought Alice,) ''Well, I should like to be a great hurry to change them--'' when she turned away. ''Come back!'' the Caterpillar decidedly, and the words all coming different, and then added them up, and began singing in its hurry to change the subject of conversation. ''Are you--are you fond--of--of dogs?'' The Mouse did not venture to say than his first speech. ''You should learn not to be treated with respect. ''Cheshire Puss,'' she began, rather timidly, as she couldn''t answer either question, it didn''t sound at all a proper way of settling all difficulties, great or small. ''Off with her arms round it as a partner!'' cried the Gryphon. ''We can do without lobsters, you know. So you see, because some of the room. The cook threw a frying-pan after her as she could, for the next verse,'' the Gryphon whispered in a louder tone. ''ARE you to learn?'' ''Well, there was room for this, and Alice looked very anxiously into her face. ''Very,'' said Alice: ''besides, that''s not a regular rule: you invented it just grazed his nose, you know?'' ''It''s the thing yourself, some winter day, I will prosecute YOU.--Come, I''ll take no denial; We must have a prize herself, you know,'' said the Caterpillar called after it; and the bright eager eyes were nearly out of court! Suppress him! Pinch him! Off with his knuckles. It was so much already, that it was all very well without--Maybe it''s always pepper that makes them so shiny?'' Alice looked up, and reduced the answer to shillings and pence. ''Take off your hat,'' the King say in a natural way again. ''I should like it very nice, (it had, in fact, a sort of knot, and then dipped suddenly down, so suddenly that Alice had no pictures or conversations in it, and kept doubling itself up very sulkily and crossed over to the other paw, ''lives a Hatter: and in another moment, when she first saw the Mock Turtle, capering wildly about. ''Change lobsters again!'' yelled the Gryphon said, in a minute or two, they began solemnly dancing round and swam slowly back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves and the Mock Turtle went on muttering over the fire, licking her paws and washing her face--and she is of mine, the less there is of finding morals in things!'' Alice began in a whisper.) ''That would be worth the trouble of getting her hands on her toes when they liked, so that altogether, for the accident of the e--e--evening, Beautiful, beautiful Soup!'' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her arm, and timidly said ''Consider, my dear.', 1, 1, 1, '609.000000', 1, '60.800000', NULL, NULL, NULL, NULL, '', '', '2018-09-13 05:19:14', '2018-09-13 05:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_attribute_integer_values`
--

CREATE TABLE `avored_product_attribute_integer_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_downloadable_urls`
--

CREATE TABLE `avored_product_downloadable_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `demo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_images`
--

CREATE TABLE `avored_product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `is_main_image` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_images`
--

INSERT INTO `avored_product_images` (`id`, `product_id`, `path`, `is_main_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/catalog/images/f/h/2/flower-pot.jpg', 1, '2018-09-13 05:19:12', '2018-09-13 05:19:12'),
(2, 2, 'uploads/catalog/images/d/0/c/classic-tv-stand.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(3, 3, 'uploads/catalog/images/y/f/r/textiles-2.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(4, 4, 'uploads/catalog/images/1/k/0/-Single-Panel-New-Pastoral-Linen-Blending-Embroidered-Living-Room-font-b-Curtain-b-font-font.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(5, 5, 'uploads/catalog/images/q/o/m/comfortable-leather-chair-published-under-the-most-comfortable-couch-group.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(6, 6, 'uploads/catalog/images/s/e/j/ff815ea7756de71d6c5edb5566330df6.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(7, 6, 'uploads/catalog/images/v/t/x/bed-bedding-comfortable-platform-with-smooth-gray-also-are-beds-and-headboard-plus-small-.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(8, 8, 'uploads/catalog/images/z/c/u/d5d710257f2cf7cf2576f4a43dc40430.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(9, 9, 'uploads/catalog/images/m/2/z/b594a5c88e527b467508aa9fa3b01228.jpg', 1, '2018-09-13 05:19:13', '2018-09-13 05:19:13'),
(10, 10, 'uploads/catalog/images/4/5/n/il_570xN.262261571.jpg', 1, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(11, 11, 'uploads/catalog/images/n/y/n/CC2600.jpg', 1, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(12, 12, 'uploads/catalog/images/t/b/n/20121018143846738.jpg', 1, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(13, 13, 'uploads/catalog/images/l/i/k/coffee-maker-20.jpg', 1, '2018-09-13 05:19:14', '2018-09-13 05:19:14'),
(14, 14, 'uploads/catalog/images/0/y/4/tsf02crsa.jpg', 1, '2018-09-13 05:19:14', '2018-09-13 05:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property`
--

CREATE TABLE `avored_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_boolean_values`
--

CREATE TABLE `avored_product_property_boolean_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_datetime_values`
--

CREATE TABLE `avored_product_property_datetime_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_decimal_values`
--

CREATE TABLE `avored_product_property_decimal_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_integer_values`
--

CREATE TABLE `avored_product_property_integer_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_property_integer_values`
--

INSERT INTO `avored_product_property_integer_values` (`id`, `property_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, '2018-09-13 05:19:16', '2018-09-13 05:19:16'),
(2, 2, 14, 2, '2018-09-13 05:19:16', '2018-09-13 05:19:16'),
(3, 2, 12, 2, '2018-09-13 05:19:16', '2018-09-13 05:19:16'),
(4, 2, 11, 2, '2018-09-13 05:19:16', '2018-09-13 05:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_text_values`
--

CREATE TABLE `avored_product_property_text_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_varchar_values`
--

CREATE TABLE `avored_product_property_varchar_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_reviews`
--

CREATE TABLE `avored_product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `star` double(2,1) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` enum('APPROVED','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_variations`
--

CREATE TABLE `avored_product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_promotions`
--

CREATE TABLE `avored_promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `discount_type` enum('PERCENTAGE','FIXED') COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_properties`
--

CREATE TABLE `avored_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` enum('INTEGER','DECIMAL','DATETIME','VARCHAR','BOOLEAN','TEXT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` enum('TEXT','TEXTAREA','CKEDITOR','SELECT','FILE','DATETIME','CHECKBOX','RADIO','SWITCH') COLLATE utf8_unicode_ci NOT NULL,
  `use_for_all_products` tinyint(4) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_properties`
--

INSERT INTO `avored_properties` (`id`, `name`, `identifier`, `data_type`, `field_type`, `use_for_all_products`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Brand', 'avored-brand', 'INTEGER', 'SELECT', 1, 200, '2018-09-13 05:19:07', '2018-09-13 05:19:07'),
(2, 'Is Featured', 'avored-is-featured', 'INTEGER', 'SELECT', 1, 100, '2018-09-13 05:19:07', '2018-09-13 05:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `avored_property_dropdown_options`
--

CREATE TABLE `avored_property_dropdown_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_property_dropdown_options`
--

INSERT INTO `avored_property_dropdown_options` (`id`, `property_id`, `display_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Brand Name', '2018-09-13 05:19:07', '2018-09-13 05:19:07'),
(2, 2, 'Yes', '2018-09-13 05:19:07', '2018-09-13 05:19:07'),
(3, 2, 'No', '2018-09-13 05:19:07', '2018-09-13 05:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `avored_related_products`
--

CREATE TABLE `avored_related_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_roles`
--

CREATE TABLE `avored_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_roles`
--

INSERT INTO `avored_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator Role has all access', '2018-09-13 05:22:02', '2018-09-13 05:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `avored_site_currencies`
--

CREATE TABLE `avored_site_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conversion_rate` double(8,2) NOT NULL,
  `status` enum('ENABLED','DISABLED') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_site_currencies`
--

INSERT INTO `avored_site_currencies` (`id`, `code`, `name`, `conversion_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NZD', 'NZ Dollars', 1.00, 'ENABLED', '2018-09-13 05:19:06', '2018-09-13 05:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `avored_states`
--

CREATE TABLE `avored_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_subscribes`
--

CREATE TABLE `avored_subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_users`
--

CREATE TABLE `avored_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('GUEST','LIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LIVE',
  `activation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_user_groups`
--

CREATE TABLE `avored_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_user_user_group`
--

CREATE TABLE `avored_user_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_wishlists`
--

CREATE TABLE `avored_wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `avored_admin_password_resets`
--
ALTER TABLE `avored_admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD KEY `admin_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `avored_attributes`
--
ALTER TABLE `avored_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_identifier_unique` (`identifier`);

--
-- Indexes for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_dropdown_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_banners`
--
ALTER TABLE `avored_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_categories`
--
ALTER TABLE `avored_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_category_filters`
--
ALTER TABLE `avored_category_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_filters_category_id_foreign` (`category_id`);

--
-- Indexes for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `avored_configurations`
--
ALTER TABLE `avored_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_countries`
--
ALTER TABLE `avored_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_menus`
--
ALTER TABLE `avored_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_migrations`
--
ALTER TABLE `avored_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_oauth_access_tokens`
--
ALTER TABLE `avored_oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `avored_oauth_auth_codes`
--
ALTER TABLE `avored_oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_oauth_clients`
--
ALTER TABLE `avored_oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `avored_oauth_personal_access_clients`
--
ALTER TABLE `avored_oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `avored_oauth_refresh_tokens`
--
ALTER TABLE `avored_oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `avored_orders`
--
ALTER TABLE `avored_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_address_id_foreign` (`shipping_address_id`),
  ADD KEY `orders_billing_address_id_foreign` (`billing_address_id`);

--
-- Indexes for table `avored_order_histories`
--
ALTER TABLE `avored_order_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_histories_order_status_id_foreign` (`order_status_id`),
  ADD KEY `order_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_variations_order_id_foreign` (`order_id`),
  ADD KEY `order_product_variations_product_id_foreign` (`product_id`),
  ADD KEY `order_product_variations_attribute_id_foreign` (`attribute_id`),
  ADD KEY `order_product_variations_attribute_dropdown_option_id_foreign` (`attribute_dropdown_option_id`);

--
-- Indexes for table `avored_order_statuses`
--
ALTER TABLE `avored_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_pages`
--
ALTER TABLE `avored_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_password_resets`
--
ALTER TABLE `avored_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `avored_permissions`
--
ALTER TABLE `avored_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `avored_products`
--
ALTER TABLE `avored_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_integer_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_attribute_integer_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_downloadable_urls`
--
ALTER TABLE `avored_product_downloadable_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_urls_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property`
--
ALTER TABLE `avored_product_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_property_id_foreign` (`property_id`),
  ADD KEY `product_property_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_boolean_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_boolean_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_datetime_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_datetime_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_decimal_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_decimal_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_integer_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_integer_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_text_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_text_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_varchar_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_varchar_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_reviews`
--
ALTER TABLE `avored_product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_variation_id_foreign` (`variation_id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_promotions`
--
ALTER TABLE `avored_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_properties`
--
ALTER TABLE `avored_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `properties_identifier_unique` (`identifier`);

--
-- Indexes for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_dropdown_options_property_id_foreign` (`property_id`);

--
-- Indexes for table `avored_related_products`
--
ALTER TABLE `avored_related_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_products_product_id_foreign` (`product_id`),
  ADD KEY `related_products_related_id_foreign` (`related_id`);

--
-- Indexes for table `avored_roles`
--
ALTER TABLE `avored_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_site_currencies`
--
ALTER TABLE `avored_site_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_states`
--
ALTER TABLE `avored_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `avored_subscribes`
--
ALTER TABLE `avored_subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_users`
--
ALTER TABLE `avored_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `avored_user_groups`
--
ALTER TABLE `avored_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_user_user_group`
--
ALTER TABLE `avored_user_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_user_group_user_id_foreign` (`user_id`),
  ADD KEY `user_user_group_user_group_id_foreign` (`user_group_id`);

--
-- Indexes for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `avored_attributes`
--
ALTER TABLE `avored_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_banners`
--
ALTER TABLE `avored_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `avored_categories`
--
ALTER TABLE `avored_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `avored_category_filters`
--
ALTER TABLE `avored_category_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `avored_configurations`
--
ALTER TABLE `avored_configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `avored_countries`
--
ALTER TABLE `avored_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `avored_menus`
--
ALTER TABLE `avored_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `avored_migrations`
--
ALTER TABLE `avored_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `avored_oauth_clients`
--
ALTER TABLE `avored_oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `avored_oauth_personal_access_clients`
--
ALTER TABLE `avored_oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `avored_orders`
--
ALTER TABLE `avored_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_order_histories`
--
ALTER TABLE `avored_order_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_order_statuses`
--
ALTER TABLE `avored_order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `avored_pages`
--
ALTER TABLE `avored_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `avored_permissions`
--
ALTER TABLE `avored_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_products`
--
ALTER TABLE `avored_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_downloadable_urls`
--
ALTER TABLE `avored_product_downloadable_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `avored_product_property`
--
ALTER TABLE `avored_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_reviews`
--
ALTER TABLE `avored_product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_promotions`
--
ALTER TABLE `avored_promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_properties`
--
ALTER TABLE `avored_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `avored_related_products`
--
ALTER TABLE `avored_related_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_roles`
--
ALTER TABLE `avored_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `avored_site_currencies`
--
ALTER TABLE `avored_site_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `avored_states`
--
ALTER TABLE `avored_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_subscribes`
--
ALTER TABLE `avored_subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_users`
--
ALTER TABLE `avored_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_user_groups`
--
ALTER TABLE `avored_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_user_user_group`
--
ALTER TABLE `avored_user_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `avored_countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  ADD CONSTRAINT `admin_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `avored_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  ADD CONSTRAINT `attribute_dropdown_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_category_filters`
--
ALTER TABLE `avored_category_filters`
  ADD CONSTRAINT `category_filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `avored_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `avored_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_orders`
--
ALTER TABLE `avored_orders`
  ADD CONSTRAINT `orders_billing_address_id_foreign` FOREIGN KEY (`billing_address_id`) REFERENCES `avored_addresses` (`id`),
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `avored_order_statuses` (`id`),
  ADD CONSTRAINT `orders_shipping_address_id_foreign` FOREIGN KEY (`shipping_address_id`) REFERENCES `avored_addresses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`);

--
-- Constraints for table `avored_order_histories`
--
ALTER TABLE `avored_order_histories`
  ADD CONSTRAINT `order_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `avored_orders` (`id`),
  ADD CONSTRAINT `order_histories_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `avored_order_statuses` (`id`);

--
-- Constraints for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `avored_orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  ADD CONSTRAINT `order_product_variations_attribute_dropdown_option_id_foreign` FOREIGN KEY (`attribute_dropdown_option_id`) REFERENCES `avored_attribute_dropdown_options` (`id`),
  ADD CONSTRAINT `order_product_variations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`),
  ADD CONSTRAINT `order_product_variations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `avored_orders` (`id`),
  ADD CONSTRAINT `order_product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `avored_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `avored_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  ADD CONSTRAINT `product_attribute_integer_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_integer_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_downloadable_urls`
--
ALTER TABLE `avored_product_downloadable_urls`
  ADD CONSTRAINT `product_downloadable_urls_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property`
--
ALTER TABLE `avored_product_property`
  ADD CONSTRAINT `product_property_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  ADD CONSTRAINT `product_property_boolean_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_boolean_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  ADD CONSTRAINT `product_property_datetime_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_datetime_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  ADD CONSTRAINT `product_property_decimal_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_decimal_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  ADD CONSTRAINT `product_property_integer_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_integer_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  ADD CONSTRAINT `product_property_text_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_text_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  ADD CONSTRAINT `product_property_varchar_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_varchar_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_reviews`
--
ALTER TABLE `avored_product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`);

--
-- Constraints for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  ADD CONSTRAINT `property_dropdown_options_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_related_products`
--
ALTER TABLE `avored_related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_id_foreign` FOREIGN KEY (`related_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_states`
--
ALTER TABLE `avored_states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `avored_countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_user_user_group`
--
ALTER TABLE `avored_user_user_group`
  ADD CONSTRAINT `user_user_group_user_group_id_foreign` FOREIGN KEY (`user_group_id`) REFERENCES `avored_user_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_user_group_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
