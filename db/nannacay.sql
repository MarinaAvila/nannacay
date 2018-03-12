-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2018 at 05:07 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nannacay`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-10 22:39:43', '2018-03-10 22:39:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nannacay', 'yes'),
(2, 'home', 'http://localhost/nannacay', 'yes'),
(3, 'blogname', 'Nannacay', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marina@grama.cc', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nannacay', 'yes'),
(41, 'stylesheet', 'nannacay', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', 'W%=Z!,5p:NP^s,^b#{_IKg4^_iH(ka~ujOKqzhC|gH`e/4sl0^7]ANG_I|NXw^;Z', 'no'),
(107, 'nonce_salt', 'Up^oKc}DI;5PY%!c_H$7oF=]^ORoxGeX6TCW) Arn&Qb[{$49~C;%ORM(Z6r&=98', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:4:{i:1520851183;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520894396;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520894557;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520722485;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1520808034;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1520808038;s:7:\"checked\";a:4:{s:8:\"nannacay\";s:5:\"0.0.0\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'auth_key', ')NZ.D[*Zu@hCiV<;WPL%dy-#Omj^apbW_hI*XK&z1ZbJYHPB@wnV -su^oX$_f8q', 'no'),
(124, 'auth_salt', '>ww1K^fPhrwYv2zG3mCs!=Q(wy}eNY$3%3x,?$ )P(U1raHmBfK3U)`?5LMmKF`z', 'no'),
(125, 'logged_in_key', 'I`7vy2K.90^5:BBd.@Yih4PGvv*@8~uP^g]v%PDQ!=.<JI #_]?pS~Qk}Ra$3p/:', 'no'),
(126, 'logged_in_salt', 'Sa{ ]rEK^q2q&]}}/025LAdGY$!R}P OC<89b;ah.RwQ#;ktx$,rF}.?xcV3i}?s', 'no'),
(127, '_site_transient_timeout_browser_97de1fddac67554e2eb90d9a46b3dcd4', '1521326397', 'no'),
(128, '_site_transient_browser_97de1fddac67554e2eb90d9a46b3dcd4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.186\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(143, '_transient_timeout_plugin_slugs', '1520808136', 'no'),
(144, '_transient_plugin_slugs', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";}', 'no'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'acf_version', '5.6.9', 'yes'),
(149, 'current_theme', 'Nannacay', 'yes'),
(150, 'theme_mods_nannacay', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(165, '_site_transient_timeout_theme_roots', '1520809838', 'no'),
(166, '_site_transient_theme_roots', 'a:4:{s:8:\"nannacay\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(167, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1520808039;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.9\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1520809641:1'),
(4, 2, '_edit_lock', '1520722366:1'),
(5, 10, '_wp_attached_file', '2018/03/logo_nannacay_big.png'),
(6, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1027;s:6:\"height\";i:449;s:4:\"file\";s:29:\"2018/03/logo_nannacay_big.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"logo_nannacay_big-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"logo_nannacay_big-300x131.png\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"logo_nannacay_big-768x336.png\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"logo_nannacay_big-1024x448.png\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:29:\"logo_nannacay_big-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 12, '_wp_attached_file', '2018/03/cover_image.png'),
(10, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:23:\"2018/03/cover_image.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cover_image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cover_image-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"cover_image-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"cover_image-1024x575.png\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"cover_image-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 2, '_edit_last', '1'),
(12, 2, 'logo', '10'),
(13, 2, '_logo', 'field_5aa45f6c05769'),
(14, 2, 'cover', '12'),
(15, 2, '_cover', 'field_5aa45fe60576c'),
(16, 2, 'instagram', 'https://www.instagram.com/nannacay/'),
(17, 2, '_instagram', 'field_5aa45fad0576a'),
(18, 2, 'facebook', 'https://www.facebook.com/nannacay.creativehands/'),
(19, 2, '_facebook', 'field_5aa45fc10576b'),
(20, 13, 'logo', '10'),
(21, 13, '_logo', 'field_5aa45f6c05769'),
(22, 13, 'cover', '12'),
(23, 13, '_cover', 'field_5aa45fe60576c'),
(24, 13, 'instagram', 'https://www.instagram.com/nannacay/'),
(25, 13, '_instagram', 'field_5aa45fad0576a'),
(26, 13, 'facebook', 'https://www.facebook.com/nannacay.creativehands/'),
(27, 13, '_facebook', 'field_5aa45fc10576b'),
(28, 2, '_wp_trash_meta_status', 'publish'),
(29, 2, '_wp_trash_meta_time', '1520722514'),
(30, 2, '_wp_desired_post_slug', 'sample-page'),
(31, 14, '_edit_last', '1'),
(32, 14, '_wp_page_template', 'default'),
(33, 14, '_edit_lock', '1520722454:1'),
(34, 14, '_wp_trash_meta_status', 'publish'),
(35, 14, '_wp_trash_meta_time', '1520722599'),
(36, 14, '_wp_desired_post_slug', 'home'),
(37, 16, '_edit_last', '1'),
(38, 16, '_wp_page_template', 'default'),
(39, 16, '_edit_lock', '1520722549:1'),
(40, 16, '_wp_trash_meta_status', 'publish'),
(41, 16, '_wp_trash_meta_time', '1520722693'),
(42, 16, '_wp_desired_post_slug', 'home'),
(43, 18, '_edit_last', '1'),
(44, 18, '_edit_lock', '1520809644:1'),
(45, 18, '_wp_page_template', 'index.php'),
(46, 18, 'logo', '10'),
(47, 18, '_logo', 'field_5aa45f6c05769'),
(48, 18, 'cover', '12'),
(49, 18, '_cover', 'field_5aa45fe60576c'),
(50, 18, 'instagram', 'https://www.instagram.com/nannacay/'),
(51, 18, '_instagram', 'field_5aa45fad0576a'),
(52, 18, 'facebook', 'https://www.facebook.com/nannacay.creativehands/'),
(53, 18, '_facebook', 'field_5aa45fc10576b'),
(54, 20, 'logo', '10'),
(55, 20, '_logo', 'field_5aa45f6c05769'),
(56, 20, 'cover', '12'),
(57, 20, '_cover', 'field_5aa45fe60576c'),
(58, 20, 'instagram', 'https://www.instagram.com/nannacay/'),
(59, 20, '_instagram', 'field_5aa45fad0576a'),
(60, 20, 'facebook', 'https://www.facebook.com/nannacay.creativehands/'),
(61, 20, '_facebook', 'field_5aa45fc10576b'),
(62, 21, '_edit_last', '1'),
(63, 21, '_wp_page_template', 'onde.php'),
(64, 21, '_edit_lock', '1520806741:1'),
(65, 23, '_edit_last', '1'),
(66, 23, '_wp_page_template', 'clippings.php'),
(67, 23, '_edit_lock', '1520725003:1'),
(68, 25, '_edit_last', '1'),
(69, 25, '_wp_page_template', 'campanhas.php'),
(70, 25, '_edit_lock', '1520723458:1'),
(71, 27, '_edit_last', '1'),
(72, 27, '_wp_page_template', 'default'),
(73, 27, '_edit_lock', '1520723171:1'),
(74, 27, '_wp_trash_meta_status', 'publish'),
(75, 27, '_wp_trash_meta_time', '1520723315'),
(76, 27, '_wp_desired_post_slug', 'batatnts'),
(77, 30, '_edit_last', '1'),
(78, 30, '_wp_page_template', 'quem-somos.php'),
(79, 30, '_edit_lock', '1520824758:1'),
(80, 33, '_edit_last', '1'),
(81, 33, '_edit_lock', '1520825358:1'),
(82, 30, 'about_0_text', 'batata'),
(83, 30, '_about_0_text', 'field_5aa469560273b'),
(84, 30, 'about', 'a:2:{i:0;s:4:\"text\";i:1;s:6:\"quotes\";}'),
(85, 30, '_about', 'field_5aa4670602734'),
(86, 38, 'about_0_text', 'batata'),
(87, 38, '_about_0_text', 'field_5aa469560273b'),
(88, 38, 'about', 'a:1:{i:0;s:4:\"text\";}'),
(89, 38, '_about', 'field_5aa4670602734'),
(90, 30, 'about_1_quote-text', 'batatat batatat'),
(91, 30, '_about_1_quote-text', 'field_5aa4683902735'),
(92, 30, 'about_1_quote-author', 'Antonia disse'),
(93, 30, '_about_1_quote-author', 'field_5aa469c80273d'),
(94, 39, 'about_0_text', 'batata'),
(95, 39, '_about_0_text', 'field_5aa469560273b'),
(96, 39, 'about', 'a:2:{i:0;s:4:\"text\";i:1;s:6:\"quotes\";}'),
(97, 39, '_about', 'field_5aa4670602734'),
(98, 39, 'about_1_quote-text', 'batatat batatat'),
(99, 39, '_about_1_quote-text', 'field_5aa4683902735'),
(100, 39, 'about_1_quote-author', 'Antonia disse'),
(101, 39, '_about_1_quote-author', 'field_5aa469c80273d'),
(102, 42, '_edit_last', '1'),
(105, 42, '_edit_lock', '1520826357:1'),
(106, 44, '_edit_last', '1'),
(107, 44, '_edit_lock', '1520826138:1'),
(108, 48, '_wp_attached_file', '2018/03/2.2-Image.jpg'),
(109, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2846;s:6:\"height\";i:1600;s:4:\"file\";s:21:\"2018/03/2.2-Image.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"2.2-Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"2.2-Image-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"2.2-Image-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"2.2-Image-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 49, '_wp_attached_file', '2018/03/2.3-Image.jpg'),
(111, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2846;s:6:\"height\";i:1600;s:4:\"file\";s:21:\"2018/03/2.3-Image.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"2.3-Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"2.3-Image-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"2.3-Image-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"2.3-Image-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 50, '_wp_attached_file', '2018/03/2.4-Image.jpg'),
(113, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2846;s:6:\"height\";i:1600;s:4:\"file\";s:21:\"2018/03/2.4-Image.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"2.4-Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"2.4-Image-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"2.4-Image-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"2.4-Image-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 42, '_', 'field_5aa5f4be3841d'),
(117, 42, 'images_0_image', '48'),
(118, 42, '_images_0_image', 'field_5aa5f4eda9088'),
(119, 42, 'images_1_image', '49'),
(120, 42, '_images_1_image', 'field_5aa5f4eda9088'),
(121, 42, 'images_2_image', '50'),
(122, 42, '_images_2_image', 'field_5aa5f4eda9088'),
(123, 42, 'images', '3'),
(124, 42, '_images', 'field_5aa5f4cba9087'),
(125, 51, 'images_0_image', '48'),
(126, 51, '_images_0_image', 'field_5aa5f4eda9088'),
(127, 51, 'images_1_image', '49'),
(128, 51, '_images_1_image', 'field_5aa5f4eda9088'),
(129, 51, 'images_2_image', '50'),
(130, 51, '_images_2_image', 'field_5aa5f4eda9088'),
(131, 51, 'images', '3'),
(132, 51, '_images', 'field_5aa5f4cba9087'),
(135, 52, 'images_0_image', '48'),
(136, 52, '_images_0_image', 'field_5aa5f4eda9088'),
(137, 52, 'images_1_image', '49'),
(138, 52, '_images_1_image', 'field_5aa5f4eda9088'),
(139, 52, 'images_2_image', '50'),
(140, 52, '_images_2_image', 'field_5aa5f4eda9088'),
(141, 52, 'images', '3'),
(142, 52, '_images', 'field_5aa5f4cba9087'),
(145, 53, 'images_0_image', '48'),
(146, 53, '_images_0_image', 'field_5aa5f4eda9088'),
(147, 53, 'images_1_image', '49'),
(148, 53, '_images_1_image', 'field_5aa5f4eda9088'),
(149, 53, 'images_2_image', '50'),
(150, 53, '_images_2_image', 'field_5aa5f4eda9088'),
(151, 53, 'images', '3'),
(152, 53, '_images', 'field_5aa5f4cba9087'),
(155, 54, 'images_0_image', '48'),
(156, 54, '_images_0_image', 'field_5aa5f4eda9088'),
(157, 54, 'images_1_image', '49'),
(158, 54, '_images_1_image', 'field_5aa5f4eda9088'),
(159, 54, 'images_2_image', '50'),
(160, 54, '_images_2_image', 'field_5aa5f4eda9088'),
(161, 54, 'images', '3'),
(162, 54, '_images', 'field_5aa5f4cba9087'),
(165, 42, 'about', 'Mauris tempor laoreet metus, aliquam eleifend diam maximus eu. Etiam congue nulla in metus commodo faucibus. Mauris sodales diam at massa pulvinar vestibulum. Phasellus suscipit pharetra interdum. Donec at rhoncus velit.'),
(166, 42, '_about', 'field_5aa5f4be3841d'),
(167, 55, 'images_0_image', '48'),
(168, 55, '_images_0_image', 'field_5aa5f4eda9088'),
(169, 55, 'images_1_image', '49'),
(170, 55, '_images_1_image', 'field_5aa5f4eda9088'),
(171, 55, 'images_2_image', '50'),
(172, 55, '_images_2_image', 'field_5aa5f4eda9088'),
(173, 55, 'images', '3'),
(174, 55, '_images', 'field_5aa5f4cba9087'),
(175, 55, 'about', 'batata'),
(176, 55, '_about', 'field_5aa5f4be3841d'),
(179, 56, 'images_0_image', '48'),
(180, 56, '_images_0_image', 'field_5aa5f4eda9088'),
(181, 56, 'images_1_image', '49'),
(182, 56, '_images_1_image', 'field_5aa5f4eda9088'),
(183, 56, 'images_2_image', '50'),
(184, 56, '_images_2_image', 'field_5aa5f4eda9088'),
(185, 56, 'images', '3'),
(186, 56, '_images', 'field_5aa5f4cba9087'),
(187, 56, 'about', 'Mauris tempor laoreet metus, aliquam eleifend diam maximus eu. Etiam congue nulla in metus commodo faucibus. Mauris sodales diam at massa pulvinar vestibulum. Phasellus suscipit pharetra interdum. Donec at rhoncus velit. Duis mollis at tortor sagittis consectetur. Suspendisse ornare sagittis orci, eget cursus tellus eleifend sed. In volutpat convallis orci, ut placerat metus volutpat ut. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam porttitor elit in interdum accumsan.'),
(188, 56, '_about', 'field_5aa5f4be3841d'),
(191, 57, 'images_0_image', '48'),
(192, 57, '_images_0_image', 'field_5aa5f4eda9088'),
(193, 57, 'images_1_image', '49'),
(194, 57, '_images_1_image', 'field_5aa5f4eda9088'),
(195, 57, 'images_2_image', '50'),
(196, 57, '_images_2_image', 'field_5aa5f4eda9088'),
(197, 57, 'images', '3'),
(198, 57, '_images', 'field_5aa5f4cba9087'),
(199, 57, 'about', 'Mauris tempor laoreet metus, aliquam eleifend diam maximus eu. Etiam congue nulla in metus commodo faucibus. Mauris sodales diam at massa pulvinar vestibulum. Phasellus suscipit pharetra interdum. Donec at rhoncus velit.'),
(200, 57, '_about', 'field_5aa5f4be3841d');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-10 22:39:43', '2018-03-10 22:39:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-10 22:39:43', '2018-03-10 22:39:43', '', 0, 'http://localhost/nannacay/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-10 22:39:43', '2018-03-10 22:39:43', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/nannacay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-03-10 22:55:14', '2018-03-10 22:55:14', '', 0, 'http://localhost/nannacay/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-10 22:39:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-10 22:39:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/nannacay/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-10 22:42:47', '2018-03-10 22:42:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"18\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:3:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5aa45f5d4aaae', '', '', '2018-03-10 22:59:02', '2018-03-10 22:59:02', '', 0, 'http://localhost/nannacay/?post_type=acf-field-group&#038;p=4', 0, 'acf-field-group', '', 0),
(5, 1, '2018-03-10 22:45:20', '2018-03-10 22:45:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5aa45f6c05769', '', '', '2018-03-10 22:46:21', '2018-03-10 22:46:21', '', 4, 'http://localhost/nannacay/?post_type=acf-field&#038;p=5', 0, 'acf-field', '', 0),
(6, 1, '2018-03-10 22:45:20', '2018-03-10 22:45:20', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5aa45fad0576a', '', '', '2018-03-10 22:46:21', '2018-03-10 22:46:21', '', 4, 'http://localhost/nannacay/?post_type=acf-field&#038;p=6', 2, 'acf-field', '', 0),
(7, 1, '2018-03-10 22:45:20', '2018-03-10 22:45:20', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5aa45fc10576b', '', '', '2018-03-10 22:46:21', '2018-03-10 22:46:21', '', 4, 'http://localhost/nannacay/?post_type=acf-field&#038;p=7', 3, 'acf-field', '', 0),
(8, 1, '2018-03-10 22:45:20', '2018-03-10 22:45:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'cover', 'cover', 'publish', 'closed', 'closed', '', 'field_5aa45fe60576c', '', '', '2018-03-10 22:46:21', '2018-03-10 22:46:21', '', 4, 'http://localhost/nannacay/?post_type=acf-field&#038;p=8', 1, 'acf-field', '', 0),
(9, 1, '2018-03-10 22:48:09', '2018-03-10 22:48:09', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href=\"http://localhost/nannacay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-03-10 22:48:09', '2018-03-10 22:48:09', '', 2, 'http://localhost/nannacay/index.php/2018/03/10/2-autosave-v1/', 0, 'revision', '', 0),
(10, 1, '2018-03-10 22:48:45', '2018-03-10 22:48:45', '', 'logo_nannacay_big', '', 'inherit', 'open', 'closed', '', 'logo_nannacay_big', '', '', '2018-03-10 22:59:14', '2018-03-10 22:59:14', '', 2, 'http://localhost/nannacay/wp-content/uploads/2018/03/logo_nannacay_big.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-03-10 22:51:03', '2018-03-10 22:51:03', '', 'cover_image', '', 'inherit', 'open', 'closed', '', 'cover_image', '', '', '2018-03-10 22:51:03', '2018-03-10 22:51:03', '', 2, 'http://localhost/nannacay/wp-content/uploads/2018/03/cover_image.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-03-10 22:51:38', '2018-03-10 22:51:38', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/nannacay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-10 22:51:38', '2018-03-10 22:51:38', '', 2, 'http://localhost/nannacay/index.php/2018/03/10/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-03-10 22:55:24', '2018-03-10 22:55:24', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-03-10 22:56:39', '2018-03-10 22:56:39', '', 0, 'http://localhost/nannacay/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-03-10 22:55:24', '2018-03-10 22:55:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-03-10 22:55:24', '2018-03-10 22:55:24', '', 14, 'http://localhost/nannacay/index.php/2018/03/10/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-03-10 22:56:50', '2018-03-10 22:56:50', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed-2', '', '', '2018-03-10 22:58:13', '2018-03-10 22:58:13', '', 0, 'http://localhost/nannacay/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-03-10 22:56:50', '2018-03-10 22:56:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-03-10 22:56:50', '2018-03-10 22:56:50', '', 16, 'http://localhost/nannacay/index.php/2018/03/10/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-03-10 22:58:22', '2018-03-10 22:58:22', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-10 23:12:46', '2018-03-10 23:12:46', '', 0, 'http://localhost/nannacay/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-03-10 22:58:22', '2018-03-10 22:58:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-03-10 22:58:22', '2018-03-10 22:58:22', '', 18, 'http://localhost/nannacay/index.php/2018/03/10/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-03-10 22:59:49', '2018-03-10 22:59:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-03-10 22:59:49', '2018-03-10 22:59:49', '', 18, 'http://localhost/nannacay/index.php/2018/03/10/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-10 23:00:39', '2018-03-10 23:00:39', '', 'Onde', '', 'publish', 'closed', 'closed', '', 'onde', '', '', '2018-03-10 23:12:37', '2018-03-10 23:12:37', '', 0, 'http://localhost/nannacay/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-03-10 23:00:39', '2018-03-10 23:00:39', '', 'Onde', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-03-10 23:00:39', '2018-03-10 23:00:39', '', 21, 'http://localhost/nannacay/index.php/2018/03/10/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-03-10 23:08:54', '2018-03-10 23:08:54', '', 'Clippings', '', 'publish', 'closed', 'closed', '', 'clippings', '', '', '2018-03-10 23:12:57', '2018-03-10 23:12:57', '', 0, 'http://localhost/nannacay/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-03-10 23:05:37', '2018-03-10 23:05:37', '', 'Clippings', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-03-10 23:05:37', '2018-03-10 23:05:37', '', 23, 'http://localhost/nannacay/index.php/2018/03/10/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-03-10 23:07:57', '2018-03-10 23:07:57', '', 'Campanhas', '', 'publish', 'closed', 'closed', '', 'campanhas', '', '', '2018-03-10 23:13:04', '2018-03-10 23:13:04', '', 0, 'http://localhost/nannacay/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-10 23:07:57', '2018-03-10 23:07:57', '', 'batata', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-10 23:07:57', '2018-03-10 23:07:57', '', 25, 'http://localhost/nannacay/?p=26', 0, 'revision', '', 0),
(27, 1, '2018-03-10 23:08:29', '2018-03-10 23:08:29', '', 'batatnts', '', 'trash', 'closed', 'closed', '', 'batatnts__trashed', '', '', '2018-03-10 23:08:35', '2018-03-10 23:08:35', '', 0, 'http://localhost/nannacay/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-03-10 23:08:29', '2018-03-10 23:08:29', '', 'batatnts', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-03-10 23:08:29', '2018-03-10 23:08:29', '', 27, 'http://localhost/nannacay/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-03-10 23:09:30', '2018-03-10 23:09:30', '', 'Campanhas', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-03-10 23:09:30', '2018-03-10 23:09:30', '', 25, 'http://localhost/nannacay/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-10 23:09:56', '2018-03-10 23:09:56', '', 'Quem somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2018-03-10 23:30:07', '2018-03-10 23:30:07', '', 0, 'http://localhost/nannacay/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-03-10 23:09:56', '2018-03-10 23:09:56', '', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-10 23:09:56', '2018-03-10 23:09:56', '', 30, 'http://localhost/nannacay/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-03-10 23:13:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-10 23:13:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/nannacay/?post_type=acf-field-group&p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2018-03-10 23:28:59', '2018-03-10 23:28:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"quem-somos.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";}s:11:\"description\";s:0:\"\";}', 'Quem somos', 'quem-somos', 'publish', 'closed', 'closed', '', 'group_5aa466f2a37e1', '', '', '2018-03-10 23:33:42', '2018-03-10 23:33:42', '', 0, 'http://localhost/nannacay/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2018-03-10 23:28:59', '2018-03-10 23:28:59', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:4:{s:13:\"5aa4693f0273a\";a:6:{s:3:\"key\";s:13:\"5aa4693f0273a\";s:5:\"label\";s:4:\"text\";s:4:\"name\";s:4:\"text\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:13:\"5aa468305f2bb\";a:6:{s:3:\"key\";s:13:\"5aa468305f2bb\";s:5:\"label\";s:6:\"quotes\";s:4:\"name\";s:6:\"quotes\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:13:\"5aa46ae33d3b7\";a:6:{s:3:\"key\";s:13:\"5aa46ae33d3b7\";s:5:\"label\";s:16:\"image-full-width\";s:4:\"name\";s:16:\"image-full-width\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:13:\"5aa46b173d3b9\";a:6:{s:3:\"key\";s:13:\"5aa46b173d3b9\";s:5:\"label\";s:17:\"image-with-border\";s:4:\"name\";s:17:\"image-with-border\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Quem somos', 'about', 'publish', 'closed', 'closed', '', 'field_5aa4670602734', '', '', '2018-03-10 23:33:42', '2018-03-10 23:33:42', '', 33, 'http://localhost/nannacay/?post_type=acf-field&#038;p=34', 0, 'acf-field', '', 0),
(35, 1, '2018-03-10 23:28:59', '2018-03-10 23:28:59', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5aa4693f0273a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_5aa469560273b', '', '', '2018-03-10 23:30:54', '2018-03-10 23:30:54', '', 34, 'http://localhost/nannacay/?post_type=acf-field&#038;p=35', 0, 'acf-field', '', 0),
(36, 1, '2018-03-10 23:28:59', '2018-03-10 23:28:59', 'a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5aa468305f2bb\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'quote-text', 'quote-text', 'publish', 'closed', 'closed', '', 'field_5aa4683902735', '', '', '2018-03-10 23:30:54', '2018-03-10 23:30:54', '', 34, 'http://localhost/nannacay/?post_type=acf-field&#038;p=36', 0, 'acf-field', '', 0),
(37, 1, '2018-03-10 23:28:59', '2018-03-10 23:28:59', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5aa468305f2bb\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'quote-author', 'quote-author', 'publish', 'closed', 'closed', '', 'field_5aa469c80273d', '', '', '2018-03-10 23:28:59', '2018-03-10 23:28:59', '', 34, 'http://localhost/nannacay/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2018-03-10 23:29:46', '2018-03-10 23:29:46', '', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-10 23:29:46', '2018-03-10 23:29:46', '', 30, 'http://localhost/nannacay/30-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-03-10 23:30:07', '2018-03-10 23:30:07', '', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-03-10 23:30:07', '2018-03-10 23:30:07', '', 30, 'http://localhost/nannacay/30-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-03-10 23:33:42', '2018-03-10 23:33:42', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5aa46ae33d3b7\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image-full-width', 'image-full-width', 'publish', 'closed', 'closed', '', 'field_5aa46aec3d3b8', '', '', '2018-03-10 23:33:42', '2018-03-10 23:33:42', '', 34, 'http://localhost/nannacay/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2018-03-10 23:33:42', '2018-03-10 23:33:42', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:13:\"5aa46b173d3b9\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image-with-border', 'image-with-border', 'publish', 'closed', 'closed', '', 'field_5aa46b3c3d3ba', '', '', '2018-03-10 23:33:42', '2018-03-10 23:33:42', '', 34, 'http://localhost/nannacay/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(42, 1, '2018-03-12 02:50:55', '2018-03-12 02:50:55', '', 'Natal', '', 'publish', 'open', 'open', '', 'natal', '', '', '2018-03-12 03:45:56', '2018-03-12 03:45:56', '', 0, 'http://localhost/nannacay/?p=42', 0, 'post', '', 0),
(43, 1, '2018-03-12 02:50:55', '2018-03-12 02:50:55', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 02:50:55', '2018-03-12 02:50:55', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-03-12 03:32:12', '2018-03-12 03:32:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:3:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";}s:11:\"description\";s:0:\"\";}', 'Campanha', 'campanha', 'publish', 'closed', 'closed', '', 'group_5aa5f4a57d1e8', '', '', '2018-03-12 03:44:41', '2018-03-12 03:44:41', '', 0, 'http://localhost/nannacay/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2018-03-12 03:32:25', '2018-03-12 03:32:25', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'about', 'about', 'publish', 'closed', 'closed', '', 'field_5aa5f4be3841d', '', '', '2018-03-12 03:44:41', '2018-03-12 03:44:41', '', 44, 'http://localhost/nannacay/?post_type=acf-field&#038;p=45', 0, 'acf-field', '', 0),
(46, 1, '2018-03-12 03:33:46', '2018-03-12 03:33:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'images', 'images', 'publish', 'closed', 'closed', '', 'field_5aa5f4cba9087', '', '', '2018-03-12 03:33:46', '2018-03-12 03:33:46', '', 44, 'http://localhost/nannacay/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2018-03-12 03:33:46', '2018-03-12 03:33:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5aa5f4eda9088', '', '', '2018-03-12 03:33:46', '2018-03-12 03:33:46', '', 46, 'http://localhost/nannacay/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2018-03-12 03:36:02', '2018-03-12 03:36:02', '', '2.2-Image', '', 'inherit', 'open', 'closed', '', '2-2-image', '', '', '2018-03-12 03:36:09', '2018-03-12 03:36:09', '', 42, 'http://localhost/nannacay/wp-content/uploads/2018/03/2.2-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-03-12 03:36:03', '2018-03-12 03:36:03', '', '2.3-Image', '', 'inherit', 'open', 'closed', '', '2-3-image', '', '', '2018-03-12 03:36:03', '2018-03-12 03:36:03', '', 42, 'http://localhost/nannacay/wp-content/uploads/2018/03/2.3-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-03-12 03:36:04', '2018-03-12 03:36:04', '', '2.4-Image', '', 'inherit', 'open', 'closed', '', '2-4-image', '', '', '2018-03-12 03:36:04', '2018-03-12 03:36:04', '', 42, 'http://localhost/nannacay/wp-content/uploads/2018/03/2.4-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-03-12 03:36:15', '2018-03-12 03:36:15', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:36:15', '2018-03-12 03:36:15', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-03-12 03:36:31', '2018-03-12 03:36:31', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:36:31', '2018-03-12 03:36:31', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-03-12 03:37:02', '2018-03-12 03:37:02', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:37:02', '2018-03-12 03:37:02', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-03-12 03:38:50', '2018-03-12 03:38:50', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:38:50', '2018-03-12 03:38:50', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-03-12 03:44:50', '2018-03-12 03:44:50', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:44:50', '2018-03-12 03:44:50', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-03-12 03:45:33', '2018-03-12 03:45:33', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:45:33', '2018-03-12 03:45:33', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-03-12 03:45:56', '2018-03-12 03:45:56', '', 'Natal', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 03:45:56', '2018-03-12 03:45:56', '', 42, 'http://localhost/nannacay/42-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(42, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nannacaydev'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"998f353d7b29312146cfb4868d25c44a726a49e037d505deab89a472795d7546\";a:4:{s:10:\"expiration\";i:1520894396;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1520721596;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1520722293'),
(21, 1, 'closedpostboxes_page', 'a:1:{i:0;s:13:\"pageparentdiv\";}'),
(22, 1, 'metaboxhidden_page', 'a:5:{i:0;s:23:\"acf-group_5aa45f5d4aaae\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(23, 1, 'acf_user_settings', 'a:0:{}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:9:{i:0;s:23:\"acf-group_5aa45f5d4aaae\";i:1;s:23:\"acf-group_5aa466f2a37e1\";i:2;s:12:\"revisionsdiv\";i:3;s:11:\"postexcerpt\";i:4;s:13:\"trackbacksdiv\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nannacaydev', '$P$BvY6qfmb96dLFWD/elgBEwAAYLERNb.', 'nannacaydev', 'marina@grama.cc', '', '2018-03-10 22:39:43', '', 0, 'nannacaydev');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
