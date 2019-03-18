-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2019 at 02:18 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divi`
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
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-04 14:19:01', '2019-02-04 13:19:01', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost/divi/wordpress', 'yes'),
(2, 'home', 'http://localhost/divi/wordpress', 'yes'),
(3, 'blogname', 'tnt', 'yes'),
(4, 'blogdescription', 'Un site utilisant divi', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'saif.g@tnt.com.tn', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:48:\"index.php?layout_category=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?layout_category=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:37:\"index.php?layout_category=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:44:\"index.php?layout_pack=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_pack=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:33:\"index.php?layout_pack=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:44:\"index.php?layout_type=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_type=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:33:\"index.php?layout_type=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:38:\"index.php?scope=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scope=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:27:\"index.php?scope=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:45:\"index.php?module_width=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?module_width=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:34:\"index.php?module_width=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'Divi', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1552915145;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552915198;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552916716;a:1:{s:21:\"et_builder_fonts_cron\";a:1:{s:32:\"552cbb9d6515dadbbc4718ad75114f08\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{s:8:\"interval\";s:5:\"daily\";}s:8:\"interval\";i:86400;}}}i:1552916901;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554471591;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549287590;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:1:{s:53:\"supreme-modules-for-divi/supreme-modules-for-divi.php\";i:1549287862;}', 'yes'),
(147, 'dsm_general', '', 'yes'),
(152, 'current_theme', 'Divi', 'yes'),
(153, 'theme_mods_Divi', 'a:5:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'et_pb_cache_notice', 'a:1:{s:4:\"3.11\";s:6:\"ignore\";}', 'yes'),
(160, 'et_core_version', '3.11', 'yes'),
(162, 'et_divi', 'a:39:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:25:\"3_0_flush_rewrite_rules_2\";s:4:\"done\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:4:\"3.11\";s:27:\"divi_skip_font_subset_force\";b:1;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:27:\"et_pb_clear_templates_cache\";b:1;s:24:\"footer_widget_text_color\";s:7:\"#ffffff\";s:24:\"footer_widget_link_color\";s:7:\"#ffffff\";s:19:\"product_tour_status\";a:1:{i:1;s:3:\"off\";}s:32:\"et_fb_pref_settings_bar_location\";s:6:\"bottom\";s:28:\"et_fb_pref_builder_animation\";s:4:\"true\";s:41:\"et_fb_pref_builder_display_modal_settings\";s:5:\"false\";s:39:\"et_fb_pref_builder_enable_dummy_content\";s:4:\"true\";s:21:\"et_fb_pref_event_mode\";s:5:\"hover\";s:32:\"et_fb_pref_hide_disabled_modules\";s:5:\"false\";s:28:\"et_fb_pref_history_intervals\";i:1;s:29:\"et_fb_pref_page_creation_flow\";s:7:\"default\";s:27:\"et_fb_pref_modal_preference\";s:7:\"default\";s:30:\"et_fb_pref_modal_snap_location\";s:5:\"false\";s:21:\"et_fb_pref_modal_snap\";s:5:\"false\";s:27:\"et_fb_pref_modal_fullscreen\";s:5:\"false\";s:32:\"et_fb_pref_modal_dimension_width\";i:400;s:33:\"et_fb_pref_modal_dimension_height\";i:400;s:27:\"et_fb_pref_modal_position_x\";i:862;s:27:\"et_fb_pref_modal_position_y\";i:3;s:24:\"et_fb_pref_toolbar_click\";s:5:\"false\";s:26:\"et_fb_pref_toolbar_desktop\";s:5:\"false\";s:23:\"et_fb_pref_toolbar_grid\";s:5:\"false\";s:24:\"et_fb_pref_toolbar_hover\";s:5:\"false\";s:24:\"et_fb_pref_toolbar_phone\";s:4:\"true\";s:25:\"et_fb_pref_toolbar_tablet\";s:4:\"true\";s:28:\"et_fb_pref_toolbar_wireframe\";s:4:\"true\";s:23:\"et_fb_pref_toolbar_zoom\";s:4:\"true\";}', 'yes'),
(163, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(164, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(167, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(168, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(169, 'et_images_temp_folder', 'C:\\xampp\\htdocs\\divi\\wordpress/wp-content/uploads/et_temp', 'yes'),
(170, 'et_schedule_clean_images_last_time', '1552914727', 'yes'),
(171, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(174, 'new_admin_email', 'saif.g@tnt.com.tn', 'yes'),
(179, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1549287858;}', 'no'),
(190, 'category_children', 'a:0:{}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, '_site_transient_timeout_theme_roots', '1552916532', 'no'),
(202, '_site_transient_theme_roots', 'a:4:{s:4:\"Divi\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(207, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1552914746;s:15:\"version_checked\";s:5:\"5.0.4\";s:12:\"translations\";a:0:{}}', 'no'),
(208, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1552914747;s:7:\"checked\";a:4:{s:4:\"Divi\";s:4:\"3.11\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(209, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1552914749;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:53:\"supreme-modules-for-divi/supreme-modules-for-divi.php\";s:5:\"1.4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"supreme-modules-for-divi/supreme-modules-for-divi.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/supreme-modules-for-divi\";s:4:\"slug\";s:24:\"supreme-modules-for-divi\";s:6:\"plugin\";s:53:\"supreme-modules-for-divi/supreme-modules-for-divi.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/supreme-modules-for-divi/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/supreme-modules-for-divi.1.4.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/supreme-modules-for-divi/assets/icon-256x256.png?rev=1952630\";s:2:\"1x\";s:77:\"https://ps.w.org/supreme-modules-for-divi/assets/icon-128x128.png?rev=1952630\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/supreme-modules-for-divi/assets/banner-1544x500.png?rev=1945852\";s:2:\"1x\";s:79:\"https://ps.w.org/supreme-modules-for-divi/assets/banner-772x250.png?rev=1945852\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(210, '_site_transient_timeout_et_core_path', '1553001147', 'no'),
(211, '_site_transient_et_core_path', 'C:/xampp/htdocs/divi/wordpress/wp-content/themes/Divi/core', 'no'),
(212, '_site_transient_timeout_et_core_version', '1553001147', 'no'),
(213, '_site_transient_et_core_version', '3.11', 'no'),
(214, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"saif.g@tnt.com.tn\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1552914747;}', 'no');

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
(10, 9, '_edit_lock', '1549288188:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_et_pb_post_hide_nav', 'default'),
(13, 9, '_et_pb_page_layout', 'et_right_sidebar'),
(14, 9, '_et_pb_side_nav', 'off'),
(15, 9, '_et_pb_use_builder', 'on'),
(16, 9, '_et_builder_version', 'VB|Divi|3.11'),
(17, 9, '_et_pb_ab_stats_refresh_interval', 'hourly'),
(18, 9, '_et_pb_enable_shortcode_tracking', ''),
(19, 9, '_et_pb_custom_css', ''),
(20, 12, '_edit_lock', '1549288214:1'),
(21, 12, '_edit_last', '1'),
(22, 12, '_et_pb_post_hide_nav', 'default'),
(23, 12, '_et_pb_page_layout', 'et_right_sidebar'),
(24, 12, '_et_pb_side_nav', 'off'),
(25, 12, '_et_pb_use_builder', ''),
(26, 12, '_et_builder_version', 'BB|Divi|3.11'),
(27, 12, '_et_pb_ab_stats_refresh_interval', 'hourly'),
(28, 12, '_et_pb_enable_shortcode_tracking', ''),
(29, 12, '_et_pb_custom_css', ''),
(30, 14, '_edit_lock', '1549288270:1'),
(31, 14, '_edit_last', '1'),
(32, 14, '_et_pb_post_hide_nav', 'default'),
(33, 14, '_et_pb_page_layout', 'et_right_sidebar'),
(34, 14, '_et_pb_side_nav', 'off'),
(35, 14, '_et_pb_use_builder', ''),
(36, 14, '_et_builder_version', 'BB|Divi|3.11'),
(37, 14, '_et_pb_ab_stats_refresh_interval', 'hourly'),
(38, 14, '_et_pb_enable_shortcode_tracking', ''),
(39, 14, '_et_pb_custom_css', ''),
(40, 16, '_edit_lock', '1549288293:1'),
(41, 16, '_et_pb_page_layout', 'et_right_sidebar'),
(42, 16, '_et_pb_side_nav', 'off'),
(43, 16, '_et_pb_use_builder', ''),
(44, 16, '_et_builder_version', 'BB|Divi|3.11'),
(45, 16, '_et_pb_ab_stats_refresh_interval', 'hourly'),
(46, 16, '_et_pb_enable_shortcode_tracking', ''),
(47, 16, '_et_pb_custom_css', ''),
(48, 16, '_edit_last', '1'),
(49, 16, '_et_pb_post_hide_nav', 'default'),
(89, 23, '_menu_item_type', 'custom'),
(90, 23, '_menu_item_menu_item_parent', '0'),
(91, 23, '_menu_item_object_id', '23'),
(92, 23, '_menu_item_object', 'custom'),
(93, 23, '_menu_item_target', ''),
(94, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 23, '_menu_item_xfn', ''),
(96, 23, '_menu_item_url', 'http://localhost/divi/wordpress/'),
(97, 23, '_menu_item_orphaned', '1549288594'),
(98, 24, '_menu_item_type', 'post_type'),
(99, 24, '_menu_item_menu_item_parent', '0'),
(100, 24, '_menu_item_object_id', '12'),
(101, 24, '_menu_item_object', 'page'),
(102, 24, '_menu_item_target', ''),
(103, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 24, '_menu_item_xfn', ''),
(105, 24, '_menu_item_url', ''),
(107, 25, '_menu_item_type', 'post_type'),
(108, 25, '_menu_item_menu_item_parent', '0'),
(109, 25, '_menu_item_object_id', '14'),
(110, 25, '_menu_item_object', 'page'),
(111, 25, '_menu_item_target', ''),
(112, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 25, '_menu_item_xfn', ''),
(114, 25, '_menu_item_url', ''),
(116, 26, '_menu_item_type', 'post_type'),
(117, 26, '_menu_item_menu_item_parent', '0'),
(118, 26, '_menu_item_object_id', '9'),
(119, 26, '_menu_item_object', 'page'),
(120, 26, '_menu_item_target', ''),
(121, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 26, '_menu_item_xfn', ''),
(123, 26, '_menu_item_url', ''),
(125, 27, '_menu_item_type', 'post_type'),
(126, 27, '_menu_item_menu_item_parent', '0'),
(127, 27, '_menu_item_object_id', '16'),
(128, 27, '_menu_item_object', 'page'),
(129, 27, '_menu_item_target', ''),
(130, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 27, '_menu_item_xfn', ''),
(132, 27, '_menu_item_url', ''),
(137, 9, '_et_pb_old_content', ''),
(138, 9, '_et_pb_use_ab_testing', 'off'),
(139, 9, '_et_pb_ab_subjects', ''),
(140, 9, '_et_pb_ab_current_shortcode', '[et_pb_split_track id=\"9\" /]'),
(141, 9, '_et_pb_built_for_post_type', 'page'),
(142, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1614;s:6:\"height\";i:838;s:4:\"file\";s:22:\"2019/02/job_seeker.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"job_seeker-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"job_seeker-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"job_seeker-768x399.png\";s:5:\"width\";i:768;s:6:\"height\";i:399;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"job_seeker-1024x532.png\";s:5:\"width\";i:1024;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"et-pb-post-main-image\";a:4:{s:4:\"file\";s:22:\"job_seeker-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:31:\"et-pb-post-main-image-fullwidth\";a:4:{s:4:\"file\";s:23:\"job_seeker-1080x675.png\";s:5:\"width\";i:1080;s:6:\"height\";i:675;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"et-pb-portfolio-image\";a:4:{s:4:\"file\";s:22:\"job_seeker-400x284.png\";s:5:\"width\";i:400;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"et-pb-portfolio-module-image\";a:4:{s:4:\"file\";s:22:\"job_seeker-510x382.png\";s:5:\"width\";i:510;s:6:\"height\";i:382;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"et-pb-portfolio-image-single\";a:4:{s:4:\"file\";s:23:\"job_seeker-1080x561.png\";s:5:\"width\";i:1080;s:6:\"height\";i:561;s:9:\"mime-type\";s:9:\"image/png\";}s:35:\"et-pb-gallery-module-image-portrait\";a:4:{s:4:\"file\";s:22:\"job_seeker-400x516.png\";s:5:\"width\";i:400;s:6:\"height\";i:516;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 52, '_wp_attached_file', '2019/02/ales-nesetril-734016-unsplash.jpg'),
(144, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4846;s:6:\"height\";i:3431;s:4:\"file\";s:41:\"2019/02/ales-nesetril-734016-unsplash.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-768x544.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"ales-nesetril-734016-unsplash-1024x725.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:725;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"et-pb-post-main-image\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:31:\"et-pb-post-main-image-fullwidth\";a:4:{s:4:\"file\";s:42:\"ales-nesetril-734016-unsplash-1080x675.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"et-pb-portfolio-image\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-400x284.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"et-pb-portfolio-module-image\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-510x382.jpg\";s:5:\"width\";i:510;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"et-pb-portfolio-image-single\";a:4:{s:4:\"file\";s:42:\"ales-nesetril-734016-unsplash-1080x765.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:765;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:35:\"et-pb-gallery-module-image-portrait\";a:4:{s:4:\"file\";s:41:\"ales-nesetril-734016-unsplash-400x516.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:37:\"et-pb-post-main-image-fullwidth-large\";a:4:{s:4:\"file\";s:43:\"ales-nesetril-734016-unsplash-2880x1800.jpg\";s:5:\"width\";i:2880;s:6:\"height\";i:1800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 55, '_wp_attached_file', '2019/02/LOGO.png'),
(146, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:86;s:4:\"file\";s:16:\"2019/02/LOGO.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"LOGO-150x86.png\";s:5:\"width\";i:150;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

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
(1, 1, '2019-02-04 14:19:01', '2019-02-04 13:19:01', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-02-04 14:19:01', '2019-02-04 13:19:01', '', 0, 'http://localhost/divi/wordpress/?p=1', 0, 'post', '', 1),
(9, 1, '2019-02-04 14:49:08', '2019-02-04 13:49:08', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" header_fullscreen=\"on\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Arial|300|on|on|||||\" custom_button_two=\"on\" custom_button_one=\"on\" filter_hue_rotate=\"7deg\" filter_saturate=\"14%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" button_two_text_color=\"#000000\" button_two_border_width=\"4px\" button_two_border_color=\"#000000\" button_two_border_radius=\"7px\" button_two_letter_spacing=\"0px\" button_two_use_icon=\"off\" button_two_text_color_hover=\"#FFFFFF\" button_two_bg_color_hover=\"#000000\" button_two_border_color_hover=\"#000000\" button_two_border_radius_hover=\"0px\" button_two_letter_spacing_hover=\"0px\" button_one_text_size=\"20px\" button_one_text_color=\"#000000\" button_one_border_width=\"4px\" button_one_border_color=\"#000000\" button_one_border_radius=\"8px\" button_one_letter_spacing=\"0px\" button_one_use_icon=\"off\" button_one_text_color_hover=\"#FFFFFF\" button_one_bg_color_hover=\"#000000\" button_one_border_color_hover=\"#000000\" button_one_border_radius_hover=\"0px\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#FFFFFF\" button_one_font=\"Arial||||||||\" button_two_font=\"Arial||||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'publish', 'closed', 'closed', '', 'homme', '', '', '2019-02-04 17:07:42', '2019-02-04 16:07:42', '', 0, 'http://localhost/divi/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-02-04 14:49:08', '2019-02-04 13:49:08', '', 'Homme', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 14:49:08', '2019-02-04 13:49:08', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-04 14:49:42', '2019-02-04 13:49:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 14:49:42', '2019-02-04 13:49:42', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-02-04 14:50:12', '2019-02-04 13:50:12', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-02-04 14:50:13', '2019-02-04 13:50:13', '', 0, 'http://localhost/divi/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-02-04 14:50:12', '2019-02-04 13:50:12', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-02-04 14:50:12', '2019-02-04 13:50:12', '', 12, 'http://localhost/divi/wordpress/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-02-04 14:51:08', '2019-02-04 13:51:08', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-02-04 14:51:09', '2019-02-04 13:51:09', '', 0, 'http://localhost/divi/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-02-04 14:51:08', '2019-02-04 13:51:08', '', 'contact us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-02-04 14:51:08', '2019-02-04 13:51:08', '', 14, 'http://localhost/divi/wordpress/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-02-04 14:52:13', '2019-02-04 13:52:13', '', 'Our services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2019-02-04 14:52:51', '2019-02-04 13:52:51', '', 0, 'http://localhost/divi/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-02-04 14:52:13', '2019-02-04 13:52:13', '', 'Our services', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-02-04 14:52:13', '2019-02-04 13:52:13', '', 16, 'http://localhost/divi/wordpress/16-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-02-04 14:56:33', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-04 14:56:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/divi/wordpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2019-02-04 14:57:01', '2019-02-04 13:57:01', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-02-04 14:58:39', '2019-02-04 13:58:39', '', 0, 'http://localhost/divi/wordpress/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2019-02-04 14:57:01', '2019-02-04 13:57:01', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-02-04 14:58:39', '2019-02-04 13:58:39', '', 0, 'http://localhost/divi/wordpress/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2019-02-04 14:57:00', '2019-02-04 13:57:00', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-02-04 14:58:39', '2019-02-04 13:58:39', '', 0, 'http://localhost/divi/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2019-02-04 14:57:01', '2019-02-04 13:57:01', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-02-04 14:58:39', '2019-02-04 13:58:39', '', 0, 'http://localhost/divi/wordpress/?p=27', 4, 'nav_menu_item', '', 0),
(29, 1, '2019-02-04 15:01:42', '2019-02-04 14:01:42', '[et_pb_section admin_label=\"section\"]\n		[et_pb_row admin_label=\"row\"]\n			[et_pb_column type=\"4_4\"]\n				[et_pb_text admin_label=\"Text\"]\n					\n				[/et_pb_text]\n			[/et_pb_column]\n		[/et_pb_row]\n	[/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:01:42', '2019-02-04 14:01:42', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-02-04 15:04:49', '2019-02-04 14:04:49', '[et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][et_pb_cta title=\"welcome to tnt\" button_text=\"Click Here\" _builder_version=\"3.11\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_cta][/et_pb_column][/et_pb_row][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:04:49', '2019-02-04 14:04:49', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-02-04 15:15:26', '2019-02-04 14:15:26', '', 'job_seeker', '', 'inherit', 'open', 'closed', '', 'job_seeker', '', '', '2019-02-04 15:15:26', '2019-02-04 14:15:26', '', 0, 'http://localhost/divi/wordpress/wp-content/uploads/2019/02/job_seeker.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-02-04 15:16:45', '2019-02-04 14:16:45', '[et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\"][et_pb_fullwidth_header title=\"header\" button_one_text=\"abou us\" _builder_version=\"3.11\" button_one_url=\"#\" button_two_text=\"contact us\" button_two_url=\"#\" background_image=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/job_seeker.png\"]<p>contenu header </p>\n[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:16:45', '2019-02-04 14:16:45', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-02-04 15:41:14', '2019-02-04 14:41:14', '[et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\"][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:41:14', '2019-02-04 14:41:14', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-02-04 15:43:07', '2019-02-04 14:43:07', '[et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\"][et_pb_fullwidth_header title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\"][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:43:07', '2019-02-04 14:43:07', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-04 15:48:28', '2019-02-04 14:48:28', '[et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\"][et_pb_fullwidth_header title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"|||7px\" custom_margin=\"0px|||\" disabled_on=\"off|off|off\"][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:48:28', '2019-02-04 14:48:28', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-02-04 15:49:25', '2019-02-04 14:49:25', '[et_pb_section fb_built=\"1\" fullwidth=\"on\" animation_style=\"roll\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\"][et_pb_fullwidth_header title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"|||7px\" custom_margin=\"0px|||\" disabled_on=\"off|off|off\"][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:49:25', '2019-02-04 14:49:25', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-02-04 15:53:25', '2019-02-04 14:53:25', '[et_pb_section fb_built=\"1\" fullwidth=\"on\" inner_shadow=\"on\" animation_style=\"roll\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\"][et_pb_fullwidth_header filter_hue_rotate=\"68deg\" filter_saturate=\"84%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"|||7px\" custom_margin=\"0px|||\" disabled_on=\"off|off|off\"][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:53:25', '2019-02-04 14:53:25', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-02-04 15:54:59', '2019-02-04 14:54:59', '[et_pb_section fb_built=\"1\" fullwidth=\"on\" inner_shadow=\"on\" animation_style=\"roll\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"|||7px\" custom_margin=\"0px|||\" disabled_on=\"off|off|off\"][et_pb_fullwidth_header filter_hue_rotate=\"68deg\" filter_saturate=\"84%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 15:54:59', '2019-02-04 14:54:59', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-02-04 15:59:56', '2019-02-04 14:59:56', '', 'ales-nesetril-734016-unsplash', '', 'inherit', 'open', 'closed', '', 'ales-nesetril-734016-unsplash', '', '', '2019-02-04 15:59:56', '2019-02-04 14:59:56', '', 0, 'http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-02-04 16:00:52', '2019-02-04 15:00:52', '[et_pb_section fb_built=\"1\" fullwidth=\"on\" inner_shadow=\"on\" animation_style=\"roll\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"|||7px\" custom_margin=\"0px|||\" disabled_on=\"off|off|off\"][et_pb_fullwidth_header filter_hue_rotate=\"68deg\" filter_saturate=\"0%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title=\"welcome\" button_one_text=\"About us \" _builder_version=\"3.11\" subhead=\"welcome to tnt\" button_two_text=\"Contact Us\" button_one_url=\"#\" button_two_url=\"#\" title_font=\"||on||||||\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 16:00:52', '2019-02-04 15:00:52', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-02-04 16:09:20', '2019-02-04 15:09:20', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-02-04 16:09:20', '2019-02-04 15:09:20', '', 0, 'http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-02-04 16:09:49', '2019-02-04 15:09:49', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"|||7px\"][et_pb_fullwidth_header title=\"welcome\" subhead=\"welcome to tnt\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"||on||||||\" filter_hue_rotate=\"68deg\" filter_saturate=\"0%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 16:09:49', '2019-02-04 15:09:49', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-02-04 16:37:19', '2019-02-04 15:37:19', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"||on||||||\" filter_hue_rotate=\"68deg\" filter_saturate=\"0%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 16:37:19', '2019-02-04 15:37:19', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-02-04 16:40:35', '2019-02-04 15:40:35', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Georgia|300|on|on|||||\" filter_hue_rotate=\"68deg\" filter_saturate=\"0%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#0C71C3\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 16:40:35', '2019-02-04 15:40:35', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-04 16:44:15', '2019-02-04 15:44:15', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Arial|300|on|on|||||\" custom_button_two=\"on\" custom_button_one=\"on\" filter_hue_rotate=\"68deg\" filter_saturate=\"0%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" button_two_icon_color=\"#FFFFFF\" button_two_icon_placement=\"left\" button_two_text_color_hover=\"#EDF000\" button_two_bg_color_hover=\"#FFFFFF\" button_two_border_color_hover=\"#FFFFFF\" button_two_border_radius_hover=\"8px\" button_two_letter_spacing_hover=\"12px\" button_one_text_color=\"#000000\" button_one_border_width=\"4px\" button_one_border_radius=\"9px\" button_one_letter_spacing=\"0px\" button_one_icon=\"%%36%%\" button_one_icon_color=\"#E02B20\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#FFFFFF\" button_one_font=\"Arial||||||||\" button_two_font=\"||||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 16:44:15', '2019-02-04 15:44:15', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-02-04 17:03:50', '2019-02-04 16:03:50', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Arial|300|on|on|||||\" custom_button_two=\"on\" custom_button_one=\"on\" filter_hue_rotate=\"28deg\" filter_saturate=\"193%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" button_two_text_color=\"#000000\" button_two_border_width=\"4px\" button_two_border_color=\"#000000\" button_two_border_radius=\"7px\" button_two_letter_spacing=\"0px\" button_two_use_icon=\"off\" button_two_text_color_hover=\"#FFFFFF\" button_two_bg_color_hover=\"#000000\" button_two_border_color_hover=\"#000000\" button_two_border_radius_hover=\"0px\" button_two_letter_spacing_hover=\"0px\" button_one_text_size=\"20px\" button_one_text_color=\"#000000\" button_one_border_width=\"4px\" button_one_border_color=\"#000000\" button_one_border_radius=\"8px\" button_one_letter_spacing=\"0px\" button_one_use_icon=\"off\" button_one_text_color_hover=\"#FFFFFF\" button_one_bg_color_hover=\"#000000\" button_one_border_color_hover=\"#000000\" button_one_border_radius_hover=\"0px\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#FFFFFF\" button_one_font=\"Arial||||||||\" button_two_font=\"Arial||||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 17:03:50', '2019-02-04 16:03:50', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-02-04 17:07:03', '2019-02-04 16:07:03', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" header_fullscreen=\"on\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Arial|300|on|on|||||\" custom_button_two=\"on\" custom_button_one=\"on\" filter_hue_rotate=\"28deg\" filter_saturate=\"193%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" button_two_text_color=\"#000000\" button_two_border_width=\"4px\" button_two_border_color=\"#000000\" button_two_border_radius=\"7px\" button_two_letter_spacing=\"0px\" button_two_use_icon=\"off\" button_two_text_color_hover=\"#FFFFFF\" button_two_bg_color_hover=\"#000000\" button_two_border_color_hover=\"#000000\" button_two_border_radius_hover=\"0px\" button_two_letter_spacing_hover=\"0px\" button_one_text_size=\"20px\" button_one_text_color=\"#000000\" button_one_border_width=\"4px\" button_one_border_color=\"#000000\" button_one_border_radius=\"8px\" button_one_letter_spacing=\"0px\" button_one_use_icon=\"off\" button_one_text_color_hover=\"#FFFFFF\" button_one_bg_color_hover=\"#000000\" button_one_border_color_hover=\"#000000\" button_one_border_radius_hover=\"0px\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#FFFFFF\" button_one_font=\"Arial||||||||\" button_two_font=\"Arial||||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 17:07:03', '2019-02-04 16:07:03', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-02-04 17:07:42', '2019-02-04 16:07:42', '[et_pb_section fb_built=\"1\" inner_shadow=\"on\" fullwidth=\"on\" _builder_version=\"3.11\" custom_padding=\"3px|0px|0|0px|false|false\" top_divider_color=\"#15a57c\" animation_style=\"roll\"][/et_pb_section][et_pb_section fb_built=\"1\" _builder_version=\"3.11\" custom_padding=\"54px|0px|0|0px|false|false\"][et_pb_row _builder_version=\"3.11\"][et_pb_column type=\"4_4\" _builder_version=\"3.11\" parallax=\"off\" parallax_method=\"on\"][/et_pb_column][/et_pb_row][/et_pb_section][et_pb_section fb_built=\"1\" fullwidth=\"on\" disabled_on=\"off|off|off\" _builder_version=\"3.11\" custom_margin=\"0px|||\" custom_padding=\"0|||7px|false|false\"][et_pb_fullwidth_header title=\"welcome to TNT\" subhead=\"welcome to tnt\" header_fullscreen=\"on\" button_one_text=\"About us \" button_one_url=\"#\" button_two_text=\"Contact Us\" button_two_url=\"#\" header_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/ales-nesetril-734016-unsplash.jpg\" _builder_version=\"3.11\" title_font=\"Arial|300|on|on|||||\" custom_button_two=\"on\" custom_button_one=\"on\" filter_hue_rotate=\"7deg\" filter_saturate=\"14%\" filter_brightness=\"89%\" filter_contrast=\"121%\" filter_invert=\"9%\" filter_sepia=\"53%\" filter_blur=\"1px\" mix_blend_mode=\"difference\" title_letter_spacing=\"6px\" button_two_text_color=\"#000000\" button_two_border_width=\"4px\" button_two_border_color=\"#000000\" button_two_border_radius=\"7px\" button_two_letter_spacing=\"0px\" button_two_use_icon=\"off\" button_two_text_color_hover=\"#FFFFFF\" button_two_bg_color_hover=\"#000000\" button_two_border_color_hover=\"#000000\" button_two_border_radius_hover=\"0px\" button_two_letter_spacing_hover=\"0px\" button_one_text_size=\"20px\" button_one_text_color=\"#000000\" button_one_border_width=\"4px\" button_one_border_color=\"#000000\" button_one_border_radius=\"8px\" button_one_letter_spacing=\"0px\" button_one_use_icon=\"off\" button_one_text_color_hover=\"#FFFFFF\" button_one_bg_color_hover=\"#000000\" button_one_border_color_hover=\"#000000\" button_one_border_radius_hover=\"0px\" logo_image_url=\"http://localhost/divi/wordpress/wp-content/uploads/2019/02/LOGO.png\" title_text_color=\"#FFFFFF\" button_one_font=\"Arial||||||||\" button_two_font=\"Arial||||||||\"]Your content goes here. Edit or remove this text inline or in the module Content settings. You can also style every aspect of this content in the module Design settings and even apply custom CSS to this text in the module Advanced settings.[/et_pb_fullwidth_header][/et_pb_section]', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-02-04 17:07:42', '2019-02-04 16:07:42', '', 9, 'http://localhost/divi/wordpress/9-revision-v1/', 0, 'revision', '', 0);

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
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu1', 'menu1', 0);

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
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

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
(1, 1, 'nickname', 'divi'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1f481c688817f8e378180390cb0ceac59c685132b5345cdc61c03bd58d56bae6\";a:4:{s:10:\"expiration\";i:1549459185;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36\";s:5:\"login\";i:1549286385;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-project\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:20:\"add-project_category\";i:4;s:15:\"add-project_tag\";}');

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
(1, 'divi', '$P$BF8SGS8SvyxGg3EpnKJ06iPnbFpo2A0', 'divi', 'saif.g@tnt.com.tn', '', '2019-02-04 13:19:00', '', 0, 'divi');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
