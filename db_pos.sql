-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:39
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_pos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_commentmeta`
--

CREATE TABLE `pos_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_comments`
--

CREATE TABLE `pos_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_comments`
--

INSERT INTO `pos_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-21 19:57:02', '2020-01-21 21:57:02', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 11, 'ActionScheduler', '', '', '', '2020-01-22 13:47:46', '2020-01-22 15:47:46', 'ação criada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 11, 'ActionScheduler', '', '', '', '2020-01-22 13:48:27', '2020-01-22 15:48:27', 'ação iniciada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 11, 'ActionScheduler', '', '', '', '2020-01-22 13:48:27', '2020-01-22 15:48:27', 'ação concluída', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 13, 'ActionScheduler', '', '', '', '2020-01-22 13:48:28', '2020-01-22 15:48:28', 'ação criada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 13, 'ActionScheduler', '', '', '', '2020-01-22 14:49:41', '2020-01-22 16:49:41', 'ação iniciada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 13, 'ActionScheduler', '', '', '', '2020-01-22 14:49:41', '2020-01-22 16:49:41', 'ação concluída', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 73, 'ActionScheduler', '', '', '', '2020-01-22 14:49:42', '2020-01-22 16:49:42', 'ação criada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(9, 73, 'ActionScheduler', '', '', '', '2020-01-22 21:13:19', '2020-01-22 23:13:19', 'ação iniciada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(10, 73, 'ActionScheduler', '', '', '', '2020-01-22 21:13:19', '2020-01-22 23:13:19', 'ação concluída', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(11, 74, 'ActionScheduler', '', '', '', '2020-01-22 21:13:20', '2020-01-22 23:13:20', 'ação criada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(12, 74, 'ActionScheduler', '', '', '', '2020-01-23 10:53:37', '2020-01-23 12:53:37', 'ação iniciada', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(13, 74, 'ActionScheduler', '', '', '', '2020-01-23 10:53:38', '2020-01-23 12:53:38', 'ação concluída', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(14, 75, 'ActionScheduler', '', '', '', '2020-01-23 10:53:38', '2020-01-23 12:53:38', 'ação criada', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_links`
--

CREATE TABLE `pos_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_options`
--

CREATE TABLE `pos_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_options`
--

INSERT INTO `pos_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Ponto_Venda', 'yes'),
(2, 'home', 'http://localhost/Ponto_Venda', 'yes'),
(3, 'blogname', 'Ponto de Vendas', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'eliasbarroapai2017@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"loja/?$\";s:27:\"index.php?post_type=product\";s:37:\"loja/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"loja/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"loja/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:2;s:45:\"woocommerce-services/woocommerce-services.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1595195821', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'POS_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:17:{i:1579784663;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1579787258;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579787618;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1579787825;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579793243;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579793900;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579793910;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579794495;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"25117f4b9fd9bb6384d0eb8ea708c8b9\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:12;}}}}i:1579804700;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579815500;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579816624;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579816625;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579816760;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579816763;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579831200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581003560;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";}', 'yes'),
(126, '_site_transient_timeout_browser_09f454857cbf37627aacee60db0bd6fc', '1580248762', 'no'),
(127, '_site_transient_browser_09f454857cbf37627aacee60db0bd6fc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1580248762', 'no'),
(129, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(144, '_transient_timeout_plugin_slugs', '1579795381', 'no'),
(145, '_transient_plugin_slugs', 'a:4:{i:0;s:21:\"foosales/foosales.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:3;s:45:\"woocommerce-services/woocommerce-services.php\";}', 'no'),
(146, 'recently_activated', 'a:2:{s:21:\"foosales/foosales.php\";i:1579708980;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:1579708440;}', 'yes'),
(153, 'new_admin_email', 'eliasbarroapai2017@gmail.com', 'yes'),
(168, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579784031;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(173, 'woocommerce_store_address', 'Rua 03 Qd. 05 Casa 36 Cohatrac IV', 'yes'),
(174, 'woocommerce_store_address_2', '', 'yes'),
(175, 'woocommerce_store_city', 'São luís', 'yes'),
(176, 'woocommerce_default_country', 'BR:MA', 'yes'),
(177, 'woocommerce_store_postcode', '65054530', 'yes'),
(178, 'woocommerce_allowed_countries', 'all', 'yes'),
(179, 'woocommerce_all_except_countries', '', 'yes'),
(180, 'woocommerce_specific_allowed_countries', '', 'yes'),
(181, 'woocommerce_ship_to_countries', '', 'yes'),
(182, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(183, 'woocommerce_default_customer_address', 'base', 'yes'),
(184, 'woocommerce_calc_taxes', 'no', 'yes'),
(185, 'woocommerce_enable_coupons', 'yes', 'yes'),
(186, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(187, 'woocommerce_currency', 'BRL', 'yes'),
(188, 'woocommerce_currency_pos', 'left', 'yes'),
(189, 'woocommerce_price_thousand_sep', '.', 'yes'),
(190, 'woocommerce_price_decimal_sep', ',', 'yes'),
(191, 'woocommerce_price_num_decimals', '2', 'yes'),
(192, 'woocommerce_shop_page_id', '7', 'yes'),
(193, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(194, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(195, 'woocommerce_placeholder_image', '6', 'yes'),
(196, 'woocommerce_weight_unit', 'kg', 'yes'),
(197, 'woocommerce_dimension_unit', 'cm', 'yes'),
(198, 'woocommerce_enable_reviews', 'yes', 'yes'),
(199, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(200, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(201, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(202, 'woocommerce_review_rating_required', 'yes', 'no'),
(203, 'woocommerce_manage_stock', 'yes', 'yes'),
(204, 'woocommerce_hold_stock_minutes', '60', 'no'),
(205, 'woocommerce_notify_low_stock', 'yes', 'no'),
(206, 'woocommerce_notify_no_stock', 'yes', 'no'),
(207, 'woocommerce_stock_email_recipient', 'eliasbarroapai2017@gmail.com', 'no'),
(208, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(209, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(210, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(211, 'woocommerce_stock_format', '', 'yes'),
(212, 'woocommerce_file_download_method', 'force', 'no'),
(213, 'woocommerce_downloads_require_login', 'no', 'no'),
(214, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(215, 'woocommerce_prices_include_tax', 'no', 'yes'),
(216, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(217, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(218, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(219, 'woocommerce_tax_classes', '', 'yes'),
(220, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(221, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(222, 'woocommerce_price_display_suffix', '', 'yes'),
(223, 'woocommerce_tax_total_display', 'itemized', 'no'),
(224, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(225, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(226, 'woocommerce_ship_to_destination', 'billing', 'no'),
(227, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(228, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(229, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(230, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(231, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(232, 'woocommerce_registration_generate_username', 'yes', 'no'),
(233, 'woocommerce_registration_generate_password', 'yes', 'no'),
(234, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(235, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(236, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(237, 'woocommerce_registration_privacy_policy_text', 'Seus dados pessoais serão usados para aprimorar a sua experiência em todo este site, para gerenciar o acesso a sua conta e para outros propósitos, como descritos em nossa [privacy_policy].', 'yes'),
(238, 'woocommerce_checkout_privacy_policy_text', 'Os seus dados pessoais serão utilizados para processar a sua compra, apoiar a sua experiência em todo este site e para outros fins descritos na nossa [privacy_policy].', 'yes'),
(239, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(240, 'woocommerce_trash_pending_orders', '', 'no'),
(241, 'woocommerce_trash_failed_orders', '', 'no'),
(242, 'woocommerce_trash_cancelled_orders', '', 'no'),
(243, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(244, 'woocommerce_email_from_name', 'Ponto de Vendas', 'no'),
(245, 'woocommerce_email_from_address', 'eliasbarroapai2017@gmail.com', 'no'),
(246, 'woocommerce_email_header_image', '', 'no'),
(247, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(248, 'woocommerce_email_base_color', '#96588a', 'no'),
(249, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(250, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(251, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(252, 'woocommerce_cart_page_id', '8', 'no'),
(253, 'woocommerce_checkout_page_id', '9', 'no'),
(254, 'woocommerce_myaccount_page_id', '10', 'no'),
(255, 'woocommerce_terms_page_id', '', 'no'),
(256, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(257, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(259, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(260, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(261, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(262, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(263, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(264, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(265, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(266, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(267, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(268, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(269, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(270, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(271, 'woocommerce_api_enabled', 'no', 'yes'),
(272, 'woocommerce_allow_tracking', 'no', 'no'),
(273, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(274, 'woocommerce_single_image_width', '600', 'yes'),
(275, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(276, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(277, 'woocommerce_demo_store', 'no', 'no'),
(278, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:11:\"produto-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(279, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(280, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(281, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(283, 'default_product_cat', '15', 'yes'),
(286, 'woocommerce_version', '3.9.0', 'yes'),
(287, 'woocommerce_db_version', '3.9.0', 'yes'),
(288, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(289, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"qMSAexhupz2c2qehGCH3kCkAxBTD3MIl\";}', 'yes'),
(290, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(291, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(308, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(312, 'woocommerce_product_type', 'both', 'yes'),
(313, 'woocommerce_sell_in_person', '1', 'yes'),
(318, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:20:\"eneylton@hotmail.com\";}', 'yes'),
(319, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(320, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(321, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(322, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(325, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack não pode ser instalado (Não foi possível copiar o arquivo.). <a href=\"http://localhost/Ponto_Venda/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Instale manualmente clicando aqui.</a>', 'yes'),
(335, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579784035;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(337, 'woocommerce_admin_notice_storefront_install_error', 'storefront não pode ser instalado (Não foi possível copiar o arquivo.). <a href=\"http://localhost/Ponto_Venda/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=38219bde50\">Instale manualmente clicando aqui.</a>', 'yes'),
(338, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp para WooCommerce não pode ser instalado (Não foi possível copiar o arquivo.). <a href=\"http://localhost/Ponto_Venda/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Instale manualmente clicando aqui.</a>', 'yes'),
(339, 'wc_ppec_version', '1.6.18', 'yes'),
(343, 'wc_admin_version', '0.24.0', 'yes'),
(344, 'wc_admin_install_timestamp', '1579708063', 'yes'),
(346, '_transient_product_query-transient-version', '1579784018', 'yes'),
(351, '_transient_shipping-transient-version', '1579708067', 'yes'),
(352, '_transient_timeout_wc_shipping_method_count', '1582300067', 'no'),
(353, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1579708067\";s:5:\"value\";i:0;}', 'no'),
(355, '_transient_product-transient-version', '1579708169', 'yes'),
(359, 'product_cat_children', 'a:0:{}', 'yes'),
(363, '_transient_timeout_wc_related_25', '1579794830', 'no'),
(364, '_transient_wc_related_25', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=25\";a:2:{i:0;s:2:\"18\";i:1;s:2:\"31\";}}', 'no'),
(368, '_transient_timeout_wc_term_counts', '1582300262', 'no'),
(369, '_transient_wc_term_counts', 'a:1:{i:19;s:1:\"7\";}', 'no'),
(370, '_transient_timeout_wc_related_21', '1579794662', 'no'),
(371, '_transient_wc_related_21', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=21\";a:6:{i:0;s:2:\"16\";i:1;s:2:\"17\";i:2;s:2:\"19\";i:3;s:2:\"22\";i:4;s:2:\"24\";i:5;s:2:\"27\";}}', 'no'),
(372, '_transient_timeout_wc_shipping_method_count_legacy', '1582300268', 'no'),
(373, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1579708067\";s:5:\"value\";i:0;}', 'no'),
(375, '_transient_timeout_wc_low_stock_count', '1582300308', 'no'),
(376, '_transient_wc_low_stock_count', '1', 'no'),
(377, '_transient_timeout_wc_outofstock_count', '1582300308', 'no'),
(378, '_transient_wc_outofstock_count', '0', 'no'),
(379, '_transient_timeout_wc_report_sales_by_date', '1579794720', 'no'),
(380, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"fc381ef5614636e91f53807290f39807\";a:0:{}s:32:\"a53252a57ee9cb7606ac8cabd1f84ab6\";a:0:{}s:32:\"24e087730a18148b1f184910f7dff42a\";a:0:{}s:32:\"c60d82164fa6e99eb6af4777909402ea\";N;s:32:\"ede3d76549c6c448d9c6d335e288e261\";a:0:{}s:32:\"8565c3de5cf5a04b075625897df4f865\";a:0:{}s:32:\"f5845e55b9b26ba00cd1c637bbcf4c18\";a:0:{}s:32:\"e085c0847dca0a94b9c612f9cb2854a4\";a:0:{}}', 'no'),
(381, '_transient_timeout_wc_admin_report', '1579794720', 'no'),
(382, '_transient_wc_admin_report', 'a:1:{s:32:\"6f7418fbc54fccb15680f47f33a67554\";a:0:{}}', 'no'),
(424, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1579787621', 'no'),
(425, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(427, '_transient_timeout__woocommerce_helper_subscriptions', '1579784931', 'no'),
(428, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(429, '_site_transient_timeout_theme_roots', '1579785831', 'no');
INSERT INTO `pos_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(430, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(431, '_transient_timeout__woocommerce_helper_updates', '1579827231', 'no'),
(432, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1579784031;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(433, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579784037;s:7:\"checked\";a:3:{s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.0\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:6:\"0.24.0\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.22.2\";}s:8:\"response\";a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.22.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.24.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_postmeta`
--

CREATE TABLE `pos_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_postmeta`
--

INSERT INTO `pos_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 11, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579708065;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(8, 12, '_wp_attached_file', '2020/01/wc-product-export-22-1-2020-1579707983590.csv'),
(9, 12, '_wp_attachment_context', 'import'),
(10, 13, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579711707;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(11, 14, 'total_sales', '0'),
(12, 14, '_tax_status', 'taxable'),
(13, 14, '_tax_class', ''),
(14, 14, '_manage_stock', 'no'),
(15, 14, '_backorders', 'no'),
(16, 14, '_sold_individually', 'no'),
(17, 14, '_virtual', 'no'),
(18, 14, '_downloadable', 'no'),
(19, 14, '_download_limit', '0'),
(20, 14, '_download_expiry', '0'),
(21, 14, '_stock', NULL),
(22, 14, '_stock_status', 'instock'),
(23, 14, '_wc_average_rating', '0'),
(24, 14, '_wc_review_count', '0'),
(25, 14, '_product_version', '3.9.0'),
(27, 15, 'total_sales', '0'),
(28, 15, '_tax_status', 'taxable'),
(29, 15, '_tax_class', ''),
(30, 15, '_manage_stock', 'no'),
(31, 15, '_backorders', 'no'),
(32, 15, '_sold_individually', 'no'),
(33, 15, '_virtual', 'no'),
(34, 15, '_downloadable', 'no'),
(35, 15, '_download_limit', '0'),
(36, 15, '_download_expiry', '0'),
(37, 15, '_stock', NULL),
(38, 15, '_stock_status', 'instock'),
(39, 15, '_wc_average_rating', '0'),
(40, 15, '_wc_review_count', '0'),
(41, 15, '_product_version', '3.9.0'),
(43, 16, 'total_sales', '0'),
(44, 16, '_tax_status', 'taxable'),
(45, 16, '_tax_class', ''),
(46, 16, '_manage_stock', 'no'),
(47, 16, '_backorders', 'no'),
(48, 16, '_sold_individually', 'no'),
(49, 16, '_virtual', 'no'),
(50, 16, '_downloadable', 'no'),
(51, 16, '_download_limit', '0'),
(52, 16, '_download_expiry', '0'),
(53, 16, '_stock', NULL),
(54, 16, '_stock_status', 'instock'),
(55, 16, '_wc_average_rating', '0'),
(56, 16, '_wc_review_count', '0'),
(57, 16, '_product_version', '3.9.0'),
(59, 17, 'total_sales', '0'),
(60, 17, '_tax_status', 'taxable'),
(61, 17, '_tax_class', ''),
(62, 17, '_manage_stock', 'no'),
(63, 17, '_backorders', 'no'),
(64, 17, '_sold_individually', 'no'),
(65, 17, '_virtual', 'no'),
(66, 17, '_downloadable', 'no'),
(67, 17, '_download_limit', '0'),
(68, 17, '_download_expiry', '0'),
(69, 17, '_stock', NULL),
(70, 17, '_stock_status', 'instock'),
(71, 17, '_wc_average_rating', '0'),
(72, 17, '_wc_review_count', '0'),
(73, 17, '_product_version', '3.9.0'),
(75, 18, 'total_sales', '0'),
(76, 18, '_tax_status', 'taxable'),
(77, 18, '_tax_class', ''),
(78, 18, '_manage_stock', 'no'),
(79, 18, '_backorders', 'no'),
(80, 18, '_sold_individually', 'no'),
(81, 18, '_virtual', 'no'),
(82, 18, '_downloadable', 'no'),
(83, 18, '_download_limit', '0'),
(84, 18, '_download_expiry', '0'),
(85, 18, '_stock', NULL),
(86, 18, '_stock_status', 'instock'),
(87, 18, '_wc_average_rating', '0'),
(88, 18, '_wc_review_count', '0'),
(89, 18, '_product_version', '3.9.0'),
(91, 19, 'total_sales', '0'),
(92, 19, '_tax_status', 'taxable'),
(93, 19, '_tax_class', ''),
(94, 19, '_manage_stock', 'no'),
(95, 19, '_backorders', 'no'),
(96, 19, '_sold_individually', 'no'),
(97, 19, '_virtual', 'no'),
(98, 19, '_downloadable', 'no'),
(99, 19, '_download_limit', '0'),
(100, 19, '_download_expiry', '0'),
(101, 19, '_stock', NULL),
(102, 19, '_stock_status', 'instock'),
(103, 19, '_wc_average_rating', '0'),
(104, 19, '_wc_review_count', '0'),
(105, 19, '_product_version', '3.9.0'),
(107, 20, 'total_sales', '0'),
(108, 20, '_tax_status', 'taxable'),
(109, 20, '_tax_class', ''),
(110, 20, '_manage_stock', 'no'),
(111, 20, '_backorders', 'no'),
(112, 20, '_sold_individually', 'no'),
(113, 20, '_virtual', 'no'),
(114, 20, '_downloadable', 'no'),
(115, 20, '_download_limit', '0'),
(116, 20, '_download_expiry', '0'),
(117, 20, '_stock', NULL),
(118, 20, '_stock_status', 'instock'),
(119, 20, '_wc_average_rating', '0'),
(120, 20, '_wc_review_count', '0'),
(121, 20, '_product_version', '3.9.0'),
(123, 21, 'total_sales', '0'),
(124, 21, '_tax_status', 'taxable'),
(125, 21, '_tax_class', ''),
(126, 21, '_manage_stock', 'no'),
(127, 21, '_backorders', 'no'),
(128, 21, '_sold_individually', 'no'),
(129, 21, '_virtual', 'no'),
(130, 21, '_downloadable', 'no'),
(131, 21, '_download_limit', '0'),
(132, 21, '_download_expiry', '0'),
(133, 21, '_stock', NULL),
(134, 21, '_stock_status', 'instock'),
(135, 21, '_wc_average_rating', '0'),
(136, 21, '_wc_review_count', '0'),
(137, 21, '_product_version', '3.9.0'),
(139, 22, 'total_sales', '0'),
(140, 22, '_tax_status', 'taxable'),
(141, 22, '_tax_class', ''),
(142, 22, '_manage_stock', 'no'),
(143, 22, '_backorders', 'no'),
(144, 22, '_sold_individually', 'no'),
(145, 22, '_virtual', 'no'),
(146, 22, '_downloadable', 'yes'),
(147, 22, '_download_limit', '-1'),
(148, 22, '_download_expiry', '-1'),
(149, 22, '_stock', NULL),
(150, 22, '_stock_status', 'instock'),
(151, 22, '_wc_average_rating', '0'),
(152, 22, '_wc_review_count', '0'),
(153, 22, '_product_version', '3.9.0'),
(155, 23, 'total_sales', '0'),
(156, 23, '_tax_status', 'taxable'),
(157, 23, '_tax_class', ''),
(158, 23, '_manage_stock', 'no'),
(159, 23, '_backorders', 'no'),
(160, 23, '_sold_individually', 'no'),
(161, 23, '_virtual', 'no'),
(162, 23, '_downloadable', 'yes'),
(163, 23, '_download_limit', '-1'),
(164, 23, '_download_expiry', '-1'),
(165, 23, '_stock', NULL),
(166, 23, '_stock_status', 'instock'),
(167, 23, '_wc_average_rating', '0'),
(168, 23, '_wc_review_count', '0'),
(169, 23, '_product_version', '3.9.0'),
(171, 24, 'total_sales', '0'),
(172, 24, '_tax_status', 'taxable'),
(173, 24, '_tax_class', ''),
(174, 24, '_manage_stock', 'no'),
(175, 24, '_backorders', 'no'),
(176, 24, '_sold_individually', 'no'),
(177, 24, '_virtual', 'no'),
(178, 24, '_downloadable', 'yes'),
(179, 24, '_download_limit', '-1'),
(180, 24, '_download_expiry', '-1'),
(181, 24, '_stock', NULL),
(182, 24, '_stock_status', 'instock'),
(183, 24, '_wc_average_rating', '0'),
(184, 24, '_wc_review_count', '0'),
(185, 24, '_product_version', '3.9.0'),
(187, 25, 'total_sales', '0'),
(188, 25, '_tax_status', 'taxable'),
(189, 25, '_tax_class', ''),
(190, 25, '_manage_stock', 'yes'),
(191, 25, '_backorders', 'no'),
(192, 25, '_sold_individually', 'no'),
(193, 25, '_virtual', 'no'),
(194, 25, '_downloadable', 'no'),
(195, 25, '_download_limit', '0'),
(196, 25, '_download_expiry', '0'),
(197, 25, '_stock', '2'),
(198, 25, '_stock_status', 'instock'),
(199, 25, '_wc_average_rating', '0'),
(200, 25, '_wc_review_count', '0'),
(201, 25, '_product_version', '3.9.0'),
(203, 26, 'total_sales', '0'),
(204, 26, '_tax_status', 'taxable'),
(205, 26, '_tax_class', ''),
(206, 26, '_manage_stock', 'no'),
(207, 26, '_backorders', 'no'),
(208, 26, '_sold_individually', 'no'),
(209, 26, '_virtual', 'no'),
(210, 26, '_downloadable', 'no'),
(211, 26, '_download_limit', '0'),
(212, 26, '_download_expiry', '0'),
(213, 26, '_stock', NULL),
(214, 26, '_stock_status', 'instock'),
(215, 26, '_wc_average_rating', '0'),
(216, 26, '_wc_review_count', '0'),
(217, 26, '_product_version', '3.9.0'),
(219, 27, 'total_sales', '0'),
(220, 27, '_tax_status', 'taxable'),
(221, 27, '_tax_class', ''),
(222, 27, '_manage_stock', 'no'),
(223, 27, '_backorders', 'no'),
(224, 27, '_sold_individually', 'no'),
(225, 27, '_virtual', 'no'),
(226, 27, '_downloadable', 'no'),
(227, 27, '_download_limit', '0'),
(228, 27, '_download_expiry', '0'),
(229, 27, '_stock', NULL),
(230, 27, '_stock_status', 'instock'),
(231, 27, '_wc_average_rating', '0'),
(232, 27, '_wc_review_count', '0'),
(233, 27, '_product_version', '3.9.0'),
(235, 28, 'total_sales', '0'),
(236, 28, '_tax_status', 'taxable'),
(237, 28, '_tax_class', ''),
(238, 28, '_manage_stock', 'no'),
(239, 28, '_backorders', 'no'),
(240, 28, '_sold_individually', 'no'),
(241, 28, '_virtual', 'no'),
(242, 28, '_downloadable', 'no'),
(243, 28, '_download_limit', '0'),
(244, 28, '_download_expiry', '0'),
(245, 28, '_stock', NULL),
(246, 28, '_stock_status', 'instock'),
(247, 28, '_wc_average_rating', '0'),
(248, 28, '_wc_review_count', '0'),
(249, 28, '_product_version', '3.9.0'),
(251, 29, 'total_sales', '0'),
(252, 29, '_tax_status', 'taxable'),
(253, 29, '_tax_class', ''),
(254, 29, '_manage_stock', 'no'),
(255, 29, '_backorders', 'no'),
(256, 29, '_sold_individually', 'no'),
(257, 29, '_virtual', 'no'),
(258, 29, '_downloadable', 'no'),
(259, 29, '_download_limit', '0'),
(260, 29, '_download_expiry', '0'),
(261, 29, '_stock', NULL),
(262, 29, '_stock_status', 'instock'),
(263, 29, '_wc_average_rating', '0'),
(264, 29, '_wc_review_count', '0'),
(265, 29, '_product_version', '3.9.0'),
(267, 30, 'total_sales', '0'),
(268, 30, '_tax_status', 'taxable'),
(269, 30, '_tax_class', ''),
(270, 30, '_manage_stock', 'no'),
(271, 30, '_backorders', 'no'),
(272, 30, '_sold_individually', 'no'),
(273, 30, '_virtual', 'no'),
(274, 30, '_downloadable', 'no'),
(275, 30, '_download_limit', '0'),
(276, 30, '_download_expiry', '0'),
(277, 30, '_stock', NULL),
(278, 30, '_stock_status', 'instock'),
(279, 30, '_wc_average_rating', '0'),
(280, 30, '_wc_review_count', '0'),
(281, 30, '_product_version', '3.9.0'),
(283, 31, 'total_sales', '0'),
(284, 31, '_tax_status', 'taxable'),
(285, 31, '_tax_class', ''),
(286, 31, '_manage_stock', 'no'),
(287, 31, '_backorders', 'no'),
(288, 31, '_sold_individually', 'no'),
(289, 31, '_virtual', 'no'),
(290, 31, '_downloadable', 'no'),
(291, 31, '_download_limit', '0'),
(292, 31, '_download_expiry', '0'),
(293, 31, '_stock', NULL),
(294, 31, '_stock_status', 'instock'),
(295, 31, '_wc_average_rating', '0'),
(296, 31, '_wc_review_count', '0'),
(297, 31, '_product_version', '3.9.0'),
(299, 32, '_wp_attached_file', '2020/01/Klappkarte-Kreuzstich.jpg'),
(300, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2020/01/Klappkarte-Kreuzstich.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Klappkarte-Kreuzstich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 32, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Klappkarte-Kreuzstich.jpg'),
(302, 33, '_wp_attached_file', '2020/01/Klappkarte-Kreuzstich-2.jpg'),
(303, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2020/01/Klappkarte-Kreuzstich-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 33, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Klappkarte-Kreuzstich-2.jpg'),
(305, 34, '_wp_attached_file', '2020/01/Klappkarte-Kreuzstich-3.jpg'),
(306, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2020/01/Klappkarte-Kreuzstich-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"Klappkarte-Kreuzstich-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 34, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Klappkarte-Kreuzstich-3.jpg'),
(308, 14, 'count_items', '0'),
(309, 14, '_thim_demo_content', 'yes'),
(310, 14, 'slide_template', 'default'),
(311, 14, 'thim_mtb_using_custom_heading', '0'),
(312, 14, 'thim_mtb_hide_title_and_subtitle', '0'),
(313, 14, 'thim_mtb_custom_title', ''),
(314, 14, 'thim_subtitle', ''),
(315, 14, 'thim_custom_heading_bg', ''),
(316, 14, 'thim_mtb_top_image', ''),
(317, 14, 'thim_mtb_bg_color', ''),
(318, 14, 'thim_mtb_text_color', ''),
(319, 14, 'thim_mtb_custom_layout', '0'),
(320, 14, 'thim_mtb_layout', 'full-content'),
(321, 14, 'thim_mtb_no_padding', '0'),
(322, 14, 'thim_mtb_hide_breadcrumbs', '0'),
(323, 14, 'thim_mtb_color_sub_title', ''),
(324, 14, '_lpr_course', '133'),
(325, 14, '_download_type', ''),
(326, 14, '_min_variation_price', ''),
(327, 14, '_max_variation_price', ''),
(328, 14, '_min_variation_regular_price', ''),
(329, 14, '_max_variation_regular_price', ''),
(330, 14, '_min_variation_sale_price', ''),
(331, 14, '_max_variation_sale_price', ''),
(332, 14, '_min_price_variation_id', ''),
(333, 14, '_max_price_variation_id', ''),
(334, 14, '_min_regular_price_variation_id', ''),
(335, 14, '_max_regular_price_variation_id', ''),
(336, 14, '_min_sale_price_variation_id', ''),
(337, 14, '_max_sale_price_variation_id', ''),
(338, 14, '_wp_old_slug', 'import-placeholder-for-135'),
(339, 14, '_regular_price', '35.4'),
(340, 14, '_product_image_gallery', '33,34'),
(341, 14, '_thumbnail_id', '32'),
(342, 14, '_price', '35.4'),
(343, 35, '_wp_attached_file', '2020/01/Funka.jpg'),
(344, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2020/01/Funka.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Funka-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Funka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"Funka-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"Funka-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"Funka-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"Funka-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 35, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Funka.jpg'),
(346, 36, '_wp_attached_file', '2020/01/Funka-2.jpg'),
(347, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/01/Funka-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Funka-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Funka-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Funka-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Funka-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Funka-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Funka-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 36, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Funka-2.jpg'),
(349, 15, 'count_items', '0'),
(350, 15, '_thim_demo_content', 'yes'),
(351, 15, 'slide_template', 'default'),
(352, 15, 'thim_mtb_using_custom_heading', '0'),
(353, 15, 'thim_mtb_hide_title_and_subtitle', '0'),
(354, 15, 'thim_mtb_custom_title', ''),
(355, 15, 'thim_subtitle', ''),
(356, 15, 'thim_custom_heading_bg', ''),
(357, 15, 'thim_mtb_top_image', ''),
(358, 15, 'thim_mtb_bg_color', ''),
(359, 15, 'thim_mtb_text_color', ''),
(360, 15, 'thim_mtb_custom_layout', '0'),
(361, 15, 'thim_mtb_layout', 'full-content'),
(362, 15, 'thim_mtb_no_padding', '0'),
(363, 15, 'thim_mtb_hide_breadcrumbs', '0'),
(364, 15, 'thim_mtb_color_sub_title', ''),
(365, 15, '_lpr_course', '133'),
(366, 15, '_download_type', ''),
(367, 15, '_min_variation_price', ''),
(368, 15, '_max_variation_price', ''),
(369, 15, '_min_variation_regular_price', ''),
(370, 15, '_max_variation_regular_price', ''),
(371, 15, '_min_variation_sale_price', ''),
(372, 15, '_max_variation_sale_price', ''),
(373, 15, '_min_price_variation_id', ''),
(374, 15, '_max_price_variation_id', ''),
(375, 15, '_min_regular_price_variation_id', ''),
(376, 15, '_max_regular_price_variation_id', ''),
(377, 15, '_min_sale_price_variation_id', ''),
(378, 15, '_max_sale_price_variation_id', ''),
(379, 15, '_wp_old_slug', 'import-placeholder-for-136'),
(380, 15, '_regular_price', '11.8'),
(381, 15, '_product_image_gallery', '36'),
(382, 15, '_thumbnail_id', '35'),
(383, 15, '_price', '11.8'),
(384, 37, '_wp_attached_file', '2020/01/daham.jpg'),
(385, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:17:\"2020/01/daham.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"daham-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"daham-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"daham-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"daham-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"daham-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"daham-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 37, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/daham.jpg'),
(387, 38, '_wp_attached_file', '2020/01/daham-2.jpg'),
(388, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/01/daham-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"daham-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"daham-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"daham-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 38, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/daham-2.jpg'),
(390, 39, '_wp_attached_file', '2020/01/daham-3.jpg'),
(391, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/01/daham-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"daham-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"daham-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"daham-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"daham-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 39, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/daham-3.jpg'),
(393, 16, 'count_items', '0'),
(394, 16, '_thim_demo_content', 'yes'),
(395, 16, 'slide_template', 'default'),
(396, 16, 'thim_mtb_using_custom_heading', '0'),
(397, 16, 'thim_mtb_hide_title_and_subtitle', '0'),
(398, 16, 'thim_mtb_custom_title', ''),
(399, 16, 'thim_subtitle', ''),
(400, 16, 'thim_custom_heading_bg', ''),
(401, 16, 'thim_mtb_top_image', ''),
(402, 16, 'thim_mtb_bg_color', ''),
(403, 16, 'thim_mtb_text_color', ''),
(404, 16, 'thim_mtb_custom_layout', '0'),
(405, 16, 'thim_mtb_layout', 'full-content'),
(406, 16, 'thim_mtb_no_padding', '0'),
(407, 16, 'thim_mtb_hide_breadcrumbs', '0'),
(408, 16, 'thim_mtb_color_sub_title', ''),
(409, 16, '_lpr_course', ''),
(410, 16, '_download_type', ''),
(411, 16, '_min_variation_price', ''),
(412, 16, '_max_variation_price', ''),
(413, 16, '_min_variation_regular_price', ''),
(414, 16, '_max_variation_regular_price', ''),
(415, 16, '_min_variation_sale_price', ''),
(416, 16, '_max_variation_sale_price', ''),
(417, 16, '_min_price_variation_id', ''),
(418, 16, '_max_price_variation_id', ''),
(419, 16, '_min_regular_price_variation_id', ''),
(420, 16, '_max_regular_price_variation_id', ''),
(421, 16, '_min_sale_price_variation_id', ''),
(422, 16, '_max_sale_price_variation_id', ''),
(423, 16, '_wp_old_slug', 'import-placeholder-for-137'),
(424, 16, '_regular_price', '35.3'),
(425, 16, '_product_image_gallery', '38,39'),
(426, 16, '_thumbnail_id', '37'),
(427, 16, '_price', '35.3'),
(428, 40, '_wp_attached_file', '2020/01/Princely-pencil.jpg'),
(429, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/01/Princely-pencil.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Princely-pencil-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Princely-pencil-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Princely-pencil-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Princely-pencil-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Princely-pencil-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Princely-pencil-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 40, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Princely-pencil.jpg'),
(431, 41, '_wp_attached_file', '2020/01/Princely-pencil-2.jpg'),
(432, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2020/01/Princely-pencil-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Princely-pencil-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Princely-pencil-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Princely-pencil-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Princely-pencil-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"Princely-pencil-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Princely-pencil-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(433, 41, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Princely-pencil-2.jpg'),
(434, 17, 'count_items', '0'),
(435, 17, '_thim_demo_content', 'yes'),
(436, 17, 'slide_template', 'default'),
(437, 17, 'thim_mtb_using_custom_heading', '0'),
(438, 17, 'thim_mtb_hide_title_and_subtitle', '0'),
(439, 17, 'thim_mtb_custom_title', ''),
(440, 17, 'thim_subtitle', ''),
(441, 17, 'thim_custom_heading_bg', ''),
(442, 17, 'thim_mtb_top_image', ''),
(443, 17, 'thim_mtb_bg_color', ''),
(444, 17, 'thim_mtb_text_color', ''),
(445, 17, 'thim_mtb_custom_layout', '0'),
(446, 17, 'thim_mtb_layout', 'full-content'),
(447, 17, 'thim_mtb_no_padding', '0'),
(448, 17, 'thim_mtb_hide_breadcrumbs', '0'),
(449, 17, 'thim_mtb_color_sub_title', ''),
(450, 17, '_lpr_course', '133'),
(451, 17, '_download_type', ''),
(452, 17, '_min_variation_price', ''),
(453, 17, '_max_variation_price', ''),
(454, 17, '_min_variation_regular_price', ''),
(455, 17, '_max_variation_regular_price', ''),
(456, 17, '_min_variation_sale_price', ''),
(457, 17, '_max_variation_sale_price', ''),
(458, 17, '_min_price_variation_id', ''),
(459, 17, '_max_price_variation_id', ''),
(460, 17, '_min_regular_price_variation_id', ''),
(461, 17, '_max_regular_price_variation_id', ''),
(462, 17, '_min_sale_price_variation_id', ''),
(463, 17, '_max_sale_price_variation_id', ''),
(464, 17, '_wp_old_slug', 'import-placeholder-for-138'),
(465, 17, '_regular_price', '35'),
(466, 17, '_product_image_gallery', '41'),
(467, 17, '_thumbnail_id', '40'),
(468, 17, '_price', '35'),
(469, 42, '_wp_attached_file', '2020/01/Cup-crown-pattern.jpg'),
(470, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2020/01/Cup-crown-pattern.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Cup-crown-pattern-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Cup-crown-pattern-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Cup-crown-pattern-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Cup-crown-pattern-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"Cup-crown-pattern-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Cup-crown-pattern-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 42, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Cup-crown-pattern.jpg'),
(472, 43, '_wp_attached_file', '2020/01/Cup-crown-pattern-2.jpg'),
(473, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2020/01/Cup-crown-pattern-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Cup-crown-pattern-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 43, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Cup-crown-pattern-2.jpg'),
(475, 18, 'count_items', '0'),
(476, 18, '_thim_demo_content', 'yes'),
(477, 18, 'slide_template', 'default'),
(478, 18, 'thim_mtb_using_custom_heading', '0'),
(479, 18, 'thim_mtb_hide_title_and_subtitle', '0'),
(480, 18, 'thim_mtb_custom_title', ''),
(481, 18, 'thim_subtitle', ''),
(482, 18, 'thim_custom_heading_bg', ''),
(483, 18, 'thim_mtb_top_image', ''),
(484, 18, 'thim_mtb_bg_color', ''),
(485, 18, 'thim_mtb_text_color', ''),
(486, 18, 'thim_mtb_custom_layout', '0'),
(487, 18, 'thim_mtb_layout', 'full-content'),
(488, 18, 'thim_mtb_no_padding', '0'),
(489, 18, 'thim_mtb_hide_breadcrumbs', '0'),
(490, 18, 'thim_mtb_color_sub_title', ''),
(491, 18, '_lpr_course', ''),
(492, 18, '_download_type', ''),
(493, 18, '_min_variation_price', ''),
(494, 18, '_max_variation_price', ''),
(495, 18, '_min_variation_regular_price', ''),
(496, 18, '_max_variation_regular_price', ''),
(497, 18, '_min_variation_sale_price', ''),
(498, 18, '_max_variation_sale_price', ''),
(499, 18, '_min_price_variation_id', ''),
(500, 18, '_max_price_variation_id', ''),
(501, 18, '_min_regular_price_variation_id', ''),
(502, 18, '_max_regular_price_variation_id', ''),
(503, 18, '_min_sale_price_variation_id', ''),
(504, 18, '_max_sale_price_variation_id', ''),
(505, 18, '_wp_old_slug', 'import-placeholder-for-139'),
(506, 18, '_regular_price', '35'),
(507, 18, '_product_image_gallery', '43'),
(508, 18, '_thumbnail_id', '42'),
(509, 18, '_price', '35'),
(510, 44, '_wp_attached_file', '2020/01/Bag-fabric.jpg'),
(511, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2020/01/Bag-fabric.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Bag-fabric-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Bag-fabric-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Bag-fabric-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Bag-fabric-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Bag-fabric-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Bag-fabric-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(512, 44, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Bag-fabric.jpg'),
(513, 45, '_wp_attached_file', '2020/01/Bag-fabric-2.jpg'),
(514, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2020/01/Bag-fabric-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Bag-fabric-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(515, 45, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Bag-fabric-2.jpg'),
(516, 46, '_wp_attached_file', '2020/01/Bag-fabric-3.jpg'),
(517, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2020/01/Bag-fabric-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Bag-fabric-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Bag-fabric-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(518, 46, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Bag-fabric-3.jpg'),
(519, 19, 'count_items', '0'),
(520, 19, '_thim_demo_content', 'yes'),
(521, 19, 'slide_template', 'default'),
(522, 19, 'thim_mtb_using_custom_heading', '0'),
(523, 19, 'thim_mtb_hide_title_and_subtitle', '0'),
(524, 19, 'thim_mtb_custom_title', ''),
(525, 19, 'thim_subtitle', ''),
(526, 19, 'thim_custom_heading_bg', ''),
(527, 19, 'thim_mtb_top_image', ''),
(528, 19, 'thim_mtb_bg_color', ''),
(529, 19, 'thim_mtb_text_color', ''),
(530, 19, 'thim_mtb_custom_layout', '0'),
(531, 19, 'thim_mtb_layout', 'full-content'),
(532, 19, 'thim_mtb_no_padding', '0'),
(533, 19, 'thim_mtb_hide_breadcrumbs', '0'),
(534, 19, 'thim_mtb_color_sub_title', ''),
(535, 19, '_lpr_course', '133'),
(536, 19, '_download_type', ''),
(537, 19, '_min_variation_price', ''),
(538, 19, '_max_variation_price', ''),
(539, 19, '_min_variation_regular_price', ''),
(540, 19, '_max_variation_regular_price', ''),
(541, 19, '_min_variation_sale_price', ''),
(542, 19, '_max_variation_sale_price', ''),
(543, 19, '_min_price_variation_id', ''),
(544, 19, '_max_price_variation_id', ''),
(545, 19, '_min_regular_price_variation_id', ''),
(546, 19, '_max_regular_price_variation_id', ''),
(547, 19, '_min_sale_price_variation_id', ''),
(548, 19, '_max_sale_price_variation_id', ''),
(549, 19, '_wp_old_slug', 'import-placeholder-for-140'),
(550, 19, '_regular_price', '15'),
(551, 19, '_product_image_gallery', '45,46'),
(552, 19, '_thumbnail_id', '44'),
(553, 19, '_price', '15'),
(554, 47, '_wp_attached_file', '2020/01/Karton.jpg'),
(555, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2020/01/Karton.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Karton-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Karton-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"Karton-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"Karton-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"Karton-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"Karton-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 47, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Karton.jpg'),
(557, 48, '_wp_attached_file', '2020/01/Karton-2.jpg'),
(558, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2020/01/Karton-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Karton-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Karton-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Karton-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Karton-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Karton-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Karton-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(559, 48, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Karton-2.jpg'),
(560, 20, 'count_items', '0'),
(561, 20, '_thim_demo_content', 'yes'),
(562, 20, 'slide_template', 'default'),
(563, 20, 'thim_mtb_using_custom_heading', '0'),
(564, 20, 'thim_mtb_hide_title_and_subtitle', '0'),
(565, 20, 'thim_mtb_custom_title', ''),
(566, 20, 'thim_subtitle', ''),
(567, 20, 'thim_custom_heading_bg', ''),
(568, 20, 'thim_mtb_top_image', ''),
(569, 20, 'thim_mtb_bg_color', ''),
(570, 20, 'thim_mtb_text_color', ''),
(571, 20, 'thim_mtb_custom_layout', '0'),
(572, 20, 'thim_mtb_layout', 'full-content'),
(573, 20, 'thim_mtb_no_padding', '0'),
(574, 20, 'thim_mtb_hide_breadcrumbs', '0'),
(575, 20, 'thim_mtb_color_sub_title', ''),
(576, 20, '_lpr_course', '133'),
(577, 20, '_download_type', ''),
(578, 20, '_min_variation_price', ''),
(579, 20, '_max_variation_price', ''),
(580, 20, '_min_variation_regular_price', ''),
(581, 20, '_max_variation_regular_price', ''),
(582, 20, '_min_variation_sale_price', ''),
(583, 20, '_max_variation_sale_price', ''),
(584, 20, '_min_price_variation_id', ''),
(585, 20, '_max_price_variation_id', ''),
(586, 20, '_min_regular_price_variation_id', ''),
(587, 20, '_max_regular_price_variation_id', ''),
(588, 20, '_min_sale_price_variation_id', ''),
(589, 20, '_max_sale_price_variation_id', ''),
(590, 20, '_wp_old_slug', 'import-placeholder-for-141'),
(591, 20, '_regular_price', '15'),
(592, 20, '_product_image_gallery', '48'),
(593, 20, '_thumbnail_id', '47'),
(594, 20, '_price', '15'),
(595, 49, '_wp_attached_file', '2020/01/Bracelet.jpg'),
(596, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2020/01/Bracelet.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Bracelet-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Bracelet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Bracelet-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Bracelet-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Bracelet-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Bracelet-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 49, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Bracelet.jpg'),
(598, 50, '_wp_attached_file', '2020/01/Bracelet-2.jpg');
INSERT INTO `pos_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(599, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2020/01/Bracelet-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Bracelet-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Bracelet-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Bracelet-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Bracelet-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Bracelet-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Bracelet-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(600, 50, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Bracelet-2.jpg'),
(601, 21, 'count_items', '0'),
(602, 21, '_thim_demo_content', 'yes'),
(603, 21, 'slide_template', 'default'),
(604, 21, 'thim_mtb_using_custom_heading', '0'),
(605, 21, 'thim_mtb_hide_title_and_subtitle', '0'),
(606, 21, 'thim_mtb_custom_title', ''),
(607, 21, 'thim_subtitle', ''),
(608, 21, 'thim_custom_heading_bg', ''),
(609, 21, 'thim_mtb_top_image', ''),
(610, 21, 'thim_mtb_bg_color', ''),
(611, 21, 'thim_mtb_text_color', ''),
(612, 21, 'thim_mtb_custom_layout', '0'),
(613, 21, 'thim_mtb_layout', 'full-content'),
(614, 21, 'thim_mtb_no_padding', '0'),
(615, 21, 'thim_mtb_hide_breadcrumbs', '0'),
(616, 21, 'thim_mtb_color_sub_title', ''),
(617, 21, '_lpr_course', '133'),
(618, 21, '_download_type', ''),
(619, 21, '_min_variation_price', ''),
(620, 21, '_max_variation_price', ''),
(621, 21, '_min_variation_regular_price', ''),
(622, 21, '_max_variation_regular_price', ''),
(623, 21, '_min_variation_sale_price', ''),
(624, 21, '_max_variation_sale_price', ''),
(625, 21, '_min_price_variation_id', ''),
(626, 21, '_max_price_variation_id', ''),
(627, 21, '_min_regular_price_variation_id', ''),
(628, 21, '_max_regular_price_variation_id', ''),
(629, 21, '_min_sale_price_variation_id', ''),
(630, 21, '_max_sale_price_variation_id', ''),
(631, 21, '_wp_old_slug', 'import-placeholder-for-142'),
(632, 21, '_regular_price', '15'),
(633, 21, '_product_image_gallery', '50'),
(634, 21, '_thumbnail_id', '49'),
(635, 21, '_price', '15'),
(636, 51, '_wp_attached_file', '2020/01/Luggage-tag.jpg'),
(637, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/01/Luggage-tag.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Luggage-tag-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Luggage-tag-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"Luggage-tag-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Luggage-tag-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"Luggage-tag-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Luggage-tag-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(638, 51, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Luggage-tag.jpg'),
(639, 52, '_wp_attached_file', '2020/01/Luggage-tag-2.jpg'),
(640, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/01/Luggage-tag-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Luggage-tag-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Luggage-tag-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Luggage-tag-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Luggage-tag-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Luggage-tag-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Luggage-tag-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 52, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Luggage-tag-2.jpg'),
(642, 22, 'count_items', '0'),
(643, 22, '_thim_demo_content', 'yes'),
(644, 22, 'slide_template', 'default'),
(645, 22, 'thim_mtb_using_custom_heading', '0'),
(646, 22, 'thim_mtb_hide_title_and_subtitle', '0'),
(647, 22, 'thim_mtb_custom_title', ''),
(648, 22, 'thim_subtitle', ''),
(649, 22, 'thim_custom_heading_bg', ''),
(650, 22, 'thim_mtb_top_image', ''),
(651, 22, 'thim_mtb_bg_color', ''),
(652, 22, 'thim_mtb_text_color', ''),
(653, 22, 'thim_mtb_custom_layout', '0'),
(654, 22, 'thim_mtb_layout', 'full-content'),
(655, 22, 'thim_mtb_no_padding', '0'),
(656, 22, 'thim_mtb_hide_breadcrumbs', '0'),
(657, 22, 'thim_mtb_color_sub_title', ''),
(658, 22, '_lpr_course', '133'),
(659, 22, '_download_type', ''),
(660, 22, '_min_variation_price', ''),
(661, 22, '_max_variation_price', ''),
(662, 22, '_min_variation_regular_price', ''),
(663, 22, '_max_variation_regular_price', ''),
(664, 22, '_min_variation_sale_price', ''),
(665, 22, '_max_variation_sale_price', ''),
(666, 22, '_min_price_variation_id', ''),
(667, 22, '_max_price_variation_id', ''),
(668, 22, '_min_regular_price_variation_id', ''),
(669, 22, '_max_regular_price_variation_id', ''),
(670, 22, '_min_sale_price_variation_id', ''),
(671, 22, '_max_sale_price_variation_id', ''),
(672, 22, '_wp_old_slug', 'import-placeholder-for-143'),
(673, 22, '_regular_price', '9.6'),
(674, 22, '_product_image_gallery', '52'),
(675, 22, '_thumbnail_id', '51'),
(676, 22, '_price', '9.6'),
(677, 53, '_wp_attached_file', '2020/01/Wood-postcard.jpg'),
(678, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/01/Wood-postcard.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Wood-postcard-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Wood-postcard-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Wood-postcard-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Wood-postcard-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Wood-postcard-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Wood-postcard-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(679, 53, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Wood-postcard.jpg'),
(680, 54, '_wp_attached_file', '2020/01/Wood-postcard-2.jpg'),
(681, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/01/Wood-postcard-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Wood-postcard-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(682, 54, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Wood-postcard-2.jpg'),
(683, 55, '_wp_attached_file', '2020/01/Wood-postcard-3.jpg'),
(684, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/01/Wood-postcard-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Wood-postcard-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Wood-postcard-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(685, 55, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Wood-postcard-3.jpg'),
(686, 23, 'count_items', '0'),
(687, 23, '_thim_demo_content', 'yes'),
(688, 23, 'slide_template', ''),
(689, 23, 'thim_mtb_using_custom_heading', '0'),
(690, 23, 'thim_mtb_hide_title_and_subtitle', '0'),
(691, 23, 'thim_mtb_custom_title', ''),
(692, 23, 'thim_subtitle', ''),
(693, 23, 'thim_custom_heading_bg', ''),
(694, 23, 'thim_mtb_top_image', ''),
(695, 23, 'thim_mtb_bg_color', ''),
(696, 23, 'thim_mtb_text_color', ''),
(697, 23, 'thim_mtb_custom_layout', '0'),
(698, 23, 'thim_mtb_layout', 'full-content'),
(699, 23, 'thim_mtb_no_padding', '0'),
(700, 23, 'thim_mtb_hide_breadcrumbs', '0'),
(701, 23, 'thim_mtb_color_sub_title', ''),
(702, 23, '_lpr_course', '133'),
(703, 23, '_download_type', ''),
(704, 23, '_min_variation_price', ''),
(705, 23, '_max_variation_price', ''),
(706, 23, '_min_variation_regular_price', ''),
(707, 23, '_max_variation_regular_price', ''),
(708, 23, '_min_variation_sale_price', ''),
(709, 23, '_max_variation_sale_price', ''),
(710, 23, '_min_price_variation_id', ''),
(711, 23, '_max_price_variation_id', ''),
(712, 23, '_min_regular_price_variation_id', ''),
(713, 23, '_max_regular_price_variation_id', ''),
(714, 23, '_min_sale_price_variation_id', ''),
(715, 23, '_max_sale_price_variation_id', ''),
(716, 23, '_wp_old_slug', 'import-placeholder-for-144'),
(717, 23, '_regular_price', '9.5'),
(718, 23, '_product_image_gallery', '54,55'),
(719, 23, '_thumbnail_id', '53'),
(720, 23, '_price', '9.5'),
(721, 56, '_wp_attached_file', '2020/01/Keychains.jpg'),
(722, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2020/01/Keychains.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Keychains-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Keychains-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Keychains-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Keychains-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"Keychains-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Keychains-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Keychains-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"Keychains-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Keychains-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(723, 56, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Keychains.jpg'),
(724, 57, '_wp_attached_file', '2020/01/Keychains-2.jpg'),
(725, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/01/Keychains-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Keychains-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Keychains-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Keychains-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"Keychains-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"Keychains-2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Keychains-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"Keychains-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"Keychains-2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Keychains-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(726, 57, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Keychains-2.jpg'),
(727, 24, 'count_items', '0'),
(728, 24, '_thim_demo_content', 'yes'),
(729, 24, 'slide_template', ''),
(730, 24, 'thim_mtb_using_custom_heading', '0'),
(731, 24, 'thim_mtb_hide_title_and_subtitle', '0'),
(732, 24, 'thim_mtb_custom_title', ''),
(733, 24, 'thim_subtitle', ''),
(734, 24, 'thim_custom_heading_bg', ''),
(735, 24, 'thim_mtb_top_image', ''),
(736, 24, 'thim_mtb_bg_color', ''),
(737, 24, 'thim_mtb_text_color', ''),
(738, 24, 'thim_mtb_custom_layout', '0'),
(739, 24, 'thim_mtb_layout', 'full-content'),
(740, 24, 'thim_mtb_no_padding', '0'),
(741, 24, 'thim_mtb_hide_breadcrumbs', '0'),
(742, 24, 'thim_mtb_color_sub_title', ''),
(743, 24, '_lpr_course', '133'),
(744, 24, '_download_type', ''),
(745, 24, '_min_variation_price', ''),
(746, 24, '_max_variation_price', ''),
(747, 24, '_min_variation_regular_price', ''),
(748, 24, '_max_variation_regular_price', ''),
(749, 24, '_min_variation_sale_price', ''),
(750, 24, '_max_variation_sale_price', ''),
(751, 24, '_min_price_variation_id', ''),
(752, 24, '_max_price_variation_id', ''),
(753, 24, '_min_regular_price_variation_id', ''),
(754, 24, '_max_regular_price_variation_id', ''),
(755, 24, '_min_sale_price_variation_id', ''),
(756, 24, '_max_sale_price_variation_id', ''),
(757, 24, '_wp_old_slug', 'import-placeholder-for-145'),
(758, 24, '_regular_price', '9'),
(759, 24, '_product_image_gallery', '57'),
(760, 24, '_thumbnail_id', '56'),
(761, 24, '_price', '9'),
(762, 58, '_wp_attached_file', '2020/01/Corkscrew.jpg'),
(763, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2020/01/Corkscrew.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Corkscrew-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Corkscrew-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Corkscrew-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Corkscrew-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Corkscrew-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Corkscrew-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(764, 58, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Corkscrew.jpg'),
(765, 59, '_wp_attached_file', '2020/01/Corkscrew-2.jpg'),
(766, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/01/Corkscrew-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Corkscrew-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Corkscrew-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"Corkscrew-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Corkscrew-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"Corkscrew-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Corkscrew-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(767, 59, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Corkscrew-2.jpg'),
(768, 25, 'count_items', '0'),
(769, 25, '_thim_demo_content', 'yes'),
(770, 25, 'slide_template', 'default'),
(771, 25, 'thim_mtb_using_custom_heading', '0'),
(772, 25, 'thim_mtb_hide_title_and_subtitle', '0'),
(773, 25, 'thim_mtb_custom_title', ''),
(774, 25, 'thim_subtitle', ''),
(775, 25, 'thim_custom_heading_bg', ''),
(776, 25, 'thim_mtb_top_image', ''),
(777, 25, 'thim_mtb_bg_color', ''),
(778, 25, 'thim_mtb_text_color', ''),
(779, 25, 'thim_mtb_custom_layout', '0'),
(780, 25, 'thim_mtb_layout', 'full-content'),
(781, 25, 'thim_mtb_no_padding', '0'),
(782, 25, 'thim_mtb_hide_breadcrumbs', '0'),
(783, 25, 'thim_mtb_color_sub_title', ''),
(784, 25, '_lpr_course', ''),
(785, 25, '_download_type', ''),
(786, 25, '_min_variation_price', ''),
(787, 25, '_max_variation_price', ''),
(788, 25, '_min_variation_regular_price', ''),
(789, 25, '_max_variation_regular_price', ''),
(790, 25, '_min_variation_sale_price', ''),
(791, 25, '_max_variation_sale_price', ''),
(792, 25, '_min_price_variation_id', ''),
(793, 25, '_max_price_variation_id', ''),
(794, 25, '_min_regular_price_variation_id', ''),
(795, 25, '_max_regular_price_variation_id', ''),
(796, 25, '_min_sale_price_variation_id', ''),
(797, 25, '_max_sale_price_variation_id', ''),
(798, 25, '_wp_old_slug', 'import-placeholder-for-1690'),
(799, 25, '_regular_price', '20.4'),
(800, 25, '_sale_price', '18.2'),
(801, 25, '_product_image_gallery', '59'),
(802, 25, '_thumbnail_id', '58'),
(803, 25, '_price', '18.2'),
(804, 60, '_wp_attached_file', '2020/01/Buschla.jpg'),
(805, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/01/Buschla.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Buschla-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Buschla-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Buschla-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Buschla-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Buschla-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Buschla-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(806, 60, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Buschla.jpg'),
(807, 61, '_wp_attached_file', '2020/01/Buschla-2.jpg'),
(808, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2020/01/Buschla-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Buschla-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Buschla-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Buschla-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Buschla-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Buschla-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Buschla-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(809, 61, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Buschla-2.jpg'),
(810, 26, 'count_items', '0'),
(811, 26, '_thim_demo_content', 'yes'),
(812, 26, 'slide_template', 'default'),
(813, 26, 'thim_mtb_using_custom_heading', '0'),
(814, 26, 'thim_mtb_hide_title_and_subtitle', '0'),
(815, 26, 'thim_mtb_custom_title', ''),
(816, 26, 'thim_subtitle', ''),
(817, 26, 'thim_custom_heading_bg', ''),
(818, 26, 'thim_mtb_top_image', ''),
(819, 26, 'thim_mtb_bg_color', ''),
(820, 26, 'thim_mtb_text_color', ''),
(821, 26, 'thim_mtb_custom_layout', '0'),
(822, 26, 'thim_mtb_layout', 'full-content'),
(823, 26, 'thim_mtb_no_padding', '0'),
(824, 26, 'thim_mtb_hide_breadcrumbs', '0'),
(825, 26, 'thim_mtb_color_sub_title', ''),
(826, 26, '_lpr_course', ''),
(827, 26, '_download_type', ''),
(828, 26, '_min_variation_price', ''),
(829, 26, '_max_variation_price', ''),
(830, 26, '_min_variation_regular_price', ''),
(831, 26, '_max_variation_regular_price', ''),
(832, 26, '_min_variation_sale_price', ''),
(833, 26, '_max_variation_sale_price', ''),
(834, 26, '_min_price_variation_id', ''),
(835, 26, '_max_price_variation_id', ''),
(836, 26, '_min_regular_price_variation_id', ''),
(837, 26, '_max_regular_price_variation_id', ''),
(838, 26, '_min_sale_price_variation_id', ''),
(839, 26, '_max_sale_price_variation_id', ''),
(840, 26, '_wp_old_slug', 'import-placeholder-for-1691'),
(841, 26, '_regular_price', '20'),
(842, 26, '_product_image_gallery', '61'),
(843, 26, '_thumbnail_id', '60'),
(844, 26, '_price', '20'),
(845, 62, '_wp_attached_file', '2020/01/Smartphone-cases.jpg'),
(846, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2020/01/Smartphone-cases.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Smartphone-cases-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Smartphone-cases-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Smartphone-cases-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Smartphone-cases-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Smartphone-cases-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Smartphone-cases-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(847, 62, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Smartphone-cases.jpg'),
(848, 63, '_wp_attached_file', '2020/01/Smartphone-cases-2.jpg'),
(849, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2020/01/Smartphone-cases-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Smartphone-cases-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Smartphone-cases-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Smartphone-cases-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Smartphone-cases-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Smartphone-cases-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Smartphone-cases-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(850, 63, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Smartphone-cases-2.jpg'),
(851, 27, 'count_items', '0'),
(852, 27, '_thim_demo_content', 'yes'),
(853, 27, 'slide_template', 'default'),
(854, 27, 'thim_mtb_using_custom_heading', '0'),
(855, 27, 'thim_mtb_hide_title_and_subtitle', '0'),
(856, 27, 'thim_mtb_custom_title', ''),
(857, 27, 'thim_subtitle', ''),
(858, 27, 'thim_custom_heading_bg', ''),
(859, 27, 'thim_mtb_top_image', ''),
(860, 27, 'thim_mtb_bg_color', ''),
(861, 27, 'thim_mtb_text_color', ''),
(862, 27, 'thim_mtb_custom_layout', '0'),
(863, 27, 'thim_mtb_layout', 'full-content'),
(864, 27, 'thim_mtb_no_padding', '0'),
(865, 27, 'thim_mtb_hide_breadcrumbs', '0'),
(866, 27, 'thim_mtb_color_sub_title', ''),
(867, 27, '_lpr_course', ''),
(868, 27, '_download_type', ''),
(869, 27, '_min_variation_price', '20'),
(870, 27, '_max_variation_price', '20'),
(871, 27, '_min_variation_regular_price', '20'),
(872, 27, '_max_variation_regular_price', '20'),
(873, 27, '_min_variation_sale_price', ''),
(874, 27, '_max_variation_sale_price', ''),
(875, 27, '_min_price_variation_id', '1699'),
(876, 27, '_max_price_variation_id', '1699'),
(877, 27, '_min_regular_price_variation_id', '1699'),
(878, 27, '_max_regular_price_variation_id', '1699'),
(879, 27, '_min_sale_price_variation_id', ''),
(880, 27, '_max_sale_price_variation_id', ''),
(881, 27, '_wp_old_slug', 'import-placeholder-for-1692'),
(882, 27, '_regular_price', '15'),
(883, 27, '_sale_price', '12'),
(884, 27, '_product_image_gallery', '63'),
(885, 27, '_thumbnail_id', '62'),
(886, 27, '_price', '12'),
(887, 64, '_wp_attached_file', '2020/01/Brauhaus.jpg'),
(888, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2020/01/Brauhaus.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Brauhaus-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Brauhaus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Brauhaus-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Brauhaus-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Brauhaus-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Brauhaus-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(889, 64, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Brauhaus.jpg'),
(890, 65, '_wp_attached_file', '2020/01/Brauhaus-2.jpg'),
(891, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2020/01/Brauhaus-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Brauhaus-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Brauhaus-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Brauhaus-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(892, 65, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Brauhaus-2.jpg'),
(893, 66, '_wp_attached_file', '2020/01/Brauhaus-3.jpg'),
(894, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2020/01/Brauhaus-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Brauhaus-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Brauhaus-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Brauhaus-3-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Brauhaus-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(895, 66, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Brauhaus-3.jpg'),
(896, 28, 'count_items', '0'),
(897, 28, '_thim_demo_content', 'yes'),
(898, 28, 'slide_template', 'default'),
(899, 28, 'thim_mtb_using_custom_heading', '0'),
(900, 28, 'thim_mtb_hide_title_and_subtitle', '0'),
(901, 28, 'thim_mtb_custom_title', ''),
(902, 28, 'thim_subtitle', ''),
(903, 28, 'thim_custom_heading_bg', ''),
(904, 28, 'thim_mtb_top_image', ''),
(905, 28, 'thim_mtb_bg_color', ''),
(906, 28, 'thim_mtb_text_color', ''),
(907, 28, 'thim_mtb_custom_layout', '0'),
(908, 28, 'thim_mtb_layout', 'full-content'),
(909, 28, 'thim_mtb_no_padding', '0'),
(910, 28, 'thim_mtb_hide_breadcrumbs', '0'),
(911, 28, 'thim_mtb_color_sub_title', ''),
(912, 28, '_lpr_course', ''),
(913, 28, '_download_type', ''),
(914, 28, '_min_variation_price', ''),
(915, 28, '_max_variation_price', ''),
(916, 28, '_min_variation_regular_price', ''),
(917, 28, '_max_variation_regular_price', ''),
(918, 28, '_min_variation_sale_price', ''),
(919, 28, '_max_variation_sale_price', ''),
(920, 28, '_min_price_variation_id', ''),
(921, 28, '_max_price_variation_id', ''),
(922, 28, '_min_regular_price_variation_id', ''),
(923, 28, '_max_regular_price_variation_id', ''),
(924, 28, '_min_sale_price_variation_id', ''),
(925, 28, '_max_sale_price_variation_id', ''),
(926, 28, '_wp_old_slug', 'import-placeholder-for-1693'),
(927, 28, '_regular_price', '20.1'),
(928, 28, '_product_image_gallery', '65,66'),
(929, 28, '_thumbnail_id', '64'),
(930, 28, '_price', '20.1'),
(931, 67, '_wp_attached_file', '2020/01/Chutney.jpg'),
(932, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/01/Chutney.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Chutney-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Chutney-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Chutney-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Chutney-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Chutney-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Chutney-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 67, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Chutney.jpg'),
(934, 68, '_wp_attached_file', '2020/01/Chutney-2.jpg'),
(935, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2020/01/Chutney-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Chutney-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Chutney-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Chutney-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Chutney-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Chutney-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Chutney-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(936, 68, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Chutney-2.jpg'),
(937, 29, 'count_items', '0'),
(938, 29, '_thim_demo_content', 'yes'),
(939, 29, 'slide_template', 'default'),
(940, 29, 'thim_mtb_using_custom_heading', '0'),
(941, 29, 'thim_mtb_hide_title_and_subtitle', '0'),
(942, 29, 'thim_mtb_custom_title', ''),
(943, 29, 'thim_subtitle', ''),
(944, 29, 'thim_custom_heading_bg', ''),
(945, 29, 'thim_mtb_top_image', ''),
(946, 29, 'thim_mtb_bg_color', ''),
(947, 29, 'thim_mtb_text_color', ''),
(948, 29, 'thim_mtb_custom_layout', '0'),
(949, 29, 'thim_mtb_layout', 'full-content'),
(950, 29, 'thim_mtb_no_padding', '0'),
(951, 29, 'thim_mtb_hide_breadcrumbs', '0'),
(952, 29, 'thim_mtb_color_sub_title', ''),
(953, 29, '_lpr_course', ''),
(954, 29, '_download_type', ''),
(955, 29, '_min_variation_price', ''),
(956, 29, '_max_variation_price', ''),
(957, 29, '_min_variation_regular_price', ''),
(958, 29, '_max_variation_regular_price', ''),
(959, 29, '_min_variation_sale_price', ''),
(960, 29, '_max_variation_sale_price', ''),
(961, 29, '_min_price_variation_id', ''),
(962, 29, '_max_price_variation_id', ''),
(963, 29, '_min_regular_price_variation_id', ''),
(964, 29, '_max_regular_price_variation_id', ''),
(965, 29, '_min_sale_price_variation_id', ''),
(966, 29, '_max_sale_price_variation_id', ''),
(967, 29, '_wp_old_slug', 'import-placeholder-for-1694'),
(968, 29, '_regular_price', '22.8'),
(969, 29, '_product_image_gallery', '68'),
(970, 29, '_thumbnail_id', '67'),
(971, 29, '_price', '22.8'),
(972, 69, '_wp_attached_file', '2020/01/Fursten-hutchen.jpg'),
(973, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/01/Fursten-hutchen.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fursten-hutchen-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fursten-hutchen-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fursten-hutchen-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fursten-hutchen-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Fursten-hutchen-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fursten-hutchen-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(974, 69, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Fursten-hutchen.jpg'),
(975, 70, '_wp_attached_file', '2020/01/Fursten-hutchen-2.jpg'),
(976, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2020/01/Fursten-hutchen-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Fursten-hutchen-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Fursten-hutchen-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Fursten-hutchen-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Fursten-hutchen-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"Fursten-hutchen-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Fursten-hutchen-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(977, 70, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Fursten-hutchen-2.jpg'),
(978, 30, 'count_items', '0'),
(979, 30, '_thim_demo_content', 'yes'),
(980, 30, 'slide_template', 'default'),
(981, 30, 'thim_mtb_using_custom_heading', '0'),
(982, 30, 'thim_mtb_hide_title_and_subtitle', '0'),
(983, 30, 'thim_mtb_custom_title', ''),
(984, 30, 'thim_subtitle', ''),
(985, 30, 'thim_custom_heading_bg', ''),
(986, 30, 'thim_mtb_top_image', ''),
(987, 30, 'thim_mtb_bg_color', ''),
(988, 30, 'thim_mtb_text_color', ''),
(989, 30, 'thim_mtb_custom_layout', '0'),
(990, 30, 'thim_mtb_layout', 'full-content'),
(991, 30, 'thim_mtb_no_padding', '0'),
(992, 30, 'thim_mtb_hide_breadcrumbs', '0'),
(993, 30, 'thim_mtb_color_sub_title', ''),
(994, 30, '_lpr_course', ''),
(995, 30, '_download_type', ''),
(996, 30, '_min_variation_price', ''),
(997, 30, '_max_variation_price', ''),
(998, 30, '_min_variation_regular_price', ''),
(999, 30, '_max_variation_regular_price', ''),
(1000, 30, '_min_variation_sale_price', ''),
(1001, 30, '_max_variation_sale_price', ''),
(1002, 30, '_min_price_variation_id', ''),
(1003, 30, '_max_price_variation_id', ''),
(1004, 30, '_min_regular_price_variation_id', ''),
(1005, 30, '_max_regular_price_variation_id', ''),
(1006, 30, '_min_sale_price_variation_id', ''),
(1007, 30, '_max_sale_price_variation_id', ''),
(1008, 30, '_wp_old_slug', 'import-placeholder-for-1695'),
(1009, 30, '_regular_price', '18.3'),
(1010, 30, '_product_image_gallery', '70'),
(1011, 30, '_thumbnail_id', '69'),
(1012, 30, '_price', '18.3'),
(1013, 71, '_wp_attached_file', '2020/01/Cup-princely-break.jpg');
INSERT INTO `pos_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1014, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2020/01/Cup-princely-break.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Cup-princely-break-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Cup-princely-break-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Cup-princely-break-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Cup-princely-break-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Cup-princely-break-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Cup-princely-break-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1015, 71, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Cup-princely-break.jpg'),
(1016, 72, '_wp_attached_file', '2020/01/Cup-princely-break-2.jpg'),
(1017, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:32:\"2020/01/Cup-princely-break-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Cup-princely-break-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Cup-princely-break-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Cup-princely-break-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Cup-princely-break-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Cup-princely-break-2-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Cup-princely-break-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 72, '_wc_attachment_source', 'http://localhost/Ead/wp-content/uploads/2013/06/Cup-princely-break-2.jpg'),
(1019, 31, 'count_items', '0'),
(1020, 31, '_thim_demo_content', 'yes'),
(1021, 31, 'slide_template', 'default'),
(1022, 31, 'thim_mtb_using_custom_heading', '0'),
(1023, 31, 'thim_mtb_hide_title_and_subtitle', '0'),
(1024, 31, 'thim_mtb_custom_title', ''),
(1025, 31, 'thim_subtitle', ''),
(1026, 31, 'thim_custom_heading_bg', ''),
(1027, 31, 'thim_mtb_top_image', ''),
(1028, 31, 'thim_mtb_bg_color', ''),
(1029, 31, 'thim_mtb_text_color', ''),
(1030, 31, 'thim_mtb_custom_layout', '0'),
(1031, 31, 'thim_mtb_layout', 'full-content'),
(1032, 31, 'thim_mtb_no_padding', '0'),
(1033, 31, 'thim_mtb_hide_breadcrumbs', '0'),
(1034, 31, 'thim_mtb_color_sub_title', ''),
(1035, 31, '_lpr_course', ''),
(1036, 31, '_download_type', ''),
(1037, 31, '_min_variation_price', '30'),
(1038, 31, '_max_variation_price', '35'),
(1039, 31, '_min_variation_regular_price', '35'),
(1040, 31, '_max_variation_regular_price', '35'),
(1041, 31, '_min_variation_sale_price', '30'),
(1042, 31, '_max_variation_sale_price', '30'),
(1043, 31, '_min_price_variation_id', '42'),
(1044, 31, '_max_price_variation_id', '41'),
(1045, 31, '_min_regular_price_variation_id', '42'),
(1046, 31, '_max_regular_price_variation_id', '42'),
(1047, 31, '_min_sale_price_variation_id', '42'),
(1048, 31, '_max_sale_price_variation_id', '42'),
(1049, 31, '_wp_old_slug', 'import-placeholder-for-1696'),
(1050, 31, '_regular_price', '21'),
(1051, 31, '_sale_price', '17'),
(1052, 31, '_product_image_gallery', '72'),
(1053, 31, '_thumbnail_id', '71'),
(1054, 31, '_price', '17'),
(1055, 73, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579715381;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(1056, 74, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579738400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(1057, 75, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1579787618;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_posts`
--

CREATE TABLE `pos_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_posts`
--

INSERT INTO `pos_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-21 19:57:02', '2020-01-21 21:57:02', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2020-01-21 19:57:02', '2020-01-21 21:57:02', '', 0, 'http://localhost/Ponto_Venda/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-21 19:57:02', '2020-01-21 21:57:02', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/Ponto_Venda/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2020-01-21 19:57:02', '2020-01-21 21:57:02', '', 0, 'http://localhost/Ponto_Venda/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-21 19:57:02', '2020-01-21 21:57:02', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/Ponto_Venda.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2020-01-21 19:57:02', '2020-01-21 21:57:02', '', 0, 'http://localhost/Ponto_Venda/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-01-21 19:59:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-21 19:59:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ponto_Venda/?p=4', 0, 'post', '', 0),
(6, 1, '2020-01-22 13:38:20', '2020-01-22 15:38:20', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-01-22 13:38:20', '2020-01-22 15:38:20', '', 0, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-01-22 13:39:16', '2020-01-22 15:39:16', '', 'Loja', '', 'publish', 'closed', 'closed', '', 'loja', '', '', '2020-01-22 13:39:16', '2020-01-22 15:39:16', '', 0, 'http://localhost/Ponto_Venda/loja/', 0, 'page', '', 0),
(8, 1, '2020-01-22 13:39:17', '2020-01-22 15:39:17', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2020-01-22 13:39:17', '2020-01-22 15:39:17', '', 0, 'http://localhost/Ponto_Venda/carrinho/', 0, 'page', '', 0),
(9, 1, '2020-01-22 13:39:17', '2020-01-22 15:39:17', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2020-01-22 13:39:17', '2020-01-22 15:39:17', '', 0, 'http://localhost/Ponto_Venda/finalizar-compra/', 0, 'page', '', 0),
(10, 1, '2020-01-22 13:39:17', '2020-01-22 15:39:17', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Minha conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2020-01-22 13:39:17', '2020-01-22 15:39:17', '', 0, 'http://localhost/Ponto_Venda/minha-conta/', 0, 'page', '', 0),
(11, 0, '2020-01-22 13:47:45', '2020-01-22 15:47:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e286ecbbc8c02.10101828-oIW6ym0VgcW37xUtiT204gv0mGabD8Gn', '', '', '2020-01-22 13:48:27', '2020-01-22 15:48:27', '', 0, 'http://localhost/Ponto_Venda/?post_type=scheduled-action&#038;p=11', 0, 'scheduled-action', '', 3),
(12, 1, '2020-01-22 13:48:15', '2020-01-22 15:48:15', 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/wc-product-export-22-1-2020-1579707983590.csv', 'wc-product-export-22-1-2020-1579707983590.csv', '', 'private', 'open', 'closed', '', 'wc-product-export-22-1-2020-1579707983590-csv', '', '', '2020-01-22 13:48:15', '2020-01-22 15:48:15', '', 0, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/wc-product-export-22-1-2020-1579707983590.csv', 0, 'attachment', 'text/csv', 0),
(13, 0, '2020-01-22 14:48:27', '2020-01-22 16:48:27', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e287d25d2a488.77090025-hCEuy8LPmuhfsJJHfbQpHEZD6Rp4ztmk', '', '', '2020-01-22 14:49:41', '2020-01-22 16:49:41', '', 0, 'http://localhost/Ponto_Venda/?post_type=scheduled-action&#038;p=13', 0, 'scheduled-action', '', 3),
(14, 1, '2020-01-22 13:48:30', '2020-01-22 15:48:30', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Klappkarte kreuzstich', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'klappkarte-kreuzstich', '', '', '2020-01-22 13:48:40', '2020-01-22 15:48:40', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-135/', 0, 'product', '', 0),
(15, 1, '2020-01-22 13:48:31', '2020-01-22 15:48:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Funka', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'funka', '', '', '2020-01-22 13:48:42', '2020-01-22 15:48:42', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-136/', 0, 'product', '', 0),
(16, 1, '2020-01-22 13:48:31', '2020-01-22 15:48:31', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Daham', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'daham', '', '', '2020-01-22 13:48:46', '2020-01-22 15:48:46', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-137/', 0, 'product', '', 0),
(17, 1, '2020-01-22 13:48:32', '2020-01-22 15:48:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Princely pencil', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'princely-pencil', '', '', '2020-01-22 13:48:48', '2020-01-22 15:48:48', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-138/', 0, 'product', '', 0),
(18, 1, '2020-01-22 13:48:32', '2020-01-22 15:48:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cup crown pattern', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'cup-crown-pattern', '', '', '2020-01-22 13:48:50', '2020-01-22 15:48:50', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-139/', 0, 'product', '', 0),
(19, 1, '2020-01-22 13:48:32', '2020-01-22 15:48:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Bag fabric', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'bag-fabric', '', '', '2020-01-22 13:48:53', '2020-01-22 15:48:53', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-140/', 0, 'product', '', 0),
(20, 1, '2020-01-22 13:48:32', '2020-01-22 15:48:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Karton', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'karton', '', '', '2020-01-22 13:48:56', '2020-01-22 15:48:56', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-141/', 0, 'product', '', 0),
(21, 1, '2020-01-22 13:48:33', '2020-01-22 15:48:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Bracelet', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'bracelet', '', '', '2020-01-22 13:48:58', '2020-01-22 15:48:58', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-142/', 0, 'product', '', 0),
(22, 1, '2020-01-22 13:48:33', '2020-01-22 15:48:33', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Luggage tag', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'luggage-tag', '', '', '2020-01-22 13:49:02', '2020-01-22 15:49:02', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-143/', 0, 'product', '', 0),
(23, 1, '2020-01-22 13:48:34', '2020-01-22 15:48:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Wood postcard', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'wood-postcard', '', '', '2020-01-22 13:49:05', '2020-01-22 15:49:05', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-144/', 0, 'product', '', 0),
(24, 1, '2020-01-22 13:48:34', '2020-01-22 15:48:34', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Keychains', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'keychains', '', '', '2020-01-22 13:49:08', '2020-01-22 15:49:08', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-145/', 0, 'product', '', 0),
(25, 1, '2020-01-22 13:48:35', '2020-01-22 15:48:35', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Corkscrew', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'corkscrew', '', '', '2020-01-22 13:49:11', '2020-01-22 15:49:11', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1690/', 0, 'product', '', 0),
(26, 1, '2020-01-22 13:48:35', '2020-01-22 15:48:35', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Buschla', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'buschla', '', '', '2020-01-22 13:49:13', '2020-01-22 15:49:13', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1691/', 0, 'product', '', 0),
(27, 1, '2020-01-22 13:48:35', '2020-01-22 15:48:35', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Smartphone cases', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'smartphone-cases', '', '', '2020-01-22 13:49:15', '2020-01-22 15:49:15', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1692/', 0, 'product', '', 0),
(28, 1, '2020-01-22 13:48:36', '2020-01-22 15:48:36', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Brauhaus', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'brauhaus', '', '', '2020-01-22 13:49:19', '2020-01-22 15:49:19', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1693/', 0, 'product', '', 0),
(29, 1, '2020-01-22 13:48:36', '2020-01-22 15:48:36', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Chutney', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'chutney', '', '', '2020-01-22 13:49:21', '2020-01-22 15:49:21', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1694/', 0, 'product', '', 0),
(30, 1, '2020-01-22 13:48:36', '2020-01-22 15:48:36', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Fursten hutchen', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'fursten-hutchen', '', '', '2020-01-22 13:49:26', '2020-01-22 15:49:26', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1695/', 0, 'product', '', 0),
(31, 1, '2020-01-22 13:48:37', '2020-01-22 15:48:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cup princely break', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'cup-princely-break', '', '', '2020-01-22 13:49:28', '2020-01-22 15:49:28', '', 0, 'http://localhost/Ponto_Venda/produto/import-placeholder-for-1696/', 0, 'product', '', 0),
(32, 1, '2020-01-22 13:48:38', '2020-01-22 15:48:38', '', 'Klappkarte-Kreuzstich.jpg', '', 'inherit', 'open', 'closed', '', 'klappkarte-kreuzstich-jpg', '', '', '2020-01-22 13:48:38', '2020-01-22 15:48:38', '', 14, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Klappkarte-Kreuzstich.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-01-22 13:48:39', '2020-01-22 15:48:39', '', 'Klappkarte-Kreuzstich-2.jpg', '', 'inherit', 'open', 'closed', '', 'klappkarte-kreuzstich-2-jpg', '', '', '2020-01-22 13:48:39', '2020-01-22 15:48:39', '', 14, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Klappkarte-Kreuzstich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-01-22 13:48:39', '2020-01-22 15:48:39', '', 'Klappkarte-Kreuzstich-3.jpg', '', 'inherit', 'open', 'closed', '', 'klappkarte-kreuzstich-3-jpg', '', '', '2020-01-22 13:48:39', '2020-01-22 15:48:39', '', 14, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Klappkarte-Kreuzstich-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-01-22 13:48:41', '2020-01-22 15:48:41', '', 'Funka.jpg', '', 'inherit', 'open', 'closed', '', 'funka-jpg', '', '', '2020-01-22 13:48:41', '2020-01-22 15:48:41', '', 15, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Funka.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-01-22 13:48:41', '2020-01-22 15:48:41', '', 'Funka-2.jpg', '', 'inherit', 'open', 'closed', '', 'funka-2-jpg', '', '', '2020-01-22 13:48:41', '2020-01-22 15:48:41', '', 15, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Funka-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-01-22 13:48:43', '2020-01-22 15:48:43', '', 'daham.jpg', '', 'inherit', 'open', 'closed', '', 'daham-jpg', '', '', '2020-01-22 13:48:43', '2020-01-22 15:48:43', '', 16, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/daham.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-01-22 13:48:44', '2020-01-22 15:48:44', '', 'daham-2.jpg', '', 'inherit', 'open', 'closed', '', 'daham-2-jpg', '', '', '2020-01-22 13:48:44', '2020-01-22 15:48:44', '', 16, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/daham-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-01-22 13:48:45', '2020-01-22 15:48:45', '', 'daham-3.jpg', '', 'inherit', 'open', 'closed', '', 'daham-3-jpg', '', '', '2020-01-22 13:48:45', '2020-01-22 15:48:45', '', 16, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/daham-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-01-22 13:48:46', '2020-01-22 15:48:46', '', 'Princely-pencil.jpg', '', 'inherit', 'open', 'closed', '', 'princely-pencil-jpg', '', '', '2020-01-22 13:48:46', '2020-01-22 15:48:46', '', 17, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Princely-pencil.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-01-22 13:48:47', '2020-01-22 15:48:47', '', 'Princely-pencil-2.jpg', '', 'inherit', 'open', 'closed', '', 'princely-pencil-2-jpg', '', '', '2020-01-22 13:48:47', '2020-01-22 15:48:47', '', 17, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Princely-pencil-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-01-22 13:48:49', '2020-01-22 15:48:49', '', 'Cup-crown-pattern.jpg', '', 'inherit', 'open', 'closed', '', 'cup-crown-pattern-jpg', '', '', '2020-01-22 13:48:49', '2020-01-22 15:48:49', '', 18, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Cup-crown-pattern.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-01-22 13:48:49', '2020-01-22 15:48:49', '', 'Cup-crown-pattern-2.jpg', '', 'inherit', 'open', 'closed', '', 'cup-crown-pattern-2-jpg', '', '', '2020-01-22 13:48:49', '2020-01-22 15:48:49', '', 18, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Cup-crown-pattern-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-01-22 13:48:51', '2020-01-22 15:48:51', '', 'Bag-fabric.jpg', '', 'inherit', 'open', 'closed', '', 'bag-fabric-jpg', '', '', '2020-01-22 13:48:51', '2020-01-22 15:48:51', '', 19, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Bag-fabric.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-01-22 13:48:52', '2020-01-22 15:48:52', '', 'Bag-fabric-2.jpg', '', 'inherit', 'open', 'closed', '', 'bag-fabric-2-jpg', '', '', '2020-01-22 13:48:52', '2020-01-22 15:48:52', '', 19, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Bag-fabric-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-01-22 13:48:52', '2020-01-22 15:48:52', '', 'Bag-fabric-3.jpg', '', 'inherit', 'open', 'closed', '', 'bag-fabric-3-jpg', '', '', '2020-01-22 13:48:52', '2020-01-22 15:48:52', '', 19, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Bag-fabric-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-01-22 13:48:54', '2020-01-22 15:48:54', '', 'Karton.jpg', '', 'inherit', 'open', 'closed', '', 'karton-jpg', '', '', '2020-01-22 13:48:54', '2020-01-22 15:48:54', '', 20, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Karton.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-01-22 13:48:55', '2020-01-22 15:48:55', '', 'Karton-2.jpg', '', 'inherit', 'open', 'closed', '', 'karton-2-jpg', '', '', '2020-01-22 13:48:55', '2020-01-22 15:48:55', '', 20, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Karton-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-01-22 13:48:57', '2020-01-22 15:48:57', '', 'Bracelet.jpg', '', 'inherit', 'open', 'closed', '', 'bracelet-jpg', '', '', '2020-01-22 13:48:57', '2020-01-22 15:48:57', '', 21, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Bracelet.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-01-22 13:48:57', '2020-01-22 15:48:57', '', 'Bracelet-2.jpg', '', 'inherit', 'open', 'closed', '', 'bracelet-2-jpg', '', '', '2020-01-22 13:48:57', '2020-01-22 15:48:57', '', 21, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Bracelet-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-01-22 13:49:00', '2020-01-22 15:49:00', '', 'Luggage-tag.jpg', '', 'inherit', 'open', 'closed', '', 'luggage-tag-jpg', '', '', '2020-01-22 13:49:00', '2020-01-22 15:49:00', '', 22, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Luggage-tag.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-01-22 13:49:01', '2020-01-22 15:49:01', '', 'Luggage-tag-2.jpg', '', 'inherit', 'open', 'closed', '', 'luggage-tag-2-jpg', '', '', '2020-01-22 13:49:01', '2020-01-22 15:49:01', '', 22, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Luggage-tag-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-01-22 13:49:03', '2020-01-22 15:49:03', '', 'Wood-postcard.jpg', '', 'inherit', 'open', 'closed', '', 'wood-postcard-jpg', '', '', '2020-01-22 13:49:03', '2020-01-22 15:49:03', '', 23, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Wood-postcard.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-01-22 13:49:03', '2020-01-22 15:49:03', '', 'Wood-postcard-2.jpg', '', 'inherit', 'open', 'closed', '', 'wood-postcard-2-jpg', '', '', '2020-01-22 13:49:03', '2020-01-22 15:49:03', '', 23, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Wood-postcard-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-01-22 13:49:04', '2020-01-22 15:49:04', '', 'Wood-postcard-3.jpg', '', 'inherit', 'open', 'closed', '', 'wood-postcard-3-jpg', '', '', '2020-01-22 13:49:04', '2020-01-22 15:49:04', '', 23, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Wood-postcard-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-01-22 13:49:06', '2020-01-22 15:49:06', '', 'Keychains.jpg', '', 'inherit', 'open', 'closed', '', 'keychains-jpg', '', '', '2020-01-22 13:49:06', '2020-01-22 15:49:06', '', 24, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Keychains.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-01-22 13:49:07', '2020-01-22 15:49:07', '', 'Keychains-2.jpg', '', 'inherit', 'open', 'closed', '', 'keychains-2-jpg', '', '', '2020-01-22 13:49:07', '2020-01-22 15:49:07', '', 24, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Keychains-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-01-22 13:49:09', '2020-01-22 15:49:09', '', 'Corkscrew.jpg', '', 'inherit', 'open', 'closed', '', 'corkscrew-jpg', '', '', '2020-01-22 13:49:09', '2020-01-22 15:49:09', '', 25, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Corkscrew.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-01-22 13:49:10', '2020-01-22 15:49:10', '', 'Corkscrew-2.jpg', '', 'inherit', 'open', 'closed', '', 'corkscrew-2-jpg', '', '', '2020-01-22 13:49:10', '2020-01-22 15:49:10', '', 25, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Corkscrew-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-01-22 13:49:12', '2020-01-22 15:49:12', '', 'Buschla.jpg', '', 'inherit', 'open', 'closed', '', 'buschla-jpg', '', '', '2020-01-22 13:49:12', '2020-01-22 15:49:12', '', 26, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Buschla.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-01-22 13:49:12', '2020-01-22 15:49:12', '', 'Buschla-2.jpg', '', 'inherit', 'open', 'closed', '', 'buschla-2-jpg', '', '', '2020-01-22 13:49:12', '2020-01-22 15:49:12', '', 26, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Buschla-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-01-22 13:49:14', '2020-01-22 15:49:14', '', 'Smartphone-cases.jpg', '', 'inherit', 'open', 'closed', '', 'smartphone-cases-jpg', '', '', '2020-01-22 13:49:14', '2020-01-22 15:49:14', '', 27, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Smartphone-cases.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-01-22 13:49:15', '2020-01-22 15:49:15', '', 'Smartphone-cases-2.jpg', '', 'inherit', 'open', 'closed', '', 'smartphone-cases-2-jpg', '', '', '2020-01-22 13:49:15', '2020-01-22 15:49:15', '', 27, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Smartphone-cases-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-01-22 13:49:17', '2020-01-22 15:49:17', '', 'Brauhaus.jpg', '', 'inherit', 'open', 'closed', '', 'brauhaus-jpg', '', '', '2020-01-22 13:49:17', '2020-01-22 15:49:17', '', 28, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Brauhaus.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-01-22 13:49:17', '2020-01-22 15:49:17', '', 'Brauhaus-2.jpg', '', 'inherit', 'open', 'closed', '', 'brauhaus-2-jpg', '', '', '2020-01-22 13:49:17', '2020-01-22 15:49:17', '', 28, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Brauhaus-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-01-22 13:49:18', '2020-01-22 15:49:18', '', 'Brauhaus-3.jpg', '', 'inherit', 'open', 'closed', '', 'brauhaus-3-jpg', '', '', '2020-01-22 13:49:18', '2020-01-22 15:49:18', '', 28, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Brauhaus-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-01-22 13:49:20', '2020-01-22 15:49:20', '', 'Chutney.jpg', '', 'inherit', 'open', 'closed', '', 'chutney-jpg', '', '', '2020-01-22 13:49:20', '2020-01-22 15:49:20', '', 29, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Chutney.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-01-22 13:49:20', '2020-01-22 15:49:20', '', 'Chutney-2.jpg', '', 'inherit', 'open', 'closed', '', 'chutney-2-jpg', '', '', '2020-01-22 13:49:20', '2020-01-22 15:49:20', '', 29, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Chutney-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-01-22 13:49:24', '2020-01-22 15:49:24', '', 'Fursten-hutchen.jpg', '', 'inherit', 'open', 'closed', '', 'fursten-hutchen-jpg', '', '', '2020-01-22 13:49:24', '2020-01-22 15:49:24', '', 30, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Fursten-hutchen.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-01-22 13:49:25', '2020-01-22 15:49:25', '', 'Fursten-hutchen-2.jpg', '', 'inherit', 'open', 'closed', '', 'fursten-hutchen-2-jpg', '', '', '2020-01-22 13:49:25', '2020-01-22 15:49:25', '', 30, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Fursten-hutchen-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-01-22 13:49:26', '2020-01-22 15:49:26', '', 'Cup-princely-break.jpg', '', 'inherit', 'open', 'closed', '', 'cup-princely-break-jpg', '', '', '2020-01-22 13:49:26', '2020-01-22 15:49:26', '', 31, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Cup-princely-break.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-01-22 13:49:27', '2020-01-22 15:49:27', '', 'Cup-princely-break-2.jpg', '', 'inherit', 'open', 'closed', '', 'cup-princely-break-2-jpg', '', '', '2020-01-22 13:49:27', '2020-01-22 15:49:27', '', 31, 'http://localhost/Ponto_Venda/wp-content/uploads/2020/01/Cup-princely-break-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 0, '2020-01-22 15:49:41', '2020-01-22 17:49:41', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e28d70feced61.03451961-hRF5Plg2i0UdtCOEW5AKpnExPiFfHS6u', '', '', '2020-01-22 21:13:19', '2020-01-22 23:13:19', '', 0, 'http://localhost/Ponto_Venda/?post_type=scheduled-action&#038;p=73', 0, 'scheduled-action', '', 3),
(74, 0, '2020-01-22 22:13:20', '2020-01-23 00:13:20', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5e29975222de31.37888151-QbzxgzU08oXJcChcUcuRKikclecSNJlL', '', '', '2020-01-23 10:53:38', '2020-01-23 12:53:38', '', 0, 'http://localhost/Ponto_Venda/?post_type=scheduled-action&#038;p=74', 0, 'scheduled-action', '', 3),
(75, 0, '2020-01-23 11:53:38', '2020-01-23 13:53:38', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2020-01-23 11:53:38', '2020-01-23 13:53:38', '', 0, 'http://localhost/Ponto_Venda/?post_type=scheduled-action&p=75', 0, 'scheduled-action', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_termmeta`
--

CREATE TABLE `pos_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_termmeta`
--

INSERT INTO `pos_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 17, 'order', '0'),
(3, 18, 'order', '0'),
(4, 19, 'order', '0'),
(5, 20, 'order', '0'),
(6, 17, 'product_count_product_cat', '3'),
(7, 18, 'product_count_product_cat', '5'),
(8, 19, 'product_count_product_cat', '7'),
(9, 20, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_terms`
--

CREATE TABLE `pos_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_terms`
--

INSERT INTO `pos_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sem categoria', 'sem-categoria', 0),
(16, 'wc-admin-notes', 'wc-admin-notes', 0),
(17, 'Postcard', 'postcard', 0),
(18, 'Culinary', 'culinary', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Cookware', 'cookware', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_term_relationships`
--

CREATE TABLE `pos_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_term_relationships`
--

INSERT INTO `pos_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 16, 0),
(13, 16, 0),
(14, 2, 0),
(14, 17, 0),
(15, 2, 0),
(15, 18, 0),
(16, 2, 0),
(16, 19, 0),
(17, 2, 0),
(17, 19, 0),
(18, 2, 0),
(18, 20, 0),
(19, 2, 0),
(19, 19, 0),
(20, 2, 0),
(20, 18, 0),
(21, 2, 0),
(21, 19, 0),
(22, 2, 0),
(22, 19, 0),
(23, 2, 0),
(23, 17, 0),
(24, 2, 0),
(24, 8, 0),
(24, 19, 0),
(25, 2, 0),
(25, 20, 0),
(26, 2, 0),
(26, 17, 0),
(27, 2, 0),
(27, 19, 0),
(28, 2, 0),
(28, 18, 0),
(29, 2, 0),
(29, 18, 0),
(30, 2, 0),
(30, 18, 0),
(31, 2, 0),
(31, 20, 0),
(73, 16, 0),
(74, 16, 0),
(75, 16, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_term_taxonomy`
--

CREATE TABLE `pos_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_term_taxonomy`
--

INSERT INTO `pos_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 18),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 1),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'action-group', '', 0, 4),
(17, 17, 'product_cat', '', 0, 3),
(18, 18, 'product_cat', '', 0, 5),
(19, 19, 'product_cat', '', 0, 7),
(20, 20, 'product_cat', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_usermeta`
--

CREATE TABLE `pos_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_usermeta`
--

INSERT INTO `pos_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(12, 1, 'POS_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'POS_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"76791e9a871d26f796435998afd4a1ea2906c9c621e65a14ca50a0bce5ce200b\";a:4:{s:10:\"expiration\";i:1579816759;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579643959;}s:64:\"d19ab9578b28c555bf0390bb4219d641143638c4558047d3ca11990e07600c86\";a:4:{s:10:\"expiration\";i:1579879341;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579706541;}}'),
(17, 1, 'POS_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:36:\"woocommerce_dashboard_recent_reviews\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(20, 1, '_woocommerce_tracks_anon_id', 'woo:h0xBlTIRJyQojmjbWHspLHvP'),
(21, 1, 'POS_woocommerce_product_import_mapping', 'a:69:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:16:\"low_stock_amount\";i:16;s:10:\"backorders\";i:17;s:17:\"sold_individually\";i:18;s:6:\"weight\";i:19;s:6:\"length\";i:20;s:5:\"width\";i:21;s:6:\"height\";i:22;s:15:\"reviews_allowed\";i:23;s:13:\"purchase_note\";i:24;s:10:\"sale_price\";i:25;s:13:\"regular_price\";i:26;s:12:\"category_ids\";i:27;s:7:\"tag_ids\";i:28;s:17:\"shipping_class_id\";i:29;s:6:\"images\";i:30;s:14:\"download_limit\";i:31;s:15:\"download_expiry\";i:32;s:9:\"parent_id\";i:33;s:16:\"grouped_products\";i:34;s:10:\"upsell_ids\";i:35;s:14:\"cross_sell_ids\";i:36;s:11:\"product_url\";i:37;s:11:\"button_text\";i:38;s:10:\"menu_order\";i:39;s:16:\"meta:count_items\";i:40;s:23:\"meta:_thim_demo_content\";i:41;s:19:\"meta:slide_template\";i:42;s:34:\"meta:thim_mtb_using_custom_heading\";i:43;s:37:\"meta:thim_mtb_hide_title_and_subtitle\";i:44;s:26:\"meta:thim_mtb_custom_title\";i:45;s:18:\"meta:thim_subtitle\";i:46;s:27:\"meta:thim_custom_heading_bg\";i:47;s:23:\"meta:thim_mtb_top_image\";i:48;s:22:\"meta:thim_mtb_bg_color\";i:49;s:24:\"meta:thim_mtb_text_color\";i:50;s:27:\"meta:thim_mtb_custom_layout\";i:51;s:20:\"meta:thim_mtb_layout\";i:52;s:24:\"meta:thim_mtb_no_padding\";i:53;s:30:\"meta:thim_mtb_hide_breadcrumbs\";i:54;s:29:\"meta:thim_mtb_color_sub_title\";i:55;s:16:\"meta:_lpr_course\";i:56;s:19:\"meta:_download_type\";i:57;s:25:\"meta:_min_variation_price\";i:58;s:25:\"meta:_max_variation_price\";i:59;s:33:\"meta:_min_variation_regular_price\";i:60;s:33:\"meta:_max_variation_regular_price\";i:61;s:30:\"meta:_min_variation_sale_price\";i:62;s:30:\"meta:_max_variation_sale_price\";i:63;s:28:\"meta:_min_price_variation_id\";i:64;s:28:\"meta:_max_price_variation_id\";i:65;s:36:\"meta:_min_regular_price_variation_id\";i:66;s:36:\"meta:_max_regular_price_variation_id\";i:67;s:33:\"meta:_min_sale_price_variation_id\";i:68;s:33:\"meta:_max_sale_price_variation_id\";}'),
(22, 1, 'POS_product_import_error_log', 'a:0:{}'),
(23, 1, 'wc_last_active', '1579651200'),
(24, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"3c59dc048e8850243be8079a5c74d079\";a:11:{s:3:\"key\";s:32:\"3c59dc048e8850243be8079a5c74d079\";s:10:\"product_id\";i:21;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:15;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:15;s:8:\"line_tax\";i:0;}}}'),
(25, 1, 'dismissed_no_shipping_methods_notice', '1'),
(26, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_users`
--

CREATE TABLE `pos_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_users`
--

INSERT INTO `pos_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$BPRZpvwBhsnM20cCzoDAGrMzBycM8x0', 'admin', 'eliasbarroapai2017@gmail.com', '', '2020-01-21 21:57:02', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_admin_notes`
--

CREATE TABLE `pos_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_wc_admin_notes`
--

INSERT INTO `pos_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'Novo(s) recurso(s)', 'Bem-vindo à nova experiência do WooCommerce! Neste novo lançamento, você poderá ter uma ideia de como sua loja está se saindo no painel, gerenciar aspectos importantes de seu negócio (como gerenciar pedidos, estoque, comentários) de qualquer lugar da interface, mergulhar nos dados da sua loja com uma seção completamente nova do Analytics e muito mais!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-22 15:47:43', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Conectar ao WooCommerce.com', 'Conecte-se para receber notificações e atualizações importantes do produto.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-01-22 15:47:46', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_admin_note_actions`
--

CREATE TABLE `pos_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_wc_admin_note_actions`
--

INSERT INTO `pos_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Saiba mais', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Conectar', '?page=wc-addons&section=helper', 'actioned', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_category_lookup`
--

CREATE TABLE `pos_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_wc_category_lookup`
--

INSERT INTO `pos_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_customer_lookup`
--

CREATE TABLE `pos_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_download_log`
--

CREATE TABLE `pos_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_order_coupon_lookup`
--

CREATE TABLE `pos_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_order_product_lookup`
--

CREATE TABLE `pos_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_order_stats`
--

CREATE TABLE `pos_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_order_tax_lookup`
--

CREATE TABLE `pos_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_product_meta_lookup`
--

CREATE TABLE `pos_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_wc_product_meta_lookup`
--

INSERT INTO `pos_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(14, '', 0, 0, '35.40', '35.40', 0, NULL, 'instock', 0, '0.00', 0),
(15, '', 0, 0, '11.80', '11.80', 0, NULL, 'instock', 0, '0.00', 0),
(16, '', 0, 0, '35.30', '35.30', 0, NULL, 'instock', 0, '0.00', 0),
(17, '', 0, 0, '35.00', '35.00', 0, NULL, 'instock', 0, '0.00', 0),
(18, '', 0, 0, '35.00', '35.00', 0, NULL, 'instock', 0, '0.00', 0),
(19, '', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(20, '', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(21, '', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(22, '', 0, 1, '9.60', '9.60', 0, NULL, 'instock', 0, '0.00', 0),
(23, '', 0, 1, '9.50', '9.50', 0, NULL, 'instock', 0, '0.00', 0),
(24, '', 0, 1, '9.00', '9.00', 0, NULL, 'instock', 0, '0.00', 0),
(25, '', 0, 0, '18.20', '18.20', 1, 2, 'instock', 0, '0.00', 0),
(26, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(27, '', 0, 0, '12.00', '12.00', 1, NULL, 'instock', 0, '0.00', 0),
(28, '', 0, 0, '20.10', '20.10', 0, NULL, 'instock', 0, '0.00', 0),
(29, '', 0, 0, '22.80', '22.80', 0, NULL, 'instock', 0, '0.00', 0),
(30, '', 0, 0, '18.30', '18.30', 0, NULL, 'instock', 0, '0.00', 0),
(31, '', 0, 0, '17.00', '17.00', 1, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_tax_rate_classes`
--

CREATE TABLE `pos_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_wc_tax_rate_classes`
--

INSERT INTO `pos_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taxa reduzida', 'taxa-reduzida'),
(2, 'Taxa zero', 'taxa-zero');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_wc_webhooks`
--

CREATE TABLE `pos_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_api_keys`
--

CREATE TABLE `pos_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_attribute_taxonomies`
--

CREATE TABLE `pos_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `pos_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_log`
--

CREATE TABLE `pos_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_order_itemmeta`
--

CREATE TABLE `pos_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_order_items`
--

CREATE TABLE `pos_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_payment_tokenmeta`
--

CREATE TABLE `pos_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_payment_tokens`
--

CREATE TABLE `pos_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_sessions`
--

CREATE TABLE `pos_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pos_woocommerce_sessions`
--

INSERT INTO `pos_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:8:{s:4:\"cart\";s:410:\"a:1:{s:32:\"3c59dc048e8850243be8079a5c74d079\";a:11:{s:3:\"key\";s:32:\"3c59dc048e8850243be8079a5c74d079\";s:10:\"product_id\";i:21;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:30;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:30;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:5:\"30.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"30.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"30.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:720:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"MA\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"MA\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:28:\"eliasbarroapai2017@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1579881067);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_shipping_zones`
--

CREATE TABLE `pos_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_shipping_zone_locations`
--

CREATE TABLE `pos_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_shipping_zone_methods`
--

CREATE TABLE `pos_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_tax_rates`
--

CREATE TABLE `pos_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_woocommerce_tax_rate_locations`
--

CREATE TABLE `pos_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pos_commentmeta`
--
ALTER TABLE `pos_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `pos_comments`
--
ALTER TABLE `pos_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Índices para tabela `pos_links`
--
ALTER TABLE `pos_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `pos_options`
--
ALTER TABLE `pos_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `pos_postmeta`
--
ALTER TABLE `pos_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `pos_posts`
--
ALTER TABLE `pos_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `pos_termmeta`
--
ALTER TABLE `pos_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `pos_terms`
--
ALTER TABLE `pos_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `pos_term_relationships`
--
ALTER TABLE `pos_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `pos_term_taxonomy`
--
ALTER TABLE `pos_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `pos_usermeta`
--
ALTER TABLE `pos_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `pos_users`
--
ALTER TABLE `pos_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices para tabela `pos_wc_admin_notes`
--
ALTER TABLE `pos_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Índices para tabela `pos_wc_admin_note_actions`
--
ALTER TABLE `pos_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Índices para tabela `pos_wc_category_lookup`
--
ALTER TABLE `pos_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Índices para tabela `pos_wc_customer_lookup`
--
ALTER TABLE `pos_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `pos_wc_download_log`
--
ALTER TABLE `pos_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Índices para tabela `pos_wc_order_coupon_lookup`
--
ALTER TABLE `pos_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Índices para tabela `pos_wc_order_product_lookup`
--
ALTER TABLE `pos_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Índices para tabela `pos_wc_order_stats`
--
ALTER TABLE `pos_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Índices para tabela `pos_wc_order_tax_lookup`
--
ALTER TABLE `pos_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Índices para tabela `pos_wc_product_meta_lookup`
--
ALTER TABLE `pos_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Índices para tabela `pos_wc_tax_rate_classes`
--
ALTER TABLE `pos_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Índices para tabela `pos_wc_webhooks`
--
ALTER TABLE `pos_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `pos_woocommerce_api_keys`
--
ALTER TABLE `pos_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Índices para tabela `pos_woocommerce_attribute_taxonomies`
--
ALTER TABLE `pos_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Índices para tabela `pos_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `pos_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Índices para tabela `pos_woocommerce_log`
--
ALTER TABLE `pos_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Índices para tabela `pos_woocommerce_order_itemmeta`
--
ALTER TABLE `pos_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Índices para tabela `pos_woocommerce_order_items`
--
ALTER TABLE `pos_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices para tabela `pos_woocommerce_payment_tokenmeta`
--
ALTER TABLE `pos_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Índices para tabela `pos_woocommerce_payment_tokens`
--
ALTER TABLE `pos_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `pos_woocommerce_sessions`
--
ALTER TABLE `pos_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Índices para tabela `pos_woocommerce_shipping_zones`
--
ALTER TABLE `pos_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Índices para tabela `pos_woocommerce_shipping_zone_locations`
--
ALTER TABLE `pos_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Índices para tabela `pos_woocommerce_shipping_zone_methods`
--
ALTER TABLE `pos_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Índices para tabela `pos_woocommerce_tax_rates`
--
ALTER TABLE `pos_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Índices para tabela `pos_woocommerce_tax_rate_locations`
--
ALTER TABLE `pos_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pos_commentmeta`
--
ALTER TABLE `pos_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_comments`
--
ALTER TABLE `pos_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `pos_links`
--
ALTER TABLE `pos_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_options`
--
ALTER TABLE `pos_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT de tabela `pos_postmeta`
--
ALTER TABLE `pos_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;

--
-- AUTO_INCREMENT de tabela `pos_posts`
--
ALTER TABLE `pos_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `pos_termmeta`
--
ALTER TABLE `pos_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pos_terms`
--
ALTER TABLE `pos_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pos_term_taxonomy`
--
ALTER TABLE `pos_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pos_usermeta`
--
ALTER TABLE `pos_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `pos_users`
--
ALTER TABLE `pos_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pos_wc_admin_notes`
--
ALTER TABLE `pos_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pos_wc_admin_note_actions`
--
ALTER TABLE `pos_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pos_wc_customer_lookup`
--
ALTER TABLE `pos_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_wc_download_log`
--
ALTER TABLE `pos_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_wc_tax_rate_classes`
--
ALTER TABLE `pos_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pos_wc_webhooks`
--
ALTER TABLE `pos_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_api_keys`
--
ALTER TABLE `pos_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_attribute_taxonomies`
--
ALTER TABLE `pos_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `pos_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_log`
--
ALTER TABLE `pos_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_order_itemmeta`
--
ALTER TABLE `pos_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_order_items`
--
ALTER TABLE `pos_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_payment_tokenmeta`
--
ALTER TABLE `pos_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_payment_tokens`
--
ALTER TABLE `pos_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_sessions`
--
ALTER TABLE `pos_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_shipping_zones`
--
ALTER TABLE `pos_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_shipping_zone_locations`
--
ALTER TABLE `pos_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_shipping_zone_methods`
--
ALTER TABLE `pos_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_tax_rates`
--
ALTER TABLE `pos_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pos_woocommerce_tax_rate_locations`
--
ALTER TABLE `pos_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pos_wc_download_log`
--
ALTER TABLE `pos_wc_download_log`
  ADD CONSTRAINT `fk_POS_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `pos_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
