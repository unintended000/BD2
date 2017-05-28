-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 28 2017 г., 11:29
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-27 10:26:28', '2017-05-27 07:26:28', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Съедобно вроде', 'yes'),
(4, 'blogdescription', 'Лучшие рецепты', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'anechka187@mail.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:70:"Z:\\home\\localhost\\www\\wordpress/wp-content/plugins/akismet/akismet.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'napoli', 'yes'),
(41, 'stylesheet', 'napoli', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '13', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:6:"meta-4";i:1;s:10:"nav_menu-4";}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:10:"archives-2";i:2;s:11:"tag_cloud-3";i:3;s:10:"nav_menu-3";i:4;s:11:"tag_cloud-5";i:5;s:10:"nav_menu-6";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;s:17:"magazine-homepage";a:0:{}}', 'yes'),
(101, 'widget_pages', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(102, 'widget_calendar', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(103, 'widget_tag_cloud', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:2:{s:5:"title";s:8:"Теги";s:8:"taxonomy";s:8:"post_tag";}i:5;a:2:{s:5:"title";s:8:"Теги";s:8:"taxonomy";s:8:"post_tag";}}', 'yes'),
(104, 'widget_nav_menu', 'a:4:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:4;a:2:{s:5:"title";s:18:"Категории";s:8:"nav_menu";i:3;}i:6;a:2:{s:5:"title";s:14:"Разделы";s:8:"nav_menu";i:7;}}', 'yes'),
(105, 'cron', 'a:4:{i:1495999590;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1496040223;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1496042901;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495879473;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(116, '_site_transient_timeout_browser_699dfc46f2edc5d25d73bee60c1bf7b9', '1496474881', 'no'),
(117, '_site_transient_browser_699dfc46f2edc5d25d73bee60c1bf7b9', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(120, '_site_transient_timeout_wporg_theme_feature_list', '1495881696', 'no'),
(121, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(135, 'widget_napoli-magazine-posts-grid', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'theme_mods_napoli', 'a:5:{s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:17;s:16:"background_color";s:6:"ffffff";s:12:"header_image";s:13:"remove-header";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}}', 'yes'),
(139, 'widget_facebook', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_banners', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'widget_social_profiles', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'widget_videofeed', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_flickr', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(146, 'widget_tabs', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(147, 'theme_mods_cookies', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(148, 'widget_columns_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(149, 'theme_mods_parabola', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(151, 'storefront_nux_fresh_site', '1', 'yes'),
(152, 'theme_mods_storefront', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(168, 'current_theme', 'Napoli', 'yes'),
(169, 'theme_switched', '', 'yes'),
(170, 'theme_switched_via_customizer', '', 'yes'),
(171, 'napoli_theme_options', 'a:7:{s:16:"site_description";b:0;s:15:"slider_magazine";b:1;s:11:"slider_blog";b:1;s:12:"slider_limit";i:4;s:6:"layout";s:13:"right-sidebar";s:10:"blog_title";s:14:"Новости";s:13:"meta_category";b:1;}', 'yes'),
(172, 'customize_stashed_theme_mods', 'a:2:{s:8:"parabola";a:1:{s:16:"background_image";a:3:{s:5:"value";s:0:"";s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;}}s:10:"storefront";a:4:{s:12:"header_image";a:3:{s:5:"value";s:74:"http://localhost/wordpress/wp-content/uploads/2017/05/cropped-433603-1.jpg";s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;}s:17:"header_image_data";a:3:{s:5:"value";a:6:{s:3:"url";s:74:"http://localhost/wordpress/wp-content/uploads/2017/05/cropped-433603-1.jpg";s:13:"thumbnail_url";s:74:"http://localhost/wordpress/wp-content/uploads/2017/05/cropped-433603-1.jpg";s:9:"timestamp";d:1495871147632;s:13:"attachment_id";i:10;s:5:"width";i:1950;s:6:"height";i:500;}s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;}s:28:"storefront_header_text_color";a:3:{s:5:"value";s:7:"#ffffff";s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;}s:28:"storefront_header_link_color";a:3:{s:5:"value";s:7:"#ffffff";s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;}}}', 'no'),
(178, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495994947', 'no'),
(179, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495994947', 'no'),
(180, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1495951747', 'no'),
(181, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1495994950', 'no'),
(182, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1495994950', 'no'),
(183, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1495951750', 'no'),
(184, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1495994955', 'no'),
(185, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1495994955', 'no'),
(186, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1495951755', 'no'),
(187, '_transient_timeout_plugin_slugs', '1496038156', 'no'),
(188, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(189, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1495994956', 'no'),
(190, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/05/wordpress-4-8-release-candidate/''>WordPress 4.8 Release Candidate</a> <span class="rss-date">25.05.2017</span><div class="rssSummary">The release candidate for WordPress 4.8 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on Thursday, June 8, but we need your help to get there. If you haven’t tested 4.8 yet, [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://ma.tt/2017/05/wordpress-14/''>Matt: WordPress 14</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/in-case-you-missed-it-issue-20''>WPTavern: In Case You Missed It – Issue 20</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordpress-removes-hhvm-from-testing-infrastructure''>WPTavern: WordPress Removes HHVM from Testing Infrastructure</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Популярный плагин:</span> Jetpack by WordPress.com&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=jetpack&amp;_wpnonce=277f956eed&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Установить Jetpack by WordPress.com">(Установить)</a></li></ul></div>', 'no'),
(191, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(195, '_site_transient_timeout_available_translations', '1495964848', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(196, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-27 04:32:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-09 11:39:31";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-16 13:06:08";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-21 20:41:02";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-05 09:50:06";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.5/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-24 13:44:35";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-24 13:44:46";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-11 20:10:39";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-04 18:08:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-10 16:26:52";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 23:02:31";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-12 06:40:28";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-05 12:10:24";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-21 14:17:42";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-17 06:35:04";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-28 13:34:22";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-02 14:01:52";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-08 04:57:54";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-02 05:13:51";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-05 06:17:00";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-18 05:09:08";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-30 09:46:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-24 06:52:11";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-17 11:59:55";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-11 15:57:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-15 08:29:44";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-23 09:31:28";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-17 15:02:48";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-15 10:57:32";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-20 07:00:07";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-20 10:13:53";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-10 13:48:29";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-03 00:34:10";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-15 09:03:35";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-17 03:13:31";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-27 07:08:07";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-10 15:33:37";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-08 04:16:08";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-23 02:18:07";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(199, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1495966078', 'no'),
(200, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4338;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2479;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2353;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2096;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1819;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1578;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1557;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1429;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1333;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1322;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1314;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1266;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1263;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1102;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1041;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1038;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:983;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:925;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:812;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:790;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:786;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:655;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:652;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:644;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:642;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:634;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:621;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:599;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:589;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:575;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:572;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:571;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:566;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:554;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:550;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:528;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:521;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:503;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:497;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:489;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:488;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:462;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:458;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:439;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:433;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:431;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:426;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:418;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:413;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:401;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:396;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:394;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:393;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:375;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:365;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:363;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:349;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:321;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:319;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:317;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:311;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:296;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:292;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:286;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:285;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:285;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:280;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:278;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:276;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:273;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:270;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:267;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:266;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:261;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no'),
(202, '_site_transient_timeout_theme_roots', '1495957175', 'no'),
(203, '_site_transient_theme_roots', 'a:8:{s:7:"cookies";s:7:"/themes";s:6:"napoli";s:7:"/themes";s:8:"parabola";s:7:"/themes";s:13:"rara-academic";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(209, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(210, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.5.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1495956407;s:15:"version_checked";s:5:"4.7.5";s:12:"translations";a:0:{}}', 'no'),
(211, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495956413;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":6:{s:2:"id";s:5:"27901";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/ninja-forms.3.1.2.zip";}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":6:{s:2:"id";s:3:"363";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.91";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-pagenavi.2.91.zip";}}}', 'no'),
(212, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1495956416;s:7:"checked";a:8:{s:7:"cookies";s:3:"2.0";s:6:"napoli";s:6:"10.0.6";s:8:"parabola";s:5:"2.1.3";s:13:"rara-academic";s:5:"1.0.8";s:10:"storefront";s:5:"2.2.3";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.2";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/05/cookies-1.zip'),
(3, 4, '_wp_attachment_context', 'upgrader'),
(8, 8, '_wp_attached_file', '2017/05/433603.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1297;s:4:"file";s:18:"2017/05/433603.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"433603-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"433603-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"433603-768x498.jpg";s:5:"width";i:768;s:6:"height";i:498;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"433603-1024x664.jpg";s:5:"width";i:1024;s:6:"height";i:664;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:20:"433603-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"433603-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 8, '_wp_attachment_is_custom_background', 'parabola'),
(25, 13, '_wp_attached_file', '2017/05/cropped-topimg.png'),
(26, 13, '_wp_attachment_context', 'site-icon'),
(27, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:26:"2017/05/cropped-topimg.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-topimg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-topimg-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:26:"cropped-topimg-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:26:"cropped-topimg-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:26:"cropped-topimg-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:26:"cropped-topimg-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:24:"cropped-topimg-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 15, '_wp_attached_file', '2017/05/topimg.png'),
(31, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:414;s:6:"height";i:264;s:4:"file";s:18:"2017/05/topimg.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"topimg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"topimg-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"topimg-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 16, '_wp_attached_file', '2017/05/topimg-1.png'),
(33, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:414;s:6:"height";i:264;s:4:"file";s:20:"2017/05/topimg-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"topimg-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"topimg-1-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"topimg-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(34, 17, '_wp_attached_file', '2017/05/topimg-2.png'),
(35, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:414;s:6:"height";i:264;s:4:"file";s:20:"2017/05/topimg-2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"topimg-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"topimg-2-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"topimg-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(38, 7, '_wp_trash_meta_status', 'publish'),
(39, 7, '_wp_trash_meta_time', '1495879473'),
(56, 18, '_wp_trash_meta_status', 'publish'),
(57, 18, '_wp_trash_meta_time', '1495952854'),
(84, 22, '_wp_trash_meta_status', 'publish'),
(85, 22, '_wp_trash_meta_time', '1495953556'),
(86, 21, '_wp_trash_meta_status', 'publish'),
(87, 21, '_wp_trash_meta_time', '1495953845'),
(88, 21, '_wp_desired_post_slug', '%d1%80%d0%b5%d1%86%d0%b5%d0%bf%d1%82%d1%8b'),
(89, 2, '_wp_trash_meta_status', 'publish'),
(90, 2, '_wp_trash_meta_time', '1495953848'),
(91, 2, '_wp_desired_post_slug', 'sample-page'),
(92, 23, '_edit_lock', '1495954071:1'),
(93, 23, '_edit_last', '1'),
(94, 23, '_wp_page_template', 'template-magazine.php'),
(95, 29, '_wp_trash_meta_status', 'publish'),
(96, 29, '_wp_trash_meta_time', '1495953959'),
(97, 37, '_edit_last', '1'),
(98, 37, '_edit_lock', '1495955133:1'),
(99, 37, '_wp_page_template', 'default'),
(100, 40, '_wp_trash_meta_status', 'publish'),
(101, 40, '_wp_trash_meta_time', '1495954963'),
(102, 44, '_wp_trash_meta_status', 'publish'),
(103, 44, '_wp_trash_meta_time', '1495955066'),
(104, 41, '_wp_trash_meta_status', 'publish'),
(105, 41, '_wp_trash_meta_time', '1495955604'),
(114, 47, '_wp_trash_meta_status', 'publish'),
(115, 47, '_wp_trash_meta_time', '1495955625'),
(116, 50, '_menu_item_type', 'taxonomy'),
(117, 50, '_menu_item_menu_item_parent', '0'),
(118, 50, '_menu_item_object_id', '4'),
(119, 50, '_menu_item_object', 'category'),
(120, 50, '_menu_item_target', ''),
(121, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 50, '_menu_item_xfn', ''),
(123, 50, '_menu_item_url', ''),
(124, 51, '_menu_item_type', 'taxonomy'),
(125, 51, '_menu_item_menu_item_parent', '0'),
(126, 51, '_menu_item_object_id', '5'),
(127, 51, '_menu_item_object', 'category'),
(128, 51, '_menu_item_target', ''),
(129, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 51, '_menu_item_xfn', ''),
(131, 51, '_menu_item_url', ''),
(132, 52, '_menu_item_type', 'taxonomy'),
(133, 52, '_menu_item_menu_item_parent', '0'),
(134, 52, '_menu_item_object_id', '6'),
(135, 52, '_menu_item_object', 'category'),
(136, 52, '_menu_item_target', ''),
(137, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 52, '_menu_item_xfn', ''),
(139, 52, '_menu_item_url', ''),
(140, 49, '_wp_trash_meta_status', 'publish'),
(141, 49, '_wp_trash_meta_time', '1495955691'),
(142, 53, '_wp_trash_meta_status', 'publish'),
(143, 53, '_wp_trash_meta_time', '1495955705'),
(144, 54, '_edit_last', '1'),
(145, 54, '_edit_lock', '1495956005:1'),
(146, 55, '_wp_attached_file', '2017/05/FJgNKqmWT0A.jpg'),
(147, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:604;s:6:"height";i:393;s:4:"file";s:23:"2017/05/FJgNKqmWT0A.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"FJgNKqmWT0A-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"FJgNKqmWT0A-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:22:"napoli-thumbnail-small";a:4:{s:4:"file";s:23:"FJgNKqmWT0A-130x100.jpg";s:5:"width";i:130;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:23:"napoli-thumbnail-medium";a:4:{s:4:"file";s:23:"FJgNKqmWT0A-360x200.jpg";s:5:"width";i:360;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:22:"napoli-thumbnail-large";a:4:{s:4:"file";s:23:"FJgNKqmWT0A-450x250.jpg";s:5:"width";i:450;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 54, '_thumbnail_id', '55');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-27 10:26:28', '2017-05-27 07:26:28', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2017-05-27 10:26:28', '2017-05-27 07:26:28', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-27 10:26:28', '2017-05-27 07:26:28', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/wordpress/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-05-28 09:44:08', '2017-05-28 06:44:08', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-05-27 10:28:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-27 10:28:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2017-05-27 10:39:31', '2017-05-27 07:39:31', 'http://localhost/wordpress/wp-content/uploads/2017/05/cookies-1.zip', 'cookies.zip', '', 'private', 'open', 'closed', '', 'cookies-zip', '', '', '2017-05-27 10:39:31', '2017-05-27 07:39:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/cookies-1.zip', 0, 'attachment', '', 0),
(7, 1, '2017-05-27 13:04:33', '2017-05-27 10:04:33', '{"old_sidebars_widgets_data":{"value":{"wp_inactive_widgets":[],"sidebar-1":["search-2","recent-posts-2","recent-comments-2","archives-2","categories-2","meta-2"],"sidebar-2":[],"sidebar-3":[]},"type":"global_variable","user_id":1},"parabola::background_image":{"value":"","type":"theme_mod","user_id":1},"storefront::header_image":{"value":"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2017\\/05\\/cropped-433603-1.jpg","type":"theme_mod","user_id":1},"storefront::header_image_data":{"value":{"url":"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2017\\/05\\/cropped-433603-1.jpg","thumbnail_url":"http:\\/\\/localhost\\/wordpress\\/wp-content\\/uploads\\/2017\\/05\\/cropped-433603-1.jpg","timestamp":1495871147632,"attachment_id":10,"width":1950,"height":500},"type":"theme_mod","user_id":1},"storefront::storefront_header_text_color":{"value":"#ffffff","type":"theme_mod","user_id":1},"storefront::storefront_header_link_color":{"value":"#ffffff","type":"theme_mod","user_id":1},"blogdescription":{"value":"\\u041b\\u0443\\u0447\\u0448\\u0438\\u0435 \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u044b","type":"option","user_id":1},"site_icon":{"value":13,"type":"option","user_id":1},"napoli::custom_logo":{"value":17,"type":"theme_mod","user_id":1},"napoli::background_color":{"value":"#ffffff","type":"theme_mod","user_id":1},"napoli::header_image":{"value":"remove-header","type":"theme_mod","user_id":1},"napoli::header_image_data":{"value":"remove-header","type":"theme_mod","user_id":1},"napoli_theme_options[site_description]":{"value":false,"type":"option","user_id":1},"sidebars_widgets[sidebar]":{"value":["search-2","recent-posts-2","recent-comments-2","archives-2"],"type":"option","user_id":1},"napoli::nav_menu_locations[primary]":{"value":0,"type":"theme_mod","user_id":1},"nav_menu[-815023273]":{"value":false,"type":"nav_menu","user_id":1},"napoli_theme_options[slider_magazine]":{"value":false,"type":"option","user_id":1},"napoli_theme_options[slider_blog]":{"value":true,"type":"option","user_id":1},"napoli_theme_options[slider_limit]":{"value":"4","type":"option","user_id":1},"napoli_theme_options[layout]":{"value":"right-sidebar","type":"option","user_id":1},"napoli_theme_options[blog_title]":{"value":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","type":"option","user_id":1},"blogname":{"value":"\\u0421\\u044a\\u0435\\u0434\\u043e\\u0431\\u043d\\u043e \\u0432\\u0440\\u043e\\u0434\\u0435","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'bf0c4a80-fdc4-4e4a-b754-e656167867a8', '', '', '2017-05-27 13:04:33', '2017-05-27 10:04:33', '', 0, 'http://localhost/wordpress/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2017-05-27 10:43:27', '2017-05-27 07:43:27', '', '433603', '', 'inherit', 'open', 'closed', '', '433603', '', '', '2017-05-27 10:43:27', '2017-05-27 07:43:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/433603.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-05-27 11:51:52', '2017-05-27 08:51:52', 'http://localhost/wordpress/wp-content/uploads/2017/05/cropped-topimg.png', 'cropped-topimg.png', '', 'inherit', 'open', 'closed', '', 'cropped-topimg-png', '', '', '2017-05-27 11:51:52', '2017-05-27 08:51:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/cropped-topimg.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2017-05-27 11:54:58', '2017-05-27 08:54:58', '', 'topimg', '', 'inherit', 'open', 'closed', '', 'topimg', '', '', '2017-05-27 11:54:58', '2017-05-27 08:54:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/topimg.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2017-05-27 11:56:15', '2017-05-27 08:56:15', '', 'topimg', '', 'inherit', 'open', 'closed', '', 'topimg-2', '', '', '2017-05-27 11:56:15', '2017-05-27 08:56:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/topimg-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2017-05-27 11:57:15', '2017-05-27 08:57:15', '', 'topimg', '', 'inherit', 'open', 'closed', '', 'topimg-3', '', '', '2017-05-27 11:57:15', '2017-05-27 08:57:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05/topimg-2.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2017-05-28 09:27:34', '2017-05-28 06:27:34', '{"napoli::nav_menu_locations[primary]":{"value":-1664866234,"type":"theme_mod","user_id":1},"nav_menu[-1664866234]":{"value":{"name":"\\u0420\\u0435\\u0446\\u0435\\u043f\\u0442\\u044b","description":"","parent":0,"auto_add":true},"type":"nav_menu","user_id":1},"nav_menu_item[-236898446]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","url":"http:\\/\\/localhost\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","nav_menu_term_id":-1664866234,"_invalid":false,"type_label":"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-343520139]":{"value":false,"type":"nav_menu_item","user_id":1},"nav_menu_item[-1720862652]":{"value":false,"type":"nav_menu_item","user_id":1},"nav_menu_item[-247086970]":{"value":{"object_id":2,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"\\u041f\\u0440\\u0438\\u043c\\u0435\\u0440 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b","url":"http:\\/\\/localhost\\/wordpress\\/sample-page\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u041f\\u0440\\u0438\\u043c\\u0435\\u0440 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b","nav_menu_term_id":-1664866234,"_invalid":false,"type_label":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"},"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '74a55328-bc74-491b-89de-a3322c9d433c', '', '', '2017-05-28 09:27:34', '2017-05-28 06:27:34', '', 0, 'http://localhost/wordpress/?p=18', 0, 'customize_changeset', '', 0),
(21, 1, '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 'Рецепты', '', 'trash', 'closed', 'closed', '', '%d1%80%d0%b5%d1%86%d0%b5%d0%bf%d1%82%d1%8b__trashed', '', '', '2017-05-28 09:44:05', '2017-05-28 06:44:05', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-05-28 09:39:15', '2017-05-28 06:39:15', '{"nav_menus_created_posts":{"value":[21,23],"type":"option","user_id":1},"nav_menu_item[-1552364710]":{"value":{"object_id":21,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"\\u0420\\u0435\\u0446\\u0435\\u043f\\u0442\\u044b","url":"http:\\/\\/localhost\\/wordpress\\/?page_id=21","target":"_blank","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0420\\u0435\\u0446\\u0435\\u043f\\u0442\\u044b","nav_menu_term_id":2,"_invalid":false,"type_label":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"},"type":"nav_menu_item","user_id":1},"nav_menu_item[20]":{"value":{"object_id":2,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"\\u041e \\u043d\\u0430\\u0441","url":"http:\\/\\/localhost\\/wordpress\\/sample-page\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u041f\\u0440\\u0438\\u043c\\u0435\\u0440 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b","nav_menu_term_id":2,"_invalid":false,"type_label":"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430"},"type":"nav_menu_item","user_id":1},"sidebars_widgets[sidebar]":{"value":["search-2","archives-2","tag_cloud-3","nav_menu-3","nav_menu-4"],"type":"option","user_id":1},"widget_meta[4]":{"value":[],"type":"option","user_id":1},"widget_tag_cloud[3]":{"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjg6ItCi0LXQs9C4IjtzOjg6InRheG9ub215IjtzOjg6InBvc3RfdGFnIjt9","title":"\\u0422\\u0435\\u0433\\u0438","is_widget_customizer_js_value":true,"instance_hash_key":"3c1db61075c8680959b7297d1d05d8b4"},"type":"option","user_id":1},"nav_menu[-388776247]":{"value":false,"type":"nav_menu","user_id":1},"widget_nav_menu[3]":{"value":[],"type":"option","user_id":1},"widget_nav_menu[4]":{"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjE4OiLQmtCw0YLQtdCz0L7RgNC40LgiO3M6ODoibmF2X21lbnUiO2k6Mjt9","title":"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","is_widget_customizer_js_value":true,"instance_hash_key":"0e86eede2ea8acaab1d22974d5d8afe6"},"type":"option","user_id":1},"show_on_front":{"value":"posts","type":"option","user_id":1},"page_on_front":{"value":"0","type":"option","user_id":1},"page_for_posts":{"value":"0","type":"option","user_id":1},"napoli_theme_options[meta_category]":{"value":true,"type":"option","user_id":1},"napoli_theme_options[slider_magazine]":{"value":true,"type":"option","user_id":1},"napoli::nav_menu_locations[primary]":{"value":2,"type":"theme_mod","user_id":1},"nav_menu[2]":{"value":{"name":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u043e\\u0435","description":"","parent":0,"auto_add":true},"type":"nav_menu","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'd7793316-6eae-4043-bd07-9ba7e7b565e2', '', '', '2017-05-28 09:39:15', '2017-05-28 06:39:15', '', 0, 'http://localhost/wordpress/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2017-05-28 09:49:57', '2017-05-28 06:49:57', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(25, 1, '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 'Рецепты', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 21, 'http://localhost/wordpress/2017/05/28/21-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-05-28 09:39:16', '2017-05-28 06:39:16', '', 23, 'http://localhost/wordpress/2017/05/28/23-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-05-28 09:45:59', '2017-05-28 06:45:59', '{"nav_menu_item[19]":{"value":false,"type":"nav_menu_item","user_id":1},"napoli::nav_menu_locations[primary]":{"value":0,"type":"theme_mod","user_id":1},"nav_menu[2]":{"value":false,"type":"nav_menu","user_id":1},"widget_nav_menu[4]":{"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjE4OiLQmtCw0YLQtdCz0L7RgNC40LgiO30=","title":"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","is_widget_customizer_js_value":true,"instance_hash_key":"2f4293e2714982ceb1936e758d3fd6c7"},"type":"option","user_id":1},"show_on_front":{"value":"posts","type":"option","user_id":1},"page_on_front":{"value":"0","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '241fc8db-d451-48b4-9935-fb3363073aad', '', '', '2017-05-28 09:45:59', '2017-05-28 06:45:59', '', 0, 'http://localhost/wordpress/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2017-05-28 09:43:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-05-28 09:43:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-05-28 09:44:08', '2017-05-28 06:44:08', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/wordpress/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-05-28 09:44:08', '2017-05-28 06:44:08', '', 2, 'http://localhost/wordpress/2017/05/28/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-05-28 09:45:10', '2017-05-28 06:45:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-05-28 09:45:10', '2017-05-28 06:45:10', '', 23, 'http://localhost/wordpress/2017/05/28/23-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-05-28 09:49:10', '2017-05-28 06:49:10', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-05-28 09:49:10', '2017-05-28 06:49:10', '', 23, 'http://localhost/wordpress/2017/05/28/23-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-05-28 09:50:00', '2017-05-28 06:50:00', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2017-05-28 09:50:00', '2017-05-28 06:50:00', '', 23, 'http://localhost/wordpress/2017/05/28/23-autosave-v1/', 0, 'revision', '', 0),
(37, 1, '2017-05-28 09:50:37', '2017-05-28 06:50:37', '', 'Рецепты', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d1%86%d0%b5%d0%bf%d1%82%d1%8b', '', '', '2017-05-28 10:07:21', '2017-05-28 07:07:21', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2017-05-28 09:50:37', '2017-05-28 06:50:37', '', 'Рецепты', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-05-28 09:50:37', '2017-05-28 06:50:37', '', 37, 'http://localhost/wordpress/2017/05/28/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-28 10:02:43', '2017-05-28 07:02:43', '{"nav_menu[-1689337648]":{"value":{"name":"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"nav_menu_item[-236486793]":{"value":false,"type":"nav_menu_item","user_id":1},"nav_menu_item[-933307923]":{"value":false,"type":"nav_menu_item","user_id":1},"sidebars_widgets[magazine-homepage]":{"value":[],"type":"option","user_id":1},"widget_search[4]":{"value":[],"type":"option","user_id":1},"widget_categories[4]":{"value":[],"type":"option","user_id":1},"widget_pages[3]":{"value":[],"type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '1261f58d-805a-4423-bb58-a7337b5ea181', '', '', '2017-05-28 10:02:43', '2017-05-28 07:02:43', '', 0, 'http://localhost/wordpress/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2017-05-28 10:13:24', '2017-05-28 07:13:24', '{"sidebars_widgets[sidebar]":{"value":["search-2","archives-2","tag_cloud-3","nav_menu-3","nav_menu-4","tag_cloud-5","nav_menu-6"],"type":"option","user_id":1},"widget_tag_cloud[5]":{"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjg6ItCi0LXQs9C4IjtzOjg6InRheG9ub215IjtzOjg6InBvc3RfdGFnIjt9","title":"\\u0422\\u0435\\u0433\\u0438","is_widget_customizer_js_value":true,"instance_hash_key":"3c1db61075c8680959b7297d1d05d8b4"},"type":"option","user_id":1},"widget_nav_menu[6]":{"value":{"encoded_serialized_instance":"YToxOntzOjg6Im5hdl9tZW51IjtpOi0yMDY0MjUyNzkyO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"b1252db21213f75e8c18e78adfc3236d"},"type":"option","user_id":1},"nav_menu[-2064252792]":{"value":{"name":"\\u0420\\u0430\\u0437\\u0434\\u0435\\u043b\\u044b","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1},"widget_calendar[3]":{"value":[],"type":"option","user_id":1},"nav_menu_item[-1227099733]":{"value":false,"type":"nav_menu_item","user_id":1},"nav_menu_item[-685761919]":{"value":false,"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'd90a6461-a3e7-4705-84bb-e1a53e0779a6', '', '', '2017-05-28 10:13:24', '2017-05-28 07:13:24', '', 0, 'http://localhost/wordpress/?p=41', 0, 'customize_changeset', '', 0),
(44, 1, '2017-05-28 10:04:26', '2017-05-28 07:04:26', '{"widget_nav_menu[4]":{"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjE4OiLQmtCw0YLQtdCz0L7RgNC40LgiO3M6ODoibmF2X21lbnUiO2k6Mzt9","title":"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438","is_widget_customizer_js_value":true,"instance_hash_key":"bf57d1a756e118215b4154c48fec8e1c"},"type":"option","user_id":1},"sidebars_widgets[sidebar]":{"value":["search-2","archives-2","tag_cloud-3","nav_menu-4"],"type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '730492ee-a07f-4375-afe8-8f622129e5ed', '', '', '2017-05-28 10:04:26', '2017-05-28 07:04:26', '', 0, 'http://localhost/wordpress/2017/05/28/730492ee-a07f-4375-afe8-8f622129e5ed/', 0, 'customize_changeset', '', 0),
(45, 1, '2017-05-28 10:07:37', '2017-05-28 07:07:37', '', 'Рецепты', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2017-05-28 10:07:37', '2017-05-28 07:07:37', '', 37, 'http://localhost/wordpress/2017/05/28/37-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2017-05-28 10:11:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-28 10:11:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=46', 0, 'post', '', 0),
(47, 1, '2017-05-28 10:13:45', '2017-05-28 07:13:45', '{"nav_menu_item[-1558320712]":{"value":{"object_id":1,"object":"category","menu_item_parent":0,"position":1,"type":"taxonomy","title":"\\u0411\\u0435\\u0437 \\u0440\\u0443\\u0431\\u0440\\u0438\\u043a\\u0438","url":"http:\\/\\/localhost\\/wordpress\\/category\\/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0411\\u0435\\u0437 \\u0440\\u0443\\u0431\\u0440\\u0438\\u043a\\u0438","nav_menu_term_id":7,"_invalid":false,"type_label":"\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430"},"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'e9f702a7-46c4-4fbf-8d11-cd76d429f507', '', '', '2017-05-28 10:13:45', '2017-05-28 07:13:45', '', 0, 'http://localhost/wordpress/2017/05/28/e9f702a7-46c4-4fbf-8d11-cd76d429f507/', 0, 'customize_changeset', '', 0),
(49, 1, '2017-05-28 10:14:50', '2017-05-28 07:14:50', '{"widget_nav_menu[6]":{"value":{"encoded_serialized_instance":"YToyOntzOjU6InRpdGxlIjtzOjE0OiLQoNCw0LfQtNC10LvRiyI7czo4OiJuYXZfbWVudSI7aTo3O30=","title":"\\u0420\\u0430\\u0437\\u0434\\u0435\\u043b\\u044b","is_widget_customizer_js_value":true,"instance_hash_key":"7cfe11c1e1d49fbba4be590a4330e7d8"},"type":"option","user_id":1},"nav_menu_item[48]":{"value":false,"type":"nav_menu_item","user_id":1},"nav_menu_item[-261278141]":{"value":{"object_id":4,"object":"category","menu_item_parent":0,"position":2,"type":"taxonomy","title":"\\u0417\\u0430\\u0432\\u0442\\u0440\\u0430\\u043a","url":"http:\\/\\/localhost\\/wordpress\\/category\\/%d0%b7%d0%b0%d0%b2%d1%82%d1%80%d0%b0%d0%ba\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0417\\u0430\\u0432\\u0442\\u0440\\u0430\\u043a","nav_menu_term_id":7,"_invalid":false,"type_label":"\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-1471539758]":{"value":{"object_id":5,"object":"category","menu_item_parent":0,"position":1,"type":"taxonomy","title":"\\u0413\\u043e\\u0440\\u044f\\u0447\\u0435\\u0435","url":"http:\\/\\/localhost\\/wordpress\\/category\\/%d0%b3%d0%be%d1%80%d1%8f%d1%87%d0%b5%d0%b5\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0413\\u043e\\u0440\\u044f\\u0447\\u0435\\u0435","nav_menu_term_id":7,"_invalid":false,"type_label":"\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430"},"type":"nav_menu_item","user_id":1},"nav_menu_item[-203079557]":{"value":{"object_id":6,"object":"category","menu_item_parent":0,"position":3,"type":"taxonomy","title":"\\u0414\\u0435\\u0441\\u0435\\u0440\\u0442","url":"http:\\/\\/localhost\\/wordpress\\/category\\/%d0%b4%d0%b5%d1%81%d0%b5%d1%80%d1%82\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"\\u0414\\u0435\\u0441\\u0435\\u0440\\u0442","nav_menu_term_id":7,"_invalid":false,"type_label":"\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430"},"type":"nav_menu_item","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'c72c2ddb-1df0-4119-98d0-9e9d005ac650', '', '', '2017-05-28 10:14:50', '2017-05-28 07:14:50', '', 0, 'http://localhost/wordpress/2017/05/28/c72c2ddb-1df0-4119-98d0-9e9d005ac650/', 0, 'customize_changeset', '', 0),
(50, 1, '2017-05-28 10:14:50', '2017-05-28 07:14:50', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-05-28 10:14:50', '2017-05-28 07:14:50', '', 0, 'http://localhost/wordpress/2017/05/28/50/', 2, 'nav_menu_item', '', 0),
(51, 1, '2017-05-28 10:14:50', '2017-05-28 07:14:50', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2017-05-28 10:14:50', '2017-05-28 07:14:50', '', 0, 'http://localhost/wordpress/2017/05/28/51/', 1, 'nav_menu_item', '', 0),
(52, 1, '2017-05-28 10:14:51', '2017-05-28 07:14:51', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2017-05-28 10:14:51', '2017-05-28 07:14:51', '', 0, 'http://localhost/wordpress/2017/05/28/52/', 3, 'nav_menu_item', '', 0),
(53, 1, '2017-05-28 10:15:04', '2017-05-28 07:15:04', '{"sidebars_widgets[wp_inactive_widgets]":{"value":["meta-4","nav_menu-4"],"type":"option","user_id":1},"sidebars_widgets[sidebar]":{"value":["search-2","archives-2","tag_cloud-3","nav_menu-3","tag_cloud-5","nav_menu-6"],"type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '4b4585cb-5f0e-4938-a7d1-538f711a4146', '', '', '2017-05-28 10:15:04', '2017-05-28 07:15:04', '', 0, 'http://localhost/wordpress/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2017-05-28 10:22:19', '2017-05-28 07:22:19', 'Тонкие, эластичные, с нежной творожной начинкой.\r\n\r\n<strong>Ингредиенты:</strong>\r\n\r\nМука пшеничная — 250 г\r\nМолоко — 500 мл\r\nЯйца куриные — 3 шт.\r\nСахар-песок — 60 г\r\nСоль — ¼ ч. л.\r\nРастительное масло — 45 мл\r\nТворог 5–9% — 400 г\r\nТворожная масса — 400 г\r\nЯичный желток — 3 шт.\r\nСливочное масло — 60 г\r\n\r\n<strong>Приготовление:</strong>\r\n1. Подготовить ингредиенты.\r\n2. В миску просеять муку, добавить яйца, соль, сахар и половину молока.\r\n3. Хорошо размешать, добавить оставшееся молоко и растительное масло, перемешать до однородности.\r\n4. Испечь тонкие блинчики, поджаривая только с одной стороны.\r\n5. Сложить готовые блинчики стопкой, поджаренной стороной вверх.\r\n6. Для начинки: смешать творог с творожной массой, добавить желтки и размягченное масло. Хорошо перемешать.\r\n7. На каждый блинчик положить по столовой ложке начинки.\r\n8. Свернуть конвертиками, рулетиками, или треугольничками.\r\n9. Обжарить с одной стороны на небольшом огне, затем перевернуть, накрыть крышкой и готовить 4–5 минут, чтобы начинка хорошо прогрелась.\r\n\r\n<img class="alignnone size-medium wp-image-55" src="http://localhost/wordpress/wp-content/uploads/2017/05/FJgNKqmWT0A-300x195.jpg" alt="" width="300" height="195" />', 'Блинчики с творогом', '', 'publish', 'open', 'open', '', '%d0%b1%d0%bb%d0%b8%d0%bd%d1%87%d0%b8%d0%ba%d0%b8-%d1%81-%d1%82%d0%b2%d0%be%d1%80%d0%be%d0%b3%d0%be%d0%bc', '', '', '2017-05-28 10:22:19', '2017-05-28 07:22:19', '', 0, 'http://localhost/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2017-05-28 10:18:22', '2017-05-28 07:18:22', '', 'FJgNKqmWT0A', '', 'inherit', 'open', 'closed', '', 'fjgnkqmwt0a', '', '', '2017-05-28 10:18:22', '2017-05-28 07:18:22', '', 54, 'http://localhost/wordpress/wp-content/uploads/2017/05/FJgNKqmWT0A.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-05-28 10:20:17', '2017-05-28 07:20:17', 'Тонкие, эластичные, с нежной творожной начинкой.\r\n\r\n<strong>Ингредиенты:</strong>\r\n\r\nМука пшеничная — 250 г\r\nМолоко — 500 мл\r\nЯйца куриные — 3 шт.\r\nСахар-песок — 60 г\r\nСоль — ¼ ч. л.\r\nРастительное масло — 45 мл\r\nТворог 5–9% — 400 г\r\nТворожная масса — 400 г\r\nЯичный желток — 3 шт.\r\nСливочное масло — 60 г\r\n\r\n<strong>Приготовление:</strong>\r\n1. Подготовить ингредиенты.\r\n2. В миску просеять муку, добавить яйца, соль, сахар и половину молока.\r\n3. Хорошо размешать, добавить оставшееся молоко и растительное масло, перемешать до однородности.\r\n4. Испечь тонкие блинчики, поджаривая только с одной стороны.\r\n5. Сложить готовые блинчики стопкой, поджаренной стороной вверх.\r\n6. Для начинки: смешать творог с творожной массой, добавить желтки и размягченное масло. Хорошо перемешать.\r\n7. На каждый блинчик положить по столовой ложке начинки.\r\n8. Свернуть конвертиками, рулетиками, или треугольничками.\r\n9. Обжарить с одной стороны на небольшом огне, затем перевернуть, накрыть крышкой и готовить 4–5 минут, чтобы начинка хорошо прогрелась.\r\n\r\n<img class="alignnone size-medium wp-image-55" src="http://localhost/wordpress/wp-content/uploads/2017/05/FJgNKqmWT0A-300x195.jpg" alt="" width="300" height="195" />', 'Блинчики с творогом', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-05-28 10:20:17', '2017-05-28 07:20:17', '', 54, 'http://localhost/wordpress/2017/05/28/54-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(3, 'Категории', '%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d0%b8', 0),
(4, 'Завтрак', '%d0%b7%d0%b0%d0%b2%d1%82%d1%80%d0%b0%d0%ba', 0),
(5, 'Горячее', '%d0%b3%d0%be%d1%80%d1%8f%d1%87%d0%b5%d0%b5', 0),
(6, 'Десерт', '%d0%b4%d0%b5%d1%81%d0%b5%d1%80%d1%82', 0),
(7, 'Разделы', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d1%8b', 0),
(8, 'Завтрак', '%d0%b7%d0%b0%d0%b2%d1%82%d1%80%d0%b0%d0%ba', 0),
(9, 'Творог', '%d1%82%d0%b2%d0%be%d1%80%d0%be%d0%b3', 0),
(10, 'Блины', '%d0%b1%d0%bb%d0%b8%d0%bd%d1%8b', 0),
(11, 'Десерт', '%d0%b4%d0%b5%d1%81%d0%b5%d1%80%d1%82', 0),
(12, 'Сладкое', '%d1%81%d0%bb%d0%b0%d0%b4%d0%ba%d0%be%d0%b5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(50, 7, 0),
(51, 7, 0),
(52, 7, 0),
(54, 4, 0),
(54, 6, 0),
(54, 8, 0),
(54, 9, 0),
(54, 10, 0),
(54, 11, 0),
(54, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Unintended'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"e2c1eb735c33ddb6eda720091115e478e6837c5899b4c1cee5c30a34942ef24c";a:4:{s:10:"expiration";i:1497079677;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1495870077;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1495871055'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Unintended', '$P$BGOVLjJH2cxgZWdQxtD.bmC06/dcEn.', 'unintended', 'anechka187@mail.ru', '', '2017-05-27 07:26:28', '', 0, 'Unintended');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
