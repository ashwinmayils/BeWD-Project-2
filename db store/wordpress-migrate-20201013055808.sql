# WordPress MySQL database migration
#
# Generated: Tuesday 13. October 2020 05:58 UTC
# Hostname: localhost
# Database: `wordpress`
# URL: //localhost
# Path: C:\\Users\\ashwi\\Documents\\GitHub\\BeWD-Project-2\\wordpress
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-13 04:18:51', '2020-10-13 04:18:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Mid Century Canberra', 'yes'),
(4, 'blogdescription', 'Rafi and Ashwin&#039;s Site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ashwinmayils@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=12&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'photo-journal', 'yes'),
(41, 'stylesheet', 'music-journal', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:6:{i:2;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;i:4;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:7;a:4:{s:5:"title";s:0:"";s:4:"text";s:299:"<p style="text-align: center;">This website was produced by students in the Faculty of Arts &amp; Design, University of Canberra. The text and images reproduced on this site were generously provided by <a href="http://www.canberrahouse.com.au/" target="_blank" rel="noopener">Canberra House</a>.</p>";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '15', 'yes'),
(82, 'page_on_front', '12', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1618114730', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:1:{i:0;s:6:"text-7";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'cron', 'a:8:{i:1602569932;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1602570058;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c9059feef497c200e69cb9956a81f005";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:5;}}}}i:1602575713;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"9a7037354a2b7b98ba90551f53b6ca93";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:47;}}}}i:1602605932;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1602649131;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602649141;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1602654664;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1602565401;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-5";}}}}', 'yes'),
(128, 'can_compress_scripts', '0', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1602568688;}', 'no'),
(193, 'widget_ct-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(194, 'theme_mods_music-journal', 'a:9:{s:18:"custom_css_post_id";i:-1;s:16:"background_image";s:0:"";s:11:"custom_logo";s:0:"";s:12:"header_image";s:107:"http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:19;s:3:"url";s:107:"http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png";s:13:"thumbnail_url";s:107:"http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png";s:6:"height";i:1079;s:5:"width";i:1920;}s:32:"photo_journal_header_media_title";s:7:"Welcome";s:31:"photo_journal_header_media_text";s:0:"";s:25:"photo_journal_search_text";s:6:"Search";s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(196, 'current_theme', 'Music Journal', 'yes'),
(197, 'theme_switched', '', 'yes'),
(198, 'theme_switched_via_customizer', '', 'yes'),
(199, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(200, 'customize_stashed_theme_mods', 'a:1:{s:12:"twentytwenty";a:3:{s:27:"nav_menu_locations[primary]";a:5:{s:15:"starter_content";b:1;s:5:"value";i:-1;s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2020-10-13 04:48:44";}s:28:"nav_menu_locations[expanded]";a:5:{s:15:"starter_content";b:1;s:5:"value";i:-5;s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2020-10-13 04:48:44";}s:26:"nav_menu_locations[social]";a:5:{s:15:"starter_content";b:1;s:5:"value";i:-9;s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2020-10-13 04:48:44";}}}', 'no'),
(227, 'blog_public', '0', 'yes'),
(228, 'upload_path', '', 'yes'),
(229, 'upload_url_path', '', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/10/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:28:"2020/10/2020-landscape-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:28:"2020-landscape-1-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"2020-landscape-1-1024x656.png";s:5:"width";i:1024;s:6:"height";i:656;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"2020-landscape-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"2020-landscape-1-768x492.png";s:5:"width";i:768;s:6:"height";i:492;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(6, 5, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(9, 6, '_customize_changeset_uuid', '0a504e32-b2bb-4eb1-a272-22ed62af12e6'),
(10, 7, '_customize_draft_post_name', 'about'),
(11, 7, '_customize_changeset_uuid', '0a504e32-b2bb-4eb1-a272-22ed62af12e6'),
(12, 8, '_customize_draft_post_name', 'contact'),
(13, 8, '_customize_changeset_uuid', '0a504e32-b2bb-4eb1-a272-22ed62af12e6'),
(14, 9, '_customize_draft_post_name', 'blog'),
(15, 9, '_customize_changeset_uuid', '0a504e32-b2bb-4eb1-a272-22ed62af12e6'),
(16, 11, '_wp_attached_file', '2020/10/2020-landscape-1-1.png'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:30:"2020/10/2020-landscape-1-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:30:"2020-landscape-1-1-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:31:"2020-landscape-1-1-1024x656.png";s:5:"width";i:1024;s:6:"height";i:656;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"2020-landscape-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"2020-landscape-1-1-768x492.png";s:5:"width";i:768;s:6:"height";i:492;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 11, '_starter_content_theme', 'twentytwenty'),
(20, 12, '_thumbnail_id', '11'),
(22, 12, '_customize_changeset_uuid', '96fafdf4-e858-42ae-ab87-5b19bc0a5cdc'),
(24, 13, '_customize_changeset_uuid', '96fafdf4-e858-42ae-ab87-5b19bc0a5cdc'),
(26, 14, '_customize_changeset_uuid', '96fafdf4-e858-42ae-ab87-5b19bc0a5cdc'),
(28, 15, '_customize_changeset_uuid', '96fafdf4-e858-42ae-ab87-5b19bc0a5cdc'),
(29, 16, '_edit_lock', '1602565399:1'),
(30, 17, '_wp_attached_file', '2020/10/benjamin-residence-photo-copyright-darren-bradley.png'),
(31, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:700;s:4:"file";s:61:"2020/10/benjamin-residence-photo-copyright-darren-bradley.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:61:"benjamin-residence-photo-copyright-darren-bradley-300x131.png";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:62:"benjamin-residence-photo-copyright-darren-bradley-1024x448.png";s:5:"width";i:1024;s:6:"height";i:448;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:61:"benjamin-residence-photo-copyright-darren-bradley-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:61:"benjamin-residence-photo-copyright-darren-bradley-768x336.png";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:62:"benjamin-residence-photo-copyright-darren-bradley-1536x672.png";s:5:"width";i:1536;s:6:"height";i:672;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:62:"benjamin-residence-photo-copyright-darren-bradley-1200x525.png";s:5:"width";i:1200;s:6:"height";i:525;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 17, '_wp_attachment_image_alt', 'Copyright: Darren Bradley'),
(33, 17, '_wp_attachment_is_custom_background', 'music-journal'),
(34, 18, '_wp_attached_file', '2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley.png'),
(35, 18, '_wp_attachment_context', 'custom-logo'),
(36, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:69:"2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:69:"cropped-benjamin-residence-photo-copyright-darren-bradley-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:69:"cropped-benjamin-residence-photo-copyright-darren-bradley-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 19, '_wp_attached_file', '2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png'),
(38, 19, '_wp_attachment_context', 'custom-header'),
(39, 19, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1079;s:4:"file";s:71:"2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png";s:5:"sizes";a:15:{s:6:"medium";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:72:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-1024x575.png";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:72:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-1536x863.png";s:5:"width";i:1536;s:6:"height";i:863;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-990x556.png";s:5:"width";i:990;s:6:"height";i:556;s:9:"mime-type";s:9:"image/png";}s:30:"photo-journal-featured-content";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-606x455.png";s:5:"width";i:606;s:6:"height";i:455;s:9:"mime-type";s:9:"image/png";}s:26:"photo-journal-hero-content";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-730x547.png";s:5:"width";i:730;s:6:"height";i:547;s:9:"mime-type";s:9:"image/png";}s:18:"photo-journal-team";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-606x808.png";s:5:"width";i:606;s:6:"height";i:808;s:9:"mime-type";s:9:"image/png";}s:20:"photo-journal-events";a:4:{s:4:"file";s:69:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:23:"photo-journal-countdown";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-606x606.png";s:5:"width";i:606;s:6:"height";i:606;s:9:"mime-type";s:9:"image/png";}s:26:"photo-journal-header-image";a:4:{s:4:"file";s:72:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-1920x400.png";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:25:"photo-journal-logo-slider";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-226x180.png";s:5:"width";i:226;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:25:"photo-journal-testimonial";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:23:"photo-journal-portfolio";a:4:{s:4:"file";s:71:"cropped-benjamin-residence-photo-copyright-darren-bradley-1-606x999.png";s:5:"width";i:606;s:6:"height";i:999;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:17;}'),
(40, 19, '_wp_attachment_custom_header_last_used_music-journal', '1602565402'),
(41, 19, '_wp_attachment_is_custom_header', 'music-journal'),
(146, 16, '_wp_trash_meta_status', 'publish'),
(147, 16, '_wp_trash_meta_time', '1602565402'),
(148, 10, '_customize_restore_dismissed', '1'),
(149, 12, '_edit_lock', '1602567915:1'),
(150, 37, '_edit_lock', '1602566425:1'),
(151, 37, '_wp_trash_meta_status', 'publish'),
(152, 37, '_wp_trash_meta_time', '1602566444'),
(153, 39, '_edit_lock', '1602566883:1'),
(154, 39, '_wp_trash_meta_status', 'publish'),
(155, 39, '_wp_trash_meta_time', '1602566883'),
(156, 41, '_edit_lock', '1602567942:1'),
(157, 41, '_wp_trash_meta_status', 'publish'),
(158, 41, '_wp_trash_meta_time', '1602567948'),
(159, 15, '_edit_lock', '1602568019:1'),
(160, 15, '_edit_last', '1'),
(161, 3, '_edit_lock', '1602568035:1'),
(162, 14, '_edit_lock', '1602568081:1'),
(163, 2, '_edit_lock', '1602568104:1'),
(164, 45, '_edit_lock', '1602568153:1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-13 04:18:51', '2020-10-13 04:18:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-10-13 04:18:51', '2020-10-13 04:18:51', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-13 04:18:51', '2020-10-13 04:18:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Architects', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-10-13 05:50:41', '2020-10-13 05:50:41', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-13 04:18:51', '2020-10-13 04:18:51', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-10-13 04:18:51', '2020-10-13 04:18:51', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-10-13 04:19:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-13 04:19:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-10-13 04:31:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-content/uploads/2020/10/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-13 04:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-13 04:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-13 04:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-13 04:32:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-10-13 04:32:01', '0000-00-00 00:00:00', '{"widget_text[2]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"a07e444156b3a032cce564ccfe3ba2db"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-2"],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"widget_text[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"5b73d0358ca5ae66c0fb16e11a657d42"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-3"],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menus_created_posts":{"starter_content":true,"value":[5,6,7,8,9],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu[-1]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-1]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"http:\\/\\/localhost\\/","position":0,"nav_menu_term_id":-1,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-2]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":7,"position":1,"nav_menu_term_id":-1,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-3]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":9,"position":2,"nav_menu_term_id":-1,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-4]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":8,"position":3,"nav_menu_term_id":-1,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"twentytwenty::nav_menu_locations[primary]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu[-5]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-5]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"http:\\/\\/localhost\\/","position":0,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-6]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":7,"position":1,"nav_menu_term_id":-5,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-7]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":9,"position":2,"nav_menu_term_id":-5,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-8]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":8,"position":3,"nav_menu_term_id":-5,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"twentytwenty::nav_menu_locations[expanded]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu[-9]":{"starter_content":true,"value":{"name":"Social Links Menu"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-9]":{"starter_content":true,"value":{"title":"Yelp","url":"https:\\/\\/www.yelp.com","position":0,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-10]":{"starter_content":true,"value":{"title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","position":1,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-11]":{"starter_content":true,"value":{"title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","position":2,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-12]":{"starter_content":true,"value":{"title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","position":3,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"nav_menu_item[-13]":{"starter_content":true,"value":{"title":"Email","url":"mailto:wordpress@example.com","position":4,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"twentytwenty::nav_menu_locations[social]":{"starter_content":true,"value":-9,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"page_on_front":{"starter_content":true,"value":6,"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"},"page_for_posts":{"starter_content":true,"value":9,"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:32:01"}}', '', '', 'auto-draft', 'closed', 'closed', '', '0a504e32-b2bb-4eb1-a272-22ed62af12e6', '', '', '2020-10-13 04:32:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 'The New UMoMA Opens its Doors', '', 'inherit', 'open', 'closed', '', 'the-new-umoma-opens-its-doors', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 0, 'http://localhost/wp-content/uploads/2020/10/2020-landscape-1-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:group {"align":"wide"} -->\n<div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} -->\n<h2 class="has-text-align-center">This website will showcase mid-century architecture in Canberra. This area is currently the focus of renewed attention through the efforts of Design Canberra and the Canberra and Region Heritage Festival (among others).</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->', 'Home', '', 'publish', 'closed', 'closed', '', 'the-new-umoma-opens-its-doors-2', '', '', '2020-10-13 05:31:43', '2020-10-13 05:31:43', '', 0, 'http://localhost/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 0, 'http://localhost/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'News', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-10-13 05:50:24', '2020-10-13 05:50:24', '', 0, 'http://localhost/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 'Houses', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-10-13 05:49:17', '2020-10-13 05:49:17', '', 0, 'http://localhost/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '{"widget_text[4]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"a07e444156b3a032cce564ccfe3ba2db"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-4"],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"widget_text[5]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"5b73d0358ca5ae66c0fb16e11a657d42"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-5"],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"nav_menus_created_posts":{"starter_content":true,"value":[11,12,13,14,15],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"nav_menu[-1]":{"value":{"name":"Primary","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-1]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Home","url":"http:\\/\\/localhost\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-1,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-2]":{"value":{"object_id":13,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"About","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"About","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-3]":{"value":{"object_id":15,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Blog","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Blog","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-4]":{"value":{"object_id":14,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Contact","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Contact","nav_menu_term_id":-1,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"twentytwenty::nav_menu_locations[primary]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"nav_menu[-5]":{"value":{"name":"Primary","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-5]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Home","url":"http:\\/\\/localhost\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-5,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-6]":{"value":{"object_id":13,"object":"page","menu_item_parent":0,"position":1,"type":"post_type","title":"About","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"About","nav_menu_term_id":-5,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-7]":{"value":{"object_id":15,"object":"page","menu_item_parent":0,"position":2,"type":"post_type","title":"Blog","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Blog","nav_menu_term_id":-5,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-8]":{"value":{"object_id":14,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Contact","url":"","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Contact","nav_menu_term_id":-5,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"twentytwenty::nav_menu_locations[expanded]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"nav_menu[-9]":{"value":{"name":"Social Links Menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-9]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":0,"type":"custom","title":"Yelp","url":"https:\\/\\/www.yelp.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-9,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-10]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-9,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-11]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":2,"type":"custom","title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-9,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-12]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":3,"type":"custom","title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-9,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"nav_menu_item[-13]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":4,"type":"custom","title":"Email","url":"mailto:wordpress@example.com","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"","nav_menu_term_id":-9,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:03:21"},"twentytwenty::nav_menu_locations[social]":{"starter_content":true,"value":-9,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"page_on_front":{"starter_content":true,"value":12,"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"page_for_posts":{"starter_content":true,"value":15,"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:48:44"},"old_sidebars_widgets_data":{"value":{"wp_inactive_widgets":[],"sidebar-1":["text-4"],"sidebar-2":["text-5"]},"type":"global_variable","user_id":1,"date_modified_gmt":"2020-10-13 04:53:17"},"blogdescription":{"value":"Rafi and Ashwin\'s Site","type":"option","user_id":1,"date_modified_gmt":"2020-10-13 04:54:50"},"music-journal::background_image":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:58:24"},"music-journal::custom_logo":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:58:24"},"music-journal::header_image":{"value":"http:\\/\\/localhost\\/wp-content\\/uploads\\/2020\\/10\\/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:59:24"},"music-journal::header_image_data":{"value":{"url":"http:\\/\\/localhost\\/wp-content\\/uploads\\/2020\\/10\\/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png","thumbnail_url":"http:\\/\\/localhost\\/wp-content\\/uploads\\/2020\\/10\\/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png","timestamp":1602565137126,"attachment_id":19,"width":1920,"height":1079},"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 04:59:24"}}', '', '', 'trash', 'closed', 'closed', '', '96fafdf4-e858-42ae-ab87-5b19bc0a5cdc', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 0, 'http://localhost/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2020-10-13 04:55:55', '2020-10-13 04:55:55', 'Copyright: Darren Bradley', 'Benjamin Residence', 'Copyright: Darren Bradley', 'inherit', 'open', 'closed', '', 'benjamin-residence-photo-copyright-darren-bradley', '', '', '2020-10-13 04:57:15', '2020-10-13 04:57:15', '', 0, 'http://localhost/wp-content/uploads/2020/10/benjamin-residence-photo-copyright-darren-bradley.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-10-13 04:57:53', '2020-10-13 04:57:53', 'http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley.png', 'cropped-benjamin-residence-photo-copyright-darren-bradley.png', '', 'inherit', 'open', 'closed', '', 'cropped-benjamin-residence-photo-copyright-darren-bradley-png', '', '', '2020-10-13 04:57:53', '2020-10-13 04:57:53', '', 0, 'http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-10-13 04:58:42', '2020-10-13 04:58:42', '', 'cropped-benjamin-residence-photo-copyright-darren-bradley-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-benjamin-residence-photo-copyright-darren-bradley-1-png', '', '', '2020-10-13 04:58:42', '2020-10-13 04:58:42', '', 0, 'http://localhost/wp-content/uploads/2020/10/cropped-benjamin-residence-photo-copyright-darren-bradley-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="http://localhost/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 12, 'http://localhost/2020/10/13/12-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 13, 'http://localhost/2020/10/13/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 14, 'http://localhost/2020/10/13/14-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-10-13 05:03:21', '2020-10-13 05:03:21', '', 15, 'http://localhost/2020/10/13/15-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-10-13 05:20:44', '2020-10-13 05:20:44', '{"music-journal::photo_journal_header_media_title":{"value":"Welcome to Mid Century Canberra","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 05:08:35"},"music-journal::photo_journal_header_media_text":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 05:08:35"},"sidebars_widgets[sidebar-2]":{"value":["text-7"],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 05:16:32"},"sidebars_widgets[sidebar-1]":{"value":[],"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 05:15:23"},"widget_text[7]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjI2NDoiVGhpcyB3ZWJzaXRlIHdhcyBwcm9kdWNlZCBieSBzdHVkZW50cyBpbiB0aGUgRmFjdWx0eSBvZiBBcnRzICZhbXA7IERlc2lnbiwgVW5pdmVyc2l0eSBvZiBDYW5iZXJyYS4gVGhlIHRleHQgYW5kIGltYWdlcyByZXByb2R1Y2VkIG9uIHRoaXMgc2l0ZSB3ZXJlIGdlbmVyb3VzbHkgcHJvdmlkZWQgYnkgPGEgaHJlZj0iaHR0cDovL3d3dy5jYW5iZXJyYWhvdXNlLmNvbS5hdS8iIHRhcmdldD0iX2JsYW5rIiByZWw9Im5vb3BlbmVyIj5DYW5iZXJyYSBIb3VzZTwvYT4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"375189c6c78fce1f3717af6efd872254"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 05:19:32"}}', '', '', 'trash', 'closed', 'closed', '', 'bbde54c3-b330-4148-b164-edf3d78430f4', '', '', '2020-10-13 05:20:44', '2020-10-13 05:20:44', '', 0, 'http://localhost/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2020-10-13 05:24:44', '2020-10-13 05:24:44', '<!-- wp:group {"align":"wide"} -->\n<div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} -->\n<h2 class="has-text-align-center">This website will showcase mid-century architecture in Canberra. This area is currently the focus of renewed attention through the efforts of Design Canberra and the Canberra and Region Heritage Festival (among others).</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-13 05:24:44', '2020-10-13 05:24:44', '', 12, 'http://localhost/2020/10/13/12-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-10-13 05:28:03', '2020-10-13 05:28:03', '{"widget_text[7]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjMwMDoiPHAgc3R5bGUgPSAidGV4dC1hbGlnbjogY2VudGVyIj5UaGlzIHdlYnNpdGUgd2FzIHByb2R1Y2VkIGJ5IHN0dWRlbnRzIGluIHRoZSBGYWN1bHR5IG9mIEFydHMgJmFtcDsgRGVzaWduLCBVbml2ZXJzaXR5IG9mIENhbmJlcnJhLiBUaGUgdGV4dCBhbmQgaW1hZ2VzIHJlcHJvZHVjZWQgb24gdGhpcyBzaXRlIHdlcmUgZ2VuZXJvdXNseSBwcm92aWRlZCBieSA8YSBocmVmPSJodHRwOi8vd3d3LmNhbmJlcnJhaG91c2UuY29tLmF1LyIgdGFyZ2V0PSJfYmxhbmsiIHJlbD0ibm9vcGVuZXIiPkNhbmJlcnJhIEhvdXNlPC9hPi48L3A+IjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"3da67510223435d5e1cd70dc76450f13"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 05:28:03"}}', '', '', 'trash', 'closed', 'closed', '', '4e8853fb-67a9-4303-9f1b-c43e23595642', '', '', '2020-10-13 05:28:03', '2020-10-13 05:28:03', '', 0, 'http://localhost/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-10-13 05:31:43', '2020-10-13 05:31:43', '<!-- wp:group {"align":"wide"} -->\n<div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} -->\n<h2 class="has-text-align-center">This website will showcase mid-century architecture in Canberra. This area is currently the focus of renewed attention through the efforts of Design Canberra and the Canberra and Region Heritage Festival (among others).</h2>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-13 05:31:43', '2020-10-13 05:31:43', '', 12, 'http://localhost/2020/10/13/12-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(41, 1, '2020-10-13 05:45:47', '2020-10-13 05:45:47', '{"music-journal::photo_journal_header_media_title":{"value":"Welcome","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 05:36:53"},"widget_text[7]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjI5OToiPHAgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlcjsiPlRoaXMgd2Vic2l0ZSB3YXMgcHJvZHVjZWQgYnkgc3R1ZGVudHMgaW4gdGhlIEZhY3VsdHkgb2YgQXJ0cyAmYW1wOyBEZXNpZ24sIFVuaXZlcnNpdHkgb2YgQ2FuYmVycmEuIFRoZSB0ZXh0IGFuZCBpbWFnZXMgcmVwcm9kdWNlZCBvbiB0aGlzIHNpdGUgd2VyZSBnZW5lcm91c2x5IHByb3ZpZGVkIGJ5IDxhIGhyZWY9Imh0dHA6Ly93d3cuY2FuYmVycmFob3VzZS5jb20uYXUvIiB0YXJnZXQ9Il9ibGFuayIgcmVsPSJub29wZW5lciI+Q2FuYmVycmEgSG91c2U8L2E+LjwvcD4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"405b7c157d81ba99788afab1e0b9a396"},"type":"option","user_id":1,"date_modified_gmt":"2020-10-13 05:38:53"},"music-journal::photo_journal_search_text":{"value":"Search","type":"theme_mod","user_id":1,"date_modified_gmt":"2020-10-13 05:40:53"},"nav_menu_item[24]":{"value":{"menu_item_parent":0,"object_id":24,"object":"custom","type":"custom","type_label":"Custom Link","title":"Home","url":"http:\\/\\/localhost\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":1,"status":"publish","original_title":"","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:44:53"},"nav_menu_item[25]":{"value":{"menu_item_parent":0,"object_id":13,"object":"page","type":"post_type","type_label":"Page","url":"http:\\/\\/localhost\\/about\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":2,"status":"publish","original_title":"About","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:44:53"},"nav_menu_item[26]":{"value":{"menu_item_parent":0,"object_id":15,"object":"page","type":"post_type","type_label":"Posts Page","url":"http:\\/\\/localhost\\/blog\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":4,"status":"publish","original_title":"Blog","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:44:53"},"nav_menu_item[27]":{"value":{"menu_item_parent":0,"object_id":14,"object":"page","type":"post_type","type_label":"Page","url":"http:\\/\\/localhost\\/contact\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":5,"status":"publish","original_title":"Contact","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:44:53"},"nav_menu_item[28]":{"value":{"menu_item_parent":0,"object_id":28,"object":"custom","type":"custom","type_label":"Custom Link","title":"Home","url":"http:\\/\\/localhost\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":3,"position":1,"status":"publish","original_title":"","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:45:47"},"nav_menu_item[29]":{"value":{"menu_item_parent":0,"object_id":13,"object":"page","type":"post_type","type_label":"Page","url":"http:\\/\\/localhost\\/about\\/","title":"","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":3,"position":2,"status":"publish","original_title":"About","_invalid":false},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2020-10-13 05:45:47"},"nav_menu[2]":{"value":false,"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:45:47"},"nav_menu[3]":{"value":false,"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:45:47"},"nav_menu[4]":{"value":false,"type":"nav_menu","user_id":1,"date_modified_gmt":"2020-10-13 05:45:47"}}', '', '', 'trash', 'closed', 'closed', '', '22d13f67-7524-4273-b5bb-43e2139c4759', '', '', '2020-10-13 05:45:47', '2020-10-13 05:45:47', '', 0, 'http://localhost/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2020-10-13 05:49:17', '2020-10-13 05:49:17', '', 'Houses', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-10-13 05:49:17', '2020-10-13 05:49:17', '', 15, 'http://localhost/2020/10/13/15-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-10-13 05:50:24', '2020-10-13 05:50:24', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'News', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-10-13 05:50:24', '2020-10-13 05:50:24', '', 14, 'http://localhost/2020/10/13/14-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-13 05:50:41', '2020-10-13 05:50:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Architects', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-13 05:50:41', '2020-10-13 05:50:41', '', 2, 'http://localhost/2020/10/13/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-10-13 05:51:19', '2020-10-13 05:51:19', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2020-10-13 05:51:19', '2020-10-13 05:51:19', '', 0, 'http://localhost/?page_id=45', 0, 'page', '', 0),
(46, 1, '2020-10-13 05:51:19', '2020-10-13 05:51:19', '', 'Locations', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2020-10-13 05:51:19', '2020-10-13 05:51:19', '', 45, 'http://localhost/2020/10/13/45-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'temp'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"78ef7f18f495721f6ca1da47d5ff33859518086c58e691cf5577c122eee59a5e";a:4:{s:10:"expiration";i:1602735541;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1602562741;}s:64:"2dd401583ab5eaa3b68f03a21b42bf3568f755ab1305bccb6aa6998d91b28b40";a:4:{s:10:"expiration";i:1603772344;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1602562744;}s:64:"72508d35cea0af24e38de4cc52629493527e2ba55ccbf7cb62464df3873cbd97";a:4:{s:10:"expiration";i:1602735608;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36";s:5:"login";i:1602562808;}s:64:"9f31bba9b57bec287063c408abc58a14c3983083c143aaf3e542a78d8c2379fc";a:4:{s:10:"expiration";i:1603773036;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36";s:5:"login";i:1602563436;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1602566979'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'temp', '$P$BTU4Qp.EJWINxV8AXgsfQNMl/eJ0Cw0', 'temp', 'ashwinmayils@gmail.com', 'http://localhost', '2020-10-13 04:18:51', '', 0, 'temp') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

