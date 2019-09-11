-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 11 2019 г., 13:31
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bitrix`
--

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify`
--

CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_admin_notify`
--

INSERT INTO `b_admin_notify` (`ID`, `MODULE_ID`, `TAG`, `MESSAGE`, `ENABLE_CLOSE`, `PUBLIC_SECTION`, `NOTIFY_TYPE`) VALUES
(3, 'MAIN', 'SITE_CHECKER', 'Обнаружены ошибки в работе сайта. <a href=\"/bitrix/admin/site_checker.php?lang=ru&start_test=Y\">Проверить и исправить.</a>', 'Y', 'N', 'M');

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify_lang`
--

CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_agent`
--

CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_agent`
--

INSERT INTO `b_agent` (`ID`, `MODULE_ID`, `SORT`, `NAME`, `ACTIVE`, `LAST_EXEC`, `NEXT_EXEC`, `DATE_CHECK`, `AGENT_INTERVAL`, `IS_PERIOD`, `USER_ID`, `RUNNING`) VALUES
(1, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2019-09-10 14:35:57', '2019-09-10 14:36:57', NULL, 60, 'N', NULL, 'N'),
(2, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(3, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2019-09-10 12:34:26', '2019-09-11 12:34:26', NULL, 86400, 'N', NULL, 'N'),
(4, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2019-09-10 12:34:26', '2019-09-11 12:34:26', NULL, 86400, 'N', NULL, 'N'),
(5, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2019-09-10 12:34:26', '2019-09-11 12:34:26', NULL, 86400, 'N', NULL, 'N'),
(6, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2019-09-10 12:34:26', '2019-09-11 12:34:26', NULL, 86400, 'N', NULL, 'N'),
(7, 'main', 100, 'CUserCounter::DeleteOld();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(8, 'main', 100, '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(9, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(10, 'main', 100, 'CUser::CleanUpAgent();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(11, 'main', 100, 'CUser::DeactivateAgent();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(12, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(13, 'forum', 100, 'CForumStat::CleanUp();', 'Y', '2019-09-10 12:34:27', '2019-09-11 12:34:27', NULL, 86400, 'N', NULL, 'N'),
(14, 'forum', 100, 'CForumFiles::CleanUp();', 'Y', '2019-09-10 12:34:28', '2019-09-11 12:34:28', NULL, 86400, 'N', NULL, 'N'),
(15, 'landing', 100, 'Bitrix\\Landing\\Agent::clearRecycle();', 'Y', '2019-09-10 14:35:57', '2019-09-10 16:35:57', NULL, 7200, 'N', NULL, 'N'),
(16, 'landing', 100, 'Bitrix\\Landing\\Agent::clearFiles(30);', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(17, 'messageservice', 100, '\\Bitrix\\MessageService\\Queue::cleanUpAgent();', 'Y', '2019-09-10 12:57:42', '2019-09-11 00:00:00', NULL, 86400, 'Y', NULL, 'N'),
(18, 'rest', 100, 'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();', 'Y', '2019-09-10 12:34:29', '2019-09-11 12:34:29', NULL, 86400, 'N', NULL, 'N'),
(19, 'rest', 100, '\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();', 'Y', '2019-09-10 12:34:29', '2019-09-11 12:34:29', NULL, 86400, 'N', NULL, 'N'),
(20, 'rest', 100, '\\Bitrix\\Rest\\StatTable::cleanUpAgent();', 'Y', '2019-09-10 12:34:29', '2019-09-11 12:34:29', NULL, 86400, 'N', NULL, 'N'),
(21, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2019-09-10 12:34:31', '2019-09-11 12:34:31', NULL, 86400, 'N', NULL, 'N'),
(22, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2019-09-10 12:34:31', '2019-09-11 12:34:31', NULL, 86400, 'N', NULL, 'N'),
(23, 'security', 100, 'CSecuritySession::CleanUpAgent();', 'Y', '2019-09-10 14:11:57', '2019-09-10 14:41:57', NULL, 1800, 'N', NULL, 'N'),
(24, 'security', 100, 'CSecurityIPRule::CleanUpAgent();', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(25, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(26, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2019-09-10 12:34:29', '2019-09-11 12:34:29', NULL, 86400, 'N', NULL, 'N'),
(27, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(28, 'subscribe', 100, 'CSubscription::CleanUp();', 'Y', '2019-09-10 12:57:42', '2019-09-11 03:00:00', NULL, 86400, 'Y', NULL, 'N'),
(30, 'main', 100, 'CRatings::Calculate(3);', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N'),
(31, 'main', 100, 'CRatings::Calculate(4);', 'Y', '2019-09-10 14:35:57', '2019-09-10 15:35:57', NULL, 3600, 'N', NULL, 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_app_password`
--

CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_b24connector_buttons`
--

CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_bitrixcloud_option`
--

CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_bitrixcloud_option`
--

INSERT INTO `b_bitrixcloud_option` (`ID`, `NAME`, `SORT`, `PARAM_KEY`, `PARAM_VALUE`) VALUES
(1, 'backup_quota', 0, '0', '0'),
(2, 'backup_total_size', 0, '0', '0'),
(3, 'backup_last_backup_time', 0, '0', '1567601498'),
(4, 'monitoring_expire_time', 0, '0', '1568108849');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog`
--

CREATE TABLE `b_blog` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` int(11) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REAL_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_IMG_VERIF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLE_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_POST_ID` int(11) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `AUTO_GROUPS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SEARCH_INDEX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_SOCNET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EDITOR_USE_FONT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_LINK` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_VIDEO` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_FORMAT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_category`
--

CREATE TABLE `b_blog_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_comment`
--

CREATE TABLE `b_blog_comment` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHARE_DEST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_group`
--

CREATE TABLE `b_blog_group` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_image`
--

CREATE TABLE `b_blog_image` (
  `ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL DEFAULT '0',
  `BLOG_ID` int(11) NOT NULL DEFAULT '0',
  `POST_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_SIZE` int(11) NOT NULL DEFAULT '0',
  `IS_COMMENT` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMMENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post`
--

CREATE TABLE `b_blog_post` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_TEXT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PUBLISH` datetime NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `CATEGORY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATRIBUTE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_TRACKBACK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `NUM_COMMENTS` int(11) NOT NULL DEFAULT '0',
  `NUM_COMMENTS_ALL` int(11) NOT NULL DEFAULT '0',
  `NUM_TRACKBACKS` int(11) NOT NULL DEFAULT '0',
  `VIEWS` int(11) DEFAULT NULL,
  `FAVORITE_SORT` int(11) DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MICRO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAS_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_TAGS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_COMMENT_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_SOCNET_ALL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post_category`
--

CREATE TABLE `b_blog_post_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post_param`
--

CREATE TABLE `b_blog_post_param` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_site_path`
--

CREATE TABLE `b_blog_site_path` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_socnet`
--

CREATE TABLE `b_blog_socnet` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_socnet_rights`
--

CREATE TABLE `b_blog_socnet_rights` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_trackback`
--

CREATE TABLE `b_blog_trackback` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_DATE` datetime NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user`
--

CREATE TABLE `b_blog_user` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ALIAS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `AVATAR` int(11) DEFAULT NULL,
  `INTERESTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DATE_REG` datetime NOT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_user`
--

INSERT INTO `b_blog_user` (`ID`, `USER_ID`, `ALIAS`, `DESCRIPTION`, `AVATAR`, `INTERESTS`, `LAST_VISIT`, `DATE_REG`, `ALLOW_POST`) VALUES
(1, 2, '', '', NULL, '', NULL, '2019-09-06 15:19:04', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user2blog`
--

CREATE TABLE `b_blog_user2blog` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user2user_group`
--

CREATE TABLE `b_blog_user2user_group` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user_group`
--

CREATE TABLE `b_blog_user_group` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_user_group`
--

INSERT INTO `b_blog_user_group` (`ID`, `BLOG_ID`, `NAME`) VALUES
(1, NULL, 'all'),
(2, NULL, 'registered');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user_group_perms`
--

CREATE TABLE `b_blog_user_group_perms` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `PERMS_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `POST_ID` int(11) DEFAULT NULL,
  `PERMS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `AUTOSET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_cache_tag`
--

CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_cache_tag`
--

INSERT INTO `b_cache_tag` (`SITE_ID`, `CACHE_SALT`, `RELATIVE_PATH`, `TAG`) VALUES
(NULL, NULL, '0:1568105862', '**'),
('s1', '/e25', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/e2a', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/152', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/6f8', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/e25', '/s1/bitrix/news.list/e25', 'iblock_id_1'),
('s1', '/e25', '/s1/bitrix/news.detail/e25', 'iblock_id_1'),
('s1', '/d47', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/50b', '/s1/bitrix/menu/06f', 'bitrix:menu');

-- --------------------------------------------------------

--
-- Структура таблицы `b_captcha`
--

CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_checklist`
--

CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_bucket`
--

CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` float DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_resize`
--

CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_upload`
--

CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_component_params`
--

CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_component_params`
--

INSERT INTO `b_component_params` (`ID`, `SITE_ID`, `COMPONENT_NAME`, `TEMPLATE_NAME`, `REAL_PATH`, `SEF_MODE`, `SEF_FOLDER`, `START_CHAR`, `END_CHAR`, `PARAMETERS`) VALUES
(23, 's1', 'local:news', '', '/index.php', 'N', NULL, 274, 2562, 'a:72:{s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:13:\"BROWSER_TITLE\";s:1:\"-\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:25:\"DETAIL_ACTIVE_DATE_FORMAT\";s:0:\"\";s:27:\"DETAIL_DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:24:\"DETAIL_DISPLAY_TOP_PAGER\";s:1:\"N\";s:17:\"DETAIL_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:21:\"DETAIL_PAGER_SHOW_ALL\";s:1:\"Y\";s:21:\"DETAIL_PAGER_TEMPLATE\";s:0:\"\";s:18:\"DETAIL_PAGER_TITLE\";s:16:\"Страница\";s:20:\"DETAIL_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:17:\"DISPLAY_AS_RATING\";s:6:\"rating\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:0:\"\";s:11:\"IBLOCK_TYPE\";s:8:\"services\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:23:\"LIST_ACTIVE_DATE_FORMAT\";s:0:\"\";s:15:\"LIST_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:18:\"LIST_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:8:\"MAX_VOTE\";s:1:\"5\";s:14:\"MEDIA_PROPERTY\";s:0:\"\";s:11:\"MESSAGE_404\";s:0:\"\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:8:\"SEF_MODE\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:15:\"SLIDER_PROPERTY\";s:0:\"\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:14:\"TEMPLATE_THEME\";s:4:\"blue\";s:14:\"USE_CATEGORIES\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:10:\"USE_RATING\";s:1:\"N\";s:10:\"USE_REVIEW\";s:1:\"N\";s:7:\"USE_RSS\";s:1:\"N\";s:10:\"USE_SEARCH\";s:1:\"N\";s:9:\"USE_SHARE\";s:1:\"N\";s:16:\"VARIABLE_ALIASES\";a:2:{s:10:\"ELEMENT_ID\";s:10:\"ELEMENT_ID\";s:10:\"SECTION_ID\";s:10:\"SECTION_ID\";}s:10:\"VOTE_NAMES\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:0:\"\";}}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_log`
--

CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_page`
--

CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_agreement`
--

CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_field`
--

CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_user_consent`
--

CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_counter_data`
--

CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_culture`
--

CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_culture`
--

INSERT INTO `b_culture` (`ID`, `CODE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`) VALUES
(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y'),
(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event`
--

CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_attachment`
--

CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_log`
--

CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_log`
--

INSERT INTO `b_event_log` (`ID`, `TIMESTAMP_X`, `SEVERITY`, `AUDIT_TYPE_ID`, `MODULE_ID`, `ITEM_ID`, `REMOTE_ADDR`, `USER_AGENT`, `REQUEST_URI`, `SITE_ID`, `USER_ID`, `GUEST_ID`, `DESCRIPTION`) VALUES
(1, '2019-09-05 09:02:23', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', NULL, NULL, ''),
(2, '2019-09-05 09:41:59', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes', 's1', 1, NULL, NULL),
(3, '2019-09-05 09:43:29', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(4, '2019-09-05 09:51:35', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(5, '2019-09-05 09:51:52', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(6, '2019-09-05 09:52:38', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(7, '2019-09-05 09:53:05', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(8, '2019-09-05 09:53:28', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(9, '2019-09-05 09:54:36', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(10, '2019-09-05 10:32:26', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(11, '2019-09-05 11:22:43', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(12, '2019-09-05 11:51:32', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(13, '2019-09-05 11:57:10', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(14, '2019-09-05 12:21:04', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&id=1&vote=-', 's1', 1, NULL, NULL),
(15, '2019-09-05 12:21:45', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(16, '2019-09-06 09:38:35', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', NULL, NULL, ''),
(17, '2019-09-06 10:21:34', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes', 's1', 1, NULL, NULL),
(18, '2019-09-06 10:29:10', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(19, '2019-09-06 10:29:23', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:9:\"index.php\";}'),
(20, '2019-09-06 11:18:38', 'SECURITY', 'USER_REGISTER_FAIL', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/auth/?register=yes&backurl=%2Fpersonal%2Fprofile%2F', 's1', NULL, NULL, 'Слово для защиты от автоматической регистрации введено неверно<br>'),
(21, '2019-09-06 11:18:49', 'SECURITY', 'USER_REGISTER_FAIL', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/auth/?register=yes&backurl=%2Fpersonal%2Fprofile%2F', 's1', NULL, NULL, 'Слово для защиты от автоматической регистрации введено неверно<br>'),
(22, '2019-09-06 11:18:57', 'SECURITY', 'USER_REGISTER', 'main', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/auth/?register=yes&backurl=%2Fpersonal%2Fprofile%2F', 's1', NULL, NULL, 'a:1:{s:4:\"user\";s:13:\"Dmitry Efimov\";}'),
(23, '2019-09-06 11:18:57', 'SECURITY', 'USER_AUTHORIZE', 'main', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/auth/?register=yes&backurl=%2Fpersonal%2Fprofile%2F', 's1', 2, NULL, NULL),
(24, '2019-09-06 11:27:50', 'SECURITY', 'USER_LOGOUT', 'main', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?ELEMENT_ID=56&logout=yes&logout_butt=%D0%92%D1%8B%D0%B9%D1%82%D0%B8', 's1', NULL, NULL, NULL),
(25, '2019-09-06 11:27:53', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 1, NULL, NULL),
(26, '2019-09-06 11:28:10', 'SECURITY', 'USER_AUTHORIZE', 'main', '2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 2, NULL, NULL),
(27, '2019-09-06 11:28:20', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 1, NULL, NULL),
(28, '2019-09-06 11:29:38', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 1, NULL, NULL),
(29, '2019-09-06 11:32:10', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 1, NULL, NULL),
(30, '2019-09-10 08:34:26', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', NULL, NULL, ''),
(31, '2019-09-10 09:17:17', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '/?login=yes&ELEMENT_ID=56', 's1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message`
--

CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message`
--

INSERT INTO `b_event_message` (`ID`, `TIMESTAMP_X`, `EVENT_NAME`, `LID`, `ACTIVE`, `EMAIL_FROM`, `EMAIL_TO`, `SUBJECT`, `MESSAGE`, `MESSAGE_PHP`, `BODY_TYPE`, `BCC`, `REPLY_TO`, `CC`, `IN_REPLY_TO`, `PRIORITY`, `FIELD1_NAME`, `FIELD1_VALUE`, `FIELD2_NAME`, `FIELD2_VALUE`, `SITE_TEMPLATE_ID`, `ADDITIONAL_FIELD`, `LANGUAGE_ID`) VALUES
(1, '2019-09-04 11:22:01', 'NEW_USER', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(2, '2019-09-04 11:22:02', 'USER_INFO', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(3, '2019-09-04 11:22:02', 'USER_PASS_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(4, '2019-09-04 11:22:02', 'USER_PASS_CHANGED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(5, '2019-09-04 11:22:02', 'NEW_USER_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(6, '2019-09-04 11:22:02', 'USER_INVITE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(7, '2019-09-04 11:22:02', 'FEEDBACK_FORM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(8, '2019-09-04 11:22:02', 'MAIN_MAIL_CONFIRM_CODE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#MESSAGE_SUBJECT#', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_join', NULL, NULL),
(9, '2019-09-04 11:24:53', 'NEW_BLOG_MESSAGE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #BLOG_NAME# : #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение в блоге \"#BLOG_NAME#\"\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\nДата: #MESSAGE_DATE#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\"\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-09-04 11:24:53', 'NEW_BLOG_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-09-04 11:24:54', 'NEW_BLOG_COMMENT2COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-09-04 11:24:54', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-09-04 11:24:54', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-09-04 11:24:54', 'BLOG_YOUR_BLOG_TO_USER', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Ваш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВаш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВаш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен в друзья к <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-09-04 11:24:54', 'BLOG_YOU_TO_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Вы были добавлены в друзья блога \"#BLOG_NAME#\"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы были добавлены в друзья блога \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы были добавлены в друзья блога \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-09-04 11:24:54', 'BLOG_BLOG_TO_YOU', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] К вам в друзья был добавлен блог \"#BLOG_NAME#\"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nК вам в друзья был добавлен блог \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nК вам в друзья был добавлен блог \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-09-04 11:24:54', 'BLOG_USER_TO_YOUR_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] В ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВ ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВ ваш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен друг <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2019-09-04 11:24:54', 'BLOG_SONET_NEW_POST', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(19, '2019-09-04 11:24:54', 'BLOG_SONET_NEW_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', 'Re: #POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{#COMMENT_ID#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{$arParams[\'COMMENT_ID\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(20, '2019-09-04 11:24:54', 'BLOG_SONET_POST_SHARE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(21, '2019-09-04 11:24:54', 'BLOG_POST_BROADCAST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2019-09-04 11:26:30', 'NEW_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2019-09-04 11:26:30', 'NEW_FORUM_PRIV', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME# #FROM_EMAIL#\nДата : #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?> <?=$arParams[\"FROM_EMAIL\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2019-09-04 11:26:30', 'NEW_FORUM_PRIVATE_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME#\nДата: #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСсылка на сообщение: #MESSAGE_LINK#Сообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСсылка на сообщение: <?=$arParams[\"MESSAGE_LINK\"];?>Сообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2019-09-04 11:26:30', 'EDIT_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nИзменение сообщения на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nИзменение сообщения на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2019-09-04 11:26:31', 'FORUM_NEW_MESSAGE_MAIL', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#TOPIC_TITLE#', '#MESSAGE_TEXT#\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум #FORUM_NAME#.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nНаписать новое сообщение: #FORUM_EMAIL#\n\nАвтор сообщения: #AUTHOR#\n\nСообщение сгенерировано автоматически на сайте #SITE_NAME#.\n', '<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум <?=$arParams[\"FORUM_NAME\"];?>.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nНаписать новое сообщение: <?=$arParams[\"FORUM_EMAIL\"];?>\n\n\nАвтор сообщения: <?=$arParams[\"AUTHOR\"];?>\n\n\nСообщение сгенерировано автоматически на сайте <?=$arParams[\"SITE_NAME\"];?>.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2019-09-04 11:44:55', 'VIRUS_DETECTED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Обнаружен вирус', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера #SERVER_NAME# обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера <?=$arParams[\"SERVER_NAME\"];?> обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2019-09-04 11:45:15', 'SUBSCRIBE_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение подписки', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE_SUBSCR#\n\nВаш код для подтверждения подписки: #CONFIRM_CODE#\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nОтписаться:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams[\"SERVER_NAME\"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams[\"EMAIL\"];?>\n\nДата добавления/редактирования .... <?=$arParams[\"DATE_SUBSCR\"];?>\n\n\nВаш код для подтверждения подписки: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nОтписаться:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2019-09-04 11:45:34', 'VOTE_FOR', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [V] #VOTE_TITLE#', '#USER_NAME# принял участие в опросе \"#VOTE_TITLE#\":\n#VOTE_STATISTIC#\n\nhttp://#SERVER_NAME##URL#\nСообщение сгенерировано автоматически.', '<?=$arParams[\"USER_NAME\"];?> принял участие в опросе \"<?=$arParams[\"VOTE_TITLE\"];?>\":\n<?=$arParams[\"VOTE_STATISTIC\"];?>\n\n\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"URL\"];?>\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_attachment`
--

CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_site`
--

CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message_site`
--

INSERT INTO `b_event_message_site` (`EVENT_MESSAGE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1'),
(6, 's1'),
(7, 's1'),
(8, 's1'),
(9, 's1'),
(10, 's1'),
(11, 's1'),
(12, 's1'),
(13, 's1'),
(14, 's1'),
(15, 's1'),
(16, 's1'),
(17, 's1'),
(18, 's1'),
(19, 's1'),
(20, 's1'),
(21, 's1'),
(22, 's1'),
(23, 's1'),
(24, 's1'),
(25, 's1'),
(26, 's1'),
(27, 's1'),
(28, 's1'),
(29, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_type`
--

CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_type`
--

INSERT INTO `b_event_type` (`ID`, `LID`, `EVENT_NAME`, `NAME`, `DESCRIPTION`, `SORT`, `EVENT_TYPE`) VALUES
(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1, 'email'),
(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2, 'email'),
(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3, 'email'),
(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4, 'email'),
(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5, 'email'),
(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6, 'email'),
(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7, 'email'),
(8, 'ru', 'MAIN_MAIL_CONFIRM_CODE', 'Подтверждение email-адреса отправителя', '\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения', 8, 'email'),
(9, 'ru', 'SMS_USER_CONFIRM_NUMBER', 'Подтверждение номера телефона по СМС', '#USER_PHONE# - номер телефона\r\n#CODE# - код подтверждения\r\n', 100, 'sms'),
(10, 'ru', 'SMS_USER_RESTORE_PASSWORD', 'Восстановление пароля через СМС', '#USER_PHONE# - номер телефона\r\n#CODE# - код для восстановления\r\n', 100, 'sms'),
(11, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1, 'email'),
(12, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2, 'email'),
(13, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3, 'email'),
(14, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4, 'email'),
(15, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5, 'email'),
(16, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6, 'email'),
(17, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7, 'email'),
(18, 'en', 'MAIN_MAIL_CONFIRM_CODE', 'Confirm sender\'s email address', '\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code', 8, 'email'),
(19, 'en', 'SMS_USER_CONFIRM_NUMBER', 'Verify phone number using SMS', '#USER_PHONE# - phone number\n#CODE# - confirmation code', 100, 'sms'),
(20, 'en', 'SMS_USER_RESTORE_PASSWORD', 'Recover password using SMS', '#USER_PHONE# - phone number\n#CODE# - recovery confirmation code', 100, 'sms'),
(21, 'ru', 'NEW_BLOG_MESSAGE', 'Новое сообщение в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_DATE# - Дата сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(22, 'ru', 'NEW_BLOG_COMMENT', 'Новый комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(23, 'ru', 'NEW_BLOG_COMMENT2COMMENT', 'Новый комментарий на ваш комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(24, 'ru', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'Новый комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(25, 'ru', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'Новый комментарий на ваш комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(26, 'ru', 'BLOG_YOUR_BLOG_TO_USER', 'Ваш блог был добавлен в друзья', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(27, 'ru', 'BLOG_YOU_TO_BLOG', 'Вы были добавлены в друзья блога', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(28, 'ru', 'BLOG_BLOG_TO_YOU', 'К вам в друзья был добавлен блог', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(29, 'ru', 'BLOG_USER_TO_YOUR_BLOG', 'В ваш блог был добавлен друг', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(30, 'ru', 'BLOG_SONET_NEW_POST', 'Добавлено новое сообщение', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(31, 'ru', 'BLOG_SONET_NEW_COMMENT', 'Добавлен новый комментарий', '#EMAIL_TO# - Email получателя письма\n#COMMENT_ID# - ID комментария\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(32, 'ru', 'BLOG_SONET_POST_SHARE', 'Добавлен новый получатель сообщения', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(33, 'ru', 'BLOG_POST_BROADCAST', 'Добавлено новое сообщение', '\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(34, 'en', 'NEW_BLOG_MESSAGE', 'New blog message', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#MESSAGE_TEXT# - Message text\n#MESSAGE_DATE# - Message date\n#MESSAGE_PATH# - URL to message\n#AUTHOR# - Message author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(35, 'en', 'NEW_BLOG_COMMENT', 'New comment in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(36, 'en', 'NEW_BLOG_COMMENT2COMMENT', 'New comment for your in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(37, 'en', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'New comment in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(38, 'en', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'New comment for your in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(39, 'en', 'BLOG_YOUR_BLOG_TO_USER', 'Your blog has been added to friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(40, 'en', 'BLOG_YOU_TO_BLOG', 'You have been added to blog friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(41, 'en', 'BLOG_BLOG_TO_YOU', 'A blog has been added to your friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(42, 'en', 'BLOG_USER_TO_YOUR_BLOG', 'A friend has been added to your blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(43, 'en', 'BLOG_SONET_NEW_POST', 'New post added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(44, 'en', 'BLOG_SONET_NEW_COMMENT', 'Comment added', '#EMAIL_TO# - Recipient email\n#COMMENT_ID# - Comment ID\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(45, 'en', 'BLOG_SONET_POST_SHARE', 'New recipient added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(46, 'en', 'BLOG_POST_BROADCAST', 'New post added', '\n#MESSAGE_TITLE# - Post subject\n#MESSAGE_TEXT# - Post text \n#MESSAGE_PATH# - Post URL\n#AUTHOR# - Post author\n#EMAIL_TO# - E-mail recipient', 100, 'email'),
(47, 'ru', 'NEW_FORUM_MESSAGE', 'Новое сообщение на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100, 'email'),
(48, 'ru', 'NEW_FORUM_PRIV', 'Приватное письмо посетителю форума', '\n			#FROM_NAME# - Автор сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Тело сообщения\n			#MESSAGE_DATE# - Дата сообщения', 100, 'email'),
(49, 'ru', 'NEW_FORUM_PRIVATE_MESSAGE', 'Приватное сообщение', '\n			#FROM_NAME# - Имя автора сообщения\n			#FROM_USER_ID# - ID автора сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_USER_ID# - ID получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#MESSAGE_LINK# - Ссылка на сообщение', 100, 'email'),
(50, 'ru', 'EDIT_FORUM_MESSAGE', 'Изменение сообщения на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100, 'email'),
(51, 'en', 'NEW_FORUM_MESSAGE', 'New forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100, 'email'),
(52, 'en', 'NEW_FORUM_PRIV', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date', 100, 'email'),
(53, 'en', 'NEW_FORUM_PRIVATE_MESSAGE', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_USER_ID# - ID of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_USER_ID# - ID of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date\n			#MESSAGE_LINK# - Link to message', 100, 'email'),
(54, 'en', 'EDIT_FORUM_MESSAGE', 'Changing forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100, 'email'),
(55, 'ru', 'FORUM_NEW_MESSAGE_MAIL', 'Новое сообщение на форуме в режиме общения по E-Mail', '#FORUM_NAME# - Название форума\n#AUTHOR# - Автор сообщения\n#FROM_EMAIL# - E-Mail для поля From письма\n#RECIPIENT# - Получатель сообщения\n#TOPIC_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#PATH2FORUM# - Адрес сообщения\n#MESSAGE_DATE# - Дата сообщения\n#FORUM_EMAIL# - Е-Mail адрес для добавления сообщений на форум\n#FORUM_ID# - ID форума\n#TOPIC_ID# - ID темы \n#MESSAGE_ID# - ID сообщения\n#TAPPROVED# - Тема опубликована\n#MAPPROVED# - Сообщение опубликовано\n', 100, 'email'),
(56, 'en', 'FORUM_NEW_MESSAGE_MAIL', 'New message at the forum (e-mail messaging mode)', '#FORUM_NAME# - Forum name\n#AUTHOR# - Message author\n#FROM_EMAIL# - E-Mail in the &amp;From&amp; field\n#RECIPIENT# - Message recipient\n#TOPIC_TITLE# - Message subject\n#MESSAGE_TEXT# - Message text\n#PATH2FORUM# - Message URL\n#MESSAGE_DATE# - Message date\n#FORUM_EMAIL# - E-Mail to add messages to the forum \n#FORUM_ID# - Forum ID\n#TOPIC_ID# - Topic ID \n#MESSAGE_ID# - Message ID\n#TAPPROVED# - Topic approved and published\n#MAPPROVED# - Message approved and published\n', 100, 'email'),
(57, 'ru', 'VIRUS_DETECTED', 'Обнаружен вирус', '#EMAIL# - E-Mail администратора сайта (из настроек главного модуля)', 100, 'email'),
(58, 'en', 'VIRUS_DETECTED', 'Virus detected', '#EMAIL# - Site administrator\'s e-mail address (from the Kernel module settings)', 100, 'email'),
(59, 'ru', 'SUBSCRIBE_CONFIRM', 'Подтверждение подписки', '#ID# - идентификатор подписки\n#EMAIL# - адрес подписки\n#CONFIRM_CODE# - код подтверждения\n#SUBSCR_SECTION# - раздел, где находится страница редактирования подписки (задается в настройках)\n#USER_NAME# - имя подписчика (может отсутствовать)\n#DATE_SUBSCR# - дата добавления/изменения адреса\n', 100, 'email'),
(60, 'en', 'SUBSCRIBE_CONFIRM', 'Confirmation of subscription', '#ID# - subscription ID\n#EMAIL# - subscription email\n#CONFIRM_CODE# - confirmation code\n#SUBSCR_SECTION# - section with subscription edit page (specifies in the settings)\n#USER_NAME# - subscriber\'s name (optional)\n#DATE_SUBSCR# - date of adding/change of address\n', 100, 'email'),
(61, 'ru', 'VOTE_FOR', 'Новый голос', '#ID# - ID результата голосования\n#TIME# - время голосования\n#VOTE_TITLE# - наименование опроса\n#VOTE_DESCRIPTION# - описание опроса\n#VOTE_ID# - ID опроса\n#CHANNEL# - наименование группы опроса\n#CHANNEL_ID# - ID группы опроса\n#VOTER_ID# - ID проголосовавшего посетителя\n#USER_NAME# - ФИО пользователя\n#LOGIN# - логин\n#USER_ID# - ID пользователя\n#STAT_GUEST_ID# - ID посетителя модуля статистики\n#SESSION_ID# - ID сессии модуля статистики\n#IP# - IP адрес\n#VOTE_STATISTIC# - Сводная статистика опроса типа ( - Вопрос - Ответ )\n#URL# - Путь к опросу\n', 100, 'email'),
(62, 'en', 'VOTE_FOR', 'New vote', '#ID# - Vote result ID\n#TIME# - Time of vote\n#VOTE_TITLE# - Poll name\n#VOTE_DESCRIPTION# - Poll description\n#VOTE_ID# - Poll ID\n#CHANNEL# - Poll group name\n#CHANNEL_ID# - Poll group ID\n#VOTER_ID# - Voter\'s user ID\n#USER_NAME# - User full name\n#LOGIN# - login\n#USER_ID# - User ID\n#STAT_GUEST_ID# - Visitor ID in web analytics module\n#SESSION_ID# - Session ID in web analytics module\n#IP# - IP address\n#VOTE_STATISTIC# - Summary statistics of this poll type ( - Question - Answer)\n#URL# - Poll URL', 100, 'email');

-- --------------------------------------------------------

--
-- Структура таблицы `b_favorite`
--

CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file`
--

CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file`
--

INSERT INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
(1, '2019-09-04 12:49:44', 'fileman', 760, 505, 421037, 'image/jpeg', 'medialibrary/319', 'ml01.jpg', 'ml01.jpg', '', NULL, 'ecb57c8ba83501c0692f501664beea04'),
(2, '2019-09-04 12:49:45', 'fileman', 498, 318, 34671, 'image/jpeg', 'medialibrary/0ff', 'ml02.jpg', 'ml02.jpg', '', NULL, 'd506b7f45f980e57d7751ee3035a3cb3'),
(3, '2019-09-04 12:49:45', 'fileman', 760, 467, 242245, 'image/jpeg', 'medialibrary/cb3', 'ml03.jpg', 'ml03.jpg', '', NULL, '5af469cbeac8bf663a433208b8610b60'),
(4, '2019-09-04 12:49:45', 'fileman', 760, 505, 323881, 'image/jpeg', 'medialibrary/040', 'ml04.jpg', 'ml04.jpg', '', NULL, '75d386ad0add7f862324b7649f4f60b3'),
(5, '2019-09-04 12:49:45', 'fileman', 760, 518, 244377, 'image/jpeg', 'medialibrary/3b3', 'ml05.jpg', 'ml05.jpg', '', NULL, '2b75ad4e2598db38ddc994cf26fc4fde'),
(6, '2019-09-04 12:49:45', 'fileman', 499, 314, 82373, 'image/jpeg', 'medialibrary/bc0', 'ml06.jpg', 'ml06.jpg', '', NULL, 'dc41588e00afe5e77d95de4b22542343'),
(7, '2019-09-04 12:49:45', 'fileman', 499, 332, 73852, 'image/jpeg', 'medialibrary/315', 'ml07.jpg', 'ml07.jpg', '', NULL, 'f116655f3bcb3a6dc199de5e600d9174'),
(8, '2019-09-04 12:49:45', 'fileman', 760, 567, 369764, 'image/jpeg', 'medialibrary/b35', 'ml08.jpg', 'ml08.jpg', '', NULL, 'b40fc3b2ab81b844227840a805b36579'),
(9, '2019-09-04 12:49:45', 'fileman', 500, 352, 59599, 'image/jpeg', 'medialibrary/07a', 'ml09.jpg', 'ml09.jpg', '', NULL, '9acb593610734cb68522c20350693b01'),
(10, '2019-09-04 12:49:46', 'fileman', 600, 432, 197294, 'image/jpeg', 'medialibrary/613', 'ml10.jpg', 'ml10.jpg', '', NULL, '2a1411eae6efbb1585370a2575fd121f'),
(13, '2019-09-05 10:12:41', 'iblock', 436, 570, 243487, 'image/png', 'iblock/8e9', 'zastavja_570x0_4a2.png', 'zastavja_570x0_4a2.png', '', NULL, '1953534322e51cf603467c19a7c17084'),
(14, '2019-09-05 10:12:41', 'iblock', 436, 570, 243487, 'image/png', 'iblock/bf2', 'zastavja_570x0_4a2.png', 'zastavja_570x0_4a2.png', '', NULL, '91cdd94e367b13ffc423cc955fdb99a6');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_preview`
--

CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_search`
--

CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_filters`
--

CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_finder_dest`
--

CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form`
--

CREATE TABLE `b_form` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BUTTON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FORM_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_DEFAULT_TEMPLATE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHOW_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRINT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `TABLE_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_RESTRICTIONS` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `RESTRICT_USER` int(5) DEFAULT '0',
  `RESTRICT_TIME` int(10) DEFAULT '0',
  `RESTRICT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_group`
--

CREATE TABLE `b_form_2_group` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_mail_template`
--

CREATE TABLE `b_form_2_mail_template` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_site`
--

CREATE TABLE `b_form_2_site` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_answer`
--

CREATE TABLE `b_form_answer` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm`
--

CREATE TABLE `b_form_crm` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AUTH_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm_field`
--

CREATE TABLE `b_form_crm_field` (
  `ID` int(18) NOT NULL,
  `LINK_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) DEFAULT '0',
  `FIELD_ALT` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `CRM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm_link`
--

CREATE TABLE `b_form_crm_link` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `CRM_ID` int(18) NOT NULL DEFAULT '0',
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field`
--

CREATE TABLE `b_form_field` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` text COLLATE utf8_unicode_ci,
  `TITLE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ADDITIONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_RESULTS_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_EXCEL_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FIELD_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `FILTER_TITLE` text COLLATE utf8_unicode_ci,
  `RESULTS_TABLE_TITLE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field_filter`
--

CREATE TABLE `b_form_field_filter` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `PARAMETER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field_validator`
--

CREATE TABLE `b_form_field_validator` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'y',
  `C_SORT` int(18) DEFAULT '100',
  `VALIDATOR_SID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PARAMS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_menu`
--

CREATE TABLE `b_form_menu` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_result`
--

CREATE TABLE `b_form_result` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `USER_ID` int(18) DEFAULT NULL,
  `USER_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `SENT_TO_CRM` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_result_answer`
--

CREATE TABLE `b_form_result_answer` (
  `ID` int(18) NOT NULL,
  `RESULT_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) DEFAULT NULL,
  `ANSWER_TEXT` text COLLATE utf8_unicode_ci,
  `ANSWER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `ANSWER_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANSWER_VALUE_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_DATE` datetime DEFAULT NULL,
  `USER_FILE_ID` int(18) DEFAULT NULL,
  `USER_FILE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_IS_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_HASH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SUFFIX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SIZE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status`
--

CREATE TABLE `b_form_status` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DEFAULT_VALUE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CSS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'statusgreen',
  `HANDLER_OUT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_IN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status_2_group`
--

CREATE TABLE `b_form_status_2_group` (
  `ID` int(18) NOT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status_2_mail_template`
--

CREATE TABLE `b_form_status_2_mail_template` (
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum`
--

CREATE TABLE `b_forum` (
  `ID` int(10) NOT NULL,
  `FORUM_GROUP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(10) NOT NULL DEFAULT '150',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ANCHOR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_BIU` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_IMG` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_VIDEO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_QUOTE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_FONT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ALIGN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD_EXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_MOVE_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_TOPIC_TITLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_NL2BR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_SIGNATURE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PATH2FORUM_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASK_GUEST_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DEDUPLICATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODERATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ORDER_BY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `ORDER_DIRECTION` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DESC',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `TOPICS` int(11) NOT NULL DEFAULT '0',
  `POSTS` int(11) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(11) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(11) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'forum',
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'message',
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum2site`
--

CREATE TABLE `b_forum2site` (
  `FORUM_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH2FORUM_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_dictionary`
--

CREATE TABLE `b_forum_dictionary` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_dictionary`
--

INSERT INTO `b_forum_dictionary` (`ID`, `TITLE`, `TYPE`) VALUES
(1, '[ru] Словарь слов', 'W'),
(2, '[ru] Словарь транслита', 'T'),
(3, '[en] Bad words', 'W'),
(4, '[en] Transliteration', 'T');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_email`
--

CREATE TABLE `b_forum_email` (
  `ID` int(11) NOT NULL,
  `EMAIL_FORUM_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FORUM_ID` int(11) NOT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `MAIL_FILTER_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USE_EMAIL` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT_SUF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SUBJECT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TEMPLATES_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOT_MEMBER_POST` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_file`
--

CREATE TABLE `b_forum_file` (
  `ID` int(18) NOT NULL,
  `FORUM_ID` int(18) DEFAULT NULL,
  `TOPIC_ID` int(20) DEFAULT NULL,
  `MESSAGE_ID` int(20) DEFAULT NULL,
  `FILE_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `HITS` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_filter`
--

CREATE TABLE `b_forum_filter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT NULL,
  `WORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN` text COLLATE utf8_unicode_ci,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `USE_IT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN_CREATE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_filter`
--

INSERT INTO `b_forum_filter` (`ID`, `DICTIONARY_ID`, `WORDS`, `PATTERN`, `REPLACEMENT`, `DESCRIPTION`, `USE_IT`, `PATTERN_CREATE`) VALUES
(1, 1, '*пизд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(2, 1, '*пизж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(3, 1, '*сра%', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([СсCc]+)([РрPpRr]+)([АаAa]+)([[Цц]+([Аа]+|[Оо]+)]+|[[Тт]+([Ьь]+|)[Сс]+[Яя]+]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(4, 1, 'анобляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([АаAa]+)([НнNn]+)([ОоOo]+)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(5, 1, 'взъеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвVv]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(6, 1, 'бля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(7, 1, 'долбоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([ОоOo]+)([ЛлLl]+)([БбBb]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(8, 1, 'дуроеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([УуUu]+)([РрPpRr]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(9, 1, 'еби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(10, 1, 'ебисти*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)([ТтTt]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(11, 1, 'ебическ*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([Чч]+)([ЁёЕеEe]+)([СсCc]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(12, 1, 'еблив*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ИиIi]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(13, 1, 'ебло*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ОоOo]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(14, 1, 'еблыс*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Ыы]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(15, 1, 'ебля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(16, 1, 'ебс', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([СсCc]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(17, 1, 'ебукент*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([КкKk]+)([ЁёЕеEe]+)([НнNn]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(18, 1, 'ебурген*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([РрPpRr]+)([Гг]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(19, 1, 'коноебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([КкKk]+)([ОоOo]+)([НнNn]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(20, 1, 'мозгоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([ОоOo]+)([ЗзZz3]+)([Гг]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(21, 1, 'мудоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(22, 1, 'однохуйствен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ДдDd]+)([НнNn]+)([ОоOo]+)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)([СсCc]+)([ТтTt]+)([ВвVv]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(23, 1, 'охуе*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(24, 1, 'охуи*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(25, 1, 'охуя*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(26, 1, 'разъеба*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(27, 1, 'распиздон*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)([ОоOo]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(28, 1, 'расхуюж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ХхXx]+)([УуUu]+)([Юю]+|[[Йй]+[Оо]+]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(29, 1, 'худоебин*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(30, 1, 'хуе', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(31, 1, 'хуебрат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([БбBb]+)([РрPpRr]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(32, 1, 'хуеглот*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([Гг]+)([ЛлLl]+)([ОоOo]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(33, 1, 'хуеплёт*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ПпPp]+)([ЛлLl]+)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(34, 1, 'хует*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(35, 1, 'хуила', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ИиIi]+)([ЛлLl]+)([АаAa]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(36, 1, 'хул?', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЛлLl]+).?)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(37, 1, 'хуя', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(38, 1, '^бляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(39, 1, '^пидор*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ПпPp]+)([ИиIi]+)([ДдDd]+)([ОоOo]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(40, 1, '^хуев*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(41, 1, '^хуем*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(42, 1, '^хуй*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(43, 1, '^хуяк*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(44, 1, '^хуям*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(45, 1, '^хуяр*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(46, 1, '^хуяч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(47, 1, '^ъебал*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ЛлLl]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(48, 1, '^ъебан*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(49, 1, '^ъебар*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(50, 1, '^ъебат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(51, 1, '^ъебен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(52, 1, '^ъеби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(53, 1, '^ъебис*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(54, 1, '^ъебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(55, 1, '^ъёбля*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([ЛлLl]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(56, 1, '^ъёбну*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([НнNn]+)([УуUu]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(57, 1, '^ъебу', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(58, 1, '^ъебуч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(59, 1, '^ъебыв*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([Ыы]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(60, 1, '/(?<=[s.,;:!?-#*|[]()])(?![Вв][ЕеЁё][Бб])(([ВвЗзСс]+|[Ввы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)|)([ЬьЪъ]+|)([ЁёЕеEe]+|[Йй]+[Оо]+|[Yy]+[Oo]+)([BbБб]+))(?=[s.,;:!?-#*|[]()])/is', '', '', '', 'Y', 'PTTRN'),
(61, 3, 'angry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+n+g+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(62, 3, 'ass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(63, 3, 'asshole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(64, 3, 'banger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+n+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(65, 3, 'bastard', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+s+t+a+r+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(66, 3, 'batter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+t+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(67, 3, 'bicho', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+c+h+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(68, 3, 'bisexual', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+s+e+x+u+a+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(69, 3, 'bitch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(70, 3, 'blumpkin', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+l+u+m+p+k+i+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(71, 3, 'booger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+o+o+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(72, 3, 'bugger*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+g+g+e+r+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(73, 3, 'bukakke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+k+a+k+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(74, 3, 'bull', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(75, 3, 'bulldyke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+d+y+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(76, 3, 'bullshit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(77, 3, 'bunny', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(78, 3, 'bunnyfuck', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+f+u+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(79, 3, 'chocha', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+c+h+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(80, 3, 'chode', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+d+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(81, 3, 'clap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+l+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(82, 3, 'coconuts', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+c+o+n+u+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(83, 3, 'cohones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+h+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(84, 3, 'cojones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+j+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(85, 3, 'coon', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(86, 3, 'cootch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(87, 3, 'cooter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(88, 3, 'cornhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+r+n+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(89, 3, 'cracka', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+c+k+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(90, 3, 'crap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(91, 3, 'cum', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+m+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(92, 3, 'cunnilingus', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+n+i+l+i+n+g+u+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(93, 3, 'cunt*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+t+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(94, 3, 'damn*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+m+n+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(95, 3, 'dark*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+r+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(96, 3, 'dick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(97, 3, 'dickhead', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+h+e+a+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(98, 3, 'diddle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+d+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(99, 3, 'dildo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+d+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(100, 3, 'dilhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(101, 3, 'dingleberry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+n+g+l+e+b+e+r+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(102, 3, 'doodle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+o+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(103, 3, 'dork', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+r+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(104, 3, 'dumpster', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+u+m+p+s+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(105, 3, 'faggot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+g+g+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(106, 3, 'fart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(107, 3, 'frig', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+r+i+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(108, 3, 'fuck*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(109, 3, 'fucker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(110, 3, 'giz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+i+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(111, 3, 'goatse', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+a+t+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(112, 3, 'gook', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+o+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(113, 3, 'gringo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+r+i+n+g+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(114, 3, 'hobo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+b+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(115, 3, 'honky', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+n+k+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(116, 3, 'jackass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(117, 3, 'jackoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(118, 3, 'jerkoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+e+r+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(119, 3, 'jiggaboo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+g+g+a+b+o+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(120, 3, 'jizz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+z+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(121, 3, 'kike', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(k+i+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(122, 3, 'mayo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+a+y+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(123, 3, 'moose', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+o+o+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(124, 3, 'nigg*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(n+i+g+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(125, 3, 'paki', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+a+k+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(126, 3, 'pecker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+e+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(127, 3, 'piss', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+i+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(128, 3, 'poonanni', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+a+n+n+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(129, 3, 'poontang', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+t+a+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(130, 3, 'prick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+r+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(131, 3, 'punch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+u+n+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(132, 3, 'queef', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(q+u+e+e+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(133, 3, 'rogue', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(r+o+g+u+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(134, 3, 'sanchez', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+a+n+c+h+e+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(135, 3, 'schlong', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+c+h+l+o+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(136, 3, 'shit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(137, 3, 'skank', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+k+a+n+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(138, 3, 'spaz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+a+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(139, 3, 'spic', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+i+c+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(140, 3, 'teabag*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+e+a+b+a+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(141, 3, 'tits', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+i+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(142, 3, 'twat', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+a+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(143, 3, 'twot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(144, 3, 'vart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(v+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(145, 3, 'wanker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+n+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(146, 3, 'waste', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+s+t+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(147, 3, 'wetback', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+e+t+b+a+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(148, 3, 'whore', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+h+o+r+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(149, 3, 'wigger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+i+g+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(150, 3, 'wog', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(151, 3, 'wop', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_group`
--

CREATE TABLE `b_forum_group` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '150',
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_group_lang`
--

CREATE TABLE `b_forum_group_lang` (
  `ID` int(11) NOT NULL,
  `FORUM_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_letter`
--

CREATE TABLE `b_forum_letter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT '0',
  `LETTER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_letter`
--

INSERT INTO `b_forum_letter` (`ID`, `DICTIONARY_ID`, `LETTER`, `REPLACEMENT`) VALUES
(1, 2, 'а', 'АаAa'),
(2, 2, 'б', 'БбBb'),
(3, 2, 'в', 'ВвVv'),
(4, 2, 'г', 'Гг'),
(5, 2, 'д', 'ДдDd'),
(6, 2, 'е', 'ЁёЕеEe'),
(7, 2, 'ё', 'ЁёЕеEe, [Йй]+[Оо]+'),
(8, 2, 'ж', 'ЖжGg'),
(9, 2, 'з', 'ЗзZz3'),
(10, 2, 'и', 'ИиIi'),
(11, 2, 'й', 'ЙйИиYy'),
(12, 2, 'к', 'КкKk'),
(13, 2, 'л', 'ЛлLl'),
(14, 2, 'м', 'МмMm'),
(15, 2, 'н', 'НнNn'),
(16, 2, 'о', 'ОоOo'),
(17, 2, 'п', 'ПпPp'),
(18, 2, 'р', 'РрPpRr'),
(19, 2, 'с', 'СсCc'),
(20, 2, 'т', 'ТтTt'),
(21, 2, 'у', 'УуUu'),
(22, 2, 'ф', 'ФфFf'),
(23, 2, 'х', 'ХхXx'),
(24, 2, 'ц', 'ЦцCc'),
(25, 2, 'ч', 'Чч'),
(26, 2, 'ш', 'Шш'),
(27, 2, 'щ', 'Щщ'),
(28, 2, 'ь', 'ЪъЬь\"\','),
(29, 2, 'ы', 'Ыы'),
(30, 2, 'ъ', 'ЪъЬь\"\','),
(31, 2, 'э', 'Ээ'),
(32, 2, 'ю', 'Юю, [Йй]+[Оо]+'),
(33, 2, 'я', 'Яя'),
(34, 2, '%', '[Цц]+([Аа]+|[Оо]+), [Тт]+([Ьь]+|)[Сс]+[Яя]+'),
(35, 2, '^', ',ВвЗзСс,ВвЫы,ДдОо,ЗзАа,ИиЗзСс,НнАа,НнЕе,ОоТт,([Пп]*[Ее]+[Рр]+[Ее]+)'),
(36, 2, 'тся', '%'),
(37, 2, 'ться', '%');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_message`
--

CREATE TABLE `b_forum_message` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NEW_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WEB',
  `POST_DATE` datetime NOT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_HTML` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_FILTER` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_CHECK` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `PARAM1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_REAL_IP` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GUEST_ID` int(10) DEFAULT NULL,
  `EDITOR_ID` int(10) DEFAULT NULL,
  `EDITOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDITOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_REASON` text COLLATE utf8_unicode_ci,
  `EDIT_DATE` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `MAIL_HEADER` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_perms`
--

CREATE TABLE `b_forum_perms` (
  `ID` int(11) NOT NULL,
  `FORUM_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_pm_folder`
--

CREATE TABLE `b_forum_pm_folder` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_pm_folder`
--

INSERT INTO `b_forum_pm_folder` (`ID`, `TITLE`, `USER_ID`, `SORT`) VALUES
(1, 'SYSTEM_FOLDER_1', 0, 0),
(2, 'SYSTEM_FOLDER_2', 0, 0),
(3, 'SYSTEM_FOLDER_3', 0, 0),
(4, 'SYSTEM_FOLDER_4', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points`
--

CREATE TABLE `b_forum_points` (
  `ID` int(11) NOT NULL,
  `MIN_POINTS` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points2post`
--

CREATE TABLE `b_forum_points2post` (
  `ID` int(11) NOT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL,
  `POINTS_PER_POST` decimal(18,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points_lang`
--

CREATE TABLE `b_forum_points_lang` (
  `POINTS_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_private_message`
--

CREATE TABLE `b_forum_private_message` (
  `ID` bigint(10) NOT NULL,
  `AUTHOR_ID` int(11) DEFAULT '0',
  `RECIPIENT_ID` int(11) DEFAULT '0',
  `POST_DATE` datetime DEFAULT NULL,
  `POST_SUBJ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_rank`
--

CREATE TABLE `b_forum_rank` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_rank_lang`
--

CREATE TABLE `b_forum_rank_lang` (
  `ID` int(11) NOT NULL,
  `RANK_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_stat`
--

CREATE TABLE `b_forum_stat` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHPSESSID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORUM_ID` smallint(5) NOT NULL DEFAULT '0',
  `TOPIC_ID` int(10) DEFAULT NULL,
  `SHOW_NAME` varchar(101) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_subscribe`
--

CREATE TABLE `b_forum_subscribe` (
  `ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `LAST_SEND` int(10) DEFAULT NULL,
  `NEW_TOPIC_ONLY` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_topic`
--

CREATE TABLE `b_forum_topic` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE_SEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `VIEWS` int(10) NOT NULL DEFAULT '0',
  `USER_START_ID` int(10) DEFAULT NULL,
  `USER_START_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `POSTS` int(10) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(10) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_POST_DATE` datetime NOT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(10) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `SOCNET_GROUP_ID` int(10) DEFAULT NULL,
  `OWNER_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user`
--

CREATE TABLE `b_forum_user` (
  `ID` bigint(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `ALIAS` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AVATAR` int(10) DEFAULT NULL,
  `NUM_POSTS` int(10) DEFAULT '0',
  `INTERESTS` text COLLATE utf8_unicode_ci,
  `LAST_POST` int(10) DEFAULT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_VISIT` datetime NOT NULL,
  `DATE_REG` date NOT NULL,
  `REAL_IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SIGNATURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_NAME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RANK_ID` int(11) DEFAULT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `HIDE_FROM_ONLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GROUP_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GET_MY_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_user`
--

INSERT INTO `b_forum_user` (`ID`, `USER_ID`, `ALIAS`, `DESCRIPTION`, `IP_ADDRESS`, `AVATAR`, `NUM_POSTS`, `INTERESTS`, `LAST_POST`, `ALLOW_POST`, `LAST_VISIT`, `DATE_REG`, `REAL_IP_ADDRESS`, `SIGNATURE`, `SHOW_NAME`, `RANK_ID`, `POINTS`, `HIDE_FROM_ONLINE`, `SUBSC_GROUP_MESSAGE`, `SUBSC_GET_MY_MESSAGE`) VALUES
(1, 2, NULL, '', NULL, NULL, 0, '', NULL, 'Y', '2019-09-06 15:19:04', '2019-09-06', NULL, '', 'N', NULL, 0, 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_forum`
--

CREATE TABLE `b_forum_user_forum` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `MAIN_LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_points`
--

CREATE TABLE `b_forum_user_points` (
  `FROM_USER_ID` int(11) NOT NULL,
  `TO_USER_ID` int(11) NOT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `DATE_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_topic`
--

CREATE TABLE `b_forum_user_topic` (
  `ID` bigint(20) NOT NULL,
  `TOPIC_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_geoip_handlers`
--

CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_geoip_handlers`
--

INSERT INTO `b_geoip_handlers` (`ID`, `SORT`, `ACTIVE`, `CLASS_NAME`, `CONFIG`) VALUES
(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_group`
--

CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_group`
--

INSERT INTO `b_group` (`ID`, `TIMESTAMP_X`, `ACTIVE`, `C_SORT`, `ANONYMOUS`, `IS_SYSTEM`, `NAME`, `DESCRIPTION`, `SECURITY_POLICY`, `STRING_ID`) VALUES
(1, '2019-09-04 12:49:31', 'Y', 1, 'N', 'Y', 'Администраторы', 'Полный доступ к управлению сайтом.', 'a:12:{s:15:\"SESSION_TIMEOUT\";i:15;s:15:\"SESSION_IP_MASK\";s:15:\"255.255.255.255\";s:13:\"MAX_STORE_NUM\";i:1;s:13:\"STORE_IP_MASK\";s:15:\"255.255.255.255\";s:13:\"STORE_TIMEOUT\";i:4320;s:17:\"CHECKWORD_TIMEOUT\";i:60;s:15:\"PASSWORD_LENGTH\";i:10;s:18:\"PASSWORD_UPPERCASE\";s:1:\"Y\";s:18:\"PASSWORD_LOWERCASE\";s:1:\"Y\";s:15:\"PASSWORD_DIGITS\";s:1:\"Y\";s:20:\"PASSWORD_PUNCTUATION\";s:1:\"Y\";s:14:\"LOGIN_ATTEMPTS\";i:3;}', NULL),
(2, NULL, 'Y', 2, 'Y', 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', NULL, NULL),
(3, NULL, 'Y', 3, 'N', 'Y', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
(4, NULL, 'Y', 4, 'N', 'Y', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY'),
(5, NULL, 'Y', 3, 'N', 'Y', 'Зарегистрированные пользователи', NULL, NULL, 'REGISTERED_USERS'),
(6, NULL, 'Y', 4, 'N', 'Y', 'Пользователи панели управления', NULL, NULL, 'CONTROL_PANEL_USERS');

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_collection_task`
--

CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_subordinate`
--

CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_task`
--

CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_group_task`
--

INSERT INTO `b_group_task` (`GROUP_ID`, `TASK_ID`, `EXTERNAL_ID`) VALUES
(5, 2, ''),
(6, 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity`
--

CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hlblock_entity`
--

INSERT INTO `b_hlblock_entity` (`ID`, `NAME`, `TABLE_NAME`) VALUES
(1, 'UserIp', 'user_ip');

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_lang`
--

CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_rights`
--

CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `HL_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys`
--

CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys`
--

INSERT INTO `b_hot_keys` (`ID`, `KEYS_STRING`, `CODE_ID`, `USER_ID`) VALUES
(1, 'Ctrl+Alt+85', 139, 0),
(2, 'Ctrl+Alt+80', 17, 0),
(3, 'Ctrl+Alt+70', 120, 0),
(4, 'Ctrl+Alt+68', 117, 0),
(5, 'Ctrl+Alt+81', 3, 0),
(6, 'Ctrl+Alt+75', 106, 0),
(7, 'Ctrl+Alt+79', 133, 0),
(8, 'Ctrl+Alt+70', 121, 0),
(9, 'Ctrl+Alt+69', 118, 0),
(10, 'Ctrl+Shift+83', 87, 0),
(11, 'Ctrl+Shift+88', 88, 0),
(12, 'Ctrl+Shift+76', 89, 0),
(13, 'Ctrl+Alt+85', 139, 1),
(14, 'Ctrl+Alt+80', 17, 1),
(15, 'Ctrl+Alt+70', 120, 1),
(16, 'Ctrl+Alt+68', 117, 1),
(17, 'Ctrl+Alt+81', 3, 1),
(18, 'Ctrl+Alt+75', 106, 1),
(19, 'Ctrl+Alt+79', 133, 1),
(20, 'Ctrl+Alt+70', 121, 1),
(21, 'Ctrl+Alt+69', 118, 1),
(22, 'Ctrl+Shift+83', 87, 1),
(23, 'Ctrl+Shift+88', 88, 1),
(24, 'Ctrl+Shift+76', 89, 1),
(25, 'Ctrl+Alt+85', 139, 2),
(26, 'Ctrl+Alt+80', 17, 2),
(27, 'Ctrl+Alt+70', 120, 2),
(28, 'Ctrl+Alt+68', 117, 2),
(29, 'Ctrl+Alt+81', 3, 2),
(30, 'Ctrl+Alt+75', 106, 2),
(31, 'Ctrl+Alt+79', 133, 2),
(32, 'Ctrl+Alt+70', 121, 2),
(33, 'Ctrl+Alt+69', 118, 2),
(34, 'Ctrl+Shift+83', 87, 2),
(35, 'Ctrl+Shift+88', 88, 2),
(36, 'Ctrl+Shift+76', 89, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys_code`
--

CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys_code`
--

INSERT INTO `b_hot_keys_code` (`ID`, `CLASS_NAME`, `CODE`, `NAME`, `COMMENTS`, `TITLE_OBJ`, `URL`, `IS_CUSTOM`) VALUES
(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
(91, 'top_panel_menu', 'var d=BX(\"bx-panel-menu\"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock`
--

CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock`
--

INSERT INTO `b_iblock` (`ID`, `TIMESTAMP_X`, `IBLOCK_TYPE_ID`, `LID`, `CODE`, `NAME`, `ACTIVE`, `SORT`, `LIST_PAGE_URL`, `DETAIL_PAGE_URL`, `SECTION_PAGE_URL`, `CANONICAL_PAGE_URL`, `PICTURE`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `RSS_TTL`, `RSS_ACTIVE`, `RSS_FILE_ACTIVE`, `RSS_FILE_LIMIT`, `RSS_FILE_DAYS`, `RSS_YANDEX_ACTIVE`, `XML_ID`, `TMP_ID`, `INDEX_ELEMENT`, `INDEX_SECTION`, `WORKFLOW`, `BIZPROC`, `SECTION_CHOOSER`, `LIST_MODE`, `RIGHTS_MODE`, `SECTION_PROPERTY`, `PROPERTY_INDEX`, `VERSION`, `LAST_CONV_ELEMENT`, `SOCNET_GROUP_ID`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `SECTIONS_NAME`, `SECTION_NAME`, `ELEMENTS_NAME`, `ELEMENT_NAME`) VALUES
(1, '2019-09-04 12:49:36', 'services', 's1', 'board', 'Доска объявлений', 'Y', 400, '/content/board/', '/content/board/?ID=#ID#', '/content/board/?SECTION_ID=#ID#', NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'services-board', '5790d27db73dccf391dd7601c4058449', 'Y', 'Y', 'Y', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Объявления', 'Объявление'),
(2, '2019-09-04 12:49:41', 'services', 's1', 'links', 'Каталог ресурсов', 'Y', 300, '/content/links/', '/content/links/?LINK_ID=#ID#', '/content/links/?SECTION_ID=#ID#', NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'services-links', 'df3430c0c94dcfdaac903463ebb9ab76', 'Y', 'Y', 'Y', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Ссылки', 'Ссылка'),
(3, '2019-09-04 12:49:43', 'services', 's1', 'faq', 'FAQ', 'Y', 500, '/content/faq/', '/content/faq/#SECTION_ID#/##ELEMENT_ID#', '/content/faq/#SECTION_ID#/', NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'services-faq', 'fb360d728a5f796f3f458a6fc30b4251', 'Y', 'Y', 'Y', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Вопросы', 'Вопрос');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_cache`
--

CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element`
--

CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element`
--

INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(1, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 2, 'Y', NULL, NULL, 500, 'Куплю однокомнатную квартиру в центральном районе', NULL, 'Куплю однокомнатную квартиру на 1-2 этаже с балконом в центральном районе города. Звонить: пн-пт&nbsp; с 18 часов; сб-вс&nbsp;с 8 до 23 часов. Просьба посредникам не беспокоить. ', 'html', NULL, '\n<br clear=\"left\" />\n', 'html', 'КУПЛЮ ОДНОКОМНАТНУЮ КВАРТИРУ В ЦЕНТРАЛЬНОМ РАЙОНЕ\r\nКУПЛЮ ОДНОКОМНАТНУЮ КВАРТИРУ НА 1-2 ЭТАЖЕ \r\nС БАЛКОНОМ В ЦЕНТРАЛЬНОМ РАЙОНЕ ГОРОДА. ЗВОНИТЬ: ПН-ПТ&NBSP; С 18 ЧАСОВ; СБ-ВС&NBSP;С 8 ДО 23 ЧАСОВ. ПРОСЬБА ПОСРЕДНИКАМ НЕ БЕСПОКОИТЬ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1565', '', '', '-1687340728', NULL, NULL, NULL),
(2, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 8, 'Y', '2007-03-07 14:00:00', '2008-03-06 00:00:00', 500, 'Куплю Битрикс', NULL, 'Куплю Битрикс: Управление сайтом.', 'html', NULL, NULL, 'text', 'КУПЛЮ БИТРИКС\r\nКУПЛЮ БИТРИКС: УПРАВЛЕНИЕ САЙТОМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1568', '', '', '965183989', NULL, NULL, NULL),
(3, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 3, 'Y', NULL, NULL, 500, 'Продается двухкомнатная квартира в строящемся доме', NULL, 'Продается двухкомнатная квартира в строящемся доме по улице Карамзина Московского района площадью по&nbsp;62 кв.м.&nbsp;на&nbsp;3&nbsp;этаже. Территория дома огорожена, автостоянка. Сдача дома: конец 2007 - начало 2008 года. Договор&nbsp;регистрируется в юстиции.\n<br clear=\"left\" />\n', 'html', NULL, '\n<p></p>\n', 'html', 'ПРОДАЕТСЯ ДВУХКОМНАТНАЯ КВАРТИРА В СТРОЯЩЕМСЯ ДОМЕ\r\nПРОДАЕТСЯ ДВУХКОМНАТНАЯ КВАРТИРА В СТРОЯЩЕМСЯ \r\nДОМЕ ПО УЛИЦЕ КАРАМЗИНА МОСКОВСКОГО РАЙОНА ПЛОЩАДЬЮ ПО&NBSP;62 КВ.М.&NBSP;НА&NBSP;3&NBSP;ЭТАЖЕ. ТЕРРИТОРИЯ ДОМА ОГОРОЖЕНА, АВТОСТОЯНКА. СДАЧА ДОМА: КОНЕЦ 2007 - НАЧАЛО 2008 ГОДА. ДОГОВОР&NBSP;РЕГИСТРИРУЕТСЯ В ЮСТИЦИИ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1570', '', '', '1783099873', NULL, NULL, NULL),
(4, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 3, 'Y', NULL, NULL, 500, 'Продаю земельные участки', NULL, 'Продаю земельные участки на побережье Балтийского моря от 6 соток до 10 га под строительство коттеджей, а также сельхозяйственные угодья от 2.5 га. ', 'html', NULL, '\n<br clear=\"left\" />\n', 'html', 'ПРОДАЮ ЗЕМЕЛЬНЫЕ УЧАСТКИ\r\nПРОДАЮ ЗЕМЕЛЬНЫЕ УЧАСТКИ НА ПОБЕРЕЖЬЕ \r\nБАЛТИЙСКОГО МОРЯ ОТ 6 СОТОК ДО 10 ГА ПОД СТРОИТЕЛЬСТВО КОТТЕДЖЕЙ, А ТАКЖЕ СЕЛЬХОЗЯЙСТВЕННЫЕ УГОДЬЯ ОТ 2.5 ГА.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1574', '', '', '-1254350418', NULL, 1, '2019-09-06 14:00:18'),
(5, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 5, 'Y', NULL, NULL, 500, 'Сдаем в аренду квартиры и комнаты', NULL, 'Сдаем в аренду квартиры и комнаты на длительный срок. База данных на нашем сайте. Есть возможность оставить заявку. ', 'html', NULL, '\n<br clear=\"left\" />\n', 'html', 'СДАЕМ В АРЕНДУ КВАРТИРЫ И КОМНАТЫ\r\nСДАЕМ В АРЕНДУ КВАРТИРЫ И КОМНАТЫ НА ДЛИТЕЛЬНЫЙ \r\nСРОК. БАЗА ДАННЫХ НА НАШЕМ САЙТЕ. ЕСТЬ ВОЗМОЖНОСТЬ ОСТАВИТЬ ЗАЯВКУ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1584', '', '', '-54078652', NULL, NULL, NULL),
(6, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 6, 'Y', NULL, NULL, 500, 'Сниму помещение', NULL, 'Сниму помещение под книжный магазин: 40-45 кв. м. + подсобка в р-не Ленинского пр., ул. Багратиона. Александр. ', 'html', NULL, '\n<br clear=\"left\" />\n', 'html', 'СНИМУ ПОМЕЩЕНИЕ\r\nСНИМУ ПОМЕЩЕНИЕ ПОД КНИЖНЫЙ МАГАЗИН: 40-45 \r\nКВ. М. + ПОДСОБКА В Р-НЕ ЛЕНИНСКОГО ПР., УЛ. БАГРАТИОНА. АЛЕКСАНДР.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1587', '', '', '24182182', NULL, NULL, NULL),
(7, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 13, 'Y', NULL, NULL, 500, 'Куплю БМВ 320', NULL, 'Куплю БМВ 320, 1993-96 года выпуска, АКПП, цвет - черный металлик , до $7700.\n<br clear=\"left\" />\n', 'html', NULL, '\n<p></p>\n', 'html', 'КУПЛЮ БМВ 320\r\nКУПЛЮ БМВ 320, 1993-96 ГОДА ВЫПУСКА, АКПП, ЦВЕТ \r\n- ЧЕРНЫЙ МЕТАЛЛИК , ДО $7700.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1595', '', '', '1880467988', NULL, NULL, NULL),
(8, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 14, 'Y', NULL, NULL, 500, 'Продаем автобусы', NULL, '\n<p>Всегда есть в наличии на стоянке в Москве новые и подержанные туристические и городские автобусы различных марок (Mercedes, Setra, Neoplan и т.д.). Также предлагаем микроавтобусы Mercedes Sprinter и Volkswagen LT.</p>\n', 'html', NULL, NULL, 'text', 'ПРОДАЕМ АВТОБУСЫ\r\nВСЕГДА ЕСТЬ В НАЛИЧИИ НА СТОЯНКЕ В МОСКВЕ \r\nНОВЫЕ И ПОДЕРЖАННЫЕ ТУРИСТИЧЕСКИЕ И ГОРОДСКИЕ АВТОБУСЫ РАЗЛИЧНЫХ МАРОК (MERCEDES, SETRA, NEOPLAN И Т.Д.). ТАКЖЕ ПРЕДЛАГАЕМ МИКРОАВТОБУСЫ MERCEDES SPRINTER И VOLKSWAGEN LT.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1597', '', '', '-1752138461', NULL, NULL, NULL),
(9, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 14, 'Y', NULL, NULL, 500, 'Продаю Volkswagen-Jetta', NULL, 'Продаю Volkswagen-Jetta, 2001 г/в, 2.0, темно-зеленый металлик, черный кожаный салан, АКПП, круиз контроль, полный электропакет, 6 аэрбэгов, люк (2 положения), кондиционер, АБС, ECP, подогрев сидений, мульти-руль, CD-магнитола. Полная комплектация. Только из Америки, без пробега по РФ, в отличном состоянии, $15 500.\n<br clear=\"left\" />\n', 'html', NULL, NULL, 'text', 'ПРОДАЮ VOLKSWAGEN-JETTA\r\nПРОДАЮ VOLKSWAGEN-JETTA, 2001 Г/В, 2.0, ТЕМНО-ЗЕЛЕНЫЙ \r\nМЕТАЛЛИК, ЧЕРНЫЙ КОЖАНЫЙ САЛАН, АКПП, КРУИЗ КОНТРОЛЬ, ПОЛНЫЙ ЭЛЕКТРОПАКЕТ, 6 АЭРБЭГОВ, ЛЮК (2 ПОЛОЖЕНИЯ), КОНДИЦИОНЕР, АБС, ECP, ПОДОГРЕВ СИДЕНИЙ, МУЛЬТИ-РУЛЬ, CD-МАГНИТОЛА. ПОЛНАЯ КОМПЛЕКТАЦИЯ. ТОЛЬКО ИЗ АМЕРИКИ, БЕЗ ПРОБЕГА ПО РФ, В ОТЛИЧНОМ СОСТОЯНИИ, $15 500.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1607', '', '', '-957908399', NULL, NULL, NULL),
(10, '2019-09-04 16:49:35', 1, '2019-09-04 16:49:35', 1, 1, 15, 'Y', NULL, NULL, 500, 'Пассажирские перевозки', NULL, 'Пассажирские перевозки микроавтобусом (8 мест), аренда микроавтобуса, трансфер в/из аэропортов.\n<br clear=\"left\" />\n', 'html', NULL, NULL, 'text', 'ПАССАЖИРСКИЕ ПЕРЕВОЗКИ\r\nПАССАЖИРСКИЕ ПЕРЕВОЗКИ МИКРОАВТОБУСОМ \r\n(8 МЕСТ), АРЕНДА МИКРОАВТОБУСА, ТРАНСФЕР В/ИЗ АЭРОПОРТОВ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1609', '', '', '696877645', NULL, NULL, NULL),
(11, '2019-09-04 16:49:36', 1, '2019-09-04 16:49:35', 1, 1, 15, 'Y', NULL, NULL, 500, 'Транспортные перевозки', NULL, 'Транспортно-экспедиторские услуги при перевозке грузов из/в Калининграда, по железным дорогам СНГ и Европы. ', 'html', NULL, NULL, 'text', 'ТРАНСПОРТНЫЕ ПЕРЕВОЗКИ\r\nТРАНСПОРТНО-ЭКСПЕДИТОРСКИЕ УСЛУГИ ПРИ \r\nПЕРЕВОЗКЕ ГРУЗОВ ИЗ/В КАЛИНИНГРАДА, ПО ЖЕЛЕЗНЫМ ДОРОГАМ СНГ И ЕВРОПЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1611', '', '', '-1406224409', NULL, NULL, NULL),
(12, '2019-09-04 16:49:36', 1, '2019-09-04 16:49:36', 1, 1, 9, 'Y', NULL, NULL, 500, 'Продаю компьютер', NULL, 'Продаю компьютер: Процессор AMD ATHLON 1600 XP, RAM 256Mb, FDD, HDD 20G, HDD 80G, CD-ROM, CD-RW, звук Creative, видео nVidia 5200 FX 64M, тюнер WinFast XP, модем Omni PCI 56K +Монитор Samsung 757 NF 17&quot; +Клавиатура +Мышь +UPC +Колонки +Комбо принтер+сканер Epson CX3650 без картриджей 12000, торг\n<br clear=\"left\" />\n', 'html', NULL, NULL, 'text', 'ПРОДАЮ КОМПЬЮТЕР\r\nПРОДАЮ КОМПЬЮТЕР: ПРОЦЕССОР AMD ATHLON 1600 XP, \r\nRAM 256MB, FDD, HDD 20G, HDD 80G, CD-ROM, CD-RW, ЗВУК CREATIVE, ВИДЕО NVIDIA 5200 FX 64M, ТЮНЕР WINFAST XP, МОДЕМ OMNI PCI 56K +МОНИТОР SAMSUNG 757 NF 17\" +КЛАВИАТУРА +МЫШЬ +UPC +КОЛОНКИ +КОМБО ПРИНТЕР+СКАНЕР EPSON CX3650 БЕЗ КАРТРИДЖЕЙ 12000, ТОРГ', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1613', '', '', '415820398', NULL, NULL, NULL),
(13, '2019-09-04 16:49:36', 1, '2019-09-04 16:49:36', 1, 1, 9, 'Y', NULL, NULL, 500, 'Продаем ноутбуки', NULL, 'Продаем новые ноутбуки и б\\у. Гарантия от года до трех. Самые низкие цены в городе. Найдите цену ниже и получите ноутбук по найденной цене + подарок - сумку для ноутбука. ', 'html', NULL, NULL, 'text', 'ПРОДАЕМ НОУТБУКИ\r\nПРОДАЕМ НОВЫЕ НОУТБУКИ И Б\\У. ГАРАНТИЯ ОТ \r\nГОДА ДО ТРЕХ. САМЫЕ НИЗКИЕ ЦЕНЫ В ГОРОДЕ. НАЙДИТЕ ЦЕНУ НИЖЕ И ПОЛУЧИТЕ НОУТБУК ПО НАЙДЕННОЙ ЦЕНЕ + ПОДАРОК - СУМКУ ДЛЯ НОУТБУКА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1616', '', '', '1978783818', NULL, NULL, NULL),
(14, '2019-09-04 16:49:36', 1, '2019-09-04 16:49:36', 1, 1, 8, 'Y', NULL, NULL, 500, 'Куплю аккустическую систему', NULL, 'Куплю аккустическую систему AC-90 2шт в идеальном состоянии.\n<br clear=\"left\" />\n', 'html', NULL, NULL, 'text', 'КУПЛЮ АККУСТИЧЕСКУЮ СИСТЕМУ\r\nКУПЛЮ АККУСТИЧЕСКУЮ СИСТЕМУ AC-90 2ШТ В ИДЕАЛЬНОМ \r\nСОСТОЯНИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1618', '', '', '-443224700', NULL, NULL, NULL),
(15, '2019-09-04 16:49:36', 1, '2019-09-04 16:49:36', 1, 1, 2, 'Y', NULL, NULL, 500, 'Куплю земельный участок', NULL, 'Куплю земельный участок сельхозназначения, желательно поближе к Калининграду или по дороге к побережье, рассмотрю все вариаты.', 'html', NULL, NULL, 'text', 'КУПЛЮ ЗЕМЕЛЬНЫЙ УЧАСТОК\r\nКУПЛЮ ЗЕМЕЛЬНЫЙ УЧАСТОК СЕЛЬХОЗНАЗНАЧЕНИЯ, \r\nЖЕЛАТЕЛЬНО ПОБЛИЖЕ К КАЛИНИНГРАДУ ИЛИ ПО ДОРОГЕ К ПОБЕРЕЖЬЕ, РАССМОТРЮ ВСЕ ВАРИАТЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1620', '', '', '-186455034', NULL, 2, '2019-09-05 15:11:53'),
(16, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 17, 'Y', NULL, NULL, 500, 'Центральный банк Российской Федерации', NULL, 'История банка, основные функции, правовой статус, организационная структура. Информация о денежной политике и финансовых рынках. Новости (обновляются ежедневно). Поисковая система по ключевым словам.', 'html', NULL, 'История банка, основные функции, правовой статус, организационная структура. Информация о денежной политике и финансовых рынках. Новости (обновляются ежедневно). Поисковая система по ключевым словам.', 'text', 'ЦЕНТРАЛЬНЫЙ БАНК РОССИЙСКОЙ ФЕДЕРАЦИИ\r\nИСТОРИЯ БАНКА, ОСНОВНЫЕ ФУНКЦИИ, ПРАВОВОЙ \r\nСТАТУС, ОРГАНИЗАЦИОННАЯ СТРУКТУРА. ИНФОРМАЦИЯ О ДЕНЕЖНОЙ ПОЛИТИКЕ И ФИНАНСОВЫХ РЫНКАХ. НОВОСТИ (ОБНОВЛЯЮТСЯ ЕЖЕДНЕВНО). ПОИСКОВАЯ СИСТЕМА ПО КЛЮЧЕВЫМ СЛОВАМ.\r\nИСТОРИЯ БАНКА, ОСНОВНЫЕ ФУНКЦИИ, ПРАВОВОЙ СТАТУС, ОРГАНИЗАЦИОННАЯ СТРУКТУРА. ИНФОРМАЦИЯ О ДЕНЕЖНОЙ ПОЛИТИКЕ И ФИНАНСОВЫХ РЫНКАХ. НОВОСТИ (ОБНОВЛЯЮТСЯ ЕЖЕДНЕВНО). ПОИСКОВАЯ СИСТЕМА ПО КЛЮЧЕВЫМ СЛОВАМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1452', '', '', '2135927563', NULL, NULL, NULL),
(17, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 17, 'Y', NULL, NULL, 500, '\"Газпромбанк\"', NULL, 'Услуги физическим и юридическим лицам. Доверительное управление. Подробно об услугах. Адреса филиалов в городах России. Финансовые отчеты работы.', 'html', NULL, 'Услуги физическим и юридическим лицам. Доверительное управление. Подробно об услугах. Адреса филиалов в городах России. Финансовые отчеты работы.', 'text', '\"ГАЗПРОМБАНК\"\r\nУСЛУГИ ФИЗИЧЕСКИМ И ЮРИДИЧЕСКИМ ЛИЦАМ. \r\nДОВЕРИТЕЛЬНОЕ УПРАВЛЕНИЕ. ПОДРОБНО ОБ УСЛУГАХ. АДРЕСА ФИЛИАЛОВ В ГОРОДАХ РОССИИ. ФИНАНСОВЫЕ ОТЧЕТЫ РАБОТЫ.\r\nУСЛУГИ ФИЗИЧЕСКИМ И ЮРИДИЧЕСКИМ ЛИЦАМ. ДОВЕРИТЕЛЬНОЕ УПРАВЛЕНИЕ. ПОДРОБНО ОБ УСЛУГАХ. АДРЕСА ФИЛИАЛОВ В ГОРОДАХ РОССИИ. ФИНАНСОВЫЕ ОТЧЕТЫ РАБОТЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1454', '', '', '-521310545', NULL, NULL, NULL),
(18, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 17, 'Y', NULL, NULL, 500, '\"Альфа-банк\"', NULL, 'Сведения для потенциальных сотрудников и партнеров. Информация об услугах банка частным лицам. Новости организации, аналитические разработки. Адреса отделений и банкоматов.', 'html', NULL, 'Сведения для потенциальных сотрудников и партнеров. Информация об услугах банка частным лицам. Новости организации, аналитические разработки. Адреса отделений и банкоматов.', 'text', '\"АЛЬФА-БАНК\"\r\nСВЕДЕНИЯ ДЛЯ ПОТЕНЦИАЛЬНЫХ СОТРУДНИКОВ \r\nИ ПАРТНЕРОВ. ИНФОРМАЦИЯ ОБ УСЛУГАХ БАНКА ЧАСТНЫМ ЛИЦАМ. НОВОСТИ ОРГАНИЗАЦИИ, АНАЛИТИЧЕСКИЕ РАЗРАБОТКИ. АДРЕСА ОТДЕЛЕНИЙ И БАНКОМАТОВ.\r\nСВЕДЕНИЯ ДЛЯ ПОТЕНЦИАЛЬНЫХ СОТРУДНИКОВ И ПАРТНЕРОВ. ИНФОРМАЦИЯ ОБ УСЛУГАХ БАНКА ЧАСТНЫМ ЛИЦАМ. НОВОСТИ ОРГАНИЗАЦИИ, АНАЛИТИЧЕСКИЕ РАЗРАБОТКИ. АДРЕСА ОТДЕЛЕНИЙ И БАНКОМАТОВ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1456', '', '', '1806230887', NULL, NULL, NULL),
(19, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 17, 'Y', NULL, NULL, 500, '\"ВТБ\" - банковская группа', NULL, 'Новости банка. Финансовая отчетность. Услуги: открытие счетов, международные расчеты, валютный контроль, кредитные карты, срочные вклады, ипотечное кредитование и др. Контакты.', 'html', NULL, 'Новости банка. Финансовая отчетность. Услуги: открытие счетов, международные расчеты, валютный контроль, кредитные карты, срочные вклады, ипотечное кредитование и др. Контакты.', 'text', '\"ВТБ\" - БАНКОВСКАЯ ГРУППА\r\nНОВОСТИ БАНКА. ФИНАНСОВАЯ ОТЧЕТНОСТЬ. УСЛУГИ: \r\nОТКРЫТИЕ СЧЕТОВ, МЕЖДУНАРОДНЫЕ РАСЧЕТЫ, ВАЛЮТНЫЙ КОНТРОЛЬ, КРЕДИТНЫЕ КАРТЫ, СРОЧНЫЕ ВКЛАДЫ, ИПОТЕЧНОЕ КРЕДИТОВАНИЕ И ДР. КОНТАКТЫ.\r\nНОВОСТИ БАНКА. ФИНАНСОВАЯ ОТЧЕТНОСТЬ. УСЛУГИ: ОТКРЫТИЕ СЧЕТОВ, МЕЖДУНАРОДНЫЕ РАСЧЕТЫ, ВАЛЮТНЫЙ КОНТРОЛЬ, КРЕДИТНЫЕ КАРТЫ, СРОЧНЫЕ ВКЛАДЫ, ИПОТЕЧНОЕ КРЕДИТОВАНИЕ И ДР. КОНТАКТЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1458', '', '', '2087778516', NULL, NULL, NULL),
(20, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 18, 'Y', NULL, NULL, 500, '\"РАМ\" - \"Российская ассоциация маркетинга\"', NULL, 'Устав, структура, филиалы, цели и задачи некоммерческой организации. Сведения об общероссийской маркетинговой системе - ОМС (описание, методы, база проектов). Новости, анонсы выставок и конференций.', 'html', NULL, 'Устав, структура, филиалы, цели и задачи некоммерческой организации. Сведения об общероссийской маркетинговой системе - ОМС (описание, методы, база проектов). Новости, анонсы выставок и конференций.', 'text', '\"РАМ\" - \"РОССИЙСКАЯ АССОЦИАЦИЯ МАРКЕТИНГА\"\r\nУСТАВ, СТРУКТУРА, ФИЛИАЛЫ, ЦЕЛИ И ЗАДАЧИ \r\nНЕКОММЕРЧЕСКОЙ ОРГАНИЗАЦИИ. СВЕДЕНИЯ ОБ ОБЩЕРОССИЙСКОЙ МАРКЕТИНГОВОЙ СИСТЕМЕ - ОМС (ОПИСАНИЕ, МЕТОДЫ, БАЗА ПРОЕКТОВ). НОВОСТИ, АНОНСЫ ВЫСТАВОК И КОНФЕРЕНЦИЙ.\r\nУСТАВ, СТРУКТУРА, ФИЛИАЛЫ, ЦЕЛИ И ЗАДАЧИ НЕКОММЕРЧЕСКОЙ ОРГАНИЗАЦИИ. СВЕДЕНИЯ ОБ ОБЩЕРОССИЙСКОЙ МАРКЕТИНГОВОЙ СИСТЕМЕ - ОМС (ОПИСАНИЕ, МЕТОДЫ, БАЗА ПРОЕКТОВ). НОВОСТИ, АНОНСЫ ВЫСТАВОК И КОНФЕРЕНЦИЙ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1460', '', '', '546140688', NULL, NULL, NULL),
(21, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 18, 'Y', NULL, NULL, 500, '\"V-Ratio\" - маркетинговые услуги', NULL, 'Консалтинг в области управления стоимостью компаний. Маркетинговые исследования, фокус-группы, антикризисное управление, привлечение инвестиций. База данных по исследованиям.', 'html', NULL, 'Консалтинг в области управления стоимостью компаний. Маркетинговые исследования, фокус-группы, антикризисное управление, привлечение инвестиций. База данных по исследованиям.', 'text', '\"V-RATIO\" - МАРКЕТИНГОВЫЕ УСЛУГИ\r\nКОНСАЛТИНГ В ОБЛАСТИ УПРАВЛЕНИЯ СТОИМОСТЬЮ \r\nКОМПАНИЙ. МАРКЕТИНГОВЫЕ ИССЛЕДОВАНИЯ, ФОКУС-ГРУППЫ, АНТИКРИЗИСНОЕ УПРАВЛЕНИЕ, ПРИВЛЕЧЕНИЕ ИНВЕСТИЦИЙ. БАЗА ДАННЫХ ПО ИССЛЕДОВАНИЯМ.\r\nКОНСАЛТИНГ В ОБЛАСТИ УПРАВЛЕНИЯ СТОИМОСТЬЮ КОМПАНИЙ. МАРКЕТИНГОВЫЕ ИССЛЕДОВАНИЯ, ФОКУС-ГРУППЫ, АНТИКРИЗИСНОЕ УПРАВЛЕНИЕ, ПРИВЛЕЧЕНИЕ ИНВЕСТИЦИЙ. БАЗА ДАННЫХ ПО ИССЛЕДОВАНИЯМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1462', '', '', '1241395176', NULL, NULL, NULL),
(22, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 18, 'Y', NULL, NULL, 500, '\"Комкон\" - услуги по исследованию рынка', NULL, 'Перечень услуг: исследование рынка и средств массовой информации. Обзор реализуемых проектов. Описание видов исследований. Публикации.', 'html', NULL, 'Перечень услуг: исследование рынка и средств массовой информации. Обзор реализуемых проектов. Описание видов исследований. Публикации.', 'text', '\"КОМКОН\" - УСЛУГИ ПО ИССЛЕДОВАНИЮ РЫНКА\r\nПЕРЕЧЕНЬ УСЛУГ: ИССЛЕДОВАНИЕ РЫНКА И СРЕДСТВ \r\nМАССОВОЙ ИНФОРМАЦИИ. ОБЗОР РЕАЛИЗУЕМЫХ ПРОЕКТОВ. ОПИСАНИЕ ВИДОВ ИССЛЕДОВАНИЙ. ПУБЛИКАЦИИ.\r\nПЕРЕЧЕНЬ УСЛУГ: ИССЛЕДОВАНИЕ РЫНКА И СРЕДСТВ МАССОВОЙ ИНФОРМАЦИИ. ОБЗОР РЕАЛИЗУЕМЫХ ПРОЕКТОВ. ОПИСАНИЕ ВИДОВ ИССЛЕДОВАНИЙ. ПУБЛИКАЦИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1466', '', '', '1631442568', NULL, NULL, NULL),
(23, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 19, 'Y', NULL, NULL, 500, '\"Русская недвижимость\" - информационный портал', NULL, 'Информация о недвижимости: новости рынка; аналитика; каталоги новостроек, коттеджей и офисных помещений; консультации юристов и риэлторов; справочная информация.', 'html', NULL, 'Информация о недвижимости: новости рынка; аналитика; каталоги новостроек, коттеджей и офисных помещений; консультации юристов и риэлторов; справочная информация.', 'text', '\"РУССКАЯ НЕДВИЖИМОСТЬ\" - ИНФОРМАЦИОННЫЙ ПОРТАЛ\r\nИНФОРМАЦИЯ О НЕДВИЖИМОСТИ: НОВОСТИ РЫНКА; \r\nАНАЛИТИКА; КАТАЛОГИ НОВОСТРОЕК, КОТТЕДЖЕЙ И ОФИСНЫХ ПОМЕЩЕНИЙ; КОНСУЛЬТАЦИИ ЮРИСТОВ И РИЭЛТОРОВ; СПРАВОЧНАЯ ИНФОРМАЦИЯ.\r\nИНФОРМАЦИЯ О НЕДВИЖИМОСТИ: НОВОСТИ РЫНКА; АНАЛИТИКА; КАТАЛОГИ НОВОСТРОЕК, КОТТЕДЖЕЙ И ОФИСНЫХ ПОМЕЩЕНИЙ; КОНСУЛЬТАЦИИ ЮРИСТОВ И РИЭЛТОРОВ; СПРАВОЧНАЯ ИНФОРМАЦИЯ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1468', '', '', '383923765', NULL, NULL, NULL),
(24, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 22, 'Y', NULL, NULL, 500, '\"Детская электронная библиотека\"', NULL, 'Подборка русской и зарубежной литературы для детей: сказки, стихи, повести и пр. Возможность скачать бесплатно.', 'html', NULL, 'Подборка русской и зарубежной литературы для детей: сказки, стихи, повести и пр. Возможность скачать бесплатно.', 'text', '\"ДЕТСКАЯ ЭЛЕКТРОННАЯ БИБЛИОТЕКА\"\r\nПОДБОРКА РУССКОЙ И ЗАРУБЕЖНОЙ ЛИТЕРАТУРЫ \r\nДЛЯ ДЕТЕЙ: СКАЗКИ, СТИХИ, ПОВЕСТИ И ПР. ВОЗМОЖНОСТЬ СКАЧАТЬ БЕСПЛАТНО.\r\nПОДБОРКА РУССКОЙ И ЗАРУБЕЖНОЙ ЛИТЕРАТУРЫ ДЛЯ ДЕТЕЙ: СКАЗКИ, СТИХИ, ПОВЕСТИ И ПР. ВОЗМОЖНОСТЬ СКАЧАТЬ БЕСПЛАТНО.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1480', '', '', '1441580891', NULL, NULL, NULL),
(25, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 22, 'Y', NULL, NULL, 500, '\"Детский мир\" - страница для родителей и малышей', NULL, 'Мультфильмы, иллюстрированные сказки и озвученные сказочки для детей, песенки из мультиков и фильмов-сказок, задачки и загадки в картинках, стихи, фотографии детенышей животных и многое другое.', 'html', NULL, 'Мультфильмы, иллюстрированные сказки и озвученные сказочки для детей, песенки из мультиков и фильмов-сказок, задачки и загадки в картинках, стихи, фотографии детенышей животных и многое другое.', 'text', '\"ДЕТСКИЙ МИР\" - СТРАНИЦА ДЛЯ РОДИТЕЛЕЙ И МАЛЫШЕЙ\r\nМУЛЬТФИЛЬМЫ, ИЛЛЮСТРИРОВАННЫЕ СКАЗКИ И \r\nОЗВУЧЕННЫЕ СКАЗОЧКИ ДЛЯ ДЕТЕЙ, ПЕСЕНКИ ИЗ МУЛЬТИКОВ И ФИЛЬМОВ-СКАЗОК, ЗАДАЧКИ И ЗАГАДКИ В КАРТИНКАХ, СТИХИ, ФОТОГРАФИИ ДЕТЕНЫШЕЙ ЖИВОТНЫХ И МНОГОЕ ДРУГОЕ.\r\nМУЛЬТФИЛЬМЫ, ИЛЛЮСТРИРОВАННЫЕ СКАЗКИ И ОЗВУЧЕННЫЕ СКАЗОЧКИ ДЛЯ ДЕТЕЙ, ПЕСЕНКИ ИЗ МУЛЬТИКОВ И ФИЛЬМОВ-СКАЗОК, ЗАДАЧКИ И ЗАГАДКИ В КАРТИНКАХ, СТИХИ, ФОТОГРАФИИ ДЕТЕНЫШЕЙ ЖИВОТНЫХ И МНОГОЕ ДРУГОЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1484', '', '', '-1071445182', NULL, NULL, NULL),
(26, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 23, 'Y', NULL, NULL, 500, '\"Жилэкспертиза\" - перепланировка квартир и офисов', NULL, 'Описание услуг фирмы на всех этапах перепланировки квартир и офисов (техническое заключение о состоянии конструкции дома, оформление разрешения, проектирование, ремонт и др.). Контактная информация.', 'html', NULL, 'Описание услуг фирмы на всех этапах перепланировки квартир и офисов (техническое заключение о состоянии конструкции дома, оформление разрешения, проектирование, ремонт и др.). Контактная информация.', 'text', '\"ЖИЛЭКСПЕРТИЗА\" - ПЕРЕПЛАНИРОВКА КВАРТИР И ОФИСОВ\r\nОПИСАНИЕ УСЛУГ ФИРМЫ НА ВСЕХ ЭТАПАХ ПЕРЕПЛАНИРОВКИ \r\nКВАРТИР И ОФИСОВ (ТЕХНИЧЕСКОЕ ЗАКЛЮЧЕНИЕ О СОСТОЯНИИ КОНСТРУКЦИИ ДОМА, ОФОРМЛЕНИЕ РАЗРЕШЕНИЯ, ПРОЕКТИРОВАНИЕ, РЕМОНТ И ДР.). КОНТАКТНАЯ ИНФОРМАЦИЯ.\r\nОПИСАНИЕ УСЛУГ ФИРМЫ НА ВСЕХ ЭТАПАХ ПЕРЕПЛАНИРОВКИ КВАРТИР И ОФИСОВ (ТЕХНИЧЕСКОЕ ЗАКЛЮЧЕНИЕ О СОСТОЯНИИ КОНСТРУКЦИИ ДОМА, ОФОРМЛЕНИЕ РАЗРЕШЕНИЯ, ПРОЕКТИРОВАНИЕ, РЕМОНТ И ДР.). КОНТАКТНАЯ ИНФОРМАЦИЯ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1492', '', '', '1587870727', NULL, NULL, NULL),
(27, '2019-09-04 16:49:39', 1, '2019-09-04 16:49:39', 1, 2, 24, 'Y', NULL, NULL, 500, '\"Komod.ru\" - справочно-поисковая система по мебели', NULL, 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия).', 'html', NULL, 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия).', 'text', '\"KOMOD.RU\" - СПРАВОЧНО-ПОИСКОВАЯ СИСТЕМА ПО МЕБЕЛИ\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, \r\nКООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1494', '', '', '-2079175668', NULL, NULL, NULL),
(28, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 24, 'Y', NULL, NULL, 500, '\"М.Видео\" - продажа бытовой техники', NULL, 'Адреса, телефоны, схемы проезда в магазины. Прайс-лист, поиск товаров. Рейтинг недельных продаж. Виртуальное казино с призами от М.Видео. Конференции.', 'html', NULL, 'Адреса, телефоны, схемы проезда в магазины. Прайс-лист, поиск товаров. Рейтинг недельных продаж. Виртуальное казино с призами от М.Видео. Конференции.', 'text', '\"М.ВИДЕО\" - ПРОДАЖА БЫТОВОЙ ТЕХНИКИ\r\nАДРЕСА, ТЕЛЕФОНЫ, СХЕМЫ ПРОЕЗДА В МАГАЗИНЫ. \r\nПРАЙС-ЛИСТ, ПОИСК ТОВАРОВ. РЕЙТИНГ НЕДЕЛЬНЫХ ПРОДАЖ. ВИРТУАЛЬНОЕ КАЗИНО С ПРИЗАМИ ОТ М.ВИДЕО. КОНФЕРЕНЦИИ.\r\nАДРЕСА, ТЕЛЕФОНЫ, СХЕМЫ ПРОЕЗДА В МАГАЗИНЫ. ПРАЙС-ЛИСТ, ПОИСК ТОВАРОВ. РЕЙТИНГ НЕДЕЛЬНЫХ ПРОДАЖ. ВИРТУАЛЬНОЕ КАЗИНО С ПРИЗАМИ ОТ М.ВИДЕО. КОНФЕРЕНЦИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1496', '', '', '-88209354', NULL, NULL, NULL),
(29, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 24, 'Y', NULL, NULL, 500, '\"Куписам\" - интернет-супермаркет', NULL, 'Иллюстрированный каталог всевозможных товаров и услуг - предложения от российских интернет-магазинов. Поиск по каталогу.', 'html', NULL, 'Иллюстрированный каталог всевозможных товаров и услуг - предложения от российских интернет-магазинов. Поиск по каталогу.', 'text', '\"КУПИСАМ\" - ИНТЕРНЕТ-СУПЕРМАРКЕТ\r\nИЛЛЮСТРИРОВАННЫЙ КАТАЛОГ ВСЕВОЗМОЖНЫХ \r\nТОВАРОВ И УСЛУГ - ПРЕДЛОЖЕНИЯ ОТ РОССИЙСКИХ ИНТЕРНЕТ-МАГАЗИНОВ. ПОИСК ПО КАТАЛОГУ.\r\nИЛЛЮСТРИРОВАННЫЙ КАТАЛОГ ВСЕВОЗМОЖНЫХ ТОВАРОВ И УСЛУГ - ПРЕДЛОЖЕНИЯ ОТ РОССИЙСКИХ ИНТЕРНЕТ-МАГАЗИНОВ. ПОИСК ПО КАТАЛОГУ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1502', '', '', '1861893675', NULL, NULL, NULL),
(30, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 26, 'Y', NULL, NULL, 500, '\"Московский государственный университет (МГУ)\"', NULL, 'История. Структура. Официальная информация. Сведения для абитуриентов. Информация по учебной и научной деятельности. Список web-сайтов и материалы изданий МГУ. Адресная книга.', 'html', NULL, 'История. Структура. Официальная информация. Сведения для абитуриентов. Информация по учебной и научной деятельности. Список web-сайтов и материалы изданий МГУ. Адресная книга.', 'text', '\"МОСКОВСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ (МГУ)\"\r\nИСТОРИЯ. СТРУКТУРА. ОФИЦИАЛЬНАЯ ИНФОРМАЦИЯ. \r\nСВЕДЕНИЯ ДЛЯ АБИТУРИЕНТОВ. ИНФОРМАЦИЯ ПО УЧЕБНОЙ И НАУЧНОЙ ДЕЯТЕЛЬНОСТИ. СПИСОК WEB-САЙТОВ И МАТЕРИАЛЫ ИЗДАНИЙ МГУ. АДРЕСНАЯ КНИГА.\r\nИСТОРИЯ. СТРУКТУРА. ОФИЦИАЛЬНАЯ ИНФОРМАЦИЯ. СВЕДЕНИЯ ДЛЯ АБИТУРИЕНТОВ. ИНФОРМАЦИЯ ПО УЧЕБНОЙ И НАУЧНОЙ ДЕЯТЕЛЬНОСТИ. СПИСОК WEB-САЙТОВ И МАТЕРИАЛЫ ИЗДАНИЙ МГУ. АДРЕСНАЯ КНИГА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1504', '', '', '1221708084', NULL, NULL, NULL),
(31, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 26, 'Y', NULL, NULL, 500, '\"Российский университет дружбы народов\"', NULL, 'Информация о факультетах и филиалах, кафедрах, центрах дополнительного образования, научных исследованиях. Раздел для абитуриентов. Сведения об учебной программе', 'html', NULL, 'Информация о факультетах и филиалах, кафедрах, центрах дополнительного образования, научных исследованиях. Раздел для абитуриентов. Сведения об учебной программе', 'text', '\"РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ\"\r\nИНФОРМАЦИЯ О ФАКУЛЬТЕТАХ И ФИЛИАЛАХ, КАФЕДРАХ, \r\nЦЕНТРАХ ДОПОЛНИТЕЛЬНОГО ОБРАЗОВАНИЯ, НАУЧНЫХ ИССЛЕДОВАНИЯХ. РАЗДЕЛ ДЛЯ АБИТУРИЕНТОВ. СВЕДЕНИЯ ОБ УЧЕБНОЙ ПРОГРАММЕ\r\nИНФОРМАЦИЯ О ФАКУЛЬТЕТАХ И ФИЛИАЛАХ, КАФЕДРАХ, ЦЕНТРАХ ДОПОЛНИТЕЛЬНОГО ОБРАЗОВАНИЯ, НАУЧНЫХ ИССЛЕДОВАНИЯХ. РАЗДЕЛ ДЛЯ АБИТУРИЕНТОВ. СВЕДЕНИЯ ОБ УЧЕБНОЙ ПРОГРАММЕ', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1506', '', '', '-682837799', NULL, NULL, NULL),
(32, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 26, 'Y', NULL, NULL, 500, '\"Классический пансион МГУ имени М.В. Ломоносова\"', NULL, 'Ступени образования: дошкольное, начальное, базовое среднее, углубленное, профильно-прагматическое, высшее в области международных коммуникаций и управления. Программы. Условия приема. Цены.', 'html', NULL, 'Ступени образования: дошкольное, начальное, базовое среднее, углубленное, профильно-прагматическое, высшее в области международных коммуникаций и управления. Программы. Условия приема. Цены.', 'text', '\"КЛАССИЧЕСКИЙ ПАНСИОН МГУ ИМЕНИ М.В. ЛОМОНОСОВА\"\r\nСТУПЕНИ ОБРАЗОВАНИЯ: ДОШКОЛЬНОЕ, НАЧАЛЬНОЕ, \r\nБАЗОВОЕ СРЕДНЕЕ, УГЛУБЛЕННОЕ, ПРОФИЛЬНО-ПРАГМАТИЧЕСКОЕ, ВЫСШЕЕ В ОБЛАСТИ МЕЖДУНАРОДНЫХ КОММУНИКАЦИЙ И УПРАВЛЕНИЯ. ПРОГРАММЫ. УСЛОВИЯ ПРИЕМА. ЦЕНЫ.\r\nСТУПЕНИ ОБРАЗОВАНИЯ: ДОШКОЛЬНОЕ, НАЧАЛЬНОЕ, БАЗОВОЕ СРЕДНЕЕ, УГЛУБЛЕННОЕ, ПРОФИЛЬНО-ПРАГМАТИЧЕСКОЕ, ВЫСШЕЕ В ОБЛАСТИ МЕЖДУНАРОДНЫХ КОММУНИКАЦИЙ И УПРАВЛЕНИЯ. ПРОГРАММЫ. УСЛОВИЯ ПРИЕМА. ЦЕНЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1509', '', '', '1856866115', NULL, NULL, NULL),
(33, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 26, 'Y', NULL, NULL, 500, '\"Саратовский медицинский университет\"', NULL, 'Структура, история вуза, международная деятельность, контактно-справочная информация. Правила поступления, информация о довузовском образовании. Новости университета в областях образования и науки.', 'html', NULL, 'Структура, история вуза, международная деятельность, контактно-справочная информация. Правила поступления, информация о довузовском образовании. Новости университета в областях образования и науки.', 'text', '\"САРАТОВСКИЙ МЕДИЦИНСКИЙ УНИВЕРСИТЕТ\"\r\nСТРУКТУРА, ИСТОРИЯ ВУЗА, МЕЖДУНАРОДНАЯ \r\nДЕЯТЕЛЬНОСТЬ, КОНТАКТНО-СПРАВОЧНАЯ ИНФОРМАЦИЯ. ПРАВИЛА ПОСТУПЛЕНИЯ, ИНФОРМАЦИЯ О ДОВУЗОВСКОМ ОБРАЗОВАНИИ. НОВОСТИ УНИВЕРСИТЕТА В ОБЛАСТЯХ ОБРАЗОВАНИЯ И НАУКИ.\r\nСТРУКТУРА, ИСТОРИЯ ВУЗА, МЕЖДУНАРОДНАЯ ДЕЯТЕЛЬНОСТЬ, КОНТАКТНО-СПРАВОЧНАЯ ИНФОРМАЦИЯ. ПРАВИЛА ПОСТУПЛЕНИЯ, ИНФОРМАЦИЯ О ДОВУЗОВСКОМ ОБРАЗОВАНИИ. НОВОСТИ УНИВЕРСИТЕТА В ОБЛАСТЯХ ОБРАЗОВАНИЯ И НАУКИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1514', '', '', '541480842', NULL, NULL, NULL),
(34, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 27, 'Y', NULL, NULL, 500, '\"Известия науки\"', NULL, 'Ежедневные публикации о новостях науки и техники, обзоры книг, блоги. Архив с мая 2001г.', 'html', NULL, 'Ежедневные публикации о новостях науки и техники, обзоры книг, блоги. Архив с мая 2001г.', 'text', '\"ИЗВЕСТИЯ НАУКИ\"\r\nЕЖЕДНЕВНЫЕ ПУБЛИКАЦИИ О НОВОСТЯХ НАУКИ \r\nИ ТЕХНИКИ, ОБЗОРЫ КНИГ, БЛОГИ. АРХИВ С МАЯ 2001Г.\r\nЕЖЕДНЕВНЫЕ ПУБЛИКАЦИИ О НОВОСТЯХ НАУКИ И ТЕХНИКИ, ОБЗОРЫ КНИГ, БЛОГИ. АРХИВ С МАЯ 2001Г.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1516', '', '', '2080488751', NULL, NULL, NULL),
(35, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 27, 'Y', NULL, NULL, 500, 'Научно-техническая библиотека \"SciTecLibrary\"', NULL, 'Сборник материалов о технологиях, изобретениях, ноу-хау и др. научно-технических разработках. Форма договора о публикациях. Сведения для авторов о конкурсах, юридической поддержке, патентовании.', 'html', NULL, 'Сборник материалов о технологиях, изобретениях, ноу-хау и др. научно-технических разработках. Форма договора о публикациях. Сведения для авторов о конкурсах, юридической поддержке, патентовании.', 'text', 'НАУЧНО-ТЕХНИЧЕСКАЯ БИБЛИОТЕКА \"SCITECLIBRARY\"\r\nСБОРНИК МАТЕРИАЛОВ О ТЕХНОЛОГИЯХ, ИЗОБРЕТЕНИЯХ, \r\nНОУ-ХАУ И ДР. НАУЧНО-ТЕХНИЧЕСКИХ РАЗРАБОТКАХ. ФОРМА ДОГОВОРА О ПУБЛИКАЦИЯХ. СВЕДЕНИЯ ДЛЯ АВТОРОВ О КОНКУРСАХ, ЮРИДИЧЕСКОЙ ПОДДЕРЖКЕ, ПАТЕНТОВАНИИ.\r\nСБОРНИК МАТЕРИАЛОВ О ТЕХНОЛОГИЯХ, ИЗОБРЕТЕНИЯХ, НОУ-ХАУ И ДР. НАУЧНО-ТЕХНИЧЕСКИХ РАЗРАБОТКАХ. ФОРМА ДОГОВОРА О ПУБЛИКАЦИЯХ. СВЕДЕНИЯ ДЛЯ АВТОРОВ О КОНКУРСАХ, ЮРИДИЧЕСКОЙ ПОДДЕРЖКЕ, ПАТЕНТОВАНИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1520', '', '', '1373320281', NULL, NULL, NULL),
(36, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 27, 'Y', NULL, NULL, 500, '\"Мембрана\" - научно-популярный интернет-журнал', NULL, 'Журнал о мире (как реальном, так и виртуальном), в котором мы живем. Тематический архив. Обсуждение материалов в форуме. Лента новостей.', 'html', NULL, 'Журнал о мире (как реальном, так и виртуальном), в котором мы живем. Тематический архив. Обсуждение материалов в форуме. Лента новостей.', 'text', '\"МЕМБРАНА\" - НАУЧНО-ПОПУЛЯРНЫЙ ИНТЕРНЕТ-ЖУРНАЛ\r\nЖУРНАЛ О МИРЕ (КАК РЕАЛЬНОМ, ТАК И ВИРТУАЛЬНОМ), \r\nВ КОТОРОМ МЫ ЖИВЕМ. ТЕМАТИЧЕСКИЙ АРХИВ. ОБСУЖДЕНИЕ МАТЕРИАЛОВ В ФОРУМЕ. ЛЕНТА НОВОСТЕЙ.\r\nЖУРНАЛ О МИРЕ (КАК РЕАЛЬНОМ, ТАК И ВИРТУАЛЬНОМ), В КОТОРОМ МЫ ЖИВЕМ. ТЕМАТИЧЕСКИЙ АРХИВ. ОБСУЖДЕНИЕ МАТЕРИАЛОВ В ФОРУМЕ. ЛЕНТА НОВОСТЕЙ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1522', '', '', '1506465856', NULL, NULL, NULL),
(37, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 27, 'Y', NULL, NULL, 500, 'Российская академия наук', NULL, 'Информация об отделениях и организациях. План-карта и список российских веб-серверов.', 'html', NULL, 'Информация об отделениях и организациях. План-карта и список российских веб-серверов.', 'text', 'РОССИЙСКАЯ АКАДЕМИЯ НАУК\r\nИНФОРМАЦИЯ ОБ ОТДЕЛЕНИЯХ И ОРГАНИЗАЦИЯХ. \r\nПЛАН-КАРТА И СПИСОК РОССИЙСКИХ ВЕБ-СЕРВЕРОВ.\r\nИНФОРМАЦИЯ ОБ ОТДЕЛЕНИЯХ И ОРГАНИЗАЦИЯХ. ПЛАН-КАРТА И СПИСОК РОССИЙСКИХ ВЕБ-СЕРВЕРОВ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1524', '', '', '-1916242017', NULL, NULL, NULL),
(38, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 28, 'Y', NULL, NULL, 500, '\"Bubo-school\" - информационно-справочный ресурс', NULL, 'Каталог частных школ. Советы родителям. Онлайн-тесты для детей. Прайс-лист услуг по консультированию относительно выбора школы и дошкольной подготовке ребенка. Контакты.', 'html', NULL, 'Каталог частных школ. Советы родителям. Онлайн-тесты для детей. Прайс-лист услуг по консультированию относительно выбора школы и дошкольной подготовке ребенка. Контакты.', 'text', '\"BUBO-SCHOOL\" - ИНФОРМАЦИОННО-СПРАВОЧНЫЙ РЕСУРС\r\nКАТАЛОГ ЧАСТНЫХ ШКОЛ. СОВЕТЫ РОДИТЕЛЯМ. \r\nОНЛАЙН-ТЕСТЫ ДЛЯ ДЕТЕЙ. ПРАЙС-ЛИСТ УСЛУГ ПО КОНСУЛЬТИРОВАНИЮ ОТНОСИТЕЛЬНО ВЫБОРА ШКОЛЫ И ДОШКОЛЬНОЙ ПОДГОТОВКЕ РЕБЕНКА. КОНТАКТЫ.\r\nКАТАЛОГ ЧАСТНЫХ ШКОЛ. СОВЕТЫ РОДИТЕЛЯМ. ОНЛАЙН-ТЕСТЫ ДЛЯ ДЕТЕЙ. ПРАЙС-ЛИСТ УСЛУГ ПО КОНСУЛЬТИРОВАНИЮ ОТНОСИТЕЛЬНО ВЫБОРА ШКОЛЫ И ДОШКОЛЬНОЙ ПОДГОТОВКЕ РЕБЕНКА. КОНТАКТЫ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1528', '', '', '1590981344', NULL, NULL, NULL),
(39, '2019-09-04 16:49:40', 1, '2019-09-04 16:49:40', 1, 2, 28, 'Y', NULL, NULL, 500, '\"Интернет-школа полного среднего образования\"', NULL, 'Виды обучения: дополнительная подготовка по школьным предметам через интернет, экстернат. Условия поступления. Порядок обучения. Вход на учебный сервер. Публикации', 'html', NULL, 'Виды обучения: дополнительная подготовка по школьным предметам через интернет, экстернат. Условия поступления. Порядок обучения. Вход на учебный сервер. Публикации', 'text', '\"ИНТЕРНЕТ-ШКОЛА ПОЛНОГО СРЕДНЕГО ОБРАЗОВАНИЯ\"\r\nВИДЫ ОБУЧЕНИЯ: ДОПОЛНИТЕЛЬНАЯ ПОДГОТОВКА \r\nПО ШКОЛЬНЫМ ПРЕДМЕТАМ ЧЕРЕЗ ИНТЕРНЕТ, ЭКСТЕРНАТ. УСЛОВИЯ ПОСТУПЛЕНИЯ. ПОРЯДОК ОБУЧЕНИЯ. ВХОД НА УЧЕБНЫЙ СЕРВЕР. ПУБЛИКАЦИИ\r\nВИДЫ ОБУЧЕНИЯ: ДОПОЛНИТЕЛЬНАЯ ПОДГОТОВКА ПО ШКОЛЬНЫМ ПРЕДМЕТАМ ЧЕРЕЗ ИНТЕРНЕТ, ЭКСТЕРНАТ. УСЛОВИЯ ПОСТУПЛЕНИЯ. ПОРЯДОК ОБУЧЕНИЯ. ВХОД НА УЧЕБНЫЙ СЕРВЕР. ПУБЛИКАЦИИ', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1530', '', '', '2009496310', NULL, NULL, NULL),
(40, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:40', 1, 2, 28, 'Y', NULL, NULL, 500, '\"Школы в Интернет\"', NULL, 'Подборка ссылок на страницы школ, интернет-технологии в образовании, конференции, обучающие программы и проекты. Веб-кольца, образовательные серверы, сетевые викторины и другое.', 'html', NULL, 'Подборка ссылок на страницы школ, интернет-технологии в образовании, конференции, обучающие программы и проекты. Веб-кольца, образовательные серверы, сетевые викторины и другое.', 'text', '\"ШКОЛЫ В ИНТЕРНЕТ\"\r\nПОДБОРКА ССЫЛОК НА СТРАНИЦЫ ШКОЛ, ИНТЕРНЕТ-ТЕХНОЛОГИИ \r\nВ ОБРАЗОВАНИИ, КОНФЕРЕНЦИИ, ОБУЧАЮЩИЕ ПРОГРАММЫ И ПРОЕКТЫ. ВЕБ-КОЛЬЦА, ОБРАЗОВАТЕЛЬНЫЕ СЕРВЕРЫ, СЕТЕВЫЕ ВИКТОРИНЫ И ДРУГОЕ.\r\nПОДБОРКА ССЫЛОК НА СТРАНИЦЫ ШКОЛ, ИНТЕРНЕТ-ТЕХНОЛОГИИ В ОБРАЗОВАНИИ, КОНФЕРЕНЦИИ, ОБУЧАЮЩИЕ ПРОГРАММЫ И ПРОЕКТЫ. ВЕБ-КОЛЬЦА, ОБРАЗОВАТЕЛЬНЫЕ СЕРВЕРЫ, СЕТЕВЫЕ ВИКТОРИНЫ И ДРУГОЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1532', '', '', '-749509962', NULL, NULL, NULL),
(41, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 29, 'Y', NULL, NULL, 500, '\"Экология и жизнь\" - научно-популярный журнал', NULL, 'Экологические новости. Тематический архив некоторых материалов журнала. Информация о подписке.', 'html', NULL, 'Экологические новости. Тематический архив некоторых материалов журнала. Информация о подписке.', 'text', '\"ЭКОЛОГИЯ И ЖИЗНЬ\" - НАУЧНО-ПОПУЛЯРНЫЙ ЖУРНАЛ\r\nЭКОЛОГИЧЕСКИЕ НОВОСТИ. ТЕМАТИЧЕСКИЙ АРХИВ \r\nНЕКОТОРЫХ МАТЕРИАЛОВ ЖУРНАЛА. ИНФОРМАЦИЯ О ПОДПИСКЕ.\r\nЭКОЛОГИЧЕСКИЕ НОВОСТИ. ТЕМАТИЧЕСКИЙ АРХИВ НЕКОТОРЫХ МАТЕРИАЛОВ ЖУРНАЛА. ИНФОРМАЦИЯ О ПОДПИСКЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1534', '', '', '1045261845', NULL, NULL, NULL),
(42, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 29, 'Y', NULL, NULL, 500, '\"Материалы по экологической экспертизе\"', NULL, 'Полнотекстовые публикации и материалы по экологической экспертизе, мониторингу, менеджменту и др. Экологическое законодательство.', 'html', NULL, 'Полнотекстовые публикации и материалы по экологической экспертизе, мониторингу, менеджменту и др. Экологическое законодательство.', 'text', '\"МАТЕРИАЛЫ ПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ\"\r\nПОЛНОТЕКСТОВЫЕ ПУБЛИКАЦИИ И МАТЕРИАЛЫ \r\nПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ, МОНИТОРИНГУ, МЕНЕДЖМЕНТУ И ДР. ЭКОЛОГИЧЕСКОЕ ЗАКОНОДАТЕЛЬСТВО.\r\nПОЛНОТЕКСТОВЫЕ ПУБЛИКАЦИИ И МАТЕРИАЛЫ ПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ, МОНИТОРИНГУ, МЕНЕДЖМЕНТУ И ДР. ЭКОЛОГИЧЕСКОЕ ЗАКОНОДАТЕЛЬСТВО.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1536', '', '', '-377988755', NULL, NULL, NULL),
(43, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 29, 'Y', NULL, NULL, 500, '\"Окружающая среда - Риск - Здоровье\"', NULL, 'Материалы об опасности аномальных климатических явлений для здоровья. Информация по городам. Публикации. Словарь терминов. Отчеты о конференциях. Контакты организации.', 'html', NULL, 'Материалы об опасности аномальных климатических явлений для здоровья. Информация по городам. Публикации. Словарь терминов. Отчеты о конференциях. Контакты организации.', 'text', '\"ОКРУЖАЮЩАЯ СРЕДА - РИСК - ЗДОРОВЬЕ\"\r\nМАТЕРИАЛЫ ОБ ОПАСНОСТИ АНОМАЛЬНЫХ КЛИМАТИЧЕСКИХ \r\nЯВЛЕНИЙ ДЛЯ ЗДОРОВЬЯ. ИНФОРМАЦИЯ ПО ГОРОДАМ. ПУБЛИКАЦИИ. СЛОВАРЬ ТЕРМИНОВ. ОТЧЕТЫ О КОНФЕРЕНЦИЯХ. КОНТАКТЫ ОРГАНИЗАЦИИ.\r\nМАТЕРИАЛЫ ОБ ОПАСНОСТИ АНОМАЛЬНЫХ КЛИМАТИЧЕСКИХ ЯВЛЕНИЙ ДЛЯ ЗДОРОВЬЯ. ИНФОРМАЦИЯ ПО ГОРОДАМ. ПУБЛИКАЦИИ. СЛОВАРЬ ТЕРМИНОВ. ОТЧЕТЫ О КОНФЕРЕНЦИЯХ. КОНТАКТЫ ОРГАНИЗАЦИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1538', '', '', '1214223563', NULL, NULL, NULL),
(44, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 18, 'Y', '2009-10-06 12:18:23', NULL, 500, 'Битрикс: Управление сайтом', NULL, 'Сайт программного продукта &quot;Битрикс: Управление сайтом&quot;', 'html', NULL, '&quot;Битрикс: Управление сайтом&quot; - универсальный программный продукт для разработки, поддержки и успешного развития интернет-проекта. Удобный и понятный интерфейс позволяет эффективно управлять сайтом, не привлекая специалистов по программированию и html-верстке.', 'text', 'БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\r\nСАЙТ ПРОГРАММНОГО ПРОДУКТА \"БИТРИКС: УПРАВЛЕНИЕ \r\nСАЙТОМ\"\r\n&QUOT;БИТРИКС: УПРАВЛЕНИЕ САЙТОМ&QUOT; - УНИВЕРСАЛЬНЫЙ ПРОГРАММНЫЙ ПРОДУКТ ДЛЯ РАЗРАБОТКИ, ПОДДЕРЖКИ И УСПЕШНОГО РАЗВИТИЯ ИНТЕРНЕТ-ПРОЕКТА. УДОБНЫЙ И ПОНЯТНЫЙ ИНТЕРФЕЙС ПОЗВОЛЯЕТ ЭФФЕКТИВНО УПРАВЛЯТЬ САЙТОМ, НЕ ПРИВЛЕКАЯ СПЕЦИАЛИСТОВ ПО ПРОГРАММИРОВАНИЮ И HTML-ВЕРСТКЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1540', '', '', '666209455', NULL, NULL, NULL),
(45, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 29, 'Y', NULL, NULL, 500, '\"Беллона\" - экологическое объединение (Норвегия)', NULL, 'Информация о проблемах эксплуатации атомного флота ВМФ России, сведения об атомных электростанциях и ледоколах. Материалы по ядерному разоружению и по радиоактивным отходам. Атомная хроника.', 'html', NULL, 'Информация о проблемах эксплуатации атомного флота ВМФ России, сведения об атомных электростанциях и ледоколах. Материалы по ядерному разоружению и по радиоактивным отходам. Атомная хроника.', 'text', '\"БЕЛЛОНА\" - ЭКОЛОГИЧЕСКОЕ ОБЪЕДИНЕНИЕ (НОРВЕГИЯ)\r\nИНФОРМАЦИЯ О ПРОБЛЕМАХ ЭКСПЛУАТАЦИИ АТОМНОГО \r\nФЛОТА ВМФ РОССИИ, СВЕДЕНИЯ ОБ АТОМНЫХ ЭЛЕКТРОСТАНЦИЯХ И ЛЕДОКОЛАХ. МАТЕРИАЛЫ ПО ЯДЕРНОМУ РАЗОРУЖЕНИЮ И ПО РАДИОАКТИВНЫМ ОТХОДАМ. АТОМНАЯ ХРОНИКА.\r\nИНФОРМАЦИЯ О ПРОБЛЕМАХ ЭКСПЛУАТАЦИИ АТОМНОГО ФЛОТА ВМФ РОССИИ, СВЕДЕНИЯ ОБ АТОМНЫХ ЭЛЕКТРОСТАНЦИЯХ И ЛЕДОКОЛАХ. МАТЕРИАЛЫ ПО ЯДЕРНОМУ РАЗОРУЖЕНИЮ И ПО РАДИОАКТИВНЫМ ОТХОДАМ. АТОМНАЯ ХРОНИКА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1542', '', '', '-528736346', NULL, NULL, NULL),
(46, '2019-09-04 16:49:41', 1, '2019-09-04 16:49:41', 1, 2, 45, 'Y', NULL, NULL, 500, '\"Komod.ru\" - справочно-поисковая система по мебели', NULL, 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия). ', 'html', NULL, 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия). ', 'text', '\"KOMOD.RU\" - СПРАВОЧНО-ПОИСКОВАЯ СИСТЕМА ПО МЕБЕЛИ\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, \r\nКООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ). ', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1563', '', '', '-2070395928', NULL, NULL, NULL),
(47, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 47, 'Y', NULL, NULL, 500, 'Как настроить обработчик 404 ошибки?', NULL, '\n<p>Если у вас PHP установлен как CGI добавьте в корне сайта в файл .htaccess следующие строки:\n  <br />\n<code>&nbsp;&nbsp;&nbsp; RewriteEngine On\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteBase /\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteCond %{REQUEST_FILENAME} !-f\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteRule ^[0-9a-zA-Z_/.-]+.php$ /404.php\n    <br />\n  &nbsp;&nbsp;&nbsp; ErrorDocument 404 /404.php\n    <br />\n  </code>Для PHP установленном как ISAPI в .htaccess достаточно добавить строку:\n  <br />\n<code>&nbsp;&nbsp;&nbsp; ErrorDocument 404 /404.php\n    <br />\n  </code>После этого создайте в корне сайта файл 404.php (если его нет), который и будет являться обработчиком 404 ошибки.</p>\n\n<p>\n  <br />\n</p>\n', 'html', NULL, NULL, 'text', 'КАК НАСТРОИТЬ ОБРАБОТЧИК 404 ОШИБКИ?\r\nЕСЛИ У ВАС PHP УСТАНОВЛЕН КАК CGI ДОБАВЬТЕ \r\nВ КОРНЕ САЙТА В ФАЙЛ .HTACCESS СЛЕДУЮЩИЕ СТРОКИ: \r\n&NBSP;&NBSP;&NBSP; REWRITEENGINE ON \r\n&NBSP;&NBSP;&NBSP; REWRITEBASE / \r\n&NBSP;&NBSP;&NBSP; REWRITECOND %{REQUEST_FILENAME} !-F \r\n&NBSP;&NBSP;&NBSP; REWRITERULE ^[0-9A-ZA-Z_/.-]+.PHP$ /404.PHP \r\n&NBSP;&NBSP;&NBSP; ERRORDOCUMENT 404 /404.PHP \r\nДЛЯ PHP УСТАНОВЛЕННОМ КАК ISAPI В .HTACCESS ДОСТАТОЧНО \r\nДОБАВИТЬ СТРОКУ: \r\n&NBSP;&NBSP;&NBSP; ERRORDOCUMENT 404 /404.PHP \r\nПОСЛЕ ЭТОГО СОЗДАЙТЕ В КОРНЕ САЙТА ФАЙЛ \r\n404.PHP (ЕСЛИ ЕГО НЕТ), КОТОРЫЙ И БУДЕТ ЯВЛЯТЬСЯ ОБРАБОТЧИКОМ 404 ОШИБКИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1677', '', '', '1626470722', NULL, NULL, NULL),
(48, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 49, 'Y', NULL, NULL, 500, 'Может ли частное лицо стать партнером компании?', NULL, '\n<p>Такой вариант возможен, если вы являетесь разработчиком сайтов. Для принятия решения о подписании партнерского соглашения нам понадобится подробнее изучить ваше портфолио. Условия участия для частных лиц не меняются, за исключением того, что для физических лиц мы предоставляем бесплатный ключ только после успешной продажи продукта.</p>\n\n<p>\n  <br />\n</p>\n', 'html', NULL, NULL, 'text', 'МОЖЕТ ЛИ ЧАСТНОЕ ЛИЦО СТАТЬ ПАРТНЕРОМ КОМПАНИИ?\r\nТАКОЙ ВАРИАНТ ВОЗМОЖЕН, ЕСЛИ ВЫ ЯВЛЯЕТЕСЬ \r\nРАЗРАБОТЧИКОМ САЙТОВ. ДЛЯ ПРИНЯТИЯ РЕШЕНИЯ О ПОДПИСАНИИ ПАРТНЕРСКОГО СОГЛАШЕНИЯ НАМ ПОНАДОБИТСЯ ПОДРОБНЕЕ ИЗУЧИТЬ ВАШЕ ПОРТФОЛИО. УСЛОВИЯ УЧАСТИЯ ДЛЯ ЧАСТНЫХ ЛИЦ НЕ МЕНЯЮТСЯ, ЗА ИСКЛЮЧЕНИЕМ ТОГО, ЧТО ДЛЯ ФИЗИЧЕСКИХ ЛИЦ МЫ ПРЕДОСТАВЛЯЕМ БЕСПЛАТНЫЙ КЛЮЧ ТОЛЬКО ПОСЛЕ УСПЕШНОЙ ПРОДАЖИ ПРОДУКТА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1680', '', '', '-228423842', NULL, NULL, NULL),
(49, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 49, 'Y', NULL, NULL, 500, 'Действуют ли партнерские скидки для собственных сайтов партнеров?', NULL, '\n<p>Партнерам нашей компании предоставляется бесплатная копия продукта для своего основного сайта. Таким считается сайт, на котором рассказывается об основной деятельности компании партнера (дизайн, разработка сайтов, дистрибуция ПО).\n  <br />\nЕсли вы планируете перевести на &quot;Битрикс: Управление сайтом&quot; несколько своих веб-проектов, не связанных с основным видом деятельности, вы можете приобрести копию продукта со своей партнерской скидкой.</p>\n\n<p>\n  <br />\n</p>\n', 'html', NULL, NULL, 'text', 'ДЕЙСТВУЮТ ЛИ ПАРТНЕРСКИЕ СКИДКИ ДЛЯ СОБСТВЕННЫХ САЙТОВ ПАРТНЕРОВ?\r\nПАРТНЕРАМ НАШЕЙ КОМПАНИИ ПРЕДОСТАВЛЯЕТСЯ \r\nБЕСПЛАТНАЯ КОПИЯ ПРОДУКТА ДЛЯ СВОЕГО ОСНОВНОГО САЙТА. ТАКИМ СЧИТАЕТСЯ САЙТ, НА КОТОРОМ РАССКАЗЫВАЕТСЯ ОБ ОСНОВНОЙ ДЕЯТЕЛЬНОСТИ КОМПАНИИ ПАРТНЕРА (ДИЗАЙН, РАЗРАБОТКА САЙТОВ, ДИСТРИБУЦИЯ ПО). \r\nЕСЛИ ВЫ ПЛАНИРУЕТЕ ПЕРЕВЕСТИ НА \"БИТРИКС: \r\nУПРАВЛЕНИЕ САЙТОМ\" НЕСКОЛЬКО СВОИХ ВЕБ-ПРОЕКТОВ, НЕ СВЯЗАННЫХ С ОСНОВНЫМ ВИДОМ ДЕЯТЕЛЬНОСТИ, ВЫ МОЖЕТЕ ПРИОБРЕСТИ КОПИЮ ПРОДУКТА СО СВОЕЙ ПАРТНЕРСКОЙ СКИДКОЙ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1734', '', '', '760863092', NULL, NULL, NULL),
(50, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 48, 'Y', NULL, NULL, 500, 'Что произойдет через год после покупки, когда закончится бесплатная техподдержка и обновления?', NULL, '<p>В течение года после покупки продукта вы можете скачивать все обновления для вашей <a href=\"http://www.bitrix.ru/editions/\">редакции</a>. Список уже выпущенных обновлений публикуется на сайте: <a href=\"http://www.bitrix.ru/sitemanager/versions.php\" title=\"\" target=\"\">http://www.bitrixsoft.ru/sitemanager/versions.php</a>\n  <br />\n&lt;Через год, если вы захотите и дальше скачивать обновления, вам нужно будет продлить срок активности техподдержки и обновлений.\n  <br />\n<strong>Льготное продление</strong> - 22% от цены используемого продукта.\n  <br />\nПо льготному продлению срок активности обновлений продляется ровно на один год с момента завершения предыдущего периода.\n  <br />\n&lt;Если же вы решите не продлять обновления, на работе сайта это никак не отразится. Вы сможете использовать ту версию продукта, которая&nbsp; у вас будет на момент завершения техподдержки и обновлений.</p>\n<p></p>\n<p></p>\n', 'html', NULL, NULL, 'text', 'ЧТО ПРОИЗОЙДЕТ ЧЕРЕЗ ГОД ПОСЛЕ ПОКУПКИ, КОГДА ЗАКОНЧИТСЯ БЕСПЛАТНАЯ ТЕХПОДДЕРЖКА И ОБНОВЛЕНИЯ?\r\nВ ТЕЧЕНИЕ ГОДА ПОСЛЕ ПОКУПКИ ПРОДУКТА ВЫ \r\nМОЖЕТЕ СКАЧИВАТЬ ВСЕ ОБНОВЛЕНИЯ ДЛЯ ВАШЕЙ РЕДАКЦИИ [ HTTP://WWW.BITRIX.RU/EDITIONS/ ] . СПИСОК УЖЕ ВЫПУЩЕННЫХ ОБНОВЛЕНИЙ ПУБЛИКУЕТСЯ НА САЙТЕ: HTTP://WWW.BITRIXSOFT.RU/SITEMANAGER/VERSIONS.PHP [ HTTP://WWW.BITRIX.RU/SITEMANAGER/VERSIONS.PHP ] \r\n&LT;ЧЕРЕЗ ГОД, ЕСЛИ ВЫ ЗАХОТИТЕ И ДАЛЬШЕ СКАЧИВАТЬ \r\nОБНОВЛЕНИЯ, ВАМ НУЖНО БУДЕТ ПРОДЛИТЬ СРОК АКТИВНОСТИ ТЕХПОДДЕРЖКИ И ОБНОВЛЕНИЙ. \r\nЛЬГОТНОЕ ПРОДЛЕНИЕ - 22% ОТ ЦЕНЫ ИСПОЛЬЗУЕМОГО \r\nПРОДУКТА. \r\nПО ЛЬГОТНОМУ ПРОДЛЕНИЮ СРОК АКТИВНОСТИ \r\nОБНОВЛЕНИЙ ПРОДЛЯЕТСЯ РОВНО НА ОДИН ГОД С МОМЕНТА ЗАВЕРШЕНИЯ ПРЕДЫДУЩЕГО ПЕРИОДА. \r\n&LT;ЕСЛИ ЖЕ ВЫ РЕШИТЕ НЕ ПРОДЛЯТЬ ОБНОВЛЕНИЯ, \r\nНА РАБОТЕ САЙТА ЭТО НИКАК НЕ ОТРАЗИТСЯ. ВЫ СМОЖЕТЕ ИСПОЛЬЗОВАТЬ ТУ ВЕРСИЮ ПРОДУКТА, КОТОРАЯ&NBSP; У ВАС БУДЕТ НА МОМЕНТ ЗАВЕРШЕНИЯ ТЕХПОДДЕРЖКИ И ОБНОВЛЕНИЙ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1737', '', '', '-2126090285', NULL, NULL, NULL),
(51, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 48, 'Y', NULL, NULL, 500, 'Цена продукта на сайте указана с учетом НДС?', NULL, '\n<p>НДС включен в стоимость продукта. При оформлении заказа вы получите подробную информацию о сумме к оплате.</p>\n\n<p>\n  <br />\n</p>\n', 'html', NULL, NULL, 'text', 'ЦЕНА ПРОДУКТА НА САЙТЕ УКАЗАНА С УЧЕТОМ НДС?\r\nНДС ВКЛЮЧЕН В СТОИМОСТЬ ПРОДУКТА. ПРИ ОФОРМЛЕНИИ \r\nЗАКАЗА ВЫ ПОЛУЧИТЕ ПОДРОБНУЮ ИНФОРМАЦИЮ О СУММЕ К ОПЛАТЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1745', '', '', '1933161718', NULL, NULL, NULL),
(52, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 49, 'Y', NULL, NULL, 500, 'Система партнерских скидок распространяется на все редакции продукта?', NULL, '\n<p>Да, партнерские скидки применяются ко всем редакциям продукта &laquo;Битрикс: Управление сайтом&raquo;.</p>\n\n<p>\n  <br />\n</p>\n', 'html', NULL, NULL, 'text', 'СИСТЕМА ПАРТНЕРСКИХ СКИДОК РАСПРОСТРАНЯЕТСЯ НА ВСЕ РЕДАКЦИИ ПРОДУКТА?\r\nДА, ПАРТНЕРСКИЕ СКИДКИ ПРИМЕНЯЮТСЯ КО ВСЕМ \r\nРЕДАКЦИЯМ ПРОДУКТА &LAQUO;БИТРИКС: УПРАВЛЕНИЕ САЙТОМ&RAQUO;.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1747', '', '', '932637587', NULL, NULL, NULL),
(53, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 49, 'Y', NULL, NULL, 500, 'Какова последовательность действий при оформлении заказа?', NULL, 'Ссылки на оформление закза можно найти на нашем сайте в разделе &quot;Купить&quot;: <a href=\"http://www.bitrixsoft.ru/buy/\" class=\"txttohtmllink\">http://www.bitrixsoft.ru/buy/</a> и в разделе Купить -&gt; Для партнеров:\n<br />\n<a href=\"http://www.bitrixsoft.ru/buy/partners.php\" class=\"txttohtmllink\">http://www.bitrixsoft.ru/buy/partners.php</a>', 'html', NULL, NULL, 'text', 'КАКОВА ПОСЛЕДОВАТЕЛЬНОСТЬ ДЕЙСТВИЙ ПРИ ОФОРМЛЕНИИ ЗАКАЗА?\r\nССЫЛКИ НА ОФОРМЛЕНИЕ ЗАКЗА МОЖНО НАЙТИ \r\nНА НАШЕМ САЙТЕ В РАЗДЕЛЕ \"КУПИТЬ\": HTTP://WWW.BITRIXSOFT.RU/BUY/ [ HTTP://WWW.BITRIXSOFT.RU/BUY/ ] И В РАЗДЕЛЕ КУПИТЬ -&GT; ДЛЯ ПАРТНЕРОВ: \r\nHTTP://WWW.BITRIXSOFT.RU/BUY/PARTNERS.PHP [ HTTP://WWW.BITRIXSOFT.RU/BUY/PARTNERS.PHP ]', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1751', '', '', '761459755', NULL, NULL, NULL),
(54, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 48, 'Y', NULL, NULL, 500, 'В чем разница между сайтом и экземпляром?', NULL, 'На основе одного экземпляра продукта можно создать два сайта в рамках одного веб-проекта (на одном экземпляре базы данных). Если сайтов в проекте больше двух, необходимо докупить лицензии на сайты.\n<br />\nОбщими для сайтов являются:\n<br />\n- база пользователей;\n<br />\n- система авторизации;\n<br />\n- рекламное пространство и т.д.\n<br />\nСайт обладает своей структурой, файлами, блоками, объектами, почтовыми сообщениями и зачастую управляется другими сотрудниками. Таким образом, совокупность правил, объектов, сообщений, настроек, файлов и других сущностей мы связываем с сайтом и позволяем управлять с использованием единого инструментария.\n<br />\nСайты можно настроить как отдельные подкаталоги на одном веб-сервере и как полностью разные веб-сервера, начинающиеся от корня, но работающие с единой базой данных.\n<br />\nСистема статистики уже ведет частичное разделение данных по сайтам. Для нескольких доменов работает технология трансфера данных, и посетитель пришедший на сайт А, узнается даже когда приходит на сайт Б. В дальнейшем, разделение будет еще большим и почти все отчеты будут считаться в разрезе по сайтам.\n<br />\n\n<br />\n', 'html', NULL, NULL, 'text', 'В ЧЕМ РАЗНИЦА МЕЖДУ САЙТОМ И ЭКЗЕМПЛЯРОМ?\r\nНА ОСНОВЕ ОДНОГО ЭКЗЕМПЛЯРА ПРОДУКТА МОЖНО \r\nСОЗДАТЬ ДВА САЙТА В РАМКАХ ОДНОГО ВЕБ-ПРОЕКТА (НА ОДНОМ ЭКЗЕМПЛЯРЕ БАЗЫ ДАННЫХ). ЕСЛИ САЙТОВ В ПРОЕКТЕ БОЛЬШЕ ДВУХ, НЕОБХОДИМО ДОКУПИТЬ ЛИЦЕНЗИИ НА САЙТЫ. \r\nОБЩИМИ ДЛЯ САЙТОВ ЯВЛЯЮТСЯ: \r\n- БАЗА ПОЛЬЗОВАТЕЛЕЙ; \r\n- СИСТЕМА АВТОРИЗАЦИИ; \r\n- РЕКЛАМНОЕ ПРОСТРАНСТВО И Т.Д. \r\nСАЙТ ОБЛАДАЕТ СВОЕЙ СТРУКТУРОЙ, ФАЙЛАМИ, \r\nБЛОКАМИ, ОБЪЕКТАМИ, ПОЧТОВЫМИ СООБЩЕНИЯМИ И ЗАЧАСТУЮ УПРАВЛЯЕТСЯ ДРУГИМИ СОТРУДНИКАМИ. ТАКИМ ОБРАЗОМ, СОВОКУПНОСТЬ ПРАВИЛ, ОБЪЕКТОВ, СООБЩЕНИЙ, НАСТРОЕК, ФАЙЛОВ И ДРУГИХ СУЩНОСТЕЙ МЫ СВЯЗЫВАЕМ С САЙТОМ И ПОЗВОЛЯЕМ УПРАВЛЯТЬ С ИСПОЛЬЗОВАНИЕМ ЕДИНОГО ИНСТРУМЕНТАРИЯ. \r\nСАЙТЫ МОЖНО НАСТРОИТЬ КАК ОТДЕЛЬНЫЕ ПОДКАТАЛОГИ \r\nНА ОДНОМ ВЕБ-СЕРВЕРЕ И КАК ПОЛНОСТЬЮ РАЗНЫЕ ВЕБ-СЕРВЕРА, НАЧИНАЮЩИЕСЯ ОТ КОРНЯ, НО РАБОТАЮЩИЕ С ЕДИНОЙ БАЗОЙ ДАННЫХ. \r\nСИСТЕМА СТАТИСТИКИ УЖЕ ВЕДЕТ ЧАСТИЧНОЕ \r\nРАЗДЕЛЕНИЕ ДАННЫХ ПО САЙТАМ. ДЛЯ НЕСКОЛЬКИХ ДОМЕНОВ РАБОТАЕТ ТЕХНОЛОГИЯ ТРАНСФЕРА ДАННЫХ, И ПОСЕТИТЕЛЬ ПРИШЕДШИЙ НА САЙТ А, УЗНАЕТСЯ ДАЖЕ КОГДА ПРИХОДИТ НА САЙТ Б. В ДАЛЬНЕЙШЕМ, РАЗДЕЛЕНИЕ БУДЕТ ЕЩЕ БОЛЬШИМ И ПОЧТИ ВСЕ ОТЧЕТЫ БУДУТ СЧИТАТЬСЯ В РАЗРЕЗЕ ПО САЙТАМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1753', '', '', '-588497205', NULL, NULL, NULL);
INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(55, '2019-09-04 16:49:43', 1, '2019-09-04 16:49:43', 1, 3, 47, 'Y', NULL, NULL, 500, 'Как организовано управление правами в системе?', NULL, 'В системе &quot;Битрикс: Управление сайтом&quot; поддерживается два уровня разграничения прав доступа:\n<br />\n1) <b>доступ непосредственно на файлы</b>\n<br />\n2) <b>права в рамках логики того или иного модуля</b>\n<br />\nСначала система проверяет доступ 1-го уровня, затем при необходимости проверяется право доступа 2-го уровня.\n<br />\nДля 1-го уровня доступа используются следующие варианты:\n<br />\n- запрещен (при обращении к файлу доступ будет всегда запрещен)\n<br />\n- чтение (при обращении к файлу доступ будет разрешен)\n<br />\n- документооборот (файл может быть отредактирован в режиме документооборота)\n<br />\n- запись (файл может быть отредактирован непосредственно)\n<br />\nДанный уровень доступа задается в меню &quot;Структура сайта&quot; -&gt; &quot;Управление&quot;.\n<br />\nЕсли пользователь обладает несколькими уровнями доступа на файл, то выбирается максимальный.\n<br />\nЕсли речь идет об обычных статичных публичных страницах, то к ним применяется только 1-ый уровень доступа.\n<br />\nЕсли пользователь имеет как минимум право &quot;Чтение&quot; на файл (1-ый уровень доступа) и если данный файл является функциональной частью того или иного модуля, то проверяются права доступа 2-го уровня, которые задаются в настройках модуля.\n<br />', 'html', NULL, NULL, 'text', 'КАК ОРГАНИЗОВАНО УПРАВЛЕНИЕ ПРАВАМИ В СИСТЕМЕ?\r\nВ СИСТЕМЕ \"БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\" ПОДДЕРЖИВАЕТСЯ \r\nДВА УРОВНЯ РАЗГРАНИЧЕНИЯ ПРАВ ДОСТУПА: \r\n1) ДОСТУП НЕПОСРЕДСТВЕННО НА ФАЙЛЫ \r\n2) ПРАВА В РАМКАХ ЛОГИКИ ТОГО ИЛИ ИНОГО МОДУЛЯ \r\nСНАЧАЛА СИСТЕМА ПРОВЕРЯЕТ ДОСТУП 1-ГО УРОВНЯ, \r\nЗАТЕМ ПРИ НЕОБХОДИМОСТИ ПРОВЕРЯЕТСЯ ПРАВО ДОСТУПА 2-ГО УРОВНЯ. \r\nДЛЯ 1-ГО УРОВНЯ ДОСТУПА ИСПОЛЬЗУЮТСЯ СЛЕДУЮЩИЕ \r\nВАРИАНТЫ: \r\n- ЗАПРЕЩЕН (ПРИ ОБРАЩЕНИИ К ФАЙЛУ ДОСТУП \r\nБУДЕТ ВСЕГДА ЗАПРЕЩЕН) \r\n- ЧТЕНИЕ (ПРИ ОБРАЩЕНИИ К ФАЙЛУ ДОСТУП БУДЕТ \r\nРАЗРЕШЕН) \r\n- ДОКУМЕНТООБОРОТ (ФАЙЛ МОЖЕТ БЫТЬ ОТРЕДАКТИРОВАН \r\nВ РЕЖИМЕ ДОКУМЕНТООБОРОТА) \r\n- ЗАПИСЬ (ФАЙЛ МОЖЕТ БЫТЬ ОТРЕДАКТИРОВАН \r\nНЕПОСРЕДСТВЕННО) \r\nДАННЫЙ УРОВЕНЬ ДОСТУПА ЗАДАЕТСЯ В МЕНЮ \r\n\"СТРУКТУРА САЙТА\" -&GT; \"УПРАВЛЕНИЕ\". \r\nЕСЛИ ПОЛЬЗОВАТЕЛЬ ОБЛАДАЕТ НЕСКОЛЬКИМИ \r\nУРОВНЯМИ ДОСТУПА НА ФАЙЛ, ТО ВЫБИРАЕТСЯ МАКСИМАЛЬНЫЙ. \r\nЕСЛИ РЕЧЬ ИДЕТ ОБ ОБЫЧНЫХ СТАТИЧНЫХ ПУБЛИЧНЫХ \r\nСТРАНИЦАХ, ТО К НИМ ПРИМЕНЯЕТСЯ ТОЛЬКО 1-ЫЙ УРОВЕНЬ ДОСТУПА. \r\nЕСЛИ ПОЛЬЗОВАТЕЛЬ ИМЕЕТ КАК МИНИМУМ ПРАВО \r\n\"ЧТЕНИЕ\" НА ФАЙЛ (1-ЫЙ УРОВЕНЬ ДОСТУПА) И ЕСЛИ ДАННЫЙ ФАЙЛ ЯВЛЯЕТСЯ ФУНКЦИОНАЛЬНОЙ ЧАСТЬЮ ТОГО ИЛИ ИНОГО МОДУЛЯ, ТО ПРОВЕРЯЮТСЯ ПРАВА ДОСТУПА 2-ГО УРОВНЯ, КОТОРЫЕ ЗАДАЮТСЯ В НАСТРОЙКАХ МОДУЛЯ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1755', '', '', '1912855232', NULL, NULL, NULL),
(56, '2019-09-05 14:12:41', 1, '2019-09-05 13:58:54', 1, 1, 13, 'Y', '2019-09-05 13:55:00', NULL, 500, 'Bitrix Framework', 13, 'Новость про bitrix framework:', 'text', 14, 'Новость про bitrix framework:', 'text', 'BITRIX FRAMEWORK\r\nНОВОСТЬ ПРО BITRIX FRAMEWORK:\r\nНОВОСТЬ ПРО BITRIX FRAMEWORK:', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '56', '', '', '0', NULL, 8, '2019-09-05 13:59:10');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_iprop`
--

CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_lock`
--

CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_property`
--

CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element_property`
--

INSERT INTO `b_iblock_element_property` (`ID`, `IBLOCK_PROPERTY_ID`, `IBLOCK_ELEMENT_ID`, `VALUE`, `VALUE_TYPE`, `VALUE_ENUM`, `VALUE_NUM`, `DESCRIPTION`) VALUES
(1, 3, 1, '77-39-57', 'text', NULL, '77.0000', ''),
(2, 1, 2, 'support@bitrixsoft.ru', 'text', NULL, '0.0000', ''),
(3, 4, 2, '1', 'text', NULL, '1.0000', ''),
(4, 3, 3, '89178632460', 'text', NULL, '89178632460.0000', ''),
(5, 3, 4, '77-10-03', 'text', NULL, '77.0000', ''),
(6, 2, 5, 'http://www.dom-39.narod.ru', 'text', NULL, '0.0000', ''),
(7, 3, 5, '76-57-65', 'text', NULL, '76.0000', ''),
(8, 3, 6, '89213310333', 'text', NULL, '89213310333.0000', ''),
(9, 3, 7, '77-06-08', 'text', NULL, '77.0000', ''),
(10, 2, 8, 'http://www.neoplan.ru', 'text', NULL, '0.0000', ''),
(11, 3, 9, '60-80-55', 'text', NULL, '60.0000', ''),
(12, 3, 10, '63-16-21', 'text', NULL, '63.0000', ''),
(13, 2, 11, 'http://www.te-i.ru/eksp.htm', 'text', NULL, '0.0000', ''),
(14, 3, 12, '68-78-97', 'text', NULL, '68.0000', ''),
(15, 2, 13, ' http://notebooks.by.ru', 'text', NULL, '0.0000', ''),
(16, 3, 14, '14-43-80', 'text', NULL, '14.0000', ''),
(17, 3, 15, '51-44-24 ', 'text', NULL, '51.0000', ''),
(18, 5, 16, 'http://www.cbr.ru ', 'text', NULL, '0.0000', ''),
(19, 5, 17, 'http://www.gazprombank.ru ', 'text', NULL, '0.0000', ''),
(20, 5, 18, 'http://www.alfabank.ru ', 'text', NULL, '0.0000', ''),
(21, 5, 19, 'http://www.vtb.ru ', 'text', NULL, '0.0000', ''),
(22, 5, 20, 'http://www.ram.ru', 'text', NULL, '0.0000', ''),
(23, 5, 21, 'http://www.v-ratio.ru', 'text', NULL, '0.0000', ''),
(24, 5, 22, 'http://www.comcon-2.ru', 'text', NULL, '0.0000', ''),
(25, 5, 23, 'http://www.russianrealty.ru', 'text', NULL, '0.0000', ''),
(26, 5, 24, 'http://www.kid.ru/index3.php3 ', 'text', NULL, '0.0000', ''),
(27, 5, 25, 'http://skazochki.narod.ru', 'text', NULL, '0.0000', ''),
(28, 5, 26, 'http://www.zhilex.ru', 'text', NULL, '0.0000', ''),
(29, 5, 27, 'http://www.komod.ru', 'text', NULL, '0.0000', ''),
(30, 5, 28, 'http://www.mvideo.ru', 'text', NULL, '0.0000', ''),
(31, 5, 29, 'http://kupisam.ru', 'text', NULL, '0.0000', ''),
(32, 5, 30, 'http://www.msu.ru', 'text', NULL, '0.0000', ''),
(33, 5, 31, 'http://www.rudn.ru', 'text', NULL, '0.0000', ''),
(34, 5, 32, 'http://www.pansionmsu.ru', 'text', NULL, '0.0000', ''),
(35, 5, 33, 'http://www.sgmu.ru', 'text', NULL, '0.0000', ''),
(36, 5, 34, 'http://www.inauka.ru', 'text', NULL, '0.0000', ''),
(37, 5, 35, 'http://www.sciteclibrary.ru', 'text', NULL, '0.0000', ''),
(38, 5, 36, 'http://www.membrana.ru', 'text', NULL, '0.0000', ''),
(39, 5, 37, 'http://www.ras.ru', 'text', NULL, '0.0000', ''),
(40, 5, 38, 'http://www.bubo-school.ru', 'text', NULL, '0.0000', ''),
(41, 5, 39, 'http://school.odoportal.ru', 'text', NULL, '0.0000', ''),
(42, 5, 40, 'http://schools.techno.ru', 'text', NULL, '0.0000', ''),
(43, 5, 41, 'http://www.ecolife.ru', 'text', NULL, '0.0000', ''),
(44, 5, 42, 'http://www.ecoline.ru/mc', 'text', NULL, '0.0000', ''),
(45, 5, 43, 'http://www.erh.ru', 'text', NULL, '0.0000', ''),
(46, 5, 44, 'http://www.bitrixsoft.ru', 'text', NULL, '0.0000', ''),
(47, 6, 44, 'support@bitrixsoft.ru', 'text', NULL, '0.0000', ''),
(48, 5, 45, 'http://www.bellona.no', 'text', NULL, '0.0000', ''),
(49, 5, 46, 'http://www.komod.ru', 'text', NULL, '0.0000', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_right`
--

CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_fields`
--

CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_fields`
--

INSERT INTO `b_iblock_fields` (`IBLOCK_ID`, `FIELD_ID`, `IS_REQUIRED`, `DEFAULT_VALUE`) VALUES
(1, 'ACTIVE', 'Y', NULL),
(1, 'ACTIVE_FROM', 'N', NULL),
(1, 'ACTIVE_TO', 'N', NULL),
(1, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'DETAIL_TEXT', 'N', NULL),
(1, 'DETAIL_TEXT_TYPE', 'Y', NULL),
(1, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(1, 'LOG_ELEMENT_ADD', 'N', NULL),
(1, 'LOG_ELEMENT_DELETE', 'N', NULL),
(1, 'LOG_ELEMENT_EDIT', 'N', NULL),
(1, 'LOG_SECTION_ADD', 'N', NULL),
(1, 'LOG_SECTION_DELETE', 'N', NULL),
(1, 'LOG_SECTION_EDIT', 'N', NULL),
(1, 'NAME', 'Y', NULL),
(1, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'PREVIEW_TEXT', 'N', NULL),
(1, 'PREVIEW_TEXT_TYPE', 'Y', NULL),
(1, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'SECTION_DESCRIPTION', 'N', NULL),
(1, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(1, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_NAME', 'Y', NULL),
(1, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_XML_ID', 'N', NULL),
(1, 'SORT', 'N', '0'),
(1, 'TAGS', 'N', NULL),
(1, 'XML_ID', 'Y', NULL),
(1, 'XML_IMPORT_START_TIME', 'N', '2019-09-04 15:49:35'),
(2, 'ACTIVE', 'Y', NULL),
(2, 'ACTIVE_FROM', 'N', NULL),
(2, 'ACTIVE_TO', 'N', NULL),
(2, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(2, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'DETAIL_TEXT', 'N', NULL),
(2, 'DETAIL_TEXT_TYPE', 'Y', NULL),
(2, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(2, 'LOG_ELEMENT_ADD', 'N', NULL),
(2, 'LOG_ELEMENT_DELETE', 'N', NULL),
(2, 'LOG_ELEMENT_EDIT', 'N', NULL),
(2, 'LOG_SECTION_ADD', 'N', NULL),
(2, 'LOG_SECTION_DELETE', 'N', NULL),
(2, 'LOG_SECTION_EDIT', 'N', NULL),
(2, 'NAME', 'Y', NULL),
(2, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'PREVIEW_TEXT', 'N', NULL),
(2, 'PREVIEW_TEXT_TYPE', 'Y', NULL),
(2, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(2, 'SECTION_DESCRIPTION', 'N', NULL),
(2, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(2, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'SECTION_NAME', 'Y', NULL),
(2, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'SECTION_XML_ID', 'N', NULL),
(2, 'SORT', 'N', '0'),
(2, 'TAGS', 'N', NULL),
(2, 'XML_ID', 'Y', NULL),
(2, 'XML_IMPORT_START_TIME', 'N', '2019-09-04 15:49:38'),
(3, 'ACTIVE', 'Y', NULL),
(3, 'ACTIVE_FROM', 'N', NULL),
(3, 'ACTIVE_TO', 'N', NULL),
(3, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(3, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'DETAIL_TEXT', 'N', NULL),
(3, 'DETAIL_TEXT_TYPE', 'Y', NULL),
(3, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(3, 'LOG_ELEMENT_ADD', 'N', NULL),
(3, 'LOG_ELEMENT_DELETE', 'N', NULL),
(3, 'LOG_ELEMENT_EDIT', 'N', NULL),
(3, 'LOG_SECTION_ADD', 'N', NULL),
(3, 'LOG_SECTION_DELETE', 'N', NULL),
(3, 'LOG_SECTION_EDIT', 'N', NULL),
(3, 'NAME', 'Y', NULL),
(3, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'PREVIEW_TEXT', 'N', NULL),
(3, 'PREVIEW_TEXT_TYPE', 'Y', NULL),
(3, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(3, 'SECTION_DESCRIPTION', 'N', NULL),
(3, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(3, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'SECTION_NAME', 'Y', NULL),
(3, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";N;s:19:\"WATERMARK_TEXT_FONT\";N;s:20:\"WATERMARK_TEXT_COLOR\";N;s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";N;s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";N;s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";N;s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'SECTION_XML_ID', 'N', NULL),
(3, 'SORT', 'N', '0'),
(3, 'TAGS', 'N', NULL),
(3, 'XML_ID', 'Y', NULL),
(3, 'XML_IMPORT_START_TIME', 'N', '2019-09-04 15:49:42');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_group`
--

CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_group`
--

INSERT INTO `b_iblock_group` (`IBLOCK_ID`, `GROUP_ID`, `PERMISSION`) VALUES
(1, 1, 'X'),
(1, 2, 'R'),
(2, 1, 'X'),
(2, 2, 'R'),
(3, 1, 'X'),
(3, 2, 'R');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iblock_iprop`
--

CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iproperty`
--

CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_messages`
--

CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_messages`
--

INSERT INTO `b_iblock_messages` (`IBLOCK_ID`, `MESSAGE_ID`, `MESSAGE_TEXT`) VALUES
(1, 'ELEMENT_ADD', 'Добавить объявление'),
(1, 'ELEMENT_DELETE', 'Удалить объявление'),
(1, 'ELEMENT_EDIT', 'Изменить объявление'),
(1, 'ELEMENT_NAME', 'Объявление'),
(1, 'ELEMENTS_NAME', 'Объявления'),
(1, 'SECTION_ADD', 'Добавить раздел'),
(1, 'SECTION_DELETE', 'Удалить раздел'),
(1, 'SECTION_EDIT', 'Изменить раздел'),
(1, 'SECTION_NAME', 'Раздел'),
(1, 'SECTIONS_NAME', 'Разделы'),
(2, 'ELEMENT_ADD', 'Добавить ссылку'),
(2, 'ELEMENT_DELETE', 'Удалить ссылку'),
(2, 'ELEMENT_EDIT', 'Изменить ссылку'),
(2, 'ELEMENT_NAME', 'Ссылка'),
(2, 'ELEMENTS_NAME', 'Ссылки'),
(2, 'SECTION_ADD', 'Добавить раздел'),
(2, 'SECTION_DELETE', 'Удалить раздел'),
(2, 'SECTION_EDIT', 'Изменить раздел'),
(2, 'SECTION_NAME', 'Раздел'),
(2, 'SECTIONS_NAME', 'Разделы'),
(3, 'ELEMENT_ADD', 'Добавить вопрос'),
(3, 'ELEMENT_DELETE', 'Удалить вопрос'),
(3, 'ELEMENT_EDIT', 'Изменить вопрос'),
(3, 'ELEMENT_NAME', 'Вопрос'),
(3, 'ELEMENTS_NAME', 'Вопросы'),
(3, 'SECTION_ADD', 'Добавить раздел'),
(3, 'SECTION_DELETE', 'Удалить раздел'),
(3, 'SECTION_EDIT', 'Изменить раздел'),
(3, 'SECTION_NAME', 'Раздел'),
(3, 'SECTIONS_NAME', 'Разделы');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_offers_tmp`
--

CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property`
--

CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_property`
--

INSERT INTO `b_iblock_property` (`ID`, `TIMESTAMP_X`, `IBLOCK_ID`, `NAME`, `ACTIVE`, `SORT`, `CODE`, `DEFAULT_VALUE`, `PROPERTY_TYPE`, `ROW_COUNT`, `COL_COUNT`, `LIST_TYPE`, `MULTIPLE`, `XML_ID`, `FILE_TYPE`, `MULTIPLE_CNT`, `TMP_ID`, `LINK_IBLOCK_ID`, `WITH_DESCRIPTION`, `SEARCHABLE`, `FILTRABLE`, `IS_REQUIRED`, `VERSION`, `USER_TYPE`, `USER_TYPE_SETTINGS`, `HINT`) VALUES
(1, '2019-09-04 12:49:35', 1, 'E-mail', 'Y', 100, 'E_MAIL', NULL, 'S', 1, 30, 'L', 'N', 'services-board-property-email', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, NULL, NULL, NULL),
(2, '2019-09-04 12:49:35', 1, 'Сайт', 'Y', 200, 'URL', NULL, 'S', 1, 30, 'L', 'N', 'services-board-property-url', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, NULL, NULL, NULL),
(3, '2019-09-04 12:49:35', 1, 'Телефон', 'Y', 300, 'PHONE', NULL, 'S', 1, 30, 'L', 'N', 'services-board-property-phone', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, NULL, NULL, NULL),
(4, '2019-09-04 12:49:35', 1, 'Владелец объявления', 'Y', 400, 'USER_ID', NULL, 'S', 1, 30, 'L', 'N', 'services-board-property-user_id', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, 'UserID', NULL, NULL),
(5, '2019-09-04 12:49:38', 2, 'Адрес сайта', 'Y', 100, 'URL', 'http://', 'S', 1, 30, 'L', 'N', 'services-links-property-url', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, NULL, NULL, NULL),
(6, '2019-09-04 12:49:38', 2, 'Ваш e-mail', 'Y', 200, 'EMAIL', NULL, 'S', 1, 30, 'L', 'N', 'services-links-property-email', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, NULL, NULL, NULL),
(7, '2019-09-04 12:49:38', 2, 'Владелец ресурса', 'Y', 300, 'USER_ID', NULL, 'S', 1, 30, 'L', 'N', 'services-links-property-user_id', 'jpg, gif, bmp, png, jpeg', 5, NULL, NULL, 'N', 'N', 'N', NULL, 1, 'UserID', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_enum`
--

CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_feature`
--

CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_right`
--

CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_rss`
--

CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section`
--

CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section`
--

INSERT INTO `b_iblock_section` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `GLOBAL_ACTIVE`, `SORT`, `NAME`, `PICTURE`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `SEARCHABLE_CONTENT`, `CODE`, `XML_ID`, `TMP_ID`, `DETAIL_PICTURE`, `SOCNET_GROUP_ID`) VALUES
(1, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, NULL, 'Y', 'Y', 500, 'Недвижимость', NULL, 1, 12, 1, NULL, 'text', 'НЕДВИЖИМОСТЬ\r\n', NULL, '203', NULL, NULL, NULL),
(2, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 1, 'Y', 'Y', 500, 'Покупка', NULL, 2, 3, 2, NULL, 'text', 'ПОКУПКА\r\n', NULL, '209', NULL, NULL, NULL),
(3, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 1, 'Y', 'Y', 500, 'Продажа', NULL, 4, 5, 2, NULL, 'text', 'ПРОДАЖА\r\n', NULL, '210', NULL, NULL, NULL),
(4, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 1, 'Y', 'Y', 500, 'Разное', NULL, 6, 7, 2, NULL, 'text', 'РАЗНОЕ\r\n', NULL, '213', NULL, NULL, NULL),
(5, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 1, 'Y', 'Y', 500, 'Сдаю', NULL, 8, 9, 2, NULL, 'text', 'СДАЮ\r\n', NULL, '211', NULL, NULL, NULL),
(6, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 1, 'Y', 'Y', 500, 'Сниму', NULL, 10, 11, 2, NULL, 'text', 'СНИМУ\r\n', NULL, '212', NULL, NULL, NULL),
(7, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, NULL, 'Y', 'Y', 500, 'Оргтехника', NULL, 13, 20, 1, NULL, 'text', 'ОРГТЕХНИКА\r\n', NULL, '205', NULL, NULL, NULL),
(8, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 7, 'Y', 'Y', 500, 'Покупка', NULL, 14, 15, 2, NULL, 'text', 'ПОКУПКА\r\n', NULL, '206', NULL, NULL, NULL),
(9, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 7, 'Y', 'Y', 500, 'Продажа', NULL, 16, 17, 2, NULL, 'text', 'ПРОДАЖА\r\n', NULL, '207', NULL, NULL, NULL),
(10, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 7, 'Y', 'Y', 500, 'Разное', NULL, 18, 19, 2, NULL, 'text', 'РАЗНОЕ\r\n', NULL, '208', NULL, NULL, NULL),
(11, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, NULL, 'Y', 'Y', 500, 'Транспорт', NULL, 21, 30, 1, NULL, 'text', 'ТРАНСПОРТ\r\n', NULL, '204', NULL, NULL, NULL),
(12, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 11, 'Y', 'Y', 500, 'ГСМ', NULL, 22, 23, 2, NULL, 'text', 'ГСМ\r\n', NULL, '216', NULL, NULL, NULL),
(13, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 11, 'Y', 'Y', 500, 'Покупка', NULL, 24, 25, 2, NULL, 'text', 'ПОКУПКА\r\n', NULL, '214', NULL, NULL, NULL),
(14, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 11, 'Y', 'Y', 500, 'Продажа', NULL, 26, 27, 2, NULL, 'text', 'ПРОДАЖА\r\n', NULL, '215', NULL, NULL, NULL),
(15, '2019-09-04 12:49:35', 1, '2019-09-04 16:49:35', 1, 1, 11, 'Y', 'Y', 500, 'Услуги', NULL, 28, 29, 2, NULL, 'text', 'УСЛУГИ\r\n', NULL, '217', NULL, NULL, NULL),
(16, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, NULL, 'Y', 'Y', 500, 'Бизнес и Финансы', NULL, 1, 10, 1, NULL, 'text', 'БИЗНЕС И ФИНАНСЫ\r\n', NULL, '158', NULL, NULL, NULL),
(17, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 16, 'Y', 'Y', 500, 'Банки', NULL, 2, 3, 2, NULL, 'text', 'БАНКИ\r\n', NULL, '159', NULL, NULL, NULL),
(18, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 16, 'Y', 'Y', 500, 'Маркетинг', NULL, 4, 5, 2, NULL, 'text', 'МАРКЕТИНГ\r\n', NULL, '160', NULL, NULL, NULL),
(19, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 16, 'Y', 'Y', 500, 'Недвижимость', NULL, 6, 7, 2, NULL, 'text', 'НЕДВИЖИМОСТЬ\r\n', NULL, '166', NULL, NULL, NULL),
(20, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 16, 'Y', 'Y', 500, 'Страхование', NULL, 8, 9, 2, NULL, 'text', 'СТРАХОВАНИЕ\r\n', NULL, '167', NULL, NULL, NULL),
(21, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, NULL, 'Y', 'Y', 500, 'Дом и Семья', NULL, 11, 18, 1, NULL, 'text', 'ДОМ И СЕМЬЯ\r\n', NULL, '148', NULL, NULL, NULL),
(22, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 21, 'Y', 'Y', 500, 'Дети', NULL, 12, 13, 2, NULL, 'text', 'ДЕТИ\r\n', NULL, '170', NULL, NULL, NULL),
(23, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 21, 'Y', 'Y', 500, 'Ремонт', NULL, 14, 15, 2, NULL, 'text', 'РЕМОНТ\r\n', NULL, '168', NULL, NULL, NULL),
(24, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 21, 'Y', 'Y', 500, 'Товары для дома', NULL, 16, 17, 2, NULL, 'text', 'ТОВАРЫ ДЛЯ ДОМА\r\n', NULL, '169', NULL, NULL, NULL),
(25, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, NULL, 'Y', 'Y', 500, 'Наука и образование', NULL, 19, 28, 1, NULL, 'text', 'НАУКА И ОБРАЗОВАНИЕ\r\n', NULL, '154', NULL, NULL, NULL),
(26, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 25, 'Y', 'Y', 500, 'ВУЗы', NULL, 20, 21, 2, NULL, 'text', 'ВУЗЫ\r\n', NULL, '171', NULL, NULL, NULL),
(27, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 25, 'Y', 'Y', 500, 'Наука', NULL, 22, 23, 2, NULL, 'text', 'НАУКА\r\n', NULL, '172', NULL, NULL, NULL),
(28, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 25, 'Y', 'Y', 500, 'Школы', NULL, 24, 25, 2, NULL, 'text', 'ШКОЛЫ\r\n', NULL, '174', NULL, NULL, NULL),
(29, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 25, 'Y', 'Y', 500, 'Экология', NULL, 26, 27, 2, NULL, 'text', 'ЭКОЛОГИЯ\r\n', NULL, '173', NULL, NULL, NULL),
(30, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, NULL, 'Y', 'Y', 500, 'Общество и Политика', NULL, 29, 36, 1, NULL, 'text', 'ОБЩЕСТВО И ПОЛИТИКА\r\n', NULL, '156', NULL, NULL, NULL),
(31, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 30, 'Y', 'Y', 500, 'Общественные организации', NULL, 30, 31, 2, NULL, 'text', 'ОБЩЕСТВЕННЫЕ ОРГАНИЗАЦИИ\r\n', NULL, '178', NULL, NULL, NULL),
(32, '2019-09-04 12:49:38', 1, '2019-09-04 16:49:38', 1, 2, 30, 'Y', 'Y', 500, 'Партии', NULL, 32, 33, 2, NULL, 'text', 'ПАРТИИ\r\n', NULL, '177', NULL, NULL, NULL),
(33, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 30, 'Y', 'Y', 500, 'Религия', NULL, 34, 35, 2, NULL, 'text', 'РЕЛИГИЯ\r\n', NULL, '176', NULL, NULL, NULL),
(34, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, NULL, 'Y', 'Y', 500, 'Отдых и развлечения', NULL, 37, 44, 1, NULL, 'text', 'ОТДЫХ И РАЗВЛЕЧЕНИЯ\r\n', NULL, '155', NULL, NULL, NULL),
(35, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 34, 'Y', 'Y', 500, 'Знакомства', NULL, 38, 39, 2, NULL, 'text', 'ЗНАКОМСТВА\r\n', NULL, '180', NULL, NULL, NULL),
(36, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 34, 'Y', 'Y', 500, 'Клубы', NULL, 40, 41, 2, NULL, 'text', 'КЛУБЫ\r\n', NULL, '182', NULL, NULL, NULL),
(37, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 34, 'Y', 'Y', 500, 'Рыбалка', NULL, 42, 43, 2, NULL, 'text', 'РЫБАЛКА\r\n', NULL, '181', NULL, NULL, NULL),
(38, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, NULL, 'Y', 'Y', 500, 'СМИ', NULL, 45, 52, 1, NULL, 'text', 'СМИ\r\n', NULL, '152', NULL, NULL, NULL),
(39, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 38, 'Y', 'Y', 500, 'Газеты', NULL, 46, 47, 2, NULL, 'text', 'ГАЗЕТЫ\r\n', NULL, '187', NULL, NULL, NULL),
(40, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 38, 'Y', 'Y', 500, 'Радио', NULL, 48, 49, 2, NULL, 'text', 'РАДИО\r\n', NULL, '188', NULL, NULL, NULL),
(41, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 38, 'Y', 'Y', 500, 'Телевидение', NULL, 50, 51, 2, NULL, 'text', 'ТЕЛЕВИДЕНИЕ\r\n', NULL, '189', NULL, NULL, NULL),
(42, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, NULL, 'Y', 'Y', 500, 'Товары и Услуги', NULL, 53, 62, 1, NULL, 'text', 'ТОВАРЫ И УСЛУГИ\r\n', NULL, '150', NULL, NULL, NULL),
(43, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 42, 'Y', 'Y', 500, 'Аптеки', NULL, 54, 55, 2, NULL, 'text', 'АПТЕКИ\r\n', NULL, '195', NULL, NULL, NULL),
(44, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 42, 'Y', 'Y', 500, 'Гостиницы', NULL, 56, 57, 2, NULL, 'text', 'ГОСТИНИЦЫ\r\n', NULL, '194', NULL, NULL, NULL),
(45, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 42, 'Y', 'Y', 500, 'Мебель', NULL, 58, 59, 2, NULL, 'text', 'МЕБЕЛЬ\r\n', NULL, '197', NULL, NULL, NULL),
(46, '2019-09-04 12:49:39', 1, '2019-09-04 16:49:39', 1, 2, 42, 'Y', 'Y', 500, 'Одежда', NULL, 60, 61, 2, NULL, 'text', 'ОДЕЖДА\r\n', NULL, '196', NULL, NULL, NULL),
(47, '2019-09-04 12:49:43', 1, '2019-09-04 16:49:43', 1, 3, NULL, 'Y', 'Y', 500, 'Настройка продукта', NULL, 1, 2, 1, NULL, 'text', 'НАСТРОЙКА ПРОДУКТА\r\n', NULL, '224', NULL, NULL, NULL),
(48, '2019-09-04 12:49:43', 1, '2019-09-04 16:49:43', 1, 3, NULL, 'Y', 'Y', 500, 'Оформление и оплата заказа', NULL, 3, 4, 1, NULL, 'text', 'ОФОРМЛЕНИЕ И ОПЛАТА ЗАКАЗА\r\n', NULL, '228', NULL, NULL, NULL),
(49, '2019-09-04 12:49:43', 1, '2019-09-04 16:49:43', 1, 3, NULL, 'Y', 'Y', 500, 'Партнерская программа', NULL, 5, 6, 1, NULL, 'text', 'ПАРТНЕРСКАЯ ПРОГРАММА\r\n', NULL, '225', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_element`
--

CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section_element`
--

INSERT INTO `b_iblock_section_element` (`IBLOCK_SECTION_ID`, `IBLOCK_ELEMENT_ID`, `ADDITIONAL_PROPERTY_ID`) VALUES
(2, 1, NULL),
(2, 15, NULL),
(3, 3, NULL),
(3, 4, NULL),
(5, 5, NULL),
(6, 6, NULL),
(8, 2, NULL),
(8, 14, NULL),
(9, 12, NULL),
(9, 13, NULL),
(13, 7, NULL),
(13, 56, NULL),
(14, 8, NULL),
(14, 9, NULL),
(15, 10, NULL),
(15, 11, NULL),
(15, 56, NULL),
(17, 16, NULL),
(17, 17, NULL),
(17, 18, NULL),
(17, 19, NULL),
(18, 20, NULL),
(18, 21, NULL),
(18, 22, NULL),
(18, 44, NULL),
(19, 23, NULL),
(22, 24, NULL),
(22, 25, NULL),
(23, 26, NULL),
(24, 27, NULL),
(24, 28, NULL),
(24, 29, NULL),
(26, 30, NULL),
(26, 31, NULL),
(26, 32, NULL),
(26, 33, NULL),
(27, 34, NULL),
(27, 35, NULL),
(27, 36, NULL),
(27, 37, NULL),
(28, 38, NULL),
(28, 39, NULL),
(28, 40, NULL),
(29, 41, NULL),
(29, 42, NULL),
(29, 43, NULL),
(29, 45, NULL),
(45, 46, NULL),
(47, 47, NULL),
(47, 55, NULL),
(48, 50, NULL),
(48, 51, NULL),
(48, 54, NULL),
(49, 48, NULL),
(49, 49, NULL),
(49, 52, NULL),
(49, 53, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_iprop`
--

CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_property`
--

CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_right`
--

CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_sequence`
--

CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_site`
--

CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_site`
--

INSERT INTO `b_iblock_site` (`IBLOCK_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type`
--

CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type`
--

INSERT INTO `b_iblock_type` (`ID`, `SECTIONS`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `IN_RSS`, `SORT`) VALUES
('rest_entity', 'Y', NULL, NULL, 'N', 1000),
('services', 'Y', NULL, NULL, 'N', 50);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type_lang`
--

CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type_lang`
--

INSERT INTO `b_iblock_type_lang` (`IBLOCK_TYPE_ID`, `LID`, `NAME`, `SECTION_NAME`, `ELEMENT_NAME`) VALUES
('rest_entity', 'ru', 'Хранилище данных для приложений Маркетплейс24', 'Разделы', 'Элементы'),
('services', 'ru', 'Сервисы', 'Разделы', 'Элемент');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing`
--

CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_block`
--

CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT '500',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_demo`
--

CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8_unicode_ci,
  `LANG` text COLLATE utf8_unicode_ci,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_domain`
--

CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_file`
--

CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_hook_data`
--

CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_manifest`
--

CREATE TABLE `b_landing_manifest` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci NOT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_placement`
--

CREATE TABLE `b_landing_placement` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_repo`
--

CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_site`
--

CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_syspage`
--

CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template`
--

CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_landing_template`
--

INSERT INTO `b_landing_template` (`ID`, `ACTIVE`, `TITLE`, `SORT`, `XML_ID`, `CONTENT`, `AREA_COUNT`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
(1, 'Y', '#EMPTY#', 100, 'empty', '#CONTENT#', 0, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37'),
(2, 'Y', '#SIDEBAR_LEFT#', 200, 'sidebar_left', '<div class=\"landing-layout-flex\">\n								<div class=\"g-width-25x--lg g-max-width-100x g-overflow-hidden landing-sidebar\">#AREA_1#</div> \n								<div class=\"g-width-75x--lg g-max-width-100x landing-main\">#CONTENT#</div> \n							</div>', 1, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37'),
(3, 'Y', '#SIDEBAR_RIGHT#', 300, 'sidebar_right', '<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"g-width-25x--lg g-max-width-100x landing-sidebar\">#AREA_1#</div> \n								<div class=\"g-width-75x--lg  g-max-width-100x landing-main\">#CONTENT#</div> \n							</div>', 1, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37'),
(4, 'Y', '#HEADER_FOOTER#', 400, 'header_footer', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>', 2, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37'),
(5, 'Y', '#WITHOUT_LEFT#', 500, 'without_left', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"g-width-25x--lg g-max-width-100x landing-sidebar\">#AREA_2#</div>\n									<div class=\"g-width-75x--lg g-max-width-100x landing-main\">#CONTENT#</div> \n								</div> \n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37'),
(6, 'Y', '#WITHOUT_RIGHT#', 600, 'without_right', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"g-width-25x--lg g-max-width-100x landing-sidebar\">#AREA_2#</div>\n									<div class=\"g-width-75x--lg g-max-width-100x landing-main\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2019-09-04 11:28:37', '2019-09-04 11:28:37');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template_ref`
--

CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_update_block`
--

CREATE TABLE `b_landing_update_block` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT '0',
  `PARAMS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_urlrewrite`
--

CREATE TABLE `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang`
--

CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_lang`
--

INSERT INTO `b_lang` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `DIR`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `LANGUAGE_ID`, `DOC_ROOT`, `DOMAIN_LIMITED`, `SERVER_NAME`, `SITE_NAME`, `EMAIL`, `CULTURE_ID`) VALUES
('s1', 1, 'Y', 'Y', 'Моя компания', '/', NULL, NULL, NULL, NULL, NULL, 'ru', NULL, 'N', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_language`
--

CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_language`
--

INSERT INTO `b_language` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `CULTURE_ID`) VALUES
('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang_domain`
--

CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_list_rubric`
--

CREATE TABLE `b_list_rubric` (
  `ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUTO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DAYS_OF_MONTH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_blacklist`
--

CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_sender`
--

CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection`
--

CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_collection`
--

INSERT INTO `b_medialib_collection` (`ID`, `NAME`, `DESCRIPTION`, `ACTIVE`, `DATE_UPDATE`, `OWNER_ID`, `PARENT_ID`, `SITE_ID`, `KEYWORDS`, `ITEMS_COUNT`, `ML_TYPE`) VALUES
(1, 'Фотографии сотрудников', 'Коллекция разных фотографий сотрудников', 'Y', '2019-09-04 16:49:44', 1, 0, NULL, '', NULL, 0),
(2, 'Разное', 'Разные фотографии', 'Y', '2019-09-04 16:49:44', 1, 0, NULL, '', NULL, 0),
(3, 'Путешествия', 'Интересные фотогрфии из путешествий', 'Y', '2019-09-04 16:49:44', 1, 1, NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection_item`
--

CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_collection_item`
--

INSERT INTO `b_medialib_collection_item` (`COLLECTION_ID`, `ITEM_ID`) VALUES
(3, 1),
(2, 2),
(3, 3),
(2, 4),
(3, 5),
(2, 6),
(3, 6),
(2, 7),
(3, 7),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_item`
--

CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_item`
--

INSERT INTO `b_medialib_item` (`ID`, `NAME`, `ITEM_TYPE`, `DESCRIPTION`, `DATE_CREATE`, `DATE_UPDATE`, `SOURCE_ID`, `KEYWORDS`, `SEARCHABLE_CONTENT`) VALUES
(1, 'Велосипед', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 1, '', '{ВЕЛОСИПЕД}'),
(2, 'Мысли', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 2, '', '{МЫСЛ}'),
(3, 'Камеди клаб', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 3, '', '{КАМЕД}{КЛАБ}'),
(4, 'Часы', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 4, '', '{ЧАС}'),
(5, 'Памятник', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 5, '', '{ПАМЯТНИК}'),
(6, 'Библиотека на свежем воздухе', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 6, '', '{БИБЛИОТЕК}{СВЕЖ}{ВОЗДУХ}'),
(7, 'Светофор', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 7, '', '{СВЕТОФОР}'),
(8, 'Смотри', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 8, '', '{СМОТР}'),
(9, 'Смотри еще', '', '', '2019-09-04 16:49:45', '2019-09-04 16:49:45', 9, '', '{СМОТР}'),
(10, 'Одиночество', '', '', '2019-09-04 16:49:46', '2019-09-04 16:49:46', 10, '', '{ОДИНОЧЕСТВ}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_type`
--

CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_type`
--

INSERT INTO `b_medialib_type` (`ID`, `NAME`, `CODE`, `EXT`, `SYSTEM`, `DESCRIPTION`) VALUES
(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_message`
--

CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app`
--

CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app_lang`
--

CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_mobileapp_app`
--

CREATE TABLE `b_mobileapp_app` (
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  `FILES` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_ICONS` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_SCREENS` text COLLATE utf8_unicode_ci NOT NULL,
  `FOLDER` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_mobileapp_config`
--

CREATE TABLE `b_mobileapp_config` (
  `APP_CODE` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PLATFORM` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_module`
--

CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module`
--

INSERT INTO `b_module` (`ID`, `DATE_ACTIVE`) VALUES
('b24connector', NULL),
('bitrix.sitecorporate', NULL),
('bitrix.siteinfoportal', NULL),
('bitrix.sitepersonal', NULL),
('bitrixcloud', NULL),
('blog', NULL),
('clouds', NULL),
('compression', NULL),
('fileman', NULL),
('form', NULL),
('forum', NULL),
('highloadblock', NULL),
('iblock', NULL),
('landing', NULL),
('main', NULL),
('messageservice', NULL),
('mobileapp', NULL),
('perfmon', NULL),
('photogallery', NULL),
('rest', NULL),
('scale', NULL),
('search', NULL),
('security', NULL),
('seo', NULL),
('socialservices', NULL),
('subscribe', NULL),
('translate', NULL),
('ui', NULL),
('vote', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_group`
--

CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_to_module`
--

CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module_to_module`
--

INSERT INTO `b_module_to_module` (`ID`, `TIMESTAMP_X`, `SORT`, `FROM_MODULE_ID`, `MESSAGE_ID`, `TO_MODULE_ID`, `TO_PATH`, `TO_CLASS`, `TO_METHOD`, `TO_METHOD_ARG`, `VERSION`) VALUES
(1, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1),
(2, NULL, 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1),
(3, NULL, 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1),
(4, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1),
(5, NULL, 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1),
(6, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1),
(7, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1),
(8, NULL, 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1),
(9, NULL, 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1),
(10, NULL, 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1),
(11, NULL, 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1),
(12, NULL, 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1),
(13, NULL, 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1),
(14, NULL, 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1),
(15, NULL, 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1),
(16, NULL, 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1),
(17, NULL, 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1),
(18, NULL, 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1),
(19, NULL, 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1),
(20, NULL, 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1),
(21, NULL, 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1),
(22, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1),
(23, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CAccess', 'OnUserDelete', '', 1),
(24, NULL, 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1),
(25, NULL, 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1),
(26, NULL, 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1),
(27, NULL, 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1),
(28, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1),
(29, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1),
(30, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1),
(31, NULL, 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1),
(32, NULL, 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1),
(33, NULL, 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1),
(34, NULL, 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1),
(35, NULL, 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1),
(36, NULL, 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1),
(37, NULL, 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1),
(38, NULL, 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1),
(39, NULL, 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1),
(40, NULL, 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1),
(41, NULL, 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1),
(42, NULL, 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1),
(43, NULL, 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1),
(44, NULL, 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1),
(45, NULL, 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1),
(46, NULL, 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1),
(47, NULL, 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1),
(48, NULL, 100, 'main', 'OnFileDelete', 'main', '', '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable', 'onFileDelete', '', 1),
(49, NULL, 100, 'disk', 'onAfterAjaxActionCreateFolderWithSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(50, NULL, 100, 'disk', 'onAfterAjaxActionAppendSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(51, NULL, 100, 'disk', 'onAfterAjaxActionChangeSharingAndRights', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(52, NULL, 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1),
(53, NULL, 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1),
(54, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'main', '', 'CMpNotifications', 'OnAdminInformerInsertItemsHandlerMP', '', 1),
(55, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'main', '', '\\Bitrix\\Main\\Rest\\Handlers', 'onRestServiceBuildDescription', '', 1),
(56, NULL, 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2),
(57, NULL, 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2),
(58, NULL, 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2),
(59, NULL, 1000, 'sale', 'onBuildDiscountConditionInterfaceControls', 'main', '', '\\Bitrix\\Main\\Discount\\UserConditionControl', 'onBuildDiscountConditionInterfaceControls', '', 1),
(60, NULL, 100, 'main', 'OnBeforePhpMail', 'main', '', '\\Bitrix\\Main\\Mail\\Sender', 'applyCustomSmtp', '', 2),
(61, NULL, 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1),
(62, NULL, 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1),
(63, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitecorporate', '', 'CSiteCorporate', 'ShowPanel', '', 1),
(64, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.siteinfoportal', '', 'CSiteInfoportal', 'ShowPanel', '', 1),
(65, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitepersonal', '', 'CSitePersonal', 'ShowPanel', '', 1),
(66, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1),
(67, NULL, 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1),
(68, NULL, 100, 'search', 'OnReindex', 'blog', '', 'CBlogSearch', 'OnSearchReindex', '', 1),
(69, NULL, 100, 'main', 'OnUserDelete', 'blog', '', 'CBlogUser', 'Delete', '', 1),
(70, NULL, 100, 'main', 'OnSiteDelete', 'blog', '', 'CBlogSitePath', 'DeleteBySiteID', '', 1),
(71, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'blog', '', 'CBlogSoNetPost', 'OnGroupDelete', '', 1),
(72, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1),
(73, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1),
(74, NULL, 100, 'socialnetwork', 'OnBeforeSocNetFeaturesPermsAdd', 'blog', '', 'CBlogSearch', 'OnBeforeSocNetFeaturesPermsAdd', '', 1),
(75, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesPermsAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1),
(76, NULL, 100, 'socialnetwork', 'OnBeforeSocNetFeaturesPermsUpdate', 'blog', '', 'CBlogSearch', 'OnBeforeSocNetFeaturesPermsUpdate', '', 1),
(77, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesPermsUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1),
(78, NULL, 200, 'main', 'OnAfterAddRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterAddRating', '', 1),
(79, NULL, 200, 'main', 'OnAfterUpdateRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterUpdateRating', '', 1),
(80, NULL, 200, 'main', 'OnSetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnSetRatingConfigs', '', 1),
(81, NULL, 200, 'main', 'OnGetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingConfigs', '', 1),
(82, NULL, 200, 'main', 'OnGetRatingsObjects', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingObject', '', 1),
(83, NULL, 200, 'main', 'OnGetRatingContentOwner', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingContentOwner', '', 1),
(84, NULL, 100, 'im', 'OnGetNotifySchema', 'blog', '', 'CBlogNotifySchema', 'OnGetNotifySchema', '', 1),
(85, NULL, 100, 'im', 'OnAnswerNotify', 'blog', '', 'CBlogNotifySchema', 'CBlogEventsIMCallback', '', 1),
(86, NULL, 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/blog/install/index.php', 'blog', 'installUserFields', '', 1),
(87, NULL, 100, 'conversion', 'OnGetCounterTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1),
(88, NULL, 100, 'conversion', 'OnGetRateTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1),
(89, NULL, 100, 'blog', 'OnPostAdd', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onPostAdd', '', 1),
(90, NULL, 100, 'mail', 'onReplyReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleReplyReceivedBlogPost', '', 2),
(91, NULL, 100, 'mail', 'onForwardReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleForwardReceivedBlogPost', '', 2),
(92, NULL, 100, 'socialnetwork', 'onLogIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2),
(93, NULL, 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2),
(94, NULL, 100, 'socialnetwork', 'onContentViewed', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2),
(95, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1),
(96, NULL, 90, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1),
(97, NULL, 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1),
(98, NULL, 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1),
(99, NULL, 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1),
(100, NULL, 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1),
(101, NULL, 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1),
(102, NULL, 100, 'main', 'OnFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1),
(103, NULL, 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1),
(104, NULL, 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1),
(105, NULL, 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1),
(106, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1),
(107, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1),
(108, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1),
(109, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1),
(110, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1),
(111, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1),
(112, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1),
(113, NULL, 1, 'main', 'OnPageStart', 'compression', '', 'CCompress', 'OnPageStart', '', 1),
(114, NULL, 10000, 'main', 'OnAfterEpilog', 'compression', '', 'CCompress', 'OnAfterEpilog', '', 1),
(115, NULL, 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1),
(116, NULL, 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1),
(117, NULL, 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1),
(118, NULL, 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1),
(119, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1),
(120, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1),
(121, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1),
(122, NULL, 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1),
(123, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1),
(124, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1),
(125, NULL, 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1),
(126, NULL, 100, 'sender', 'OnConnectorList', 'form', '', '\\Bitrix\\Form\\SenderEventHandler', 'onConnectorListForm', '', 1),
(127, NULL, 100, 'main', 'OnAfterUserUpdate', 'forum', '', 'CForumUser', 'OnAfterUserUpdate', '', 1),
(128, NULL, 100, 'main', 'OnGroupDelete', 'forum', '', 'CForumNew', 'OnGroupDelete', '', 1),
(129, NULL, 100, 'main', 'OnBeforeLangDelete', 'forum', '', 'CForumNew', 'OnBeforeLangDelete', '', 1),
(130, NULL, 100, 'main', 'OnFileDelete', 'forum', '', 'CForumFiles', 'OnFileDelete', '', 1),
(131, NULL, 100, 'search', 'OnReindex', 'forum', '', 'CForumNew', 'OnReindex', '', 1),
(132, NULL, 100, 'main', 'OnUserDelete', 'forum', '', 'CForumUser', 'OnUserDelete', '', 1),
(133, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/forum/tools/prop_topicid.php', 'CIBlockPropertyTopicID', 'GetUserTypeDescription', '', 1),
(134, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'forum', '', 'CForumTopic', 'OnBeforeIBlockElementDelete', '', 1),
(135, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'forum', '', 'CForumEventLog', 'GetAuditTypes', '', 1),
(136, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'forum', '', 'CEventForum', 'MakeForumObject', '', 1),
(137, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'forum', '', 'CForumUser', 'OnSocNetGroupDelete', '', 1),
(138, NULL, 100, 'socialnetwork', 'OnSocNetLogFormatEvent', 'forum', '', 'CForumMessage', 'OnSocNetLogFormatEvent', '', 1),
(139, NULL, 100, 'mail', 'OnGetFilterList', 'forum', '', 'CForumEMail', 'OnGetSocNetFilterList', '', 1),
(140, NULL, 100, 'main', 'OnAfterAddRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterAddRating', '', 1),
(141, NULL, 100, 'main', 'OnAfterUpdateRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterUpdateRating', '', 1),
(142, NULL, 100, 'main', 'OnSetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnSetRatingConfigs', '', 1),
(143, NULL, 100, 'main', 'OnGetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingConfigs', '', 1),
(144, NULL, 100, 'main', 'OnGetRatingsObjects', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingObject', '', 1),
(145, NULL, 100, 'main', 'OnGetRatingContentOwner', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingContentOwner', '', 1),
(146, NULL, 100, 'im', 'OnGetNotifySchema', 'forum', '', 'CForumNotifySchema', 'OnGetNotifySchema', '', 1),
(147, NULL, 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/forum/install/index.php', 'forum', 'InstallUserFields', '', 1),
(148, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'forum', '', 'CForumRestService', 'OnRestServiceBuildDescription', '', 1),
(149, NULL, 100, 'conversion', 'OnGetCounterTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1),
(150, NULL, 100, 'conversion', 'OnGetRateTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1),
(151, NULL, 100, 'forum', 'onAfterTopicAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onTopicAdd', '', 1),
(152, NULL, 100, 'forum', 'onAfterMessageAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onMessageAdd', '', 1),
(153, NULL, 100, 'socialnetwork', 'onLogIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2),
(154, NULL, 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2),
(155, NULL, 100, 'socialnetwork', 'onContentViewed', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2),
(156, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1),
(157, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1),
(158, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1),
(159, NULL, 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1),
(160, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1),
(161, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1),
(162, NULL, 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1),
(163, NULL, 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1),
(164, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1),
(165, NULL, 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1),
(166, NULL, 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1),
(167, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1),
(168, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1),
(169, NULL, 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1),
(170, NULL, 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1),
(171, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1),
(172, NULL, 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1),
(173, NULL, 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1),
(174, NULL, 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1),
(175, NULL, 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1),
(176, NULL, 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1),
(177, NULL, 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1),
(178, NULL, 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1),
(179, NULL, 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1),
(180, NULL, 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1),
(181, NULL, 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1),
(182, NULL, 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1),
(183, NULL, 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1),
(184, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1),
(185, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restBase', '', 2),
(186, NULL, 100, 'rest', 'OnRestAppDelete', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restApplicationDelete', '', 2),
(187, NULL, 100, 'main', 'OnBeforeSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onBeforeMainSiteDelete', '', 2),
(188, NULL, 100, 'main', 'OnSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onMainSiteDelete', '', 2),
(189, NULL, 100, 'main', 'OnAfterEpilog', 'messageservice', '', '\\Bitrix\\MessageService\\Queue', 'run', '', 1),
(190, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestServiceBuildDescription', '', 1),
(191, NULL, 100, 'rest', 'OnRestAppDelete', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppDelete', '', 1),
(192, NULL, 100, 'rest', 'OnRestAppUpdate', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppUpdate', '', 1),
(193, NULL, 100, 'pull', 'OnGetDependentModule', 'mobileapp', '', 'CMobileAppPullSchema', 'OnGetDependentModule', '', 1),
(194, NULL, 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1),
(195, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'photogallery', '', 'CPhotogalleryElement', 'OnBeforeIBlockElementDelete', '', 1),
(196, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'photogallery', '', 'CPhotogalleryElement', 'OnAfterIBlockElementAdd', '', 1),
(197, NULL, 100, 'search', 'BeforeIndex', 'photogallery', '', 'CRatingsComponentsPhotogallery', 'BeforeIndex', '', 1),
(198, NULL, 100, 'im', 'OnGetNotifySchema', 'photogallery', '', 'CPhotogalleryNotifySchema', 'OnGetNotifySchema', '', 1),
(199, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'photogallery', '', '\\Bitrix\\Photogallery\\Integration\\Socialnetwork\\Group', 'onSocNetGroupDelete', '', 1),
(200, NULL, 49, 'main', 'OnBeforeProlog', 'rest', '', 'CRestEventHandlers', 'OnBeforeProlog', '', 2),
(201, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', 'CBitrixRestEntity', 'OnRestServiceBuildDescription', '', 2),
(202, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\User', 'onRestServiceBuildDescription', '', 2),
(203, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Placement', 'onRestServiceBuildDescription', '', 2),
(204, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Event', 'onRestServiceBuildDescription', '', 2),
(205, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\UserFieldType', 'onRestServiceBuildDescription', '', 2),
(206, NULL, 100, 'rest', 'onFindMethodDescription', 'rest', '', '\\Bitrix\\Rest\\Engine\\RestManager', 'onFindMethodDescription', '', 2),
(207, NULL, 100, 'main', 'OnApplicationsBuildList', 'main', 'modules/rest/lib/apauth/application.php', '\\Bitrix\\Rest\\APAuth\\Application', 'onApplicationsBuildList', '', 2),
(208, NULL, 100, 'im', 'OnAfterConfirmNotify', 'rest', '', '\\Bitrix\\Rest\\NotifyIm', 'receive', '', 2),
(209, NULL, 100, 'rest', '\\Bitrix\\Rest\\APAuth\\Password::OnDelete', 'rest', '', '\\Bitrix\\Rest\\APAuth\\PermissionTable', 'onPasswordDelete', '', 2),
(210, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\OAuth\\Auth', 'onRestCheckAuth', '', 2),
(211, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\APAuth\\Auth', 'onRestCheckAuth', '', 2),
(212, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\SessionAuth\\Auth', 'onRestCheckAuth', '', 2),
(213, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'scale', '', '\\Bitrix\\Scale\\Logger', 'onEventLogGetAuditTypes', '', 1),
(214, NULL, 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1),
(215, NULL, 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1),
(216, NULL, 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1),
(217, NULL, 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1),
(218, NULL, 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1),
(219, NULL, 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1),
(220, NULL, 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1),
(221, NULL, 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1),
(222, NULL, 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1),
(223, NULL, 100, 'main', 'OnUserDelete', 'security', '', 'CSecurityUser', 'OnUserDelete', '', 1),
(224, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityFilter', 'GetAuditTypes', '', 1),
(225, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityAntiVirus', 'GetAuditTypes', '', 1),
(226, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecurityFilter', 'OnAdminInformerInsertItems', '', 1),
(227, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecuritySiteChecker', 'OnAdminInformerInsertItems', '', 1),
(228, NULL, 5, 'main', 'OnBeforeProlog', 'security', '', 'CSecurityFilter', 'OnBeforeProlog', '', 1),
(229, NULL, 9999, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityXSSDetect', 'OnEndBufferContent', '', 1),
(230, NULL, 1, 'main', 'OnBeforeLocalRedirect', 'security', '', 'CSecurityRedirect', 'BeforeLocalRedirect', '', 1),
(231, NULL, 1, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityRedirect', 'EndBufferContent', '', 1),
(232, NULL, 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2),
(233, NULL, 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2),
(234, NULL, 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2),
(235, NULL, 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2),
(236, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2),
(237, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2),
(238, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2),
(239, NULL, 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2),
(240, NULL, 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2),
(241, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2),
(242, NULL, 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2),
(243, NULL, 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2),
(244, NULL, 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2),
(245, NULL, 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2),
(246, NULL, 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2),
(247, NULL, 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2),
(248, NULL, 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2),
(249, NULL, 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2),
(250, NULL, 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2),
(251, NULL, 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2),
(252, NULL, 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2),
(253, NULL, 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2),
(254, NULL, 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2),
(255, NULL, 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2),
(256, NULL, 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2),
(257, NULL, 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2),
(258, NULL, 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(259, NULL, 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(260, NULL, 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1),
(261, NULL, 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1),
(262, NULL, 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1),
(263, NULL, 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1),
(264, NULL, 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1),
(265, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1),
(266, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1),
(267, NULL, 100, 'main', 'OnBeforeLangDelete', 'subscribe', '', 'CRubric', 'OnBeforeLangDelete', '', 1),
(268, NULL, 100, 'main', 'OnUserDelete', 'subscribe', '', 'CSubscription', 'OnUserDelete', '', 1),
(269, NULL, 100, 'main', 'OnUserLogout', 'subscribe', '', 'CSubscription', 'OnUserLogout', '', 1),
(270, NULL, 100, 'main', 'OnGroupDelete', 'subscribe', '', 'CPosting', 'OnGroupDelete', '', 1),
(271, NULL, 100, 'sender', 'OnConnectorList', 'subscribe', '', 'Bitrix\\Subscribe\\SenderEventHandler', 'onConnectorListSubscriber', '', 1),
(272, NULL, 100, 'main', 'OnPanelCreate', 'translate', '', 'CTranslateEventHandlers', 'TranslatOnPanelCreate', '', 1),
(273, NULL, 100, 'main', 'OnBeforeProlog', 'main', '/modules/vote/keepvoting.php', '', '', '', 1),
(274, NULL, 200, 'main', 'OnUserTypeBuildList', 'vote', '', 'Bitrix\\Vote\\Uf\\VoteUserType', 'getUserTypeDescription', '', 1),
(275, NULL, 200, 'main', 'OnUserLogin', 'vote', '', 'CVoteUser', 'OnUserLogin', '', 1),
(276, NULL, 100, 'im', 'OnGetNotifySchema', 'vote', '', 'CVoteNotifySchema', 'OnGetNotifySchema', '', 1),
(277, NULL, 100, 'main', 'OnBeforeProlog', 'main', '/modules/main/install/wizard_sol/panel_button.php', 'CWizardSolPanel', 'ShowPanel', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator`
--

CREATE TABLE `b_numerator` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator_sequence`
--

CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_operation`
--

CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_operation`
--

INSERT INTO `b_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
(39, 'clouds_browse', 'clouds', NULL, 'module'),
(40, 'clouds_upload', 'clouds', NULL, 'module'),
(41, 'clouds_config', 'clouds', NULL, 'module'),
(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(48, 'fileman_admin_files', 'fileman', '', 'module'),
(49, 'fileman_admin_folders', 'fileman', '', 'module'),
(50, 'fileman_view_permissions', 'fileman', '', 'module'),
(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(52, 'fileman_upload_files', 'fileman', '', 'module'),
(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
(54, 'fileman_install_control', 'fileman', '', 'module'),
(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
(59, 'medialib_access', 'fileman', '', 'medialib'),
(60, 'medialib_new_item', 'fileman', '', 'medialib'),
(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
(62, 'medialib_del_item', 'fileman', '', 'medialib'),
(63, 'sticker_view', 'fileman', '', 'stickers'),
(64, 'sticker_edit', 'fileman', '', 'stickers'),
(65, 'sticker_new', 'fileman', '', 'stickers'),
(66, 'sticker_del', 'fileman', '', 'stickers'),
(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(70, 'section_read', 'iblock', NULL, 'iblock'),
(71, 'element_read', 'iblock', NULL, 'iblock'),
(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(74, 'element_edit', 'iblock', NULL, 'iblock'),
(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
(76, 'element_delete', 'iblock', NULL, 'iblock'),
(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(78, 'section_edit', 'iblock', NULL, 'iblock'),
(79, 'section_delete', 'iblock', NULL, 'iblock'),
(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(85, 'iblock_export', 'iblock', NULL, 'iblock'),
(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(88, 'security_filter_bypass', 'security', NULL, 'module'),
(89, 'security_edit_user_otp', 'security', NULL, 'module'),
(90, 'security_module_settings_read', 'security', NULL, 'module'),
(91, 'security_panel_view', 'security', NULL, 'module'),
(92, 'security_filter_settings_read', 'security', NULL, 'module'),
(93, 'security_otp_settings_read', 'security', NULL, 'module'),
(94, 'security_iprule_admin_settings_read', 'security', NULL, 'module'),
(95, 'security_session_settings_read', 'security', NULL, 'module'),
(96, 'security_redirect_settings_read', 'security', NULL, 'module'),
(97, 'security_stat_activity_settings_read', 'security', NULL, 'module'),
(98, 'security_iprule_settings_read', 'security', NULL, 'module'),
(99, 'security_antivirus_settings_read', 'security', NULL, 'module'),
(100, 'security_frame_settings_read', 'security', NULL, 'module'),
(101, 'security_module_settings_write', 'security', NULL, 'module'),
(102, 'security_filter_settings_write', 'security', NULL, 'module'),
(103, 'security_otp_settings_write', 'security', NULL, 'module'),
(104, 'security_iprule_admin_settings_write', 'security', NULL, 'module'),
(105, 'security_session_settings_write', 'security', NULL, 'module'),
(106, 'security_redirect_settings_write', 'security', NULL, 'module'),
(107, 'security_stat_activity_settings_write', 'security', NULL, 'module'),
(108, 'security_iprule_settings_write', 'security', NULL, 'module'),
(109, 'security_file_verifier_sign', 'security', NULL, 'module'),
(110, 'security_file_verifier_collect', 'security', NULL, 'module'),
(111, 'security_file_verifier_verify', 'security', NULL, 'module'),
(112, 'security_antivirus_settings_write', 'security', NULL, 'module'),
(113, 'security_frame_settings_write', 'security', NULL, 'module'),
(114, 'seo_settings', 'seo', '', 'module'),
(115, 'seo_tools', 'seo', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_option`
--

CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_option`
--

INSERT INTO `b_option` (`MODULE_ID`, `NAME`, `VALUE`, `DESCRIPTION`, `SITE_ID`) VALUES
('main', '~ft_b_user_index', 'a:3:{s:19:\"SEARCH_USER_CONTENT\";b:1;s:25:\"SEARCH_DEPARTMENT_CONTENT\";b:1;s:20:\"SEARCH_ADMIN_CONTENT\";b:1;}', NULL, NULL),
('main', '~crypto_b_user_phone_auth', 'a:1:{s:10:\"OTP_SECRET\";b:1;}', NULL, NULL),
('main', 'rating_authority_rating', '4', NULL, NULL),
('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
('main', 'rating_assign_rating_group', '3', NULL, NULL),
('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
('main', 'rating_assign_authority_group', '4', NULL, NULL),
('main', 'rating_community_size', '0', NULL, NULL),
('main', 'rating_community_authority', '', NULL, NULL),
('main', 'rating_vote_weight', '1', NULL, NULL),
('main', 'rating_normalization_type', 'auto', NULL, NULL),
('main', 'rating_normalization', '10', NULL, NULL),
('main', 'rating_count_vote', '10', NULL, NULL),
('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
('main', 'rating_community_last_visit', '90', NULL, NULL),
('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
('main', 'rating_assign_type', 'auto', NULL, NULL),
('main', 'rating_vote_type', 'standart', NULL, NULL),
('main', 'rating_self_vote', 'Y', NULL, NULL),
('main', 'rating_vote_show', 'Y', NULL, NULL),
('main', 'rating_vote_template', 'like', NULL, NULL),
('main', 'rating_start_authority', '3', NULL, NULL),
('main', 'PARAM_MAX_SITES', '2', NULL, NULL),
('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
('main', 'distributive6', 'Y', NULL, NULL),
('main', '~new_license11_sign', 'Y', NULL, NULL),
('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
('main', 'vendor', '1c_bitrix', NULL, NULL),
('main', 'admin_lid', 'ru', NULL, NULL),
('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
('main', 'update_site_ns', 'Y', NULL, NULL),
('main', 'optimize_css_files', 'Y', NULL, NULL),
('main', 'optimize_js_files', 'Y', NULL, NULL),
('main', 'admin_passwordh', 'FVgQeGYUBwYtCUVcDhcDCgsTAQ==', NULL, NULL),
('main', 'server_uniq_id', '157273c2b7c8a85366cb7fff1a754504', NULL, NULL),
('blog', 'socNetNewPerms', 'Y', NULL, NULL),
('fileman', 'use_editor_3', 'Y', NULL, NULL),
('forum', 'FILTER_DICT_W', '1', NULL, 'ru'),
('forum', 'FILTER_DICT_T', '2', NULL, 'ru'),
('forum', 'FILTER_DICT_W', '3', NULL, 'en'),
('forum', 'FILTER_DICT_T', '4', NULL, 'en'),
('forum', 'FILTER', 'N', NULL, NULL),
('landing', 'disabled_namespaces', 'bitrix', NULL, NULL),
('landing', 'block_vendor_bitrix', 'https://repo.bitrix24.site/rest/1/w1uqy3swvyp50bso/', NULL, NULL),
('landing', 'pub_path_s1', '/lp/', NULL, NULL),
('messageservice', 'clean_up_period', '14', NULL, NULL),
('rest', 'server_path', '/rest', NULL, NULL),
('rest', 'entity_iblock_type', 'rest_entity', NULL, NULL),
('search', 'version', 'v2.0', NULL, NULL),
('search', 'dbnode_id', 'N', NULL, NULL),
('search', 'dbnode_status', 'ok', NULL, NULL),
('security', 'ipcheck_disable_file', '/bitrix/modules/ipcheck_disable_df4b539056476ba067f132a0963ccc79', NULL, NULL),
('security', 'redirect_sid', '7k97nkg8gmi032v2q38hh0yfd6z7y8c5', NULL, NULL),
('vote', 'VOTE_DIR', '', NULL, NULL),
('vote', 'VOTE_COMPATIBLE_OLD_TEMPLATE', 'N', NULL, NULL),
('main', 'email_from', 'dmitrie43@mail.ru', NULL, NULL),
('main', 'wizard_site_logo', '', NULL, NULL),
('main', 'server_name', 'bitrixsite', NULL, NULL),
('main', 'site_name', 'Моя компания', NULL, NULL),
('main', 'wizard_company_slogan', 'Быстро. Просто. Эффективно', NULL, NULL),
('socialnetwork', 'tooltip_rating_id', 'a:2:{i:0;i:3;i:1;i:4;}', NULL, 'WI'),
('socialnetwork', 'tooltip_show_rating', 'Y', NULL, 'WI'),
('forum', 'SHOW_VOTES', 'N', NULL, NULL),
('main', 'new_user_registration_def_group', '5', NULL, NULL),
('main', 'show_panel_for_users', 'a:1:{i:0;s:2:\"G6\";}', NULL, NULL),
('main', 'upload_dir', 'upload', NULL, NULL),
('main', 'component_cache_on', 'Y', NULL, NULL),
('main', 'save_original_file_name', 'Y', NULL, NULL),
('main', 'captcha_registration', 'Y', NULL, NULL),
('main', 'use_secure_password_cookies', 'Y', NULL, NULL),
('main', 'new_user_registration', 'Y', NULL, NULL),
('main', 'auth_comp2', 'Y', NULL, NULL),
('main', 'update_autocheck', '7', NULL, NULL),
('main', 'map_top_menu_type', 'top', NULL, NULL),
('main', 'map_left_menu_type', 'left', NULL, NULL),
('main', 'event_log_logout', 'Y', NULL, NULL),
('main', 'event_log_login_success', 'Y', NULL, NULL),
('main', 'event_log_login_fail', 'Y', NULL, NULL),
('main', 'event_log_register', 'Y', NULL, NULL),
('main', 'event_log_register_fail', 'Y', NULL, NULL),
('main', 'event_log_password_request', 'Y', NULL, NULL),
('main', 'event_log_password_change', 'Y', NULL, NULL),
('main', 'event_log_user_delete', 'Y', NULL, NULL),
('main', 'CAPTCHA_presets', '2', NULL, NULL),
('main', 'CAPTCHA_transparentTextPercent', '0', NULL, NULL),
('main', 'CAPTCHA_arBGColor_1', 'FFFFFF', NULL, NULL),
('main', 'CAPTCHA_arBGColor_2', 'FFFFFF', NULL, NULL),
('main', 'CAPTCHA_numEllipses', '0', NULL, NULL),
('main', 'CAPTCHA_numLines', '0', NULL, NULL),
('main', 'CAPTCHA_textStartX', '40', NULL, NULL),
('main', 'CAPTCHA_textFontSize', '26', NULL, NULL),
('main', 'CAPTCHA_arTextColor_1', '000000', NULL, NULL),
('main', 'CAPTCHA_arTextColor_2', '000000', NULL, NULL),
('main', 'CAPTCHA_textAngel_1', '-15', NULL, NULL),
('main', 'CAPTCHA_textAngel_2', '15', NULL, NULL),
('main', 'CAPTCHA_textDistance_1', '-2', NULL, NULL),
('main', 'CAPTCHA_textDistance_2', '-2', NULL, NULL),
('main', 'CAPTCHA_bWaveTransformation', 'N', NULL, NULL),
('main', 'CAPTCHA_arBorderColor', '000000', NULL, NULL),
('main', 'CAPTCHA_arTTFFiles', 'bitrix_captcha.ttf', NULL, NULL),
('fileman', 'menutypes', 'a:2:{s:4:\\\"left\\\";s:23:\\\"Меню раздела\\\";s:3:\\\"top\\\";s:23:\\\"Главное меню\\\";}', NULL, 's1'),
('fileman', 'menutypes', 'a:2:{s:4:\\\"left\\\";s:23:\\\"Меню раздела\\\";s:3:\\\"top\\\";s:23:\\\"Главное меню\\\";}', NULL, NULL),
('fileman', 'default_edit', 'html', NULL, NULL),
('fileman', 'propstypes', 'a:4:{s:11:\"description\";s:33:\"Описание страницы\";s:8:\"keywords\";s:27:\"Ключевые слова\";s:5:\"title\";s:44:\"Заголовок окна браузера\";s:14:\"keywords_inner\";s:35:\"Продвигаемые слова\";}', NULL, NULL),
('socialservices', 'auth_services', 'a:12:{s:9:\"VKontakte\";s:1:\"N\";s:8:\"MyMailRu\";s:1:\"N\";s:7:\"Twitter\";s:1:\"N\";s:8:\"Facebook\";s:1:\"N\";s:11:\"Livejournal\";s:1:\"Y\";s:12:\"YandexOpenID\";s:1:\"Y\";s:7:\"Rambler\";s:1:\"Y\";s:12:\"MailRuOpenID\";s:1:\"Y\";s:12:\"Liveinternet\";s:1:\"Y\";s:7:\"Blogger\";s:1:\"Y\";s:6:\"OpenID\";s:1:\"Y\";s:6:\"LiveID\";s:1:\"N\";}', NULL, NULL),
('search', 'use_word_distance', 'Y', NULL, NULL),
('search', 'use_social_rating', 'Y', NULL, NULL),
('search', 'use_stemming', 'Y', NULL, NULL),
('search', 'use_tf_cache', 'Y', NULL, NULL),
('search', 'exclude_mask', '/bitrix/*;/404.php;/upload/*;/auth*;*/search*;*/tags*;/personal/*;/e-store/affiliates/*;/content/*/my/*;/examples/*;/map.php;*/detail.php;/communication/voting/*;/club/index.php', NULL, NULL),
('iblock', 'use_htmledit', 'Y', NULL, NULL),
('iblock', 'combined_list_mode', 'Y', NULL, NULL),
('main', 'LAST_DB_OPTIMIZATION_TIME', '1567601387', NULL, NULL),
('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
('main', 'signer_default_key', '1338ee6587d91550f76add37e8d5c168328fb7583c4f924cd522430a4e3df340050f81d48f74288910c2fbd2ad7607bfce48e770c36405129f72a4ee66ad32e8', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cache`
--

CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cluster`
--

CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_component`
--

CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_error`
--

CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_history`
--

CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_hit`
--

CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_ban`
--

CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_complete`
--

CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest`
--

CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest_sql`
--

CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL DEFAULT '0',
  `SQL_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql`
--

CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql_backtrace`
--

CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL DEFAULT '0',
  `NN` int(18) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_column_stat`
--

CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_stat`
--

CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_test`
--

CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting`
--

CREATE TABLE `b_posting` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `VERSION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `SENT_BCC` mediumtext COLLATE utf8_unicode_ci,
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BCC_FIELD` mediumtext COLLATE utf8_unicode_ci,
  `EMAIL_FILTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BODY` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DIRECT_SEND` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MSG_CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBSCR_FORMAT` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_EMAIL` mediumtext COLLATE utf8_unicode_ci,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `BCC_TO_SEND` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_email`
--

CREATE TABLE `b_posting_email` (
  `ID` int(11) NOT NULL,
  `POSTING_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SUBSCRIPTION_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_file`
--

CREATE TABLE `b_posting_file` (
  `POSTING_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_group`
--

CREATE TABLE `b_posting_group` (
  `POSTING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_rubric`
--

CREATE TABLE `b_posting_rubric` (
  `POSTING_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating`
--

CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating`
--

INSERT INTO `b_rating` (`ID`, `ACTIVE`, `NAME`, `ENTITY_ID`, `CALCULATION_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_CALCULATED`, `POSITION`, `AUTHORITY`, `CALCULATED`, `CONFIGS`) VALUES
(3, 'Y', 'Рейтинг', 'USER', 'SUM', '2019-09-04 16:49:30', '2019-09-04 16:49:30', '2019-09-10 14:35:57', 'Y', 'N', 'Y', 'a:3:{s:4:\"MAIN\";a:1:{s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),
(4, 'Y', 'Авторитет', 'USER', 'SUM', '2019-09-04 16:49:30', '2019-09-04 16:49:30', '2019-09-10 14:35:57', 'Y', 'Y', 'Y', 'a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";N;s:4:\"BLOG\";N;}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component`
--

CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_component`
--

INSERT INTO `b_rating_component` (`ID`, `RATING_ID`, `ACTIVE`, `ENTITY_ID`, `MODULE_ID`, `RATING_TYPE`, `NAME`, `COMPLEX_NAME`, `CLASS`, `CALC_METHOD`, `EXCEPTION_METHOD`, `LAST_MODIFIED`, `LAST_CALCULATED`, `NEXT_CALCULATION`, `REFRESH_INTERVAL`, `CONFIG`) VALUES
(1, 3, 'Y', 'USER', 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', 'CRatingsComponentsMain', 'CalcUserBonus', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}'),
(2, 3, 'Y', 'USER', 'FORUM', 'VOTE', 'TOPIC', 'USER_FORUM_VOTE_TOPIC', 'CRatingsComponentsForum', 'CalcUserVoteForumTopic', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}'),
(3, 3, 'Y', 'USER', 'FORUM', 'VOTE', 'POST', 'USER_FORUM_VOTE_POST', 'CRatingsComponentsForum', 'CalcUserVoteForumPost', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}'),
(4, 3, 'Y', 'USER', 'FORUM', 'RATING', 'ACTIVITY', 'USER_FORUM_RATING_ACTIVITY', 'CRatingsComponentsForum', 'CalcUserRatingForumActivity', 'ExceptionUserRatingForumActivity', '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 15:35:57', 7200, 'a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}'),
(5, 3, 'Y', 'USER', 'BLOG', 'VOTE', 'POST', 'USER_BLOG_VOTE_POST', 'CRatingsComponentsBlog', 'CalcPost', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),
(6, 3, 'Y', 'USER', 'BLOG', 'VOTE', 'COMMENT', 'USER_BLOG_VOTE_COMMENT', 'CRatingsComponentsBlog', 'CalcComment', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),
(7, 3, 'Y', 'USER', 'BLOG', 'RATING', 'ACTIVITY', 'USER_BLOG_RATING_ACTIVITY', 'CRatingsComponentsBlog', 'CalcActivity', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 15:35:57', 7200, 'a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}'),
(8, 4, 'Y', 'USER', 'MAIN', 'VOTE', 'USER', 'USER_MAIN_VOTE_USER', 'CRatingsComponentsMain', 'CalcVoteUser', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),
(9, 4, 'Y', 'USER', 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', 'CRatingsComponentsMain', 'CalcUserBonus', NULL, '2019-09-04 16:49:30', '2019-09-10 14:35:57', '2019-09-10 14:35:57', 3600, 'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component_results`
--

CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_component_results`
--

INSERT INTO `b_rating_component_results` (`ID`, `RATING_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `MODULE_ID`, `RATING_TYPE`, `NAME`, `COMPLEX_NAME`, `CURRENT_VALUE`) VALUES
(45, 3, 'USER', 1, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '0.0000'),
(46, 3, 'USER', 2, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '0.0000'),
(48, 4, 'USER', 1, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '3.0000'),
(49, 4, 'USER', 2, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '3.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_prepare`
--

CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_results`
--

CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_results`
--

INSERT INTO `b_rating_results` (`ID`, `RATING_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `CURRENT_VALUE`, `PREVIOUS_VALUE`, `CURRENT_POSITION`, `PREVIOUS_POSITION`) VALUES
(1, 4, 'USER', 1, '3.0000', '30.0000', 1, 0),
(2, 3, 'USER', 1, '0.0000', '0.0000', 1, 0),
(3, 4, 'USER', 2, '3.0000', '0.0000', 2, 0),
(4, 3, 'USER', 2, '0.0000', '0.0000', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule`
--

CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_rule`
--

INSERT INTO `b_rating_rule` (`ID`, `ACTIVE`, `NAME`, `ENTITY_TYPE_ID`, `CONDITION_NAME`, `CONDITION_MODULE`, `CONDITION_CLASS`, `CONDITION_METHOD`, `CONDITION_CONFIG`, `ACTION_NAME`, `ACTION_CONFIG`, `ACTIVATE`, `ACTIVATE_CLASS`, `ACTIVATE_METHOD`, `DEACTIVATE`, `DEACTIVATE_CLASS`, `DEACTIVATE_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_APPLIED`) VALUES
(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2019-09-04 16:22:00', '2019-09-04 16:22:00', NULL),
(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2019-09-04 16:22:00', '2019-09-04 16:22:00', NULL),
(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2019-09-04 16:22:00', '2019-09-04 16:22:00', NULL),
(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2019-09-04 16:22:00', '2019-09-04 16:22:00', NULL),
(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2019-09-04 16:22:00', '2019-09-04 16:22:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule_vetting`
--

CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_user`
--

CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_user`
--

INSERT INTO `b_rating_user` (`ID`, `RATING_ID`, `ENTITY_ID`, `BONUS`, `VOTE_WEIGHT`, `VOTE_COUNT`) VALUES
(2, 4, 1, '3.0000', '3.0000', 13),
(3, 3, 1, '0.0000', '0.0000', 0),
(4, 4, 2, '3.0000', '3.0000', 13),
(5, 3, 2, '0.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote`
--

CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote_group`
--

CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_vote_group`
--

INSERT INTO `b_rating_vote_group` (`ID`, `GROUP_ID`, `TYPE`) VALUES
(5, 1, 'A'),
(1, 1, 'R'),
(3, 1, 'R'),
(2, 3, 'R'),
(4, 3, 'R'),
(6, 4, 'A');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting`
--

CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_prepare`
--

CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_reaction`
--

CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_weight`
--

CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_weight`
--

INSERT INTO `b_rating_weight` (`ID`, `RATING_FROM`, `RATING_TO`, `WEIGHT`, `COUNT`) VALUES
(1, '-1000000.0000', '1000000.0000', '1.0000', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap`
--

CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app`
--

CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_lang`
--

CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_log`
--

CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap_permission`
--

CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event`
--

CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event_offline`
--

CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_log`
--

CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_placement`
--

CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat`
--

CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat_method`
--

CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content`
--

CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content`
--

INSERT INTO `b_search_content` (`ID`, `DATE_CHANGE`, `MODULE_ID`, `ITEM_ID`, `CUSTOM_RANK`, `USER_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `URL`, `TITLE`, `BODY`, `TAGS`, `PARAM1`, `PARAM2`, `UPD`, `DATE_FROM`, `DATE_TO`) VALUES
(1, '2019-09-04 16:49:35', 'iblock', 'S1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=203&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Недвижимость', '', NULL, 'services', '1', NULL, NULL, NULL),
(2, '2019-09-04 16:49:35', 'iblock', 'S2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=209&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Покупка', '', NULL, 'services', '1', NULL, NULL, NULL),
(3, '2019-09-04 16:49:35', 'iblock', 'S3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=210&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продажа', '', NULL, 'services', '1', NULL, NULL, NULL),
(4, '2019-09-04 16:49:35', 'iblock', 'S4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=213&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Разное', '', NULL, 'services', '1', NULL, NULL, NULL),
(5, '2019-09-04 16:49:35', 'iblock', 'S5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=211&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Сдаю', '', NULL, 'services', '1', NULL, NULL, NULL),
(6, '2019-09-04 16:49:35', 'iblock', 'S6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=212&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Сниму', '', NULL, 'services', '1', NULL, NULL, NULL),
(7, '2019-09-04 16:49:35', 'iblock', 'S7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=205&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Оргтехника', '', NULL, 'services', '1', NULL, NULL, NULL),
(8, '2019-09-04 16:49:35', 'iblock', 'S8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=206&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Покупка', '', NULL, 'services', '1', NULL, NULL, NULL),
(9, '2019-09-04 16:49:35', 'iblock', 'S9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=207&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продажа', '', NULL, 'services', '1', NULL, NULL, NULL),
(10, '2019-09-04 16:49:35', 'iblock', 'S10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=208&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Разное', '', NULL, 'services', '1', NULL, NULL, NULL),
(11, '2019-09-04 16:49:35', 'iblock', 'S11', 0, NULL, NULL, NULL, '=ID=11&EXTERNAL_ID=204&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Транспорт', '', NULL, 'services', '1', NULL, NULL, NULL),
(12, '2019-09-04 16:49:35', 'iblock', 'S12', 0, NULL, NULL, NULL, '=ID=12&EXTERNAL_ID=216&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'ГСМ', '', NULL, 'services', '1', NULL, NULL, NULL),
(13, '2019-09-04 16:49:35', 'iblock', 'S13', 0, NULL, NULL, NULL, '=ID=13&EXTERNAL_ID=214&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Покупка', '', NULL, 'services', '1', NULL, NULL, NULL),
(14, '2019-09-04 16:49:35', 'iblock', 'S14', 0, NULL, NULL, NULL, '=ID=14&EXTERNAL_ID=215&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продажа', '', NULL, 'services', '1', NULL, NULL, NULL),
(15, '2019-09-04 16:49:35', 'iblock', 'S15', 0, NULL, NULL, NULL, '=ID=15&EXTERNAL_ID=217&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Услуги', '', NULL, 'services', '1', NULL, NULL, NULL),
(16, '2019-09-04 16:49:35', 'iblock', '1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=1565&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Куплю однокомнатную квартиру в центральном районе', 'Куплю однокомнатную квартиру на 1-2 этаже с балконом в центральном районе города. Звонить: пн-пт с 18 часов; сб-вс с 8 до 23 часов. Просьба посредникам не беспокоить.', '', 'services', '1', NULL, NULL, NULL),
(17, '2007-03-07 14:00:00', 'iblock', '2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=1568&IBLOCK_SECTION_ID=8&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Куплю Битрикс', 'Куплю Битрикс: Управление сайтом.', '', 'services', '1', NULL, '2007-03-07 14:00:00', '2008-03-06 00:00:00'),
(18, '2019-09-04 16:49:35', 'iblock', '3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=1570&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продается двухкомнатная квартира в строящемся доме', 'Продается двухкомнатная квартира в строящемся доме по улице Карамзина Московского района площадью по 62 кв.м. на 3 этаже. Территория дома огорожена, автостоянка. Сдача дома: конец 2007 - начало 2008 года. Договор регистрируется в юстиции.', '', 'services', '1', NULL, NULL, NULL),
(19, '2019-09-04 16:49:35', 'iblock', '4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=1574&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продаю земельные участки', 'Продаю земельные участки на побережье Балтийского моря от 6 соток до 10 га под строительство коттеджей, а также сельхозяйственные угодья от 2.5 га.', '', 'services', '1', NULL, NULL, NULL),
(20, '2019-09-04 16:49:35', 'iblock', '5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=1584&IBLOCK_SECTION_ID=5&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Сдаем в аренду квартиры и комнаты', 'Сдаем в аренду квартиры и комнаты на длительный срок. База данных на нашем сайте. Есть возможность оставить заявку.', '', 'services', '1', NULL, NULL, NULL),
(21, '2019-09-04 16:49:35', 'iblock', '6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=1587&IBLOCK_SECTION_ID=6&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Сниму помещение', 'Сниму помещение под книжный магазин: 40-45 кв. м. + подсобка в р-не Ленинского пр., ул. Багратиона. Александр.', '', 'services', '1', NULL, NULL, NULL),
(22, '2019-09-04 16:49:35', 'iblock', '7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=1595&IBLOCK_SECTION_ID=13&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Куплю БМВ 320', 'Куплю БМВ 320, 1993-96 года выпуска, АКПП, цвет - черный металлик , до $7700.', '', 'services', '1', NULL, NULL, NULL),
(23, '2019-09-04 16:49:35', 'iblock', '8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=1597&IBLOCK_SECTION_ID=14&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продаем автобусы', 'Всегда есть в наличии на стоянке в Москве новые и подержанные туристические и городские автобусы различных марок (Mercedes, Setra, Neoplan и т.д.). Также предлагаем микроавтобусы Mercedes Sprinter и Volkswagen LT.', '', 'services', '1', NULL, NULL, NULL),
(24, '2019-09-04 16:49:35', 'iblock', '9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=1607&IBLOCK_SECTION_ID=14&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продаю Volkswagen-Jetta', 'Продаю Volkswagen-Jetta, 2001 г/в, 2.0, темно-зеленый металлик, черный кожаный салан, АКПП, круиз контроль, полный электропакет, 6 аэрбэгов, люк (2 положения), кондиционер, АБС, ECP, подогрев сидений, мульти-руль, CD-магнитола. Полная комплектация. Только из Америки, без пробега по РФ, в отличном состоянии, $15 500.', '', 'services', '1', NULL, NULL, NULL),
(25, '2019-09-04 16:49:35', 'iblock', '10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=1609&IBLOCK_SECTION_ID=15&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Пассажирские перевозки', 'Пассажирские перевозки микроавтобусом (8 мест), аренда микроавтобуса, трансфер в/из аэропортов.', '', 'services', '1', NULL, NULL, NULL),
(26, '2019-09-04 16:49:35', 'iblock', '11', 0, NULL, NULL, NULL, '=ID=11&EXTERNAL_ID=1611&IBLOCK_SECTION_ID=15&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Транспортные перевозки', 'Транспортно-экспедиторские услуги при перевозке грузов из/в Калининграда, по железным дорогам СНГ и Европы.', '', 'services', '1', NULL, NULL, NULL),
(27, '2019-09-04 16:49:36', 'iblock', '12', 0, NULL, NULL, NULL, '=ID=12&EXTERNAL_ID=1613&IBLOCK_SECTION_ID=9&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продаю компьютер', 'Продаю компьютер: Процессор AMD ATHLON 1600 XP, RAM 256Mb, FDD, HDD 20G, HDD 80G, CD-ROM, CD-RW, звук Creative, видео nVidia 5200 FX 64M, тюнер WinFast XP, модем Omni PCI 56K +Монитор Samsung 757 NF 17\" +Клавиатура +Мышь +UPC +Колонки +Комбо принтер+сканер Epson CX3650 без картриджей 12000, торг', '', 'services', '1', NULL, NULL, NULL),
(28, '2019-09-04 16:49:36', 'iblock', '13', 0, NULL, NULL, NULL, '=ID=13&EXTERNAL_ID=1616&IBLOCK_SECTION_ID=9&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Продаем ноутбуки', 'Продаем новые ноутбуки и б\\у. Гарантия от года до трех. Самые низкие цены в городе. Найдите цену ниже и получите ноутбук по найденной цене + подарок - сумку для ноутбука.', '', 'services', '1', NULL, NULL, NULL),
(29, '2019-09-04 16:49:36', 'iblock', '14', 0, NULL, NULL, NULL, '=ID=14&EXTERNAL_ID=1618&IBLOCK_SECTION_ID=8&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Куплю аккустическую систему', 'Куплю аккустическую систему AC-90 2шт в идеальном состоянии.', '', 'services', '1', NULL, NULL, NULL),
(30, '2019-09-04 16:49:36', 'iblock', '15', 0, NULL, NULL, NULL, '=ID=15&EXTERNAL_ID=1620&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Куплю земельный участок', 'Куплю земельный участок сельхозназначения, желательно поближе к Калининграду или по дороге к побережье, рассмотрю все вариаты.', '', 'services', '1', NULL, NULL, NULL),
(31, '2019-09-04 16:49:38', 'iblock', 'S16', 0, NULL, NULL, NULL, '=ID=16&EXTERNAL_ID=158&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Бизнес и Финансы', '', NULL, 'services', '2', NULL, NULL, NULL),
(32, '2019-09-04 16:49:38', 'iblock', 'S17', 0, NULL, NULL, NULL, '=ID=17&EXTERNAL_ID=159&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Банки', '', NULL, 'services', '2', NULL, NULL, NULL),
(33, '2019-09-04 16:49:38', 'iblock', 'S18', 0, NULL, NULL, NULL, '=ID=18&EXTERNAL_ID=160&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Маркетинг', '', NULL, 'services', '2', NULL, NULL, NULL),
(34, '2019-09-04 16:49:38', 'iblock', 'S19', 0, NULL, NULL, NULL, '=ID=19&EXTERNAL_ID=166&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Недвижимость', '', NULL, 'services', '2', NULL, NULL, NULL),
(35, '2019-09-04 16:49:38', 'iblock', 'S20', 0, NULL, NULL, NULL, '=ID=20&EXTERNAL_ID=167&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Страхование', '', NULL, 'services', '2', NULL, NULL, NULL),
(36, '2019-09-04 16:49:38', 'iblock', 'S21', 0, NULL, NULL, NULL, '=ID=21&EXTERNAL_ID=148&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Дом и Семья', '', NULL, 'services', '2', NULL, NULL, NULL),
(37, '2019-09-04 16:49:38', 'iblock', 'S22', 0, NULL, NULL, NULL, '=ID=22&EXTERNAL_ID=170&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Дети', '', NULL, 'services', '2', NULL, NULL, NULL),
(38, '2019-09-04 16:49:38', 'iblock', 'S23', 0, NULL, NULL, NULL, '=ID=23&EXTERNAL_ID=168&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Ремонт', '', NULL, 'services', '2', NULL, NULL, NULL),
(39, '2019-09-04 16:49:38', 'iblock', 'S24', 0, NULL, NULL, NULL, '=ID=24&EXTERNAL_ID=169&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Товары для дома', '', NULL, 'services', '2', NULL, NULL, NULL),
(40, '2019-09-04 16:49:38', 'iblock', 'S25', 0, NULL, NULL, NULL, '=ID=25&EXTERNAL_ID=154&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Наука и образование', '', NULL, 'services', '2', NULL, NULL, NULL),
(41, '2019-09-04 16:49:38', 'iblock', 'S26', 0, NULL, NULL, NULL, '=ID=26&EXTERNAL_ID=171&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'ВУЗы', '', NULL, 'services', '2', NULL, NULL, NULL),
(42, '2019-09-04 16:49:38', 'iblock', 'S27', 0, NULL, NULL, NULL, '=ID=27&EXTERNAL_ID=172&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Наука', '', NULL, 'services', '2', NULL, NULL, NULL),
(43, '2019-09-04 16:49:38', 'iblock', 'S28', 0, NULL, NULL, NULL, '=ID=28&EXTERNAL_ID=174&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Школы', '', NULL, 'services', '2', NULL, NULL, NULL),
(44, '2019-09-04 16:49:38', 'iblock', 'S29', 0, NULL, NULL, NULL, '=ID=29&EXTERNAL_ID=173&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Экология', '', NULL, 'services', '2', NULL, NULL, NULL),
(45, '2019-09-04 16:49:38', 'iblock', 'S30', 0, NULL, NULL, NULL, '=ID=30&EXTERNAL_ID=156&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Общество и Политика', '', NULL, 'services', '2', NULL, NULL, NULL),
(46, '2019-09-04 16:49:38', 'iblock', 'S31', 0, NULL, NULL, NULL, '=ID=31&EXTERNAL_ID=178&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Общественные организации', '', NULL, 'services', '2', NULL, NULL, NULL),
(47, '2019-09-04 16:49:38', 'iblock', 'S32', 0, NULL, NULL, NULL, '=ID=32&EXTERNAL_ID=177&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Партии', '', NULL, 'services', '2', NULL, NULL, NULL),
(48, '2019-09-04 16:49:39', 'iblock', 'S33', 0, NULL, NULL, NULL, '=ID=33&EXTERNAL_ID=176&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Религия', '', NULL, 'services', '2', NULL, NULL, NULL),
(49, '2019-09-04 16:49:39', 'iblock', 'S34', 0, NULL, NULL, NULL, '=ID=34&EXTERNAL_ID=155&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Отдых и развлечения', '', NULL, 'services', '2', NULL, NULL, NULL),
(50, '2019-09-04 16:49:39', 'iblock', 'S35', 0, NULL, NULL, NULL, '=ID=35&EXTERNAL_ID=180&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Знакомства', '', NULL, 'services', '2', NULL, NULL, NULL),
(51, '2019-09-04 16:49:39', 'iblock', 'S36', 0, NULL, NULL, NULL, '=ID=36&EXTERNAL_ID=182&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Клубы', '', NULL, 'services', '2', NULL, NULL, NULL),
(52, '2019-09-04 16:49:39', 'iblock', 'S37', 0, NULL, NULL, NULL, '=ID=37&EXTERNAL_ID=181&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Рыбалка', '', NULL, 'services', '2', NULL, NULL, NULL),
(53, '2019-09-04 16:49:39', 'iblock', 'S38', 0, NULL, NULL, NULL, '=ID=38&EXTERNAL_ID=152&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'СМИ', '', NULL, 'services', '2', NULL, NULL, NULL),
(54, '2019-09-04 16:49:39', 'iblock', 'S39', 0, NULL, NULL, NULL, '=ID=39&EXTERNAL_ID=187&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Газеты', '', NULL, 'services', '2', NULL, NULL, NULL),
(55, '2019-09-04 16:49:39', 'iblock', 'S40', 0, NULL, NULL, NULL, '=ID=40&EXTERNAL_ID=188&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Радио', '', NULL, 'services', '2', NULL, NULL, NULL),
(56, '2019-09-04 16:49:39', 'iblock', 'S41', 0, NULL, NULL, NULL, '=ID=41&EXTERNAL_ID=189&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Телевидение', '', NULL, 'services', '2', NULL, NULL, NULL),
(57, '2019-09-04 16:49:39', 'iblock', 'S42', 0, NULL, NULL, NULL, '=ID=42&EXTERNAL_ID=150&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Товары и Услуги', '', NULL, 'services', '2', NULL, NULL, NULL),
(58, '2019-09-04 16:49:39', 'iblock', 'S43', 0, NULL, NULL, NULL, '=ID=43&EXTERNAL_ID=195&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Аптеки', '', NULL, 'services', '2', NULL, NULL, NULL),
(59, '2019-09-04 16:49:39', 'iblock', 'S44', 0, NULL, NULL, NULL, '=ID=44&EXTERNAL_ID=194&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Гостиницы', '', NULL, 'services', '2', NULL, NULL, NULL),
(60, '2019-09-04 16:49:39', 'iblock', 'S45', 0, NULL, NULL, NULL, '=ID=45&EXTERNAL_ID=197&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Мебель', '', NULL, 'services', '2', NULL, NULL, NULL),
(61, '2019-09-04 16:49:39', 'iblock', 'S46', 0, NULL, NULL, NULL, '=ID=46&EXTERNAL_ID=196&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Одежда', '', NULL, 'services', '2', NULL, NULL, NULL),
(62, '2019-09-04 16:49:39', 'iblock', '16', 0, NULL, NULL, NULL, '=ID=16&EXTERNAL_ID=1452&IBLOCK_SECTION_ID=17&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Центральный банк Российской Федерации', 'История банка, основные функции, правовой статус, организационная структура. Информация о денежной политике и финансовых рынках. Новости (обновляются ежедневно). Поисковая система по ключевым словам.\r\nИстория банка, основные функции, правовой статус, организационная структура. Информация о денежной политике и финансовых рынках. Новости (обновляются ежедневно). Поисковая система по ключевым словам.', '', 'services', '2', NULL, NULL, NULL),
(63, '2019-09-04 16:49:39', 'iblock', '17', 0, NULL, NULL, NULL, '=ID=17&EXTERNAL_ID=1454&IBLOCK_SECTION_ID=17&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Газпромбанк\"', 'Услуги физическим и юридическим лицам. Доверительное управление. Подробно об услугах. Адреса филиалов в городах России. Финансовые отчеты работы.\r\nУслуги физическим и юридическим лицам. Доверительное управление. Подробно об услугах. Адреса филиалов в городах России. Финансовые отчеты работы.', '', 'services', '2', NULL, NULL, NULL),
(64, '2019-09-04 16:49:39', 'iblock', '18', 0, NULL, NULL, NULL, '=ID=18&EXTERNAL_ID=1456&IBLOCK_SECTION_ID=17&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Альфа-банк\"', 'Сведения для потенциальных сотрудников и партнеров. Информация об услугах банка частным лицам. Новости организации, аналитические разработки. Адреса отделений и банкоматов.\r\nСведения для потенциальных сотрудников и партнеров. Информация об услугах банка частным лицам. Новости организации, аналитические разработки. Адреса отделений и банкоматов.', '', 'services', '2', NULL, NULL, NULL),
(65, '2019-09-04 16:49:39', 'iblock', '19', 0, NULL, NULL, NULL, '=ID=19&EXTERNAL_ID=1458&IBLOCK_SECTION_ID=17&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"ВТБ\" - банковская группа', 'Новости банка. Финансовая отчетность. Услуги: открытие счетов, международные расчеты, валютный контроль, кредитные карты, срочные вклады, ипотечное кредитование и др. Контакты.\r\nНовости банка. Финансовая отчетность. Услуги: открытие счетов, международные расчеты, валютный контроль, кредитные карты, срочные вклады, ипотечное кредитование и др. Контакты.', '', 'services', '2', NULL, NULL, NULL),
(66, '2019-09-04 16:49:39', 'iblock', '20', 0, NULL, NULL, NULL, '=ID=20&EXTERNAL_ID=1460&IBLOCK_SECTION_ID=18&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"РАМ\" - \"Российская ассоциация маркетинга\"', 'Устав, структура, филиалы, цели и задачи некоммерческой организации. Сведения об общероссийской маркетинговой системе - ОМС (описание, методы, база проектов). Новости, анонсы выставок и конференций.\r\nУстав, структура, филиалы, цели и задачи некоммерческой организации. Сведения об общероссийской маркетинговой системе - ОМС (описание, методы, база проектов). Новости, анонсы выставок и конференций.', '', 'services', '2', NULL, NULL, NULL),
(67, '2019-09-04 16:49:39', 'iblock', '21', 0, NULL, NULL, NULL, '=ID=21&EXTERNAL_ID=1462&IBLOCK_SECTION_ID=18&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"V-Ratio\" - маркетинговые услуги', 'Консалтинг в области управления стоимостью компаний. Маркетинговые исследования, фокус-группы, антикризисное управление, привлечение инвестиций. База данных по исследованиям.\r\nКонсалтинг в области управления стоимостью компаний. Маркетинговые исследования, фокус-группы, антикризисное управление, привлечение инвестиций. База данных по исследованиям.', '', 'services', '2', NULL, NULL, NULL),
(68, '2019-09-04 16:49:39', 'iblock', '22', 0, NULL, NULL, NULL, '=ID=22&EXTERNAL_ID=1466&IBLOCK_SECTION_ID=18&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Комкон\" - услуги по исследованию рынка', 'Перечень услуг: исследование рынка и средств массовой информации. Обзор реализуемых проектов. Описание видов исследований. Публикации.\r\nПеречень услуг: исследование рынка и средств массовой информации. Обзор реализуемых проектов. Описание видов исследований. Публикации.', '', 'services', '2', NULL, NULL, NULL),
(69, '2019-09-04 16:49:39', 'iblock', '23', 0, NULL, NULL, NULL, '=ID=23&EXTERNAL_ID=1468&IBLOCK_SECTION_ID=19&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Русская недвижимость\" - информационный портал', 'Информация о недвижимости: новости рынка; аналитика; каталоги новостроек, коттеджей и офисных помещений; консультации юристов и риэлторов; справочная информация.\r\nИнформация о недвижимости: новости рынка; аналитика; каталоги новостроек, коттеджей и офисных помещений; консультации юристов и риэлторов; справочная информация.', '', 'services', '2', NULL, NULL, NULL),
(70, '2019-09-04 16:49:39', 'iblock', '24', 0, NULL, NULL, NULL, '=ID=24&EXTERNAL_ID=1480&IBLOCK_SECTION_ID=22&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Детская электронная библиотека\"', 'Подборка русской и зарубежной литературы для детей: сказки, стихи, повести и пр. Возможность скачать бесплатно.\r\nПодборка русской и зарубежной литературы для детей: сказки, стихи, повести и пр. Возможность скачать бесплатно.', '', 'services', '2', NULL, NULL, NULL),
(71, '2019-09-04 16:49:39', 'iblock', '25', 0, NULL, NULL, NULL, '=ID=25&EXTERNAL_ID=1484&IBLOCK_SECTION_ID=22&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Детский мир\" - страница для родителей и малышей', 'Мультфильмы, иллюстрированные сказки и озвученные сказочки для детей, песенки из мультиков и фильмов-сказок, задачки и загадки в картинках, стихи, фотографии детенышей животных и многое другое.\r\nМультфильмы, иллюстрированные сказки и озвученные сказочки для детей, песенки из мультиков и фильмов-сказок, задачки и загадки в картинках, стихи, фотографии детенышей животных и многое другое.', '', 'services', '2', NULL, NULL, NULL),
(72, '2019-09-04 16:49:39', 'iblock', '26', 0, NULL, NULL, NULL, '=ID=26&EXTERNAL_ID=1492&IBLOCK_SECTION_ID=23&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Жилэкспертиза\" - перепланировка квартир и офисов', 'Описание услуг фирмы на всех этапах перепланировки квартир и офисов (техническое заключение о состоянии конструкции дома, оформление разрешения, проектирование, ремонт и др.). Контактная информация.\r\nОписание услуг фирмы на всех этапах перепланировки квартир и офисов (техническое заключение о состоянии конструкции дома, оформление разрешения, проектирование, ремонт и др.). Контактная информация.', '', 'services', '2', NULL, NULL, NULL),
(73, '2019-09-04 16:49:39', 'iblock', '27', 0, NULL, NULL, NULL, '=ID=27&EXTERNAL_ID=1494&IBLOCK_SECTION_ID=24&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Komod.ru\" - справочно-поисковая система по мебели', 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия).\r\nФотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия).', '', 'services', '2', NULL, NULL, NULL),
(74, '2019-09-04 16:49:40', 'iblock', '28', 0, NULL, NULL, NULL, '=ID=28&EXTERNAL_ID=1496&IBLOCK_SECTION_ID=24&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"М.Видео\" - продажа бытовой техники', 'Адреса, телефоны, схемы проезда в магазины. Прайс-лист, поиск товаров. Рейтинг недельных продаж. Виртуальное казино с призами от М.Видео. Конференции.\r\nАдреса, телефоны, схемы проезда в магазины. Прайс-лист, поиск товаров. Рейтинг недельных продаж. Виртуальное казино с призами от М.Видео. Конференции.', '', 'services', '2', NULL, NULL, NULL),
(75, '2019-09-04 16:49:40', 'iblock', '29', 0, NULL, NULL, NULL, '=ID=29&EXTERNAL_ID=1502&IBLOCK_SECTION_ID=24&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Куписам\" - интернет-супермаркет', 'Иллюстрированный каталог всевозможных товаров и услуг - предложения от российских интернет-магазинов. Поиск по каталогу.\r\nИллюстрированный каталог всевозможных товаров и услуг - предложения от российских интернет-магазинов. Поиск по каталогу.', '', 'services', '2', NULL, NULL, NULL),
(76, '2019-09-04 16:49:40', 'iblock', '30', 0, NULL, NULL, NULL, '=ID=30&EXTERNAL_ID=1504&IBLOCK_SECTION_ID=26&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Московский государственный университет (МГУ)\"', 'История. Структура. Официальная информация. Сведения для абитуриентов. Информация по учебной и научной деятельности. Список web-сайтов и материалы изданий МГУ. Адресная книга.\r\nИстория. Структура. Официальная информация. Сведения для абитуриентов. Информация по учебной и научной деятельности. Список web-сайтов и материалы изданий МГУ. Адресная книга.', '', 'services', '2', NULL, NULL, NULL),
(77, '2019-09-04 16:49:40', 'iblock', '31', 0, NULL, NULL, NULL, '=ID=31&EXTERNAL_ID=1506&IBLOCK_SECTION_ID=26&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Российский университет дружбы народов\"', 'Информация о факультетах и филиалах, кафедрах, центрах дополнительного образования, научных исследованиях. Раздел для абитуриентов. Сведения об учебной программе\r\nИнформация о факультетах и филиалах, кафедрах, центрах дополнительного образования, научных исследованиях. Раздел для абитуриентов. Сведения об учебной программе', '', 'services', '2', NULL, NULL, NULL),
(78, '2019-09-04 16:49:40', 'iblock', '32', 0, NULL, NULL, NULL, '=ID=32&EXTERNAL_ID=1509&IBLOCK_SECTION_ID=26&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Классический пансион МГУ имени М.В. Ломоносова\"', 'Ступени образования: дошкольное, начальное, базовое среднее, углубленное, профильно-прагматическое, высшее в области международных коммуникаций и управления. Программы. Условия приема. Цены.\r\nСтупени образования: дошкольное, начальное, базовое среднее, углубленное, профильно-прагматическое, высшее в области международных коммуникаций и управления. Программы. Условия приема. Цены.', '', 'services', '2', NULL, NULL, NULL),
(79, '2019-09-04 16:49:40', 'iblock', '33', 0, NULL, NULL, NULL, '=ID=33&EXTERNAL_ID=1514&IBLOCK_SECTION_ID=26&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Саратовский медицинский университет\"', 'Структура, история вуза, международная деятельность, контактно-справочная информация. Правила поступления, информация о довузовском образовании. Новости университета в областях образования и науки.\r\nСтруктура, история вуза, международная деятельность, контактно-справочная информация. Правила поступления, информация о довузовском образовании. Новости университета в областях образования и науки.', '', 'services', '2', NULL, NULL, NULL),
(80, '2019-09-04 16:49:40', 'iblock', '34', 0, NULL, NULL, NULL, '=ID=34&EXTERNAL_ID=1516&IBLOCK_SECTION_ID=27&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Известия науки\"', 'Ежедневные публикации о новостях науки и техники, обзоры книг, блоги. Архив с мая 2001г.\r\nЕжедневные публикации о новостях науки и техники, обзоры книг, блоги. Архив с мая 2001г.', '', 'services', '2', NULL, NULL, NULL),
(81, '2019-09-04 16:49:40', 'iblock', '35', 0, NULL, NULL, NULL, '=ID=35&EXTERNAL_ID=1520&IBLOCK_SECTION_ID=27&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Научно-техническая библиотека \"SciTecLibrary\"', 'Сборник материалов о технологиях, изобретениях, ноу-хау и др. научно-технических разработках. Форма договора о публикациях. Сведения для авторов о конкурсах, юридической поддержке, патентовании.\r\nСборник материалов о технологиях, изобретениях, ноу-хау и др. научно-технических разработках. Форма договора о публикациях. Сведения для авторов о конкурсах, юридической поддержке, патентовании.', '', 'services', '2', NULL, NULL, NULL),
(82, '2019-09-04 16:49:40', 'iblock', '36', 0, NULL, NULL, NULL, '=ID=36&EXTERNAL_ID=1522&IBLOCK_SECTION_ID=27&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Мембрана\" - научно-популярный интернет-журнал', 'Журнал о мире (как реальном, так и виртуальном), в котором мы живем. Тематический архив. Обсуждение материалов в форуме. Лента новостей.\r\nЖурнал о мире (как реальном, так и виртуальном), в котором мы живем. Тематический архив. Обсуждение материалов в форуме. Лента новостей.', '', 'services', '2', NULL, NULL, NULL),
(83, '2019-09-04 16:49:40', 'iblock', '37', 0, NULL, NULL, NULL, '=ID=37&EXTERNAL_ID=1524&IBLOCK_SECTION_ID=27&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Российская академия наук', 'Информация об отделениях и организациях. План-карта и список российских веб-серверов.\r\nИнформация об отделениях и организациях. План-карта и список российских веб-серверов.', '', 'services', '2', NULL, NULL, NULL),
(84, '2019-09-04 16:49:40', 'iblock', '38', 0, NULL, NULL, NULL, '=ID=38&EXTERNAL_ID=1528&IBLOCK_SECTION_ID=28&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Bubo-school\" - информационно-справочный ресурс', 'Каталог частных школ. Советы родителям. Онлайн-тесты для детей. Прайс-лист услуг по консультированию относительно выбора школы и дошкольной подготовке ребенка. Контакты.\r\nКаталог частных школ. Советы родителям. Онлайн-тесты для детей. Прайс-лист услуг по консультированию относительно выбора школы и дошкольной подготовке ребенка. Контакты.', '', 'services', '2', NULL, NULL, NULL),
(85, '2019-09-04 16:49:40', 'iblock', '39', 0, NULL, NULL, NULL, '=ID=39&EXTERNAL_ID=1530&IBLOCK_SECTION_ID=28&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Интернет-школа полного среднего образования\"', 'Виды обучения: дополнительная подготовка по школьным предметам через интернет, экстернат. Условия поступления. Порядок обучения. Вход на учебный сервер. Публикации\r\nВиды обучения: дополнительная подготовка по школьным предметам через интернет, экстернат. Условия поступления. Порядок обучения. Вход на учебный сервер. Публикации', '', 'services', '2', NULL, NULL, NULL),
(86, '2019-09-04 16:49:40', 'iblock', '40', 0, NULL, NULL, NULL, '=ID=40&EXTERNAL_ID=1532&IBLOCK_SECTION_ID=28&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Школы в Интернет\"', 'Подборка ссылок на страницы школ, интернет-технологии в образовании, конференции, обучающие программы и проекты. Веб-кольца, образовательные серверы, сетевые викторины и другое.\r\nПодборка ссылок на страницы школ, интернет-технологии в образовании, конференции, обучающие программы и проекты. Веб-кольца, образовательные серверы, сетевые викторины и другое.', '', 'services', '2', NULL, NULL, NULL),
(87, '2019-09-04 16:49:41', 'iblock', '41', 0, NULL, NULL, NULL, '=ID=41&EXTERNAL_ID=1534&IBLOCK_SECTION_ID=29&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Экология и жизнь\" - научно-популярный журнал', 'Экологические новости. Тематический архив некоторых материалов журнала. Информация о подписке.\r\nЭкологические новости. Тематический архив некоторых материалов журнала. Информация о подписке.', '', 'services', '2', NULL, NULL, NULL),
(88, '2019-09-04 16:49:41', 'iblock', '42', 0, NULL, NULL, NULL, '=ID=42&EXTERNAL_ID=1536&IBLOCK_SECTION_ID=29&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Материалы по экологической экспертизе\"', 'Полнотекстовые публикации и материалы по экологической экспертизе, мониторингу, менеджменту и др. Экологическое законодательство.\r\nПолнотекстовые публикации и материалы по экологической экспертизе, мониторингу, менеджменту и др. Экологическое законодательство.', '', 'services', '2', NULL, NULL, NULL),
(89, '2019-09-04 16:49:41', 'iblock', '43', 0, NULL, NULL, NULL, '=ID=43&EXTERNAL_ID=1538&IBLOCK_SECTION_ID=29&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Окружающая среда - Риск - Здоровье\"', 'Материалы об опасности аномальных климатических явлений для здоровья. Информация по городам. Публикации. Словарь терминов. Отчеты о конференциях. Контакты организации.\r\nМатериалы об опасности аномальных климатических явлений для здоровья. Информация по городам. Публикации. Словарь терминов. Отчеты о конференциях. Контакты организации.', '', 'services', '2', NULL, NULL, NULL),
(90, '2009-10-06 12:18:23', 'iblock', '44', 0, NULL, NULL, NULL, '=ID=44&EXTERNAL_ID=1540&IBLOCK_SECTION_ID=18&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', 'Битрикс: Управление сайтом', 'Сайт программного продукта \"Битрикс: Управление сайтом\"\r\n&quot;Битрикс: Управление сайтом&quot; - универсальный программный продукт для разработки, поддержки и успешного развития интернет-проекта. Удобный и понятный интерфейс позволяет эффективно управлять сайтом, не привлекая специалистов по программированию и html-верстке.', '', 'services', '2', NULL, '2009-10-06 12:18:23', NULL),
(91, '2019-09-04 16:49:41', 'iblock', '45', 0, NULL, NULL, NULL, '=ID=45&EXTERNAL_ID=1542&IBLOCK_SECTION_ID=29&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Беллона\" - экологическое объединение (Норвегия)', 'Информация о проблемах эксплуатации атомного флота ВМФ России, сведения об атомных электростанциях и ледоколах. Материалы по ядерному разоружению и по радиоактивным отходам. Атомная хроника.\r\nИнформация о проблемах эксплуатации атомного флота ВМФ России, сведения об атомных электростанциях и ледоколах. Материалы по ядерному разоружению и по радиоактивным отходам. Атомная хроника.', '', 'services', '2', NULL, NULL, NULL),
(92, '2019-09-04 16:49:41', 'iblock', '46', 0, NULL, NULL, NULL, '=ID=46&EXTERNAL_ID=1563&IBLOCK_SECTION_ID=45&IBLOCK_TYPE_ID=services&IBLOCK_ID=2&IBLOCK_CODE=links&IBLOCK_EXTERNAL_ID=services-links&CODE=', '\"Komod.ru\" - справочно-поисковая система по мебели', 'Фотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия). \r\nФотографии, цены мебели для дома и офиса, координаты фирм-продавцов. Возможность поиска товаров по многим параметрам. Информация для партнеров (правила участия).', '', 'services', '2', NULL, NULL, NULL),
(93, '2019-09-04 16:49:43', 'iblock', 'S47', 0, NULL, NULL, NULL, '=ID=47&EXTERNAL_ID=224&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Настройка продукта', '', NULL, 'services', '3', NULL, NULL, NULL),
(94, '2019-09-04 16:49:43', 'iblock', 'S48', 0, NULL, NULL, NULL, '=ID=48&EXTERNAL_ID=228&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Оформление и оплата заказа', '', NULL, 'services', '3', NULL, NULL, NULL),
(95, '2019-09-04 16:49:43', 'iblock', 'S49', 0, NULL, NULL, NULL, '=ID=49&EXTERNAL_ID=225&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Партнерская программа', '', NULL, 'services', '3', NULL, NULL, NULL),
(96, '2019-09-04 16:49:43', 'iblock', '47', 0, NULL, NULL, NULL, '=ID=47&EXTERNAL_ID=1677&IBLOCK_SECTION_ID=47&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Как настроить обработчик 404 ошибки?', 'Если у вас PHP установлен как CGI добавьте в корне сайта в файл .htaccess следующие строки:\n RewriteEngine On\n RewriteBase /\n RewriteCond %{REQUEST_FILENAME} !-f\n RewriteRule ^[0-9a-zA-Z_/.-]+.php$ /404.php\n ErrorDocument 404 /404.php\nДля PHP установленном как ISAPI в .htaccess достаточно добавить строку:\n ErrorDocument 404 /404.php\nПосле этого создайте в корне сайта файл 404.php (если его нет), который и будет являться обработчиком 404 ошибки.', '', 'services', '3', NULL, NULL, NULL),
(97, '2019-09-04 16:49:43', 'iblock', '48', 0, NULL, NULL, NULL, '=ID=48&EXTERNAL_ID=1680&IBLOCK_SECTION_ID=49&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Может ли частное лицо стать партнером компании?', 'Такой вариант возможен, если вы являетесь разработчиком сайтов. Для принятия решения о подписании партнерского соглашения нам понадобится подробнее изучить ваше портфолио. Условия участия для частных лиц не меняются, за исключением того, что для физических лиц мы предоставляем бесплатный ключ только после успешной продажи продукта.', '', 'services', '3', NULL, NULL, NULL),
(98, '2019-09-04 16:49:43', 'iblock', '49', 0, NULL, NULL, NULL, '=ID=49&EXTERNAL_ID=1734&IBLOCK_SECTION_ID=49&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Действуют ли партнерские скидки для собственных сайтов партнеров?', 'Партнерам нашей компании предоставляется бесплатная копия продукта для своего основного сайта. Таким считается сайт, на котором рассказывается об основной деятельности компании партнера (дизайн, разработка сайтов, дистрибуция ПО).\nЕсли вы планируете перевести на \"Битрикс: Управление сайтом\" несколько своих веб-проектов, не связанных с основным видом деятельности, вы можете приобрести копию продукта со своей партнерской скидкой.', '', 'services', '3', NULL, NULL, NULL),
(99, '2019-09-04 16:49:43', 'iblock', '50', 0, NULL, NULL, NULL, '=ID=50&EXTERNAL_ID=1737&IBLOCK_SECTION_ID=48&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Что произойдет через год после покупки, когда закончится бесплатная техподдержка и обновления?', 'В течение года после покупки продукта вы можете скачивать все обновления для вашей \rредакции\r. Список уже выпущенных обновлений публикуется на сайте: \rhttp://www.bitrixsoft.ru/sitemanager/versions.php\r<Через год, если вы захотите и дальше скачивать обновления, вам нужно будет продлить срок активности техподдержки и обновлений.\nЛьготное продление\r- 22% от цены используемого продукта.\nПо льготному продлению срок активности обновлений продляется ровно на один год с момента завершения предыдущего периода.\n<Если же вы решите не продлять обновления, на работе сайта это никак не отразится. Вы сможете использовать ту версию продукта, которая у вас будет на момент завершения техподдержки и обновлений.', '', 'services', '3', NULL, NULL, NULL),
(100, '2019-09-04 16:49:43', 'iblock', '51', 0, NULL, NULL, NULL, '=ID=51&EXTERNAL_ID=1745&IBLOCK_SECTION_ID=48&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Цена продукта на сайте указана с учетом НДС?', 'НДС включен в стоимость продукта. При оформлении заказа вы получите подробную информацию о сумме к оплате.', '', 'services', '3', NULL, NULL, NULL),
(101, '2019-09-04 16:49:43', 'iblock', '52', 0, NULL, NULL, NULL, '=ID=52&EXTERNAL_ID=1747&IBLOCK_SECTION_ID=49&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Система партнерских скидок распространяется на все редакции продукта?', 'Да, партнерские скидки применяются ко всем редакциям продукта &laquo;Битрикс: Управление сайтом&raquo;.', '', 'services', '3', NULL, NULL, NULL),
(102, '2019-09-04 16:49:43', 'iblock', '53', 0, NULL, NULL, NULL, '=ID=53&EXTERNAL_ID=1751&IBLOCK_SECTION_ID=49&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Какова последовательность действий при оформлении заказа?', 'Ссылки на оформление закза можно найти на нашем сайте в разделе \"Купить\": \rhttp://www.bitrixsoft.ru/buy/\rи в разделе Купить -> Для партнеров:\nhttp://www.bitrixsoft.ru/buy/partners.php', '', 'services', '3', NULL, NULL, NULL),
(103, '2019-09-04 16:49:43', 'iblock', '54', 0, NULL, NULL, NULL, '=ID=54&EXTERNAL_ID=1753&IBLOCK_SECTION_ID=48&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'В чем разница между сайтом и экземпляром?', 'На основе одного экземпляра продукта можно создать два сайта в рамках одного веб-проекта (на одном экземпляре базы данных). Если сайтов в проекте больше двух, необходимо докупить лицензии на сайты.\nОбщими для сайтов являются:\n- база пользователей;\n- система авторизации;\n- рекламное пространство и т.д.\nСайт обладает своей структурой, файлами, блоками, объектами, почтовыми сообщениями и зачастую управляется другими сотрудниками. Таким образом, совокупность правил, объектов, сообщений, настроек, файлов и других сущностей мы связываем с сайтом и позволяем управлять с использованием единого инструментария.\nСайты можно настроить как отдельные подкаталоги на одном веб-сервере и как полностью разные веб-сервера, начинающиеся от корня, но работающие с единой базой данных.\nСистема статистики уже ведет частичное разделение данных по сайтам. Для нескольких доменов работает технология трансфера данных, и посетитель пришедший на сайт А, узнается даже когда приходит на сайт Б. В дальнейшем, разделение будет еще большим и почти все отчеты будут считаться в разрезе по сайтам.', '', 'services', '3', NULL, NULL, NULL),
(104, '2019-09-04 16:49:43', 'iblock', '55', 0, NULL, NULL, NULL, '=ID=55&EXTERNAL_ID=1755&IBLOCK_SECTION_ID=47&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=faq&IBLOCK_EXTERNAL_ID=services-faq&CODE=', 'Как организовано управление правами в системе?', 'В системе \"Битрикс: Управление сайтом\" поддерживается два уровня разграничения прав доступа:\n1) \rдоступ непосредственно на файлы\r2) \rправа в рамках логики того или иного модуля\rСначала система проверяет доступ 1-го уровня, затем при необходимости проверяется право доступа 2-го уровня.\nДля 1-го уровня доступа используются следующие варианты:\n- запрещен (при обращении к файлу доступ будет всегда запрещен)\n- чтение (при обращении к файлу доступ будет разрешен)\n- документооборот (файл может быть отредактирован в режиме документооборота)\n- запись (файл может быть отредактирован непосредственно)\nДанный уровень доступа задается в меню \"Структура сайта\" -> \"Управление\".\nЕсли пользователь обладает несколькими уровнями доступа на файл, то выбирается максимальный.\nЕсли речь идет об обычных статичных публичных страницах, то к ним применяется только 1-ый уровень доступа.\nЕсли пользователь имеет как минимум право \"Чтение\" на файл (1-ый уровень доступа) и если данный файл является функциональной частью того или иного модуля, то проверяются права доступа 2-го уровня, которые задаются в настройках модуля.', '', 'services', '3', NULL, NULL, NULL),
(105, '2019-09-06 13:29:24', 'main', 's1|/index.php', 0, NULL, NULL, NULL, '/index.php', 'Главная страница', '', '', '', '', NULL, NULL, NULL),
(106, '2019-09-05 13:55:00', 'iblock', '56', 0, NULL, NULL, NULL, '=ID=56&EXTERNAL_ID=56&IBLOCK_SECTION_ID=13&IBLOCK_TYPE_ID=services&IBLOCK_ID=1&IBLOCK_CODE=board&IBLOCK_EXTERNAL_ID=services-board&CODE=', 'Bitrix Framework', 'Новость про bitrix framework:\r\nНовость про bitrix framework:', '', 'services', '1', NULL, '2019-09-05 13:55:00', NULL),
(107, '2019-09-06 14:19:04', 'blog', 'U1', 0, NULL, NULL, NULL, NULL, 'Dmitry Efimov', '', NULL, 'USER', '2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_freq`
--

CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_param`
--

CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_right`
--

CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_right`
--

INSERT INTO `b_search_content_right` (`SEARCH_CONTENT_ID`, `GROUP_CODE`) VALUES
(1, 'G2'),
(2, 'G2'),
(3, 'G2'),
(4, 'G2'),
(5, 'G2'),
(6, 'G2'),
(7, 'G2'),
(8, 'G2'),
(9, 'G2'),
(10, 'G2'),
(11, 'G2'),
(12, 'G2'),
(13, 'G2'),
(14, 'G2'),
(15, 'G2'),
(16, 'G2'),
(17, 'G2'),
(18, 'G2'),
(19, 'G2'),
(20, 'G2'),
(21, 'G2'),
(22, 'G2'),
(23, 'G2'),
(24, 'G2'),
(25, 'G2'),
(26, 'G2'),
(27, 'G2'),
(28, 'G2'),
(29, 'G2'),
(30, 'G2'),
(31, 'G2'),
(32, 'G2'),
(33, 'G2'),
(34, 'G2'),
(35, 'G2'),
(36, 'G2'),
(37, 'G2'),
(38, 'G2'),
(39, 'G2'),
(40, 'G2'),
(41, 'G2'),
(42, 'G2'),
(43, 'G2'),
(44, 'G2'),
(45, 'G2'),
(46, 'G2'),
(47, 'G2'),
(48, 'G2'),
(49, 'G2'),
(50, 'G2'),
(51, 'G2'),
(52, 'G2'),
(53, 'G2'),
(54, 'G2'),
(55, 'G2'),
(56, 'G2'),
(57, 'G2'),
(58, 'G2'),
(59, 'G2'),
(60, 'G2'),
(61, 'G2'),
(62, 'G2'),
(63, 'G2'),
(64, 'G2'),
(65, 'G2'),
(66, 'G2'),
(67, 'G2'),
(68, 'G2'),
(69, 'G2'),
(70, 'G2'),
(71, 'G2'),
(72, 'G2'),
(73, 'G2'),
(74, 'G2'),
(75, 'G2'),
(76, 'G2'),
(77, 'G2'),
(78, 'G2'),
(79, 'G2'),
(80, 'G2'),
(81, 'G2'),
(82, 'G2'),
(83, 'G2'),
(84, 'G2'),
(85, 'G2'),
(86, 'G2'),
(87, 'G2'),
(88, 'G2'),
(89, 'G2'),
(90, 'G2'),
(91, 'G2'),
(92, 'G2'),
(93, 'G2'),
(94, 'G2'),
(95, 'G2'),
(96, 'G2'),
(97, 'G2'),
(98, 'G2'),
(99, 'G2'),
(100, 'G2'),
(101, 'G2'),
(102, 'G2'),
(103, 'G2'),
(104, 'G2'),
(105, 'G2'),
(106, 'G1'),
(106, 'G2'),
(107, 'G2');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_site`
--

CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_site`
--

INSERT INTO `b_search_content_site` (`SEARCH_CONTENT_ID`, `SITE_ID`, `URL`) VALUES
(1, 's1', ''),
(2, 's1', ''),
(3, 's1', ''),
(4, 's1', ''),
(5, 's1', ''),
(6, 's1', ''),
(7, 's1', ''),
(8, 's1', ''),
(9, 's1', ''),
(10, 's1', ''),
(11, 's1', ''),
(12, 's1', ''),
(13, 's1', ''),
(14, 's1', ''),
(15, 's1', ''),
(16, 's1', ''),
(17, 's1', ''),
(18, 's1', ''),
(19, 's1', ''),
(20, 's1', ''),
(21, 's1', ''),
(22, 's1', ''),
(23, 's1', ''),
(24, 's1', ''),
(25, 's1', ''),
(26, 's1', ''),
(27, 's1', ''),
(28, 's1', ''),
(29, 's1', ''),
(30, 's1', ''),
(31, 's1', ''),
(32, 's1', ''),
(33, 's1', ''),
(34, 's1', ''),
(35, 's1', ''),
(36, 's1', ''),
(37, 's1', ''),
(38, 's1', ''),
(39, 's1', ''),
(40, 's1', ''),
(41, 's1', ''),
(42, 's1', ''),
(43, 's1', ''),
(44, 's1', ''),
(45, 's1', ''),
(46, 's1', ''),
(47, 's1', ''),
(48, 's1', ''),
(49, 's1', ''),
(50, 's1', ''),
(51, 's1', ''),
(52, 's1', ''),
(53, 's1', ''),
(54, 's1', ''),
(55, 's1', ''),
(56, 's1', ''),
(57, 's1', ''),
(58, 's1', ''),
(59, 's1', ''),
(60, 's1', ''),
(61, 's1', ''),
(62, 's1', ''),
(63, 's1', ''),
(64, 's1', ''),
(65, 's1', ''),
(66, 's1', ''),
(67, 's1', ''),
(68, 's1', ''),
(69, 's1', ''),
(70, 's1', ''),
(71, 's1', ''),
(72, 's1', ''),
(73, 's1', ''),
(74, 's1', ''),
(75, 's1', ''),
(76, 's1', ''),
(77, 's1', ''),
(78, 's1', ''),
(79, 's1', ''),
(80, 's1', ''),
(81, 's1', ''),
(82, 's1', ''),
(83, 's1', ''),
(84, 's1', ''),
(85, 's1', ''),
(86, 's1', ''),
(87, 's1', ''),
(88, 's1', ''),
(89, 's1', ''),
(90, 's1', ''),
(91, 's1', ''),
(92, 's1', ''),
(93, 's1', ''),
(94, 's1', ''),
(95, 's1', ''),
(96, 's1', ''),
(97, 's1', ''),
(98, 's1', ''),
(99, 's1', ''),
(100, 's1', ''),
(101, 's1', ''),
(102, 's1', ''),
(103, 's1', ''),
(104, 's1', ''),
(105, 's1', ''),
(106, 's1', ''),
(107, 's1', '/users/2.php');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_stem`
--

CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_stem`
--

INSERT INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
(1, 'ru', 1, 0.2314, 1),
(2, 'ru', 2, 0.2314, 1),
(3, 'ru', 3, 0.2314, 1),
(4, 'ru', 4, 0.2314, 1),
(5, 'ru', 5, 0.2314, 1),
(6, 'ru', 6, 0.2314, 1),
(7, 'ru', 7, 0.2314, 1),
(8, 'ru', 2, 0.2314, 1),
(9, 'ru', 3, 0.2314, 1),
(10, 'ru', 4, 0.2314, 1),
(11, 'ru', 8, 0.2314, 1),
(12, 'ru', 9, 0.2314, 1),
(13, 'ru', 2, 0.2314, 1),
(14, 'ru', 3, 0.2314, 1),
(15, 'ru', 10, 0.2314, 1),
(16, 'ru', 11, 0.3297, 4),
(16, 'ru', 12, 0.3297, 5),
(16, 'ru', 13, 0.3297, 6),
(16, 'ru', 14, 0.3297, 10.5),
(16, 'ru', 15, 0.3297, 11.5),
(16, 'ru', 16, 0.208, 11),
(16, 'ru', 17, 0.208, 12),
(16, 'ru', 18, 0.208, 14),
(16, 'ru', 19, 0.208, 18),
(16, 'ru', 20, 0.208, 24),
(16, 'ru', 21, 0.208, 25),
(16, 'ru', 22, 0.208, 27),
(16, 'ru', 23, 0.3297, 31),
(16, 'ru', 24, 0.483, 31),
(16, 'ru', 25, 0.208, 29),
(16, 'ru', 26, 0.208, 33),
(16, 'ru', 27, 0.208, 40),
(16, 'ru', 28, 0.208, 41),
(16, 'ru', 29, 0.208, 43),
(17, 'ru', 11, 0.3667, 2),
(17, 'ru', 30, 0.3667, 3),
(17, 'ru', 31, 0.2314, 5),
(17, 'ru', 32, 0.2314, 6),
(18, 'ru', 13, 0.317, 6),
(18, 'ru', 15, 0.2, 17),
(18, 'ru', 17, 0.2, 35),
(18, 'ru', 33, 0.317, 4),
(18, 'ru', 34, 0.317, 5),
(18, 'ru', 35, 0.317, 8),
(18, 'ru', 36, 0.4644, 27.75),
(18, 'ru', 37, 0.2, 14),
(18, 'ru', 38, 0.2, 15),
(18, 'ru', 39, 0.2, 16),
(18, 'ru', 40, 0.2, 18),
(18, 'ru', 41, 0.2, 20),
(18, 'ru', 42, 0.2, 21),
(18, 'ru', 43, 0.2, 41),
(18, 'ru', 44, 0.2, 43),
(18, 'ru', 45, 0.2, 44),
(18, 'ru', 46, 0.2, 50),
(18, 'ru', 47, 0.2, 52),
(18, 'ru', 48, 0.2, 53),
(18, 'ru', 49, 0.2, 55),
(18, 'ru', 50, 0.2, 56),
(18, 'ru', 51, 0.2, 57),
(18, 'ru', 52, 0.2, 63),
(18, 'ru', 53, 0.2, 64),
(18, 'ru', 54, 0.2, 66),
(19, 'ru', 33, 0.3667, 2.5),
(19, 'ru', 55, 0.3667, 3.5),
(19, 'ru', 56, 0.3667, 4.5),
(19, 'ru', 57, 0.2314, 8),
(19, 'ru', 58, 0.2314, 9),
(19, 'ru', 59, 0.2314, 10),
(19, 'ru', 60, 0.2314, 13),
(19, 'ru', 61, 0.2314, 15),
(19, 'ru', 62, 0.3667, 24),
(19, 'ru', 63, 0.2314, 18),
(19, 'ru', 64, 0.2314, 19),
(19, 'ru', 65, 0.2314, 21),
(19, 'ru', 66, 0.2314, 22),
(19, 'ru', 67, 0.2314, 23),
(20, 'ru', 5, 0.3667, 4),
(20, 'ru', 13, 0.3667, 7),
(20, 'ru', 32, 0.2314, 25),
(20, 'ru', 68, 0.3667, 6),
(20, 'ru', 69, 0.3667, 9),
(20, 'ru', 70, 0.2314, 14),
(20, 'ru', 71, 0.2314, 15),
(20, 'ru', 72, 0.2314, 21),
(20, 'ru', 73, 0.2314, 22),
(20, 'ru', 74, 0.2314, 24),
(20, 'ru', 75, 0.2314, 32),
(20, 'ru', 76, 0.2314, 33),
(20, 'ru', 77, 0.2314, 34),
(21, 'ru', 6, 0.3667, 2),
(21, 'ru', 42, 0.2314, 9),
(21, 'ru', 78, 0.3667, 3),
(21, 'ru', 79, 0.2314, 6),
(21, 'ru', 80, 0.2314, 7),
(21, 'ru', 81, 0.2314, 8),
(21, 'ru', 82, 0.2314, 21),
(21, 'ru', 83, 0.2314, 23),
(21, 'ru', 84, 0.2314, 24),
(21, 'ru', 85, 0.2314, 25),
(21, 'ru', 86, 0.2314, 31),
(21, 'ru', 87, 0.2314, 37),
(21, 'ru', 88, 0.2314, 43),
(22, 'ru', 11, 0.3667, 2.5),
(22, 'ru', 51, 0.2314, 8),
(22, 'ru', 89, 0.3667, 3.5),
(22, 'ru', 90, 0.3667, 4.5),
(22, 'ru', 91, 0.2314, 7),
(22, 'ru', 92, 0.2314, 9),
(22, 'ru', 93, 0.2314, 10),
(22, 'ru', 94, 0.2314, 11),
(22, 'ru', 95, 0.2314, 13),
(22, 'ru', 96, 0.2314, 14),
(22, 'ru', 97, 0.2314, 16),
(23, 'ru', 33, 0.2211, 1),
(23, 'ru', 65, 0.2211, 41),
(23, 'ru', 98, 0.3504, 9.5),
(23, 'ru', 99, 0.2211, 3),
(23, 'ru', 100, 0.2211, 6),
(23, 'ru', 101, 0.2211, 8),
(23, 'ru', 102, 0.2211, 10),
(23, 'ru', 103, 0.2211, 11),
(23, 'ru', 104, 0.2211, 13),
(23, 'ru', 105, 0.2211, 14),
(23, 'ru', 106, 0.2211, 16),
(23, 'ru', 107, 0.2211, 18),
(23, 'ru', 108, 0.2211, 19),
(23, 'ru', 109, 0.3504, 32),
(23, 'ru', 110, 0.2211, 21),
(23, 'ru', 111, 0.2211, 22),
(23, 'ru', 112, 0.2211, 42),
(23, 'ru', 113, 0.2211, 43),
(23, 'ru', 114, 0.2211, 45),
(23, 'ru', 115, 0.2211, 47),
(23, 'ru', 116, 0.2211, 48),
(24, 'ru', 33, 0.302, 2),
(24, 'ru', 93, 0.1906, 20),
(24, 'ru', 95, 0.1906, 17),
(24, 'ru', 96, 0.1906, 16),
(24, 'ru', 117, 0.302, 3),
(24, 'ru', 118, 0.1906, 5),
(24, 'ru', 119, 0.1906, 15),
(24, 'ru', 120, 0.1906, 18),
(24, 'ru', 121, 0.1906, 19),
(24, 'ru', 122, 0.1906, 21),
(24, 'ru', 123, 0.1906, 22),
(24, 'ru', 124, 0.302, 32.5),
(24, 'ru', 125, 0.1906, 24),
(24, 'ru', 126, 0.1906, 26),
(24, 'ru', 127, 0.302, 26),
(24, 'ru', 128, 0.1906, 27),
(24, 'ru', 129, 0.1906, 29),
(24, 'ru', 130, 0.1906, 30),
(24, 'ru', 131, 0.1906, 31),
(24, 'ru', 132, 0.1906, 32),
(24, 'ru', 133, 0.1906, 33),
(24, 'ru', 134, 0.302, 33),
(24, 'ru', 135, 0.1906, 34),
(24, 'ru', 136, 0.1906, 35),
(24, 'ru', 137, 0.1906, 36),
(24, 'ru', 138, 0.1906, 43),
(24, 'ru', 139, 0.1906, 51),
(24, 'ru', 140, 0.1906, 53),
(24, 'ru', 141, 0.1906, 55),
(24, 'ru', 142, 0.1906, 57),
(24, 'ru', 143, 0.1906, 58),
(24, 'ru', 144, 0.1906, 59),
(24, 'ru', 145, 0.1906, 60),
(25, 'ru', 68, 0.2314, 8),
(25, 'ru', 113, 0.3667, 7),
(25, 'ru', 146, 0.3667, 2),
(25, 'ru', 147, 0.3667, 3),
(25, 'ru', 148, 0.2314, 7),
(25, 'ru', 149, 0.2314, 10),
(25, 'ru', 150, 0.2314, 13),
(25, 'ru', 151, 0.3667, 13),
(26, 'ru', 10, 0.2314, 4),
(26, 'ru', 147, 0.3667, 4),
(26, 'ru', 152, 0.2314, 1),
(26, 'ru', 153, 0.2314, 3),
(26, 'ru', 154, 0.2314, 7),
(26, 'ru', 155, 0.3667, 7),
(26, 'ru', 156, 0.2314, 10),
(26, 'ru', 157, 0.2314, 12),
(26, 'ru', 158, 0.2314, 13),
(26, 'ru', 159, 0.2314, 14),
(26, 'ru', 160, 0.2314, 16),
(27, 'ru', 33, 0.2823, 2),
(27, 'ru', 161, 0.2823, 3),
(27, 'ru', 162, 0.1781, 5),
(27, 'ru', 163, 0.1781, 6),
(27, 'ru', 164, 0.1781, 7),
(27, 'ru', 165, 0.1781, 8),
(27, 'ru', 166, 0.2823, 18.5),
(27, 'ru', 167, 0.1781, 10),
(27, 'ru', 168, 0.1781, 11),
(27, 'ru', 169, 0.1781, 12),
(27, 'ru', 170, 0.2823, 14),
(27, 'ru', 171, 0.1781, 14),
(27, 'ru', 172, 0.1781, 16),
(27, 'ru', 173, 0.1781, 17),
(27, 'ru', 174, 0.1781, 18),
(27, 'ru', 175, 0.1781, 19),
(27, 'ru', 176, 0.1781, 20),
(27, 'ru', 177, 0.1781, 21),
(27, 'ru', 178, 0.1781, 22),
(27, 'ru', 179, 0.1781, 23),
(27, 'ru', 180, 0.1781, 24),
(27, 'ru', 181, 0.1781, 25),
(27, 'ru', 182, 0.1781, 26),
(27, 'ru', 183, 0.1781, 27),
(27, 'ru', 184, 0.1781, 29),
(27, 'ru', 185, 0.1781, 30),
(27, 'ru', 186, 0.1781, 31),
(27, 'ru', 187, 0.1781, 32),
(27, 'ru', 188, 0.1781, 33),
(27, 'ru', 189, 0.1781, 34),
(27, 'ru', 190, 0.1781, 35),
(27, 'ru', 191, 0.1781, 36),
(27, 'ru', 192, 0.1781, 37),
(27, 'ru', 193, 0.1781, 38),
(27, 'ru', 194, 0.1781, 39),
(27, 'ru', 195, 0.1781, 40),
(27, 'ru', 196, 0.1781, 41),
(27, 'ru', 197, 0.1781, 42),
(27, 'ru', 198, 0.1781, 43),
(27, 'ru', 199, 0.1781, 44),
(27, 'ru', 200, 0.1781, 45),
(27, 'ru', 201, 0.1781, 46),
(27, 'ru', 202, 0.1781, 48),
(27, 'ru', 203, 0.1781, 49),
(27, 'ru', 204, 0.1781, 50),
(28, 'ru', 19, 0.2277, 28),
(28, 'ru', 33, 0.3608, 2),
(28, 'ru', 51, 0.2277, 16),
(28, 'ru', 103, 0.2277, 4),
(28, 'ru', 205, 0.5286, 23.25),
(28, 'ru', 206, 0.2277, 14),
(28, 'ru', 207, 0.2277, 18),
(28, 'ru', 208, 0.2277, 25),
(28, 'ru', 209, 0.4553, 34.3333),
(28, 'ru', 210, 0.2277, 34),
(28, 'ru', 211, 0.2277, 36),
(28, 'ru', 212, 0.2277, 38),
(28, 'ru', 213, 0.2277, 41),
(28, 'ru', 214, 0.2277, 43),
(28, 'ru', 215, 0.2277, 45),
(29, 'ru', 11, 0.3667, 2.5),
(29, 'ru', 143, 0.2314, 11),
(29, 'ru', 216, 0.3667, 3.5),
(29, 'ru', 217, 0.3667, 4.5),
(29, 'ru', 218, 0.2314, 7),
(29, 'ru', 219, 0.2314, 8),
(29, 'ru', 220, 0.2314, 10),
(30, 'ru', 11, 0.3667, 2.5),
(30, 'ru', 55, 0.3667, 3.5),
(30, 'ru', 57, 0.2314, 16),
(30, 'ru', 156, 0.2314, 11),
(30, 'ru', 158, 0.2314, 14),
(30, 'ru', 221, 0.3667, 4.5),
(30, 'ru', 222, 0.2314, 7),
(30, 'ru', 223, 0.2314, 8),
(30, 'ru', 224, 0.2314, 9),
(30, 'ru', 225, 0.2314, 17),
(30, 'ru', 226, 0.2314, 19),
(31, 'ru', 227, 0.2314, 1),
(31, 'ru', 228, 0.2314, 3),
(32, 'ru', 229, 0.2314, 1),
(33, 'ru', 230, 0.2314, 1),
(34, 'ru', 1, 0.2314, 1),
(35, 'ru', 231, 0.2314, 1),
(36, 'ru', 36, 0.2314, 1),
(36, 'ru', 232, 0.2314, 3),
(37, 'ru', 233, 0.2314, 1),
(38, 'ru', 234, 0.2314, 1),
(39, 'ru', 36, 0.2314, 3),
(39, 'ru', 235, 0.2314, 1),
(40, 'ru', 236, 0.2314, 1),
(40, 'ru', 237, 0.2314, 3),
(41, 'ru', 238, 0.2314, 1),
(42, 'ru', 236, 0.2314, 1),
(43, 'ru', 239, 0.2314, 1),
(44, 'ru', 240, 0.2314, 1),
(45, 'ru', 241, 0.2314, 1),
(45, 'ru', 242, 0.2314, 3),
(46, 'ru', 243, 0.2314, 1),
(46, 'ru', 244, 0.2314, 2),
(47, 'ru', 245, 0.2314, 1),
(48, 'ru', 246, 0.2314, 1),
(49, 'ru', 247, 0.2314, 1),
(49, 'ru', 248, 0.2314, 3),
(50, 'ru', 249, 0.2314, 1),
(51, 'ru', 250, 0.2314, 1),
(52, 'ru', 251, 0.2314, 1),
(53, 'ru', 252, 0.2314, 1),
(54, 'ru', 253, 0.2314, 1),
(55, 'ru', 254, 0.2314, 1),
(56, 'ru', 255, 0.2314, 1),
(57, 'ru', 10, 0.2314, 3),
(57, 'ru', 235, 0.2314, 1),
(58, 'ru', 256, 0.2314, 1),
(59, 'ru', 257, 0.2314, 1),
(60, 'ru', 258, 0.2314, 1),
(61, 'ru', 259, 0.2314, 1),
(62, 'ru', 14, 0.181, 1),
(62, 'ru', 229, 0.3621, 19),
(62, 'ru', 242, 0.2869, 42.5),
(62, 'ru', 260, 0.181, 3),
(62, 'ru', 261, 0.181, 4),
(62, 'ru', 262, 0.2869, 26.5),
(62, 'ru', 263, 0.2869, 28.5),
(62, 'ru', 264, 0.2869, 29.5),
(62, 'ru', 265, 0.2869, 30.5),
(62, 'ru', 266, 0.2869, 31.5),
(62, 'ru', 267, 0.2869, 32.5),
(62, 'ru', 268, 0.2869, 33.5),
(62, 'ru', 269, 0.2869, 39.5),
(62, 'ru', 270, 0.2869, 41.5),
(62, 'ru', 271, 0.2869, 44.5),
(62, 'ru', 272, 0.2869, 45.5),
(62, 'ru', 273, 0.2869, 51.5),
(62, 'ru', 274, 0.2869, 52.5),
(62, 'ru', 275, 0.2869, 53.5),
(62, 'ru', 276, 0.2869, 59.5),
(62, 'ru', 277, 0.2869, 60.5),
(62, 'ru', 278, 0.2869, 62.5),
(62, 'ru', 279, 0.2869, 62.5),
(62, 'ru', 280, 0.2869, 63.5),
(63, 'ru', 10, 0.4527, 33),
(63, 'ru', 19, 0.309, 51.5),
(63, 'ru', 31, 0.309, 34.5),
(63, 'ru', 271, 0.309, 58.5),
(63, 'ru', 281, 0.195, 1),
(63, 'ru', 282, 0.309, 24.5),
(63, 'ru', 283, 0.309, 26.5),
(63, 'ru', 284, 0.309, 27.5),
(63, 'ru', 285, 0.309, 33.5),
(63, 'ru', 286, 0.309, 40.5),
(63, 'ru', 287, 0.309, 48.5),
(63, 'ru', 288, 0.309, 49.5),
(63, 'ru', 289, 0.309, 49.5),
(63, 'ru', 290, 0.309, 49.5),
(63, 'ru', 291, 0.309, 52.5),
(63, 'ru', 292, 0.309, 59.5),
(63, 'ru', 293, 0.309, 60.5),
(64, 'ru', 10, 0.2886, 35),
(64, 'ru', 229, 0.2886, 36),
(64, 'ru', 244, 0.2886, 45),
(64, 'ru', 269, 0.2886, 33),
(64, 'ru', 273, 0.2886, 44),
(64, 'ru', 284, 0.2886, 38),
(64, 'ru', 287, 0.2886, 53),
(64, 'ru', 294, 0.1821, 1),
(64, 'ru', 295, 0.2886, 22),
(64, 'ru', 296, 0.2886, 24),
(64, 'ru', 297, 0.2886, 25),
(64, 'ru', 298, 0.4228, 25),
(64, 'ru', 299, 0.2886, 27),
(64, 'ru', 300, 0.4228, 27),
(64, 'ru', 301, 0.2886, 37),
(64, 'ru', 302, 0.2886, 46),
(64, 'ru', 303, 0.2886, 47),
(64, 'ru', 304, 0.2886, 54),
(64, 'ru', 305, 0.2886, 56),
(64, 'ru', 306, 0.4228, 56),
(65, 'ru', 10, 0.2886, 39),
(65, 'ru', 123, 0.2886, 45),
(65, 'ru', 229, 0.2886, 26),
(65, 'ru', 271, 0.2886, 32),
(65, 'ru', 273, 0.2886, 25),
(65, 'ru', 307, 0.1821, 1),
(65, 'ru', 308, 0.1821, 3),
(65, 'ru', 309, 0.1821, 4),
(65, 'ru', 310, 0.2886, 33),
(65, 'ru', 311, 0.2886, 40),
(65, 'ru', 312, 0.2886, 41),
(65, 'ru', 313, 0.4228, 41),
(65, 'ru', 314, 0.2886, 42),
(65, 'ru', 315, 0.2886, 43),
(65, 'ru', 316, 0.2886, 44),
(65, 'ru', 317, 0.2886, 46),
(65, 'ru', 318, 0.2886, 47),
(65, 'ru', 319, 0.2886, 48),
(65, 'ru', 320, 0.2886, 49),
(65, 'ru', 321, 0.2886, 50),
(65, 'ru', 322, 0.2886, 51),
(65, 'ru', 323, 0.2886, 53),
(65, 'ru', 324, 0.2886, 59),
(66, 'ru', 72, 0.2838, 47.5),
(66, 'ru', 230, 0.1791, 5),
(66, 'ru', 244, 0.2838, 32.5),
(66, 'ru', 260, 0.1791, 3),
(66, 'ru', 268, 0.2838, 26.5),
(66, 'ru', 273, 0.2838, 54.5),
(66, 'ru', 277, 0.2838, 42.5),
(66, 'ru', 289, 0.2838, 27.5),
(66, 'ru', 295, 0.2838, 38.5),
(66, 'ru', 325, 0.1791, 1),
(66, 'ru', 326, 0.1791, 4),
(66, 'ru', 327, 0.2838, 25.5),
(66, 'ru', 328, 0.2838, 28.5),
(66, 'ru', 329, 0.2838, 30.5),
(66, 'ru', 330, 0.2838, 31.5),
(66, 'ru', 331, 0.2838, 40.5),
(66, 'ru', 332, 0.2838, 41.5),
(66, 'ru', 333, 0.2838, 44.5),
(66, 'ru', 334, 0.2838, 45.5),
(66, 'ru', 335, 0.2838, 46.5),
(66, 'ru', 336, 0.2838, 48.5),
(66, 'ru', 337, 0.4157, 48.5),
(66, 'ru', 338, 0.2838, 55.5),
(66, 'ru', 339, 0.2838, 56.5),
(66, 'ru', 340, 0.2838, 58.5),
(67, 'ru', 10, 0.1982, 4),
(67, 'ru', 31, 0.4603, 30),
(67, 'ru', 72, 0.3142, 44),
(67, 'ru', 73, 0.3142, 45),
(67, 'ru', 332, 0.3965, 22.3333),
(67, 'ru', 341, 0.1982, 1),
(67, 'ru', 342, 0.3142, 21),
(67, 'ru', 343, 0.3142, 23),
(67, 'ru', 344, 0.3142, 25),
(67, 'ru', 345, 0.3142, 26),
(67, 'ru', 346, 0.4603, 40),
(67, 'ru', 347, 0.3142, 34),
(67, 'ru', 348, 0.3142, 35),
(67, 'ru', 349, 0.3142, 37),
(67, 'ru', 350, 0.3142, 38),
(68, 'ru', 10, 0.3758, 18),
(68, 'ru', 269, 0.2978, 31.5),
(68, 'ru', 272, 0.3758, 20.3333),
(68, 'ru', 334, 0.2978, 45.5),
(68, 'ru', 336, 0.2978, 39.5),
(68, 'ru', 337, 0.4363, 39.5),
(68, 'ru', 346, 0.4857, 30.6),
(68, 'ru', 351, 0.1879, 1),
(68, 'ru', 352, 0.2978, 24.5),
(68, 'ru', 353, 0.2978, 29.5),
(68, 'ru', 354, 0.2978, 30.5),
(68, 'ru', 355, 0.2978, 37.5),
(68, 'ru', 356, 0.2978, 38.5),
(68, 'ru', 357, 0.2978, 46.5),
(68, 'ru', 358, 0.4363, 46.5),
(68, 'ru', 359, 0.2978, 53.5),
(69, 'ru', 1, 0.3709, 13.6667),
(69, 'ru', 64, 0.2939, 25.5),
(69, 'ru', 78, 0.2939, 28.5),
(69, 'ru', 269, 0.4306, 26),
(69, 'ru', 272, 0.2939, 21.5),
(69, 'ru', 273, 0.2939, 20.5),
(69, 'ru', 360, 0.1854, 1),
(69, 'ru', 361, 0.1854, 4),
(69, 'ru', 362, 0.1854, 5),
(69, 'ru', 363, 0.2939, 22.5),
(69, 'ru', 364, 0.2939, 23.5),
(69, 'ru', 365, 0.2939, 24.5),
(69, 'ru', 366, 0.2939, 27.5),
(69, 'ru', 367, 0.2939, 29.5),
(69, 'ru', 368, 0.2939, 30.5),
(69, 'ru', 369, 0.4306, 30.5),
(69, 'ru', 370, 0.2939, 32.5),
(69, 'ru', 371, 0.4306, 32.5),
(69, 'ru', 372, 0.2939, 33.5),
(70, 'ru', 75, 0.3333, 33.5),
(70, 'ru', 85, 0.3333, 27.5),
(70, 'ru', 233, 0.3333, 22.5),
(70, 'ru', 360, 0.3333, 17.5),
(70, 'ru', 373, 0.2103, 1),
(70, 'ru', 374, 0.2103, 2),
(70, 'ru', 375, 0.2103, 3),
(70, 'ru', 376, 0.3333, 16.5),
(70, 'ru', 377, 0.3333, 19.5),
(70, 'ru', 378, 0.3333, 20.5),
(70, 'ru', 379, 0.3333, 23.5),
(70, 'ru', 380, 0.3333, 24.5),
(70, 'ru', 381, 0.3333, 25.5),
(70, 'ru', 382, 0.3333, 34.5),
(70, 'ru', 383, 0.3333, 35.5),
(71, 'ru', 233, 0.2886, 31),
(71, 'ru', 373, 0.1821, 1),
(71, 'ru', 379, 0.2886, 26),
(71, 'ru', 380, 0.2886, 42),
(71, 'ru', 384, 0.1821, 2),
(71, 'ru', 385, 0.1821, 4),
(71, 'ru', 386, 0.1821, 6),
(71, 'ru', 387, 0.1821, 8),
(71, 'ru', 388, 0.2886, 24),
(71, 'ru', 389, 0.2886, 25),
(71, 'ru', 390, 0.2886, 28),
(71, 'ru', 391, 0.2886, 29),
(71, 'ru', 392, 0.2886, 32),
(71, 'ru', 393, 0.2886, 34),
(71, 'ru', 394, 0.4228, 34),
(71, 'ru', 395, 0.2886, 36),
(71, 'ru', 396, 0.2886, 37),
(71, 'ru', 397, 0.2886, 39),
(71, 'ru', 398, 0.2886, 41),
(71, 'ru', 399, 0.2886, 43),
(71, 'ru', 400, 0.2886, 44),
(71, 'ru', 401, 0.2886, 45),
(71, 'ru', 402, 0.2886, 47),
(71, 'ru', 403, 0.2886, 48),
(72, 'ru', 10, 0.2808, 27.5),
(72, 'ru', 13, 0.3544, 23.6667),
(72, 'ru', 36, 0.2808, 41.5),
(72, 'ru', 143, 0.2808, 39.5),
(72, 'ru', 234, 0.2808, 45.5),
(72, 'ru', 269, 0.2808, 59.5),
(72, 'ru', 323, 0.2808, 47.5),
(72, 'ru', 334, 0.2808, 26.5),
(72, 'ru', 404, 0.1772, 1),
(72, 'ru', 405, 0.3544, 22.6667),
(72, 'ru', 406, 0.3544, 25.6667),
(72, 'ru', 407, 0.4974, 25.6667),
(72, 'ru', 408, 0.2808, 28.5),
(72, 'ru', 409, 0.2808, 30.5),
(72, 'ru', 410, 0.2808, 31.5),
(72, 'ru', 411, 0.2808, 36.5),
(72, 'ru', 412, 0.2808, 37.5),
(72, 'ru', 413, 0.2808, 40.5),
(72, 'ru', 414, 0.2808, 42.5),
(72, 'ru', 415, 0.2808, 43.5),
(72, 'ru', 416, 0.2808, 44.5),
(72, 'ru', 417, 0.2808, 58.5),
(73, 'ru', 36, 0.2838, 34.5),
(73, 'ru', 75, 0.2838, 44.5),
(73, 'ru', 209, 0.2838, 31.5),
(73, 'ru', 235, 0.4157, 46.5),
(73, 'ru', 258, 0.3581, 25.6667),
(73, 'ru', 269, 0.2838, 55.5),
(73, 'ru', 277, 0.1791, 10),
(73, 'ru', 299, 0.2838, 57.5),
(73, 'ru', 300, 0.4157, 57.5),
(73, 'ru', 399, 0.2838, 30.5),
(73, 'ru', 402, 0.2838, 48.5),
(73, 'ru', 407, 0.2838, 36.5),
(73, 'ru', 418, 0.1791, 1),
(73, 'ru', 419, 0.1791, 9),
(73, 'ru', 420, 0.2838, 37.5),
(73, 'ru', 421, 0.2838, 38.5),
(73, 'ru', 422, 0.4157, 38.5),
(73, 'ru', 423, 0.2838, 45.5),
(73, 'ru', 424, 0.2838, 46.5),
(73, 'ru', 425, 0.2838, 49.5),
(73, 'ru', 426, 0.2838, 58.5),
(73, 'ru', 427, 0.2838, 59.5),
(74, 'ru', 3, 0.3758, 41.6667),
(74, 'ru', 80, 0.2978, 42),
(74, 'ru', 177, 0.3758, 52.3333),
(74, 'ru', 235, 0.4363, 50),
(74, 'ru', 287, 0.2978, 37),
(74, 'ru', 340, 0.2978, 81),
(74, 'ru', 423, 0.2978, 49),
(74, 'ru', 424, 0.2978, 50),
(74, 'ru', 428, 0.1879, 10),
(74, 'ru', 429, 0.1879, 11),
(74, 'ru', 430, 0.2978, 38),
(74, 'ru', 431, 0.2978, 39),
(74, 'ru', 432, 0.2978, 40),
(74, 'ru', 433, 0.2978, 48),
(74, 'ru', 434, 0.2978, 56),
(74, 'ru', 435, 0.2978, 57),
(74, 'ru', 436, 0.2978, 64),
(74, 'ru', 437, 0.2978, 65),
(74, 'ru', 438, 0.2978, 67),
(75, 'ru', 10, 0.323, 21),
(75, 'ru', 235, 0.4732, 19),
(75, 'ru', 260, 0.323, 25),
(75, 'ru', 364, 0.4732, 25.5),
(75, 'ru', 389, 0.323, 16),
(75, 'ru', 423, 0.323, 32),
(75, 'ru', 424, 0.323, 19),
(75, 'ru', 439, 0.2038, 1),
(75, 'ru', 440, 0.2038, 3),
(75, 'ru', 441, 0.323, 18),
(75, 'ru', 442, 0.323, 23),
(75, 'ru', 443, 0.323, 26),
(75, 'ru', 444, 0.4732, 26),
(76, 'ru', 39, 0.181, 1),
(76, 'ru', 262, 0.2869, 33),
(76, 'ru', 268, 0.2869, 39),
(76, 'ru', 269, 0.4204, 53),
(76, 'ru', 295, 0.2869, 52),
(76, 'ru', 445, 0.181, 2),
(76, 'ru', 446, 0.181, 3),
(76, 'ru', 447, 0.3621, 52),
(76, 'ru', 448, 0.2869, 45),
(76, 'ru', 449, 0.2869, 54),
(76, 'ru', 450, 0.4204, 54),
(76, 'ru', 451, 0.2869, 62),
(76, 'ru', 452, 0.2869, 64),
(76, 'ru', 453, 0.2869, 65),
(76, 'ru', 454, 0.2869, 71),
(76, 'ru', 455, 0.2869, 72),
(76, 'ru', 456, 0.4204, 72),
(76, 'ru', 457, 0.2869, 74),
(76, 'ru', 458, 0.2869, 75),
(76, 'ru', 459, 0.2869, 82),
(76, 'ru', 460, 0.2869, 83),
(77, 'ru', 237, 0.302, 27),
(77, 'ru', 260, 0.1906, 1),
(77, 'ru', 269, 0.302, 19),
(77, 'ru', 289, 0.302, 23),
(77, 'ru', 295, 0.302, 43),
(77, 'ru', 346, 0.302, 29),
(77, 'ru', 446, 0.1906, 2),
(77, 'ru', 449, 0.302, 37),
(77, 'ru', 450, 0.4424, 37),
(77, 'ru', 451, 0.302, 45),
(77, 'ru', 452, 0.302, 28),
(77, 'ru', 461, 0.1906, 3),
(77, 'ru', 462, 0.1906, 4),
(77, 'ru', 463, 0.302, 4),
(77, 'ru', 464, 0.302, 21),
(77, 'ru', 465, 0.302, 24),
(77, 'ru', 466, 0.302, 25),
(77, 'ru', 467, 0.302, 26),
(77, 'ru', 468, 0.302, 35),
(77, 'ru', 469, 0.302, 46),
(78, 'ru', 31, 0.2978, 51.5),
(78, 'ru', 209, 0.2978, 70.5),
(78, 'ru', 237, 0.2978, 38.5),
(78, 'ru', 314, 0.2978, 48.5),
(78, 'ru', 343, 0.2978, 47.5),
(78, 'ru', 447, 0.1879, 3),
(78, 'ru', 469, 0.2978, 57.5),
(78, 'ru', 470, 0.1879, 1),
(78, 'ru', 471, 0.1879, 2),
(78, 'ru', 472, 0.1879, 4),
(78, 'ru', 473, 0.1879, 17),
(78, 'ru', 474, 0.1879, 17),
(78, 'ru', 475, 0.2978, 37.5),
(78, 'ru', 476, 0.2978, 39.5),
(78, 'ru', 477, 0.2978, 40.5),
(78, 'ru', 478, 0.2978, 41.5),
(78, 'ru', 479, 0.2978, 42.5),
(78, 'ru', 480, 0.2978, 43.5),
(78, 'ru', 481, 0.2978, 44.5),
(78, 'ru', 482, 0.2978, 45.5),
(78, 'ru', 483, 0.2978, 49.5),
(78, 'ru', 484, 0.2978, 63.5),
(78, 'ru', 485, 0.2978, 64.5),
(79, 'ru', 236, 0.3042, 50.5),
(79, 'ru', 237, 0.4457, 43.5),
(79, 'ru', 238, 0.3042, 23.5),
(79, 'ru', 262, 0.3042, 22.5),
(79, 'ru', 268, 0.3042, 21.5),
(79, 'ru', 269, 0.4457, 31.5),
(79, 'ru', 273, 0.3042, 44.5),
(79, 'ru', 314, 0.3042, 24.5),
(79, 'ru', 343, 0.3042, 47.5),
(79, 'ru', 426, 0.3042, 33.5),
(79, 'ru', 446, 0.3839, 31.3333),
(79, 'ru', 453, 0.3042, 25.5),
(79, 'ru', 486, 0.192, 1),
(79, 'ru', 487, 0.192, 2),
(79, 'ru', 488, 0.3042, 26.5),
(79, 'ru', 489, 0.3042, 34.5),
(79, 'ru', 490, 0.3042, 37.5),
(80, 'ru', 236, 0.4362, 13.3333),
(80, 'ru', 273, 0.3457, 18),
(80, 'ru', 275, 0.3457, 15),
(80, 'ru', 355, 0.3457, 22),
(80, 'ru', 359, 0.3457, 16),
(80, 'ru', 429, 0.3457, 21),
(80, 'ru', 460, 0.3457, 23),
(80, 'ru', 491, 0.2181, 1),
(80, 'ru', 492, 0.3457, 24),
(80, 'ru', 493, 0.3457, 30),
(80, 'ru', 494, 0.3457, 32),
(80, 'ru', 495, 0.3457, 33),
(81, 'ru', 52, 0.2886, 46),
(81, 'ru', 283, 0.2886, 59),
(81, 'ru', 295, 0.2886, 54),
(81, 'ru', 303, 0.2886, 39),
(81, 'ru', 323, 0.2886, 32),
(81, 'ru', 359, 0.2886, 48),
(81, 'ru', 375, 0.1821, 2),
(81, 'ru', 457, 0.2886, 26),
(81, 'ru', 496, 0.3642, 25.6667),
(81, 'ru', 497, 0.1821, 3),
(81, 'ru', 498, 0.2886, 25),
(81, 'ru', 499, 0.2886, 26),
(81, 'ru', 500, 0.2886, 26),
(81, 'ru', 501, 0.2886, 28),
(81, 'ru', 502, 0.2886, 29),
(81, 'ru', 503, 0.2886, 30),
(81, 'ru', 504, 0.2886, 45),
(81, 'ru', 505, 0.2886, 56),
(81, 'ru', 506, 0.4228, 56),
(81, 'ru', 507, 0.2886, 58),
(81, 'ru', 508, 0.2886, 60),
(81, 'ru', 509, 0.2886, 61),
(82, 'ru', 273, 0.3142, 59),
(82, 'ru', 384, 0.3142, 27),
(82, 'ru', 436, 0.3142, 32),
(82, 'ru', 457, 0.3142, 50),
(82, 'ru', 493, 0.3142, 43),
(82, 'ru', 499, 0.3142, 50),
(82, 'ru', 500, 0.3142, 50),
(82, 'ru', 510, 0.1982, 1),
(82, 'ru', 511, 0.1982, 3),
(82, 'ru', 512, 0.1982, 4),
(82, 'ru', 513, 0.3142, 25),
(82, 'ru', 514, 0.3142, 29),
(82, 'ru', 515, 0.3142, 34),
(82, 'ru', 516, 0.3142, 36),
(82, 'ru', 517, 0.3142, 42),
(82, 'ru', 518, 0.3142, 49),
(82, 'ru', 519, 0.3142, 52),
(82, 'ru', 520, 0.3142, 58),
(83, 'ru', 236, 0.2277, 3),
(83, 'ru', 244, 0.3608, 18),
(83, 'ru', 260, 0.4553, 18.3333),
(83, 'ru', 269, 0.3608, 14),
(83, 'ru', 304, 0.3608, 16),
(83, 'ru', 454, 0.3608, 26),
(83, 'ru', 521, 0.2277, 2),
(83, 'ru', 522, 0.3608, 24),
(83, 'ru', 523, 0.3608, 28),
(83, 'ru', 524, 0.5286, 28),
(84, 'ru', 10, 0.3042, 51.5),
(84, 'ru', 233, 0.3042, 44.5),
(84, 'ru', 239, 0.4457, 43),
(84, 'ru', 301, 0.3042, 28.5),
(84, 'ru', 324, 0.3042, 66.5),
(84, 'ru', 364, 0.3042, 27.5),
(84, 'ru', 386, 0.3042, 36.5),
(84, 'ru', 433, 0.3042, 50.5),
(84, 'ru', 476, 0.3042, 58.5),
(84, 'ru', 525, 0.192, 1),
(84, 'ru', 526, 0.192, 3),
(84, 'ru', 527, 0.192, 4),
(84, 'ru', 528, 0.3042, 35.5),
(84, 'ru', 529, 0.3042, 42.5),
(84, 'ru', 530, 0.3042, 53.5),
(84, 'ru', 531, 0.3042, 54.5),
(84, 'ru', 532, 0.3042, 55.5),
(84, 'ru', 533, 0.3042, 59.5),
(84, 'ru', 534, 0.3042, 60.5),
(85, 'ru', 124, 0.1906, 2),
(85, 'ru', 237, 0.1906, 4),
(85, 'ru', 358, 0.302, 24.5),
(85, 'ru', 359, 0.302, 62.5),
(85, 'ru', 451, 0.302, 55.5),
(85, 'ru', 467, 0.302, 26.5),
(85, 'ru', 479, 0.1906, 3),
(85, 'ru', 484, 0.302, 39.5),
(85, 'ru', 489, 0.302, 40.5),
(85, 'ru', 533, 0.302, 27.5),
(85, 'ru', 535, 0.1906, 1),
(85, 'ru', 536, 0.4424, 36.5),
(85, 'ru', 537, 0.302, 29.5),
(85, 'ru', 538, 0.302, 30.5),
(85, 'ru', 539, 0.302, 31.5),
(85, 'ru', 540, 0.302, 32.5),
(85, 'ru', 541, 0.302, 33.5),
(85, 'ru', 542, 0.302, 46.5),
(85, 'ru', 543, 0.302, 53.5),
(85, 'ru', 544, 0.302, 56.5),
(86, 'ru', 237, 0.3115, 26),
(86, 'ru', 239, 0.3931, 15.6667),
(86, 'ru', 337, 0.3115, 31),
(86, 'ru', 340, 0.3115, 27),
(86, 'ru', 376, 0.3115, 19),
(86, 'ru', 385, 0.3115, 22),
(86, 'ru', 403, 0.3115, 43),
(86, 'ru', 469, 0.3115, 29),
(86, 'ru', 540, 0.1966, 3),
(86, 'ru', 544, 0.3115, 39),
(86, 'ru', 545, 0.3115, 20),
(86, 'ru', 546, 0.3115, 24),
(86, 'ru', 547, 0.3115, 28),
(86, 'ru', 548, 0.3115, 37),
(86, 'ru', 549, 0.3115, 38),
(86, 'ru', 550, 0.3115, 40),
(86, 'ru', 551, 0.3115, 41),
(87, 'ru', 240, 0.2127, 1),
(87, 'ru', 269, 0.3372, 36.5),
(87, 'ru', 273, 0.3372, 20.5),
(87, 'ru', 457, 0.3372, 29.5),
(87, 'ru', 493, 0.3372, 27.5),
(87, 'ru', 499, 0.3372, 29.5),
(87, 'ru', 500, 0.3372, 29.5),
(87, 'ru', 511, 0.2127, 5),
(87, 'ru', 513, 0.4255, 22.3333),
(87, 'ru', 517, 0.3372, 26.5),
(87, 'ru', 552, 0.2127, 3),
(87, 'ru', 553, 0.3372, 19.5),
(87, 'ru', 554, 0.3372, 28.5),
(87, 'ru', 555, 0.3372, 38.5),
(88, 'ru', 323, 0.3504, 26.5),
(88, 'ru', 359, 0.3504, 17.5),
(88, 'ru', 457, 0.4421, 13.3333),
(88, 'ru', 553, 0.5714, 22.2),
(88, 'ru', 556, 0.4421, 16.3333),
(88, 'ru', 557, 0.3504, 16.5),
(88, 'ru', 558, 0.3504, 23.5),
(88, 'ru', 559, 0.3504, 24.5),
(88, 'ru', 560, 0.3504, 33.5),
(89, 'ru', 19, 0.302, 46.5),
(89, 'ru', 244, 0.302, 74.5),
(89, 'ru', 269, 0.302, 44.5),
(89, 'ru', 292, 0.302, 65.5),
(89, 'ru', 324, 0.302, 73.5),
(89, 'ru', 340, 0.302, 67.5),
(89, 'ru', 359, 0.302, 52.5),
(89, 'ru', 457, 0.302, 31.5),
(89, 'ru', 561, 0.1906, 1),
(89, 'ru', 562, 0.1906, 2),
(89, 'ru', 563, 0.1906, 4),
(89, 'ru', 564, 0.3811, 27.6667),
(89, 'ru', 565, 0.302, 33.5),
(89, 'ru', 566, 0.302, 34.5),
(89, 'ru', 567, 0.302, 35.5),
(89, 'ru', 568, 0.302, 36.5),
(89, 'ru', 569, 0.302, 58.5),
(89, 'ru', 570, 0.302, 59.5),
(89, 'ru', 571, 0.4424, 59.5),
(90, 'ru', 30, 0.3899, 6.3333),
(90, 'ru', 31, 0.3899, 7.3333),
(90, 'ru', 32, 0.504, 13.4),
(90, 'ru', 303, 0.195, 20),
(90, 'ru', 508, 0.195, 21),
(90, 'ru', 572, 0.309, 11),
(90, 'ru', 573, 0.309, 12),
(90, 'ru', 574, 0.309, 12),
(90, 'ru', 575, 0.195, 16),
(90, 'ru', 576, 0.195, 23),
(90, 'ru', 577, 0.195, 24),
(90, 'ru', 578, 0.195, 25),
(90, 'ru', 579, 0.195, 31),
(90, 'ru', 580, 0.195, 33),
(90, 'ru', 581, 0.195, 34),
(90, 'ru', 582, 0.195, 35),
(90, 'ru', 583, 0.195, 36),
(90, 'ru', 584, 0.195, 37),
(90, 'ru', 585, 0.195, 40),
(90, 'ru', 586, 0.195, 41),
(90, 'ru', 587, 0.309, 41),
(90, 'ru', 588, 0.195, 43),
(90, 'ru', 589, 0.195, 45),
(91, 'ru', 269, 0.2978, 25.5),
(91, 'ru', 291, 0.2978, 32.5),
(91, 'ru', 295, 0.2978, 33.5),
(91, 'ru', 457, 0.2978, 44.5),
(91, 'ru', 553, 0.1879, 3),
(91, 'ru', 590, 0.1879, 1),
(91, 'ru', 591, 0.1879, 4),
(91, 'ru', 592, 0.1879, 5),
(91, 'ru', 593, 0.2978, 27.5),
(91, 'ru', 594, 0.2978, 28.5),
(91, 'ru', 595, 0.5275, 40.8333),
(91, 'ru', 596, 0.2978, 30.5),
(91, 'ru', 597, 0.2978, 31.5),
(91, 'ru', 598, 0.2978, 36.5),
(91, 'ru', 599, 0.2978, 38.5),
(91, 'ru', 600, 0.2978, 46.5),
(91, 'ru', 601, 0.2978, 47.5),
(91, 'ru', 602, 0.2978, 50.5),
(91, 'ru', 603, 0.2978, 51.5),
(91, 'ru', 604, 0.2978, 58.5),
(92, 'ru', 36, 0.2838, 34.5),
(92, 'ru', 75, 0.2838, 44.5),
(92, 'ru', 209, 0.2838, 31.5),
(92, 'ru', 235, 0.4157, 46.5),
(92, 'ru', 258, 0.3581, 25.6667),
(92, 'ru', 269, 0.2838, 55.5),
(92, 'ru', 277, 0.1791, 10),
(92, 'ru', 299, 0.2838, 57.5),
(92, 'ru', 300, 0.4157, 57.5),
(92, 'ru', 399, 0.2838, 30.5),
(92, 'ru', 402, 0.2838, 48.5),
(92, 'ru', 407, 0.2838, 36.5),
(92, 'ru', 418, 0.1791, 1),
(92, 'ru', 419, 0.1791, 9),
(92, 'ru', 420, 0.2838, 37.5),
(92, 'ru', 421, 0.2838, 38.5),
(92, 'ru', 422, 0.4157, 38.5),
(92, 'ru', 423, 0.2838, 45.5),
(92, 'ru', 424, 0.2838, 46.5),
(92, 'ru', 425, 0.2838, 49.5),
(92, 'ru', 426, 0.2838, 58.5),
(92, 'ru', 427, 0.2838, 59.5),
(93, 'ru', 573, 0.2314, 2),
(93, 'ru', 605, 0.2314, 1),
(94, 'ru', 414, 0.2314, 1),
(94, 'ru', 606, 0.2314, 3),
(94, 'ru', 607, 0.2314, 4),
(95, 'ru', 469, 0.2314, 2),
(95, 'ru', 608, 0.2314, 1),
(96, 'ru', 32, 0.2754, 61.5),
(96, 'ru', 515, 0.1738, 114),
(96, 'ru', 609, 0.1738, 2),
(96, 'ru', 610, 0.2754, 60.5),
(96, 'ru', 611, 0.5508, 74.25),
(96, 'ru', 612, 0.2754, 62.5),
(96, 'ru', 613, 0.1738, 13),
(96, 'ru', 614, 0.5213, 69.2857),
(96, 'ru', 615, 0.1738, 15),
(96, 'ru', 616, 0.1738, 17),
(96, 'ru', 617, 0.1738, 18),
(96, 'ru', 618, 0.2754, 60.5),
(96, 'ru', 619, 0.2754, 63),
(96, 'ru', 620, 0.2754, 56.5),
(96, 'ru', 621, 0.1738, 30),
(96, 'ru', 622, 0.2754, 59),
(96, 'ru', 623, 0.1738, 32),
(96, 'ru', 624, 0.1738, 33),
(96, 'ru', 625, 0.1738, 34),
(96, 'ru', 626, 0.1738, 35),
(96, 'ru', 627, 0.1738, 36),
(96, 'ru', 628, 0.1738, 42),
(96, 'ru', 629, 0.1738, 43),
(96, 'ru', 630, 0.1738, 44),
(96, 'ru', 631, 0.2754, 76),
(96, 'ru', 632, 0.1738, 75),
(96, 'ru', 633, 0.1738, 77),
(96, 'ru', 634, 0.1738, 85),
(96, 'ru', 635, 0.1738, 86),
(96, 'ru', 636, 0.1738, 97),
(96, 'ru', 637, 0.1738, 99),
(96, 'ru', 638, 0.1738, 116),
(96, 'ru', 639, 0.1738, 117),
(97, 'ru', 3, 0.1892, 65),
(97, 'ru', 32, 0.2999, 20),
(97, 'ru', 279, 0.1892, 61),
(97, 'ru', 282, 0.1892, 56),
(97, 'ru', 284, 0.3784, 36.3333),
(97, 'ru', 286, 0.1892, 35),
(97, 'ru', 300, 0.1892, 6),
(97, 'ru', 301, 0.2999, 25),
(97, 'ru', 345, 0.1892, 7),
(97, 'ru', 383, 0.1892, 60),
(97, 'ru', 427, 0.1892, 45),
(97, 'ru', 484, 0.1892, 44),
(97, 'ru', 573, 0.1892, 66),
(97, 'ru', 576, 0.1892, 64),
(97, 'ru', 608, 0.1892, 31),
(97, 'ru', 636, 0.1892, 63),
(97, 'ru', 639, 0.1892, 18),
(97, 'ru', 640, 0.1892, 1),
(97, 'ru', 641, 0.1892, 5),
(97, 'ru', 642, 0.1892, 14),
(97, 'ru', 643, 0.1892, 15),
(97, 'ru', 644, 0.1892, 19),
(97, 'ru', 645, 0.1892, 20),
(97, 'ru', 646, 0.1892, 27),
(97, 'ru', 647, 0.1892, 28),
(97, 'ru', 648, 0.1892, 30),
(97, 'ru', 649, 0.1892, 32),
(97, 'ru', 650, 0.1892, 33),
(97, 'ru', 651, 0.1892, 34),
(97, 'ru', 652, 0.1892, 36),
(97, 'ru', 653, 0.1892, 38),
(97, 'ru', 654, 0.1892, 50),
(97, 'ru', 655, 0.1892, 52),
(97, 'ru', 656, 0.1892, 53),
(97, 'ru', 657, 0.1892, 59),
(98, 'ru', 30, 0.1746, 56),
(98, 'ru', 31, 0.1746, 57),
(98, 'ru', 32, 0.5238, 30.5714),
(98, 'ru', 74, 0.1746, 15),
(98, 'ru', 263, 0.3492, 41.6667),
(98, 'ru', 299, 0.1746, 8),
(98, 'ru', 300, 0.4054, 17.5),
(98, 'ru', 303, 0.1746, 42),
(98, 'ru', 345, 0.2767, 27.5),
(98, 'ru', 358, 0.1746, 66),
(98, 'ru', 383, 0.1746, 18),
(98, 'ru', 453, 0.2767, 52.5),
(98, 'ru', 515, 0.1746, 34),
(98, 'ru', 573, 0.2767, 46),
(98, 'ru', 608, 0.2767, 39),
(98, 'ru', 640, 0.1746, 69),
(98, 'ru', 645, 0.2767, 25),
(98, 'ru', 657, 0.1746, 17),
(98, 'ru', 658, 0.1746, 1),
(98, 'ru', 659, 0.2767, 40),
(98, 'ru', 660, 0.1746, 6),
(98, 'ru', 661, 0.2767, 45),
(98, 'ru', 662, 0.1746, 31),
(98, 'ru', 663, 0.1746, 35),
(98, 'ru', 664, 0.1746, 41),
(98, 'ru', 665, 0.1746, 44),
(98, 'ru', 666, 0.1746, 53),
(98, 'ru', 667, 0.1746, 54),
(98, 'ru', 668, 0.1746, 59),
(98, 'ru', 669, 0.1746, 61),
(98, 'ru', 670, 0.2767, 61),
(98, 'ru', 671, 0.1746, 63),
(98, 'ru', 672, 0.1746, 70),
(98, 'ru', 673, 0.1746, 73),
(99, 'ru', 2, 0.2522, 14),
(99, 'ru', 32, 0.2522, 87.5),
(99, 'ru', 51, 0.3694, 50.75),
(99, 'ru', 71, 0.2522, 92),
(99, 'ru', 209, 0.1591, 94),
(99, 'ru', 293, 0.1591, 131),
(99, 'ru', 383, 0.1591, 9),
(99, 'ru', 454, 0.1591, 37),
(99, 'ru', 515, 0.1591, 148),
(99, 'ru', 539, 0.2522, 34.5),
(99, 'ru', 573, 0.3182, 88.6667),
(99, 'ru', 613, 0.1591, 150),
(99, 'ru', 614, 0.1591, 65),
(99, 'ru', 636, 0.2522, 13),
(99, 'ru', 638, 0.2522, 114),
(99, 'ru', 640, 0.1591, 25),
(99, 'ru', 674, 0.1591, 2),
(99, 'ru', 675, 0.1591, 8),
(99, 'ru', 676, 0.3182, 82),
(99, 'ru', 677, 0.5043, 78.75),
(99, 'ru', 678, 0.1591, 19),
(99, 'ru', 679, 0.2522, 49.5),
(99, 'ru', 680, 0.1591, 31),
(99, 'ru', 681, 0.1591, 39),
(99, 'ru', 682, 0.1591, 41),
(99, 'ru', 683, 0.1591, 51),
(99, 'ru', 684, 0.1591, 58),
(99, 'ru', 685, 0.1591, 59),
(99, 'ru', 686, 0.1591, 70),
(99, 'ru', 687, 0.1591, 72),
(99, 'ru', 688, 0.1591, 76),
(99, 'ru', 689, 0.1591, 78),
(99, 'ru', 690, 0.2522, 93),
(99, 'ru', 691, 0.2522, 96),
(99, 'ru', 692, 0.2522, 97),
(99, 'ru', 693, 0.1591, 92),
(99, 'ru', 694, 0.1591, 95),
(99, 'ru', 695, 0.2522, 118),
(99, 'ru', 696, 0.1591, 109),
(99, 'ru', 697, 0.1591, 111),
(99, 'ru', 698, 0.2522, 133.5),
(99, 'ru', 699, 0.2522, 134.5),
(99, 'ru', 700, 0.1591, 116),
(99, 'ru', 701, 0.1591, 117),
(99, 'ru', 702, 0.1591, 126),
(99, 'ru', 703, 0.1591, 134),
(99, 'ru', 704, 0.1591, 136),
(99, 'ru', 705, 0.1591, 143),
(99, 'ru', 706, 0.1591, 144),
(99, 'ru', 707, 0.1591, 145),
(99, 'ru', 708, 0.1591, 146),
(100, 'ru', 32, 0.2314, 4),
(100, 'ru', 209, 0.2314, 1),
(100, 'ru', 212, 0.2314, 28),
(100, 'ru', 269, 0.2314, 30),
(100, 'ru', 286, 0.2314, 29),
(100, 'ru', 344, 0.2314, 17),
(100, 'ru', 414, 0.2314, 25),
(100, 'ru', 573, 0.3667, 10),
(100, 'ru', 606, 0.2314, 34),
(100, 'ru', 607, 0.2314, 26),
(100, 'ru', 709, 0.2314, 5),
(100, 'ru', 710, 0.2314, 7),
(100, 'ru', 711, 0.3667, 11),
(100, 'ru', 712, 0.2314, 15),
(100, 'ru', 713, 0.2314, 32),
(101, 'ru', 30, 0.2314, 22),
(101, 'ru', 31, 0.2314, 23),
(101, 'ru', 32, 0.2314, 24),
(101, 'ru', 277, 0.2314, 1),
(101, 'ru', 573, 0.3667, 14.5),
(101, 'ru', 608, 0.3667, 8.5),
(101, 'ru', 659, 0.2314, 16),
(101, 'ru', 680, 0.3667, 13.5),
(101, 'ru', 714, 0.2314, 3),
(101, 'ru', 715, 0.2314, 4),
(101, 'ru', 716, 0.2314, 17),
(101, 'ru', 717, 0.2314, 18),
(101, 'ru', 718, 0.2314, 19),
(102, 'ru', 32, 0.2153, 20),
(102, 'ru', 74, 0.2153, 19),
(102, 'ru', 299, 0.2153, 45),
(102, 'ru', 300, 0.3413, 45),
(102, 'ru', 414, 0.3413, 9.5),
(102, 'ru', 468, 0.3413, 31.5),
(102, 'ru', 607, 0.2153, 6),
(102, 'ru', 614, 0.2153, 67),
(102, 'ru', 658, 0.2153, 3),
(102, 'ru', 683, 0.3413, 42),
(102, 'ru', 719, 0.2153, 1),
(102, 'ru', 720, 0.2153, 2),
(102, 'ru', 721, 0.2153, 12),
(102, 'ru', 722, 0.2153, 15),
(102, 'ru', 723, 0.2153, 16),
(102, 'ru', 724, 0.2153, 17),
(102, 'ru', 725, 0.3413, 32.5),
(102, 'ru', 726, 0.3413, 49),
(102, 'ru', 727, 0.2153, 61),
(103, 'ru', 4, 0.1448, 136),
(103, 'ru', 32, 0.5657, 92.4286),
(103, 'ru', 36, 0.1448, 168),
(103, 'ru', 72, 0.2896, 77),
(103, 'ru', 73, 0.3362, 126.5),
(103, 'ru', 149, 0.1448, 171),
(103, 'ru', 268, 0.1448, 81),
(103, 'ru', 277, 0.2295, 106),
(103, 'ru', 292, 0.1448, 200),
(103, 'ru', 298, 0.1448, 91),
(103, 'ru', 337, 0.1448, 39),
(103, 'ru', 403, 0.2295, 98),
(103, 'ru', 426, 0.1448, 100),
(103, 'ru', 501, 0.1448, 170),
(103, 'ru', 524, 0.2295, 134.5),
(103, 'ru', 573, 0.1448, 17),
(103, 'ru', 582, 0.1448, 113),
(103, 'ru', 584, 0.2295, 101.5),
(103, 'ru', 609, 0.1448, 126),
(103, 'ru', 618, 0.1448, 140),
(103, 'ru', 619, 0.2896, 96.6667),
(103, 'ru', 637, 0.1448, 19),
(103, 'ru', 638, 0.1448, 194),
(103, 'ru', 639, 0.1448, 55),
(103, 'ru', 645, 0.2295, 45.5),
(103, 'ru', 662, 0.1448, 202),
(103, 'ru', 668, 0.1448, 167),
(103, 'ru', 670, 0.1448, 25),
(103, 'ru', 723, 0.2295, 71.5),
(103, 'ru', 728, 0.1448, 3),
(103, 'ru', 729, 0.1448, 4),
(103, 'ru', 730, 0.2896, 17),
(103, 'ru', 731, 0.1448, 14),
(103, 'ru', 732, 0.1448, 14),
(103, 'ru', 733, 0.3362, 49.25),
(103, 'ru', 734, 0.1448, 20),
(103, 'ru', 735, 0.1448, 23),
(103, 'ru', 736, 0.2295, 118),
(103, 'ru', 737, 0.1448, 41),
(103, 'ru', 738, 0.1448, 42),
(103, 'ru', 739, 0.1448, 43),
(103, 'ru', 740, 0.1448, 44),
(103, 'ru', 741, 0.1448, 52),
(103, 'ru', 742, 0.1448, 58),
(103, 'ru', 743, 0.1448, 61),
(103, 'ru', 744, 0.1448, 63),
(103, 'ru', 745, 0.1448, 64),
(103, 'ru', 746, 0.1448, 79),
(103, 'ru', 747, 0.1448, 83),
(103, 'ru', 748, 0.2896, 95.3333),
(103, 'ru', 749, 0.1448, 85),
(103, 'ru', 750, 0.2295, 94),
(103, 'ru', 751, 0.1448, 88),
(103, 'ru', 752, 0.1448, 98),
(103, 'ru', 753, 0.1448, 99),
(103, 'ru', 754, 0.1448, 101),
(103, 'ru', 755, 0.1448, 103),
(103, 'ru', 756, 0.1448, 104),
(103, 'ru', 757, 0.1448, 107),
(103, 'ru', 758, 0.1448, 109),
(103, 'ru', 759, 0.1448, 116),
(103, 'ru', 760, 0.2295, 130.5),
(103, 'ru', 761, 0.1448, 118),
(103, 'ru', 762, 0.1448, 128),
(103, 'ru', 763, 0.1448, 129),
(103, 'ru', 764, 0.1448, 135),
(103, 'ru', 765, 0.1448, 138),
(103, 'ru', 766, 0.2295, 155.5),
(103, 'ru', 767, 0.1448, 153),
(103, 'ru', 768, 0.1448, 155),
(103, 'ru', 769, 0.1448, 156),
(103, 'ru', 770, 0.2295, 175),
(103, 'ru', 771, 0.1448, 168),
(103, 'ru', 772, 0.1448, 168),
(103, 'ru', 773, 0.1448, 174),
(103, 'ru', 774, 0.1448, 175),
(103, 'ru', 775, 0.1448, 179),
(103, 'ru', 776, 0.1448, 182),
(103, 'ru', 777, 0.1448, 192),
(103, 'ru', 778, 0.1448, 198),
(103, 'ru', 779, 0.1448, 201),
(103, 'ru', 780, 0.1448, 204),
(104, 'ru', 30, 0.145, 14),
(104, 'ru', 31, 0.2901, 41.6667),
(104, 'ru', 32, 0.2299, 60.5),
(104, 'ru', 73, 0.2299, 131),
(104, 'ru', 99, 0.145, 71),
(104, 'ru', 268, 0.145, 104),
(104, 'ru', 277, 0.2901, 19),
(104, 'ru', 385, 0.145, 136),
(104, 'ru', 426, 0.4072, 71.8333),
(104, 'ru', 515, 0.145, 179),
(104, 'ru', 605, 0.145, 182),
(104, 'ru', 619, 0.4598, 99.125),
(104, 'ru', 621, 0.145, 61),
(104, 'ru', 638, 0.2299, 75),
(104, 'ru', 639, 0.145, 166),
(104, 'ru', 640, 0.2299, 89.5),
(104, 'ru', 642, 0.145, 62),
(104, 'ru', 656, 0.2299, 101),
(104, 'ru', 668, 0.145, 116),
(104, 'ru', 716, 0.145, 140),
(104, 'ru', 734, 0.145, 18),
(104, 'ru', 735, 0.145, 31),
(104, 'ru', 738, 0.145, 45),
(104, 'ru', 742, 0.2299, 132.5),
(104, 'ru', 746, 0.145, 115),
(104, 'ru', 781, 0.145, 2),
(104, 'ru', 782, 0.145, 17),
(104, 'ru', 783, 0.4072, 77.3333),
(104, 'ru', 784, 0.145, 20),
(104, 'ru', 785, 0.5367, 86.6667),
(104, 'ru', 786, 0.2299, 61),
(104, 'ru', 787, 0.145, 32),
(104, 'ru', 788, 0.2299, 103),
(104, 'ru', 789, 0.2901, 130.333),
(104, 'ru', 790, 0.145, 37),
(104, 'ru', 791, 0.2901, 86.3333),
(104, 'ru', 792, 0.2299, 49),
(104, 'ru', 793, 0.145, 43),
(104, 'ru', 794, 0.2299, 113),
(104, 'ru', 795, 0.145, 60),
(104, 'ru', 796, 0.2299, 68),
(104, 'ru', 797, 0.2299, 71),
(104, 'ru', 798, 0.2299, 115),
(104, 'ru', 799, 0.145, 81),
(104, 'ru', 800, 0.2299, 86.5),
(104, 'ru', 801, 0.2299, 91.5),
(104, 'ru', 802, 0.145, 89),
(104, 'ru', 803, 0.145, 92),
(104, 'ru', 804, 0.2901, 134),
(104, 'ru', 805, 0.2299, 140.5),
(104, 'ru', 806, 0.145, 103),
(104, 'ru', 807, 0.145, 122),
(104, 'ru', 808, 0.145, 123),
(104, 'ru', 809, 0.145, 130),
(104, 'ru', 810, 0.145, 131),
(104, 'ru', 811, 0.145, 133),
(104, 'ru', 812, 0.145, 134),
(104, 'ru', 813, 0.145, 135),
(104, 'ru', 814, 0.145, 139),
(104, 'ru', 815, 0.2299, 150.5),
(104, 'ru', 816, 0.145, 152),
(104, 'ru', 817, 0.145, 154),
(104, 'ru', 818, 0.145, 167),
(104, 'ru', 819, 0.145, 168),
(105, 'ru', 385, 0.2314, 2),
(105, 'ru', 820, 0.2314, 1),
(106, 'ru', 273, 0.3667, 5),
(106, 'ru', 821, 0.4628, 5),
(106, 'ru', 822, 0.4628, 6),
(107, 'ru', 826, 0.2314, 1),
(107, 'ru', 827, 0.2314, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_text`
--

CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_text`
--

INSERT INTO `b_search_content_text` (`SEARCH_CONTENT_ID`, `SEARCH_CONTENT_MD5`, `SEARCHABLE_CONTENT`) VALUES
(1, '3bc79b0f38321d2e106cfd5fa9f14ff9', 'НЕДВИЖИМОСТЬ\r\n\r\n'),
(2, '185e3959696babacd2a320a121f18f48', 'ПОКУПКА\r\n\r\n'),
(3, '33f1208df27b7a128b9b3e95cd0133fd', 'ПРОДАЖА\r\n\r\n'),
(4, '7e9e4da7ebafc397fd980820fbece5e6', 'РАЗНОЕ\r\n\r\n'),
(5, '2a1e960f46cf35b140dd935cf89b86be', 'СДАЮ\r\n\r\n'),
(6, 'e96f50e4b1fe059fdbccfff478b172db', 'СНИМУ\r\n\r\n'),
(7, '2efb8bfb5d8e89e87c82468a5d925aa3', 'ОРГТЕХНИКА\r\n\r\n'),
(8, '185e3959696babacd2a320a121f18f48', 'ПОКУПКА\r\n\r\n'),
(9, '33f1208df27b7a128b9b3e95cd0133fd', 'ПРОДАЖА\r\n\r\n'),
(10, '7e9e4da7ebafc397fd980820fbece5e6', 'РАЗНОЕ\r\n\r\n'),
(11, '73e189173ba161406e06edb14eb5c802', 'ТРАНСПОРТ\r\n\r\n'),
(12, '0d7230d5933ed4ca9f8b8615105a027e', 'ГСМ\r\n\r\n'),
(13, '185e3959696babacd2a320a121f18f48', 'ПОКУПКА\r\n\r\n'),
(14, '33f1208df27b7a128b9b3e95cd0133fd', 'ПРОДАЖА\r\n\r\n'),
(15, '3140fa939e82d14de3829b731863cd80', 'УСЛУГИ\r\n\r\n'),
(16, '564fa078fd38ffef22049ede2056cd70', 'КУПЛЮ ОДНОКОМНАТНУЮ КВАРТИРУ В ЦЕНТРАЛЬНОМ РАЙОНЕ\r\nКУПЛЮ ОДНОКОМНАТНУЮ КВАРТИРУ НА 1-2 ЭТАЖЕ С БАЛКОНОМ В ЦЕНТРАЛЬНОМ РАЙОНЕ ГОРОДА. ЗВОНИТЬ: ПН-ПТ С 18 ЧАСОВ; СБ-ВС С 8 ДО 23 ЧАСОВ. ПРОСЬБА ПОСРЕДНИКАМ НЕ БЕСПОКОИТЬ.\r\n'),
(17, '8726d8bca8224dfd459196fde70a4041', 'КУПЛЮ БИТРИКС\r\nКУПЛЮ БИТРИКС: УПРАВЛЕНИЕ САЙТОМ.\r\n'),
(18, 'c8a8aa8bdd6c98a5bf849a7c2660b576', 'ПРОДАЕТСЯ ДВУХКОМНАТНАЯ КВАРТИРА В СТРОЯЩЕМСЯ ДОМЕ\r\nПРОДАЕТСЯ ДВУХКОМНАТНАЯ КВАРТИРА В СТРОЯЩЕМСЯ ДОМЕ ПО УЛИЦЕ КАРАМЗИНА МОСКОВСКОГО РАЙОНА ПЛОЩАДЬЮ ПО 62 КВ.М. НА 3 ЭТАЖЕ. ТЕРРИТОРИЯ ДОМА ОГОРОЖЕНА, АВТОСТОЯНКА. СДАЧА ДОМА: КОНЕЦ 2007 - НАЧАЛО 2008 ГОДА. ДОГОВОР РЕГИСТРИРУЕТСЯ В ЮСТИЦИИ.\r\n'),
(19, 'e4bf4968a6b515a8c829e2d4a7817b48', 'ПРОДАЮ ЗЕМЕЛЬНЫЕ УЧАСТКИ\r\nПРОДАЮ ЗЕМЕЛЬНЫЕ УЧАСТКИ НА ПОБЕРЕЖЬЕ БАЛТИЙСКОГО МОРЯ ОТ 6 СОТОК ДО 10 ГА ПОД СТРОИТЕЛЬСТВО КОТТЕДЖЕЙ, А ТАКЖЕ СЕЛЬХОЗЯЙСТВЕННЫЕ УГОДЬЯ ОТ 2.5 ГА.\r\n'),
(20, '5b3aad9ee6f373d82b39cabd5a5520b1', 'СДАЕМ В АРЕНДУ КВАРТИРЫ И КОМНАТЫ\r\nСДАЕМ В АРЕНДУ КВАРТИРЫ И КОМНАТЫ НА ДЛИТЕЛЬНЫЙ СРОК. БАЗА ДАННЫХ НА НАШЕМ САЙТЕ. ЕСТЬ ВОЗМОЖНОСТЬ ОСТАВИТЬ ЗАЯВКУ.\r\n'),
(21, '9a72eda612d03a97019a9b30fbf28c12', 'СНИМУ ПОМЕЩЕНИЕ\r\nСНИМУ ПОМЕЩЕНИЕ ПОД КНИЖНЫЙ МАГАЗИН: 40-45 КВ. М. + ПОДСОБКА В Р-НЕ ЛЕНИНСКОГО ПР., УЛ. БАГРАТИОНА. АЛЕКСАНДР.\r\n'),
(22, '08865c3419f24ee3ebadadcd0f492763', 'КУПЛЮ БМВ 320\r\nКУПЛЮ БМВ 320, 1993-96 ГОДА ВЫПУСКА, АКПП, ЦВЕТ - ЧЕРНЫЙ МЕТАЛЛИК , ДО $7700.\r\n'),
(23, '381dc24cfd743ea23b40e331b44624ca', 'ПРОДАЕМ АВТОБУСЫ\r\nВСЕГДА ЕСТЬ В НАЛИЧИИ НА СТОЯНКЕ В МОСКВЕ НОВЫЕ И ПОДЕРЖАННЫЕ ТУРИСТИЧЕСКИЕ И ГОРОДСКИЕ АВТОБУСЫ РАЗЛИЧНЫХ МАРОК (MERCEDES, SETRA, NEOPLAN И Т.Д.). ТАКЖЕ ПРЕДЛАГАЕМ МИКРОАВТОБУСЫ MERCEDES SPRINTER И VOLKSWAGEN LT.\r\n'),
(24, 'a437b842b1193d7f7008b0a2e59c65f0', 'ПРОДАЮ VOLKSWAGEN-JETTA\r\nПРОДАЮ VOLKSWAGEN-JETTA, 2001 Г/В, 2.0, ТЕМНО-ЗЕЛЕНЫЙ МЕТАЛЛИК, ЧЕРНЫЙ КОЖАНЫЙ САЛАН, АКПП, КРУИЗ КОНТРОЛЬ, ПОЛНЫЙ ЭЛЕКТРОПАКЕТ, 6 АЭРБЭГОВ, ЛЮК (2 ПОЛОЖЕНИЯ), КОНДИЦИОНЕР, АБС, ECP, ПОДОГРЕВ СИДЕНИЙ, МУЛЬТИ-РУЛЬ, CD-МАГНИТОЛА. ПОЛНАЯ КОМПЛЕКТАЦИЯ. ТОЛЬКО ИЗ АМЕРИКИ, БЕЗ ПРОБЕГА ПО РФ, В ОТЛИЧНОМ СОСТОЯНИИ, $15 500.\r\n'),
(25, 'a96a028700fbac175afd9358d8e49f3a', 'ПАССАЖИРСКИЕ ПЕРЕВОЗКИ\r\nПАССАЖИРСКИЕ ПЕРЕВОЗКИ МИКРОАВТОБУСОМ (8 МЕСТ), АРЕНДА МИКРОАВТОБУСА, ТРАНСФЕР В/ИЗ АЭРОПОРТОВ.\r\n'),
(26, '24dc7c9fcc1d8357e52e193e08dd7a32', 'ТРАНСПОРТНЫЕ ПЕРЕВОЗКИ\r\nТРАНСПОРТНО-ЭКСПЕДИТОРСКИЕ УСЛУГИ ПРИ ПЕРЕВОЗКЕ ГРУЗОВ ИЗ/В КАЛИНИНГРАДА, ПО ЖЕЛЕЗНЫМ ДОРОГАМ СНГ И ЕВРОПЫ.\r\n'),
(27, '17f76ed68d7950e3f494b9991813c075', 'ПРОДАЮ КОМПЬЮТЕР\r\nПРОДАЮ КОМПЬЮТЕР: ПРОЦЕССОР AMD ATHLON 1600 XP, RAM 256MB, FDD, HDD 20G, HDD 80G, CD-ROM, CD-RW, ЗВУК CREATIVE, ВИДЕО NVIDIA 5200 FX 64M, ТЮНЕР WINFAST XP, МОДЕМ OMNI PCI 56K +МОНИТОР SAMSUNG 757 NF 17\" +КЛАВИАТУРА +МЫШЬ +UPC +КОЛОНКИ +КОМБО ПРИНТЕР+СКАНЕР EPSON CX3650 БЕЗ КАРТРИДЖЕЙ 12000, ТОРГ\r\n'),
(28, '7e110d62ae9d8c05e06988aff1f78768', 'ПРОДАЕМ НОУТБУКИ\r\nПРОДАЕМ НОВЫЕ НОУТБУКИ И Б\\У. ГАРАНТИЯ ОТ ГОДА ДО ТРЕХ. САМЫЕ НИЗКИЕ ЦЕНЫ В ГОРОДЕ. НАЙДИТЕ ЦЕНУ НИЖЕ И ПОЛУЧИТЕ НОУТБУК ПО НАЙДЕННОЙ ЦЕНЕ + ПОДАРОК - СУМКУ ДЛЯ НОУТБУКА.\r\n'),
(29, '93186a3357bf9c31d78598a6c4fcc20b', 'КУПЛЮ АККУСТИЧЕСКУЮ СИСТЕМУ\r\nКУПЛЮ АККУСТИЧЕСКУЮ СИСТЕМУ AC-90 2ШТ В ИДЕАЛЬНОМ СОСТОЯНИИ.\r\n'),
(30, '69eeb9a4d37a186492204b46f4810705', 'КУПЛЮ ЗЕМЕЛЬНЫЙ УЧАСТОК\r\nКУПЛЮ ЗЕМЕЛЬНЫЙ УЧАСТОК СЕЛЬХОЗНАЗНАЧЕНИЯ, ЖЕЛАТЕЛЬНО ПОБЛИЖЕ К КАЛИНИНГРАДУ ИЛИ ПО ДОРОГЕ К ПОБЕРЕЖЬЕ, РАССМОТРЮ ВСЕ ВАРИАТЫ.\r\n'),
(31, '36b552b7ff3dd9a7883da95ce8878a7f', 'БИЗНЕС И ФИНАНСЫ\r\n\r\n'),
(32, '65661b918560b38172af95d7db935ffc', 'БАНКИ\r\n\r\n'),
(33, '86b4588cab95f0896f8c32abe5b44bfc', 'МАРКЕТИНГ\r\n\r\n'),
(34, '3bc79b0f38321d2e106cfd5fa9f14ff9', 'НЕДВИЖИМОСТЬ\r\n\r\n'),
(35, '5d42fa2b3fe48216899e2e8e313d7e66', 'СТРАХОВАНИЕ\r\n\r\n'),
(36, '1bb7863be3c8641637b80c7f45c0a950', 'ДОМ И СЕМЬЯ\r\n\r\n'),
(37, '69426722a7bb42df0a52da1ce6034c89', 'ДЕТИ\r\n\r\n'),
(38, '55d3af6c87b4144b0c5f4180d05f2023', 'РЕМОНТ\r\n\r\n'),
(39, '8dcd11465bd04d62ef8c5a56d2e2b1ee', 'ТОВАРЫ ДЛЯ ДОМА\r\n\r\n'),
(40, 'a8a9f77cf4a35dadb894bdbf6518d5bd', 'НАУКА И ОБРАЗОВАНИЕ\r\n\r\n'),
(41, '3d398b92903063eb531c9400fc141d1a', 'ВУЗЫ\r\n\r\n'),
(42, 'ff590419f0ec685cc20aadcd83b00289', 'НАУКА\r\n\r\n'),
(43, 'ccdd43fef7751d29cd829341f9190f66', 'ШКОЛЫ\r\n\r\n'),
(44, '82ff8eb2623760c574cfd3eb9cb1dee0', 'ЭКОЛОГИЯ\r\n\r\n'),
(45, 'a12445d0e1ea6a97258d0a7beeec2159', 'ОБЩЕСТВО И ПОЛИТИКА\r\n\r\n'),
(46, 'a3d9d5bc6d6739124b2ffe55bd0a218f', 'ОБЩЕСТВЕННЫЕ ОРГАНИЗАЦИИ\r\n\r\n'),
(47, '4e9e527135ebf6d17bb257ba4a8f244a', 'ПАРТИИ\r\n\r\n'),
(48, '85867c746dbd43bc6604b82301549768', 'РЕЛИГИЯ\r\n\r\n'),
(49, '3a8b218627c79db02e384e1a53a28ecd', 'ОТДЫХ И РАЗВЛЕЧЕНИЯ\r\n\r\n'),
(50, 'ec91b7f4022d41e5cef4604c01fb26a8', 'ЗНАКОМСТВА\r\n\r\n'),
(51, '08e91d7c82ac5827a93fb94ee4d1140b', 'КЛУБЫ\r\n\r\n'),
(52, 'b026717d7417b0cd1e209a135c74ccb2', 'РЫБАЛКА\r\n\r\n'),
(53, 'ee627e3e97bbc2b011ca408daf44f90b', 'СМИ\r\n\r\n'),
(54, '8a15342390d69d536ad034eeb4680e7d', 'ГАЗЕТЫ\r\n\r\n'),
(55, '19f1f4f20e3e47285ea0fbe50e5d37f5', 'РАДИО\r\n\r\n'),
(56, 'e5af3d072ccfbed84e450debdb12cbab', 'ТЕЛЕВИДЕНИЕ\r\n\r\n'),
(57, '835292cf9102ac5bcc934d9244fa9024', 'ТОВАРЫ И УСЛУГИ\r\n\r\n'),
(58, 'b5504654a125d1f9f109657385c09b07', 'АПТЕКИ\r\n\r\n'),
(59, 'b6cf21b88990ff673b90439ba9d900f5', 'ГОСТИНИЦЫ\r\n\r\n'),
(60, '8bc448fdcd76c91397f65405cd2d48fd', 'МЕБЕЛЬ\r\n\r\n'),
(61, '33c10f77dbb90f4d8f66c5f0f314d8cb', 'ОДЕЖДА\r\n\r\n'),
(62, '1592540d0a5ae2b053107c1678e279f2', 'ЦЕНТРАЛЬНЫЙ БАНК РОССИЙСКОЙ ФЕДЕРАЦИИ\r\nИСТОРИЯ БАНКА, ОСНОВНЫЕ ФУНКЦИИ, ПРАВОВОЙ СТАТУС, ОРГАНИЗАЦИОННАЯ СТРУКТУРА. ИНФОРМАЦИЯ О ДЕНЕЖНОЙ ПОЛИТИКЕ И ФИНАНСОВЫХ РЫНКАХ. НОВОСТИ (ОБНОВЛЯЮТСЯ ЕЖЕДНЕВНО). ПОИСКОВАЯ СИСТЕМА ПО КЛЮЧЕВЫМ СЛОВАМ.\r\nИСТОРИЯ БАНКА, ОСНОВНЫЕ ФУНКЦИИ, ПРАВОВОЙ СТАТУС, ОРГАНИЗАЦИОННАЯ СТРУКТУРА. ИНФОРМАЦИЯ О ДЕНЕЖНОЙ ПОЛИТИКЕ И ФИНАНСОВЫХ РЫНКАХ. НОВОСТИ (ОБНОВЛЯЮТСЯ ЕЖЕДНЕВНО). ПОИСКОВАЯ СИСТЕМА ПО КЛЮЧЕВЫМ СЛОВАМ.\r\n'),
(63, '0faeb570d46d72780d323c6235ed4f36', '\"ГАЗПРОМБАНК\"\r\nУСЛУГИ ФИЗИЧЕСКИМ И ЮРИДИЧЕСКИМ ЛИЦАМ. ДОВЕРИТЕЛЬНОЕ УПРАВЛЕНИЕ. ПОДРОБНО ОБ УСЛУГАХ. АДРЕСА ФИЛИАЛОВ В ГОРОДАХ РОССИИ. ФИНАНСОВЫЕ ОТЧЕТЫ РАБОТЫ.\r\nУСЛУГИ ФИЗИЧЕСКИМ И ЮРИДИЧЕСКИМ ЛИЦАМ. ДОВЕРИТЕЛЬНОЕ УПРАВЛЕНИЕ. ПОДРОБНО ОБ УСЛУГАХ. АДРЕСА ФИЛИАЛОВ В ГОРОДАХ РОССИИ. ФИНАНСОВЫЕ ОТЧЕТЫ РАБОТЫ.\r\n'),
(64, 'e94f46a5cbd21d13b4098d5f7cd0f8d6', '\"АЛЬФА-БАНК\"\r\nСВЕДЕНИЯ ДЛЯ ПОТЕНЦИАЛЬНЫХ СОТРУДНИКОВ И ПАРТНЕРОВ. ИНФОРМАЦИЯ ОБ УСЛУГАХ БАНКА ЧАСТНЫМ ЛИЦАМ. НОВОСТИ ОРГАНИЗАЦИИ, АНАЛИТИЧЕСКИЕ РАЗРАБОТКИ. АДРЕСА ОТДЕЛЕНИЙ И БАНКОМАТОВ.\r\nСВЕДЕНИЯ ДЛЯ ПОТЕНЦИАЛЬНЫХ СОТРУДНИКОВ И ПАРТНЕРОВ. ИНФОРМАЦИЯ ОБ УСЛУГАХ БАНКА ЧАСТНЫМ ЛИЦАМ. НОВОСТИ ОРГАНИЗАЦИИ, АНАЛИТИЧЕСКИЕ РАЗРАБОТКИ. АДРЕСА ОТДЕЛЕНИЙ И БАНКОМАТОВ.\r\n'),
(65, 'f01e76f79ea4970bb780c16503ca718a', '\"ВТБ\" - БАНКОВСКАЯ ГРУППА\r\nНОВОСТИ БАНКА. ФИНАНСОВАЯ ОТЧЕТНОСТЬ. УСЛУГИ: ОТКРЫТИЕ СЧЕТОВ, МЕЖДУНАРОДНЫЕ РАСЧЕТЫ, ВАЛЮТНЫЙ КОНТРОЛЬ, КРЕДИТНЫЕ КАРТЫ, СРОЧНЫЕ ВКЛАДЫ, ИПОТЕЧНОЕ КРЕДИТОВАНИЕ И ДР. КОНТАКТЫ.\r\nНОВОСТИ БАНКА. ФИНАНСОВАЯ ОТЧЕТНОСТЬ. УСЛУГИ: ОТКРЫТИЕ СЧЕТОВ, МЕЖДУНАРОДНЫЕ РАСЧЕТЫ, ВАЛЮТНЫЙ КОНТРОЛЬ, КРЕДИТНЫЕ КАРТЫ, СРОЧНЫЕ ВКЛАДЫ, ИПОТЕЧНОЕ КРЕДИТОВАНИЕ И ДР. КОНТАКТЫ.\r\n'),
(66, '40a00e8c2b11b9c204dc08bf68f64fae', '\"РАМ\" - \"РОССИЙСКАЯ АССОЦИАЦИЯ МАРКЕТИНГА\"\r\nУСТАВ, СТРУКТУРА, ФИЛИАЛЫ, ЦЕЛИ И ЗАДАЧИ НЕКОММЕРЧЕСКОЙ ОРГАНИЗАЦИИ. СВЕДЕНИЯ ОБ ОБЩЕРОССИЙСКОЙ МАРКЕТИНГОВОЙ СИСТЕМЕ - ОМС (ОПИСАНИЕ, МЕТОДЫ, БАЗА ПРОЕКТОВ). НОВОСТИ, АНОНСЫ ВЫСТАВОК И КОНФЕРЕНЦИЙ.\r\nУСТАВ, СТРУКТУРА, ФИЛИАЛЫ, ЦЕЛИ И ЗАДАЧИ НЕКОММЕРЧЕСКОЙ ОРГАНИЗАЦИИ. СВЕДЕНИЯ ОБ ОБЩЕРОССИЙСКОЙ МАРКЕТИНГОВОЙ СИСТЕМЕ - ОМС (ОПИСАНИЕ, МЕТОДЫ, БАЗА ПРОЕКТОВ). НОВОСТИ, АНОНСЫ ВЫСТАВОК И КОНФЕРЕНЦИЙ.\r\n'),
(67, '6283c41d439e48475e65e1006fa2e74f', '\"V-RATIO\" - МАРКЕТИНГОВЫЕ УСЛУГИ\r\nКОНСАЛТИНГ В ОБЛАСТИ УПРАВЛЕНИЯ СТОИМОСТЬЮ КОМПАНИЙ. МАРКЕТИНГОВЫЕ ИССЛЕДОВАНИЯ, ФОКУС-ГРУППЫ, АНТИКРИЗИСНОЕ УПРАВЛЕНИЕ, ПРИВЛЕЧЕНИЕ ИНВЕСТИЦИЙ. БАЗА ДАННЫХ ПО ИССЛЕДОВАНИЯМ.\r\nКОНСАЛТИНГ В ОБЛАСТИ УПРАВЛЕНИЯ СТОИМОСТЬЮ КОМПАНИЙ. МАРКЕТИНГОВЫЕ ИССЛЕДОВАНИЯ, ФОКУС-ГРУППЫ, АНТИКРИЗИСНОЕ УПРАВЛЕНИЕ, ПРИВЛЕЧЕНИЕ ИНВЕСТИЦИЙ. БАЗА ДАННЫХ ПО ИССЛЕДОВАНИЯМ.\r\n'),
(68, 'a4be937e8e1ead0477134eadae3f2544', '\"КОМКОН\" - УСЛУГИ ПО ИССЛЕДОВАНИЮ РЫНКА\r\nПЕРЕЧЕНЬ УСЛУГ: ИССЛЕДОВАНИЕ РЫНКА И СРЕДСТВ МАССОВОЙ ИНФОРМАЦИИ. ОБЗОР РЕАЛИЗУЕМЫХ ПРОЕКТОВ. ОПИСАНИЕ ВИДОВ ИССЛЕДОВАНИЙ. ПУБЛИКАЦИИ.\r\nПЕРЕЧЕНЬ УСЛУГ: ИССЛЕДОВАНИЕ РЫНКА И СРЕДСТВ МАССОВОЙ ИНФОРМАЦИИ. ОБЗОР РЕАЛИЗУЕМЫХ ПРОЕКТОВ. ОПИСАНИЕ ВИДОВ ИССЛЕДОВАНИЙ. ПУБЛИКАЦИИ.\r\n'),
(69, '5d1175bda160a93b3bf0bb4b7b10e6a6', '\"РУССКАЯ НЕДВИЖИМОСТЬ\" - ИНФОРМАЦИОННЫЙ ПОРТАЛ\r\nИНФОРМАЦИЯ О НЕДВИЖИМОСТИ: НОВОСТИ РЫНКА; АНАЛИТИКА; КАТАЛОГИ НОВОСТРОЕК, КОТТЕДЖЕЙ И ОФИСНЫХ ПОМЕЩЕНИЙ; КОНСУЛЬТАЦИИ ЮРИСТОВ И РИЭЛТОРОВ; СПРАВОЧНАЯ ИНФОРМАЦИЯ.\r\nИНФОРМАЦИЯ О НЕДВИЖИМОСТИ: НОВОСТИ РЫНКА; АНАЛИТИКА; КАТАЛОГИ НОВОСТРОЕК, КОТТЕДЖЕЙ И ОФИСНЫХ ПОМЕЩЕНИЙ; КОНСУЛЬТАЦИИ ЮРИСТОВ И РИЭЛТОРОВ; СПРАВОЧНАЯ ИНФОРМАЦИЯ.\r\n'),
(70, '70b22f46ca7c469027525d9aeb534fc4', '\"ДЕТСКАЯ ЭЛЕКТРОННАЯ БИБЛИОТЕКА\"\r\nПОДБОРКА РУССКОЙ И ЗАРУБЕЖНОЙ ЛИТЕРАТУРЫ ДЛЯ ДЕТЕЙ: СКАЗКИ, СТИХИ, ПОВЕСТИ И ПР. ВОЗМОЖНОСТЬ СКАЧАТЬ БЕСПЛАТНО.\r\nПОДБОРКА РУССКОЙ И ЗАРУБЕЖНОЙ ЛИТЕРАТУРЫ ДЛЯ ДЕТЕЙ: СКАЗКИ, СТИХИ, ПОВЕСТИ И ПР. ВОЗМОЖНОСТЬ СКАЧАТЬ БЕСПЛАТНО.\r\n'),
(71, '3300d6f0c77b327bd50f72faaee9d06e', '\"ДЕТСКИЙ МИР\" - СТРАНИЦА ДЛЯ РОДИТЕЛЕЙ И МАЛЫШЕЙ\r\nМУЛЬТФИЛЬМЫ, ИЛЛЮСТРИРОВАННЫЕ СКАЗКИ И ОЗВУЧЕННЫЕ СКАЗОЧКИ ДЛЯ ДЕТЕЙ, ПЕСЕНКИ ИЗ МУЛЬТИКОВ И ФИЛЬМОВ-СКАЗОК, ЗАДАЧКИ И ЗАГАДКИ В КАРТИНКАХ, СТИХИ, ФОТОГРАФИИ ДЕТЕНЫШЕЙ ЖИВОТНЫХ И МНОГОЕ ДРУГОЕ.\r\nМУЛЬТФИЛЬМЫ, ИЛЛЮСТРИРОВАННЫЕ СКАЗКИ И ОЗВУЧЕННЫЕ СКАЗОЧКИ ДЛЯ ДЕТЕЙ, ПЕСЕНКИ ИЗ МУЛЬТИКОВ И ФИЛЬМОВ-СКАЗОК, ЗАДАЧКИ И ЗАГАДКИ В КАРТИНКАХ, СТИХИ, ФОТОГРАФИИ ДЕТЕНЫШЕЙ ЖИВОТНЫХ И МНОГОЕ ДРУГОЕ.\r\n'),
(72, 'c642f60a192b7bc93e90d3047a69f198', '\"ЖИЛЭКСПЕРТИЗА\" - ПЕРЕПЛАНИРОВКА КВАРТИР И ОФИСОВ\r\nОПИСАНИЕ УСЛУГ ФИРМЫ НА ВСЕХ ЭТАПАХ ПЕРЕПЛАНИРОВКИ КВАРТИР И ОФИСОВ (ТЕХНИЧЕСКОЕ ЗАКЛЮЧЕНИЕ О СОСТОЯНИИ КОНСТРУКЦИИ ДОМА, ОФОРМЛЕНИЕ РАЗРЕШЕНИЯ, ПРОЕКТИРОВАНИЕ, РЕМОНТ И ДР.). КОНТАКТНАЯ ИНФОРМАЦИЯ.\r\nОПИСАНИЕ УСЛУГ ФИРМЫ НА ВСЕХ ЭТАПАХ ПЕРЕПЛАНИРОВКИ КВАРТИР И ОФИСОВ (ТЕХНИЧЕСКОЕ ЗАКЛЮЧЕНИЕ О СОСТОЯНИИ КОНСТРУКЦИИ ДОМА, ОФОРМЛЕНИЕ РАЗРЕШЕНИЯ, ПРОЕКТИРОВАНИЕ, РЕМОНТ И ДР.). КОНТАКТНАЯ ИНФОРМАЦИЯ.\r\n'),
(73, '76a31e4e992ffacaee5907a9f43dea96', '\"KOMOD.RU\" - СПРАВОЧНО-ПОИСКОВАЯ СИСТЕМА ПО МЕБЕЛИ\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).\r\n'),
(74, '3e0261b8d91f29bca3a57473e15efb33', '\"М.ВИДЕО\" - ПРОДАЖА БЫТОВОЙ ТЕХНИКИ\r\nАДРЕСА, ТЕЛЕФОНЫ, СХЕМЫ ПРОЕЗДА В МАГАЗИНЫ. ПРАЙС-ЛИСТ, ПОИСК ТОВАРОВ. РЕЙТИНГ НЕДЕЛЬНЫХ ПРОДАЖ. ВИРТУАЛЬНОЕ КАЗИНО С ПРИЗАМИ ОТ М.ВИДЕО. КОНФЕРЕНЦИИ.\r\nАДРЕСА, ТЕЛЕФОНЫ, СХЕМЫ ПРОЕЗДА В МАГАЗИНЫ. ПРАЙС-ЛИСТ, ПОИСК ТОВАРОВ. РЕЙТИНГ НЕДЕЛЬНЫХ ПРОДАЖ. ВИРТУАЛЬНОЕ КАЗИНО С ПРИЗАМИ ОТ М.ВИДЕО. КОНФЕРЕНЦИИ.\r\n'),
(75, 'cfc42760b13eba7f4f6091ef700c389d', '\"КУПИСАМ\" - ИНТЕРНЕТ-СУПЕРМАРКЕТ\r\nИЛЛЮСТРИРОВАННЫЙ КАТАЛОГ ВСЕВОЗМОЖНЫХ ТОВАРОВ И УСЛУГ - ПРЕДЛОЖЕНИЯ ОТ РОССИЙСКИХ ИНТЕРНЕТ-МАГАЗИНОВ. ПОИСК ПО КАТАЛОГУ.\r\nИЛЛЮСТРИРОВАННЫЙ КАТАЛОГ ВСЕВОЗМОЖНЫХ ТОВАРОВ И УСЛУГ - ПРЕДЛОЖЕНИЯ ОТ РОССИЙСКИХ ИНТЕРНЕТ-МАГАЗИНОВ. ПОИСК ПО КАТАЛОГУ.\r\n'),
(76, '5f0c5d8784736973387ac56c197e9588', '\"МОСКОВСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ (МГУ)\"\r\nИСТОРИЯ. СТРУКТУРА. ОФИЦИАЛЬНАЯ ИНФОРМАЦИЯ. СВЕДЕНИЯ ДЛЯ АБИТУРИЕНТОВ. ИНФОРМАЦИЯ ПО УЧЕБНОЙ И НАУЧНОЙ ДЕЯТЕЛЬНОСТИ. СПИСОК WEB-САЙТОВ И МАТЕРИАЛЫ ИЗДАНИЙ МГУ. АДРЕСНАЯ КНИГА.\r\nИСТОРИЯ. СТРУКТУРА. ОФИЦИАЛЬНАЯ ИНФОРМАЦИЯ. СВЕДЕНИЯ ДЛЯ АБИТУРИЕНТОВ. ИНФОРМАЦИЯ ПО УЧЕБНОЙ И НАУЧНОЙ ДЕЯТЕЛЬНОСТИ. СПИСОК WEB-САЙТОВ И МАТЕРИАЛЫ ИЗДАНИЙ МГУ. АДРЕСНАЯ КНИГА.\r\n'),
(77, '08225a36372ad459ead68873c689f6a4', '\"РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ\"\r\nИНФОРМАЦИЯ О ФАКУЛЬТЕТАХ И ФИЛИАЛАХ, КАФЕДРАХ, ЦЕНТРАХ ДОПОЛНИТЕЛЬНОГО ОБРАЗОВАНИЯ, НАУЧНЫХ ИССЛЕДОВАНИЯХ. РАЗДЕЛ ДЛЯ АБИТУРИЕНТОВ. СВЕДЕНИЯ ОБ УЧЕБНОЙ ПРОГРАММЕ\r\nИНФОРМАЦИЯ О ФАКУЛЬТЕТАХ И ФИЛИАЛАХ, КАФЕДРАХ, ЦЕНТРАХ ДОПОЛНИТЕЛЬНОГО ОБРАЗОВАНИЯ, НАУЧНЫХ ИССЛЕДОВАНИЯХ. РАЗДЕЛ ДЛЯ АБИТУРИЕНТОВ. СВЕДЕНИЯ ОБ УЧЕБНОЙ ПРОГРАММЕ\r\n'),
(78, '39c9274e0628fcc9550cc25358170f56', '\"КЛАССИЧЕСКИЙ ПАНСИОН МГУ ИМЕНИ М.В. ЛОМОНОСОВА\"\r\nСТУПЕНИ ОБРАЗОВАНИЯ: ДОШКОЛЬНОЕ, НАЧАЛЬНОЕ, БАЗОВОЕ СРЕДНЕЕ, УГЛУБЛЕННОЕ, ПРОФИЛЬНО-ПРАГМАТИЧЕСКОЕ, ВЫСШЕЕ В ОБЛАСТИ МЕЖДУНАРОДНЫХ КОММУНИКАЦИЙ И УПРАВЛЕНИЯ. ПРОГРАММЫ. УСЛОВИЯ ПРИЕМА. ЦЕНЫ.\r\nСТУПЕНИ ОБРАЗОВАНИЯ: ДОШКОЛЬНОЕ, НАЧАЛЬНОЕ, БАЗОВОЕ СРЕДНЕЕ, УГЛУБЛЕННОЕ, ПРОФИЛЬНО-ПРАГМАТИЧЕСКОЕ, ВЫСШЕЕ В ОБЛАСТИ МЕЖДУНАРОДНЫХ КОММУНИКАЦИЙ И УПРАВЛЕНИЯ. ПРОГРАММЫ. УСЛОВИЯ ПРИЕМА. ЦЕНЫ.\r\n'),
(79, '797d881ce9893b665728c8d972f7f6fc', '\"САРАТОВСКИЙ МЕДИЦИНСКИЙ УНИВЕРСИТЕТ\"\r\nСТРУКТУРА, ИСТОРИЯ ВУЗА, МЕЖДУНАРОДНАЯ ДЕЯТЕЛЬНОСТЬ, КОНТАКТНО-СПРАВОЧНАЯ ИНФОРМАЦИЯ. ПРАВИЛА ПОСТУПЛЕНИЯ, ИНФОРМАЦИЯ О ДОВУЗОВСКОМ ОБРАЗОВАНИИ. НОВОСТИ УНИВЕРСИТЕТА В ОБЛАСТЯХ ОБРАЗОВАНИЯ И НАУКИ.\r\nСТРУКТУРА, ИСТОРИЯ ВУЗА, МЕЖДУНАРОДНАЯ ДЕЯТЕЛЬНОСТЬ, КОНТАКТНО-СПРАВОЧНАЯ ИНФОРМАЦИЯ. ПРАВИЛА ПОСТУПЛЕНИЯ, ИНФОРМАЦИЯ О ДОВУЗОВСКОМ ОБРАЗОВАНИИ. НОВОСТИ УНИВЕРСИТЕТА В ОБЛАСТЯХ ОБРАЗОВАНИЯ И НАУКИ.\r\n'),
(80, '50a06cd1ce359b00cff36ab5ed1b10dc', '\"ИЗВЕСТИЯ НАУКИ\"\r\nЕЖЕДНЕВНЫЕ ПУБЛИКАЦИИ О НОВОСТЯХ НАУКИ И ТЕХНИКИ, ОБЗОРЫ КНИГ, БЛОГИ. АРХИВ С МАЯ 2001Г.\r\nЕЖЕДНЕВНЫЕ ПУБЛИКАЦИИ О НОВОСТЯХ НАУКИ И ТЕХНИКИ, ОБЗОРЫ КНИГ, БЛОГИ. АРХИВ С МАЯ 2001Г.\r\n'),
(81, '013818f2d13a7921b163d7135a7a787c', 'НАУЧНО-ТЕХНИЧЕСКАЯ БИБЛИОТЕКА \"SCITECLIBRARY\"\r\nСБОРНИК МАТЕРИАЛОВ О ТЕХНОЛОГИЯХ, ИЗОБРЕТЕНИЯХ, НОУ-ХАУ И ДР. НАУЧНО-ТЕХНИЧЕСКИХ РАЗРАБОТКАХ. ФОРМА ДОГОВОРА О ПУБЛИКАЦИЯХ. СВЕДЕНИЯ ДЛЯ АВТОРОВ О КОНКУРСАХ, ЮРИДИЧЕСКОЙ ПОДДЕРЖКЕ, ПАТЕНТОВАНИИ.\r\nСБОРНИК МАТЕРИАЛОВ О ТЕХНОЛОГИЯХ, ИЗОБРЕТЕНИЯХ, НОУ-ХАУ И ДР. НАУЧНО-ТЕХНИЧЕСКИХ РАЗРАБОТКАХ. ФОРМА ДОГОВОРА О ПУБЛИКАЦИЯХ. СВЕДЕНИЯ ДЛЯ АВТОРОВ О КОНКУРСАХ, ЮРИДИЧЕСКОЙ ПОДДЕРЖКЕ, ПАТЕНТОВАНИИ.\r\n'),
(82, 'ab9bc36063a60c6cd376e0592f4a798c', '\"МЕМБРАНА\" - НАУЧНО-ПОПУЛЯРНЫЙ ИНТЕРНЕТ-ЖУРНАЛ\r\nЖУРНАЛ О МИРЕ (КАК РЕАЛЬНОМ, ТАК И ВИРТУАЛЬНОМ), В КОТОРОМ МЫ ЖИВЕМ. ТЕМАТИЧЕСКИЙ АРХИВ. ОБСУЖДЕНИЕ МАТЕРИАЛОВ В ФОРУМЕ. ЛЕНТА НОВОСТЕЙ.\r\nЖУРНАЛ О МИРЕ (КАК РЕАЛЬНОМ, ТАК И ВИРТУАЛЬНОМ), В КОТОРОМ МЫ ЖИВЕМ. ТЕМАТИЧЕСКИЙ АРХИВ. ОБСУЖДЕНИЕ МАТЕРИАЛОВ В ФОРУМЕ. ЛЕНТА НОВОСТЕЙ.\r\n'),
(83, 'c339833590a0c846d2dd534ebcebc515', 'РОССИЙСКАЯ АКАДЕМИЯ НАУК\r\nИНФОРМАЦИЯ ОБ ОТДЕЛЕНИЯХ И ОРГАНИЗАЦИЯХ. ПЛАН-КАРТА И СПИСОК РОССИЙСКИХ ВЕБ-СЕРВЕРОВ.\r\nИНФОРМАЦИЯ ОБ ОТДЕЛЕНИЯХ И ОРГАНИЗАЦИЯХ. ПЛАН-КАРТА И СПИСОК РОССИЙСКИХ ВЕБ-СЕРВЕРОВ.\r\n'),
(84, 'de924ac27498a8e80551465560b62fcd', '\"BUBO-SCHOOL\" - ИНФОРМАЦИОННО-СПРАВОЧНЫЙ РЕСУРС\r\nКАТАЛОГ ЧАСТНЫХ ШКОЛ. СОВЕТЫ РОДИТЕЛЯМ. ОНЛАЙН-ТЕСТЫ ДЛЯ ДЕТЕЙ. ПРАЙС-ЛИСТ УСЛУГ ПО КОНСУЛЬТИРОВАНИЮ ОТНОСИТЕЛЬНО ВЫБОРА ШКОЛЫ И ДОШКОЛЬНОЙ ПОДГОТОВКЕ РЕБЕНКА. КОНТАКТЫ.\r\nКАТАЛОГ ЧАСТНЫХ ШКОЛ. СОВЕТЫ РОДИТЕЛЯМ. ОНЛАЙН-ТЕСТЫ ДЛЯ ДЕТЕЙ. ПРАЙС-ЛИСТ УСЛУГ ПО КОНСУЛЬТИРОВАНИЮ ОТНОСИТЕЛЬНО ВЫБОРА ШКОЛЫ И ДОШКОЛЬНОЙ ПОДГОТОВКЕ РЕБЕНКА. КОНТАКТЫ.\r\n'),
(85, '9d3a45d09a44baf86bf18ac5d0a5e4f6', '\"ИНТЕРНЕТ-ШКОЛА ПОЛНОГО СРЕДНЕГО ОБРАЗОВАНИЯ\"\r\nВИДЫ ОБУЧЕНИЯ: ДОПОЛНИТЕЛЬНАЯ ПОДГОТОВКА ПО ШКОЛЬНЫМ ПРЕДМЕТАМ ЧЕРЕЗ ИНТЕРНЕТ, ЭКСТЕРНАТ. УСЛОВИЯ ПОСТУПЛЕНИЯ. ПОРЯДОК ОБУЧЕНИЯ. ВХОД НА УЧЕБНЫЙ СЕРВЕР. ПУБЛИКАЦИИ\r\nВИДЫ ОБУЧЕНИЯ: ДОПОЛНИТЕЛЬНАЯ ПОДГОТОВКА ПО ШКОЛЬНЫМ ПРЕДМЕТАМ ЧЕРЕЗ ИНТЕРНЕТ, ЭКСТЕРНАТ. УСЛОВИЯ ПОСТУПЛЕНИЯ. ПОРЯДОК ОБУЧЕНИЯ. ВХОД НА УЧЕБНЫЙ СЕРВЕР. ПУБЛИКАЦИИ\r\n'),
(86, 'bbac03ed34169197fdd76345b5e0ddc5', '\"ШКОЛЫ В ИНТЕРНЕТ\"\r\nПОДБОРКА ССЫЛОК НА СТРАНИЦЫ ШКОЛ, ИНТЕРНЕТ-ТЕХНОЛОГИИ В ОБРАЗОВАНИИ, КОНФЕРЕНЦИИ, ОБУЧАЮЩИЕ ПРОГРАММЫ И ПРОЕКТЫ. ВЕБ-КОЛЬЦА, ОБРАЗОВАТЕЛЬНЫЕ СЕРВЕРЫ, СЕТЕВЫЕ ВИКТОРИНЫ И ДРУГОЕ.\r\nПОДБОРКА ССЫЛОК НА СТРАНИЦЫ ШКОЛ, ИНТЕРНЕТ-ТЕХНОЛОГИИ В ОБРАЗОВАНИИ, КОНФЕРЕНЦИИ, ОБУЧАЮЩИЕ ПРОГРАММЫ И ПРОЕКТЫ. ВЕБ-КОЛЬЦА, ОБРАЗОВАТЕЛЬНЫЕ СЕРВЕРЫ, СЕТЕВЫЕ ВИКТОРИНЫ И ДРУГОЕ.\r\n'),
(87, 'b81b1a86384b7e13e3989818447ac2be', '\"ЭКОЛОГИЯ И ЖИЗНЬ\" - НАУЧНО-ПОПУЛЯРНЫЙ ЖУРНАЛ\r\nЭКОЛОГИЧЕСКИЕ НОВОСТИ. ТЕМАТИЧЕСКИЙ АРХИВ НЕКОТОРЫХ МАТЕРИАЛОВ ЖУРНАЛА. ИНФОРМАЦИЯ О ПОДПИСКЕ.\r\nЭКОЛОГИЧЕСКИЕ НОВОСТИ. ТЕМАТИЧЕСКИЙ АРХИВ НЕКОТОРЫХ МАТЕРИАЛОВ ЖУРНАЛА. ИНФОРМАЦИЯ О ПОДПИСКЕ.\r\n'),
(88, 'f1123d5023993886efc108a2e32a716b', '\"МАТЕРИАЛЫ ПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ\"\r\nПОЛНОТЕКСТОВЫЕ ПУБЛИКАЦИИ И МАТЕРИАЛЫ ПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ, МОНИТОРИНГУ, МЕНЕДЖМЕНТУ И ДР. ЭКОЛОГИЧЕСКОЕ ЗАКОНОДАТЕЛЬСТВО.\r\nПОЛНОТЕКСТОВЫЕ ПУБЛИКАЦИИ И МАТЕРИАЛЫ ПО ЭКОЛОГИЧЕСКОЙ ЭКСПЕРТИЗЕ, МОНИТОРИНГУ, МЕНЕДЖМЕНТУ И ДР. ЭКОЛОГИЧЕСКОЕ ЗАКОНОДАТЕЛЬСТВО.\r\n'),
(89, '0a31be251ab603a03abc41947f1849de', '\"ОКРУЖАЮЩАЯ СРЕДА - РИСК - ЗДОРОВЬЕ\"\r\nМАТЕРИАЛЫ ОБ ОПАСНОСТИ АНОМАЛЬНЫХ КЛИМАТИЧЕСКИХ ЯВЛЕНИЙ ДЛЯ ЗДОРОВЬЯ. ИНФОРМАЦИЯ ПО ГОРОДАМ. ПУБЛИКАЦИИ. СЛОВАРЬ ТЕРМИНОВ. ОТЧЕТЫ О КОНФЕРЕНЦИЯХ. КОНТАКТЫ ОРГАНИЗАЦИИ.\r\nМАТЕРИАЛЫ ОБ ОПАСНОСТИ АНОМАЛЬНЫХ КЛИМАТИЧЕСКИХ ЯВЛЕНИЙ ДЛЯ ЗДОРОВЬЯ. ИНФОРМАЦИЯ ПО ГОРОДАМ. ПУБЛИКАЦИИ. СЛОВАРЬ ТЕРМИНОВ. ОТЧЕТЫ О КОНФЕРЕНЦИЯХ. КОНТАКТЫ ОРГАНИЗАЦИИ.\r\n'),
(90, 'd373422a8531165cf5b9ebd0c06ce5e8', 'БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\r\nСАЙТ ПРОГРАММНОГО ПРОДУКТА \"БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\"\r\n&QUOT;БИТРИКС: УПРАВЛЕНИЕ САЙТОМ&QUOT; - УНИВЕРСАЛЬНЫЙ ПРОГРАММНЫЙ ПРОДУКТ ДЛЯ РАЗРАБОТКИ, ПОДДЕРЖКИ И УСПЕШНОГО РАЗВИТИЯ ИНТЕРНЕТ-ПРОЕКТА. УДОБНЫЙ И ПОНЯТНЫЙ ИНТЕРФЕЙС ПОЗВОЛЯЕТ ЭФФЕКТИВНО УПРАВЛЯТЬ САЙТОМ, НЕ ПРИВЛЕКАЯ СПЕЦИАЛИСТОВ ПО ПРОГРАММИРОВАНИЮ И HTML-ВЕРСТКЕ.\r\n'),
(91, '8bfca8e9eb34789d57beeb4cdbffa893', '\"БЕЛЛОНА\" - ЭКОЛОГИЧЕСКОЕ ОБЪЕДИНЕНИЕ (НОРВЕГИЯ)\r\nИНФОРМАЦИЯ О ПРОБЛЕМАХ ЭКСПЛУАТАЦИИ АТОМНОГО ФЛОТА ВМФ РОССИИ, СВЕДЕНИЯ ОБ АТОМНЫХ ЭЛЕКТРОСТАНЦИЯХ И ЛЕДОКОЛАХ. МАТЕРИАЛЫ ПО ЯДЕРНОМУ РАЗОРУЖЕНИЮ И ПО РАДИОАКТИВНЫМ ОТХОДАМ. АТОМНАЯ ХРОНИКА.\r\nИНФОРМАЦИЯ О ПРОБЛЕМАХ ЭКСПЛУАТАЦИИ АТОМНОГО ФЛОТА ВМФ РОССИИ, СВЕДЕНИЯ ОБ АТОМНЫХ ЭЛЕКТРОСТАНЦИЯХ И ЛЕДОКОЛАХ. МАТЕРИАЛЫ ПО ЯДЕРНОМУ РАЗОРУЖЕНИЮ И ПО РАДИОАКТИВНЫМ ОТХОДАМ. АТОМНАЯ ХРОНИКА.\r\n'),
(92, '405063b0014b4ef71f77bcfbe4d422aa', '\"KOMOD.RU\" - СПРАВОЧНО-ПОИСКОВАЯ СИСТЕМА ПО МЕБЕЛИ\r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ). \r\nФОТОГРАФИИ, ЦЕНЫ МЕБЕЛИ ДЛЯ ДОМА И ОФИСА, КООРДИНАТЫ ФИРМ-ПРОДАВЦОВ. ВОЗМОЖНОСТЬ ПОИСКА ТОВАРОВ ПО МНОГИМ ПАРАМЕТРАМ. ИНФОРМАЦИЯ ДЛЯ ПАРТНЕРОВ (ПРАВИЛА УЧАСТИЯ).\r\n'),
(93, 'fc2a56a24ad5e539a311e543671c85db', 'НАСТРОЙКА ПРОДУКТА\r\n\r\n'),
(94, '227354a36a4245b97169f6902c0fe4f1', 'ОФОРМЛЕНИЕ И ОПЛАТА ЗАКАЗА\r\n\r\n'),
(95, 'c83df8919bddd548368da04c960ba058', 'ПАРТНЕРСКАЯ ПРОГРАММА\r\n\r\n'),
(96, '5986c48fae233081c2dfde2304e519ac', 'КАК НАСТРОИТЬ ОБРАБОТЧИК 404 ОШИБКИ?\r\nЕСЛИ У ВАС PHP УСТАНОВЛЕН КАК CGI ДОБАВЬТЕ В КОРНЕ САЙТА В ФАЙЛ .HTACCESS СЛЕДУЮЩИЕ СТРОКИ:\n REWRITEENGINE ON\n REWRITEBASE /\n REWRITECOND %{REQUEST_FILENAME} !-F\n REWRITERULE ^[0-9A-ZA-Z_/.-]+.PHP$ /404.PHP\n ERRORDOCUMENT 404 /404.PHP\nДЛЯ PHP УСТАНОВЛЕННОМ КАК ISAPI В .HTACCESS ДОСТАТОЧНО ДОБАВИТЬ СТРОКУ:\n ERRORDOCUMENT 404 /404.PHP\nПОСЛЕ ЭТОГО СОЗДАЙТЕ В КОРНЕ САЙТА ФАЙЛ 404.PHP (ЕСЛИ ЕГО НЕТ), КОТОРЫЙ И БУДЕТ ЯВЛЯТЬСЯ ОБРАБОТЧИКОМ 404 ОШИБКИ.\r\n'),
(97, 'c4886e6fa3c160b21adbddc2056f7166', 'МОЖЕТ ЛИ ЧАСТНОЕ ЛИЦО СТАТЬ ПАРТНЕРОМ КОМПАНИИ?\r\nТАКОЙ ВАРИАНТ ВОЗМОЖЕН, ЕСЛИ ВЫ ЯВЛЯЕТЕСЬ РАЗРАБОТЧИКОМ САЙТОВ. ДЛЯ ПРИНЯТИЯ РЕШЕНИЯ О ПОДПИСАНИИ ПАРТНЕРСКОГО СОГЛАШЕНИЯ НАМ ПОНАДОБИТСЯ ПОДРОБНЕЕ ИЗУЧИТЬ ВАШЕ ПОРТФОЛИО. УСЛОВИЯ УЧАСТИЯ ДЛЯ ЧАСТНЫХ ЛИЦ НЕ МЕНЯЮТСЯ, ЗА ИСКЛЮЧЕНИЕМ ТОГО, ЧТО ДЛЯ ФИЗИЧЕСКИХ ЛИЦ МЫ ПРЕДОСТАВЛЯЕМ БЕСПЛАТНЫЙ КЛЮЧ ТОЛЬКО ПОСЛЕ УСПЕШНОЙ ПРОДАЖИ ПРОДУКТА.\r\n'),
(98, '35790b17036798d7e80671b89c034337', 'ДЕЙСТВУЮТ ЛИ ПАРТНЕРСКИЕ СКИДКИ ДЛЯ СОБСТВЕННЫХ САЙТОВ ПАРТНЕРОВ?\r\nПАРТНЕРАМ НАШЕЙ КОМПАНИИ ПРЕДОСТАВЛЯЕТСЯ БЕСПЛАТНАЯ КОПИЯ ПРОДУКТА ДЛЯ СВОЕГО ОСНОВНОГО САЙТА. ТАКИМ СЧИТАЕТСЯ САЙТ, НА КОТОРОМ РАССКАЗЫВАЕТСЯ ОБ ОСНОВНОЙ ДЕЯТЕЛЬНОСТИ КОМПАНИИ ПАРТНЕРА (ДИЗАЙН, РАЗРАБОТКА САЙТОВ, ДИСТРИБУЦИЯ ПО).\nЕСЛИ ВЫ ПЛАНИРУЕТЕ ПЕРЕВЕСТИ НА \"БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\" НЕСКОЛЬКО СВОИХ ВЕБ-ПРОЕКТОВ, НЕ СВЯЗАННЫХ С ОСНОВНЫМ ВИДОМ ДЕЯТЕЛЬНОСТИ, ВЫ МОЖЕТЕ ПРИОБРЕСТИ КОПИЮ ПРОДУКТА СО СВОЕЙ ПАРТНЕРСКОЙ СКИДКОЙ.\r\n'),
(99, 'd187e3e78bda452620b3b44a0e8b193f', 'ЧТО ПРОИЗОЙДЕТ ЧЕРЕЗ ГОД ПОСЛЕ ПОКУПКИ, КОГДА ЗАКОНЧИТСЯ БЕСПЛАТНАЯ ТЕХПОДДЕРЖКА И ОБНОВЛЕНИЯ?\r\nВ ТЕЧЕНИЕ ГОДА ПОСЛЕ ПОКУПКИ ПРОДУКТА ВЫ МОЖЕТЕ СКАЧИВАТЬ ВСЕ ОБНОВЛЕНИЯ ДЛЯ ВАШЕЙ \rРЕДАКЦИИ\r. СПИСОК УЖЕ ВЫПУЩЕННЫХ ОБНОВЛЕНИЙ ПУБЛИКУЕТСЯ НА САЙТЕ: \rHTTP://WWW.BITRIXSOFT.RU/SITEMANAGER/VERSIONS.PHP\r<ЧЕРЕЗ ГОД, ЕСЛИ ВЫ ЗАХОТИТЕ И ДАЛЬШЕ СКАЧИВАТЬ ОБНОВЛЕНИЯ, ВАМ НУЖНО БУДЕТ ПРОДЛИТЬ СРОК АКТИВНОСТИ ТЕХПОДДЕРЖКИ И ОБНОВЛЕНИЙ.\nЛЬГОТНОЕ ПРОДЛЕНИЕ\r- 22% ОТ ЦЕНЫ ИСПОЛЬЗУЕМОГО ПРОДУКТА.\nПО ЛЬГОТНОМУ ПРОДЛЕНИЮ СРОК АКТИВНОСТИ ОБНОВЛЕНИЙ ПРОДЛЯЕТСЯ РОВНО НА ОДИН ГОД С МОМЕНТА ЗАВЕРШЕНИЯ ПРЕДЫДУЩЕГО ПЕРИОДА.\n<ЕСЛИ ЖЕ ВЫ РЕШИТЕ НЕ ПРОДЛЯТЬ ОБНОВЛЕНИЯ, НА РАБОТЕ САЙТА ЭТО НИКАК НЕ ОТРАЗИТСЯ. ВЫ СМОЖЕТЕ ИСПОЛЬЗОВАТЬ ТУ ВЕРСИЮ ПРОДУКТА, КОТОРАЯ У ВАС БУДЕТ НА МОМЕНТ ЗАВЕРШЕНИЯ ТЕХПОДДЕРЖКИ И ОБНОВЛЕНИЙ.\r\n'),
(100, '64ff28b498a217489e61669ce7a9d91a', 'ЦЕНА ПРОДУКТА НА САЙТЕ УКАЗАНА С УЧЕТОМ НДС?\r\nНДС ВКЛЮЧЕН В СТОИМОСТЬ ПРОДУКТА. ПРИ ОФОРМЛЕНИИ ЗАКАЗА ВЫ ПОЛУЧИТЕ ПОДРОБНУЮ ИНФОРМАЦИЮ О СУММЕ К ОПЛАТЕ.\r\n'),
(101, 'd9b289aaa968ffbf976bbf4608d1da45', 'СИСТЕМА ПАРТНЕРСКИХ СКИДОК РАСПРОСТРАНЯЕТСЯ НА ВСЕ РЕДАКЦИИ ПРОДУКТА?\r\nДА, ПАРТНЕРСКИЕ СКИДКИ ПРИМЕНЯЮТСЯ КО ВСЕМ РЕДАКЦИЯМ ПРОДУКТА БИТРИКС: УПРАВЛЕНИЕ САЙТОМ.\r\n'),
(102, '45768fa661179e3cf87b50f362224541', 'КАКОВА ПОСЛЕДОВАТЕЛЬНОСТЬ ДЕЙСТВИЙ ПРИ ОФОРМЛЕНИИ ЗАКАЗА?\r\nССЫЛКИ НА ОФОРМЛЕНИЕ ЗАКЗА МОЖНО НАЙТИ НА НАШЕМ САЙТЕ В РАЗДЕЛЕ \"КУПИТЬ\": \rHTTP://WWW.BITRIXSOFT.RU/BUY/\rИ В РАЗДЕЛЕ КУПИТЬ -> ДЛЯ ПАРТНЕРОВ:\nHTTP://WWW.BITRIXSOFT.RU/BUY/PARTNERS.PHP\r\n'),
(103, 'ed7ea0ffd867cd85636c9d60ea703ff3', 'В ЧЕМ РАЗНИЦА МЕЖДУ САЙТОМ И ЭКЗЕМПЛЯРОМ?\r\nНА ОСНОВЕ ОДНОГО ЭКЗЕМПЛЯРА ПРОДУКТА МОЖНО СОЗДАТЬ ДВА САЙТА В РАМКАХ ОДНОГО ВЕБ-ПРОЕКТА (НА ОДНОМ ЭКЗЕМПЛЯРЕ БАЗЫ ДАННЫХ). ЕСЛИ САЙТОВ В ПРОЕКТЕ БОЛЬШЕ ДВУХ, НЕОБХОДИМО ДОКУПИТЬ ЛИЦЕНЗИИ НА САЙТЫ.\nОБЩИМИ ДЛЯ САЙТОВ ЯВЛЯЮТСЯ:\n- БАЗА ПОЛЬЗОВАТЕЛЕЙ;\n- СИСТЕМА АВТОРИЗАЦИИ;\n- РЕКЛАМНОЕ ПРОСТРАНСТВО И Т.Д.\nСАЙТ ОБЛАДАЕТ СВОЕЙ СТРУКТУРОЙ, ФАЙЛАМИ, БЛОКАМИ, ОБЪЕКТАМИ, ПОЧТОВЫМИ СООБЩЕНИЯМИ И ЗАЧАСТУЮ УПРАВЛЯЕТСЯ ДРУГИМИ СОТРУДНИКАМИ. ТАКИМ ОБРАЗОМ, СОВОКУПНОСТЬ ПРАВИЛ, ОБЪЕКТОВ, СООБЩЕНИЙ, НАСТРОЕК, ФАЙЛОВ И ДРУГИХ СУЩНОСТЕЙ МЫ СВЯЗЫВАЕМ С САЙТОМ И ПОЗВОЛЯЕМ УПРАВЛЯТЬ С ИСПОЛЬЗОВАНИЕМ ЕДИНОГО ИНСТРУМЕНТАРИЯ.\nСАЙТЫ МОЖНО НАСТРОИТЬ КАК ОТДЕЛЬНЫЕ ПОДКАТАЛОГИ НА ОДНОМ ВЕБ-СЕРВЕРЕ И КАК ПОЛНОСТЬЮ РАЗНЫЕ ВЕБ-СЕРВЕРА, НАЧИНАЮЩИЕСЯ ОТ КОРНЯ, НО РАБОТАЮЩИЕ С ЕДИНОЙ БАЗОЙ ДАННЫХ.\nСИСТЕМА СТАТИСТИКИ УЖЕ ВЕДЕТ ЧАСТИЧНОЕ РАЗДЕЛЕНИЕ ДАННЫХ ПО САЙТАМ. ДЛЯ НЕСКОЛЬКИХ ДОМЕНОВ РАБОТАЕТ ТЕХНОЛОГИЯ ТРАНСФЕРА ДАННЫХ, И ПОСЕТИТЕЛЬ ПРИШЕДШИЙ НА САЙТ А, УЗНАЕТСЯ ДАЖЕ КОГДА ПРИХОДИТ НА САЙТ Б. В ДАЛЬНЕЙШЕМ, РАЗДЕЛЕНИЕ БУДЕТ ЕЩЕ БОЛЬШИМ И ПОЧТИ ВСЕ ОТЧЕТЫ БУДУТ СЧИТАТЬСЯ В РАЗРЕЗЕ ПО САЙТАМ.\r\n'),
(104, 'c94fec5b94603747d556973cc268ff17', 'КАК ОРГАНИЗОВАНО УПРАВЛЕНИЕ ПРАВАМИ В СИСТЕМЕ?\r\nВ СИСТЕМЕ \"БИТРИКС: УПРАВЛЕНИЕ САЙТОМ\" ПОДДЕРЖИВАЕТСЯ ДВА УРОВНЯ РАЗГРАНИЧЕНИЯ ПРАВ ДОСТУПА:\n1) \rДОСТУП НЕПОСРЕДСТВЕННО НА ФАЙЛЫ\r2) \rПРАВА В РАМКАХ ЛОГИКИ ТОГО ИЛИ ИНОГО МОДУЛЯ\rСНАЧАЛА СИСТЕМА ПРОВЕРЯЕТ ДОСТУП 1-ГО УРОВНЯ, ЗАТЕМ ПРИ НЕОБХОДИМОСТИ ПРОВЕРЯЕТСЯ ПРАВО ДОСТУПА 2-ГО УРОВНЯ.\nДЛЯ 1-ГО УРОВНЯ ДОСТУПА ИСПОЛЬЗУЮТСЯ СЛЕДУЮЩИЕ ВАРИАНТЫ:\n- ЗАПРЕЩЕН (ПРИ ОБРАЩЕНИИ К ФАЙЛУ ДОСТУП БУДЕТ ВСЕГДА ЗАПРЕЩЕН)\n- ЧТЕНИЕ (ПРИ ОБРАЩЕНИИ К ФАЙЛУ ДОСТУП БУДЕТ РАЗРЕШЕН)\n- ДОКУМЕНТООБОРОТ (ФАЙЛ МОЖЕТ БЫТЬ ОТРЕДАКТИРОВАН В РЕЖИМЕ ДОКУМЕНТООБОРОТА)\n- ЗАПИСЬ (ФАЙЛ МОЖЕТ БЫТЬ ОТРЕДАКТИРОВАН НЕПОСРЕДСТВЕННО)\nДАННЫЙ УРОВЕНЬ ДОСТУПА ЗАДАЕТСЯ В МЕНЮ \"СТРУКТУРА САЙТА\" -> \"УПРАВЛЕНИЕ\".\nЕСЛИ ПОЛЬЗОВАТЕЛЬ ОБЛАДАЕТ НЕСКОЛЬКИМИ УРОВНЯМИ ДОСТУПА НА ФАЙЛ, ТО ВЫБИРАЕТСЯ МАКСИМАЛЬНЫЙ.\nЕСЛИ РЕЧЬ ИДЕТ ОБ ОБЫЧНЫХ СТАТИЧНЫХ ПУБЛИЧНЫХ СТРАНИЦАХ, ТО К НИМ ПРИМЕНЯЕТСЯ ТОЛЬКО 1-ЫЙ УРОВЕНЬ ДОСТУПА.\nЕСЛИ ПОЛЬЗОВАТЕЛЬ ИМЕЕТ КАК МИНИМУМ ПРАВО \"ЧТЕНИЕ\" НА ФАЙЛ (1-ЫЙ УРОВЕНЬ ДОСТУПА) И ЕСЛИ ДАННЫЙ ФАЙЛ ЯВЛЯЕТСЯ ФУНКЦИОНАЛЬНОЙ ЧАСТЬЮ ТОГО ИЛИ ИНОГО МОДУЛЯ, ТО ПРОВЕРЯЮТСЯ ПРАВА ДОСТУПА 2-ГО УРОВНЯ, КОТОРЫЕ ЗАДАЮТСЯ В НАСТРОЙКАХ МОДУЛЯ.\r\n'),
(105, '72bf6fb5ea93f23d8cb33cde1e0c22d9', 'ГЛАВНАЯ СТРАНИЦА\r\n\r\n'),
(106, '687233d65d649bb683e2963f6d2f0378', 'BITRIX FRAMEWORK\r\nНОВОСТЬ ПРО BITRIX FRAMEWORK:\r\nНОВОСТЬ ПРО BITRIX FRAMEWORK:\r\n'),
(107, '8efc91e3b34c4eb70814ea68e0b9c45a', 'DMITRY EFIMOV\r\n\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_title`
--

CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_title`
--

INSERT INTO `b_search_content_title` (`SEARCH_CONTENT_ID`, `SITE_ID`, `POS`, `WORD`) VALUES
(1, 's1', 0, 'НЕДВИЖИМОСТЬ'),
(2, 's1', 0, 'ПОКУПКА'),
(3, 's1', 0, 'ПРОДАЖА'),
(4, 's1', 0, 'РАЗНОЕ'),
(5, 's1', 0, 'СДАЮ'),
(6, 's1', 0, 'СНИМУ'),
(7, 's1', 0, 'ОРГТЕХНИКА'),
(8, 's1', 0, 'ПОКУПКА'),
(9, 's1', 0, 'ПРОДАЖА'),
(10, 's1', 0, 'РАЗНОЕ'),
(11, 's1', 0, 'ТРАНСПОРТ'),
(12, 's1', 0, 'ГСМ'),
(13, 's1', 0, 'ПОКУПКА'),
(14, 's1', 0, 'ПРОДАЖА'),
(15, 's1', 0, 'УСЛУГИ'),
(16, 's1', 21, 'В'),
(16, 's1', 20, 'КВАРТИРУ'),
(16, 's1', 0, 'КУПЛЮ'),
(16, 's1', 6, 'ОДНОКОМНАТНУЮ'),
(16, 's1', 43, 'РАЙОНЕ'),
(16, 's1', 31, 'ЦЕНТРАЛЬНОМ'),
(17, 's1', 6, 'БИТРИКС'),
(17, 's1', 0, 'КУПЛЮ'),
(18, 's1', 11, 'В'),
(18, 's1', 10, 'ДВУХКОМНАТНАЯ'),
(18, 's1', 46, 'ДОМЕ'),
(18, 's1', 24, 'КВАРТИРА'),
(18, 's1', 0, 'ПРОДАЕТСЯ'),
(18, 's1', 35, 'СТРОЯЩЕМСЯ'),
(19, 's1', 7, 'ЗЕМЕЛЬНЫЕ'),
(19, 's1', 0, 'ПРОДАЮ'),
(19, 's1', 17, 'УЧАСТКИ'),
(20, 's1', 8, 'АРЕНДУ'),
(20, 's1', 6, 'В'),
(20, 's1', 20, 'И'),
(20, 's1', 15, 'КВАРТИРЫ'),
(20, 's1', 26, 'КОМНАТЫ'),
(20, 's1', 0, 'СДАЕМ'),
(21, 's1', 6, 'ПОМЕЩЕНИЕ'),
(21, 's1', 0, 'СНИМУ'),
(22, 's1', 10, '320'),
(22, 's1', 6, 'БМВ'),
(22, 's1', 0, 'КУПЛЮ'),
(23, 's1', 8, 'АВТОБУСЫ'),
(23, 's1', 0, 'ПРОДАЕМ'),
(24, 's1', 7, 'VOLKSWAGEN-JETTA'),
(24, 's1', 0, 'ПРОДАЮ'),
(25, 's1', 0, 'ПАССАЖИРСКИЕ'),
(25, 's1', 13, 'ПЕРЕВОЗКИ'),
(26, 's1', 13, 'ПЕРЕВОЗКИ'),
(26, 's1', 0, 'ТРАНСПОРТНЫЕ'),
(27, 's1', 7, 'КОМПЬЮТЕР'),
(27, 's1', 0, 'ПРОДАЮ'),
(28, 's1', 8, 'НОУТБУКИ'),
(28, 's1', 0, 'ПРОДАЕМ'),
(29, 's1', 6, 'АККУСТИЧЕСКУЮ'),
(29, 's1', 0, 'КУПЛЮ'),
(29, 's1', 20, 'СИСТЕМУ'),
(30, 's1', 6, 'ЗЕМЕЛЬНЫЙ'),
(30, 's1', 0, 'КУПЛЮ'),
(30, 's1', 16, 'УЧАСТОК'),
(31, 's1', 0, 'БИЗНЕС'),
(31, 's1', 1, 'И'),
(31, 's1', 9, 'ФИНАНСЫ'),
(32, 's1', 0, 'БАНКИ'),
(33, 's1', 0, 'МАРКЕТИНГ'),
(34, 's1', 0, 'НЕДВИЖИМОСТЬ'),
(35, 's1', 0, 'СТРАХОВАНИЕ'),
(36, 's1', 0, 'ДОМ'),
(36, 's1', 4, 'И'),
(36, 's1', 6, 'СЕМЬЯ'),
(37, 's1', 0, 'ДЕТИ'),
(38, 's1', 0, 'РЕМОНТ'),
(39, 's1', 7, 'ДЛЯ'),
(39, 's1', 11, 'ДОМА'),
(39, 's1', 0, 'ТОВАРЫ'),
(40, 's1', 6, 'И'),
(40, 's1', 0, 'НАУКА'),
(40, 's1', 8, 'ОБРАЗОВАНИЕ'),
(41, 's1', 0, 'ВУЗЫ'),
(42, 's1', 0, 'НАУКА'),
(43, 's1', 0, 'ШКОЛЫ'),
(44, 's1', 0, 'ЭКОЛОГИЯ'),
(45, 's1', 9, 'И'),
(45, 's1', 0, 'ОБЩЕСТВО'),
(45, 's1', 11, 'ПОЛИТИКА'),
(46, 's1', 0, 'ОБЩЕСТВЕННЫЕ'),
(46, 's1', 13, 'ОРГАНИЗАЦИИ'),
(47, 's1', 0, 'ПАРТИИ'),
(48, 's1', 0, 'РЕЛИГИЯ'),
(49, 's1', 6, 'И'),
(49, 's1', 0, 'ОТДЫХ'),
(49, 's1', 8, 'РАЗВЛЕЧЕНИЯ'),
(50, 's1', 0, 'ЗНАКОМСТВА'),
(51, 's1', 0, 'КЛУБЫ'),
(52, 's1', 0, 'РЫБАЛКА'),
(53, 's1', 0, 'СМИ'),
(54, 's1', 0, 'ГАЗЕТЫ'),
(55, 's1', 0, 'РАДИО'),
(56, 's1', 0, 'ТЕЛЕВИДЕНИЕ'),
(57, 's1', 7, 'И'),
(57, 's1', 0, 'ТОВАРЫ'),
(57, 's1', 9, 'УСЛУГИ'),
(58, 's1', 0, 'АПТЕКИ'),
(59, 's1', 0, 'ГОСТИНИЦЫ'),
(60, 's1', 0, 'МЕБЕЛЬ'),
(61, 's1', 0, 'ОДЕЖДА'),
(62, 's1', 12, 'БАНК'),
(62, 's1', 17, 'РОССИЙСКОЙ'),
(62, 's1', 28, 'ФЕДЕРАЦИИ'),
(62, 's1', 0, 'ЦЕНТРАЛЬНЫЙ'),
(63, 's1', 1, 'ГАЗПРОМБАНК'),
(64, 's1', 1, 'АЛЬФА-БАНК'),
(65, 's1', 6, '-'),
(65, 's1', 8, 'БАНКОВСКАЯ'),
(65, 's1', 1, 'ВТБ'),
(65, 's1', 19, 'ГРУППА'),
(66, 's1', 6, '-'),
(66, 's1', 20, 'АССОЦИАЦИЯ'),
(66, 's1', 31, 'МАРКЕТИНГА'),
(66, 's1', 1, 'РАМ'),
(66, 's1', 9, 'РОССИЙСКАЯ'),
(67, 's1', 2, '-'),
(67, 's1', 1, 'V-RATIO'),
(67, 's1', 12, 'МАРКЕТИНГОВЫЕ'),
(67, 's1', 26, 'УСЛУГИ'),
(68, 's1', 9, '-'),
(68, 's1', 21, 'ИССЛЕДОВАНИЮ'),
(68, 's1', 1, 'КОМКОН'),
(68, 's1', 18, 'ПО'),
(68, 's1', 34, 'РЫНКА'),
(68, 's1', 11, 'УСЛУГИ'),
(69, 's1', 23, '-'),
(69, 's1', 25, 'ИНФОРМАЦИОННЫЙ'),
(69, 's1', 9, 'НЕДВИЖИМОСТЬ'),
(69, 's1', 40, 'ПОРТАЛ'),
(69, 's1', 1, 'РУССКАЯ'),
(70, 's1', 21, 'БИБЛИОТЕКА'),
(70, 's1', 1, 'ДЕТСКАЯ'),
(70, 's1', 9, 'ЭЛЕКТРОННАЯ'),
(71, 's1', 14, '-'),
(71, 's1', 1, 'ДЕТСКИЙ'),
(71, 's1', 25, 'ДЛЯ'),
(71, 's1', 6, 'И'),
(71, 's1', 41, 'МАЛЫШЕЙ'),
(71, 's1', 9, 'МИР'),
(71, 's1', 29, 'РОДИТЕЛЕЙ'),
(71, 's1', 16, 'СТРАНИЦА'),
(72, 's1', 16, '-'),
(72, 's1', 1, 'ЖИЛЭКСПЕРТИЗА'),
(72, 's1', 2, 'И'),
(72, 's1', 33, 'КВАРТИР'),
(72, 's1', 43, 'ОФИСОВ'),
(72, 's1', 18, 'ПЕРЕПЛАНИРОВКА'),
(73, 's1', 11, '-'),
(73, 's1', 1, 'KOMOD'),
(73, 's1', 7, 'RU'),
(73, 's1', 44, 'МЕБЕЛИ'),
(73, 's1', 23, 'ПО'),
(73, 's1', 33, 'СИСТЕМА'),
(73, 's1', 13, 'СПРАВОЧНО-ПОИСКОВАЯ'),
(74, 's1', 10, '-'),
(74, 's1', 20, 'БЫТОВОЙ'),
(74, 's1', 3, 'ВИДЕО'),
(74, 's1', 1, 'М'),
(74, 's1', 12, 'ПРОДАЖА'),
(74, 's1', 28, 'ТЕХНИКИ'),
(75, 's1', 10, '-'),
(75, 's1', 12, 'ИНТЕРНЕТ-СУПЕРМАРКЕТ'),
(75, 's1', 1, 'КУПИСАМ'),
(76, 's1', 12, 'ГОСУДАРСТВЕННЫЙ'),
(76, 's1', 41, 'МГУ'),
(76, 's1', 1, 'МОСКОВСКИЙ'),
(76, 's1', 28, 'УНИВЕРСИТЕТ'),
(77, 's1', 24, 'ДРУЖБЫ'),
(77, 's1', 31, 'НАРОДОВ'),
(77, 's1', 1, 'РОССИЙСКИЙ'),
(77, 's1', 12, 'УНИВЕРСИТЕТ'),
(78, 's1', 34, 'В'),
(78, 's1', 26, 'ИМЕНИ'),
(78, 's1', 1, 'КЛАССИЧЕСКИЙ'),
(78, 's1', 37, 'ЛОМОНОСОВА'),
(78, 's1', 22, 'М'),
(78, 's1', 22, 'МГУ'),
(78, 's1', 14, 'ПАНСИОН'),
(79, 's1', 13, 'МЕДИЦИНСКИЙ'),
(79, 's1', 1, 'САРАТОВСКИЙ'),
(79, 's1', 25, 'УНИВЕРСИТЕТ'),
(80, 's1', 1, 'ИЗВЕСТИЯ'),
(80, 's1', 10, 'НАУКИ'),
(81, 's1', 31, 'SCITECLIBRARY'),
(81, 's1', 19, 'БИБЛИОТЕКА'),
(81, 's1', 0, 'НАУЧНО-ТЕХНИЧЕСКАЯ'),
(82, 's1', 11, '-'),
(82, 's1', 31, 'ИНТЕРНЕТ-ЖУРНАЛ'),
(82, 's1', 1, 'МЕМБРАНА'),
(82, 's1', 13, 'НАУЧНО-ПОПУЛЯРНЫЙ'),
(83, 's1', 11, 'АКАДЕМИЯ'),
(83, 's1', 20, 'НАУК'),
(83, 's1', 0, 'РОССИЙСКАЯ'),
(84, 's1', 5, '-'),
(84, 's1', 1, 'BUBO-SCHOOL'),
(84, 's1', 16, 'ИНФОРМАЦИОННО-СПРАВОЧНЫЙ'),
(84, 's1', 41, 'РЕСУРС'),
(85, 's1', 1, 'ИНТЕРНЕТ-ШКОЛА'),
(85, 's1', 33, 'ОБРАЗОВАНИЯ'),
(85, 's1', 16, 'ПОЛНОГО'),
(85, 's1', 24, 'СРЕДНЕГО'),
(86, 's1', 7, 'В'),
(86, 's1', 9, 'ИНТЕРНЕТ'),
(86, 's1', 1, 'ШКОЛЫ'),
(87, 's1', 19, '-'),
(87, 's1', 12, 'ЖИЗНЬ'),
(87, 's1', 39, 'ЖУРНАЛ'),
(87, 's1', 7, 'И'),
(87, 's1', 21, 'НАУЧНО-ПОПУЛЯРНЫЙ'),
(87, 's1', 1, 'ЭКОЛОГИЯ'),
(88, 's1', 1, 'МАТЕРИАЛЫ'),
(88, 's1', 11, 'ПО'),
(88, 's1', 14, 'ЭКОЛОГИЧЕСКОЙ'),
(88, 's1', 28, 'ЭКСПЕРТИЗЕ'),
(89, 's1', 18, '-'),
(89, 's1', 27, 'ЗДОРОВЬЕ'),
(89, 's1', 1, 'ОКРУЖАЮЩАЯ'),
(89, 's1', 20, 'РИСК'),
(89, 's1', 12, 'СРЕДА'),
(90, 's1', 0, 'БИТРИКС'),
(90, 's1', 20, 'САЙТОМ'),
(90, 's1', 9, 'УПРАВЛЕНИЕ'),
(91, 's1', 10, '-'),
(91, 's1', 1, 'БЕЛЛОНА'),
(91, 's1', 39, 'НОРВЕГИЯ'),
(91, 's1', 26, 'ОБЪЕДИНЕНИЕ'),
(91, 's1', 12, 'ЭКОЛОГИЧЕСКОЕ'),
(92, 's1', 11, '-'),
(92, 's1', 1, 'KOMOD'),
(92, 's1', 7, 'RU'),
(92, 's1', 44, 'МЕБЕЛИ'),
(92, 's1', 23, 'ПО'),
(92, 's1', 33, 'СИСТЕМА'),
(92, 's1', 13, 'СПРАВОЧНО-ПОИСКОВАЯ'),
(93, 's1', 0, 'НАСТРОЙКА'),
(93, 's1', 10, 'ПРОДУКТА'),
(94, 's1', 20, 'ЗАКАЗА'),
(94, 's1', 8, 'И'),
(94, 's1', 13, 'ОПЛАТА'),
(94, 's1', 0, 'ОФОРМЛЕНИЕ'),
(95, 's1', 0, 'ПАРТНЕРСКАЯ'),
(95, 's1', 12, 'ПРОГРАММА'),
(96, 's1', 25, '404'),
(96, 's1', 0, 'КАК'),
(96, 's1', 4, 'НАСТРОИТЬ'),
(96, 's1', 14, 'ОБРАБОТЧИК'),
(96, 's1', 29, 'ОШИБКИ'),
(97, 's1', 38, 'КОМПАНИИ'),
(97, 's1', 6, 'ЛИ'),
(97, 's1', 17, 'ЛИЦО'),
(97, 's1', 0, 'МОЖЕТ'),
(97, 's1', 28, 'ПАРТНЕРОМ'),
(97, 's1', 22, 'СТАТЬ'),
(97, 's1', 9, 'ЧАСТНОЕ'),
(98, 's1', 0, 'ДЕЙСТВУЮТ'),
(98, 's1', 32, 'ДЛЯ'),
(98, 's1', 10, 'ЛИ'),
(98, 's1', 55, 'ПАРТНЕРОВ'),
(98, 's1', 13, 'ПАРТНЕРСКИЕ'),
(98, 's1', 48, 'САЙТОВ'),
(98, 's1', 25, 'СКИДКИ'),
(98, 's1', 36, 'СОБСТВЕННЫХ'),
(99, 's1', 57, 'БЕСПЛАТНАЯ'),
(99, 's1', 21, 'ГОД'),
(99, 's1', 46, 'ЗАКОНЧИТСЯ'),
(99, 's1', 7, 'И'),
(99, 's1', 40, 'КОГДА'),
(99, 's1', 83, 'ОБНОВЛЕНИЯ'),
(99, 's1', 31, 'ПОКУПКИ'),
(99, 's1', 25, 'ПОСЛЕ'),
(99, 's1', 4, 'ПРОИЗОЙДЕТ'),
(99, 's1', 68, 'ТЕХПОДДЕРЖКА'),
(99, 's1', 15, 'ЧЕРЕЗ'),
(99, 's1', 0, 'ЧТО'),
(100, 's1', 2, 'НА'),
(100, 's1', 40, 'НДС'),
(100, 's1', 5, 'ПРОДУКТА'),
(100, 's1', 17, 'С'),
(100, 's1', 17, 'САЙТЕ'),
(100, 's1', 23, 'УКАЗАНА'),
(100, 's1', 33, 'УЧЕТОМ'),
(100, 's1', 0, 'ЦЕНА'),
(101, 's1', 47, 'ВСЕ'),
(101, 's1', 44, 'НА'),
(101, 's1', 8, 'ПАРТНЕРСКИХ'),
(101, 's1', 60, 'ПРОДУКТА'),
(101, 's1', 27, 'РАСПРОСТРАНЯЕТСЯ'),
(101, 's1', 51, 'РЕДАКЦИИ'),
(101, 's1', 0, 'СИСТЕМА'),
(101, 's1', 20, 'СКИДОК'),
(102, 's1', 26, 'ДЕЙСТВИЙ'),
(102, 's1', 50, 'ЗАКАЗА'),
(102, 's1', 0, 'КАКОВА'),
(102, 's1', 39, 'ОФОРМЛЕНИИ'),
(102, 's1', 7, 'ПОСЛЕДОВАТЕЛЬНОСТЬ'),
(102, 's1', 35, 'ПРИ'),
(103, 's1', 0, 'В'),
(103, 's1', 10, 'И'),
(103, 's1', 14, 'МЕЖДУ'),
(103, 's1', 6, 'РАЗНИЦА'),
(103, 's1', 20, 'САЙТОМ'),
(103, 's1', 2, 'ЧЕМ'),
(103, 's1', 29, 'ЭКЗЕМПЛЯРОМ'),
(104, 's1', 12, 'В'),
(104, 's1', 0, 'КАК'),
(104, 's1', 4, 'ОРГАНИЗОВАНО'),
(104, 's1', 28, 'ПРАВАМИ'),
(104, 's1', 38, 'СИСТЕМЕ'),
(104, 's1', 17, 'УПРАВЛЕНИЕ'),
(105, 's1', 0, 'ГЛАВНАЯ'),
(105, 's1', 8, 'СТРАНИЦА'),
(106, 's1', 0, 'BITRIX'),
(106, 's1', 7, 'FRAMEWORK'),
(107, 's1', 0, 'DMITRY'),
(107, 's1', 7, 'EFIMOV');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_custom_rank`
--

CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_phrase`
--

CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_stem`
--

CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_stem`
--

INSERT INTO `b_search_stem` (`ID`, `STEM`) VALUES
(628, '-F'),
(630, '0-9A-ZA-Z_'),
(16, '1-2'),
(792, '1-ГО'),
(815, '1-Ы'),
(61, '10'),
(203, '12000'),
(144, '15'),
(165, '1600'),
(192, '17'),
(22, '18'),
(91, '1993-96'),
(794, '2-ГО'),
(118, '2001'),
(495, '2001Г'),
(48, '2007'),
(50, '2008'),
(171, '20G'),
(693, '22'),
(26, '23'),
(168, '256MB'),
(219, '2ШТ'),
(90, '320'),
(81, '40-45'),
(611, '404'),
(145, '500'),
(179, '5200'),
(187, '56K'),
(41, '62'),
(181, '64M'),
(190, '757'),
(97, '7700'),
(172, '80G'),
(218, 'AC-90'),
(163, 'AMD'),
(164, 'ATHLON'),
(821, 'BITRIX'),
(683, 'BITRIXSOFT'),
(525, 'BUBO-SCHOOL'),
(726, 'BUY'),
(173, 'CD-ROM'),
(174, 'CD-RW'),
(137, 'CD-МАГНИТОЛ'),
(616, 'CGI'),
(176, 'CREATIVE'),
(201, 'CX3650'),
(826, 'DMITRY'),
(132, 'ECP'),
(827, 'EFIMOV'),
(200, 'EPSON'),
(631, 'ERRORDOCUMENT'),
(169, 'FDD'),
(822, 'FRAMEWORK'),
(180, 'FX'),
(170, 'HDD'),
(620, 'HTACCESS'),
(589, 'HTML-ВЕРСТК'),
(823, 'INCLUDE'),
(825, 'INDEX'),
(633, 'ISAPI'),
(418, 'KOMOD'),
(116, 'LT'),
(109, 'MERCEDES'),
(111, 'NEOPLAN'),
(191, 'NF'),
(178, 'NVIDIA'),
(185, 'OMNI'),
(624, 'ON'),
(727, 'PARTNERS'),
(186, 'PCI'),
(614, 'PHP'),
(574, 'QUOT'),
(167, 'RAM'),
(627, 'REQUEST_FILENAME'),
(625, 'REWRITEBASE'),
(626, 'REWRITECOND'),
(623, 'REWRITEENGINE'),
(629, 'REWRITERULE'),
(189, 'SAMSUNG'),
(497, 'SCITECLIBRARY'),
(110, 'SETRA'),
(684, 'SITEMANAGER'),
(114, 'SPRINTER'),
(195, 'UPC'),
(341, 'V-RATIO'),
(685, 'VERSIONS'),
(115, 'VOLKSWAGEN'),
(117, 'VOLKSWAGEN-JETTA'),
(824, 'VOTE'),
(456, 'WEB-САЙТ'),
(455, 'WEB-САЙТОВ'),
(183, 'WINFAST'),
(166, 'XP'),
(450, 'АБИТУРИЕНТ'),
(449, 'АБИТУРИЕНТОВ'),
(131, 'АБС'),
(98, 'АВТОБУС'),
(506, 'АВТОР'),
(743, 'АВТОРИЗАЦ'),
(505, 'АВТОРОВ'),
(45, 'АВТОСТОЯНК'),
(287, 'АДРЕС'),
(459, 'АДРЕСН'),
(521, 'АКАДЕМ'),
(216, 'АККУСТИЧЕСК'),
(93, 'АКПП'),
(690, 'АКТИВН'),
(88, 'АЛЕКСАНДР'),
(294, 'АЛЬФА-БАНК'),
(139, 'АМЕРИК'),
(363, 'АНАЛИТИК'),
(302, 'АНАЛИТИЧЕСК'),
(566, 'АНОМАЛЬН'),
(338, 'АНОНС'),
(348, 'АНТИКРИЗИСН'),
(256, 'АПТЕК'),
(68, 'АРЕНД'),
(493, 'АРХ'),
(326, 'АССОЦИАЦ'),
(595, 'АТОМН'),
(127, 'АЭРБЭГ'),
(126, 'АЭРБЭГОВ'),
(151, 'АЭРОПОРТ'),
(150, 'АЭРОПОРТОВ'),
(87, 'БАГРАТИОН'),
(72, 'БАЗ'),
(478, 'БАЗОВ'),
(18, 'БАЛКОН'),
(58, 'БАЛТИЙСК'),
(229, 'БАНК'),
(308, 'БАНКОВСК'),
(306, 'БАНКОМАТ'),
(305, 'БАНКОМАТОВ'),
(590, 'БЕЛЛОН'),
(383, 'БЕСПЛАТН'),
(29, 'БЕСПОКО'),
(375, 'БИБЛИОТЕК'),
(227, 'БИЗНЕС'),
(30, 'БИТРИКС'),
(492, 'БЛОГ'),
(747, 'БЛОК'),
(89, 'БМВ'),
(736, 'БОЛЬШ'),
(638, 'БУДЕТ'),
(779, 'БУДУТ'),
(428, 'БЫТОВ'),
(316, 'ВАЛЮТН'),
(642, 'ВАРИАНТ'),
(226, 'ВАРИАТ'),
(613, 'ВАС'),
(548, 'ВЕБ-КОЛЬЦ'),
(670, 'ВЕБ-ПРОЕКТ'),
(669, 'ВЕБ-ПРОЕКТОВ'),
(524, 'ВЕБ-СЕРВЕР'),
(523, 'ВЕБ-СЕРВЕРОВ'),
(768, 'ВЕДЕТ'),
(708, 'ВЕРС'),
(358, 'ВИД'),
(177, 'ВИДЕ'),
(357, 'ВИДОВ'),
(551, 'ВИКТОРИН'),
(436, 'ВИРТУАЛЬН'),
(320, 'ВКЛАД'),
(712, 'ВКЛЮЧ'),
(597, 'ВМФ'),
(643, 'ВОЗМОЖ'),
(75, 'ВОЗМОЖН'),
(441, 'ВСЕВОЗМОЖН'),
(99, 'ВСЕГД'),
(718, 'ВСЕМ'),
(409, 'ВСЕХ'),
(307, 'ВТБ'),
(238, 'ВУЗ'),
(543, 'ВХОД'),
(807, 'ВЫБИРА'),
(532, 'ВЫБОР'),
(92, 'ВЫПУСК'),
(681, 'ВЫПУЩЕН'),
(339, 'ВЫСТАВОК'),
(482, 'ВЫСШ'),
(62, 'ГА'),
(253, 'ГАЗЕТ'),
(281, 'ГАЗПРОМБАНК'),
(206, 'ГАРАНТ'),
(820, 'ГЛАВН'),
(51, 'ГОД'),
(19, 'ГОРОД'),
(106, 'ГОРОДСК'),
(257, 'ГОСТИНИЦ'),
(445, 'ГОСУДАРСТВЕН'),
(155, 'ГРУЗ'),
(154, 'ГРУЗОВ'),
(309, 'ГРУПП'),
(9, 'ГСМ'),
(777, 'ДАЛЬН'),
(687, 'ДАЛЬШ'),
(73, 'ДАН'),
(734, 'ДВА'),
(737, 'ДВУХ'),
(34, 'ДВУХКОМНАТН'),
(658, 'ДЕЙСТВ'),
(270, 'ДЕНЕЖН'),
(233, 'ДЕТ'),
(400, 'ДЕТЕНЫШ'),
(373, 'ДЕТСК'),
(453, 'ДЕЯТЕЛЬН'),
(664, 'ДИЗАЙН'),
(665, 'ДИСТРИБУЦ'),
(70, 'ДЛИТЕЛЬН'),
(635, 'ДОБАВ'),
(617, 'ДОБАВЬТ'),
(285, 'ДОВЕРИТЕЛЬН'),
(490, 'ДОВУЗОВСК'),
(52, 'ДОГОВОР'),
(800, 'ДОКУМЕНТООБОРОТ'),
(739, 'ДОКУП'),
(36, 'ДОМ'),
(772, 'ДОМЕН'),
(771, 'ДОМЕНОВ'),
(467, 'ДОПОЛНИТЕЛЬН'),
(158, 'ДОРОГ'),
(634, 'ДОСТАТОЧН'),
(785, 'ДОСТУП'),
(476, 'ДОШКОЛЬН'),
(323, 'ДР'),
(403, 'ДРУГ'),
(461, 'ДРУЖБ'),
(160, 'ЕВРОП'),
(760, 'ЕДИН'),
(275, 'ЕЖЕДНЕВН'),
(223, 'ЖЕЛАТЕЛЬН'),
(157, 'ЖЕЛЕЗН'),
(516, 'ЖИВ'),
(401, 'ЖИВОТН'),
(552, 'ЖИЗН'),
(404, 'ЖИЛЭКСПЕРТИЗ'),
(513, 'ЖУРНА'),
(699, 'ЗАВЕРШЕН'),
(397, 'ЗАГАДК'),
(805, 'ЗАДА'),
(329, 'ЗАДАЧ'),
(396, 'ЗАДАЧК'),
(607, 'ЗАКАЗ'),
(722, 'ЗАКЗ'),
(412, 'ЗАКЛЮЧЕН'),
(560, 'ЗАКОНОДАТЕЛЬСТВ'),
(675, 'ЗАКОНЧ'),
(803, 'ЗАП'),
(796, 'ЗАПРЕЩ'),
(377, 'ЗАРУБЕЖН'),
(793, 'ЗАТ'),
(686, 'ЗАХОТ'),
(751, 'ЗАЧАСТ'),
(77, 'ЗАЯВК'),
(20, 'ЗВОН'),
(175, 'ЗВУК'),
(564, 'ЗДОРОВ'),
(55, 'ЗЕМЕЛЬН'),
(249, 'ЗНАКОМСТВ'),
(220, 'ИДЕАЛЬН'),
(810, 'ИДЕТ'),
(491, 'ИЗВЕСТ'),
(458, 'ИЗДАН'),
(502, 'ИЗОБРЕТЕН'),
(652, 'ИЗУЧ'),
(389, 'ИЛЛЮСТРИРОВА'),
(816, 'ИМЕЕТ'),
(472, 'ИМЕН'),
(788, 'ИН'),
(350, 'ИНВЕСТИЦ'),
(761, 'ИНСТРУМЕНТАР'),
(540, 'ИНТЕРНЕТ'),
(512, 'ИНТЕРНЕТ-ЖУРНА'),
(444, 'ИНТЕРНЕТ-МАГАЗИН'),
(443, 'ИНТЕРНЕТ-МАГАЗИНОВ'),
(578, 'ИНТЕРНЕТ-ПРОЕКТ'),
(440, 'ИНТЕРНЕТ-СУПЕРМАРКЕТ'),
(546, 'ИНТЕРНЕТ-ТЕХНОЛОГ'),
(535, 'ИНТЕРНЕТ-ШКОЛ'),
(581, 'ИНТЕРФЕЙС'),
(269, 'ИНФОРМАЦ'),
(361, 'ИНФОРМАЦИОН'),
(526, 'ИНФОРМАЦИОННО-СПРАВОЧН'),
(321, 'ИПОТЕЧН'),
(655, 'ИСКЛЮЧЕН'),
(795, 'ИСПОЛЬЗ'),
(706, 'ИСПОЛЬЗОВА'),
(759, 'ИСПОЛЬЗОВАН'),
(694, 'ИСПОЛЬЗУЕМ'),
(346, 'ИССЛЕДОВАН'),
(262, 'ИСТОР'),
(437, 'КАЗИН'),
(719, 'КАКОВ'),
(156, 'КАЛИНИНГРАД'),
(38, 'КАРАМЗИН'),
(318, 'КАРТ'),
(398, 'КАРТИНК'),
(202, 'КАРТРИДЖ'),
(364, 'КАТАЛОГ'),
(465, 'КАФЕДР'),
(42, 'КВ'),
(13, 'КВАРТИР'),
(193, 'КЛАВИАТУР'),
(470, 'КЛАССИЧЕСК'),
(567, 'КЛИМАТИЧЕСК'),
(250, 'КЛУБ'),
(279, 'КЛЮЧ'),
(278, 'КЛЮЧЕВ'),
(460, 'КНИГ'),
(79, 'КНИЖН'),
(717, 'КО'),
(120, 'КОЖАН'),
(196, 'КОЛОНК'),
(197, 'КОМБ'),
(351, 'КОМКОН'),
(483, 'КОММУНИКАЦ'),
(69, 'КОМНАТ'),
(345, 'КОМПАН'),
(138, 'КОМПЛЕКТАЦ'),
(161, 'КОМПЬЮТЕР'),
(130, 'КОНДИЦИОНЕР'),
(47, 'КОНЕЦ'),
(507, 'КОНКУРС'),
(342, 'КОНСАЛТИНГ'),
(413, 'КОНСТРУКЦ'),
(367, 'КОНСУЛЬТАЦ'),
(530, 'КОНСУЛЬТИРОВАН'),
(324, 'КОНТАКТ'),
(417, 'КОНТАКТН'),
(488, 'КОНТАКТНО-СПРАВОЧН'),
(123, 'КОНТРОЛ'),
(340, 'КОНФЕРЕНЦ'),
(420, 'КООРДИНАТ'),
(661, 'КОП'),
(618, 'КОРН'),
(515, 'КОТОР'),
(64, 'КОТТЕДЖ'),
(317, 'КРЕДИТН'),
(322, 'КРЕДИТОВАН'),
(122, 'КРУИЗ'),
(725, 'КУП'),
(439, 'КУПИС'),
(11, 'КУПЛ'),
(599, 'ЛЕДОКОЛ'),
(84, 'ЛЕНИНСК'),
(520, 'ЛЕНТ'),
(378, 'ЛИТЕРАТУР'),
(284, 'ЛИЦ'),
(740, 'ЛИЦЕНЗ'),
(787, 'ЛОГИК'),
(474, 'ЛОМОНОС'),
(473, 'ЛОМОНОСОВ'),
(691, 'ЛЬГОТН'),
(128, 'ЛЮК'),
(494, 'МА'),
(80, 'МАГАЗИН'),
(808, 'МАКСИМАЛЬН'),
(387, 'МАЛЫШ'),
(230, 'МАРКЕТИНГ'),
(332, 'МАРКЕТИНГОВ'),
(108, 'МАРОК'),
(354, 'МАССОВ'),
(500, 'МАТЕРИА'),
(457, 'МАТЕРИАЛ'),
(499, 'МАТЕРИАЛОВ'),
(447, 'МГУ'),
(258, 'МЕБЕЛ'),
(487, 'МЕДИЦИНСК'),
(729, 'МЕЖД'),
(314, 'МЕЖДУНАРОДН'),
(510, 'МЕМБРА'),
(559, 'МЕНЕДЖМЕНТ'),
(806, 'МЕНЮ'),
(654, 'МЕНЯ'),
(148, 'МЕСТ'),
(96, 'МЕТАЛЛИК'),
(335, 'МЕТОД'),
(113, 'МИКРОАВТОБУС'),
(817, 'МИНИМУМ'),
(384, 'МИР'),
(402, 'МНОГ'),
(184, 'МОД'),
(789, 'МОДУЛ'),
(640, 'МОЖЕТ'),
(723, 'МОЖН'),
(698, 'МОМЕНТ'),
(188, 'МОНИТОР'),
(558, 'МОНИТОРИНГ'),
(59, 'МОР'),
(102, 'МОСКВ'),
(39, 'МОСКОВСК'),
(136, 'МУЛЬТИ-РУЛ'),
(394, 'МУЛЬТИК'),
(393, 'МУЛЬТИКОВ'),
(388, 'МУЛЬТФИЛЬМ'),
(194, 'МЫШ'),
(210, 'НАЙД'),
(213, 'НАЙДЕН'),
(724, 'НАЙТ'),
(100, 'НАЛИЧ'),
(650, 'НАМ'),
(463, 'НАРОД'),
(462, 'НАРОДОВ'),
(609, 'НАСТРО'),
(755, 'НАСТРОЕК'),
(605, 'НАСТРОЙК'),
(236, 'НАУК'),
(452, 'НАУЧН'),
(511, 'НАУЧНО-ПОПУЛЯРН'),
(496, 'НАУЧНО-ТЕХНИЧЕСК'),
(49, 'НАЧА'),
(477, 'НАЧАЛЬН'),
(765, 'НАЧИНА'),
(74, 'НАШ'),
(711, 'НДС'),
(1, 'НЕДВИЖИМ'),
(435, 'НЕДЕЛЬН'),
(330, 'НЕКОММЕРЧЕСК'),
(554, 'НЕКОТОР'),
(738, 'НЕОБХОДИМ'),
(786, 'НЕПОСРЕДСТВЕН'),
(668, 'НЕСКОЛЬК'),
(211, 'НИЖ'),
(208, 'НИЗК'),
(703, 'НИКАК'),
(814, 'НИМ'),
(103, 'НОВ'),
(273, 'НОВОСТ'),
(365, 'НОВОСТРОЕК'),
(592, 'НОРВЕГ'),
(503, 'НОУ-ХА'),
(205, 'НОУТБУК'),
(688, 'НУЖН'),
(355, 'ОБЗОР'),
(746, 'ОБЛАДА'),
(343, 'ОБЛАСТ'),
(677, 'ОБНОВЛЕН'),
(274, 'ОБНОВЛЯ'),
(610, 'ОБРАБОТЧИК'),
(752, 'ОБРАЗ'),
(237, 'ОБРАЗОВАН'),
(549, 'ОБРАЗОВАТЕЛЬН'),
(797, 'ОБРАЩЕН'),
(518, 'ОБСУЖДЕН'),
(547, 'ОБУЧА'),
(536, 'ОБУЧЕН'),
(741, 'ОБЩ'),
(331, 'ОБЩЕРОССИЙСК'),
(241, 'ОБЩЕСТВ'),
(243, 'ОБЩЕСТВЕН'),
(591, 'ОБЪЕДИНЕН'),
(748, 'ОБЪЕКТ'),
(754, 'ОБЪЕКТОВ'),
(811, 'ОБЫЧН'),
(44, 'ОГОРОЖ'),
(259, 'ОДЕЖД'),
(697, 'ОДИН'),
(733, 'ОДН'),
(12, 'ОДНОКОМНАТН'),
(390, 'ОЗВУЧЕН'),
(561, 'ОКРУЖА'),
(333, 'ОМС'),
(529, 'ОНЛАЙН-ТЕСТ'),
(565, 'ОПАСН'),
(334, 'ОПИСАН'),
(606, 'ОПЛАТ'),
(244, 'ОРГАНИЗАЦ'),
(267, 'ОРГАНИЗАЦИОН'),
(781, 'ОРГАНИЗОВА'),
(7, 'ОРГТЕХНИК'),
(732, 'ОСН'),
(731, 'ОСНОВ'),
(263, 'ОСНОВН'),
(76, 'ОСТАВ'),
(247, 'ОТД'),
(304, 'ОТДЕЛЕН'),
(762, 'ОТДЕЛЬН'),
(311, 'ОТКРЫТ'),
(142, 'ОТЛИЧН'),
(531, 'ОТНОСИТЕЛЬН'),
(704, 'ОТРАЗ'),
(801, 'ОТРЕДАКТИРОВА'),
(603, 'ОТХОД'),
(292, 'ОТЧЕТ'),
(310, 'ОТЧЕТН'),
(407, 'ОФИС'),
(366, 'ОФИСН'),
(406, 'ОФИСОВ'),
(448, 'ОФИЦИАЛЬН'),
(414, 'ОФОРМЛЕН'),
(612, 'ОШИБК'),
(471, 'ПАНСИОН'),
(425, 'ПАРАМЕТР'),
(245, 'ПАРТ'),
(300, 'ПАРТНЕР'),
(299, 'ПАРТНЕРОВ'),
(608, 'ПАРТНЕРСК'),
(146, 'ПАССАЖИРСК'),
(509, 'ПАТЕНТОВАН'),
(667, 'ПЕРЕВЕСТ'),
(147, 'ПЕРЕВОЗК'),
(405, 'ПЕРЕПЛАНИРОВК'),
(352, 'ПЕРЕЧЕН'),
(701, 'ПЕРИОД'),
(392, 'ПЕСЕНК'),
(522, 'ПЛАН-КАРТ'),
(666, 'ПЛАНИРУЕТ'),
(40, 'ПЛОЩАД'),
(21, 'ПН-ПТ'),
(57, 'ПОБЕРЕЖ'),
(224, 'ПОБЛИЖ'),
(381, 'ПОВЕСТ'),
(214, 'ПОДАРОК'),
(376, 'ПОДБОРК'),
(533, 'ПОДГОТОВК'),
(782, 'ПОДДЕРЖИВА'),
(508, 'ПОДДЕРЖК'),
(104, 'ПОДЕРЖА'),
(763, 'ПОДКАТАЛОГ'),
(134, 'ПОДОГР'),
(133, 'ПОДОГРЕВ'),
(648, 'ПОДПИСАН'),
(555, 'ПОДПИСК'),
(286, 'ПОДРОБН'),
(82, 'ПОДСОБК'),
(582, 'ПОЗВОЛЯ'),
(423, 'ПОИСК'),
(276, 'ПОИСКОВ'),
(2, 'ПОКУПК'),
(242, 'ПОЛИТИК'),
(124, 'ПОЛН'),
(764, 'ПОЛНОСТ'),
(557, 'ПОЛНОТЕКСТОВ'),
(129, 'ПОЛОЖЕН'),
(212, 'ПОЛУЧ'),
(742, 'ПОЛЬЗОВАТЕЛ'),
(78, 'ПОМЕЩЕН'),
(651, 'ПОНАДОБ'),
(580, 'ПОНЯТН'),
(362, 'ПОРТА'),
(653, 'ПОРТФОЛ'),
(542, 'ПОРЯДОК'),
(773, 'ПОСЕТИТЕЛ'),
(636, 'ПОСЛ'),
(720, 'ПОСЛЕДОВАТЕЛЬН'),
(28, 'ПОСРЕДНИК'),
(489, 'ПОСТУПЛЕН'),
(296, 'ПОТЕНЦИАЛЬН'),
(778, 'ПОЧТ'),
(749, 'ПОЧТОВ'),
(85, 'ПР'),
(426, 'ПРАВ'),
(265, 'ПРАВОВ'),
(433, 'ПРАЙС-ЛИСТ'),
(112, 'ПРЕДЛАГА'),
(442, 'ПРЕДЛОЖЕН'),
(538, 'ПРЕДМЕТ'),
(657, 'ПРЕДОСТАВЛЯ'),
(700, 'ПРЕДЫДУЩ'),
(585, 'ПРИВЛЕК'),
(349, 'ПРИВЛЕЧЕН'),
(485, 'ПРИЕМ'),
(438, 'ПРИЗ'),
(716, 'ПРИМЕНЯ'),
(198, 'ПРИНТЕР'),
(646, 'ПРИНЯТ'),
(672, 'ПРИОБРЕСТ'),
(776, 'ПРИХОД'),
(774, 'ПРИШЕДШ'),
(140, 'ПРОБЕГ'),
(593, 'ПРОБЛЕМ'),
(791, 'ПРОВЕРЯ'),
(469, 'ПРОГРАММ'),
(588, 'ПРОГРАММИРОВАН'),
(572, 'ПРОГРАММН'),
(33, 'ПРОДА'),
(3, 'ПРОДАЖ'),
(689, 'ПРОДЛ'),
(692, 'ПРОДЛЕН'),
(695, 'ПРОДЛЯ'),
(573, 'ПРОДУКТ'),
(432, 'ПРОЕЗД'),
(337, 'ПРОЕКТ'),
(416, 'ПРОЕКТИРОВАН'),
(336, 'ПРОЕКТОВ'),
(674, 'ПРОИЗОЙДЕТ'),
(745, 'ПРОСТРАНСТВ'),
(27, 'ПРОСЬБ'),
(481, 'ПРОФИЛЬНО-ПРАГМАТИЧЕСК'),
(162, 'ПРОЦЕССОР'),
(682, 'ПУБЛИК'),
(359, 'ПУБЛИКАЦ'),
(813, 'ПУБЛИЧН'),
(83, 'Р-НЕ'),
(293, 'РАБОТ'),
(766, 'РАБОТА'),
(254, 'РАД'),
(602, 'РАДИОАКТИВН'),
(577, 'РАЗВИТ'),
(248, 'РАЗВЛЕЧЕН'),
(784, 'РАЗГРАНИЧЕН'),
(468, 'РАЗДЕЛ'),
(770, 'РАЗДЕЛЕН'),
(107, 'РАЗЛИЧН'),
(4, 'РАЗН'),
(728, 'РАЗНИЦ'),
(601, 'РАЗОРУЖЕН'),
(303, 'РАЗРАБОТК'),
(644, 'РАЗРАБОТЧИК'),
(780, 'РАЗРЕЗ'),
(799, 'РАЗРЕШ'),
(415, 'РАЗРЕШЕН'),
(15, 'РАЙОН'),
(325, 'РАМ'),
(735, 'РАМК'),
(715, 'РАСПРОСТРАНЯ'),
(663, 'РАССКАЗЫВА'),
(225, 'РАССМОТР'),
(315, 'РАСЧЕТ'),
(356, 'РЕАЛИЗУЕМ'),
(514, 'РЕАЛЬН'),
(534, 'РЕБЕНК'),
(53, 'РЕГИСТРИР'),
(680, 'РЕДАКЦ'),
(802, 'РЕЖИМ'),
(434, 'РЕЙТИНГ'),
(744, 'РЕКЛАМН'),
(246, 'РЕЛИГ'),
(234, 'РЕМОНТ'),
(527, 'РЕСУРС'),
(809, 'РЕЧ'),
(702, 'РЕШ'),
(647, 'РЕШЕН'),
(563, 'РИСК'),
(371, 'РИЭЛТОР'),
(370, 'РИЭЛТОРОВ'),
(696, 'РОВН'),
(386, 'РОДИТЕЛ'),
(291, 'РОСС'),
(260, 'РОССИЙСК'),
(360, 'РУССК'),
(141, 'РФ'),
(251, 'РЫБАЛК'),
(272, 'РЫНК'),
(32, 'САЙТ'),
(645, 'САЙТОВ'),
(121, 'САЛА'),
(486, 'САРАТОВСК'),
(25, 'СБ-ВС'),
(498, 'СБОРНИК'),
(295, 'СВЕДЕН'),
(671, 'СВЯЗА'),
(758, 'СВЯЗЫВА'),
(5, 'СДА'),
(46, 'СДАЧ'),
(222, 'СЕЛЬХОЗНАЗНАЧЕН'),
(66, 'СЕЛЬХОЗЯЙСТВЕН'),
(232, 'СЕМ'),
(544, 'СЕРВЕР'),
(550, 'СЕТЕВ'),
(135, 'СИДЕН'),
(217, 'СИСТ'),
(277, 'СИСТЕМ'),
(379, 'СКАЗК'),
(391, 'СКАЗОЧК'),
(199, 'СКАНЕР'),
(382, 'СКАЧА'),
(679, 'СКАЧИВА'),
(659, 'СКИДК'),
(714, 'СКИДОК'),
(621, 'СЛЕД'),
(280, 'СЛОВ'),
(569, 'СЛОВАР'),
(252, 'СМИ'),
(705, 'СМОЖЕТ'),
(790, 'СНАЧА'),
(159, 'СНГ'),
(6, 'СНИМ'),
(673, 'СО'),
(660, 'СОБСТВЕН'),
(528, 'СОВЕТ'),
(753, 'СОВОКУПН'),
(649, 'СОГЛАШЕН'),
(637, 'СОЗДА'),
(750, 'СООБЩЕН'),
(143, 'СОСТОЯН'),
(60, 'СОТОК'),
(298, 'СОТРУДНИК'),
(297, 'СОТРУДНИКОВ'),
(587, 'СПЕЦИАЛИСТ'),
(586, 'СПЕЦИАЛИСТОВ'),
(454, 'СПИСОК'),
(372, 'СПРАВОЧН'),
(419, 'СПРАВОЧНО-ПОИСКОВ'),
(562, 'СРЕД'),
(479, 'СРЕДН'),
(353, 'СРЕДСТВ'),
(71, 'СРОК'),
(319, 'СРОЧН'),
(721, 'ССЫЛК'),
(545, 'ССЫЛОК'),
(641, 'СТАТ'),
(767, 'СТАТИСТИК'),
(812, 'СТАТИЧН'),
(266, 'СТАТУС'),
(380, 'СТИХ'),
(344, 'СТОИМОСТ'),
(101, 'СТОЯНК'),
(385, 'СТРАНИЦ'),
(231, 'СТРАХОВАН'),
(63, 'СТРОИТЕЛЬСТВ'),
(622, 'СТРОК'),
(35, 'СТРОЯ'),
(268, 'СТРУКТУР'),
(475, 'СТУПЕН'),
(215, 'СУМК'),
(713, 'СУММ'),
(757, 'СУЩНОСТ'),
(431, 'СХЕМ'),
(313, 'СЧЕТ'),
(312, 'СЧЕТОВ'),
(662, 'СЧИТА'),
(65, 'ТАКЖ'),
(255, 'ТЕЛЕВИДЕН'),
(430, 'ТЕЛЕФОН'),
(517, 'ТЕМАТИЧЕСК'),
(119, 'ТЕМНО-ЗЕЛЕН'),
(571, 'ТЕРМИН'),
(570, 'ТЕРМИНОВ'),
(43, 'ТЕРРИТОР'),
(429, 'ТЕХНИК'),
(411, 'ТЕХНИЧЕСК'),
(501, 'ТЕХНОЛОГ'),
(676, 'ТЕХПОДДЕРЖК'),
(678, 'ТЕЧЕН'),
(235, 'ТОВАР'),
(424, 'ТОВАРОВ'),
(656, 'ТОГ'),
(204, 'ТОРГ'),
(8, 'ТРАНСПОРТ'),
(152, 'ТРАНСПОРТН'),
(153, 'ТРАНСПОРТНО-ЭКСПЕДИТОРСК'),
(149, 'ТРАНСФЕР'),
(207, 'ТРЕХ'),
(707, 'ТУ'),
(105, 'ТУРИСТИЧЕСК'),
(182, 'ТЮНЕР'),
(480, 'УГЛУБЛЕН'),
(67, 'УГОД'),
(579, 'УДОБН'),
(775, 'УЗНА'),
(709, 'УКАЗА'),
(86, 'УЛ'),
(37, 'УЛИЦ'),
(575, 'УНИВЕРСАЛЬН'),
(446, 'УНИВЕРСИТЕТ'),
(31, 'УПРАВЛЕН'),
(584, 'УПРАВЛЯ'),
(804, 'УРОВЕН'),
(783, 'УРОВН'),
(484, 'УСЛОВ'),
(10, 'УСЛУГ'),
(576, 'УСПЕШН'),
(327, 'УСТА'),
(615, 'УСТАНОВЛ'),
(632, 'УСТАНОВЛЕН'),
(427, 'УЧАСТ'),
(56, 'УЧАСТК'),
(221, 'УЧАСТОК'),
(451, 'УЧЕБН'),
(710, 'УЧЕТ'),
(619, 'ФАЙЛ'),
(756, 'ФАЙЛОВ'),
(464, 'ФАКУЛЬТЕТ'),
(261, 'ФЕДЕРАЦ'),
(282, 'ФИЗИЧЕСК'),
(290, 'ФИЛИА'),
(289, 'ФИЛИАЛ'),
(288, 'ФИЛИАЛОВ'),
(395, 'ФИЛЬМОВ-СКАЗОК'),
(228, 'ФИНАНС'),
(271, 'ФИНАНСОВ'),
(408, 'ФИРМ'),
(422, 'ФИРМ-ПРОДАВЦ'),
(421, 'ФИРМ-ПРОДАВЦОВ'),
(596, 'ФЛОТ'),
(347, 'ФОКУС-ГРУПП'),
(504, 'ФОРМ'),
(519, 'ФОРУМ'),
(399, 'ФОТОГРАФ'),
(264, 'ФУНКЦ'),
(818, 'ФУНКЦИОНАЛЬН'),
(604, 'ХРОНИК'),
(94, 'ЦВЕТ'),
(328, 'ЦЕЛ'),
(209, 'ЦЕН'),
(466, 'ЦЕНТР'),
(14, 'ЦЕНТРАЛЬН'),
(24, 'ЧАС'),
(23, 'ЧАСОВ'),
(819, 'ЧАСТ'),
(769, 'ЧАСТИЧН'),
(301, 'ЧАСТН'),
(539, 'ЧЕРЕЗ'),
(95, 'ЧЕРН'),
(798, 'ЧТЕН'),
(239, 'ШКОЛ'),
(537, 'ШКОЛЬН'),
(730, 'ЭКЗЕМПЛЯР'),
(240, 'ЭКОЛОГ'),
(553, 'ЭКОЛОГИЧЕСК'),
(556, 'ЭКСПЕРТИЗ'),
(594, 'ЭКСПЛУАТАЦ'),
(541, 'ЭКСТЕРНАТ'),
(374, 'ЭЛЕКТРОН'),
(125, 'ЭЛЕКТРОПАКЕТ'),
(598, 'ЭЛЕКТРОСТАНЦ'),
(17, 'ЭТАЖ'),
(410, 'ЭТАП'),
(583, 'ЭФФЕКТИВН'),
(283, 'ЮРИДИЧЕСК'),
(369, 'ЮРИСТ'),
(368, 'ЮРИСТОВ'),
(54, 'ЮСТИЦ'),
(568, 'ЯВЛЕН'),
(639, 'ЯВЛЯ'),
(600, 'ЯДЕРН');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_suggest`
--

CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_tags`
--

CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_user_right`
--

CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_security_sitecheck`
--

CREATE TABLE `b_security_sitecheck` (
  `ID` int(11) NOT NULL,
  `TEST_DATE` datetime DEFAULT NULL,
  `RESULTS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_filter_mask`
--

CREATE TABLE `b_sec_filter_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_frame_mask`
--

CREATE TABLE `b_sec_frame_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FRAME_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule`
--

CREATE TABLE `b_sec_iprule` (
  `ID` int(11) NOT NULL,
  `RULE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ADMIN_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_FROM_TIMESTAMP` int(11) DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `ACTIVE_TO_TIMESTAMP` int(11) DEFAULT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_excl_ip`
--

CREATE TABLE `b_sec_iprule_excl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_excl_mask`
--

CREATE TABLE `b_sec_iprule_excl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_incl_ip`
--

CREATE TABLE `b_sec_iprule_incl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_incl_mask`
--

CREATE TABLE `b_sec_iprule_incl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_recovery_codes`
--

CREATE TABLE `b_sec_recovery_codes` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USED` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USING_DATE` datetime DEFAULT NULL,
  `USING_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_redirect_url`
--

CREATE TABLE `b_sec_redirect_url` (
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETER_NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sec_redirect_url`
--

INSERT INTO `b_sec_redirect_url` (`IS_SYSTEM`, `SORT`, `URL`, `PARAMETER_NAME`) VALUES
('Y', 10, '/bitrix/redirect.php', 'goto'),
('Y', 20, '/bitrix/rk.php', 'goto'),
('Y', 30, '/bitrix/click.php', 'goto');

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_session`
--

CREATE TABLE `b_sec_session` (
  `SESSION_ID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `SESSION_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_user`
--

CREATE TABLE `b_sec_user` (
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECRET` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(18) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `SKIP_MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_UNTIL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_virus`
--

CREATE TABLE `b_sec_virus` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INFO` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_white_list`
--

CREATE TABLE `b_sec_white_list` (
  `ID` int(11) NOT NULL,
  `WHITE_SUBSTR` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_autolog`
--

CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_banner`
--

CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_campaign`
--

CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_group`
--

CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_link`
--

CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_log`
--

CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_order`
--

CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_region`
--

CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_keywords`
--

CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_search_engine`
--

CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_seo_search_engine`
--

INSERT INTO `b_seo_search_engine` (`ID`, `CODE`, `ACTIVE`, `SORT`, `NAME`, `CLIENT_ID`, `CLIENT_SECRET`, `REDIRECT_URI`, `SETTINGS`) VALUES
(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_log`
--

CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_rtg_queue`
--

CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_subscription`
--

CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_webhook`
--

CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap`
--

CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_entity`
--

CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_iblock`
--

CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_runtime`
--

CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_yandex_direct_stat`
--

CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_short_uri`
--

CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_site_template`
--

CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_site_template`
--

INSERT INTO `b_site_template` (`ID`, `SITE_ID`, `CONDITION`, `SORT`, `TEMPLATE`) VALUES
(2, 's1', '', 150, 'books'),
(3, 's1', '$_GET[\'print\']==\'Y\'', 150, 'print');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile`
--

CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile`
--

INSERT INTO `b_smile` (`ID`, `TYPE`, `SET_ID`, `SORT`, `TYPING`, `CLICKABLE`, `HIDDEN`, `IMAGE`, `IMAGE_DEFINITION`, `IMAGE_WIDTH`, `IMAGE_HEIGHT`) VALUES
(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
(4, 'S', 2, 115, '8) 8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_lang`
--

CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_lang`
--

INSERT INTO `b_smile_lang` (`ID`, `TYPE`, `SID`, `LID`, `NAME`) VALUES
(1, 'P', 1, 'ru', 'Стандартная галерея'),
(2, 'P', 1, 'en', 'Standard gallery'),
(3, 'G', 2, 'ru', 'Основной набор'),
(4, 'G', 2, 'en', 'Default pack'),
(5, 'S', 1, 'ru', 'С улыбкой'),
(6, 'S', 1, 'en', 'Smile'),
(7, 'S', 2, 'ru', 'Шутливо'),
(8, 'S', 2, 'en', 'Wink'),
(9, 'S', 3, 'ru', 'Широкая улыбка'),
(10, 'S', 3, 'en', 'Big grin'),
(11, 'S', 4, 'ru', 'Здорово'),
(12, 'S', 4, 'en', 'Cool'),
(13, 'S', 5, 'ru', 'Разочарование'),
(14, 'S', 5, 'en', 'Facepalm'),
(15, 'S', 6, 'ru', 'Поцелуй'),
(16, 'S', 6, 'en', 'Kiss'),
(17, 'S', 7, 'ru', 'Печально'),
(18, 'S', 7, 'en', 'Sad'),
(19, 'S', 8, 'ru', 'Скептически'),
(20, 'S', 8, 'en', 'Skeptic'),
(21, 'S', 9, 'ru', 'Смущенный'),
(22, 'S', 9, 'en', 'Embarrassed'),
(23, 'S', 10, 'ru', 'Очень грустно'),
(24, 'S', 10, 'en', 'Crying'),
(25, 'S', 11, 'ru', 'Со злостью'),
(26, 'S', 11, 'en', 'Angry'),
(27, 'S', 12, 'ru', 'Удивленно'),
(28, 'S', 12, 'en', 'Surprised'),
(29, 'S', 13, 'ru', 'Смущенно'),
(30, 'S', 13, 'en', 'Confused'),
(31, 'S', 14, 'ru', 'Идея'),
(32, 'S', 14, 'en', 'Idea'),
(33, 'S', 15, 'ru', 'Вопрос'),
(34, 'S', 15, 'en', 'Question'),
(35, 'S', 16, 'ru', 'Восклицание'),
(36, 'S', 16, 'en', 'Exclamation'),
(37, 'S', 17, 'ru', 'Нравится'),
(38, 'S', 17, 'en', 'Like');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_set`
--

CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_set`
--

INSERT INTO `b_smile_set` (`ID`, `TYPE`, `PARENT_ID`, `STRING_ID`, `SORT`) VALUES
(1, 'P', 0, 'bitrix', 150),
(2, 'G', 1, 'bitrix_main', 150);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template`
--

CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template`
--

INSERT INTO `b_sms_template` (`ID`, `EVENT_NAME`, `ACTIVE`, `SENDER`, `RECEIVER`, `MESSAGE`, `LANGUAGE_ID`) VALUES
(1, 'SMS_USER_CONFIRM_NUMBER', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код подтверждения #CODE#', NULL),
(2, 'SMS_USER_RESTORE_PASSWORD', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код для восстановления пароля #CODE#', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template_site`
--

CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template_site`
--

INSERT INTO `b_sms_template_site` (`TEMPLATE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_ap`
--

CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact`
--

CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact_connect`
--

CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_message`
--

CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user`
--

CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user_link`
--

CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker`
--

CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker_group_task`
--

CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_subscription`
--

CREATE TABLE `b_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CONFIRM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_subscription_rubric`
--

CREATE TABLE `b_subscription_rubric` (
  `SUBSCRIPTION_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_task`
--

CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task`
--

INSERT INTO `b_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(41, 'security_denied', 'D', 'security', 'Y', NULL, 'module'),
(42, 'security_filter', 'F', 'security', 'Y', NULL, 'module'),
(43, 'security_otp', 'S', 'security', 'Y', NULL, 'module'),
(44, 'security_view_all_settings', 'T', 'security', 'Y', NULL, 'module'),
(45, 'security_full_access', 'W', 'security', 'Y', NULL, 'module'),
(46, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
(47, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
(48, 'seo_full_access', 'W', 'seo', 'Y', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_task_operation`
--

CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task_operation`
--

INSERT INTO `b_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(13, 37),
(13, 38),
(15, 39),
(16, 39),
(16, 40),
(17, 39),
(17, 40),
(17, 41),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(19, 52),
(19, 53),
(20, 42),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(20, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(22, 55),
(23, 55),
(23, 56),
(23, 60),
(24, 55),
(24, 60),
(24, 61),
(24, 62),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 60),
(25, 61),
(25, 62),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(26, 59),
(26, 60),
(26, 61),
(26, 62),
(28, 63),
(29, 63),
(29, 64),
(29, 65),
(29, 66),
(31, 67),
(32, 68),
(32, 69),
(34, 70),
(34, 71),
(35, 72),
(36, 70),
(36, 71),
(36, 73),
(37, 70),
(37, 71),
(37, 72),
(37, 73),
(38, 70),
(38, 71),
(38, 72),
(38, 73),
(38, 74),
(38, 75),
(38, 76),
(38, 77),
(39, 70),
(39, 71),
(39, 72),
(39, 73),
(39, 74),
(39, 75),
(39, 76),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 81),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(40, 85),
(40, 86),
(40, 87),
(42, 88),
(43, 89),
(44, 90),
(44, 91),
(44, 92),
(44, 93),
(44, 94),
(44, 95),
(44, 96),
(44, 97),
(44, 98),
(44, 99),
(44, 100),
(45, 88),
(45, 89),
(45, 90),
(45, 91),
(45, 92),
(45, 93),
(45, 94),
(45, 95),
(45, 96),
(45, 97),
(45, 98),
(45, 99),
(45, 100),
(45, 101),
(45, 102),
(45, 103),
(45, 104),
(45, 105),
(45, 106),
(45, 107),
(45, 108),
(45, 109),
(45, 110),
(45, 111),
(45, 112),
(45, 113),
(47, 115),
(48, 114),
(48, 115);

-- --------------------------------------------------------

--
-- Структура таблицы `b_undo`
--

CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_metadata`
--

CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_route`
--

CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user`
--

CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`) VALUES
(1, NULL, 'admin', 'pQo7jF752b6c9932717252ceb0c43de78156797a', '87IO1HPN0627abc34f94ac791621f4df1f604a5e', 'Y', 'Dmitry', '', 'dmitrie43@mail.ru', '2019-09-10 13:17:17', '2019-09-04 16:47:36', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-04 16:47:36', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-09-06 11:19:04', 'dmitry43', 'Y4N6BpP2ff019c92d07c21a8d35f875a4c99743a', 'YLW6EOyg0aa81bcc4123eb0dacf510d6c7af43e6', 'Y', 'Dmitry', 'Efimov', 'dmitrie434@mail.ru', '2019-09-06 15:28:10', '2019-09-06 15:18:56', 's1', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', NULL, NULL, NULL, NULL, NULL, '2019-09-06 15:19:04', '', '', 0, NULL, NULL, NULL, NULL, '', NULL, 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access`
--

CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_access`
--

INSERT INTO `b_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
(0, 'group', 'G2'),
(1, 'group', 'G1'),
(1, 'group', 'G3'),
(1, 'group', 'G4'),
(1, 'group', 'G2'),
(1, 'user', 'U1'),
(2, 'group', 'G3'),
(2, 'group', 'G4'),
(2, 'group', 'G5'),
(2, 'group', 'G2'),
(2, 'user', 'U2');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access_check`
--

CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_access_check`
--

INSERT INTO `b_user_access_check` (`USER_ID`, `PROVIDER_ID`) VALUES
(1, 'group'),
(1, 'user'),
(2, 'group'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_auth_action`
--

CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_counter`
--

CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_digest`
--

CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field`
--

CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_field`
--

INSERT INTO `b_user_field` (`ID`, `ENTITY_ID`, `FIELD_NAME`, `USER_TYPE_ID`, `XML_ID`, `SORT`, `MULTIPLE`, `MANDATORY`, `SHOW_FILTER`, `SHOW_IN_LIST`, `EDIT_IN_LIST`, `IS_SEARCHABLE`, `SETTINGS`) VALUES
(1, 'BLOG_POST', 'UF_BLOG_POST_DOC', 'file', 'UF_BLOG_POST_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(2, 'BLOG_COMMENT', 'UF_BLOG_COMMENT_DOC', 'file', 'UF_BLOG_COMMENT_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(3, 'BLOG_POST', 'UF_BLOG_POST_URL_PRV', 'url_preview', 'UF_BLOG_POST_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(4, 'BLOG_COMMENT', 'UF_BLOG_COMM_URL_PRV', 'url_preview', 'UF_BLOG_COMM_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(5, 'BLOG_POST', 'UF_GRATITUDE', 'integer', 'UF_GRATITUDE', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}'),
(6, 'FORUM_MESSAGE', 'UF_FORUM_MES_URL_PRV', 'url_preview', 'UF_FORUM_MES_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}'),
(7, 'HLBLOCK_1', 'UF_IP', 'string', '', 100, 'N', 'N', 'N', 'Y', 'N', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_confirm`
--

CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NULL DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_enum`
--

CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_lang`
--

CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_field_lang`
--

INSERT INTO `b_user_field_lang` (`USER_FIELD_ID`, `LANGUAGE_ID`, `EDIT_FORM_LABEL`, `LIST_COLUMN_LABEL`, `LIST_FILTER_LABEL`, `ERROR_MESSAGE`, `HELP_MESSAGE`) VALUES
(7, 'en', '', '', '', '', ''),
(7, 'ru', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_group`
--

CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_group`
--

INSERT INTO `b_user_group` (`USER_ID`, `GROUP_ID`, `DATE_ACTIVE_FROM`, `DATE_ACTIVE_TO`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_hit_auth`
--

CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_index`
--

CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_index`
--

INSERT INTO `b_user_index` (`USER_ID`, `SEARCH_USER_CONTENT`, `SEARCH_DEPARTMENT_CONTENT`, `SEARCH_ADMIN_CONTENT`, `NAME`, `LAST_NAME`, `SECOND_NAME`, `WORK_POSITION`, `UF_DEPARTMENT_NAME`) VALUES
(1, '001 Qzvgel', '', '001 Qzvgel qzvgevr43 znvy qzvgevr43@znvy.eh nqzva', 'Dmitry', '', '', '', ''),
(2, '002 Qzvgel Rsvzbi', '', '002 Qzvgel Rsvzbi qzvgevr434 znvy qzvgevr434@znvy.eh qzvgel43', 'Dmitry', 'Efimov', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_option`
--

CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_option`
--

INSERT INTO `b_user_option` (`ID`, `USER_ID`, `CATEGORY`, `NAME`, `VALUE`, `COMMON`) VALUES
(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}', 'Y'),
(2, 0, 'global', 'settings', 'a:2:{s:18:\"start_menu_preload\";s:1:\"Y\";s:16:\"start_menu_title\";s:1:\"N\";}', 'Y'),
(3, 0, 'intranet', '~gadgets_holder1', 'a:1:{s:7:\"GADGETS\";a:5:{s:15:\"RSSREADER@12333\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:2:{s:3:\"CNT\";s:2:\"10\";s:7:\"RSS_URL\";s:44:\"http://www.1c-bitrix.ru/about/life/news/rss/\";}}s:15:\"HTML_AREA@24648\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}s:15:\"FAVORITES@20837\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:8:\"USERDATA\";a:1:{s:5:\"LINKS\";a:1:{i:0;a:2:{s:4:\"NAME\";s:0:\"\";s:3:\"URL\";s:24:\"http://www.1c-bitrix.ru/\";}}}s:4:\"HIDE\";s:1:\"N\";}s:12:\"PROBKI@28450\";a:4:{s:6:\"COLUMN\";i:2;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}s:13:\"WEATHER@23987\";a:4:{s:6:\"COLUMN\";i:2;s:3:\"ROW\";i:1;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}}}', 'Y'),
(4, 1, 'admin_panel', 'settings', 'a:1:{s:4:\"edit\";s:3:\"off\";}', 'N'),
(5, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(6, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(8, 1, 'admin_menu', 'pos', 'a:1:{s:8:\"sections\";s:94:\"menu_util,menu_iblock,menu_highloadblock,menu_iblock_/services,menu_system,highloadblock_tools\";}', 'N'),
(10, 1, 'html_editor', 'user_settings_', 'a:2:{s:13:\"taskbar_shown\";s:1:\"1\";s:13:\"taskbar_width\";s:3:\"244\";}', 'N'),
(11, 1, 'html_editor', 'type_selector_PREVIEW_TEXT1', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(12, 1, 'html_editor', 'type_selector_DETAIL_TEXT1', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(17, 1, 'main.interface.grid', 'tbl_iblock_admin_10cd395cf71c18328c863c08e78f3fd0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(18, 1, 'main.interface.grid', 'tbl_iblock_admin_750dd17d83198dd551018232269fa242', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(24, 2, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(28, 1, 'filter', 'tbl_user_ip_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(31, 1, 'main.ui.filter', 'tbl_iblock_list_2154157ceeb1206ab6a5f7b9ac7458c9', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:2:\"17\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(35, 1, 'main.interface.grid', 'tbl_iblock_list_2154157ceeb1206ab6a5f7b9ac7458c9', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(38, 1, 'fileman', 'code_editor', 'a:1:{s:5:\"theme\";s:5:\"light\";}', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_phone_auth`
--

CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_history`
--

CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `UPDATED_BY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_record`
--

CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_stored_auth`
--

CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_stored_auth`
--

INSERT INTO `b_user_stored_auth` (`ID`, `USER_ID`, `DATE_REG`, `LAST_AUTH`, `STORED_HASH`, `TEMP_HASH`, `IP_ADDR`) VALUES
(1, 1, '2019-09-04 16:47:36', '2019-09-04 16:47:36', '79d1aa8cc11c3e4cb100b7887b8f7db9', 'N', 2130706433);

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_blog_comment`
--

CREATE TABLE `b_utm_blog_comment` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_blog_post`
--

CREATE TABLE `b_utm_blog_post` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_forum_message`
--

CREATE TABLE `b_utm_forum_message` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_blog_comment`
--

CREATE TABLE `b_uts_blog_comment` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_COMMENT_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_COMM_URL_PRV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_blog_post`
--

CREATE TABLE `b_uts_blog_post` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_POST_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_POST_URL_PRV` int(11) DEFAULT NULL,
  `UF_GRATITUDE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_forum_message`
--

CREATE TABLE `b_uts_forum_message` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_FORUM_MES_URL_PRV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote`
--

CREATE TABLE `b_vote` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `AUTHOR_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIQUE_TYPE` int(18) NOT NULL DEFAULT '2',
  `KEEP_IP_SEC` int(18) DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_answer`
--

CREATE TABLE `b_vote_answer` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `MESSAGE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLOR` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_attached_object`
--

CREATE TABLE `b_vote_attached_object` (
  `ID` int(11) NOT NULL,
  `OBJECT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel`
--

CREATE TABLE `b_vote_channel` (
  `ID` int(18) NOT NULL,
  `SYMBOLIC_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VOTE_SINGLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel_2_group`
--

CREATE TABLE `b_vote_channel_2_group` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel_2_site`
--

CREATE TABLE `b_vote_channel_2_site` (
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event`
--

CREATE TABLE `b_vote_event` (
  `ID` int(18) NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `VOTE_USER_ID` int(18) NOT NULL DEFAULT '0',
  `DATE_VOTE` datetime NOT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALID` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event_answer`
--

CREATE TABLE `b_vote_event_answer` (
  `ID` int(18) NOT NULL,
  `EVENT_QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event_question`
--

CREATE TABLE `b_vote_event_question` (
  `ID` int(18) NOT NULL,
  `EVENT_ID` int(18) NOT NULL DEFAULT '0',
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_question`
--

CREATE TABLE `b_vote_question` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `QUESTION` text COLLATE utf8_unicode_ci NOT NULL,
  `QUESTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `DIAGRAM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DIAGRAM_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'histogram',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_NEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_user`
--

CREATE TABLE `b_vote_user` (
  `ID` int(18) NOT NULL,
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `AUTH_USER_ID` int(18) DEFAULT NULL,
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `DATE_FIRST` datetime NOT NULL,
  `DATE_LAST` datetime NOT NULL,
  `LAST_IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_xml_tree`
--

CREATE TABLE `b_xml_tree` (
  `ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci,
  `ATTRIBUTES` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_xml_tree`
--

INSERT INTO `b_xml_tree` (`ID`, `PARENT_ID`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `NAME`, `VALUE`, `ATTRIBUTES`) VALUES
(1, 0, 1, 642, 0, 'КоммерческаяИнформация', NULL, 'a:2:{s:22:\"ВерсияСхемы\";s:5:\"2.021\";s:32:\"ДатаФормирования\";s:19:\"2008-04-09T11:44:34\";}'),
(2, 1, 2, 101, 1, 'Классификатор', NULL, NULL),
(3, 2, 3, 4, 2, 'Ид', 'services-faq', NULL),
(4, 2, 5, 6, 2, 'Наименование', 'FAQ', NULL),
(5, 2, 7, 56, 2, 'Свойства', NULL, NULL),
(6, 5, 8, 15, 3, 'Свойство', NULL, NULL),
(7, 6, 9, 10, 4, 'Ид', 'CML2_CODE', NULL),
(8, 6, 11, 12, 4, 'Наименование', 'Символьный код', NULL),
(9, 6, 13, 14, 4, 'Множественное', 'false', NULL),
(10, 5, 16, 23, 3, 'Свойство', NULL, NULL),
(11, 10, 17, 18, 4, 'Ид', 'CML2_SORT', NULL),
(12, 10, 19, 20, 4, 'Наименование', 'Сортировка', NULL),
(13, 10, 21, 22, 4, 'Множественное', 'false', NULL),
(14, 5, 24, 31, 3, 'Свойство', NULL, NULL),
(15, 14, 25, 26, 4, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(16, 14, 27, 28, 4, 'Наименование', 'Начало активности', NULL),
(17, 14, 29, 30, 4, 'Множественное', 'false', NULL),
(18, 5, 32, 39, 3, 'Свойство', NULL, NULL),
(19, 18, 33, 34, 4, 'Ид', 'CML2_ACTIVE_TO', NULL),
(20, 18, 35, 36, 4, 'Наименование', 'Окончание активности', NULL),
(21, 18, 37, 38, 4, 'Множественное', 'false', NULL),
(22, 5, 40, 47, 3, 'Свойство', NULL, NULL),
(23, 22, 41, 42, 4, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(24, 22, 43, 44, 4, 'Наименование', 'Анонс', NULL),
(25, 22, 45, 46, 4, 'Множественное', 'false', NULL),
(26, 5, 48, 55, 3, 'Свойство', NULL, NULL),
(27, 26, 49, 50, 4, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(28, 26, 51, 52, 4, 'Наименование', 'Картинка анонса', NULL),
(29, 26, 53, 54, 4, 'Множественное', 'false', NULL),
(30, 2, 57, 100, 2, 'Группы', NULL, NULL),
(31, 30, 58, 71, 3, 'Группа', NULL, NULL),
(32, 31, 59, 60, 4, 'Ид', '224', NULL),
(33, 31, 61, 62, 4, 'Наименование', 'Настройка продукта', NULL),
(34, 31, 63, 64, 4, 'БитриксСортировка', '500', NULL),
(35, 31, 65, 66, 4, 'БитриксКод', NULL, NULL),
(36, 31, 67, 68, 4, 'БитриксКартинка', NULL, NULL),
(37, 31, 69, 70, 4, 'БитриксКартинкаДетальная', NULL, NULL),
(38, 30, 72, 85, 3, 'Группа', NULL, NULL),
(39, 38, 73, 74, 4, 'Ид', '228', NULL),
(40, 38, 75, 76, 4, 'Наименование', 'Оформление и оплата заказа', NULL),
(41, 38, 77, 78, 4, 'БитриксСортировка', '500', NULL),
(42, 38, 79, 80, 4, 'БитриксКод', NULL, NULL),
(43, 38, 81, 82, 4, 'БитриксКартинка', NULL, NULL),
(44, 38, 83, 84, 4, 'БитриксКартинкаДетальная', NULL, NULL),
(45, 30, 86, 99, 3, 'Группа', NULL, NULL),
(46, 45, 87, 88, 4, 'Ид', '225', NULL),
(47, 45, 89, 90, 4, 'Наименование', 'Партнерская программа', NULL),
(48, 45, 91, 92, 4, 'БитриксСортировка', '500', NULL),
(49, 45, 93, 94, 4, 'БитриксКод', NULL, NULL),
(50, 45, 95, 96, 4, 'БитриксКартинка', NULL, NULL),
(51, 45, 97, 98, 4, 'БитриксКартинкаДетальная', NULL, NULL),
(52, 1, 102, 641, 1, 'Каталог', NULL, NULL),
(53, 52, 103, 104, 2, 'Ид', 'services-faq', NULL),
(54, 52, 105, 106, 2, 'ИдКлассификатора', 'services-faq', NULL),
(55, 52, 107, 108, 2, 'Наименование', 'FAQ', NULL),
(56, 52, 109, 110, 2, 'БитриксКод', 'faq', NULL),
(57, 52, 111, 112, 2, 'БитриксСортировка', '500', NULL),
(58, 52, 113, 114, 2, 'БитриксURLСписок', '/content/faq/', NULL),
(59, 52, 115, 116, 2, 'БитриксURLДеталь', '/content/faq/#SECTION_ID#/##ELEMENT_ID#', NULL),
(60, 52, 117, 118, 2, 'БитриксURLРаздел', '/content/faq/#SECTION_ID#/', NULL),
(61, 52, 119, 120, 2, 'БитриксКартинка', NULL, NULL),
(62, 52, 121, 122, 2, 'БитриксИндексироватьЭлементы', 'true', NULL),
(63, 52, 123, 124, 2, 'БитриксИндексироватьРазделы', 'true', NULL),
(64, 52, 125, 126, 2, 'БитриксДокументооборот', 'true', NULL),
(65, 52, 127, 188, 2, 'БитриксПодписи', NULL, NULL),
(66, 65, 128, 133, 3, 'БитриксПодпись', NULL, NULL),
(67, 66, 129, 130, 4, 'Ид', 'ELEMENT_NAME', NULL),
(68, 66, 131, 132, 4, 'Значение', 'Вопрос', NULL),
(69, 65, 134, 139, 3, 'БитриксПодпись', NULL, NULL),
(70, 69, 135, 136, 4, 'Ид', 'ELEMENTS_NAME', NULL),
(71, 69, 137, 138, 4, 'Значение', 'Вопросы', NULL),
(72, 65, 140, 145, 3, 'БитриксПодпись', NULL, NULL),
(73, 72, 141, 142, 4, 'Ид', 'ELEMENT_ADD', NULL),
(74, 72, 143, 144, 4, 'Значение', 'Добавить вопрос', NULL),
(75, 65, 146, 151, 3, 'БитриксПодпись', NULL, NULL),
(76, 75, 147, 148, 4, 'Ид', 'ELEMENT_EDIT', NULL),
(77, 75, 149, 150, 4, 'Значение', 'Изменить вопрос', NULL),
(78, 65, 152, 157, 3, 'БитриксПодпись', NULL, NULL),
(79, 78, 153, 154, 4, 'Ид', 'ELEMENT_DELETE', NULL),
(80, 78, 155, 156, 4, 'Значение', 'Удалить вопрос', NULL),
(81, 65, 158, 163, 3, 'БитриксПодпись', NULL, NULL),
(82, 81, 159, 160, 4, 'Ид', 'SECTION_NAME', NULL),
(83, 81, 161, 162, 4, 'Значение', 'Раздел', NULL),
(84, 65, 164, 169, 3, 'БитриксПодпись', NULL, NULL),
(85, 84, 165, 166, 4, 'Ид', 'SECTIONS_NAME', NULL),
(86, 84, 167, 168, 4, 'Значение', 'Разделы', NULL),
(87, 65, 170, 175, 3, 'БитриксПодпись', NULL, NULL),
(88, 87, 171, 172, 4, 'Ид', 'SECTION_ADD', NULL),
(89, 87, 173, 174, 4, 'Значение', 'Добавить раздел', NULL),
(90, 65, 176, 181, 3, 'БитриксПодпись', NULL, NULL),
(91, 90, 177, 178, 4, 'Ид', 'SECTION_EDIT', NULL),
(92, 90, 179, 180, 4, 'Значение', 'Изменить раздел', NULL),
(93, 65, 182, 187, 3, 'БитриксПодпись', NULL, NULL),
(94, 93, 183, 184, 4, 'Ид', 'SECTION_DELETE', NULL),
(95, 93, 185, 186, 4, 'Значение', 'Удалить раздел', NULL),
(96, 52, 189, 640, 2, 'Товары', NULL, NULL),
(97, 96, 190, 239, 3, 'Товар', NULL, NULL),
(98, 97, 191, 192, 4, 'Ид', '1677', NULL),
(99, 97, 193, 194, 4, 'Наименование', 'Как настроить обработчик 404 ошибки?', NULL),
(100, 97, 195, 196, 4, 'БитриксТеги', NULL, NULL),
(101, 97, 197, 200, 4, 'Группы', NULL, NULL),
(102, 101, 198, 199, 5, 'Ид', '224', NULL),
(103, 97, 201, 238, 4, 'ЗначенияСвойств', NULL, NULL),
(104, 103, 202, 207, 5, 'ЗначенияСвойства', NULL, NULL),
(105, 104, 203, 204, 6, 'Ид', 'CML2_CODE', NULL),
(106, 104, 205, 206, 6, 'Значение', NULL, NULL),
(107, 103, 208, 213, 5, 'ЗначенияСвойства', NULL, NULL),
(108, 107, 209, 210, 6, 'Ид', 'CML2_SORT', NULL),
(109, 107, 211, 212, 6, 'Значение', '500', NULL),
(110, 103, 214, 219, 5, 'ЗначенияСвойства', NULL, NULL),
(111, 110, 215, 216, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(112, 110, 217, 218, 6, 'Значение', NULL, NULL),
(113, 103, 220, 225, 5, 'ЗначенияСвойства', NULL, NULL),
(114, 113, 221, 222, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(115, 113, 223, 224, 6, 'Значение', NULL, NULL),
(116, 103, 226, 231, 5, 'ЗначенияСвойства', NULL, NULL),
(117, 116, 227, 228, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(118, 116, 229, 230, 6, 'Значение', '\n<p>Если у вас PHP установлен как CGI добавьте в корне сайта в файл .htaccess следующие строки:\n  <br />\n<code>&nbsp;&nbsp;&nbsp; RewriteEngine On\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteBase /\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteCond %{REQUEST_FILENAME} !-f\n    <br />\n  &nbsp;&nbsp;&nbsp; RewriteRule ^[0-9a-zA-Z_/.-]+.php$ /404.php\n    <br />\n  &nbsp;&nbsp;&nbsp; ErrorDocument 404 /404.php\n    <br />\n  </code>Для PHP установленном как ISAPI в .htaccess достаточно добавить строку:\n  <br />\n<code>&nbsp;&nbsp;&nbsp; ErrorDocument 404 /404.php\n    <br />\n  </code>После этого создайте в корне сайта файл 404.php (если его нет), который и будет являться обработчиком 404 ошибки.</p>\n\n<p>\n  <br />\n</p>\n', NULL),
(119, 103, 232, 237, 5, 'ЗначенияСвойства', NULL, NULL),
(120, 119, 233, 234, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(121, 119, 235, 236, 6, 'Значение', NULL, NULL),
(122, 96, 240, 289, 3, 'Товар', NULL, NULL),
(123, 122, 241, 242, 4, 'Ид', '1680', NULL),
(124, 122, 243, 244, 4, 'Наименование', 'Может ли частное лицо стать партнером компании?', NULL),
(125, 122, 245, 246, 4, 'БитриксТеги', NULL, NULL),
(126, 122, 247, 250, 4, 'Группы', NULL, NULL),
(127, 126, 248, 249, 5, 'Ид', '225', NULL),
(128, 122, 251, 288, 4, 'ЗначенияСвойств', NULL, NULL),
(129, 128, 252, 257, 5, 'ЗначенияСвойства', NULL, NULL),
(130, 129, 253, 254, 6, 'Ид', 'CML2_CODE', NULL),
(131, 129, 255, 256, 6, 'Значение', NULL, NULL),
(132, 128, 258, 263, 5, 'ЗначенияСвойства', NULL, NULL),
(133, 132, 259, 260, 6, 'Ид', 'CML2_SORT', NULL),
(134, 132, 261, 262, 6, 'Значение', '500', NULL),
(135, 128, 264, 269, 5, 'ЗначенияСвойства', NULL, NULL),
(136, 135, 265, 266, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(137, 135, 267, 268, 6, 'Значение', NULL, NULL),
(138, 128, 270, 275, 5, 'ЗначенияСвойства', NULL, NULL),
(139, 138, 271, 272, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(140, 138, 273, 274, 6, 'Значение', NULL, NULL),
(141, 128, 276, 281, 5, 'ЗначенияСвойства', NULL, NULL),
(142, 141, 277, 278, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(143, 141, 279, 280, 6, 'Значение', '\n<p>Такой вариант возможен, если вы являетесь разработчиком сайтов. Для принятия решения о подписании партнерского соглашения нам понадобится подробнее изучить ваше портфолио. Условия участия для частных лиц не меняются, за исключением того, что для физических лиц мы предоставляем бесплатный ключ только после успешной продажи продукта.</p>\n\n<p>\n  <br />\n</p>\n', NULL),
(144, 128, 282, 287, 5, 'ЗначенияСвойства', NULL, NULL),
(145, 144, 283, 284, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(146, 144, 285, 286, 6, 'Значение', NULL, NULL),
(147, 96, 290, 339, 3, 'Товар', NULL, NULL),
(148, 147, 291, 292, 4, 'Ид', '1734', NULL),
(149, 147, 293, 294, 4, 'Наименование', 'Действуют ли партнерские скидки для собственных сайтов партнеров?', NULL),
(150, 147, 295, 296, 4, 'БитриксТеги', NULL, NULL),
(151, 147, 297, 300, 4, 'Группы', NULL, NULL),
(152, 151, 298, 299, 5, 'Ид', '225', NULL),
(153, 147, 301, 338, 4, 'ЗначенияСвойств', NULL, NULL),
(154, 153, 302, 307, 5, 'ЗначенияСвойства', NULL, NULL),
(155, 154, 303, 304, 6, 'Ид', 'CML2_CODE', NULL),
(156, 154, 305, 306, 6, 'Значение', NULL, NULL),
(157, 153, 308, 313, 5, 'ЗначенияСвойства', NULL, NULL),
(158, 157, 309, 310, 6, 'Ид', 'CML2_SORT', NULL),
(159, 157, 311, 312, 6, 'Значение', '500', NULL),
(160, 153, 314, 319, 5, 'ЗначенияСвойства', NULL, NULL),
(161, 160, 315, 316, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(162, 160, 317, 318, 6, 'Значение', NULL, NULL),
(163, 153, 320, 325, 5, 'ЗначенияСвойства', NULL, NULL),
(164, 163, 321, 322, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(165, 163, 323, 324, 6, 'Значение', NULL, NULL),
(166, 153, 326, 331, 5, 'ЗначенияСвойства', NULL, NULL),
(167, 166, 327, 328, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(168, 166, 329, 330, 6, 'Значение', '\n<p>Партнерам нашей компании предоставляется бесплатная копия продукта для своего основного сайта. Таким считается сайт, на котором рассказывается об основной деятельности компании партнера (дизайн, разработка сайтов, дистрибуция ПО).\n  <br />\nЕсли вы планируете перевести на &quot;Битрикс: Управление сайтом&quot; несколько своих веб-проектов, не связанных с основным видом деятельности, вы можете приобрести копию продукта со своей партнерской скидкой.</p>\n\n<p>\n  <br />\n</p>\n', NULL),
(169, 153, 332, 337, 5, 'ЗначенияСвойства', NULL, NULL),
(170, 169, 333, 334, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(171, 169, 335, 336, 6, 'Значение', NULL, NULL),
(172, 96, 340, 389, 3, 'Товар', NULL, NULL),
(173, 172, 341, 342, 4, 'Ид', '1737', NULL),
(174, 172, 343, 344, 4, 'Наименование', 'Что произойдет через год после покупки, когда закончится бесплатная техподдержка и обновления?', NULL),
(175, 172, 345, 346, 4, 'БитриксТеги', NULL, NULL),
(176, 172, 347, 350, 4, 'Группы', NULL, NULL),
(177, 176, 348, 349, 5, 'Ид', '228', NULL),
(178, 172, 351, 388, 4, 'ЗначенияСвойств', NULL, NULL),
(179, 178, 352, 357, 5, 'ЗначенияСвойства', NULL, NULL),
(180, 179, 353, 354, 6, 'Ид', 'CML2_CODE', NULL),
(181, 179, 355, 356, 6, 'Значение', NULL, NULL),
(182, 178, 358, 363, 5, 'ЗначенияСвойства', NULL, NULL),
(183, 182, 359, 360, 6, 'Ид', 'CML2_SORT', NULL),
(184, 182, 361, 362, 6, 'Значение', '500', NULL),
(185, 178, 364, 369, 5, 'ЗначенияСвойства', NULL, NULL),
(186, 185, 365, 366, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(187, 185, 367, 368, 6, 'Значение', NULL, NULL),
(188, 178, 370, 375, 5, 'ЗначенияСвойства', NULL, NULL),
(189, 188, 371, 372, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(190, 188, 373, 374, 6, 'Значение', NULL, NULL),
(191, 178, 376, 381, 5, 'ЗначенияСвойства', NULL, NULL),
(192, 191, 377, 378, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(193, 191, 379, 380, 6, 'Значение', '<p>В течение года после покупки продукта вы можете скачивать все обновления для вашей <a href=\"http://www.bitrix.ru/editions/\">редакции</a>. Список уже выпущенных обновлений публикуется на сайте: <a href=\"http://www.bitrix.ru/sitemanager/versions.php\" title=\"\" target=\"\">http://www.bitrixsoft.ru/sitemanager/versions.php</a>\n  <br />\n&lt;Через год, если вы захотите и дальше скачивать обновления, вам нужно будет продлить срок активности техподдержки и обновлений.\n  <br />\n<strong>Льготное продление</strong> - 22% от цены используемого продукта.\n  <br />\nПо льготному продлению срок активности обновлений продляется ровно на один год с момента завершения предыдущего периода.\n  <br />\n&lt;Если же вы решите не продлять обновления, на работе сайта это никак не отразится. Вы сможете использовать ту версию продукта, которая&nbsp; у вас будет на момент завершения техподдержки и обновлений.</p>\n<p></p>\n<p></p>\n', NULL),
(194, 178, 382, 387, 5, 'ЗначенияСвойства', NULL, NULL),
(195, 194, 383, 384, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(196, 194, 385, 386, 6, 'Значение', NULL, NULL),
(197, 96, 390, 439, 3, 'Товар', NULL, NULL),
(198, 197, 391, 392, 4, 'Ид', '1745', NULL),
(199, 197, 393, 394, 4, 'Наименование', 'Цена продукта на сайте указана с учетом НДС?', NULL),
(200, 197, 395, 396, 4, 'БитриксТеги', NULL, NULL),
(201, 197, 397, 400, 4, 'Группы', NULL, NULL),
(202, 201, 398, 399, 5, 'Ид', '228', NULL),
(203, 197, 401, 438, 4, 'ЗначенияСвойств', NULL, NULL),
(204, 203, 402, 407, 5, 'ЗначенияСвойства', NULL, NULL),
(205, 204, 403, 404, 6, 'Ид', 'CML2_CODE', NULL),
(206, 204, 405, 406, 6, 'Значение', NULL, NULL),
(207, 203, 408, 413, 5, 'ЗначенияСвойства', NULL, NULL),
(208, 207, 409, 410, 6, 'Ид', 'CML2_SORT', NULL),
(209, 207, 411, 412, 6, 'Значение', '500', NULL),
(210, 203, 414, 419, 5, 'ЗначенияСвойства', NULL, NULL),
(211, 210, 415, 416, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(212, 210, 417, 418, 6, 'Значение', NULL, NULL),
(213, 203, 420, 425, 5, 'ЗначенияСвойства', NULL, NULL),
(214, 213, 421, 422, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(215, 213, 423, 424, 6, 'Значение', NULL, NULL),
(216, 203, 426, 431, 5, 'ЗначенияСвойства', NULL, NULL),
(217, 216, 427, 428, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(218, 216, 429, 430, 6, 'Значение', '\n<p>НДС включен в стоимость продукта. При оформлении заказа вы получите подробную информацию о сумме к оплате.</p>\n\n<p>\n  <br />\n</p>\n', NULL),
(219, 203, 432, 437, 5, 'ЗначенияСвойства', NULL, NULL),
(220, 219, 433, 434, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(221, 219, 435, 436, 6, 'Значение', NULL, NULL),
(222, 96, 440, 489, 3, 'Товар', NULL, NULL),
(223, 222, 441, 442, 4, 'Ид', '1747', NULL),
(224, 222, 443, 444, 4, 'Наименование', 'Система партнерских скидок распространяется на все редакции продукта?', NULL),
(225, 222, 445, 446, 4, 'БитриксТеги', NULL, NULL),
(226, 222, 447, 450, 4, 'Группы', NULL, NULL),
(227, 226, 448, 449, 5, 'Ид', '225', NULL),
(228, 222, 451, 488, 4, 'ЗначенияСвойств', NULL, NULL),
(229, 228, 452, 457, 5, 'ЗначенияСвойства', NULL, NULL),
(230, 229, 453, 454, 6, 'Ид', 'CML2_CODE', NULL),
(231, 229, 455, 456, 6, 'Значение', NULL, NULL),
(232, 228, 458, 463, 5, 'ЗначенияСвойства', NULL, NULL),
(233, 232, 459, 460, 6, 'Ид', 'CML2_SORT', NULL),
(234, 232, 461, 462, 6, 'Значение', '500', NULL),
(235, 228, 464, 469, 5, 'ЗначенияСвойства', NULL, NULL),
(236, 235, 465, 466, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(237, 235, 467, 468, 6, 'Значение', NULL, NULL),
(238, 228, 470, 475, 5, 'ЗначенияСвойства', NULL, NULL),
(239, 238, 471, 472, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(240, 238, 473, 474, 6, 'Значение', NULL, NULL),
(241, 228, 476, 481, 5, 'ЗначенияСвойства', NULL, NULL),
(242, 241, 477, 478, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(243, 241, 479, 480, 6, 'Значение', '\n<p>Да, партнерские скидки применяются ко всем редакциям продукта &laquo;Битрикс: Управление сайтом&raquo;.</p>\n\n<p>\n  <br />\n</p>\n', NULL),
(244, 228, 482, 487, 5, 'ЗначенияСвойства', NULL, NULL),
(245, 244, 483, 484, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(246, 244, 485, 486, 6, 'Значение', NULL, NULL),
(247, 96, 490, 539, 3, 'Товар', NULL, NULL),
(248, 247, 491, 492, 4, 'Ид', '1751', NULL),
(249, 247, 493, 494, 4, 'Наименование', 'Какова последовательность действий при оформлении заказа?', NULL),
(250, 247, 495, 496, 4, 'БитриксТеги', NULL, NULL),
(251, 247, 497, 500, 4, 'Группы', NULL, NULL),
(252, 251, 498, 499, 5, 'Ид', '225', NULL),
(253, 247, 501, 538, 4, 'ЗначенияСвойств', NULL, NULL),
(254, 253, 502, 507, 5, 'ЗначенияСвойства', NULL, NULL),
(255, 254, 503, 504, 6, 'Ид', 'CML2_CODE', NULL),
(256, 254, 505, 506, 6, 'Значение', NULL, NULL),
(257, 253, 508, 513, 5, 'ЗначенияСвойства', NULL, NULL),
(258, 257, 509, 510, 6, 'Ид', 'CML2_SORT', NULL),
(259, 257, 511, 512, 6, 'Значение', '500', NULL),
(260, 253, 514, 519, 5, 'ЗначенияСвойства', NULL, NULL),
(261, 260, 515, 516, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(262, 260, 517, 518, 6, 'Значение', NULL, NULL),
(263, 253, 520, 525, 5, 'ЗначенияСвойства', NULL, NULL),
(264, 263, 521, 522, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(265, 263, 523, 524, 6, 'Значение', NULL, NULL),
(266, 253, 526, 531, 5, 'ЗначенияСвойства', NULL, NULL),
(267, 266, 527, 528, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(268, 266, 529, 530, 6, 'Значение', 'Ссылки на оформление закза можно найти на нашем сайте в разделе &quot;Купить&quot;: <a href=\"http://www.bitrixsoft.ru/buy/\" class=\"txttohtmllink\">http://www.bitrixsoft.ru/buy/</a> и в разделе Купить -&gt; Для партнеров:\n<br />\n<a href=\"http://www.bitrixsoft.ru/buy/partners.php\" class=\"txttohtmllink\">http://www.bitrixsoft.ru/buy/partners.php</a>', NULL),
(269, 253, 532, 537, 5, 'ЗначенияСвойства', NULL, NULL),
(270, 269, 533, 534, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(271, 269, 535, 536, 6, 'Значение', NULL, NULL),
(272, 96, 540, 589, 3, 'Товар', NULL, NULL),
(273, 272, 541, 542, 4, 'Ид', '1753', NULL),
(274, 272, 543, 544, 4, 'Наименование', 'В чем разница между сайтом и экземпляром?', NULL),
(275, 272, 545, 546, 4, 'БитриксТеги', NULL, NULL),
(276, 272, 547, 550, 4, 'Группы', NULL, NULL),
(277, 276, 548, 549, 5, 'Ид', '228', NULL),
(278, 272, 551, 588, 4, 'ЗначенияСвойств', NULL, NULL),
(279, 278, 552, 557, 5, 'ЗначенияСвойства', NULL, NULL),
(280, 279, 553, 554, 6, 'Ид', 'CML2_CODE', NULL),
(281, 279, 555, 556, 6, 'Значение', NULL, NULL),
(282, 278, 558, 563, 5, 'ЗначенияСвойства', NULL, NULL),
(283, 282, 559, 560, 6, 'Ид', 'CML2_SORT', NULL),
(284, 282, 561, 562, 6, 'Значение', '500', NULL),
(285, 278, 564, 569, 5, 'ЗначенияСвойства', NULL, NULL),
(286, 285, 565, 566, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(287, 285, 567, 568, 6, 'Значение', NULL, NULL),
(288, 278, 570, 575, 5, 'ЗначенияСвойства', NULL, NULL),
(289, 288, 571, 572, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(290, 288, 573, 574, 6, 'Значение', NULL, NULL),
(291, 278, 576, 581, 5, 'ЗначенияСвойства', NULL, NULL),
(292, 291, 577, 578, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(293, 291, 579, 580, 6, 'Значение', 'На основе одного экземпляра продукта можно создать два сайта в рамках одного веб-проекта (на одном экземпляре базы данных). Если сайтов в проекте больше двух, необходимо докупить лицензии на сайты.\n<br />\nОбщими для сайтов являются:\n<br />\n- база пользователей;\n<br />\n- система авторизации;\n<br />\n- рекламное пространство и т.д.\n<br />\nСайт обладает своей структурой, файлами, блоками, объектами, почтовыми сообщениями и зачастую управляется другими сотрудниками. Таким образом, совокупность правил, объектов, сообщений, настроек, файлов и других сущностей мы связываем с сайтом и позволяем управлять с использованием единого инструментария.\n<br />\nСайты можно настроить как отдельные подкаталоги на одном веб-сервере и как полностью разные веб-сервера, начинающиеся от корня, но работающие с единой базой данных.\n<br />\nСистема статистики уже ведет частичное разделение данных по сайтам. Для нескольких доменов работает технология трансфера данных, и посетитель пришедший на сайт А, узнается даже когда приходит на сайт Б. В дальнейшем, разделение будет еще большим и почти все отчеты будут считаться в разрезе по сайтам.\n<br />\n\n<br />\n', NULL),
(294, 278, 582, 587, 5, 'ЗначенияСвойства', NULL, NULL),
(295, 294, 583, 584, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(296, 294, 585, 586, 6, 'Значение', NULL, NULL),
(297, 96, 590, 639, 3, 'Товар', NULL, NULL),
(298, 297, 591, 592, 4, 'Ид', '1755', NULL),
(299, 297, 593, 594, 4, 'Наименование', 'Как организовано управление правами в системе?', NULL),
(300, 297, 595, 596, 4, 'БитриксТеги', NULL, NULL),
(301, 297, 597, 600, 4, 'Группы', NULL, NULL),
(302, 301, 598, 599, 5, 'Ид', '224', NULL),
(303, 297, 601, 638, 4, 'ЗначенияСвойств', NULL, NULL),
(304, 303, 602, 607, 5, 'ЗначенияСвойства', NULL, NULL),
(305, 304, 603, 604, 6, 'Ид', 'CML2_CODE', NULL),
(306, 304, 605, 606, 6, 'Значение', NULL, NULL),
(307, 303, 608, 613, 5, 'ЗначенияСвойства', NULL, NULL),
(308, 307, 609, 610, 6, 'Ид', 'CML2_SORT', NULL),
(309, 307, 611, 612, 6, 'Значение', '500', NULL),
(310, 303, 614, 619, 5, 'ЗначенияСвойства', NULL, NULL),
(311, 310, 615, 616, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(312, 310, 617, 618, 6, 'Значение', NULL, NULL),
(313, 303, 620, 625, 5, 'ЗначенияСвойства', NULL, NULL),
(314, 313, 621, 622, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(315, 313, 623, 624, 6, 'Значение', NULL, NULL),
(316, 303, 626, 631, 5, 'ЗначенияСвойства', NULL, NULL),
(317, 316, 627, 628, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(318, 316, 629, 630, 6, 'Значение', 'В системе &quot;Битрикс: Управление сайтом&quot; поддерживается два уровня разграничения прав доступа:\n<br />\n1) <b>доступ непосредственно на файлы</b>\n<br />\n2) <b>права в рамках логики того или иного модуля</b>\n<br />\nСначала система проверяет доступ 1-го уровня, затем при необходимости проверяется право доступа 2-го уровня.\n<br />\nДля 1-го уровня доступа используются следующие варианты:\n<br />\n- запрещен (при обращении к файлу доступ будет всегда запрещен)\n<br />\n- чтение (при обращении к файлу доступ будет разрешен)\n<br />\n- документооборот (файл может быть отредактирован в режиме документооборота)\n<br />\n- запись (файл может быть отредактирован непосредственно)\n<br />\nДанный уровень доступа задается в меню &quot;Структура сайта&quot; -&gt; &quot;Управление&quot;.\n<br />\nЕсли пользователь обладает несколькими уровнями доступа на файл, то выбирается максимальный.\n<br />\nЕсли речь идет об обычных статичных публичных страницах, то к ним применяется только 1-ый уровень доступа.\n<br />\nЕсли пользователь имеет как минимум право &quot;Чтение&quot; на файл (1-ый уровень доступа) и если данный файл является функциональной частью того или иного модуля, то проверяются права доступа 2-го уровня, которые задаются в настройках модуля.\n<br />', NULL),
(319, 303, 632, 637, 5, 'ЗначенияСвойства', NULL, NULL),
(320, 319, 633, 634, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(321, 319, 635, 636, 6, 'Значение', NULL, NULL),
(322, 0, 47, 0, 0, '', NULL, NULL),
(323, 0, 48, 0, 0, '', NULL, NULL),
(324, 0, 49, 0, 0, '', NULL, NULL),
(325, 0, 47, 0, 0, '', NULL, NULL),
(326, 0, 48, 0, 0, '', NULL, NULL),
(327, 0, 49, 0, 0, '', NULL, NULL),
(328, 0, 50, 0, 0, '', NULL, NULL),
(329, 0, 51, 0, 0, '', NULL, NULL),
(330, 0, 52, 0, 0, '', NULL, NULL),
(331, 0, 53, 0, 0, '', NULL, NULL),
(332, 0, 54, 0, 0, '', NULL, NULL),
(333, 0, 55, 0, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_ip`
--

CREATE TABLE `user_ip` (
  `ID` int(11) UNSIGNED NOT NULL,
  `UF_IP` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_AD_TAG` (`TAG`);

--
-- Индексы таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  ADD KEY `IX_ADM_NTFY_LID` (`LID`);

--
-- Индексы таблицы `b_agent`
--
ALTER TABLE `b_agent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  ADD KEY `ix_agent_user_id` (`USER_ID`),
  ADD KEY `ix_agent_name` (`NAME`(100));

--
-- Индексы таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_app_password_user` (`USER_ID`);

--
-- Индексы таблицы `b_b24connector_buttons`
--
ALTER TABLE `b_b24connector_buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_bitrixcloud_option_1` (`NAME`);

--
-- Индексы таблицы `b_blog`
--
ALTER TABLE `b_blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_BLOG_4` (`URL`),
  ADD KEY `IX_BLOG_BLOG_1` (`GROUP_ID`,`ACTIVE`),
  ADD KEY `IX_BLOG_BLOG_2` (`OWNER_ID`),
  ADD KEY `IX_BLOG_BLOG_5` (`LAST_POST_DATE`),
  ADD KEY `IX_BLOG_BLOG_6` (`SOCNET_GROUP_ID`);

--
-- Индексы таблицы `b_blog_category`
--
ALTER TABLE `b_blog_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_CAT_1` (`BLOG_ID`,`NAME`);

--
-- Индексы таблицы `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_COMM_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_COMM_2` (`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_3` (`DATE_CREATE`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_4` (`POST_ID`);

--
-- Индексы таблицы `b_blog_group`
--
ALTER TABLE `b_blog_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_GROUP_1` (`SITE_ID`);

--
-- Индексы таблицы `b_blog_image`
--
ALTER TABLE `b_blog_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_IMAGE_1` (`POST_ID`,`BLOG_ID`);

--
-- Индексы таблицы `b_blog_post`
--
ALTER TABLE `b_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_POST_1` (`BLOG_ID`,`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_2` (`BLOG_ID`,`DATE_PUBLISH`,`PUBLISH_STATUS`),
  ADD KEY `IX_BLOG_POST_3` (`BLOG_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_4` (`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_5` (`DATE_PUBLISH`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_POST_CODE` (`BLOG_ID`,`CODE`),
  ADD KEY `IX_BLOG_POST_6` (`CODE`);

--
-- Индексы таблицы `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_POST_CATEGORY` (`POST_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_CATEGORY_CAT_ID` (`CATEGORY_ID`);

--
-- Индексы таблицы `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_PP_1` (`POST_ID`,`USER_ID`),
  ADD KEY `IX_BLOG_PP_2` (`USER_ID`);

--
-- Индексы таблицы `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SITE_PATH_2` (`SITE_ID`,`TYPE`);

--
-- Индексы таблицы `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SOCNET` (`BLOG_ID`);

--
-- Индексы таблицы `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_SR_1` (`POST_ID`);

--
-- Индексы таблицы `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_TRBK_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_TRBK_2` (`POST_ID`);

--
-- Индексы таблицы `b_blog_user`
--
ALTER TABLE `b_blog_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER_1` (`USER_ID`),
  ADD KEY `IX_BLOG_USER_2` (`ALIAS`);

--
-- Индексы таблицы `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`BLOG_ID`,`USER_ID`);

--
-- Индексы таблицы `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`USER_ID`,`BLOG_ID`,`USER_GROUP_ID`);

--
-- Индексы таблицы `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_USER_GROUP_1` (`BLOG_ID`);

--
-- Индексы таблицы `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_UG_PERMS_1` (`BLOG_ID`,`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_2` (`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_3` (`POST_ID`,`USER_GROUP_ID`,`PERMS_TYPE`);

--
-- Индексы таблицы `b_cache_tag`
--
ALTER TABLE `b_cache_tag`
  ADD KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  ADD KEY `ix_b_cache_tag_1` (`TAG`);

--
-- Индексы таблицы `b_captcha`
--
ALTER TABLE `b_captcha`
  ADD UNIQUE KEY `UX_B_CAPTCHA` (`ID`);

--
-- Индексы таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  ADD KEY `ix_b_file_resize_file` (`FILE_ID`);

--
-- Индексы таблицы `b_clouds_file_upload`
--
ALTER TABLE `b_clouds_file_upload`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  ADD KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  ADD KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`);

--
-- Индексы таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  ADD KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`);

--
-- Индексы таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  ADD KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  ADD KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`);

--
-- Индексы таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`);

--
-- Индексы таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`);

--
-- Индексы таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`);

--
-- Индексы таблицы `b_counter_data`
--
ALTER TABLE `b_counter_data`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_culture`
--
ALTER TABLE `b_culture`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_event`
--
ALTER TABLE `b_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_success` (`SUCCESS_EXEC`),
  ADD KEY `ix_b_event_date_exec` (`DATE_EXEC`);

--
-- Индексы таблицы `b_event_attachment`
--
ALTER TABLE `b_event_attachment`
  ADD PRIMARY KEY (`EVENT_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  ADD KEY `ix_b_event_log_audit_type` (`AUDIT_TYPE_ID`);

--
-- Индексы таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_event_message_attachment`
--
ALTER TABLE `b_event_message_attachment`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_message_site`
--
ALTER TABLE `b_event_message_site`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`);

--
-- Индексы таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_file`
--
ALTER TABLE `b_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Индексы таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  ADD KEY `IX_B_FILE_PL_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_filters`
--
ALTER TABLE `b_filters`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_finder_dest`
--
ALTER TABLE `b_finder_dest`
  ADD PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  ADD KEY `IX_FINDER_DEST` (`CODE_TYPE`);

--
-- Индексы таблицы `b_form`
--
ALTER TABLE `b_form`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Индексы таблицы `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_2_mail_template`
--
ALTER TABLE `b_form_2_mail_template`
  ADD PRIMARY KEY (`FORM_ID`,`MAIL_TEMPLATE_ID`);

--
-- Индексы таблицы `b_form_2_site`
--
ALTER TABLE `b_form_2_site`
  ADD PRIMARY KEY (`FORM_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_form_answer`
--
ALTER TABLE `b_form_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_crm`
--
ALTER TABLE `b_form_crm`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_form_crm_field_1` (`LINK_ID`);

--
-- Индексы таблицы `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_form_crm_link_1` (`FORM_ID`,`CRM_ID`);

--
-- Индексы таблицы `b_form_field`
--
ALTER TABLE `b_form_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Индексы таблицы `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_menu`
--
ALTER TABLE `b_form_menu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_result`
--
ALTER TABLE `b_form_result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_STATUS_ID` (`STATUS_ID`),
  ADD KEY `IX_SENT_TO_CRM` (`SENT_TO_CRM`);

--
-- Индексы таблицы `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RESULT_ID` (`RESULT_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`),
  ADD KEY `IX_ANSWER_ID` (`ANSWER_ID`);

--
-- Индексы таблицы `b_form_status`
--
ALTER TABLE `b_form_status`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_STATUS_GROUP` (`STATUS_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_form_status_2_mail_template`
--
ALTER TABLE `b_form_status_2_mail_template`
  ADD PRIMARY KEY (`STATUS_ID`,`MAIL_TEMPLATE_ID`);

--
-- Индексы таблицы `b_forum`
--
ALTER TABLE `b_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_SORT` (`SORT`),
  ADD KEY `IX_FORUM_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_FORUM_GROUP_ID` (`FORUM_GROUP_ID`);

--
-- Индексы таблицы `b_forum2site`
--
ALTER TABLE `b_forum2site`
  ADD PRIMARY KEY (`FORUM_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_email`
--
ALTER TABLE `b_forum_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FORUM_SOC` (`FORUM_ID`,`SOCNET_GROUP_ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FILTER_ID` (`MAIL_FILTER_ID`);

--
-- Индексы таблицы `b_forum_file`
--
ALTER TABLE `b_forum_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_FILE_FILE` (`FILE_ID`),
  ADD KEY `IX_FORUM_FILE_FORUM` (`FORUM_ID`),
  ADD KEY `IX_FORUM_FILE_TOPIC` (`TOPIC_ID`),
  ADD KEY `IX_FORUM_FILE_MESSAGE` (`MESSAGE_ID`);

--
-- Индексы таблицы `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_FILTER_2` (`USE_IT`),
  ADD KEY `IX_B_FORUM_FILTER_3` (`PATTERN_CREATE`);

--
-- Индексы таблицы `b_forum_group`
--
ALTER TABLE `b_forum_group`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_GROUP` (`FORUM_GROUP_ID`,`LID`);

--
-- Индексы таблицы `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_message`
--
ALTER TABLE `b_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_MESSAGE_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_TOPIC` (`TOPIC_ID`,`APPROVED`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR` (`AUTHOR_ID`,`APPROVED`,`FORUM_ID`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_PARAM2` (`PARAM2`),
  ADD KEY `IX_FORUM_MESSAGE_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_MESSAGE_DATE_AUTHOR_ID` (`POST_DATE`,`AUTHOR_ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_TOPIC_ID` (`AUTHOR_ID`,`TOPIC_ID`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_FORUM_ID` (`AUTHOR_ID`,`FORUM_ID`,`ID`,`APPROVED`,`TOPIC_ID`);

--
-- Индексы таблицы `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_PERMS_FORUM` (`FORUM_ID`,`GROUP_ID`),
  ADD KEY `IX_FORUM_PERMS_GROUP` (`GROUP_ID`);

--
-- Индексы таблицы `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_FOLDER_USER_IST` (`USER_ID`,`ID`,`SORT`,`TITLE`);

--
-- Индексы таблицы `b_forum_points`
--
ALTER TABLE `b_forum_points`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P_MP` (`MIN_POINTS`);

--
-- Индексы таблицы `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P2P_MNP` (`MIN_NUM_POSTS`);

--
-- Индексы таблицы `b_forum_points_lang`
--
ALTER TABLE `b_forum_points_lang`
  ADD PRIMARY KEY (`POINTS_ID`,`LID`);

--
-- Индексы таблицы `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_AFR` (`AUTHOR_ID`,`FOLDER_ID`,`IS_READ`),
  ADD KEY `IX_B_FORUM_PM_UFP` (`USER_ID`,`FOLDER_ID`,`POST_DATE`),
  ADD KEY `IX_B_FORUM_PM_POST_DATE` (`POST_DATE`);

--
-- Индексы таблицы `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_RANK` (`RANK_ID`,`LID`);

--
-- Индексы таблицы `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_STAT_SITE_ID` (`SITE_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_TOPIC_ID` (`TOPIC_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_FORUM_ID` (`FORUM_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_PHPSESSID` (`PHPSESSID`);

--
-- Индексы таблицы `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_SUBSCRIBE_USER` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`,`SOCNET_GROUP_ID`);

--
-- Индексы таблицы `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_TOPIC_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_ABS_L_POST_DATE` (`ABS_LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_LAST_POST_DATE` (`LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_USER_START_ID` (`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_DATE_USER_START_ID` (`START_DATE`,`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO` (`FORUM_ID`,`TITLE_SEO`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO2` (`TITLE_SEO`);

--
-- Индексы таблицы `b_forum_user`
--
ALTER TABLE `b_forum_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_FORUM_USER_USER6` (`USER_ID`);

--
-- Индексы таблицы `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID1` (`USER_ID`,`FORUM_ID`);

--
-- Индексы таблицы `b_forum_user_points`
--
ALTER TABLE `b_forum_user_points`
  ADD PRIMARY KEY (`FROM_USER_ID`,`TO_USER_ID`),
  ADD KEY `IX_B_FORUM_USER_POINTS_TO_USER` (`TO_USER_ID`);

--
-- Индексы таблицы `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  ADD PRIMARY KEY (`TOPIC_ID`,`USER_ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID2` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`);

--
-- Индексы таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group`
--
ALTER TABLE `b_group`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_collection_task`
--
ALTER TABLE `b_group_collection_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_group_subordinate`
--
ALTER TABLE `b_group_subordinate`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_task`
--
ALTER TABLE `b_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  ADD KEY `ix_hot_keys_user` (`USER_ID`);

--
-- Индексы таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  ADD KEY `ix_hot_keys_code_url` (`URL`);

--
-- Индексы таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`);

--
-- Индексы таблицы `b_iblock_cache`
--
ALTER TABLE `b_iblock_cache`
  ADD PRIMARY KEY (`CACHE_KEY`);

--
-- Индексы таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_element_iprop`
--
ALTER TABLE `b_iblock_element_iprop`
  ADD PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_element_lock`
--
ALTER TABLE `b_iblock_element_lock`
  ADD PRIMARY KEY (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`);

--
-- Индексы таблицы `b_iblock_element_right`
--
ALTER TABLE `b_iblock_element_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_fields`
--
ALTER TABLE `b_iblock_fields`
  ADD PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`);

--
-- Индексы таблицы `b_iblock_group`
--
ALTER TABLE `b_iblock_group`
  ADD UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_iblock_iblock_iprop`
--
ALTER TABLE `b_iblock_iblock_iprop`
  ADD PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`);

--
-- Индексы таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Индексы таблицы `b_iblock_messages`
--
ALTER TABLE `b_iblock_messages`
  ADD PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`);

--
-- Индексы таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  ADD KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  ADD KEY `ix_iblock_property_2` (`CODE`);

--
-- Индексы таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`);

--
-- Индексы таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`);

--
-- Индексы таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_task_id` (`TASK_ID`);

--
-- Индексы таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  ADD KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  ADD KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  ADD KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_section_element`
--
ALTER TABLE `b_iblock_section_element`
  ADD UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  ADD KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_section_iprop`
--
ALTER TABLE `b_iblock_section_iprop`
  ADD PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_section_property`
--
ALTER TABLE `b_iblock_section_property`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_2` (`SECTION_ID`);

--
-- Индексы таблицы `b_iblock_section_right`
--
ALTER TABLE `b_iblock_section_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_sequence`
--
ALTER TABLE `b_iblock_sequence`
  ADD PRIMARY KEY (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_site`
--
ALTER TABLE `b_iblock_site`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_iblock_type`
--
ALTER TABLE `b_iblock_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing`
--
ALTER TABLE `b_landing`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_LAND_CODE` (`CODE`),
  ADD KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_LAND_DELETED` (`DELETED`),
  ADD KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  ADD KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  ADD KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`);

--
-- Индексы таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_BLOCK_LID` (`LID`),
  ADD KEY `IX_B_BLOCK_CODE` (`CODE`),
  ADD KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  ADD KEY `IX_B_BLOCK_DELETED` (`DELETED`);

--
-- Индексы таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  ADD KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  ADD KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`);

--
-- Индексы таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_manifest`
--
ALTER TABLE `b_landing_manifest`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_MANIFEST_CODE` (`CODE`);

--
-- Индексы таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SITE_CODE` (`CODE`),
  ADD KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_SITE_DELETED` (`DELETED`),
  ADD KEY `IX_B_SITE_XML_ID` (`XML_ID`);

--
-- Индексы таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_ID` (`SITE_ID`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_LANDING_ID` (`LANDING_ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CODE` (`CODE`);

--
-- Индексы таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  ADD KEY `IX_SITE_ID` (`SITE_ID`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_lang`
--
ALTER TABLE `b_lang`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_language`
--
ALTER TABLE `b_language`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_lang_domain`
--
ALTER TABLE `b_lang_domain`
  ADD PRIMARY KEY (`LID`,`DOMAIN`);

--
-- Индексы таблицы `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`);

--
-- Индексы таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`);

--
-- Индексы таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_collection_item`
--
ALTER TABLE `b_medialib_collection_item`
  ADD PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`);

--
-- Индексы таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_mobileapp_app`
--
ALTER TABLE `b_mobileapp_app`
  ADD PRIMARY KEY (`CODE`);

--
-- Индексы таблицы `b_mobileapp_config`
--
ALTER TABLE `b_mobileapp_config`
  ADD PRIMARY KEY (`APP_CODE`,`PLATFORM`);

--
-- Индексы таблицы `b_module`
--
ALTER TABLE `b_module`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20));

--
-- Индексы таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_numerator_sequence`
--
ALTER TABLE `b_numerator_sequence`
  ADD PRIMARY KEY (`NUMERATOR_ID`,`KEY`);

--
-- Индексы таблицы `b_operation`
--
ALTER TABLE `b_operation`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_option`
--
ALTER TABLE `b_option`
  ADD UNIQUE KEY `ix_option` (`MODULE_ID`,`NAME`,`SITE_ID`),
  ADD KEY `ix_option_name` (`NAME`);

--
-- Индексы таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`);

--
-- Индексы таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_ERROR_0` (`HIT_ID`);

--
-- Индексы таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_HIT_0` (`DATE_HIT`);

--
-- Индексы таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`);

--
-- Индексы таблицы `b_perf_index_suggest_sql`
--
ALTER TABLE `b_perf_index_suggest_sql`
  ADD PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  ADD KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`);

--
-- Индексы таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_sql_backtrace`
--
ALTER TABLE `b_perf_sql_backtrace`
  ADD PRIMARY KEY (`SQL_ID`,`NN`);

--
-- Индексы таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`);

--
-- Индексы таблицы `b_perf_tab_stat`
--
ALTER TABLE `b_perf_tab_stat`
  ADD PRIMARY KEY (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`);

--
-- Индексы таблицы `b_posting`
--
ALTER TABLE `b_posting`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_posting_email`
--
ALTER TABLE `b_posting_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_posting_email_status` (`POSTING_ID`,`STATUS`),
  ADD KEY `ix_posting_email_email` (`POSTING_ID`,`EMAIL`);

--
-- Индексы таблицы `b_posting_file`
--
ALTER TABLE `b_posting_file`
  ADD UNIQUE KEY `UK_POSTING_POSTING_FILE` (`POSTING_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_posting_group`
--
ALTER TABLE `b_posting_group`
  ADD UNIQUE KEY `UK_POSTING_POSTING_GROUP` (`POSTING_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_posting_rubric`
--
ALTER TABLE `b_posting_rubric`
  ADD UNIQUE KEY `UK_POSTING_POSTING_RUBRIC` (`POSTING_ID`,`LIST_RUBRIC_ID`);

--
-- Индексы таблицы `b_rating`
--
ALTER TABLE `b_rating`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`);

--
-- Индексы таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  ADD KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`);

--
-- Индексы таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  ADD KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  ADD KEY `IX_B_RAT_USER_2` (`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  ADD KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  ADD KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`);

--
-- Индексы таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`GROUP_ID`,`TYPE`);

--
-- Индексы таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  ADD KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`);

--
-- Индексы таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`);

--
-- Индексы таблицы `b_rating_voting_reaction`
--
ALTER TABLE `b_rating_voting_reaction`
  ADD PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`);

--
-- Индексы таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`);

--
-- Индексы таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`);

--
-- Индексы таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_app_log1` (`APP_ID`);

--
-- Индексы таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`);

--
-- Индексы таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  ADD KEY `ix_b_rest_event_app_id` (`APP_ID`),
  ADD KEY `ix_b_rest_event_event_name` (`EVENT_NAME`);

--
-- Индексы таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  ADD KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  ADD KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100));

--
-- Индексы таблицы `b_rest_stat`
--
ALTER TABLE `b_rest_stat`
  ADD PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`);

--
-- Индексы таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_stat_method` (`NAME`);

--
-- Индексы таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  ADD KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  ADD KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`);

--
-- Индексы таблицы `b_search_content_freq`
--
ALTER TABLE `b_search_content_freq`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_param`
--
ALTER TABLE `b_search_content_param`
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_right`
--
ALTER TABLE `b_search_content_right`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_search_content_site`
--
ALTER TABLE `b_search_content_site`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_stem`
--
ALTER TABLE `b_search_content_stem`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  ADD KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_text`
--
ALTER TABLE `b_search_content_text`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_title`
--
ALTER TABLE `b_search_content_title`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  ADD KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`);

--
-- Индексы таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`);

--
-- Индексы таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_tags`
--
ALTER TABLE `b_search_tags`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  ADD KEY `IX_B_SEARCH_TAGS_0` (`NAME`);

--
-- Индексы таблицы `b_search_user_right`
--
ALTER TABLE `b_search_user_right`
  ADD UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_iprule_active_to` (`ACTIVE_TO`);

--
-- Индексы таблицы `b_sec_iprule_excl_ip`
--
ALTER TABLE `b_sec_iprule_excl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Индексы таблицы `b_sec_iprule_excl_mask`
--
ALTER TABLE `b_sec_iprule_excl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Индексы таблицы `b_sec_iprule_incl_ip`
--
ALTER TABLE `b_sec_iprule_incl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Индексы таблицы `b_sec_iprule_incl_mask`
--
ALTER TABLE `b_sec_iprule_incl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Индексы таблицы `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_recovery_codes_user_id` (`USER_ID`);

--
-- Индексы таблицы `b_sec_session`
--
ALTER TABLE `b_sec_session`
  ADD PRIMARY KEY (`SESSION_ID`),
  ADD KEY `ix_b_sec_session_time` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_sec_user`
--
ALTER TABLE `b_sec_user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Индексы таблицы `b_sec_virus`
--
ALTER TABLE `b_sec_virus`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_white_list`
--
ALTER TABLE `b_sec_white_list`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  ADD KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`);

--
-- Индексы таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`);

--
-- Индексы таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_seo_adv_link`
--
ALTER TABLE `b_seo_adv_link`
  ADD PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`);

--
-- Индексы таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  ADD KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`);

--
-- Индексы таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_region1` (`PARENT_ID`);

--
-- Индексы таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`);

--
-- Индексы таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`);

--
-- Индексы таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`);

--
-- Индексы таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`);

--
-- Индексы таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`);

--
-- Индексы таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  ADD KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  ADD KEY `ux_b_short_uri_2` (`URI_CRC`);

--
-- Индексы таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_site_template_site` (`SITE_ID`);

--
-- Индексы таблицы `b_smile`
--
ALTER TABLE `b_smile`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`);

--
-- Индексы таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_sms_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_sms_template_site`
--
ALTER TABLE `b_sms_template_site`
  ADD PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`);

--
-- Индексы таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact1` (`USER_ID`),
  ADD KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  ADD KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  ADD KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  ADD KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`);

--
-- Индексы таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  ADD KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_user_link_7` (`LINK_UID`);

--
-- Индексы таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sticker_group_task`
--
ALTER TABLE `b_sticker_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_subscription`
--
ALTER TABLE `b_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_SUBSCRIPTION_EMAIL` (`EMAIL`,`USER_ID`),
  ADD KEY `IX_DATE_CONFIRM` (`CONFIRMED`,`DATE_CONFIRM`);

--
-- Индексы таблицы `b_subscription_rubric`
--
ALTER TABLE `b_subscription_rubric`
  ADD UNIQUE KEY `UK_SUBSCRIPTION_RUBRIC` (`SUBSCRIPTION_ID`,`LIST_RUBRIC_ID`);

--
-- Индексы таблицы `b_task`
--
ALTER TABLE `b_task`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`);

--
-- Индексы таблицы `b_task_operation`
--
ALTER TABLE `b_task_operation`
  ADD PRIMARY KEY (`TASK_ID`,`OPERATION_ID`);

--
-- Индексы таблицы `b_undo`
--
ALTER TABLE `b_undo`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255));

--
-- Индексы таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255));

--
-- Индексы таблицы `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  ADD KEY `ix_b_user_email` (`EMAIL`),
  ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  ADD KEY `IX_B_USER_XML_ID` (`XML_ID`),
  ADD KEY `ix_user_last_login` (`LAST_LOGIN`),
  ADD KEY `ix_user_date_register` (`DATE_REGISTER`);

--
-- Индексы таблицы `b_user_access`
--
ALTER TABLE `b_user_access`
  ADD KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  ADD KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  ADD KEY `ix_ua_access` (`ACCESS_CODE`);

--
-- Индексы таблицы `b_user_access_check`
--
ALTER TABLE `b_user_access_check`
  ADD KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`);

--
-- Индексы таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  ADD KEY `ix_auth_action_date` (`ACTION_DATE`);

--
-- Индексы таблицы `b_user_counter`
--
ALTER TABLE `b_user_counter`
  ADD PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  ADD KEY `ix_buc_tag` (`TAG`),
  ADD KEY `ix_buc_code` (`CODE`),
  ADD KEY `ix_buc_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`);

--
-- Индексы таблицы `b_user_digest`
--
ALTER TABLE `b_user_digest`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Индексы таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`);

--
-- Индексы таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`);

--
-- Индексы таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`);

--
-- Индексы таблицы `b_user_field_lang`
--
ALTER TABLE `b_user_field_lang`
  ADD PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_user_group`
--
ALTER TABLE `b_user_group`
  ADD UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  ADD KEY `ix_user_group_group` (`GROUP_ID`);

--
-- Индексы таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  ADD KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  ADD KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_user_index`
--
ALTER TABLE `b_user_index`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`);

--
-- Индексы таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`);

--
-- Индексы таблицы `b_user_phone_auth`
--
ALTER TABLE `b_user_phone_auth`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`);

--
-- Индексы таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_history_user` (`USER_ID`);

--
-- Индексы таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`);

--
-- Индексы таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_user_hash` (`USER_ID`);

--
-- Индексы таблицы `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_POST_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_POST_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_1` (`FIELD_ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_blog_comment`
--
ALTER TABLE `b_uts_blog_comment`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_blog_post`
--
ALTER TABLE `b_uts_blog_post`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_forum_message`
--
ALTER TABLE `b_uts_forum_message`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_vote`
--
ALTER TABLE `b_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CHANNEL_ID` (`CHANNEL_ID`);

--
-- Индексы таблицы `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_QUESTION_ID` (`QUESTION_ID`);

--
-- Индексы таблицы `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_AO_1` (`OBJECT_ID`),
  ADD KEY `IX_VOTE_AO_2` (`MODULE_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Индексы таблицы `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_CHANNEL_ID_GROUP_ID` (`CHANNEL_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_vote_channel_2_site`
--
ALTER TABLE `b_vote_channel_2_site`
  ADD PRIMARY KEY (`CHANNEL_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_vote_event`
--
ALTER TABLE `b_vote_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_ID` (`VOTE_USER_ID`),
  ADD KEY `IX_B_VOTE_EVENT_2` (`VOTE_ID`,`IP`);

--
-- Индексы таблицы `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_QUESTION_ID` (`EVENT_QUESTION_ID`);

--
-- Индексы таблицы `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_ID` (`EVENT_ID`);

--
-- Индексы таблицы `b_vote_question`
--
ALTER TABLE `b_vote_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_ID` (`VOTE_ID`);

--
-- Индексы таблицы `b_vote_user`
--
ALTER TABLE `b_vote_user`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_xml_tree`
--
ALTER TABLE `b_xml_tree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_xml_tree_parent` (`PARENT_ID`),
  ADD KEY `ix_b_xml_tree_left` (`LEFT_MARGIN`);

--
-- Индексы таблицы `user_ip`
--
ALTER TABLE `user_ip`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_agent`
--
ALTER TABLE `b_agent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_blog`
--
ALTER TABLE `b_blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_category`
--
ALTER TABLE `b_blog_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_group`
--
ALTER TABLE `b_blog_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_image`
--
ALTER TABLE `b_blog_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_post`
--
ALTER TABLE `b_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user`
--
ALTER TABLE `b_blog_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_culture`
--
ALTER TABLE `b_culture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_event`
--
ALTER TABLE `b_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file`
--
ALTER TABLE `b_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_filters`
--
ALTER TABLE `b_filters`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form`
--
ALTER TABLE `b_form`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_answer`
--
ALTER TABLE `b_form_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm`
--
ALTER TABLE `b_form_crm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field`
--
ALTER TABLE `b_form_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_menu`
--
ALTER TABLE `b_form_menu`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_result`
--
ALTER TABLE `b_form_result`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_status`
--
ALTER TABLE `b_form_status`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum`
--
ALTER TABLE `b_forum`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_forum_email`
--
ALTER TABLE `b_forum_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_file`
--
ALTER TABLE `b_forum_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `b_forum_group`
--
ALTER TABLE `b_forum_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `b_forum_message`
--
ALTER TABLE `b_forum_message`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_forum_points`
--
ALTER TABLE `b_forum_points`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_user`
--
ALTER TABLE `b_forum_user`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_group`
--
ALTER TABLE `b_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT для таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `b_landing`
--
ALTER TABLE `b_landing`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_manifest`
--
ALTER TABLE `b_landing_manifest`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT для таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_operation`
--
ALTER TABLE `b_operation`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT для таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_posting`
--
ALTER TABLE `b_posting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_posting_email`
--
ALTER TABLE `b_posting_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating`
--
ALTER TABLE `b_rating`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT для таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT для таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_smile`
--
ALTER TABLE `b_smile`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_subscription`
--
ALTER TABLE `b_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_task`
--
ALTER TABLE `b_task`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user`
--
ALTER TABLE `b_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote`
--
ALTER TABLE `b_vote`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event`
--
ALTER TABLE `b_vote_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_question`
--
ALTER TABLE `b_vote_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_user`
--
ALTER TABLE `b_vote_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_xml_tree`
--
ALTER TABLE `b_xml_tree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT для таблицы `user_ip`
--
ALTER TABLE `user_ip`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
