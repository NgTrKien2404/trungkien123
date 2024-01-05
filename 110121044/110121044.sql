-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 02:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `110121044`
--

-- --------------------------------------------------------

--
-- Table structure for table `satnu_action_logs`
--

CREATE TABLE `satnu_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_action_logs`
--

INSERT INTO `satnu_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-08 08:12:40', 'com_users', 67, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":10000,\"name\":\"dd_gaming_94\",\"extension_name\":\"dd_gaming_94\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:21:07', 'com_installer', 67, 10000, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":10001,\"name\":\"dd_media_102\",\"extension_name\":\"dd_media_102\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:21:18', 'com_installer', 67, 10001, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:23:51', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:23:58', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:46:19', 'com_modules.module', 67, 1, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__modules\"}', '2023-11-08 08:46:19', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:47:05', 'com_modules.module', 67, 1, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__modules\"}', '2023-11-08 08:47:05', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":\"20\",\"title\":\"com_templates\",\"extension_name\":\"com_templates\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=20\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:47:14', 'com_config.component', 67, 20, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__modules\"}', '2023-11-08 08:48:27', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:49:25', 'com_menus.item', 67, 102, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:50:02', 'com_menus.item', 67, 101, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 08:50:02', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"SALE OFF\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:51:14', 'com_menus.item', 67, 103, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"GI\\u1edaI THI\\u1ec6U\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:52:24', 'com_menus.item', 67, 104, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:53:31', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 08:54:34', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:07:38', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:09:25', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:09:27', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:12:01', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:13:22', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:13:44', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:14:43', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:17:05', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:20:20', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:23:11', 'com_menus.item', 67, 105, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN THANH TO\\u00c1N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:23:48', 'com_menus.item', 67, 106, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:24:28', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN MUA H\\u00c0NG\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:24:51', 'com_menus.item', 67, 108, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:25:09', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 09:25:09', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:25:23', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 09:25:23', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 09:25:29', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:25:29', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 09:25:34', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:25:34', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:25:43', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-08 09:25:43', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"LI\\u00caN H\\u1ec6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-08 09:26:45', 'com_menus.item', 67, 109, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-15 07:07:33', 'com_users', 67, 0, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"GI\\u1edaI THI\\u1ec6U\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:13:51', 'com_content.article', 67, 1, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"GI\\u1edaI THI\\u1ec6U\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:14:27', 'com_menus.item', 67, 104, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:14:27', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:22:09', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn thanh to\\u00e1n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:24:36', 'com_content.article', 67, 2, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:28:52', 'com_content.article', 67, 3, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN THANH TO\\u00c1N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:29:27', 'com_menus.item', 67, 106, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:29:27', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN CH\\u1eccN V\\u1ee2T\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:29:44', 'com_menus.item', 67, 107, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:29:44', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN THANH TO\\u00c1N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:30:06', 'com_menus.item', 67, 106, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:30:06', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn thanh to\\u00e1n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:30:39', 'com_content.article', 67, 2, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 07:30:39', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn thanh to\\u00e1n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:30:41', 'com_content.article', 67, 2, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 07:30:41', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn thanh to\\u00e1n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 07:30:43', 'com_content.article', 67, 2, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 07:30:43', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 07:30:43', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 07:31:53', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-15 08:12:04', 'com_users', 67, 0, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:12:52', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:25:42', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:31:06', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:33:56', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:40:41', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:43:25', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:47:23', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"Li\\u00ean h\\u1ec7\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:51:13', 'com_content.article', 67, 4, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 08:51:53', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 08:52:29', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-15 08:53:55', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 08:58:47', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:03:34', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:04:17', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:04:49', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 09:05:37', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UNPUBLISHED', '{\"action\":\"unpublish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN MUA H\\u00c0NG\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:05:37', 'com_menus.item', 67, 108, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"LI\\u00caN H\\u1ec6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:06:12', 'com_menus.item', 67, 109, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-15 09:06:12', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:07:09', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:07:19', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:07:34', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:08:14', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:09:08', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:10:45', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:12:24', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-15 09:17:43', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-20 11:54:32', 'com_users', 67, 0, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 11:55:39', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 11:57:17', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 11:58:09', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 11:59:50', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 12:00:17', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 12:02:06', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:02:02', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":10,\"title\":\"dd_media_102 - Default\",\"extension_name\":\"dd_media_102 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=10\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:02:05', 'com_templates.style', 67, 10, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-11-20 13:18:28', 'com_users', 67, 0, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"h\\u01b0\\u1edbng d\\u1eabn\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:20:34', 'com_content.article', 67, 5, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN THANH TO\\u00c1N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:21:10', 'com_menus.item', 67, 106, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-20 13:21:10', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN THANH TO\\u00c1N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:21:11', 'com_menus.item', 67, 106, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"h\\u01b0\\u1edbng d\\u1eabn\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:21:36', 'com_content.article', 67, 5, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__content\"}', '2023-11-20 13:21:36', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:25:04', 'com_menus.item', 67, 105, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-20 13:25:04', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"H\\u01af\\u1edaNG D\\u1eaaN\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\"}', '2023-11-20 13:25:43', 'com_menus.item', 67, 105, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"67\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"userid\":\"67\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=67\",\"table\":\"#__menu\"}', '2023-11-20 13:25:43', 'com_checkin', 67, 67, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_action_logs_extensions`
--

CREATE TABLE `satnu_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_action_logs_extensions`
--

INSERT INTO `satnu_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_action_logs_users`
--

CREATE TABLE `satnu_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_action_log_config`
--

CREATE TABLE `satnu_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_action_log_config`
--

INSERT INTO `satnu_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_assets`
--

CREATE TABLE `satnu_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_assets`
--

INSERT INTO `satnu_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 123, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 30, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 31, 32, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 33, 34, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 35, 36, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 37, 38, 1, 'com_login', 'com_login', '{}'),
(13, 1, 39, 40, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 41, 42, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 43, 44, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 45, 48, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 49, 50, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 51, 88, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 89, 92, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 93, 94, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 95, 96, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 97, 98, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 99, 100, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 101, 104, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 105, 106, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 29, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 90, 91, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 102, 103, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 107, 108, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 109, 110, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 111, 112, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 113, 114, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 115, 116, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 117, 118, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 52, 53, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 54, 55, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 56, 57, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 58, 59, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 60, 61, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 62, 63, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 64, 65, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 66, 67, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 68, 69, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 70, 71, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 72, 73, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 74, 75, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 76, 77, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 78, 79, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 80, 81, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 46, 47, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 82, 83, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 119, 120, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 121, 122, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 84, 85, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 86, 87, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 27, 19, 20, 3, 'com_content.article.1', 'GIỚI THIỆU', '{}'),
(61, 27, 21, 22, 3, 'com_content.article.2', 'Hướng dẫn thanh toán', '{}'),
(62, 27, 23, 24, 3, 'com_content.article.3', 'Hướng dẫn cách chọn vợt cầu lông cho người mới chơi', '{}'),
(63, 27, 25, 26, 3, 'com_content.article.4', 'Liên hệ', '{}'),
(64, 27, 27, 28, 3, 'com_content.article.5', 'hướng dẫn', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_associations`
--

CREATE TABLE `satnu_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_banners`
--

CREATE TABLE `satnu_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_banner_clients`
--

CREATE TABLE `satnu_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_banner_tracks`
--

CREATE TABLE `satnu_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_categories`
--

CREATE TABLE `satnu_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_categories`
--

INSERT INTO `satnu_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 67, '2023-11-08 08:12:24', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_contact_details`
--

CREATE TABLE `satnu_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_content`
--

CREATE TABLE `satnu_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_content`
--

INSERT INTO `satnu_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 60, 'GIỚI THIỆU', 'gi-i-thi-u', '<h4> </h4>\r\n<p><span style=\"font-size: 14pt;\">Tháng 12/2011, Forum Trkibadmin.com được thành lập, đây là website cung cấp những thông tin chuyên nghiệp về tin tức và diễn đàn cầu lông. Nhận thấy sự phát triển của cầu lông trong nước, bên cạnh đó là mong muốn phục vụ tốt hơn cho thành viên và những bạn yêu mến cầu lông. Tháng 12/2012, Ban Quản Trị Vnbadminton đã mạnh dạn xây dựng Shop cầu lông VNB (<a href=\"https://shopvnb.com/\">/</a>) để có thể làm được vai trò này. Với kinh nghiệm nhiều năm hoạt động trong lĩnh vực cầu lông, đến với shopvnb bạn sẽ yên tâm về chất lượng sản phẩm, đội ngũ tư vấn sản phẩm chuyên nghiệp và giá cả hợp lý.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Bên cạnh một website chuyên nghiệp thì Shop Trkibadmin còn phát triển thêm 1 kênh fanpage <a href=\"https://www.facebook.com/caulongvnbadminton/\">https://www.facebook.com/caulongvnbadminton/</a> để cung cấp thông tin nhanh hơn cho thành viên yêu mến cầu lông. Chính sự chuyên nghiệp này đã được tạo được uy tín rất lớn trong cộng đồng yêu mến cầu lông trong và ngoài nước.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Hiện nay, Hệ thống cửa hàng cầu lông Trkibadmin đã có hơn 50 chi nhánh trải dài trên khắp mọi miền Đất nước. Với tiêu chí luôn đảm bảo cung cấp đầy đủ các mặt hàng chuyên dụng dành riêng cho bộ môn cầu lông như giày, vợt cầu lông, túi vợt, balo, quần áo, phụ kiện,... nổi trội với nhiều phân khúc giá trải dài từ thấp đến cao nên các lông thủ cần mua gì cứ đến ngay với ShopVNB, chắc chắn sẽ làm các bạn vô cùng hài lòng.</span></p>\r\n<p><span style=\"font-size: 14pt;\">ShopVNB luôn là nơi cung cấp nhanh nhất các mặt hàng hot đến từ những thương hiệu top đầu thế giới như Yonex, Lining, Victor, Mizuno,... Không những vậy các sản phẩm đến từ các hãng tầm trung và giá rẻ như Adidas, Forza, Apacs, VNB, Kamito,... Shop cầu lông Trkibadmin cũng luôn cung cấp đầy đủ và mẫu mã rất đa dạng.</span></p>\r\n<p><span style=\"font-size: 14pt;\">* Đặc biệt, ShopTrkibadmin là địa chỉ nổi tiếng căng vợt cầu lông chuẩn nhất ở Việt Nam. Tất cả các cửa hàng được trang bị máy đan vợt điện tử cao cấp cùng nhân viên ở shop luôn được trau dồi liên tục các kĩ thuật đan vợt hàng đầu trên thế giới.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>TẦM NHÌN, SỨ MỆNH VÀ GIÁ TRỊ CỐT LÕI</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>TẦM NHÌN</strong>:  \"Trở thành nhà phân phối và sản xuất thể thao lớn nhất Việt Nam\"</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Trở thành đơn vị dẫn đầu cả nước trong lĩnh vực thể thao, giúp nâng cao sức khỏe cộng đồng.</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Tự lực sản xuất các sản phẩm chất lượng cao, phù hợp với nhu cầu của người Việt.</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Xây dựng hệ thống cửa hàng rộng khắp 64 tỉnh thành.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>SỨ MỆNH</strong>: \"Trkibadmin SPORTS cam kết mang đến những sản phẩm, dịch vụ chất lượng tốt nhất phục vụ cho người chơi thể thao để nâng cao sức khỏe của chính mình.\"</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với thị trường</strong>: Trở thành Thương hiệu cầu lông của người Việt, cung cấp những sản phẩm cầu lông chất lượng tốt nhất, đáp ứng nhu cầu luyện tập cầu lông và chăm sóc sức khỏe của mọi người.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với đối tác</strong>: Đề cao tinh thần hợp tác cùng phát triển; cô gắng trở thành “Người đồng hành số 1” của các đối tác.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với nhân viên</strong>: Xây dựng môi trường làm việc chuyên nghiệp, năng động, sáng tạo và nhân văn; tạo điều kiện thu nhập cao và cơ hội phát triển công bằng cho tất cả nhân viên.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với xã hội</strong>: Hài hòa lợi ích doanh nghiệp với lợi ích xã hội; đóng góp tích cực vào các hoạt động hướng về cộng đồng, thể hiện tinh thần trách nhiệm công dân và niềm tự hào dân tộc.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>GIÁ TRỊ CỐT LÕI: TRUNG - TÍN - TÂM - TRÍ -NHÂN</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>TRUNG</strong>: Trung thực với Khách hàng - Đối tác - Nhân viên. Thực hiện đúng các chế độ ưu đãi, dịch vụ hậu mãi đã cam kết, đặt quyền lợi của người tiêu dùng lên trên hết, chân thành tiếp thu mọi ý kiến đóng góp.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>TÍN</strong>: Trkibadmin SPORTS đặt chữ TÍN lên hàng đầu, lấy chữ TÍN làm trọng tâm đối với Khách hàng - Đối tác - Nhân viên. VNB SPORTS luôn nổ lực hết mình để đảm bảo đúng và cao hơn các cam kết của mình đối với khách hàng, đối tác; đặc biệt là cam kết về chất lượng- sản phẩm - dịch vụ.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>TÂM</strong>: Trkibadmin SPORTS đặt chữ TÂM là một trong những nền tảng quan trọng của việc kinh doanh. Coi trọng khách hàng và luôn lấy khách hàng làm trung tâm, đặt lợi ích và mong muốn của khách hàng lên hàng đầu; nổ lực mang đến cho khách hàng những sản phẩm - dịch vụ tốt nhất; xem sự hài lòng của khách hàng là thước đo thành công.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Trí</strong>: Trkibadmin SPORTS luôn đề cao sự sáng tạo, là đòn bẩy phát triển, nhằm tạo ra giá trị khác biệt và bản sắc riêng của sản phẩm. Chúng tôi đề cao tinh thần dám nghĩ, dám làm, khuyến khích tìm tòi, ứng dụng tiến bộ khoa học, kỹ thuật và công nghệ mới vào quản lý, sản xuất; luôn chủ động cải tiến, nâng cao chất lượng sản phẩm- dịch vụ.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>NHÂN</strong>: Trkibadmin SPORTS xây dựng các mối quan hệ với khách hàng, đối tác, đồng nghiệp và xã hội bằng sự thiện chí, tinh thần nhân văn. Chúng tôi luôn coi người lao động là tài sản quý giá nhất; xây dựng mội trường làm việc chuyên nghiệp, năng động, sáng tạo; tạo điều kiện thu nhập cao và cơ hội phát triển công bằng cho tất cả cán bộ nhân viên.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Khẩu hiệu (slogan)</strong>: Together we can</span></p>\r\n<p><br /><span style=\"font-size: 14pt;\"><strong>TRIẾT LÝ KINH DOANH</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Trkibadmin SPORTS mong muốn trở thành một công ty phân phối và sản xuất sản phẩm cầu lông chất lượng tốt nhất ở Việt Nam. Vì thế chúng tôi tâm niệm rằng chất lượng và sáng tạo là người bạn đồng hành của Trkibadmin SPORTS. Chúng tôi xem khách hàng là trung tâm và cam kết đáp ứng mọi nhu cầu của khách hàng.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Chính sách chất lượng</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Luôn thỏa mãn và có trách nhiệm với khách hàng bằng cách không ngừng cải tiến, đa dạng hóa sản phẩm và dịch vụ, đảm bảo chất lượng với giá cả cạnh tranh, tôn trọng đạo đức kinh doanh và tuân theo pháp luật.</span><br /><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>* ShopTrkibadmin cam kết bán hàng chính hãng, không bán hàng kém chất lượng làm ảnh hưởng đến thành viên.</strong></span></p>', '', 1, 2, '2023-11-15 07:13:51', 67, '', '2023-11-15 07:13:51', 0, 0, '0000-00-00 00:00:00', '2023-11-15 07:13:51', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(2, 61, 'Hướng dẫn thanh toán', 'hu-ng-d-n-thanh-toan', '<p><strong>1. Đối với quý khách hàng mua hàng trực tiếp tại các chi nhánh</strong></p>\r\n<p>- Tất cả các chi nhánh của hệ thống Trkibadmin đều chấp thuận thanh toán bằng tiền mặt, chuyển khoản qua ngân hàng hoặc thanh toán qua thẻ tín dụng. Đối với thanh toán qua thẻ tín dụng (Trkibadmin Sports chịu phí thẻ) ở bất cứ chi nhánh nào của hệ thống cửa hàng cầu lông Trkibadmin.</p>\r\n<p>- Quý khách có thể đến trực tiếp chi nhánh hoặc liên hệ qua hotline chi nhánh để biết thêm chi tiết.</p>\r\n<p>- Quý khách vui lòng kiểm tra sản phẩm kỹ trước khi thanh toán.</p>\r\n<p><strong>2. Đối với quý khách hàng mua hàng online đặt hàng qua Website</strong></p>\r\n<p>- Sau khi nhận được thông tin đặt hàng chúng tôi sẽ gọi điện để xác nhận đơn hàng trong vòng 24h và phản hồi lại thông tin cho khách hàng về việc thanh toán và thời gian giao nhận.</p>\r\n<p>- Quý khách có thể thanh toán COD - thanh toán khi nhận hàng, hoặc chuyển khoản thanh toán trước qua tài khoản ngân hàng.</p>\r\n<p>- Trong trường quý khách mua sản phẩm vợt có yêu cầu đan sẵn cước, quý khách vui lòng thanh toán trước toàn bộ giá trị đơn hàng bao gồm vợt và cước đan vợt bằng hình thức chuyển khoản qua tài khoản ngân hàng.</p>\r\n<p>- Quý khách có thể kiểm tra hàng trước khi nhận hàng, trong trường hợp có yêu cầu đổi/trả hàng hoặc vấn đề về sản phẩm, quý khách vui lòng liên hệ lại qua hotline 0866779560 để được hỗ trợ.</p>\r\n<p><strong>3. Đối với quý khách hàng mua hàng online đặt hàng qua số hotline của chi nhánh</strong></p>\r\n<p>- Quý khách có thể thanh toán COD - thanh toán khi nhận hàng, hoặc chuyển khoản thanh toán trước qua tài khoản ngân hàng.</p>\r\n<p>- Trong trường quý khách mua sản phẩm vợt có yêu cầu đan sẵn cước, quý khách vui lòng thanh toán trước toàn bộ giá trị đơn hàng bao gồm vợt và cước đan vợt bằng hình thức chuyển khoản qua tài khoản ngân hàng (Danh sách số tài khoản của từng chi nhánh được cập nhật bên dưới).</p>\r\n<p><strong>4. Đối với quý khách hàng mua sỉ</strong></p>\r\n<p>Đối với những khách hàng cá nhân hoặc cửa hàng muốn liên hệ mua sỉ ( bán buôn) liên hệ số: 0866779560. Sẽ được nhân viên hỗ trợ.</p>', '', 1, 2, '2023-11-15 07:24:36', 67, '', '2023-11-15 07:30:43', 67, 0, '0000-00-00 00:00:00', '2023-11-15 07:24:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 3, '', '', 1, 7, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(3, 62, 'Hướng dẫn cách chọn vợt cầu lông cho người mới chơi', 'hu-ng-d-n-cach-ch-n-v-t-c-u-long-cho-ngu-i-m-i-choi', '<p><span style=\"font-size: 14pt;\">Đối với người mới chơi, việc lựa chọn một cây vợt cầu lông tốt và phù hợp với bản thân là một chuyện không phải dễ dàng. Hiểu được điều này, SHOPTrkibadmin đã phát triển 1 tính năng có thể giúp cho người mới chơi cầu lông có thể lựa chọn cây vợt cầu lông theo những yếu tố như: Thương hiệu; thông số vợt cầu lông (trọng lượng, điểm cân bằng, độ cứng); theo phong cách chơi (tấn công, phòng thủ, công thủ toàn diện), theo nội dung chơi, trình độ cũng như mức giá. Bạn chỉ cần bấm chọn những thông số phù hợp với bạn, Trkibadmin sẽ lựa chọn những cây vợt cầu lông chính hãng đáp ứng những yêu cầu của bạn đưa ra. </span></p>\r\n<div class=\"layout-collection\">\r\n<div class=\"block-collection col-12\">\r\n<div class=\"section-box-bg\">\r\n<div class=\"category-products\"><span style=\"font-size: 14pt;\"><strong>1. Giới thiệu vợt cầu lông Felet Velton (Grey) chính hãng</strong></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\">Vậy là bạn có thể dễ dàng lựa chọn cho mình một cây vợt cầu lông tốt và ưng ý rồi phải không? </span></p>\r\n<p><span style=\"font-size: 14pt;\">Tuy nhiên, để hiểu rõ hơn về cách chọn vợt cầu lông cho người mới chơi và về các thông số đã đề cập ở trên, hãy cùng SHOPVNB phân tích từng yếu tố để đưa ra lý do tại sao chúng ta lại lựa chọn vợt cầu lông như vậy. Bây giờ chúng ta cùng tìm hiểu nhé.</span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>1. Cách chọn vợt cầu lông cho người mới chơi theo THƯƠNG HIỆU:</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Hiện nay, trên thị trường có rất nhiều thương hiệu (hãng) vợt cầu lông để mọi người có thể lựa chọn. Có những thương hiệu vợt cầu lông cao cấp phải kể đến như Yonex, Victor, Lining..vv hay những hãng vợt cầu lông giá rẻ cho học sinh, sinh viên như apacs, proace hay VNB. Vậy, sản phẩm đến từ những thương hiệu này có có gì khác biệt và nên chọn vợt cầu lông đến từ hãng nào? Cùng ShopTrkibadmin phân tích kỹ hơn nhé!</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.1 Hãng vợt cầu lông nổi tiếng nhất thế giới – Yonex</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Nhắc đến vợt cầu lông thì không thể không nhắc đến ông lớn Yonex. Hãng cầu lông lớn nhất thế giới về sản lượng vợt bán ra và được rất nhiều tên tuổi vận động viên lớn sử dụng. Đồng thời Yonex còn là nhà tài trợ lớn cho các giải đấu trên toàn thế giới là đối tác quan trọng của liên đoàn cầu lông thế giới.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Ưu điểm lớn nhất của hãng vợt cầu lông Yonex này đó chính là luôn đi tiên phong trong những phát minh về công nghệ trên những cây vợt. Ngoài ra còn đi đầu trong thiết kế với những sản phẩm có màu sắc nổi bật, khung vợt có cấu trúc đặc biệt phù hợp với nhiều lối chơi và từng đối tượng khác nhau.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Các cây vợt mà hãng Yonex cho ra mắt thị trường đều là các sản phẩm chất lượng, mang tính ổn định và tốc độ kinh ngạc. Dẫn đầu về công nghệ sản xuất, cho nên các cây vợt đều của Yonex đều được trang bị các công nghệ hiện đại nhất. Hầu như các cây vợt của các vận động viên top của bảng xếp hạng đều là mang thương hiệu Yonex. </span></p>\r\n<p><span style=\"font-size: 14pt;\">Một số sản phẩm mới nhất của hãng vợt cầu lông nổi tiếng Yonex mới cho ra thị trường như: Vợt Cầu Lông Yonex Astrox 77 pro, Vợt Cầu Lông Yonex Arcsaber 11 Pro, astrox 99,...điều cho những đánh giá, phản hồi rất tích cực từ người chơi.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Tuy nhiên, nhược điểm của những cây vợt đến từ thương hiệu vợt cầu lông Yonex đó là giá thành khá cao, những dòng vợt cao cao cấp có thể lên đến 2-3 triệu. Khá đắt đỏ so với nhu cầu của học sinh, sinh viên.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.2 Thương hiệu vợt cầu lông Victor</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Nếu như trước đây Victor được xem là thế lực lớn trong các hãng vợt cầu lông trên thế giới thì giờ đây hãng vẫn duy trì được điều đó. Giống như Yonex các vợt cầu lông của Victor cũng được nhiều vợt thủ nổi tiếng sử dụng như: Gao Ning, Yang Wei, và Zhang Ji Wen.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Phần lớn các sản phẩm mà Victor cho ra mặt đều hướng tới người sử dụng có sức mạnh, hỗ trợ các cú đập cầu và phản công chớp nhoáng. Một số cây vợt làm bằng graphit cacbon, là một cây vợt bền, chính xác dành cho cả những người chơi kinh nghiệm và mới làm quen.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Tuy nhiên, trong vài năm nay trở lại đây thì hãng Victor lại tung ra thị trường khá ít  vợt cầu lông mới so với những tên tuổi còn lại như Yonex hay Lining. </span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.3 Vợt cầu lông thương hiệu Li-Ning</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Hãng vợt cầu lông nổi tiếng này chuyên sản xuất các dụng cụ thể thao, đồ tập thể thao lớn của Trung Quốc và sản phẩm phụ kiện cầu lông là 1 trong những dòng sản phẩm trọng điểm của hãng Lining.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Là một thương hiệu đến từ Trung Quốc nhưng không vì thế thương hiệu vợt cầu lông Lining không được chào đón ở Việt Nam. Lining ngày càng chiếm được nhiều cảm tình của người dùng và đang ngày càng phát triển. Dần nắm vị thế số 2 thế giới và tham vọng vượt qua Yonex.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông Lining được các nước sử dụng rất nhiều, đặc biệt ở các quốc gia của Châu Á. Vợt Lining đem lại trải nghiệm khá mới lạ cho các anh em mới gia nhập môn thể thao này.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Các sản phẩm vợt cầu lông Lining nổi trội với mẫu mã đa dạng được chia thành nhiều dòng vợt khác nhau phù hợp với từng lối chơi như aeronaut, calibar, tectonic... Đặc biệt hãng vợt cầu lông nổi tiếng này còn rất trú trọng vào thiết kế màu sắc và ngoại hình cho cây vợt.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông Lining trên thị trường đang được rất nhiều người chơi ưa chuộng, đặt biệt sẽ có nhiều phân khúc vợt cầu lông từ 1 triệu đến 2 triệu. Một trong số đó phải kể đến như Vợt Cầu Lông Lining Aeronaut 6000, Aeronaut 6000 speed, Aeronaut 6000C, Vợt Cầu Lông Lining Aeronaut 4000c, Vợt Cầu Lông Lining Calibar 300C Chính Hãng..</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.4 Thương hiệu vợt cầu lông Mizuno</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Hãng vợt cầu lông Mizuno cũng xuất phát từ Nhật Bản, hiện cũng là 1 trong những thương hiệu được ưa chuộng trên thị trường. Mizuno ra đời cũng khá lâu so với các hãng lớn khác như Yonex, Lining hay Victor.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Những cây vợt cầu lông Mizuno trú trọng vào chất liệu cao cấp và hình dạng khung vợt độc lạ nhưng vẫn công năng và cho tính khí động học cao.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Hiện nay trên thị trường Việt Nam, Mizuno đã có chỗ đứng vững chắc bởi những cây vợt cầu lông Mizuno nổi bật với thiết kế cao cấp từ chất liệu tới mức độ hoàn thiện sản phẩm.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Nhược điểm, giá thành các cây vợt cầu lông Mizuno luôn ở mức tương đối cao nếu đem so về giá với các cây vợt của hãng vợt cầu lông khác.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Một số cây vợt của mizuno được ưa chuộng phải kể đến như: Vợt cầu lông Mizuno Speedflex 9.1, Vợt cầu lông Mizuno Fortius 50 Spirit, Vợt cầu lông Mizuno Fortius 30 Controll...</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.5 Vợt cầu lông thương hiệu Proace</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Ngoài những tên tuổi nổi tiếng và đang rất được ưa chuộng kể trên; với những mẫu vợt vô cùng đắt đó thì cũng có nhiều hãng vợt giá rẻ để đáp ứng nhu cầu cho người chơi phong trào, học sinh, sinh viên. Tiêu biểu phải kể đến hãng vợt cầu lông proace.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông Proace là thương hiệu của Anh thành lập vào năm 1978. Hãng luôn nỗ lực cung cấp các thiết bị hỗ trợ các bộ môn thể thao như golf, Tennis, cầu lông. Với mong muốn đem đến các sản phẩm chất lượng. Tính đến nay vợt cầu lông Proace đã nhận được rất nhiều lời tán dương về uy tín và sản phẩm chất lượng.</span><br /><span style=\"font-size: 14pt;\">Mặc dù không tạo ra nhiều cây vợt số 1 thế giới như hãng Yonex nhưng Proace cũng đã cho ra đời nhiều sản phẩm vợt cầu lông nổi tiếng như Proace S.D.S,..</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông Proace đề cao chất lượng sản phẩm, chính vì vậy mà bạn có thể thấy có những cây vợt Proace có thể sử dụng từ đời này sang đời khác mà vẫn có thể sử dụng tốt. Một đặc điểm duy nhất mà cho tới thời điểm hiện tại cá nhân mình thấy chỉ có Proace làm được điều này.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.6 Hãng Vợt cầu lông giá rẻ Apacs</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Nối tiếp hãng vợt cầu lông giá rẻ là thương hiệu vợt cầu lông Apacs. Một thương hiệu hiện cũng đang được rất nhiều người chơi lựa chọn. Một đặc điểm nổi bật của hãng vợt cầu lông Apacs là các cây vợt của họ luôn có sự bền bỉ, khung vợt cứng chịu được mức căng lớn và mẫu mã đa dạng đi cùng với giá thành hợp lý.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Một số cây vợt cầu lông Apacs nổi bật có thể kể đến như: Apacs Z-Ziggler, Apacs Virtus 99…</span></p>\r\n<p><span style=\"font-size: 14pt;\">Hãng vợt cầu lông giá rẻ này có nhiều dòng vợt khác nhau trong đó nổi bật là dòng Tantrum series với lối đánh thiên công, dòng vợt Ziggler phù hợp với điều cầu và phản tạt, dòng Lethal Light là dòng thân nhẹ, cho khả năng thủ cầu tốc độ và chuẩn xác.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Nhìn chung, nếu bạn tìm kiếm một cầu vợt cầu lông giá rẻ cho người mới chơi và có chất lượng tốt, mức căng cao; mẫu mã đa dạng thì hãng vợt cầu lông Apacs đáng để bạn cân nhắc.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>1.7 Vợt cầu lông mang thương hiệu VNB</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Một thương hiệu xuất phát từ lòng tự hào dân tộc. Vợt cầu lông mang thương hiệu VNB đã và đang làm mưa làm gió trên thị trường. Các sản phẩm vợt mạng thương hiệu VNB đều được các khách hàng tin dùng và đánh giá chất lượng. Dù là một thương hiệu vợt trong nước nhưng VNB không làm anh em thất vọng về hiệu năng trên từng cây vợt. VNB luôn cải tiến và đem đến cho các anh em sản phẩm tối ưu nhất với mức giá phải chăng nhất. Thương hiệu VNB hứa hẹn sẽ vươn ra “biển lớn”. Sánh ngang với các thương hiệu nổi tiếng. </span></p>\r\n<p><span style=\"font-size: 14pt;\">Một trong những sản phẩm vợt VNB phải kể đến là VNB V200 ( v200 xanh, v200 đỏ và v200i màu hồng cho nữ), VNB V88, VBB TC88.  Những sản phẩm vợt cầu lông VNB luôn đáp ứng tiêu chí rẻ, bền, đẹp đáp ứng nhu cầu của người mới chơi và học sinh, sinh viên.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Ngoài những hãng vợt cầu lông nổi tiếng Shop VNB vừa nêu trên thì cũng có nhiều thương hiệu khác như prokenex, Kumpoo, Kawasaki, VS thuộc phân khúc vợt cầu lông giá rẻ. Cũng là những thương hiệu đáng tin cậy cho sự lựa chọn của bạn.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>2. Cách chọn vợt cầu lông cho người mới chơi theo thông số vợt</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Thông số vợt cầu lông là một trong những yếu tố quan trọng quyết định đến 1 cây vợt cầu lông có phù hợp với bạn hay không. Thông số vợt cầu lông thường sẽ bao gồm: Trọng lượng vợt, điểm cân bằng, độ cứng đũa vợt, chu vi cán vợt.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>2.1 Trọng lượng của vợt - Một trong những kinh nghiệm chọn vợt cầu lông cho người mới chơi</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Bất kỳ ai khi tư vấn cách chọn vợt cầu lông cho bạn, họ cũng sẽ nói với bạn rằng trọng lượng vợt là yếu tố quan trọng nhất. Không có trọng lượng tốt nhất mà mỗi người sẽ phù hợp với một loại trọng lượng khác nhau. Nhà sản xuất sẽ dùng ký hiệu U trên thân vợt giúp người mua chỉ cần nhìn thôi cũng có thể biết được trọng lượng của mỗi chiếc vợt và phân biệt được chúng. Bạn không biết mới chơi cầu lông nên chọn vợt nào? Gợi ý trọng lượng vợt cho bạn.</span></p>\r\n<p><span style=\"font-size: 14pt;\">- 5U: khoảng 75g – 80g.</span><br /><span style=\"font-size: 14pt;\">- 4U: Khoảng 80g – 85g.</span><br /><span style=\"font-size: 14pt;\">- 3U: Khoảng 85g – 90g.</span><br /><span style=\"font-size: 14pt;\">- 2U: Khoảng 90g – 95g.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Mời các bạn xem qua video để hiểu rõ hơn</strong>:</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\">Tuy nhiên, đối với người mới biết chơi cầu lông bạn nên chọn sản phẩm nặng từ 80 - 85g (chưa kể dây cước và cuốn cán) nhé. Những chiếc vợt này không quá nặng cũng không quá nhẹ nên sẽ giúp bạn hạn chế và giảm tình trạng bị mỏi tay và đảm bảo độ chính xác khi đánh cầu. Một cây vợt nhẹ là sự lựa chọn tốt nhất cho người mới bắt đầu vì nó giúp bạn di chuyển nhanh cũng như cho bạn nhiều thời gian để điều chỉnh chuyển động của vợt.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>2.2  Chọn độ Cứng/Mềm của thân vợt vừa với lực cổ tay</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Tốc độ vung vợt chính là thứ sẽ quyết định bạn thích hợp với vợt dẻo hay vợt cứng. Một thân vợt cứng sẽ có khả năng phản hồi nhanh và mạnh, rất phù hợp với những người có tốc độ vung vợt nhanh. Nó cho phép bạn trả lại các quả cầu nhanh hơn và gây nhiều bất ngờ cho đối thủ. Thường những cây vợt thân cứng sẽ đòi hỏi người chơi có kỹ thuật cầu lông tốt như VĐV bán chuyên, chuyên nghiệp, các VĐV thế giới.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Một thân vợt mềm dẻo (do khi vung, vợt có độ cong nhất định), bởi vì người mới chơi luyện tập rất nhiều nên sẽ cần vấn đề trợ lực, giúp giải phóng hoàn toàn lực cổ tay khi bạn là một người có tốc độ vung vợt chậm hoặc là người mới bắt đầu chơi cầu. Cách chọn vợt cầu lông cho người mới chơi không sử dụng thân cứng, như vậy sẽ khiến bạn đau tay và không thể phát huy tốt tác dụng đánh cầu lông.</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>2.3 Điểm cân bằng</strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Điểm cân bằng vợt cầu lông là một trong những thông số vợt mà người chơi cầu lông cần chú ý khi tư vấn mua vợt cầu lông, cách chọn vợt cầu lông cho người mới chơi. Điểm cân bằng vợt cầu lông sẽ quyết định được độ nặng đầu, nhẹ đầu của cây vợt và đồng nghĩa với lối chơi tấn công, phòng thủ của từng người chơi.</span></p>\r\n<p><span style=\"font-size: 14pt;\">– <strong>Vợt nhẹ đầu</strong>: Cho khả năng linh hoạt và điều cầu cao nhưng hạn chế ở khả năng tấn công, phù hợp với các cú chặn cầu, đẩy cầu, chém cầu.</span></p>\r\n<p><span style=\"font-size: 14pt;\">– <strong>Vợt cân bằng</strong>: Hỗ trợ tốt trong khả năng điều cầu và trên lưới, tấn công cũng tương đối tốt, thiên về lối đánh công thủ toàn diện.</span></p>\r\n<p><span style=\"font-size: 14pt;\">– <strong>Vợt nặng đầu</strong>: Đây là điển hình cho dòng vợt tấn công uy lực, phù hợp với các cú đập, đánh mạnh, cầu đi sâu xuống cuối sân.Vợt càng nặng đầu thì khả năng tấn công càng tốt đòi hỏi theo nó phải là độ cứng của vợt. Nhưng ngược lại thì nó cho khả năng linh hoạt kém hơn.</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>3. Chọn vợt cầu lông theo Phong cách chơi</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Như shop cũng đã để cập về điểm cân bằng ở phần thông số vợt bên trên, thì các bạn cũng đã hình dung được 1 cây vợt thiên công hay công thủ toàn diện thì thông số vợt sẽ như thể nào. Tuy Nhiên, Shop VNB cũng đã phân loại sẵn cho bạn các dòng vợt nào thiên công; công thủ toàn diện; hay phản tạt, phòng thủ.</span></p>\r\n<h3><span style=\"font-size: 14pt;\"><strong>3.1 Chọn vợt cầu lông cho người chơi theo phong cách chơi Tấn Công </strong></span></h3>\r\n<p><span style=\"font-size: 14pt;\">Lối chơi tấn công dồn dập, Smash cầu liên tục để ghi điểm, áp đảo đối thủ trên sân luôn là lối chơi được rất nhiều các lông thủ ưa thích. Đặc biệt, một trong những yếu tố quyết định tạo nên cú đập cầu uy lực chính là cây vợt của bạn. Chính vì thế việc lựa chọn một cây vợt thiên công nặng đầu sẽ phù hợp với lối đánh công của bạn. Một trong số những cây vợt thiên công phải kể đến như:</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Yonex thiên công: Vợt cầu lông Yonex Astrox 99, Yonex Astrox 88D Pro, Yonex Astrox 77 Pro...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Lining thiên công: Vợt cầu lông Lining Calibar 900C, Lining Tectonic 7C, 4000c,...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Victor thiên công: Victor Thruster Ruyga, victor jetspeed 10,...</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>3.2 Lối chơi Công Thủ Toàn Diện</strong> </span></p>\r\n<p><span style=\"font-size: 14pt;\">Bạn là người chơi cầu lông yêu thích lối đánh kỹ thuật, nhanh, chậm tùy biến, thích kiểm soát cầu, điều cầu bào mòn sức bền đối thủ và “chốt hạ” bằng một pha tấn công nhanh chớp nhoáng. Bạn  là người mới chơi cầu lông và chưa định hình được lối đánh của mình, chưa biết lực tay cũng như phong cách chơi của mình. Hay bạn là người chơi lúc tấn công nhanh, dồn dập, lúc lại phòng thủ ổn định từ từ, kiểm soát trận cầu thì ắc hẳn đó là lối đánh công thủ toàn diện hay còn gọi là toàn diện.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Lối đánh công thủ toàn diện không chỉ dựa vào kỹ thuật, sức bền, khả năng phán đoán tình huống cầu của người mà quan trọng không kém còn là cây vợt mà bạn dùng. Một cây vợt nặng đầu cho khả năng tấn công rất tốt nhưng lại hạn chế trong vấn đề phản xạ nhanh của các pha cầu cận lưới, cầu nhanh. Một cây vợt nhẹ đầu giúp bạn ứng biến nhanh trong các tính hướng cầu đổi hướng bất ngờ, những pha bỏ nhỏ, chụp cầu, đẩy cầu, chơi trên lưới được thực hiện rất hiệu quả nhưng khả năng tấn công của vợt lại không cao, đập cầu đi không cắm, gây mất sức người chơi. Vì vậy, một cây vợt cân bằng cho lối chơi công thủ toàn diện là vô cùng quan trọng quyết định phần lớn đến lối đánh, phong cách chơi và trình độ người chơi.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông toàn diện, hay còn gọi là vợt cầu lông cân bằng là vợt có điểm cân bằng 285 +- 3 mm hoặc có hãng xác định đến 285 +- 5 mm.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Ngày nay, các hãng cầu lông sản xuất vợt toàn diện thường đưa vào các dòng vợt riêng mà khi nhắc đến dòng vợt đó người chơi sẽ biết đây là cây vợt toàn diện. Ví dụ như:</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Yonex: Arc Saber, Nanoflare, Doura, ...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Victor: Brave Sword, Hypernano X, Jetspeed, ...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Lining: High Carbon, những cây vợt theo Boost Series, ...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Mizuno: Technoblade, ...</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>3.3 Cách chọn vợt cầu lông theo lối chơi Phản Tạt, Phòng Thủ</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông chuyên phản tạt nổi bật với sự nhanh lẹ trong lối chơi, giúp người chơi có sự linh hoạt trong phòng thủ, bên cạnh đó còn dành thế chủ động từ những pha phản tạt chất lượng.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Một số cây vợt thiên về lối đánh phản tạt, phòng thủ phải kể đến:</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Yonex chuyển thủ phản tạt:  Arcsaber 11, Nanoflare 700 xanh.</span><br /><span style=\"font-size: 14pt;\">- Vợt cầu lông Victor: Brave Sword 12.</span><br /><span style=\"font-size: 14pt;\">- Vợt cầu lông Lining chuyên thủ: Aeronaut 6000D, Vợt cầu lông Lining 3D Calibar 300B, Lining 3D Calibar 900i.</span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>4. Chọn vợt cầu lông theo nội dung chơi</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Nội dung chơi cầu lông thường sẽ chia ra 2 nội dung chính đó là đánh đôi và đánh đơn.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Vợt cầu lông có cần phân biệt vợt đánh đôi và đánh đơn hay không? Thật sự đây cũng là một câu hỏi được khá nhiều người chơi tìm hiểu. Có nhiều bạn chơi thì sẽ sử dụng vợt riêng để đánh đôi và đánh đơn. Còn 1 số người chơi thì sử dụng 1 vợt dùng chung cho cả đánh đơn và đánh đôi, miễn sao hợp tay là được.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Thật sự thì cũng chưa có cái nào quy định rõ vợt chỉ sử dụng riêng cho đánh đôi, hoặc chỉ sử dụng riêng cho đánh đơn. Tuy nhiên, trong đánh đôi thường những pha cầu cho tốc độ nhanh hơn nên đòi hỏi chọn lựa những cây vợt có trọng lượng không quá nặng tầm 4U, điểm cân bằng hơi nặng đầu và đũa vợt cứng trung bình để người chơi có thể dễ dàng xử lí mọi tình huống trên sân đấu.</span><br /><span style=\"font-size: 14pt;\">Một số mẫu vợt cầu lông đánh đôi: Yonex Nanoflare 700 Đỏ, Yonex Astrox 88d pro, Mizuno JPX 8.1, Lining Tectonic 7.</span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>5. Hướng dẫn chọn vợt cầu lông theo trình độ chơi</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Mỗi loại vợt sẽ có những điểm riêng về thiết kế sao cho phù hợp với từng trình độ và lối chơi khác nhau. Tất nhiên những thiết kế đó vẫn phải đáp ứng tiêu chuẩn quy định của luật cầu lông.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Nếu bạn là người mới</strong>, đang tập làm quen với những kỹ thuật đánh cầu lông cơ bản thì cách chọn vợt cầu lông cho người mới chơi là chọn 1 cây vợt vợt phổ thông, giá rẻ. Những cây vợt này vẫn trang bị những công nghệ để hỗ trợ tối đa cho người chơi. Thông thường thì những cây vợt thuộc tầm 5u,4u, đũa cứng trung bình và vợt cân bằng sẽ thích hợp cho người mới chơi. Một số cây vợt cho người mới chơi phải kể đến như: vnb v200, apacs one malaysia, prokenex 704, Vợt Cầu Lông Yonex Astrox 01A...</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với người chơi có trình độ trung bình</strong>: Bạn sẽ lựa chọn cho mình những cây vợt thiên về lối đánh của mình hơn. Có thể thiên công hoặc công thủ toàn diện tùy theo phong cách chơi của từng người. Tuy nhiên, đối với vợt thiên công các bạn không nên chọn những cây vợt quá nặng đầu hoặc quá cứng. Như vậy sẽ không những không mang lại hiệu quả mà còn rất dễ bị chấn thương.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Đối với người chơi có trình độ khá tốt</strong>: Đối với những người chơi đạt đến trình độ này thì lực tay khá khỏe, quan trọng lựa chọn cho mình một cây vợt hợp với tay nhất. Thường thì người chơi đạt trình độ khá tốt sẽ chọn cho mình những cây vợt nặng 3U, 4U, thân vợt tương đối cứng. Hoặc những cây vợt siêu nặng đầu để có thể thực hiện những pha smash cháy sân.</span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>6. Hướng dẫn chọn vợt cầu lông theo mức giá</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Hiện tại vợt cầu lông sẽ có nhiều mức giá khác nhau, có những cây vợt chỉ tầm vài trăm cũng có những cây vợt lên đến mức vài triệu. Vậy chúng có gì khác nhau, cùng shopVNB tìm hiểu nhé!</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Vợt cầu lông dưới 5 trăm</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Ở mức giá dưới 5 trăm thì hiện có rất ít mẫu, đa phần là vợt cầu lông cho trẻ e và vợt phôi. Ưu điểm của những cây vợt này là giá thành rẻ, tuy nhiên thì nước sơn sẽ không được châu chuốt cũng như độ chịu lực kém của khung vợt. Vợt rất dễ bị gãy cũng như hư hỏng.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Vợt cầu lông giá từ 5 trăm đến 1 triệu </strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Phân khúc này có rất nhiều sản phẩm cho bạn lựa chọn. Ở phân khúc này thì đa phần là vợt cầu lông giành cho người mới chơi, người chơi phong trào. Những cây vợt thuộc phân khúc này được thiết kế bắt mắt, độ bền cao, mang đến những trải nghiệp tốt nhất. Một trong số những cây vợt cầu lông giá từ 5 trăm đến 1 triệu phải kể đến như: Vnb V200, Lining High Carbon 1200, Kumpoo K520 Pro, Vnb V88, Yonex Astrox 01 Clear, Vợt cầu lông Apacs Power Concept 928, Vợt cầu lông Lining Tectonic 1...</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Vợt cầu lông từ 1 triệu - 2 triệu</strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Phân khúc từ 1 triệu đến 2 triệu là phân khúc trung bình và đa phần được nhiều người chơi lựa chọn. Những cây vợt giá từ 1 triệu - 2 triệu cũng đã được trang bị những công nghệ tiên tiến để tối ưu cho người sử dụng. Bên cạnh đó, mức giá này là mức giá hợp lý để đại đa số người chơi có thể bỏ ra và lựa chọn cho mình một cây vợt ưng ý nhất. Ở tầm giá này, bạn cũng đã có thể lựa chọn những cây vợt đến từ những thương hiệu nổi tiếng như Yonex, Lining, Mizuno..Một số cây vợt cầu lông giá từ 1 đến 2 triệu nổi bậc như: </span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Yonex giá từ 1 đến 2 triệu: Vợt Cầu Lông Yonex Astrox 88S Play Chính Hãng, Vợt Cầu Lông Yonex Astrox 99 Play - Trắng Chính Hãng, Vợt Cầu Lông Yonex Astrox 88D Game Chính Hãng, Vợt Cầu Lông Yonex Astrox 10 DG (NV/TQ) Chính Hãng..</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Lining giá từ 1 đến 2 triệu: Vợt Cầu Lông Lining Windstorm 74, Vợt Cầu Lông Lining Tectonic 3 Chính Hãng, Vợt Cầu Lông Lining Aeronaut 6000, Vợt Cầu Lông Lining Aeronaut 6000 Power,...</span></p>\r\n<p><span style=\"font-size: 14pt;\">- Vợt cầu lông Lining giá từ 1 đến 2 triệu: Vợt Cầu Lông Victor Arrowspeed 30 Chính Hãng, Vợt Cầu Lông Victor JS700 Chính Hãng, Vợt Cầu Lông Victor DX 09 Chính Hãng...</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Vợt cầu lông từ 2 - 3 triệu </strong></span></p>\r\n<p><span style=\"font-size: 14pt;\">Ở mức giá từ 2 đến 3 triệu, sẽ là những cây vợt thuộc dòng cao cấp từ các hãng lớn. Những cây vợt ở phân khúc này sẽ được trang bị những công nghệ mới nhất hiện tại, cùng với những vật liệu và thiết kế tiên tiến nhất.  Những cây vợt thuộc phân khúc cao cấp này sẽ cho người chơi những trải nghiệm tốt nhất.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Một số vợt cầu lông giá từ 2 đến 3 triệu nội bậc: Yonex Astrox 77 Đỏ Shine Red, Lining Calibar 600, Yonex NanoFlare 600, Yonex Astrox 100 Tour, Lining Tectonic 7.,,,</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>7. Hướng dẫn chọn vợt cầu lông cho người mới chơi - Xác định mục đích sử dụng</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Đầu tiên trước khi quyết định chọn mua vợt cầu lông thì bạn phải xác định mục đích mua vợt cầu lông để làm gì như mua vợt cầu lông thi đấu, vợt cầu lông luyện tập hay để phục vụ cho công tác đào tạo, tùy vào từng mục đích mà ta sẽ biết cách chọn mua vợt cầu lông nào phù hợp.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Giả dụ như bạn muốn mua vợt cầu lông để thi đấu thì chắc chắn bạn cần lựa chọn sản phẩm có chất lượng tốt đến từ những thương hiệu vợt cầu lông nổi tiếng được nhiều người dùng, có thông số kỹ thuật chính xác,.... Bạn cần mua những loại như: vợt Yonex chính hãng, vợt cầu lông Lining, vợt cầu lông Victor,... Bên cạnh việc xác định vợt cầu lông tốt phù hợp với mình, bạn cần phải suy nghĩ xem nên chọn mua vợt cầu lông của hãng nào? Chọn tìm ra <a href=\"http://shopvnb.com/\">shop cầu lông uy tín</a> hiện nay để mua vợt.</span></p>\r\n<h2><span style=\"font-size: 14pt;\"><strong>8. Trình độ và lối chơi cầu lông - mới tập chơi cầu lông nên chọn vợt nào?</strong></span></h2>\r\n<p><span style=\"font-size: 14pt;\">Một yếu tố tiếp theo mà người mới chơi cầu lông cần lưu ý là trình độ và lối chơi cầu lông. Bởi vì tất cả các loại vợt cầu lông không phải cái nào cũng có thiết kế, đặc điểm và công dụng giống nhau mà nó sẽ có những điểm riêng về thiết kế để phù hợp với mỗi trình độ và mỗi lối chơi khác nhau, tùy vào từng người. Tất nhiên những thiết kế và đặc điểm đó vẫn phải nằm trong phạm vi tiêu chuẩn nhất định được luật cầu lông quy định.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Nếu bạn mới biết chơi cầu lông và đang tập làm quen với những kỹ thuật đánh cầu lông cơ bản và các lối chơi vẫn chưa xác định thì bạn chỉ cần cây vợt có độ nặng vừa phải, thân dẻo, trợ lực tốt tầm 4U hoặc 5U là chuẩn nhất.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://cdn2.shopvnb.com/uploads/images/tin_tuc/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-1.webp\" alt=\"Vợt cầu lông Yonex Nanoray Light 11i chính hãng\" /></span></p>\r\n<p><span style=\"font-size: 14pt;\"> <a title=\"Vợt cầu lông Yonex Nanoray Light 11i chính hãng\" href=\"https://shopvnb.com/vot-cau-long-yonex-nanoray-11i.html\" target=\"_blank\" rel=\"noopener noreferrer\">Vợt cầu lông Yonex Nanoray Light 11i chính hãng</a></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://cdn2.shopvnb.com/uploads/images/tin_tuc/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-2.webp\" alt=\"Vợt cầu lông Yonex NanoFlare Drive chính hãng\" /></span></p>\r\n<p><span style=\"font-size: 14pt;\"><a title=\"Vợt cầu lông Yonex NanoFlare Drive chính hãng\" href=\"https://shopvnb.com/vot-cau-long-yonex-nanoflare-drive.html\" target=\"_blank\" rel=\"noopener noreferrer\">Vợt cầu lông Yonex NanoFlare Drive chính hãng</a></span></p>\r\n<p><span style=\"font-size: 14pt;\">Nhưng nếu chơi được một thời gian và nắm được hết những lối chơi, từ đó sẽ hình thành lối chơi riêng cho mình, thì lúc đó lại cần chọn vợt phù hợp với lối chơi đó. Giả dụ nếu bạn thiên về chơi tấn công thì nên chọn vợt cầu lông tấn công, có đặc điểm thân cứng, nặng đầu. Các loại vợt cầu lông chuyên tấn công được nhiều người tin dùng như: Vợt cầu lông chuyên công Yonex Astrox 99, Yonex Voltric Z Force II,...</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Gợi ý cho bạn: </strong><a title=\"Top 10 vợt cầu lông thiên công được ưa chuộng nhất\" href=\"https://shopvnb.com/top-10-vot-cau-long-thien-cong-duoc-ua-chuong-nhat-\" target=\"_blank\" rel=\"noopener noreferrer\">Top 10 vợt cầu lông thiên công được ưa chuộng nhất</a></span></p>\r\n<p><span style=\"font-size: 14pt;\">Nếu bạn thiên về lối chơi phòng thủ, thì bạn cần chọn vợt cầu lông cân bằng, linh hoạt, xử lí được hầu hết các quả tấn công của đối thủ. Các loại vợt cầu lông phòng thủ được nhiều người dùng như: <a title=\"Vợt cầu lông Yonex Arcsaber 11 2017 chính hãng\" href=\"https://shopvnb.com/vot-cau-long-yonex-arcsaber-11-2017.html\" target=\"_blank\" rel=\"noopener noreferrer\">Yonex Arcsaber 11</a>, <a title=\"Vợt cầu lông Yonex NanoFlare 700 - Xanh chính hãng\" href=\"https://shopvnb.com/vot-cau-long-yonex-nanoflare-700-xanh.html\" target=\"_blank\" rel=\"noopener noreferrer\">Vợt cầu lông Yonex NanoFlare 700</a>,...</span></p>\r\n<p><span style=\"font-size: 14pt;\"> </span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://cdn2.shopvnb.com/uploads/images/tin_tuc/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-3.webp\" alt=\"Vợt cầu lông Yonex NanoFlare 700 Xanh chính hãng\" /></span></p>\r\n<p><span style=\"font-size: 14pt;\">Ngoài ra, nếu là muốn chọn một cây vợt cầu lông công thủ toàn diện thì có các loại như: Yonex NanoFlare 800, Yonex Duora 10,...</span></p>\r\n<p><span style=\"font-size: 14pt;\">Mua <a title=\"Vợt cầu lông chính hãng chất lượng\" href=\"https://shopvnb.com/vot-cau-long.html\" target=\"_blank\" rel=\"noopener noreferrer\">vợt cầu lông chính hãng</a> tại đây!</span></p>\r\n<h2><span style=\"font-size: 14pt;\"> </span></h2>\r\n<p><span style=\"font-size: 14pt;\">Vậy là <a href=\"http://shopvnb.com/\">ShopTrkibadmin</a> và chia sẻ và tư vấn cách chọn vợt cầu lông cho người mới chơi cho bạn, hy vọng những thông tin trên sẽ giúp bạn có thêm nhiều gợi ý để chọn vợt cầu lông tốt nhất phù hợp cho mình nhé!</span></p>', '', 1, 2, '2023-11-15 07:28:52', 67, '', '2023-11-15 07:28:52', 0, 0, '0000-00-00 00:00:00', '2023-11-15 07:28:52', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 6, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', ''),
(4, 63, 'Liên hệ', 'lien-h', '<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Hệ thống cửa hàng: </b><a title=\"Hệ thống cửa hàng\" href=\"https://shopvnb.com/he-thong-cua-hang\">1 shop Premium 59 cửa hàng </a>trên toàn quốc</span>\r\n<p><a href=\"https://shopvnb.com/he-thong-cua-hang\">Xem tất cả các cửa hàng T</a>rkibadmin</p>\r\n</div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Hotline: </b><a title=\"0355063692 | 0785277320\" href=\"tel:0355063692 | 0785277320\">0355063692 | 0785277320</a></span></div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Email: </b><a title=\"info@shopvnb.com\" href=\"mailto:info@shopvnb.com\">info@shopTrkibadmin.com</a></span></div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Hợp tác kinh doanh: </b><a href=\"tel:0947342259\">0947342259 (Ms. Thảo)</a></span></div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Hotline bán sỉ: </b><a href=\"tel:0911105211\">0911 105 211</a></span></div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Nhượng quyền thương hiệu: </b><a href=\"tel:0334.741.141\">0334.741.141 (Mr. Hậu)</a></span></div>\r\n<div class=\"content-contact clearfix\"><span class=\"list_footer\"><b>Than phiền dịch vụ: </b><a href=\"tel:0334.741.141\">0334.741.141 (Mr. Hậu)</a></span></div>', '', 1, 2, '2023-11-15 08:51:13', 67, '', '2023-11-15 08:51:13', 0, 0, '0000-00-00 00:00:00', '2023-11-15 08:51:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 6, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');
INSERT INTO `satnu_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(5, 64, 'hướng dẫn', 'hu-ng-d-n', '<p>acsfweefwc</p>', '', 1, 2, '2023-11-20 13:20:34', 67, '', '2023-11-20 13:21:36', 67, 67, '2023-11-20 13:23:51', '2023-11-20 13:20:34', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_contentitem_tag_map`
--

CREATE TABLE `satnu_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `satnu_content_frontpage`
--

CREATE TABLE `satnu_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_content_rating`
--

CREATE TABLE `satnu_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_content_types`
--

CREATE TABLE `satnu_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_content_types`
--

INSERT INTO `satnu_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_core_log_searches`
--

CREATE TABLE `satnu_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_extensions`
--

CREATE TABLE `satnu_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_extensions`
--

INSERT INTO `satnu_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.1\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"e2782e13c1e900ee510f255ee0886b22\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `satnu_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.60.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1700481246}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1700038181,\"unique_id\":\"4d74e2a5f7eb7e1a162732c9cff5278dc7c8a304\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1699431152}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `satnu_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(496, 0, 'plg_quickicon_eos310', 'plugin', 'eos310', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_eos310\",\"type\":\"plugin\",\"creationDate\":\"June 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.0\",\"description\":\"PLG_QUICKICON_EOS310_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"eos310\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"0\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2023\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.12\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2023\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.12\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2023\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.12\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2023\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.12.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'dd_gaming_94', 'template', 'dd_gaming_94', '', 0, 1, 1, 0, '{\"name\":\"dd_gaming_94\",\"type\":\"template\",\"creationDate\":\"2016-09-06\",\"author\":\"DiabloDesign\",\"copyright\":\"Copyright (C) DiabloDesign License All rights reserved.\",\"authorEmail\":\"biuro@diablodesign.eu\",\"authorUrl\":\"http:\\/\\/www.diablodesign.eu\",\"version\":\"1.0\",\"description\":\"\\n\\t\\n\\t\\t<style type=\\\"text\\/css\\\" media=\\\"all\\\">\\n\\t\\t\\t\\t<!--\\n\\t\\t\\t\\th1 {clear:both;font-family: Georgia, sans-serif;font-size:36px;  font-weight: normal;}\\n\\t\\t\\t\\t-->\\n\\t\\t\\t<\\/style>\\n\\t\\t\\t<script src=\\\"..\\/templates\\/dd_gaming_94\\/admin\\/jscolor\\/jscolor.js\\\"><\\/script>\\n\\t        <div class=\\\"dd-description clearfix\\\">\\n\\t        <h1><img src=\\\"http:\\/\\/diablodesign.eu\\/syg.png\\\" \\/><\\/a><span style=\\\"color: #cc0607;\\\"> DD Gaming 94 - Pro version<\\/span><\\/h1>\\n\\t        <hr>\\n\\t\\t\\t<div style=\\\"margin: 20px 0 0;\\\">\\n\\n\\t\\t\\t\\t<\\/div>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"license\":\"\",\"analytics\":\"UA-XXXXXXXX-1\",\"ac\":\"0\",\"fav\":\"templates\\/dd_gaming_94\\/images\\/favicon.ico\",\"logoFile\":\"templates\\/dd_gaming_94\\/images\\/logo.png\",\"logoLink\":\"\",\"b1\":\"templates\\/dd_gaming_94\\/images\\/banner\\/1.jpg\",\"bl1\":\"http:\\/\\/diablodesign.eu\",\"b2\":\"templates\\/dd_gaming_94\\/images\\/banner\\/2.jpg\",\"bl2\":\"http:\\/\\/diablodesign.eu\",\"b3\":\"templates\\/dd_gaming_94\\/images\\/banner\\/3.jpg\",\"bl3\":\"http:\\/\\/diablodesign.eu\",\"b4\":\"templates\\/dd_gaming_94\\/images\\/banner\\/4.jpg\",\"bl4\":\"http:\\/\\/diablodesign.eu\",\"b5\":\"templates\\/dd_gaming_94\\/images\\/banner\\/5.jpg\",\"bl5\":\"http:\\/\\/diablodesign.eu\",\"speedb\":\"4600\",\"slc\":\"1\",\"facebook\":\"\\/\\/www.facebook.com\\/sharer.php?u=\",\"fc\":\"1\",\"twitter\":\"\\/\\/twitter.com\\/share?url=&text=\",\"tc\":\"1\",\"google\":\"\\/\\/plus.google.com\\/share?url=http:\\/\\/google.com\",\"gc\":\"1\",\"pinterest\":\"\\/\\/pinterest.com\\/pin\\/create\\/button\\/?url=&media=&description=\",\"pc\":\"1\",\"hin\":\"HOT-INFO\",\"hi\":\"COMPETE FOR $1.3 MILLION IN PRIZES IN EA SPORTS FIFA 17\",\"hil\":\"\",\"speedh\":\"3\",\"hic\":\"1\",\"foto1\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Video-Game-Wallpaper-HD-Images-Download.jpg\",\"s1\":\"Surprisingly, WWI is exactly where Battlefield\",\"s1c\":\"ffffff\",\"s1a\":\"I love that Battlefield 1\\u2019s medic carries crutches.\",\"s1ac\":\"ffffff\",\"s1b\":\"\",\"foto2\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Video-Game-Wallpaper-HD.jpg\",\"s2\":\"Halo 5: Forge will have a custom \",\"s2c\":\"ffffff\",\"s2a\":\"game browser on PC\",\"s2ac\":\"ffffff\",\"s2b\":\"\",\"foto3\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Free-Video-Game-Wallpaper-HD.jpg\",\"s3\":\"Call of Duty: Infinite Warfare \",\"s3c\":\"ffffff\",\"s3a\":\"multiplayer beta not happening on the PC\",\"s3ac\":\"ffffff\",\"s3b\":\"\",\"foto4\":\"http:\\/\\/hdwallpaperia.com\\/wp-content\\/uploads\\/2013\\/12\\/Games-Wallpapers1.jpg\",\"s4\":\"Call of Duty: Infinite Warfare \",\"s4c\":\"ffffff\",\"s4a\":\"multiplayer beta not happening on the PC\",\"s4ac\":\"ffffff\",\"s4b\":\"\",\"foto5\":\"http:\\/\\/img3.gamedais.com\\/2014\\/01\\/Watch-Dogs-Aiden-Pearce.jpg\",\"s5\":\"Fallout 4 pays tribute to player who \",\"s5c\":\"ffffff\",\"s5a\":\"passed away\",\"s5ac\":\"ffffff\",\"s5b\":\"\",\"speed\":\"4600\",\"dc\":\"1\",\"cf1\":\"templates\\/dd_gaming_94\\/images\\/circle\\/1.jpg\",\"ct1\":\"1. Title\",\"cte1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl1\":\"\",\"cf2\":\"templates\\/dd_gaming_94\\/images\\/circle\\/2.jpg\",\"ct2\":\"2. Title\",\"cte2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl2\":\"\",\"cf3\":\"templates\\/dd_gaming_94\\/images\\/circle\\/3.jpg\",\"ct3\":\"3. Title \",\"cte3\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl3\":\"\",\"cf4\":\"templates\\/dd_gaming_94\\/images\\/circle\\/4.jpg\",\"ct4\":\"4. Title\",\"cte4\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl4\":\"\",\"dcb\":\"1\",\"it1\":\"FREE GAMING DOWNLOAD\",\"ibn\":\"Read More\",\"ibl\":\"http:\\/\\/\",\"ibc\":\"1\",\"pbg\":\"templates\\/dd_gaming_94\\/images\\/background\\/bgposter.jpg\",\"pf1\":\"templates\\/dd_gaming_94\\/images\\/poster\\/1.jpg\",\"p2\":\"Title 1\",\"p3\":\"Free games download\",\"p4\":\"Read More\",\"p5\":\"http:\\/\\/\",\"pf2\":\"templates\\/dd_gaming_94\\/images\\/poster\\/2.jpg\",\"p7\":\"Title 1\",\"p8\":\"Free games download\",\"p9\":\"Read More\",\"p10\":\"http:\\/\\/\",\"pf3\":\"templates\\/dd_gaming_94\\/images\\/poster\\/3.jpg\",\"p12\":\"Title 1\",\"p13\":\"Free games download\",\"p14\":\"Read More\",\"p15\":\"http:\\/\\/\",\"footer1\":\"Gaming 94\",\"fooc\":\"1\",\"m1\":\"Contact Us\",\"m2\":\"http:\\/\\/\",\"cfl1\":\"1\",\"m3\":\"Terms Of Use\",\"m4\":\"http:\\/\\/\",\"cfl2\":\"1\",\"m5\":\"Privacy Policy\",\"m6\":\"http:\\/\\/\",\"cfl3\":\"1\",\"m7\":\"Site Map\",\"m8\":\"http:\\/\\/\",\"cfl4\":\"1\",\"cfm\":\"1\",\"d1\":\"diablodesign.eu\",\"d2\":\"http:\\/\\/\",\"dbc\":\"1\",\"menus\":\"\",\"megamenu\":\"1\",\"modemenu\":\"\",\"customvalue\":\"400\",\"megadesktops\":\"\",\"megalaptops\":\"\",\"megatablets\":\"\",\"megaphones\":\"\",\"menusOptions\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'dd_media_102', 'template', 'dd_media_102', '', 0, 1, 1, 0, '{\"name\":\"dd_media_102\",\"type\":\"template\",\"creationDate\":\"2017-01-26\",\"author\":\"DiabloDesign\",\"copyright\":\"Copyright (C) DiabloDesign License All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/diablodesign.eu\",\"version\":\"1.0\",\"description\":\"\\n\\t\\n\\t\\t<style type=\\\"text\\/css\\\" media=\\\"all\\\">\\n\\t\\t\\t\\t<!--\\n\\t\\t\\t\\th1 {clear:both;font-family: Georgia, sans-serif;font-size:36px;  font-weight: normal;}\\n\\t\\t\\t\\th2 {clear:both;font-family: Georgia, sans-serif;font-size:20px;  font-weight: normal; }\\n\\t\\t\\t\\t-->\\n\\t\\t\\t<\\/style>\\n\\t\\t\\t<script src=\\\"..\\/templates\\/dd_media_102\\/admin\\/jscolor\\/jscolor.js\\\"><\\/script>\\n\\n\\t        <div class=\\\"dd-description clearfix\\\">\\n\\t        <h1><img src=\\\"http:\\/\\/diablodesign.eu\\/syg.png\\\" \\/><\\/a><span style=\\\"color: #cc0607;\\\"> DD Media 102 Premium Version<\\/span><\\/h1>\\n\\t        <hr>\\n\\t\\t\\t<div class=\\\"pull-left\\\" style=\\\"max-width: 35.69%;\\\">\\n\\t\\t\\t<img style=\\\"max-width: 100%; box-sizing: border-box; -webkit-box-sizing: border-box; padding: 10px; background: #fff; border: 1px solid #e1e1e1;\\\" src=\\\"..\\/templates\\/dd_media_102\\/images\\/sc.jpg\\\" \\/>\\n\\t\\t\\n\\t\\t<\\/div>\\n\\t\\t<div class=\\\"pull-left\\\" style=\\\"max-width: 64.31%; box-sizing: border-box; -webkit-box-sizing: border-box; padding: 0 30px;\\\">\\n\\t\\t\\t<div style=\\\"margin-bottom: 20px;\\\">\\n\\t\\t\\t\\t<div style=\\\"margin-bottom: 20px;\\\">\\n\\t\\t\\t\\n\\t\\t\\t\\n\\t\\t\\t<div style=\\\"margin: 20px 0 0;\\\">\\n\\t\\t\\t\\n\\n\\t\\t\\t\\t<\\/div><\\/div><\\/div><\\/div>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"logoFile\":\"templates\\/dd_media_102\\/images\\/designer\\/logo.png\",\"license\":\"\",\"analytics\":\"UA-XXXXXXXX-1\",\"ac\":\"0\",\"fav\":\"templates\\/dd_engineer_99\\/images\\/designer\\/favicon.ico\",\"hc2\":\"+1 (555) 456 3890\",\"hc3\":\"info@company.com\",\"color1\":\"#ff0000\",\"color2\":\"#000000\",\"hc5\":\"4934 Irving Place\",\"hc6\":\"Pond, MO 63040\",\"hcl\":\"1\",\"hin\":\"HOT-INFO\",\"hi\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\",\"hil\":\"\",\"speedh\":\"3\",\"hic\":\"1\",\"facebook\":\"\\/\\/www.facebook.com\\/sharer.php?u=\",\"fc\":\"1\",\"twitter\":\"\\/\\/twitter.com\\/share?url=&text=\",\"tc\":\"1\",\"google\":\"\\/\\/plus.google.com\\/share?url=http:\\/\\/google.com\",\"gc\":\"1\",\"pinterest\":\"\\/\\/pinterest.com\\/pin\\/create\\/button\\/?url=&media=&description=\",\"pc\":\"1\",\"cal\":\"1\",\"f1\":\"templates\\/dd_media_102\\/images\\/slideshow\\/1.jpg\",\"slide1\":\"1\",\"f2\":\"templates\\/dd_media_102\\/images\\/slideshow\\/2.jpg\",\"slide2\":\"1\",\"f3\":\"templates\\/dd_media_102\\/images\\/slideshow\\/3.jpg\",\"slide3\":\"1\",\"f4\":\"templates\\/dd_media_102\\/images\\/slideshow\\/4.jpg\",\"slide4\":\"1\",\"f5\":\"templates\\/dd_media_102\\/images\\/slideshow\\/5.jpg\",\"slide5\":\"1\",\"speed\":\"4600\",\"slic\":\"1\",\"video\":\"oe-kom_qELA\",\"start\":\"5\",\"autoplay\":\"0\",\"show\":\"0\",\"showinfo\":\"0\",\"vti\":\"The Angry Birds\",\"vte\":\"Watch the first look at The Angry Birds Movie\",\"video2\":\"VZqmL677X-g\",\"start2\":\"5\",\"autoplay2\":\"0\",\"show2\":\"0\",\"showinfo2\":\"0\",\"vti1\":\"Ratchet and Clank\",\"vte1\":\"Ratchet and Clank tells the story of two unlikely heroes\",\"video3\":\"ikpdmeQ1Dq8\",\"start3\":\"5\",\"autoplay3\":\"0\",\"show3\":\"0\",\"showinfo3\":\"0\",\"vti2\":\"Frozen Fever\",\"vte2\":\"Frozen Fever debuts its official trailer for 2015 \",\"vab\":\"onload\",\"vic\":\"1\",\"w1\":\"Welcome\",\"w2\":\"Dealing with your finances can be intimidating.\",\"w3\":\"templates\\/dd_media_102\\/images\\/icon\\/w1.png\",\"w4\":\"SOLUTIONS\",\"w6\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"w7\":\"templates\\/dd_media_102\\/images\\/icon\\/w2.png\",\"w8\":\"SOLUTIONS\",\"w10\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"w11\":\"templates\\/dd_media_102\\/images\\/icon\\/w3.png\",\"w12\":\"SOLUTIONS\",\"w14\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"wab\":\"scroll\",\"wic\":\"1\",\"ab1\":\"templates\\/dd_media_102\\/images\\/designer\\/about.png\",\"ab2\":\"About Us\",\"ab3\":\"The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work.I believe in being strong when everything seems to be going wrong. I believe that happy girls are the prettiest girls. I believe that tomorrow is another day and I believe in miracles.\",\"ab4\":\"Continue Reading\",\"ab5\":\"http:\\/\\/\",\"aab\":\"scroll\",\"aic\":\"1\",\"ib1\":\"ARE YOU LAUNCHINGA NEW BRAND?\",\"ib2\":\"We develop names, logos, websites, packaging, products, retail merchandising, corporate environments, and more. With offices in New York and Silicon Valley we service clients worldwide thanks to a network of highly talented resources that include strategic and creative partners across the globe. If you want to build brand value, send us a note. We\\u2019d love to hear from you.\",\"iba\":\"scroll\",\"iic\":\"1\",\"i1\":\"templates\\/dd_media_102\\/images\\/gallery\\/1.jpg\",\"i3\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn1\":\"Read More\",\"gl1\":\"http:\\/\\/\",\"i4\":\"templates\\/dd_media_102\\/images\\/gallery\\/2.jpg\",\"i6\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn2\":\"Read More\",\"gl2\":\"http:\\/\\/\",\"i7\":\"templates\\/dd_media_102\\/images\\/gallery\\/3.jpg\",\"i9\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn3\":\"Read More\",\"gl3\":\"http:\\/\\/\",\"i10\":\"templates\\/dd_media_102\\/images\\/gallery\\/4.jpg\",\"i12\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn4\":\"Read More\",\"gl4\":\"http:\\/\\/\",\"i13\":\"templates\\/dd_media_102\\/images\\/gallery\\/5.jpg\",\"i15\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn5\":\"Read More\",\"gl5\":\"http:\\/\\/\",\"i16\":\"templates\\/dd_media_102\\/images\\/gallery\\/6.jpg\",\"i18\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"bgn6\":\"Read More\",\"gl6\":\"http:\\/\\/\",\"gab\":\"scroll\",\"gic\":\"1\",\"ims1\":\"templates\\/dd_media_102\\/images\\/icon\\/1.png\",\"s1\":\"YEARS\",\"sn1\":\"30\",\"ims2\":\"templates\\/dd_media_102\\/images\\/icon\\/2.png\",\"s2\":\"PROJECTS\",\"sn2\":\"1234\",\"ims3\":\"templates\\/dd_media_102\\/images\\/icon\\/3.png\",\"s3\":\"AWARDS\",\"sn3\":\"121\",\"ims4\":\"templates\\/dd_media_102\\/images\\/icon\\/4.png\",\"s4\":\"ABOUT CLIENTS\",\"sn4\":\"43679\",\"dsb\":\"1\",\"fo0\":\"Get in Touch with Us\",\"fo1\":\"Our Mission\",\"fo2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"fo3\":\"Visit Our Office\",\"fo4\":\"+1 (555) 456 3890\",\"fo5\":\"+1 (555) 564 9354\",\"fo6\":\"4934 Irving Place,\",\"fo7\":\"Pond, MO 63040\",\"fo8\":\"support@company.com \",\"fo9\":\"info@company.com\",\"footer1\":\"Media\",\"map1\":\"Krakow\",\"map2\":\"os na stoku 1\",\"fsb\":\"1\",\"dc\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_fields`
--

CREATE TABLE `satnu_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_fields_categories`
--

CREATE TABLE `satnu_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_fields_groups`
--

CREATE TABLE `satnu_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_fields_values`
--

CREATE TABLE `satnu_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_filters`
--

CREATE TABLE `satnu_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links`
--

CREATE TABLE `satnu_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) DEFAULT 1,
  `access` int(11) DEFAULT 0,
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms0`
--

CREATE TABLE `satnu_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms1`
--

CREATE TABLE `satnu_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms2`
--

CREATE TABLE `satnu_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms3`
--

CREATE TABLE `satnu_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms4`
--

CREATE TABLE `satnu_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms5`
--

CREATE TABLE `satnu_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms6`
--

CREATE TABLE `satnu_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms7`
--

CREATE TABLE `satnu_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms8`
--

CREATE TABLE `satnu_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_terms9`
--

CREATE TABLE `satnu_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termsa`
--

CREATE TABLE `satnu_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termsb`
--

CREATE TABLE `satnu_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termsc`
--

CREATE TABLE `satnu_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termsd`
--

CREATE TABLE `satnu_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termse`
--

CREATE TABLE `satnu_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_links_termsf`
--

CREATE TABLE `satnu_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_taxonomy`
--

CREATE TABLE `satnu_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satnu_finder_taxonomy`
--

INSERT INTO `satnu_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_taxonomy_map`
--

CREATE TABLE `satnu_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_terms`
--

CREATE TABLE `satnu_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) NOT NULL,
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_terms_common`
--

CREATE TABLE `satnu_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satnu_finder_terms_common`
--

INSERT INTO `satnu_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_tokens`
--

CREATE TABLE `satnu_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_tokens_aggregate`
--

CREATE TABLE `satnu_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_finder_types`
--

CREATE TABLE `satnu_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_languages`
--

CREATE TABLE `satnu_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_languages`
--

INSERT INTO `satnu_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_menu`
--

CREATE TABLE `satnu_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_menu`
--

INSERT INTO `satnu_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 59, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'TRANG CHỦ', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 67, '2023-11-20 13:22:47', 0, 1, ' ', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"page_subheading\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'SẢN PHẨM', 's-n-ph-m', '', 's-n-ph-m', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'SALE OFF', 'sale-off', '', 'sale-off', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 45, 46, 0, '*', 0),
(104, 'mainmenu', 'GIỚI THIỆU', 'gi-i-thi-u', '', 'gi-i-thi-u', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 47, 48, 0, '*', 0),
(105, 'mainmenu', 'HƯỚNG DẪN', 'hu-ng-d-n', '', 'hu-ng-d-n', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 49, 56, 0, '*', 0),
(106, 'mainmenu', 'HƯỚNG DẪN THANH TOÁN', 'hu-ng-d-n-thanh-toan', '', 'hu-ng-d-n/hu-ng-d-n-thanh-toan', 'index.php?option=com_content&view=article&id=2', 'component', 1, 105, 2, 22, 67, '2023-11-20 13:22:19', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 50, 51, 0, '*', 0),
(107, 'mainmenu', 'HƯỚNG DẪN CHỌN VỢT', 'hu-ng-d-n-ch-n-v-t', '', 'hu-ng-d-n/hu-ng-d-n-ch-n-v-t', 'index.php?option=com_content&view=article&id=3', 'component', 1, 105, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 54, 55, 0, '*', 0),
(108, 'mainmenu', 'HƯỚNG DẪN MUA HÀNG', 'hu-ng-d-n-mua-hang', '', 'hu-ng-d-n/hu-ng-d-n-mua-hang', '#', 'url', 0, 105, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 52, 53, 0, '*', 0),
(109, 'mainmenu', 'LIÊN HỆ', 'lien-h', '', 'lien-h', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 57, 58, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_menu_types`
--

CREATE TABLE `satnu_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_menu_types`
--

INSERT INTO `satnu_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_messages`
--

CREATE TABLE `satnu_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_messages_cfg`
--

CREATE TABLE `satnu_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_modules`
--

CREATE TABLE `satnu_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_modules`
--

INSERT INTO `satnu_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_modules_menu`
--

CREATE TABLE `satnu_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_modules_menu`
--

INSERT INTO `satnu_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_newsfeeds`
--

CREATE TABLE `satnu_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_overrider`
--

CREATE TABLE `satnu_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_postinstall_messages`
--

CREATE TABLE `satnu_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_postinstall_messages`
--

INSERT INTO `satnu_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_privacy_consents`
--

CREATE TABLE `satnu_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_privacy_requests`
--

CREATE TABLE `satnu_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_redirect_links`
--

CREATE TABLE `satnu_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_schemas`
--

CREATE TABLE `satnu_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_schemas`
--

INSERT INTO `satnu_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.10.7-2022-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_session`
--

CREATE TABLE `satnu_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_session`
--

INSERT INTO `satnu_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3465306f396e3834357035657666756972676a62336c38346972, 1, 0, 1700039863, 'joomla|s:2700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNzk7czo1OiJ0b2tlbiI7czozMjoicGIwMzZTWTFmdUk5bnZtY01JT0tjUzFaMGRRZUNLTk4iO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcwMDAzNTkyNDtzOjQ6Imxhc3QiO2k6MTcwMDAzOTg2MztzOjM6Im5vdyI7aToxNzAwMDM5ODYzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6MTM6ImNvbV90ZW1wbGF0ZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJzdHlsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MTQ6ImNvbV9jYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImNvbnRhY3QiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRhY3QiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6MTE6ImNvbV9jb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtpOjIwNTtzOjY6InBhcmFtcyI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MjoiNjciO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fXM6OToiY29tX21lZGlhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJyZXR1cm5fdXJsIjtzOjExNDoiaW5kZXgucGhwP29wdGlvbj1jb21fbWVkaWEmdmlldz1pbWFnZXMmdG1wbD1jb21wb25lbnQmZmllbGRpZD1qZm9ybV9wYXJhbXNfaTE2JmVfbmFtZT0mYXNzZXQ9Y29tX3RlbXBsYXRlcyZhdXRob3I9Ijt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 67, 'admin'),
(0x38636d6d30343465713275686339317164716537673868636c37, 0, 1, 1700487607, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3MDA0ODEyNDU7czo0OiJsYXN0IjtpOjE3MDA0ODY3NjU7czozOiJub3ciO2k6MTcwMDQ4NzYwNzt9czo1OiJ0b2tlbiI7czozMjoiQklKQk5OOE1DR1RyaWRiY1hMR0xkMlJQV2REeHJRSFYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
(0x386b34346637703562746c3574636f656f343865623238627573, 1, 0, 1700487630, 'joomla|s:2760:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3NjtzOjU6InRva2VuIjtzOjMyOiJRaHcwMTluVkJxV2VHWUJ3OXh5SmZxOHowemtLUVBVVSI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzAwNDg2MzA3O3M6NDoibGFzdCI7aToxNzAwNDg2Nzg4O3M6Mzoibm93IjtpOjE3MDA0ODc2MzA7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjI6ImlkIjthOjI6e2k6MTtpOjEwNjtpOjI7aToxMDE7fXM6NDoiZGF0YSI7YToxODp7czo1OiJ0aXRsZSI7czowOiIiO3M6NToiYWxpYXMiO3M6MDoiIjtzOjQ6InR5cGUiO3M6OToiY29tcG9uZW50IjtzOjQ6ImxpbmsiO3M6NDE6ImluZGV4LnBocD9vcHRpb249Y29tX2NvbnRlbnQmdmlldz1hcnRpY2xlIjtzOjEwOiJicm93c2VyTmF2IjtzOjE6IjAiO3M6MTc6InRlbXBsYXRlX3N0eWxlX2lkIjtzOjE6IjAiO3M6MjoiaWQiO3M6MToiMCI7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJwYXJlbnRfaWQiO3M6MToiMSI7czo5OiJwdWJsaXNoZWQiO3M6MToiMSI7czo0OiJob21lIjtzOjE6IjAiO3M6NjoiYWNjZXNzIjtzOjE6IjEiO3M6ODoibGFuZ3VhZ2UiO3M6MToiKiI7czo0OiJub3RlIjtzOjA6IiI7czo2OiJwYXJhbXMiO2E6MTQ6e3M6MTc6Im1lbnUtYW5jaG9yX3RpdGxlIjtzOjA6IiI7czoxNToibWVudS1hbmNob3JfY3NzIjtzOjA6IiI7czoxMDoibWVudV9pbWFnZSI7czowOiIiO3M6MTQ6Im1lbnVfaW1hZ2VfY3NzIjtzOjA6IiI7czo5OiJtZW51X3RleHQiO3M6MToiMSI7czo5OiJtZW51X3Nob3ciO3M6MToiMSI7czoxMDoicGFnZV90aXRsZSI7czowOiIiO3M6MTc6InNob3dfcGFnZV9oZWFkaW5nIjtzOjA6IiI7czoxMjoicGFnZV9oZWFkaW5nIjtzOjA6IiI7czoxMzoicGFnZWNsYXNzX3NmeCI7czowOiIiO3M6MjE6Im1lbnUtbWV0YV9kZXNjcmlwdGlvbiI7czowOiIiO3M6MTg6Im1lbnUtbWV0YV9rZXl3b3JkcyI7czowOiIiO3M6Njoicm9ib3RzIjtzOjA6IiI7czo2OiJzZWN1cmUiO3M6MToiMCI7fXM6MjM6InRvZ2dsZV9tb2R1bGVzX2Fzc2lnbmVkIjtzOjE6IjEiO3M6MjQ6InRvZ2dsZV9tb2R1bGVzX3B1Ymxpc2hlZCI7czoxOiIxIjtzOjEyOiJjb21wb25lbnRfaWQiO3M6MjoiMjIiO31zOjQ6InR5cGUiO3M6OToiY29tcG9uZW50IjtzOjQ6ImxpbmsiO3M6NDE6ImluZGV4LnBocD9vcHRpb249Y29tX2NvbnRlbnQmdmlldz1hcnRpY2xlIjt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjE6e2k6MDtpOjU7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjI6IjY3Ijt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 67, 'admin'),
(0x696f686e74716772306d726b6d316b6b38366a63737336346b6d, 1, 1, 1700486306, 'joomla|s:596:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6IjhiemhnUWc1dHdsY3lkVXpUVEJpUWVTekkyTHdTTERvIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x71626d653364313967616d7163626d307464766c6d6864653667, 0, 1, 1700040307, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2NztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3MDAwMzIwMDQ7czo0OiJsYXN0IjtpOjE3MDAwMzk5NDI7czozOiJub3ciO2k6MTcwMDA0MDMwNzt9czo1OiJ0b2tlbiI7czozMjoiR1JiQ0kwSEs1b0M3dVd4NjRQOE44TDliazBzb1ZzUEUiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_tags`
--

CREATE TABLE `satnu_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_tags`
--

INSERT INTO `satnu_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 67, '2023-11-08 08:12:24', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_template_styles`
--

CREATE TABLE `satnu_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_template_styles`
--

INSERT INTO `satnu_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', 0, '', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', 0, '', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"0\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'dd_gaming_94', 0, '0', 'dd_gaming_94 - Default', 0, '', '{\"license\":\"\",\"analytics\":\"UA-XXXXXXXX-1\",\"ac\":\"0\",\"fav\":\"templates\\/dd_gaming_94\\/images\\/favicon.ico\",\"logoFile\":\"templates\\/dd_gaming_94\\/images\\/logo.png\",\"logoLink\":\"\",\"b1\":\"templates\\/dd_gaming_94\\/images\\/banner\\/1.jpg\",\"bl1\":\"http:\\/\\/diablodesign.eu\",\"b2\":\"templates\\/dd_gaming_94\\/images\\/banner\\/2.jpg\",\"bl2\":\"http:\\/\\/diablodesign.eu\",\"b3\":\"templates\\/dd_gaming_94\\/images\\/banner\\/3.jpg\",\"bl3\":\"http:\\/\\/diablodesign.eu\",\"b4\":\"templates\\/dd_gaming_94\\/images\\/banner\\/4.jpg\",\"bl4\":\"http:\\/\\/diablodesign.eu\",\"b5\":\"templates\\/dd_gaming_94\\/images\\/banner\\/5.jpg\",\"bl5\":\"http:\\/\\/diablodesign.eu\",\"speedb\":\"4600\",\"slc\":\"1\",\"facebook\":\"\\/\\/www.facebook.com\\/sharer.php?u=\",\"fc\":\"1\",\"twitter\":\"\\/\\/twitter.com\\/share?url=&text=\",\"tc\":\"1\",\"google\":\"\\/\\/plus.google.com\\/share?url=http:\\/\\/google.com\",\"gc\":\"1\",\"pinterest\":\"\\/\\/pinterest.com\\/pin\\/create\\/button\\/?url=&media=&description=\",\"pc\":\"1\",\"hin\":\"HOT-INFO\",\"hi\":\"COMPETE FOR $1.3 MILLION IN PRIZES IN EA SPORTS FIFA 17\",\"hil\":\"\",\"speedh\":\"3\",\"hic\":\"1\",\"foto1\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Video-Game-Wallpaper-HD-Images-Download.jpg\",\"s1\":\"Surprisingly, WWI is exactly where Battlefield\",\"s1c\":\"ffffff\",\"s1a\":\"I love that Battlefield 1\\u2019s medic carries crutches.\",\"s1ac\":\"ffffff\",\"s1b\":\"\",\"foto2\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Video-Game-Wallpaper-HD.jpg\",\"s2\":\"Halo 5: Forge will have a custom \",\"s2c\":\"ffffff\",\"s2a\":\"game browser on PC\",\"s2ac\":\"ffffff\",\"s2b\":\"\",\"foto3\":\"http:\\/\\/www.pixelstalk.net\\/wp-content\\/uploads\\/2016\\/06\\/Free-Video-Game-Wallpaper-HD.jpg\",\"s3\":\"Call of Duty: Infinite Warfare \",\"s3c\":\"ffffff\",\"s3a\":\"multiplayer beta not happening on the PC\",\"s3ac\":\"ffffff\",\"s3b\":\"\",\"foto4\":\"http:\\/\\/hdwallpaperia.com\\/wp-content\\/uploads\\/2013\\/12\\/Games-Wallpapers1.jpg\",\"s4\":\"Call of Duty: Infinite Warfare \",\"s4c\":\"ffffff\",\"s4a\":\"multiplayer beta not happening on the PC\",\"s4ac\":\"ffffff\",\"s4b\":\"\",\"foto5\":\"http:\\/\\/img3.gamedais.com\\/2014\\/01\\/Watch-Dogs-Aiden-Pearce.jpg\",\"s5\":\"Fallout 4 pays tribute to player who \",\"s5c\":\"ffffff\",\"s5a\":\"passed away\",\"s5ac\":\"ffffff\",\"s5b\":\"\",\"speed\":\"4600\",\"dc\":\"1\",\"cf1\":\"templates\\/dd_gaming_94\\/images\\/circle\\/1.jpg\",\"ct1\":\"1. Title\",\"cte1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl1\":\"\",\"cf2\":\"templates\\/dd_gaming_94\\/images\\/circle\\/2.jpg\",\"ct2\":\"2. Title\",\"cte2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl2\":\"\",\"cf3\":\"templates\\/dd_gaming_94\\/images\\/circle\\/3.jpg\",\"ct3\":\"3. Title \",\"cte3\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl3\":\"\",\"cf4\":\"templates\\/dd_gaming_94\\/images\\/circle\\/4.jpg\",\"ct4\":\"4. Title\",\"cte4\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \",\"cl4\":\"\",\"dcb\":\"1\",\"it1\":\"FREE GAMING DOWNLOAD\",\"ibn\":\"Read More\",\"ibl\":\"http:\\/\\/\",\"ibc\":\"1\",\"pbg\":\"templates\\/dd_gaming_94\\/images\\/background\\/bgposter.jpg\",\"pf1\":\"templates\\/dd_gaming_94\\/images\\/poster\\/1.jpg\",\"p2\":\"Title 1\",\"p3\":\"Free games download\",\"p4\":\"Read More\",\"p5\":\"http:\\/\\/\",\"pf2\":\"templates\\/dd_gaming_94\\/images\\/poster\\/2.jpg\",\"p7\":\"Title 1\",\"p8\":\"Free games download\",\"p9\":\"Read More\",\"p10\":\"http:\\/\\/\",\"pf3\":\"templates\\/dd_gaming_94\\/images\\/poster\\/3.jpg\",\"p12\":\"Title 1\",\"p13\":\"Free games download\",\"p14\":\"Read More\",\"p15\":\"http:\\/\\/\",\"footer1\":\"Gaming 94\",\"fooc\":\"1\",\"m1\":\"Contact Us\",\"m2\":\"http:\\/\\/\",\"cfl1\":\"1\",\"m3\":\"Terms Of Use\",\"m4\":\"http:\\/\\/\",\"cfl2\":\"1\",\"m5\":\"Privacy Policy\",\"m6\":\"http:\\/\\/\",\"cfl3\":\"1\",\"m7\":\"Site Map\",\"m8\":\"http:\\/\\/\",\"cfl4\":\"1\",\"cfm\":\"1\",\"d1\":\"diablodesign.eu\",\"d2\":\"http:\\/\\/\",\"dbc\":\"1\",\"menus\":\"\",\"megamenu\":\"1\",\"modemenu\":\"\",\"customvalue\":\"400\",\"megadesktops\":\"\",\"megalaptops\":\"\",\"megatablets\":\"\",\"megaphones\":\"\",\"menusOptions\":\"\"}'),
(10, 'dd_media_102', 0, '1', 'dd_media_102 - Default', 0, '', '{\"logoFile\":\"templates\\/dd_media_102\\/images\\/designer\\/logo.png\",\"license\":\"\",\"analytics\":\"UA-XXXXXXXX-1\",\"ac\":\"0\",\"fav\":\"templates\\/dd_engineer_99\\/images\\/designer\\/favicon.ico\",\"hc2\":\"0866779560\",\"hc3\":\"Trkibadmin@gmail.com\",\"color1\":\"#ff0000\",\"color2\":\"#000000\",\"hc5\":\"53, S\\u01a1n Th\\u00f4ng\",\"hc6\":\"K10,P.9, TP.TR\\u00c0 VINH\",\"hcl\":\"1\",\"hin\":\"HOT-INFO\",\"hi\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\",\"hil\":\"\",\"speedh\":\"3\",\"hic\":\"0\",\"facebook\":\"\\/\\/www.facebook.com\\/sharer.php?u=\",\"fc\":\"0\",\"twitter\":\"\\/\\/twitter.com\\/share?url=&text=\",\"tc\":\"0\",\"google\":\"\\/\\/plus.google.com\\/share?url=http:\\/\\/google.com\",\"gc\":\"0\",\"pinterest\":\"\\/\\/pinterest.com\\/pin\\/create\\/button\\/?url=&media=&description=\",\"pc\":\"0\",\"cal\":\"0\",\"f1\":\"templates\\/dd_media_102\\/images\\/slideshow\\/1.jpg\",\"slide1\":\"1\",\"f2\":\"templates\\/dd_media_102\\/images\\/slideshow\\/2.jpg\",\"slide2\":\"1\",\"f3\":\"templates\\/dd_media_102\\/images\\/slideshow\\/3.jpg\",\"slide3\":\"1\",\"f4\":\"templates\\/dd_media_102\\/images\\/slideshow\\/4.jpg\",\"slide4\":\"1\",\"f5\":\"templates\\/dd_media_102\\/images\\/slideshow\\/5.jpg\",\"slide5\":\"1\",\"speed\":\"5000\",\"slic\":\"1\",\"video\":\"Zub5OM3Uai8\",\"start\":\"5\",\"autoplay\":\"0\",\"show\":\"0\",\"showinfo\":\"0\",\"vti\":\"T\\u1ea1i sao?????\",\"vte\":\"\\u00c1O YONEX nh\\u01b0ng t\\u1ea1i sao l\\u00e0 V\\u1ee2T LINING??? H\\u1eceI KH\\u00d3 \\u0110\\u00c1P D\\u1ec4 \",\"video2\":\"8TrUzJkTE7M\",\"start2\":\"5\",\"autoplay2\":\"0\",\"show2\":\"0\",\"showinfo2\":\"0\",\"vti1\":\"H\\u1ecfi \\u0111\\u00e1p\",\"vte1\":\"B\\u1ea1n c\\u00f3 \\u0111\\u1ee7 AM HI\\u1ec2U v\\u1ec1 V\\u1ee2T C\\u1ea6U L\\u00d4NG hay ch\\u01b0a???\",\"video3\":\"AATKvZHxAfI\",\"start3\":\"5\",\"autoplay3\":\"0\",\"show3\":\"0\",\"showinfo3\":\"0\",\"vti2\":\"H\\u1ecdc c\\u1ea7u l\\u00f4ng c\\u00f9ng gi\\u00e1o s\\u01b0 Th\\u1ea1o\",\"vte2\":\"L\\u1ed0P C\\u1ea6U L\\u00d4NG kh\\u00f3 ch\\u1ecbu nh\\u01b0 n\\u00e0o??? C\\u00e1ch l\\u1ed1p c\\u1ea7u l\\u00f4ng T\\u1ea4N C\\u00d4NG & PH\\u00d2NG TH\\u1ee6 cho ng\\u01b0\\u1eddi ch\\u01a1i\",\"vab\":\"scroll\",\"vic\":\"1\",\"w1\":\"Welcome\",\"w2\":\"Dealing with your finances can be intimidating.\",\"w3\":\"templates\\/dd_media_102\\/images\\/icon\\/w1.png\",\"w4\":\"SOLUTIONS\",\"w6\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"w7\":\"templates\\/dd_media_102\\/images\\/icon\\/w2.png\",\"w8\":\"SOLUTIONS\",\"w10\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"w11\":\"templates\\/dd_media_102\\/images\\/icon\\/w3.png\",\"w12\":\"SOLUTIONS\",\"w14\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad          minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"wab\":\"scroll\",\"wic\":\"0\",\"ab1\":\"images\\/about.png\",\"ab2\":\"About Us\",\"ab3\":\"ShopTrkibadmin lu\\u00f4n l\\u00e0 n\\u01a1i cung c\\u1ea5p nhanh nh\\u1ea5t c\\u00e1c m\\u1eb7t h\\u00e0ng hot \\u0111\\u1ebfn t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u top \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi nh\\u01b0 Yonex, Lining, Victor, Mizuno,... Kh\\u00f4ng nh\\u1eefng v\\u1eady c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ebfn t\\u1eeb c\\u00e1c h\\u00e3ng t\\u1ea7m trung v\\u00e0 gi\\u00e1 r\\u1ebb nh\\u01b0 Adidas, Forza, Apacs, VNB, Kamito,... Shop c\\u1ea7u l\\u00f4ng VNB c\\u0169ng lu\\u00f4n cung c\\u1ea5p \\u0111\\u1ea7y \\u0111\\u1ee7 v\\u00e0 m\\u1eabu m\\u00e3 r\\u1ea5t \\u0111a d\\u1ea1ng.\",\"ab4\":\"Continue Reading\",\"ab5\":\"http:\\/\\/localhost:81\\/110121044\\/index.php\\/gi-i-thi-u\",\"aab\":\"scroll\",\"aic\":\"1\",\"ib1\":\"T\\u1ea0I TRKIBADMIN B\\u1ea0N S\\u1ebc C\\u00d3 NH\\u1eeeNG G\\u00cc ?\",\"ib2\":\"Trkibadmin l\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u h\\u00e0ng \\u0111\\u1ea7u cung c\\u1ea5p v\\u1ee3t, ph\\u1ee5 ki\\u1ec7n, trang ph\\u1ee5c v\\u00e0 gi\\u00e0y chuy\\u00ean nghi\\u1ec7p cho c\\u1ea7u l\\u00f4ng. Ra \\u0111\\u1eddi t\\u1eeb 2020 t\\u1ea1i Vi\\u1ec7t Nam, Trkibadmin nhanh ch\\u00f3ng kh\\u1eb3ng \\u0111\\u1ecbnh ch\\u1ea5t l\\u01b0\\u1ee3ng b\\u1ec1n \\u0111\\u1eb9p, ph\\u00f9 h\\u1ee3p thi \\u0111\\u1ea5u. S\\u1ea3n ph\\u1ea9m g\\u1ed3m c\\u00e1c d\\u00f2ng v\\u1ee3t, qu\\u1ea7n \\u00e1o v\\u00e0 gi\\u00e0y thi \\u0111\\u1ea5u mang l\\u1ea1i s\\u1ef1 tho\\u1ea3i m\\u00e1i cho VDV, \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u \\u0111\\u1ed9i tuy\\u1ec3n tin d\\u00f9ng\",\"iba\":\"scroll\",\"iic\":\"1\",\"i1\":\"images\\/1.png\",\"i3\":\"V\\u1ee2T YONEX ASTROXX 100ZZ\",\"bgn1\":\"Read More\",\"gl1\":\"http:\\/\\/thegioicaulong.vn\\/yonex-astrox-100zz-kurenai-review\\/\",\"i4\":\"images\\/cach-chon-vot-cau-long-lining.jpg\",\"i6\":\"V\\u1ee2T LINING CH\\u00cdNH H\\u00c3NG\",\"bgn2\":\"Read More\",\"gl2\":\"http:\\/\\/shopvnb.com\\/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi.html\",\"i7\":\"images\\/kichthuocsancaulong.jpg\",\"i9\":\"K\\u00cdCH TH\\u01af\\u1edaC S\\u00c2N THI \\u0110\\u1ea4U TI\\u00caU CHU\\u1ea8N QU\\u1ed0C T\\u1ebe\",\"bgn3\":\"Read More\",\"gl3\":\"https:\\/\\/shopvnb.com\\/kich-thuoc-tieu-chuan-san-cau-long-va-dac-diem-san-cau-long.html\",\"i10\":\"images\\/vot-cau-long-qua-cung-tac-hai-gi-cach-chon-vot-cau-long-phu-hop-1.jpg\",\"i12\":\"GI\\u00c0Y LINING C\\u00d3 TH\\u1eacT S\\u1ef0 B\\u1ec0N ???\",\"bgn4\":\"Read More\",\"gl4\":\"https:\\/\\/foot.vn\\/kinh-nghiem\\/giay-lining-co-tot-co-ben-khong\\/\",\"i13\":\"images\\/123.jpg\",\"i15\":\"T\\u01af TH\\u1ebe \\u0110\\u00c1NH C\\u1ea6U CHU\\u1ea8N\",\"bgn5\":\"Read More\",\"gl5\":\"https:\\/\\/shopvnb.com\\/tu-the-danh-cau-long.html\",\"i16\":\"images\\/Loi-ich-cho-cau-long.jpg\",\"i18\":\"l\\u1ee2I \\u00cdCH VI\\u1ec6C CH\\u01a0I C\\u1ea6U L\\u00d4NG\",\"bgn6\":\"Read More\",\"gl6\":\"https:\\/\\/sovhtt.langson.gov.vn\\/node\\/9158\",\"gab\":\"scroll\",\"gic\":\"1\",\"ims1\":\"templates\\/dd_media_102\\/images\\/icon\\/1.png\",\"s1\":\"YEARS\",\"sn1\":\"3\",\"ims2\":\"templates\\/dd_media_102\\/images\\/icon\\/2.png\",\"s2\":\"PROJECTS\",\"sn2\":\"1234\",\"ims3\":\"templates\\/dd_media_102\\/images\\/icon\\/3.png\",\"s3\":\"AWARDS\",\"sn3\":\"121\",\"ims4\":\"templates\\/dd_media_102\\/images\\/icon\\/4.png\",\"s4\":\"ABOUT CLIENTS\",\"sn4\":\"50\",\"dsb\":\"1\",\"fo0\":\"Th\\u1ebf Gi\\u1edbi C\\u1ea7u L\\u00f4ng\",\"fo1\":\"Nhi\\u1ec7m v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i\",\"fo2\":\"C\\u1eedu h\\u00e0ng chuy\\u00ean ph\\u00e2n ph\\u1ed1i ph\\u1ee5 ki\\u1ec7n trang ph\\u1ee5c \\u0111a d\\u1ea1ng. T\\u1eeb v\\u1ee3t, \\u0111an l\\u01b0\\u1edbi \\u0111\\u1ebfn qu\\u1ea3 c\\u1ea7u l\\u00f4ng, gi\\u00e0y, t\\u1ea5t ph\\u1ee5c v\\u1ee5 nhu c\\u1ea7u c\\u00e1c V\\u0110V. Ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 h\\u1ee3p l\\u00ed l\\u00e0m h\\u00e0i l\\u00f2ng kh\\u00e1ch h\\u00e0ng c\\u00f3 \\u0111am m\\u00ea v\\u1edbi b\\u1ed9 m\\u00f4n c\\u1ea7u l\\u00f4ng\",\"fo3\":\"Visit Our Office\",\"fo4\":\"0866779560\",\"fo5\":\"0778153540\",\"fo6\":\"53 S\\u01a1n Th\\u00f4ng, K10, Ph\\u01b0\\u1eddng 9, TP.Tr\\u00e0 Vinh\",\"fo7\":\"non\",\"fo8\":\"Trkibadmin@gmail.com\",\"fo9\":\"non\",\"footer1\":\"Badminton\",\"map1\":\"Tr\\u00e0 Vinh\",\"map2\":\"53, S\\u01a1n Th\\u00f4ng\",\"fsb\":\"1\",\"dc\":\"0\"}');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_ucm_base`
--

CREATE TABLE `satnu_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_ucm_content`
--

CREATE TABLE `satnu_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `satnu_ucm_history`
--

CREATE TABLE `satnu_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_ucm_history`
--

INSERT INTO `satnu_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2023-11-15 07:13:51', 67, 14346, 'e4dc2855acd510998b2110d84ab767c09c1a2656', '{\"id\":1,\"asset_id\":60,\"title\":\"GI\\u1edaI THI\\u1ec6U\",\"alias\":\"gi-i-thi-u\",\"introtext\":\"<h4>\\u00a0<\\/h4>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Th\\u00e1ng 12\\/2011, Forum\\u00a0Trkibadmin.com\\u00a0\\u0111\\u01b0\\u1ee3c th\\u00e0nh l\\u1eadp, \\u0111\\u00e2y l\\u00e0\\u00a0website cung c\\u1ea5p nh\\u1eefng th\\u00f4ng tin chuy\\u00ean nghi\\u1ec7p v\\u1ec1 tin t\\u1ee9c v\\u00e0 di\\u1ec5n \\u0111\\u00e0n c\\u1ea7u l\\u00f4ng.\\u00a0Nh\\u1eadn th\\u1ea5y s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u1ea7u l\\u00f4ng trong n\\u01b0\\u1edbc, b\\u00ean c\\u1ea1nh \\u0111\\u00f3 l\\u00e0 mong mu\\u1ed1n ph\\u1ee5c v\\u1ee5 t\\u1ed1t h\\u01a1n cho th\\u00e0nh vi\\u00ean v\\u00e0 nh\\u1eefng b\\u1ea1n y\\u00eau m\\u1ebfn c\\u1ea7u l\\u00f4ng. Th\\u00e1ng 12\\/2012, Ban Qu\\u1ea3n Tr\\u1ecb Vnbadminton \\u0111\\u00e3 m\\u1ea1nh d\\u1ea1n x\\u00e2y d\\u1ef1ng Shop c\\u1ea7u l\\u00f4ng VNB (<a href=\\\"https:\\/\\/shopvnb.com\\/\\\">\\/<\\/a>) \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 l\\u00e0m \\u0111\\u01b0\\u1ee3c vai tr\\u00f2 n\\u00e0y. V\\u1edbi kinh nghi\\u1ec7m nhi\\u1ec1u n\\u0103m ho\\u1ea1t \\u0111\\u1ed9ng trong l\\u0129nh v\\u1ef1c c\\u1ea7u l\\u00f4ng, \\u0111\\u1ebfn v\\u1edbi shopvnb b\\u1ea1n s\\u1ebd y\\u00ean t\\u00e2m v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m, \\u0111\\u1ed9i ng\\u0169 t\\u01b0 v\\u1ea5n s\\u1ea3n ph\\u1ea9m chuy\\u00ean nghi\\u1ec7p v\\u00e0 gi\\u00e1 c\\u1ea3 h\\u1ee3p l\\u00fd.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">B\\u00ean c\\u1ea1nh m\\u1ed9t website chuy\\u00ean nghi\\u1ec7p th\\u00ec Shop\\u00a0Trkibadmin c\\u00f2n ph\\u00e1t tri\\u1ec3n th\\u00eam 1 k\\u00eanh fanpage\\u00a0<a href=\\\"https:\\/\\/www.facebook.com\\/caulongvnbadminton\\/\\\">https:\\/\\/www.facebook.com\\/caulongvnbadminton\\/<\\/a>\\u00a0\\u0111\\u1ec3 cung c\\u1ea5p th\\u00f4ng tin nhanh h\\u01a1n cho th\\u00e0nh vi\\u00ean y\\u00eau m\\u1ebfn c\\u1ea7u l\\u00f4ng. Ch\\u00ednh s\\u1ef1 chuy\\u00ean nghi\\u1ec7p n\\u00e0y \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c t\\u1ea1o \\u0111\\u01b0\\u1ee3c uy t\\u00edn r\\u1ea5t l\\u1edbn trong c\\u1ed9ng \\u0111\\u1ed3ng y\\u00eau m\\u1ebfn c\\u1ea7u l\\u00f4ng trong v\\u00e0 ngo\\u00e0i n\\u01b0\\u1edbc.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Hi\\u1ec7n nay, H\\u1ec7 th\\u1ed1ng c\\u1eeda h\\u00e0ng c\\u1ea7u l\\u00f4ng Trkibadmin \\u0111\\u00e3 c\\u00f3\\u00a0h\\u01a1n 50 chi nh\\u00e1nh tr\\u1ea3i d\\u00e0i tr\\u00ean kh\\u1eafp m\\u1ecdi mi\\u1ec1n \\u0110\\u1ea5t n\\u01b0\\u1edbc. V\\u1edbi\\u00a0ti\\u00eau ch\\u00ed lu\\u00f4n \\u0111\\u1ea3m b\\u1ea3o cung c\\u1ea5p \\u0111\\u1ea7y \\u0111\\u1ee7 c\\u00e1c m\\u1eb7t h\\u00e0ng chuy\\u00ean d\\u1ee5ng d\\u00e0nh ri\\u00eang cho b\\u1ed9 m\\u00f4n c\\u1ea7u l\\u00f4ng nh\\u01b0 gi\\u00e0y, v\\u1ee3t c\\u1ea7u l\\u00f4ng, t\\u00fai v\\u1ee3t, balo, qu\\u1ea7n \\u00e1o, ph\\u1ee5 ki\\u1ec7n,... n\\u1ed5i tr\\u1ed9i v\\u1edbi nhi\\u1ec1u ph\\u00e2n kh\\u00fac gi\\u00e1 tr\\u1ea3i d\\u00e0i t\\u1eeb th\\u1ea5p \\u0111\\u1ebfn cao\\u00a0n\\u00ean c\\u00e1c l\\u00f4ng th\\u1ee7 c\\u1ea7n mua g\\u00ec c\\u1ee9 \\u0111\\u1ebfn ngay v\\u1edbi ShopVNB, ch\\u1eafc ch\\u1eafn s\\u1ebd l\\u00e0m c\\u00e1c b\\u1ea1n v\\u00f4 c\\u00f9ng h\\u00e0i l\\u00f2ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">ShopVNB lu\\u00f4n l\\u00e0 n\\u01a1i cung c\\u1ea5p nhanh nh\\u1ea5t c\\u00e1c m\\u1eb7t h\\u00e0ng hot \\u0111\\u1ebfn t\\u1eeb nh\\u1eefng\\u00a0th\\u01b0\\u01a1ng hi\\u1ec7u top \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi nh\\u01b0 Yonex, Lining, Victor, Mizuno,... Kh\\u00f4ng nh\\u1eefng v\\u1eady c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ebfn t\\u1eeb c\\u00e1c h\\u00e3ng t\\u1ea7m trung v\\u00e0 gi\\u00e1 r\\u1ebb nh\\u01b0 Adidas, Forza, Apacs, VNB, Kamito,... Shop c\\u1ea7u l\\u00f4ng Trkibadmin c\\u0169ng lu\\u00f4n cung c\\u1ea5p \\u0111\\u1ea7y \\u0111\\u1ee7 v\\u00e0 m\\u1eabu m\\u00e3 r\\u1ea5t \\u0111a d\\u1ea1ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">* \\u0110\\u1eb7c bi\\u1ec7t, ShopTrkibadmin l\\u00e0 \\u0111\\u1ecba ch\\u1ec9 n\\u1ed5i ti\\u1ebfng c\\u0103ng v\\u1ee3t c\\u1ea7u l\\u00f4ng chu\\u1ea9n\\u00a0nh\\u1ea5t \\u1edf Vi\\u1ec7t Nam. T\\u1ea5t c\\u1ea3 c\\u00e1c c\\u1eeda h\\u00e0ng \\u0111\\u01b0\\u1ee3c trang b\\u1ecb m\\u00e1y \\u0111an v\\u1ee3t \\u0111i\\u1ec7n t\\u1eed cao c\\u1ea5p c\\u00f9ng nh\\u00e2n vi\\u00ean \\u1edf shop\\u00a0lu\\u00f4n \\u0111\\u01b0\\u1ee3c trau d\\u1ed3i li\\u00ean t\\u1ee5c c\\u00e1c k\\u0129 thu\\u1eadt \\u0111an v\\u1ee3t h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean th\\u1ebf gi\\u1edbi.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>T\\u1ea6M NH\\u00ccN, S\\u1ee8 M\\u1ec6NH V\\u00c0 GI\\u00c1 TR\\u1eca C\\u1ed0T L\\u00d5I<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>T\\u1ea6M NH\\u00ccN<\\/strong>: \\u00a0\\\"Tr\\u1edf th\\u00e0nh nh\\u00e0 ph\\u00e2n ph\\u1ed1i v\\u00e0 s\\u1ea3n xu\\u1ea5t th\\u1ec3 thao l\\u1edbn nh\\u1ea5t Vi\\u1ec7t Nam\\\"<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- Tr\\u1edf th\\u00e0nh \\u0111\\u01a1n v\\u1ecb d\\u1eabn \\u0111\\u1ea7u c\\u1ea3 n\\u01b0\\u1edbc trong l\\u0129nh v\\u1ef1c th\\u1ec3 thao, gi\\u00fap n\\u00e2ng cao s\\u1ee9c kh\\u1ecfe c\\u1ed9ng \\u0111\\u1ed3ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- T\\u1ef1 l\\u1ef1c s\\u1ea3n xu\\u1ea5t c\\u00e1c s\\u1ea3n ph\\u1ea9m ch\\u1ea5t l\\u01b0\\u1ee3ng cao, ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- X\\u00e2y d\\u1ef1ng h\\u1ec7 th\\u1ed1ng c\\u1eeda h\\u00e0ng r\\u1ed9ng kh\\u1eafp 64 t\\u1ec9nh th\\u00e0nh.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>S\\u1ee8 M\\u1ec6NH<\\/strong>: \\\"Trkibadmin SPORTS cam k\\u1ebft mang \\u0111\\u1ebfn nh\\u1eefng s\\u1ea3n ph\\u1ea9m, d\\u1ecbch v\\u1ee5 ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t ph\\u1ee5c v\\u1ee5 cho ng\\u01b0\\u1eddi ch\\u01a1i th\\u1ec3 thao \\u0111\\u1ec3 n\\u00e2ng cao s\\u1ee9c kh\\u1ecfe c\\u1ee7a ch\\u00ednh m\\u00ecnh.\\\"<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi th\\u1ecb tr\\u01b0\\u1eddng<\\/strong>: Tr\\u1edf th\\u00e0nh Th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ea7u l\\u00f4ng c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t, cung c\\u1ea5p nh\\u1eefng s\\u1ea3n ph\\u1ea9m c\\u1ea7u l\\u00f4ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t, \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u luy\\u1ec7n t\\u1eadp c\\u1ea7u l\\u00f4ng v\\u00e0 ch\\u0103m s\\u00f3c s\\u1ee9c kh\\u1ecfe c\\u1ee7a m\\u1ecdi ng\\u01b0\\u1eddi.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi \\u0111\\u1ed1i t\\u00e1c<\\/strong>: \\u0110\\u1ec1 cao tinh th\\u1ea7n h\\u1ee3p t\\u00e1c c\\u00f9ng ph\\u00e1t tri\\u1ec3n; c\\u00f4 g\\u1eafng tr\\u1edf th\\u00e0nh \\u201cNg\\u01b0\\u1eddi \\u0111\\u1ed3ng h\\u00e0nh s\\u1ed1 1\\u201d c\\u1ee7a c\\u00e1c \\u0111\\u1ed1i t\\u00e1c.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi nh\\u00e2n vi\\u00ean<\\/strong>: X\\u00e2y d\\u1ef1ng m\\u00f4i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c chuy\\u00ean nghi\\u1ec7p, n\\u0103ng \\u0111\\u1ed9ng, s\\u00e1ng t\\u1ea1o v\\u00e0 nh\\u00e2n v\\u0103n; t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n thu nh\\u1eadp cao v\\u00e0 c\\u01a1 h\\u1ed9i ph\\u00e1t tri\\u1ec3n c\\u00f4ng b\\u1eb1ng cho t\\u1ea5t c\\u1ea3 nh\\u00e2n vi\\u00ean.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi x\\u00e3 h\\u1ed9i<\\/strong>: H\\u00e0i h\\u00f2a l\\u1ee3i \\u00edch doanh nghi\\u1ec7p v\\u1edbi l\\u1ee3i \\u00edch x\\u00e3 h\\u1ed9i; \\u0111\\u00f3ng g\\u00f3p t\\u00edch c\\u1ef1c v\\u00e0o c\\u00e1c ho\\u1ea1t \\u0111\\u1ed9ng h\\u01b0\\u1edbng v\\u1ec1 c\\u1ed9ng \\u0111\\u1ed3ng, th\\u1ec3 hi\\u1ec7n tinh th\\u1ea7n tr\\u00e1ch nhi\\u1ec7m c\\u00f4ng d\\u00e2n v\\u00e0 ni\\u1ec1m t\\u1ef1 h\\u00e0o d\\u00e2n t\\u1ed9c.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>GI\\u00c1 TR\\u1eca C\\u1ed0T L\\u00d5I: TRUNG - T\\u00cdN - T\\u00c2M - TR\\u00cd -NH\\u00c2N<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>TRUNG<\\/strong>: Trung th\\u1ef1c v\\u1edbi Kh\\u00e1ch h\\u00e0ng - \\u0110\\u1ed1i t\\u00e1c - Nh\\u00e2n vi\\u00ean. Th\\u1ef1c hi\\u1ec7n \\u0111\\u00fang c\\u00e1c ch\\u1ebf \\u0111\\u1ed9 \\u01b0u \\u0111\\u00e3i, d\\u1ecbch v\\u1ee5 h\\u1eadu m\\u00e3i \\u0111\\u00e3 cam k\\u1ebft, \\u0111\\u1eb7t quy\\u1ec1n l\\u1ee3i c\\u1ee7a ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng l\\u00ean tr\\u00ean h\\u1ebft, ch\\u00e2n th\\u00e0nh ti\\u1ebfp thu m\\u1ecdi \\u00fd ki\\u1ebfn \\u0111\\u00f3ng g\\u00f3p.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>T\\u00cdN<\\/strong>: Trkibadmin SPORTS \\u0111\\u1eb7t ch\\u1eef T\\u00cdN l\\u00ean h\\u00e0ng \\u0111\\u1ea7u, l\\u1ea5y ch\\u1eef T\\u00cdN l\\u00e0m tr\\u1ecdng t\\u00e2m \\u0111\\u1ed1i v\\u1edbi Kh\\u00e1ch h\\u00e0ng - \\u0110\\u1ed1i t\\u00e1c - Nh\\u00e2n vi\\u00ean. VNB SPORTS lu\\u00f4n n\\u1ed5 l\\u1ef1c h\\u1ebft m\\u00ecnh \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u00fang v\\u00e0 cao h\\u01a1n c\\u00e1c cam k\\u1ebft c\\u1ee7a m\\u00ecnh \\u0111\\u1ed1i v\\u1edbi kh\\u00e1ch h\\u00e0ng, \\u0111\\u1ed1i t\\u00e1c; \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 cam k\\u1ebft v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng- s\\u1ea3n ph\\u1ea9m - d\\u1ecbch v\\u1ee5.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>T\\u00c2M<\\/strong>: Trkibadmin SPORTS \\u0111\\u1eb7t ch\\u1eef T\\u00c2M l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u1ec1n t\\u1ea3ng quan tr\\u1ecdng c\\u1ee7a vi\\u1ec7c kinh doanh. Coi tr\\u1ecdng kh\\u00e1ch h\\u00e0ng v\\u00e0 lu\\u00f4n l\\u1ea5y kh\\u00e1ch h\\u00e0ng l\\u00e0m trung t\\u00e2m, \\u0111\\u1eb7t l\\u1ee3i \\u00edch v\\u00e0 mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng l\\u00ean h\\u00e0ng \\u0111\\u1ea7u; n\\u1ed5 l\\u1ef1c mang \\u0111\\u1ebfn cho kh\\u00e1ch h\\u00e0ng nh\\u1eefng s\\u1ea3n ph\\u1ea9m - d\\u1ecbch v\\u1ee5 t\\u1ed1t nh\\u1ea5t; xem s\\u1ef1 h\\u00e0i l\\u00f2ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng l\\u00e0 th\\u01b0\\u1edbc \\u0111o th\\u00e0nh c\\u00f4ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>Tr\\u00ed<\\/strong>: Trkibadmin SPORTS lu\\u00f4n \\u0111\\u1ec1 cao s\\u1ef1 s\\u00e1ng t\\u1ea1o, l\\u00e0 \\u0111\\u00f2n b\\u1ea9y ph\\u00e1t tri\\u1ec3n, nh\\u1eb1m t\\u1ea1o ra gi\\u00e1 tr\\u1ecb kh\\u00e1c bi\\u1ec7t v\\u00e0 b\\u1ea3n s\\u1eafc ri\\u00eang c\\u1ee7a s\\u1ea3n ph\\u1ea9m. Ch\\u00fang t\\u00f4i \\u0111\\u1ec1 cao tinh th\\u1ea7n d\\u00e1m ngh\\u0129, d\\u00e1m l\\u00e0m, khuy\\u1ebfn kh\\u00edch t\\u00ecm t\\u00f2i, \\u1ee9ng d\\u1ee5ng ti\\u1ebfn b\\u1ed9 khoa h\\u1ecdc, k\\u1ef9 thu\\u1eadt v\\u00e0 c\\u00f4ng ngh\\u1ec7 m\\u1edbi v\\u00e0o qu\\u1ea3n l\\u00fd, s\\u1ea3n xu\\u1ea5t; lu\\u00f4n ch\\u1ee7 \\u0111\\u1ed9ng c\\u1ea3i ti\\u1ebfn, n\\u00e2ng cao ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m- d\\u1ecbch v\\u1ee5.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>NH\\u00c2N<\\/strong>: Trkibadmin SPORTS x\\u00e2y d\\u1ef1ng c\\u00e1c m\\u1ed1i quan h\\u1ec7 v\\u1edbi kh\\u00e1ch h\\u00e0ng, \\u0111\\u1ed1i t\\u00e1c, \\u0111\\u1ed3ng nghi\\u1ec7p v\\u00e0 x\\u00e3 h\\u1ed9i b\\u1eb1ng s\\u1ef1 thi\\u1ec7n ch\\u00ed, tinh th\\u1ea7n nh\\u00e2n v\\u0103n. Ch\\u00fang t\\u00f4i lu\\u00f4n coi ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng l\\u00e0 t\\u00e0i s\\u1ea3n qu\\u00fd gi\\u00e1 nh\\u1ea5t; x\\u00e2y d\\u1ef1ng m\\u1ed9i tr\\u01b0\\u1eddng l\\u00e0m vi\\u1ec7c chuy\\u00ean nghi\\u1ec7p, n\\u0103ng \\u0111\\u1ed9ng, s\\u00e1ng t\\u1ea1o; t\\u1ea1o \\u0111i\\u1ec1u ki\\u1ec7n thu nh\\u1eadp cao v\\u00e0 c\\u01a1 h\\u1ed9i ph\\u00e1t tri\\u1ec3n c\\u00f4ng b\\u1eb1ng cho t\\u1ea5t c\\u1ea3 c\\u00e1n b\\u1ed9 nh\\u00e2n vi\\u00ean.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>Kh\\u1ea9u hi\\u1ec7u (slogan)<\\/strong>: Together we can<\\/span><\\/p>\\r\\n<p><br \\/><span style=\\\"font-size: 14pt;\\\"><strong>TRI\\u1ebeT L\\u00dd KINH DOANH<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Trkibadmin SPORTS mong mu\\u1ed1n tr\\u1edf th\\u00e0nh m\\u1ed9t c\\u00f4ng ty ph\\u00e2n ph\\u1ed1i v\\u00e0 s\\u1ea3n xu\\u1ea5t s\\u1ea3n ph\\u1ea9m c\\u1ea7u l\\u00f4ng ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t \\u1edf Vi\\u1ec7t Nam. V\\u00ec th\\u1ebf ch\\u00fang t\\u00f4i t\\u00e2m ni\\u1ec7m r\\u1eb1ng ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 s\\u00e1ng t\\u1ea1o l\\u00e0 ng\\u01b0\\u1eddi b\\u1ea1n \\u0111\\u1ed3ng h\\u00e0nh c\\u1ee7a Trkibadmin SPORTS. Ch\\u00fang t\\u00f4i xem kh\\u00e1ch h\\u00e0ng l\\u00e0 trung t\\u00e2m v\\u00e0 cam k\\u1ebft \\u0111\\u00e1p \\u1ee9ng m\\u1ecdi nhu c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>Ch\\u00ednh s\\u00e1ch ch\\u1ea5t l\\u01b0\\u1ee3ng<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Lu\\u00f4n th\\u1ecfa m\\u00e3n v\\u00e0 c\\u00f3 tr\\u00e1ch nhi\\u1ec7m v\\u1edbi kh\\u00e1ch h\\u00e0ng b\\u1eb1ng c\\u00e1ch kh\\u00f4ng ng\\u1eebng c\\u1ea3i ti\\u1ebfn, \\u0111a d\\u1ea1ng h\\u00f3a s\\u1ea3n ph\\u1ea9m v\\u00e0 d\\u1ecbch v\\u1ee5, \\u0111\\u1ea3m b\\u1ea3o ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u1edbi gi\\u00e1 c\\u1ea3 c\\u1ea1nh tranh, t\\u00f4n tr\\u1ecdng \\u0111\\u1ea1o \\u0111\\u1ee9c kinh doanh v\\u00e0 tu\\u00e2n theo ph\\u00e1p lu\\u1eadt.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>* ShopTrkibadmin cam k\\u1ebft b\\u00e1n h\\u00e0ng ch\\u00ednh h\\u00e3ng, kh\\u00f4ng b\\u00e1n h\\u00e0ng k\\u00e9m ch\\u1ea5t l\\u01b0\\u1ee3ng l\\u00e0m \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn th\\u00e0nh vi\\u00ean.<\\/strong><\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2023-11-15 07:13:51\",\"created_by\":\"67\",\"created_by_alias\":\"\",\"modified\":\"2023-11-15 07:13:51\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-11-15 07:13:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(2, 2, 1, '', '2023-11-15 07:24:36', 67, 5730, '4878412ed08f17d94e5d2eb31e2549eec8696c99', '{\"id\":2,\"asset_id\":61,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn thanh to\\u00e1n\",\"alias\":\"hu-ng-d-n-thanh-toan\",\"introtext\":\"<p><strong>1. \\u0110\\u1ed1i v\\u1edbi qu\\u00fd kh\\u00e1ch h\\u00e0ng mua h\\u00e0ng tr\\u1ef1c ti\\u1ebfp t\\u1ea1i c\\u00e1c chi nh\\u00e1nh<\\/strong><\\/p>\\r\\n<p>- T\\u1ea5t c\\u1ea3 c\\u00e1c chi nh\\u00e1nh c\\u1ee7a h\\u1ec7 th\\u1ed1ng Trkibadmin \\u0111\\u1ec1u ch\\u1ea5p thu\\u1eadn thanh to\\u00e1n b\\u1eb1ng ti\\u1ec1n m\\u1eb7t, chuy\\u1ec3n kho\\u1ea3n qua ng\\u00e2n h\\u00e0ng ho\\u1eb7c thanh to\\u00e1n qua th\\u1ebb t\\u00edn d\\u1ee5ng. \\u0110\\u1ed1i v\\u1edbi thanh to\\u00e1n qua th\\u1ebb t\\u00edn d\\u1ee5ng (Trkibadmin Sports ch\\u1ecbu ph\\u00ed th\\u1ebb) \\u1edf b\\u1ea5t c\\u1ee9 chi nh\\u00e1nh n\\u00e0o c\\u1ee7a h\\u1ec7 th\\u1ed1ng c\\u1eeda h\\u00e0ng c\\u1ea7u l\\u00f4ng Trkibadmin.<\\/p>\\r\\n<p>- Qu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 \\u0111\\u1ebfn tr\\u1ef1c ti\\u1ebfp chi nh\\u00e1nh ho\\u1eb7c li\\u00ean h\\u1ec7 qua hotline chi nh\\u00e1nh \\u0111\\u1ec3 bi\\u1ebft th\\u00eam chi ti\\u1ebft.<\\/p>\\r\\n<p>- Qu\\u00fd kh\\u00e1ch vui l\\u00f2ng ki\\u1ec3m tra s\\u1ea3n ph\\u1ea9m k\\u1ef9 tr\\u01b0\\u1edbc khi thanh to\\u00e1n.<\\/p>\\r\\n<p><strong>2. \\u0110\\u1ed1i v\\u1edbi qu\\u00fd kh\\u00e1ch h\\u00e0ng mua h\\u00e0ng online \\u0111\\u1eb7t h\\u00e0ng qua Website<\\/strong><\\/p>\\r\\n<p>- Sau khi nh\\u1eadn \\u0111\\u01b0\\u1ee3c th\\u00f4ng tin \\u0111\\u1eb7t h\\u00e0ng ch\\u00fang t\\u00f4i s\\u1ebd g\\u1ecdi \\u0111i\\u1ec7n \\u0111\\u1ec3 x\\u00e1c nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng trong v\\u00f2ng 24h v\\u00e0 ph\\u1ea3n h\\u1ed3i l\\u1ea1i th\\u00f4ng tin cho kh\\u00e1ch h\\u00e0ng v\\u1ec1 vi\\u1ec7c thanh to\\u00e1n v\\u00e0 th\\u1eddi gian giao nh\\u1eadn.<\\/p>\\r\\n<p>- Qu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 thanh to\\u00e1n COD - thanh to\\u00e1n khi nh\\u1eadn h\\u00e0ng, ho\\u1eb7c chuy\\u1ec3n kho\\u1ea3n thanh to\\u00e1n tr\\u01b0\\u1edbc qua t\\u00e0i kho\\u1ea3n ng\\u00e2n h\\u00e0ng.<\\/p>\\r\\n<p>- Trong tr\\u01b0\\u1eddng qu\\u00fd kh\\u00e1ch mua s\\u1ea3n ph\\u1ea9m v\\u1ee3t c\\u00f3 y\\u00eau c\\u1ea7u \\u0111an s\\u1eb5n c\\u01b0\\u1edbc, qu\\u00fd kh\\u00e1ch vui l\\u00f2ng thanh to\\u00e1n tr\\u01b0\\u1edbc to\\u00e0n b\\u1ed9 gi\\u00e1 tr\\u1ecb \\u0111\\u01a1n h\\u00e0ng bao g\\u1ed3m v\\u1ee3t v\\u00e0 c\\u01b0\\u1edbc \\u0111an v\\u1ee3t b\\u1eb1ng h\\u00ecnh th\\u1ee9c chuy\\u1ec3n kho\\u1ea3n qua t\\u00e0i kho\\u1ea3n ng\\u00e2n h\\u00e0ng.<\\/p>\\r\\n<p>- Qu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 ki\\u1ec3m tra h\\u00e0ng tr\\u01b0\\u1edbc khi nh\\u1eadn h\\u00e0ng, trong tr\\u01b0\\u1eddng h\\u1ee3p c\\u00f3 y\\u00eau c\\u1ea7u \\u0111\\u1ed5i\\/tr\\u1ea3 h\\u00e0ng ho\\u1eb7c v\\u1ea5n \\u0111\\u1ec1 v\\u1ec1 s\\u1ea3n ph\\u1ea9m, qu\\u00fd kh\\u00e1ch vui l\\u00f2ng li\\u00ean h\\u1ec7 l\\u1ea1i qua hotline\\u00a00866779560 \\u0111\\u1ec3\\u00a0\\u0111\\u01b0\\u1ee3c h\\u1ed7 tr\\u1ee3.<\\/p>\\r\\n<p><strong>3. \\u0110\\u1ed1i v\\u1edbi qu\\u00fd kh\\u00e1ch h\\u00e0ng mua h\\u00e0ng online \\u0111\\u1eb7t h\\u00e0ng qua s\\u1ed1 hotline c\\u1ee7a chi nh\\u00e1nh<\\/strong><\\/p>\\r\\n<p>- Qu\\u00fd kh\\u00e1ch c\\u00f3 th\\u1ec3 thanh to\\u00e1n COD - thanh to\\u00e1n khi nh\\u1eadn h\\u00e0ng, ho\\u1eb7c chuy\\u1ec3n kho\\u1ea3n thanh to\\u00e1n tr\\u01b0\\u1edbc qua t\\u00e0i kho\\u1ea3n ng\\u00e2n h\\u00e0ng.<\\/p>\\r\\n<p>- Trong tr\\u01b0\\u1eddng qu\\u00fd kh\\u00e1ch mua s\\u1ea3n ph\\u1ea9m v\\u1ee3t c\\u00f3 y\\u00eau c\\u1ea7u \\u0111an s\\u1eb5n c\\u01b0\\u1edbc, qu\\u00fd kh\\u00e1ch vui l\\u00f2ng thanh to\\u00e1n tr\\u01b0\\u1edbc to\\u00e0n b\\u1ed9 gi\\u00e1 tr\\u1ecb \\u0111\\u01a1n h\\u00e0ng bao g\\u1ed3m v\\u1ee3t v\\u00e0 c\\u01b0\\u1edbc \\u0111an v\\u1ee3t b\\u1eb1ng h\\u00ecnh th\\u1ee9c chuy\\u1ec3n kho\\u1ea3n qua t\\u00e0i kho\\u1ea3n ng\\u00e2n h\\u00e0ng (Danh s\\u00e1ch s\\u1ed1 t\\u00e0i kho\\u1ea3n c\\u1ee7a t\\u1eebng chi nh\\u00e1nh \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt b\\u00ean d\\u01b0\\u1edbi).<\\/p>\\r\\n<p><strong>4. \\u0110\\u1ed1i v\\u1edbi qu\\u00fd kh\\u00e1ch h\\u00e0ng mua s\\u1ec9<\\/strong><\\/p>\\r\\n<p>\\u0110\\u1ed1i v\\u1edbi nh\\u1eefng kh\\u00e1ch h\\u00e0ng c\\u00e1 nh\\u00e2n ho\\u1eb7c c\\u1eeda h\\u00e0ng mu\\u1ed1n li\\u00ean h\\u1ec7 mua s\\u1ec9 ( b\\u00e1n bu\\u00f4n)\\u00a0li\\u00ean h\\u1ec7 s\\u1ed1: 0866779560. S\\u1ebd \\u0111\\u01b0\\u1ee3c nh\\u00e2n vi\\u00ean h\\u1ed7 tr\\u1ee3.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2023-11-15 07:24:36\",\"created_by\":\"67\",\"created_by_alias\":\"\",\"modified\":\"2023-11-15 07:24:36\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-11-15 07:24:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `satnu_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(3, 3, 1, '', '2023-11-15 07:28:52', 67, 58975, '16f20974bd91c17d1f28d38b74ff46c5b9675d7a', '{\"id\":3,\"asset_id\":62,\"title\":\"H\\u01b0\\u1edbng d\\u1eabn c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i\",\"alias\":\"hu-ng-d-n-cach-ch-n-v-t-c-u-long-cho-ngu-i-m-i-choi\",\"introtext\":\"<p><span style=\\\"font-size: 14pt;\\\">\\u0110\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i, vi\\u1ec7c l\\u1ef1a ch\\u1ecdn m\\u1ed9t c\\u00e2y\\u00a0v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1ed1t v\\u00e0\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi b\\u1ea3n th\\u00e2n l\\u00e0 m\\u1ed9t chuy\\u1ec7n kh\\u00f4ng ph\\u1ea3i d\\u1ec5 d\\u00e0ng. Hi\\u1ec3u \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u n\\u00e0y, SHOPTrkibadmin \\u0111\\u00e3 ph\\u00e1t tri\\u1ec3n 1\\u00a0t\\u00ednh n\\u0103ng\\u00a0c\\u00f3 th\\u1ec3 gi\\u00fap cho ng\\u01b0\\u1eddi m\\u1edbi\\u00a0ch\\u01a1i c\\u1ea7u l\\u00f4ng c\\u00f3 th\\u1ec3\\u00a0l\\u1ef1a ch\\u1ecdn c\\u00e2y\\u00a0v\\u1ee3t c\\u1ea7u l\\u00f4ng\\u00a0theo nh\\u1eefng\\u00a0y\\u1ebfu t\\u1ed1 nh\\u01b0: Th\\u01b0\\u01a1ng hi\\u1ec7u; th\\u00f4ng s\\u1ed1 v\\u1ee3t c\\u1ea7u l\\u00f4ng\\u00a0(tr\\u1ecdng l\\u01b0\\u1ee3ng, \\u0111i\\u1ec3m c\\u00e2n b\\u1eb1ng, \\u0111\\u1ed9 c\\u1ee9ng); theo phong c\\u00e1ch ch\\u01a1i (t\\u1ea5n c\\u00f4ng, ph\\u00f2ng th\\u1ee7, c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n), theo n\\u1ed9i dung ch\\u01a1i,\\u00a0tr\\u00ecnh \\u0111\\u1ed9 c\\u0169ng nh\\u01b0 m\\u1ee9c gi\\u00e1. B\\u1ea1n\\u00a0ch\\u1ec9 c\\u1ea7n b\\u1ea5m\\u00a0ch\\u1ecdn nh\\u1eefng th\\u00f4ng s\\u1ed1 ph\\u00f9 h\\u1ee3p v\\u1edbi b\\u1ea1n,\\u00a0Trkibadmin\\u00a0s\\u1ebd l\\u1ef1a ch\\u1ecdn nh\\u1eefng c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng ch\\u00ednh h\\u00e3ng \\u0111\\u00e1p \\u1ee9ng nh\\u1eefng y\\u00eau c\\u1ea7u c\\u1ee7a b\\u1ea1n \\u0111\\u01b0a ra.\\u00a0<\\/span><\\/p>\\r\\n<div class=\\\"layout-collection\\\">\\r\\n<div class=\\\"block-collection col-12\\\">\\r\\n<div class=\\\"section-box-bg\\\">\\r\\n<div class=\\\"category-products\\\"><span style=\\\"font-size: 14pt;\\\"><strong>1. Gi\\u1edbi thi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng\\u00a0Felet Velton (Grey) ch\\u00ednh h\\u00e3ng<\\/strong><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1eady l\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 d\\u1ec5 d\\u00e0ng l\\u1ef1a ch\\u1ecdn cho m\\u00ecnh m\\u1ed9t c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1ed1t v\\u00e0 \\u01b0ng \\u00fd r\\u1ed3i ph\\u1ea3i kh\\u00f4ng?\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Tuy nhi\\u00ean, \\u0111\\u1ec3 hi\\u1ec3u r\\u00f5 h\\u01a1n v\\u1ec1 c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i\\u00a0v\\u00e0 v\\u1ec1 c\\u00e1c th\\u00f4ng s\\u1ed1 \\u0111\\u00e3 \\u0111\\u1ec1 c\\u1eadp \\u1edf\\u00a0tr\\u00ean, h\\u00e3y c\\u00f9ng SHOPVNB\\u00a0ph\\u00e2n t\\u00edch t\\u1eebng y\\u1ebfu t\\u1ed1\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0a ra l\\u00fd do t\\u1ea1i sao ch\\u00fang ta l\\u1ea1i l\\u1ef1a ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng nh\\u01b0 v\\u1eady. B\\u00e2y gi\\u1edd ch\\u00fang ta c\\u00f9ng t\\u00ecm hi\\u1ec3u nh\\u00e9.<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>1. C\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i theo TH\\u01af\\u01a0NG HI\\u1ec6U:<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Hi\\u1ec7n nay, tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng c\\u00f3 r\\u1ea5t nhi\\u1ec1u th\\u01b0\\u01a1ng hi\\u1ec7u (h\\u00e3ng) v\\u1ee3t c\\u1ea7u l\\u00f4ng \\u0111\\u1ec3 m\\u1ecdi ng\\u01b0\\u1eddi c\\u00f3 th\\u1ec3 l\\u1ef1a ch\\u1ecdn. C\\u00f3 nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng cao c\\u1ea5p ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0 Yonex, Victor, Lining..vv hay nh\\u1eefng h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb cho h\\u1ecdc sinh, sinh vi\\u00ean nh\\u01b0 apacs, proace\\u00a0hay VNB. V\\u1eady, s\\u1ea3n ph\\u1ea9m \\u0111\\u1ebfn t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u00e0y c\\u00f3 c\\u00f3 g\\u00ec kh\\u00e1c bi\\u1ec7t v\\u00e0 n\\u00ean ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng \\u0111\\u1ebfn t\\u1eeb h\\u00e3ng n\\u00e0o? C\\u00f9ng ShopTrkibadmin ph\\u00e2n t\\u00edch k\\u1ef9 h\\u01a1n nh\\u00e9!<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.1 H\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng nh\\u1ea5t th\\u1ebf gi\\u1edbi \\u2013 Yonex<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u1eafc \\u0111\\u1ebfn v\\u1ee3t c\\u1ea7u l\\u00f4ng th\\u00ec kh\\u00f4ng th\\u1ec3 kh\\u00f4ng nh\\u1eafc \\u0111\\u1ebfn \\u00f4ng l\\u1edbn Yonex. H\\u00e3ng c\\u1ea7u l\\u00f4ng l\\u1edbn nh\\u1ea5t th\\u1ebf gi\\u1edbi v\\u1ec1 s\\u1ea3n l\\u01b0\\u1ee3ng v\\u1ee3t b\\u00e1n ra v\\u00e0 \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u t\\u00ean tu\\u1ed5i v\\u1eadn \\u0111\\u1ed9ng vi\\u00ean l\\u1edbn s\\u1eed d\\u1ee5ng. \\u0110\\u1ed3ng th\\u1eddi Yonex c\\u00f2n l\\u00e0 nh\\u00e0 t\\u00e0i tr\\u1ee3 l\\u1edbn cho c\\u00e1c gi\\u1ea3i \\u0111\\u1ea5u tr\\u00ean to\\u00e0n th\\u1ebf gi\\u1edbi l\\u00e0 \\u0111\\u1ed1i t\\u00e1c quan tr\\u1ecdng c\\u1ee7a li\\u00ean \\u0111o\\u00e0n c\\u1ea7u l\\u00f4ng th\\u1ebf gi\\u1edbi.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u01afu \\u0111i\\u1ec3m l\\u1edbn nh\\u1ea5t c\\u1ee7a h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex n\\u00e0y \\u0111\\u00f3 ch\\u00ednh l\\u00e0 lu\\u00f4n \\u0111i ti\\u00ean phong trong nh\\u1eefng ph\\u00e1t minh v\\u1ec1 c\\u00f4ng ngh\\u1ec7 tr\\u00ean nh\\u1eefng c\\u00e2y v\\u1ee3t. Ngo\\u00e0i ra c\\u00f2n \\u0111i \\u0111\\u1ea7u trong thi\\u1ebft k\\u1ebf v\\u1edbi nh\\u1eefng s\\u1ea3n ph\\u1ea9m c\\u00f3 m\\u00e0u s\\u1eafc n\\u1ed5i b\\u1eadt, khung v\\u1ee3t c\\u00f3 c\\u1ea5u tr\\u00fac \\u0111\\u1eb7c bi\\u1ec7t ph\\u00f9 h\\u1ee3p v\\u1edbi nhi\\u1ec1u l\\u1ed1i ch\\u01a1i v\\u00e0 t\\u1eebng \\u0111\\u1ed1i t\\u01b0\\u1ee3ng kh\\u00e1c nhau.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">C\\u00e1c c\\u00e2y v\\u1ee3t m\\u00e0 h\\u00e3ng Yonex cho ra m\\u1eaft th\\u1ecb tr\\u01b0\\u1eddng \\u0111\\u1ec1u l\\u00e0 c\\u00e1c s\\u1ea3n ph\\u1ea9m ch\\u1ea5t l\\u01b0\\u1ee3ng, mang t\\u00ednh \\u1ed5n \\u0111\\u1ecbnh v\\u00e0 t\\u1ed1c \\u0111\\u1ed9 kinh ng\\u1ea1c. D\\u1eabn \\u0111\\u1ea7u v\\u1ec1 c\\u00f4ng ngh\\u1ec7 s\\u1ea3n xu\\u1ea5t, cho n\\u00ean c\\u00e1c c\\u00e2y v\\u1ee3t \\u0111\\u1ec1u c\\u1ee7a Yonex \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c trang b\\u1ecb c\\u00e1c c\\u00f4ng ngh\\u1ec7 hi\\u1ec7n \\u0111\\u1ea1i nh\\u1ea5t. H\\u1ea7u nh\\u01b0 c\\u00e1c c\\u00e2y v\\u1ee3t c\\u1ee7a c\\u00e1c v\\u1eadn \\u0111\\u1ed9ng vi\\u00ean top c\\u1ee7a b\\u1ea3ng x\\u1ebfp h\\u1ea1ng \\u0111\\u1ec1u l\\u00e0 mang th\\u01b0\\u01a1ng hi\\u1ec7u Yonex.\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 s\\u1ea3n ph\\u1ea9m m\\u1edbi nh\\u1ea5t c\\u1ee7a h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng Yonex m\\u1edbi cho ra th\\u1ecb tr\\u01b0\\u1eddng nh\\u01b0: V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 77 pro, V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Arcsaber 11 Pro, astrox 99,...\\u0111i\\u1ec1u cho nh\\u1eefng \\u0111\\u00e1nh gi\\u00e1, ph\\u1ea3n h\\u1ed3i r\\u1ea5t t\\u00edch c\\u1ef1c t\\u1eeb ng\\u01b0\\u1eddi ch\\u01a1i.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Tuy nhi\\u00ean, nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a nh\\u1eefng c\\u00e2y v\\u1ee3t \\u0111\\u1ebfn t\\u1eeb th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex\\u00a0\\u0111\\u00f3 l\\u00e0 gi\\u00e1 th\\u00e0nh kh\\u00e1 cao, nh\\u1eefng d\\u00f2ng v\\u1ee3t cao cao c\\u1ea5p c\\u00f3 th\\u1ec3 l\\u00ean \\u0111\\u1ebfn 2-3 tri\\u1ec7u. Kh\\u00e1 \\u0111\\u1eaft \\u0111\\u1ecf so v\\u1edbi nhu c\\u1ea7u c\\u1ee7a h\\u1ecdc sinh, sinh vi\\u00ean.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.2 Th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng Victor<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">N\\u1ebfu nh\\u01b0 tr\\u01b0\\u1edbc \\u0111\\u00e2y Victor \\u0111\\u01b0\\u1ee3c xem l\\u00e0 th\\u1ebf l\\u1ef1c l\\u1edbn trong c\\u00e1c h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng tr\\u00ean th\\u1ebf gi\\u1edbi th\\u00ec gi\\u1edd \\u0111\\u00e2y h\\u00e3ng v\\u1eabn duy tr\\u00ec \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u \\u0111\\u00f3. Gi\\u1ed1ng nh\\u01b0 Yonex c\\u00e1c v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u1ee7a Victor c\\u0169ng \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u v\\u1ee3t th\\u1ee7 n\\u1ed5i ti\\u1ebfng s\\u1eed d\\u1ee5ng nh\\u01b0: Gao Ning, Yang Wei, v\\u00e0 Zhang Ji Wen.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ph\\u1ea7n l\\u1edbn c\\u00e1c s\\u1ea3n ph\\u1ea9m m\\u00e0 Victor cho ra m\\u1eb7t \\u0111\\u1ec1u h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng c\\u00f3 s\\u1ee9c m\\u1ea1nh, h\\u1ed7 tr\\u1ee3 c\\u00e1c c\\u00fa \\u0111\\u1eadp c\\u1ea7u v\\u00e0 ph\\u1ea3n c\\u00f4ng ch\\u1edbp nho\\u00e1ng. M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t l\\u00e0m b\\u1eb1ng graphit cacbon, l\\u00e0 m\\u1ed9t c\\u00e2y v\\u1ee3t b\\u1ec1n, ch\\u00ednh x\\u00e1c d\\u00e0nh cho c\\u1ea3 nh\\u1eefng ng\\u01b0\\u1eddi ch\\u01a1i kinh nghi\\u1ec7m v\\u00e0 m\\u1edbi l\\u00e0m quen.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Tuy nhi\\u00ean, trong v\\u00e0i n\\u0103m nay tr\\u1edf l\\u1ea1i \\u0111\\u00e2y th\\u00ec h\\u00e3ng Victor l\\u1ea1i tung ra th\\u1ecb tr\\u01b0\\u1eddng kh\\u00e1 \\u00edt \\u00a0v\\u1ee3t c\\u1ea7u l\\u00f4ng m\\u1edbi so v\\u1edbi nh\\u1eefng t\\u00ean tu\\u1ed5i c\\u00f2n l\\u1ea1i nh\\u01b0 Yonex hay Lining.\\u00a0<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.3\\u00a0V\\u1ee3t c\\u1ea7u l\\u00f4ng th\\u01b0\\u01a1ng hi\\u1ec7u Li-Ning<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">H\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng n\\u00e0y chuy\\u00ean s\\u1ea3n xu\\u1ea5t c\\u00e1c d\\u1ee5ng c\\u1ee5 th\\u1ec3 thao, \\u0111\\u1ed3 t\\u1eadp th\\u1ec3 thao l\\u1edbn c\\u1ee7a Trung Qu\\u1ed1c v\\u00e0 s\\u1ea3n ph\\u1ea9m ph\\u1ee5 ki\\u1ec7n c\\u1ea7u l\\u00f4ng l\\u00e0 1 trong nh\\u1eefng d\\u00f2ng s\\u1ea3n ph\\u1ea9m tr\\u1ecdng \\u0111i\\u1ec3m c\\u1ee7a h\\u00e3ng Lining.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">L\\u00e0 m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u1ebfn t\\u1eeb Trung Qu\\u1ed1c nh\\u01b0ng kh\\u00f4ng v\\u00ec th\\u1ebf th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng Lining kh\\u00f4ng \\u0111\\u01b0\\u1ee3c ch\\u00e0o \\u0111\\u00f3n \\u1edf Vi\\u1ec7t Nam. Lining ng\\u00e0y c\\u00e0ng chi\\u1ebfm \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u c\\u1ea3m t\\u00ecnh c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng v\\u00e0 \\u0111ang ng\\u00e0y c\\u00e0ng ph\\u00e1t tri\\u1ec3n. D\\u1ea7n n\\u1eafm v\\u1ecb th\\u1ebf s\\u1ed1 2 th\\u1ebf gi\\u1edbi v\\u00e0 tham v\\u1ecdng v\\u01b0\\u1ee3t qua Yonex.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining \\u0111\\u01b0\\u1ee3c c\\u00e1c n\\u01b0\\u1edbc s\\u1eed d\\u1ee5ng r\\u1ea5t nhi\\u1ec1u, \\u0111\\u1eb7c bi\\u1ec7t \\u1edf c\\u00e1c qu\\u1ed1c gia c\\u1ee7a Ch\\u00e2u \\u00c1. V\\u1ee3t Lining \\u0111em l\\u1ea1i tr\\u1ea3i nghi\\u1ec7m kh\\u00e1 m\\u1edbi l\\u1ea1 cho c\\u00e1c anh em m\\u1edbi gia nh\\u1eadp m\\u00f4n th\\u1ec3 thao n\\u00e0y.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">C\\u00e1c s\\u1ea3n ph\\u1ea9m v\\u1ee3t c\\u1ea7u l\\u00f4ng Lining n\\u1ed5i tr\\u1ed9i v\\u1edbi m\\u1eabu m\\u00e3 \\u0111a d\\u1ea1ng \\u0111\\u01b0\\u1ee3c chia th\\u00e0nh nhi\\u1ec1u d\\u00f2ng v\\u1ee3t kh\\u00e1c nhau ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng l\\u1ed1i ch\\u01a1i nh\\u01b0 aeronaut, calibar, tectonic... \\u0110\\u1eb7c bi\\u1ec7t h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng n\\u00e0y c\\u00f2n r\\u1ea5t tr\\u00fa tr\\u1ecdng v\\u00e0o thi\\u1ebft k\\u1ebf m\\u00e0u s\\u1eafc v\\u00e0 ngo\\u1ea1i h\\u00ecnh cho c\\u00e2y v\\u1ee3t.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng \\u0111ang \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi ch\\u01a1i \\u01b0a chu\\u1ed9ng, \\u0111\\u1eb7t bi\\u1ec7t s\\u1ebd c\\u00f3 nhi\\u1ec1u ph\\u00e2n kh\\u00fac v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1eeb 1 tri\\u1ec7u \\u0111\\u1ebfn 2 tri\\u1ec7u. M\\u1ed9t trong s\\u1ed1 \\u0111\\u00f3 ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0 V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Aeronaut 6000, Aeronaut 6000 speed, Aeronaut 6000C, V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Aeronaut 4000c, V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Calibar 300C Ch\\u00ednh H\\u00e3ng..<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.4\\u00a0Th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng\\u00a0Mizuno<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">H\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno c\\u0169ng xu\\u1ea5t ph\\u00e1t t\\u1eeb Nh\\u1eadt B\\u1ea3n, hi\\u1ec7n c\\u0169ng l\\u00e0 1 trong nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. Mizuno ra \\u0111\\u1eddi c\\u0169ng kh\\u00e1 l\\u00e2u so v\\u1edbi c\\u00e1c h\\u00e3ng l\\u1edbn kh\\u00e1c nh\\u01b0 Yonex, Lining hay Victor.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u1eefng c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno tr\\u00fa tr\\u1ecdng v\\u00e0o ch\\u1ea5t li\\u1ec7u cao c\\u1ea5p v\\u00e0 h\\u00ecnh d\\u1ea1ng khung v\\u1ee3t \\u0111\\u1ed9c l\\u1ea1 nh\\u01b0ng v\\u1eabn c\\u00f4ng n\\u0103ng v\\u00e0 cho t\\u00ednh kh\\u00ed \\u0111\\u1ed9ng h\\u1ecdc cao.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam, Mizuno \\u0111\\u00e3 c\\u00f3 ch\\u1ed7 \\u0111\\u1ee9ng v\\u1eefng ch\\u1eafc b\\u1edfi nh\\u1eefng c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno n\\u1ed5i b\\u1eadt v\\u1edbi thi\\u1ebft k\\u1ebf cao c\\u1ea5p t\\u1eeb ch\\u1ea5t li\\u1ec7u t\\u1edbi m\\u1ee9c \\u0111\\u1ed9 ho\\u00e0n thi\\u1ec7n s\\u1ea3n ph\\u1ea9m.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m, gi\\u00e1 th\\u00e0nh c\\u00e1c c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno lu\\u00f4n \\u1edf m\\u1ee9c t\\u01b0\\u01a1ng \\u0111\\u1ed1i cao n\\u1ebfu \\u0111em so v\\u1ec1 gi\\u00e1 v\\u1edbi c\\u00e1c c\\u00e2y v\\u1ee3t c\\u1ee7a h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng kh\\u00e1c.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t c\\u1ee7a mizuno \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0: V\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno Speedflex 9.1, V\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno Fortius 50 Spirit, V\\u1ee3t c\\u1ea7u l\\u00f4ng Mizuno Fortius 30 Controll...<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.5 V\\u1ee3t c\\u1ea7u l\\u00f4ng th\\u01b0\\u01a1ng hi\\u1ec7u Proace<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ngo\\u00e0i nh\\u1eefng t\\u00ean tu\\u1ed5i n\\u1ed5i ti\\u1ebfng v\\u00e0 \\u0111ang r\\u1ea5t \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng k\\u1ec3 tr\\u00ean; v\\u1edbi nh\\u1eefng m\\u1eabu v\\u1ee3t v\\u00f4 c\\u00f9ng \\u0111\\u1eaft \\u0111\\u00f3 th\\u00ec c\\u0169ng c\\u00f3 nhi\\u1ec1u h\\u00e3ng v\\u1ee3t gi\\u00e1 r\\u1ebb \\u0111\\u1ec3 \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u cho ng\\u01b0\\u1eddi ch\\u01a1i phong tr\\u00e0o, h\\u1ecdc sinh, sinh vi\\u00ean. Ti\\u00eau bi\\u1ec3u ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng proace.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Proace l\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u c\\u1ee7a Anh th\\u00e0nh l\\u1eadp v\\u00e0o n\\u0103m 1978. H\\u00e3ng lu\\u00f4n n\\u1ed7 l\\u1ef1c cung c\\u1ea5p c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 c\\u00e1c b\\u1ed9 m\\u00f4n th\\u1ec3 thao nh\\u01b0 golf, Tennis, c\\u1ea7u l\\u00f4ng. V\\u1edbi mong mu\\u1ed1n \\u0111em \\u0111\\u1ebfn c\\u00e1c s\\u1ea3n ph\\u1ea9m ch\\u1ea5t l\\u01b0\\u1ee3ng. T\\u00ednh \\u0111\\u1ebfn nay v\\u1ee3t c\\u1ea7u l\\u00f4ng Proace \\u0111\\u00e3 nh\\u1eadn \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u l\\u1eddi t\\u00e1n d\\u01b0\\u01a1ng v\\u1ec1 uy t\\u00edn v\\u00e0 s\\u1ea3n ph\\u1ea9m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">M\\u1eb7c d\\u00f9 kh\\u00f4ng t\\u1ea1o ra nhi\\u1ec1u c\\u00e2y v\\u1ee3t s\\u1ed1 1 th\\u1ebf gi\\u1edbi nh\\u01b0 h\\u00e3ng Yonex nh\\u01b0ng Proace c\\u0169ng \\u0111\\u00e3 cho ra \\u0111\\u1eddi nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng nh\\u01b0 Proace S.D.S,..<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Proace \\u0111\\u1ec1 cao ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m, ch\\u00ednh v\\u00ec v\\u1eady m\\u00e0 b\\u1ea1n c\\u00f3 th\\u1ec3 th\\u1ea5y c\\u00f3 nh\\u1eefng c\\u00e2y v\\u1ee3t Proace c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng t\\u1eeb \\u0111\\u1eddi n\\u00e0y sang \\u0111\\u1eddi kh\\u00e1c m\\u00e0 v\\u1eabn c\\u00f3 th\\u1ec3 s\\u1eed d\\u1ee5ng t\\u1ed1t. M\\u1ed9t \\u0111\\u1eb7c \\u0111i\\u1ec3m duy nh\\u1ea5t m\\u00e0 cho t\\u1edbi th\\u1eddi \\u0111i\\u1ec3m hi\\u1ec7n t\\u1ea1i c\\u00e1 nh\\u00e2n m\\u00ecnh th\\u1ea5y ch\\u1ec9 c\\u00f3 Proace l\\u00e0m \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u n\\u00e0y.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.6 H\\u00e3ng V\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb Apacs<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">N\\u1ed1i ti\\u1ebfp h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb l\\u00e0 th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng Apacs. M\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u hi\\u1ec7n c\\u0169ng \\u0111ang \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi ch\\u01a1i l\\u1ef1a ch\\u1ecdn. M\\u1ed9t \\u0111\\u1eb7c \\u0111i\\u1ec3m n\\u1ed5i b\\u1eadt c\\u1ee7a h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng Apacs l\\u00e0 c\\u00e1c c\\u00e2y v\\u1ee3t c\\u1ee7a h\\u1ecd lu\\u00f4n c\\u00f3 s\\u1ef1 b\\u1ec1n b\\u1ec9, khung v\\u1ee3t c\\u1ee9ng ch\\u1ecbu \\u0111\\u01b0\\u1ee3c m\\u1ee9c c\\u0103ng l\\u1edbn v\\u00e0 m\\u1eabu m\\u00e3 \\u0111a d\\u1ea1ng \\u0111i c\\u00f9ng v\\u1edbi gi\\u00e1 th\\u00e0nh h\\u1ee3p l\\u00fd.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng Apacs n\\u1ed5i b\\u1eadt c\\u00f3 th\\u1ec3 k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0: Apacs Z-Ziggler, Apacs Virtus 99\\u2026<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">H\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb n\\u00e0y c\\u00f3 nhi\\u1ec1u d\\u00f2ng v\\u1ee3t kh\\u00e1c nhau trong \\u0111\\u00f3 n\\u1ed5i b\\u1eadt l\\u00e0 d\\u00f2ng Tantrum series v\\u1edbi l\\u1ed1i \\u0111\\u00e1nh thi\\u00ean c\\u00f4ng, d\\u00f2ng v\\u1ee3t Ziggler ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u c\\u1ea7u v\\u00e0 ph\\u1ea3n t\\u1ea1t, d\\u00f2ng Lethal Light l\\u00e0 d\\u00f2ng th\\u00e2n nh\\u1eb9, cho kh\\u1ea3 n\\u0103ng th\\u1ee7 c\\u1ea7u t\\u1ed1c \\u0111\\u1ed9 v\\u00e0 chu\\u1ea9n x\\u00e1c.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u00ecn chung, n\\u1ebfu b\\u1ea1n t\\u00ecm ki\\u1ebfm m\\u1ed9t c\\u1ea7u v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i v\\u00e0 c\\u00f3 ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, m\\u1ee9c c\\u0103ng cao; m\\u1eabu m\\u00e3 \\u0111a d\\u1ea1ng th\\u00ec h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng Apacs \\u0111\\u00e1ng \\u0111\\u1ec3 b\\u1ea1n c\\u00e2n nh\\u1eafc.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>1.7 V\\u1ee3t c\\u1ea7u l\\u00f4ng mang th\\u01b0\\u01a1ng hi\\u1ec7u VNB<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u xu\\u1ea5t ph\\u00e1t t\\u1eeb l\\u00f2ng t\\u1ef1 h\\u00e0o d\\u00e2n t\\u1ed9c. V\\u1ee3t c\\u1ea7u l\\u00f4ng mang th\\u01b0\\u01a1ng hi\\u1ec7u VNB \\u0111\\u00e3 v\\u00e0 \\u0111ang l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. C\\u00e1c s\\u1ea3n ph\\u1ea9m v\\u1ee3t m\\u1ea1ng th\\u01b0\\u01a1ng hi\\u1ec7u VNB \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00e1ch h\\u00e0ng tin d\\u00f9ng v\\u00e0 \\u0111\\u00e1nh gi\\u00e1 ch\\u1ea5t l\\u01b0\\u1ee3ng. D\\u00f9 l\\u00e0 m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t trong n\\u01b0\\u1edbc nh\\u01b0ng VNB kh\\u00f4ng l\\u00e0m anh em th\\u1ea5t v\\u1ecdng v\\u1ec1 hi\\u1ec7u n\\u0103ng tr\\u00ean t\\u1eebng c\\u00e2y v\\u1ee3t. VNB lu\\u00f4n c\\u1ea3i ti\\u1ebfn v\\u00e0 \\u0111em \\u0111\\u1ebfn cho c\\u00e1c anh em s\\u1ea3n ph\\u1ea9m t\\u1ed1i \\u01b0u nh\\u1ea5t v\\u1edbi m\\u1ee9c gi\\u00e1 ph\\u1ea3i ch\\u0103ng nh\\u1ea5t. Th\\u01b0\\u01a1ng hi\\u1ec7u VNB h\\u1ee9a h\\u1eb9n s\\u1ebd v\\u01b0\\u01a1n ra \\u201cbi\\u1ec3n l\\u1edbn\\u201d. S\\u00e1nh ngang v\\u1edbi c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng.\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t trong nh\\u1eefng s\\u1ea3n ph\\u1ea9m v\\u1ee3t VNB ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn l\\u00e0 VNB V200 ( v200 xanh, v200 \\u0111\\u1ecf v\\u00e0 v200i m\\u00e0u h\\u1ed3ng cho n\\u1eef), VNB V88, VBB TC88. \\u00a0Nh\\u1eefng s\\u1ea3n ph\\u1ea9m v\\u1ee3t c\\u1ea7u l\\u00f4ng VNB lu\\u00f4n \\u0111\\u00e1p \\u1ee9ng ti\\u00eau ch\\u00ed r\\u1ebb, b\\u1ec1n, \\u0111\\u1eb9p \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u c\\u1ee7a ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i v\\u00e0 h\\u1ecdc sinh, sinh vi\\u00ean.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ngo\\u00e0i nh\\u1eefng h\\u00e3ng v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng Shop VNB v\\u1eeba n\\u00eau tr\\u00ean th\\u00ec c\\u0169ng c\\u00f3 nhi\\u1ec1u th\\u01b0\\u01a1ng hi\\u1ec7u kh\\u00e1c nh\\u01b0 prokenex, Kumpoo, Kawasaki, VS thu\\u1ed9c ph\\u00e2n kh\\u00fac v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 r\\u1ebb. C\\u0169ng l\\u00e0 nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u00e1ng tin c\\u1eady cho s\\u1ef1 l\\u1ef1a ch\\u1ecdn c\\u1ee7a b\\u1ea1n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>2. C\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i\\u00a0theo th\\u00f4ng s\\u1ed1 v\\u1ee3t<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Th\\u00f4ng s\\u1ed1 v\\u1ee3t c\\u1ea7u l\\u00f4ng l\\u00e0 m\\u1ed9t trong nh\\u1eefng y\\u1ebfu t\\u1ed1 quan tr\\u1ecdng quy\\u1ebft \\u0111\\u1ecbnh \\u0111\\u1ebfn 1 c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u00f3 ph\\u00f9 h\\u1ee3p v\\u1edbi b\\u1ea1n hay kh\\u00f4ng. Th\\u00f4ng s\\u1ed1 v\\u1ee3t c\\u1ea7u l\\u00f4ng th\\u01b0\\u1eddng s\\u1ebd bao g\\u1ed3m: Tr\\u1ecdng l\\u01b0\\u1ee3ng v\\u1ee3t, \\u0111i\\u1ec3m c\\u00e2n b\\u1eb1ng, \\u0111\\u1ed9 c\\u1ee9ng \\u0111\\u0169a v\\u1ee3t, chu vi c\\u00e1n v\\u1ee3t.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>2.1 Tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a v\\u1ee3t - M\\u1ed9t trong nh\\u1eefng kinh nghi\\u1ec7m ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">B\\u1ea5t k\\u1ef3 ai khi t\\u01b0 v\\u1ea5n c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho b\\u1ea1n, h\\u1ecd c\\u0169ng s\\u1ebd n\\u00f3i v\\u1edbi b\\u1ea1n r\\u1eb1ng tr\\u1ecdng l\\u01b0\\u1ee3ng v\\u1ee3t l\\u00e0 y\\u1ebfu t\\u1ed1 quan tr\\u1ecdng nh\\u1ea5t. Kh\\u00f4ng c\\u00f3 tr\\u1ecdng l\\u01b0\\u1ee3ng t\\u1ed1t nh\\u1ea5t m\\u00e0 m\\u1ed7i ng\\u01b0\\u1eddi s\\u1ebd ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u1ed9t lo\\u1ea1i tr\\u1ecdng l\\u01b0\\u1ee3ng kh\\u00e1c nhau. Nh\\u00e0 s\\u1ea3n xu\\u1ea5t s\\u1ebd d\\u00f9ng k\\u00fd hi\\u1ec7u U tr\\u00ean th\\u00e2n v\\u1ee3t gi\\u00fap ng\\u01b0\\u1eddi mua ch\\u1ec9 c\\u1ea7n nh\\u00ecn th\\u00f4i c\\u0169ng c\\u00f3 th\\u1ec3 bi\\u1ebft \\u0111\\u01b0\\u1ee3c tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u1ee7a m\\u1ed7i chi\\u1ebfc v\\u1ee3t v\\u00e0 ph\\u00e2n bi\\u1ec7t \\u0111\\u01b0\\u1ee3c ch\\u00fang. B\\u1ea1n kh\\u00f4ng bi\\u1ebft m\\u1edbi ch\\u01a1i c\\u1ea7u l\\u00f4ng n\\u00ean ch\\u1ecdn v\\u1ee3t n\\u00e0o? G\\u1ee3i \\u00fd tr\\u1ecdng l\\u01b0\\u1ee3ng v\\u1ee3t cho b\\u1ea1n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- 5U: kho\\u1ea3ng 75g \\u2013 80g.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">- 4U: Kho\\u1ea3ng 80g \\u2013 85g.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">- 3U: Kho\\u1ea3ng 85g \\u2013 90g.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">- 2U: Kho\\u1ea3ng 90g \\u2013 95g.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>M\\u1eddi c\\u00e1c b\\u1ea1n xem qua video \\u0111\\u1ec3 hi\\u1ec3u r\\u00f5 h\\u01a1n<\\/strong>:<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Tuy nhi\\u00ean, \\u0111\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi m\\u1edbi bi\\u1ebft ch\\u01a1i c\\u1ea7u l\\u00f4ng b\\u1ea1n n\\u00ean ch\\u1ecdn s\\u1ea3n ph\\u1ea9m n\\u1eb7ng t\\u1eeb 80 - 85g (ch\\u01b0a k\\u1ec3 d\\u00e2y c\\u01b0\\u1edbc v\\u00e0 cu\\u1ed1n c\\u00e1n) nh\\u00e9. Nh\\u1eefng chi\\u1ebfc v\\u1ee3t n\\u00e0y kh\\u00f4ng qu\\u00e1 n\\u1eb7ng c\\u0169ng kh\\u00f4ng qu\\u00e1 nh\\u1eb9 n\\u00ean s\\u1ebd gi\\u00fap b\\u1ea1n h\\u1ea1n ch\\u1ebf v\\u00e0 gi\\u1ea3m t\\u00ecnh tr\\u1ea1ng b\\u1ecb m\\u1ecfi tay v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o \\u0111\\u1ed9 ch\\u00ednh x\\u00e1c khi \\u0111\\u00e1nh c\\u1ea7u. M\\u1ed9t c\\u00e2y v\\u1ee3t nh\\u1eb9 l\\u00e0 s\\u1ef1 l\\u1ef1a ch\\u1ecdn t\\u1ed1t nh\\u1ea5t cho ng\\u01b0\\u1eddi m\\u1edbi b\\u1eaft \\u0111\\u1ea7u v\\u00ec n\\u00f3 gi\\u00fap b\\u1ea1n di chuy\\u1ec3n nhanh c\\u0169ng nh\\u01b0 cho b\\u1ea1n nhi\\u1ec1u th\\u1eddi gian \\u0111\\u1ec3 \\u0111i\\u1ec1u ch\\u1ec9nh chuy\\u1ec3n \\u0111\\u1ed9ng c\\u1ee7a v\\u1ee3t.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>2.2 \\u00a0Ch\\u1ecdn \\u0111\\u1ed9 C\\u1ee9ng\\/M\\u1ec1m c\\u1ee7a th\\u00e2n v\\u1ee3t v\\u1eeba v\\u1edbi l\\u1ef1c c\\u1ed5 tay<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">T\\u1ed1c \\u0111\\u1ed9 vung v\\u1ee3t ch\\u00ednh l\\u00e0 th\\u1ee9 s\\u1ebd quy\\u1ebft \\u0111\\u1ecbnh b\\u1ea1n th\\u00edch h\\u1ee3p v\\u1edbi v\\u1ee3t d\\u1ebbo hay v\\u1ee3t c\\u1ee9ng. M\\u1ed9t th\\u00e2n v\\u1ee3t c\\u1ee9ng s\\u1ebd c\\u00f3 kh\\u1ea3 n\\u0103ng ph\\u1ea3n h\\u1ed3i nhanh v\\u00e0 m\\u1ea1nh, r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 t\\u1ed1c \\u0111\\u1ed9 vung v\\u1ee3t nhanh. N\\u00f3 cho ph\\u00e9p b\\u1ea1n tr\\u1ea3 l\\u1ea1i c\\u00e1c qu\\u1ea3 c\\u1ea7u nhanh h\\u01a1n v\\u00e0 g\\u00e2y nhi\\u1ec1u b\\u1ea5t ng\\u1edd cho \\u0111\\u1ed1i th\\u1ee7. Th\\u01b0\\u1eddng nh\\u1eefng c\\u00e2y v\\u1ee3t th\\u00e2n c\\u1ee9ng s\\u1ebd \\u0111\\u00f2i h\\u1ecfi ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 k\\u1ef9 thu\\u1eadt c\\u1ea7u l\\u00f4ng t\\u1ed1t nh\\u01b0 V\\u0110V b\\u00e1n chuy\\u00ean, chuy\\u00ean nghi\\u1ec7p, c\\u00e1c V\\u0110V th\\u1ebf gi\\u1edbi.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t th\\u00e2n v\\u1ee3t m\\u1ec1m d\\u1ebbo (do khi vung, v\\u1ee3t c\\u00f3 \\u0111\\u1ed9 cong nh\\u1ea5t \\u0111\\u1ecbnh), b\\u1edfi v\\u00ec ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i luy\\u1ec7n t\\u1eadp r\\u1ea5t nhi\\u1ec1u n\\u00ean s\\u1ebd c\\u1ea7n v\\u1ea5n \\u0111\\u1ec1 tr\\u1ee3 l\\u1ef1c, gi\\u00fap gi\\u1ea3i ph\\u00f3ng ho\\u00e0n to\\u00e0n l\\u1ef1c c\\u1ed5 tay khi b\\u1ea1n l\\u00e0 m\\u1ed9t ng\\u01b0\\u1eddi c\\u00f3 t\\u1ed1c \\u0111\\u1ed9 vung v\\u1ee3t ch\\u1eadm ho\\u1eb7c l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi b\\u1eaft \\u0111\\u1ea7u ch\\u01a1i c\\u1ea7u. C\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i kh\\u00f4ng s\\u1eed d\\u1ee5ng\\u00a0th\\u00e2n c\\u1ee9ng, nh\\u01b0 v\\u1eady s\\u1ebd khi\\u1ebfn b\\u1ea1n \\u0111au tay v\\u00e0 kh\\u00f4ng th\\u1ec3 ph\\u00e1t huy t\\u1ed1t t\\u00e1c d\\u1ee5ng \\u0111\\u00e1nh c\\u1ea7u l\\u00f4ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>2.3 \\u0110i\\u1ec3m c\\u00e2n b\\u1eb1ng<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u0110i\\u00ea\\u0309m c\\u00e2n b\\u0103\\u0300ng v\\u01a1\\u0323t c\\u00e2\\u0300u l\\u00f4ng la\\u0300 m\\u00f4\\u0323t trong nh\\u01b0\\u0303ng th\\u00f4ng s\\u00f4\\u0301 v\\u01a1\\u0323t ma\\u0300 ng\\u01b0\\u01a1\\u0300i ch\\u01a1i c\\u00e2\\u0300u l\\u00f4ng c\\u00e2\\u0300n chu\\u0301 y\\u0301 khi t\\u01b0 v\\u00e2\\u0301n mua v\\u01a1\\u0323t c\\u00e2\\u0300u l\\u00f4ng, c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i. \\u0110i\\u00ea\\u0309m c\\u00e2n b\\u0103\\u0300ng v\\u01a1\\u0323t c\\u00e2\\u0300u l\\u00f4ng se\\u0303 quy\\u00ea\\u0301t \\u0111i\\u0323nh \\u0111\\u01b0\\u01a1\\u0323c \\u0111\\u00f4\\u0323 n\\u0103\\u0323ng \\u0111\\u00e2\\u0300u, nhe\\u0323 \\u0111\\u00e2\\u0300u cu\\u0309a c\\u00e2y v\\u01a1\\u0323t va\\u0300 \\u0111\\u00f4\\u0300ng nghi\\u0303a v\\u01a1\\u0301i l\\u00f4\\u0301i ch\\u01a1i t\\u00e2\\u0301n c\\u00f4ng, pho\\u0300ng thu\\u0309 cu\\u0309a t\\u01b0\\u0300ng ng\\u01b0\\u01a1\\u0300i ch\\u01a1i.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u2013\\u00a0<strong>V\\u1ee3t nh\\u1eb9 \\u0111\\u1ea7u<\\/strong>: Cho kh\\u1ea3 n\\u0103ng linh ho\\u1ea1t v\\u00e0 \\u0111i\\u1ec1u c\\u1ea7u cao nh\\u01b0ng h\\u1ea1n ch\\u1ebf \\u1edf kh\\u1ea3 n\\u0103ng t\\u1ea5n c\\u00f4ng, ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u00e1c c\\u00fa ch\\u1eb7n c\\u1ea7u, \\u0111\\u1ea9y c\\u1ea7u, ch\\u00e9m c\\u1ea7u.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u2013\\u00a0<strong>V\\u1ee3t c\\u00e2n b\\u1eb1ng<\\/strong>: H\\u00f4\\u0303 tr\\u01a1\\u0323 t\\u00f4\\u0301t trong kh\\u1ea3 n\\u0103ng \\u0111i\\u1ec1u c\\u1ea7u v\\u00e0 tr\\u00ean l\\u01b0\\u1edbi, t\\u1ea5n c\\u00f4ng c\\u0169ng t\\u01b0\\u01a1ng \\u0111\\u1ed1i t\\u1ed1t, thi\\u00ean v\\u1ec1 l\\u1ed1i \\u0111\\u00e1nh c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u2013\\u00a0<strong>V\\u1ee3t n\\u1eb7ng \\u0111\\u1ea7u<\\/strong>: \\u0110\\u00e2y l\\u00e0 \\u0111i\\u1ec3n h\\u00ecnh cho d\\u00f2ng v\\u1ee3t t\\u1ea5n c\\u00f4ng uy l\\u1ef1c, ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u00e1c c\\u00fa \\u0111\\u1eadp, \\u0111\\u00e1nh m\\u1ea1nh, c\\u1ea7u \\u0111i s\\u00e2u xu\\u1ed1ng cu\\u1ed1i s\\u00e2n.V\\u1ee3t c\\u00e0ng n\\u1eb7ng \\u0111\\u1ea7u th\\u00ec kh\\u1ea3 n\\u0103ng t\\u1ea5n c\\u00f4ng c\\u00e0ng t\\u1ed1t \\u0111\\u00f2i h\\u1ecfi theo n\\u00f3 ph\\u1ea3i l\\u00e0 \\u0111\\u1ed9 c\\u1ee9ng c\\u1ee7a v\\u1ee3t. Nh\\u01b0ng ng\\u01b0\\u1ee3c l\\u1ea1i th\\u00ec n\\u00f3 cho kh\\u1ea3 n\\u0103ng linh ho\\u1ea1t k\\u00e9m h\\u01a1n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>3. Ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng theo Phong c\\u00e1ch ch\\u01a1i<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u01b0 shop c\\u0169ng \\u0111\\u00e3 \\u0111\\u1ec3 c\\u1eadp v\\u1ec1 \\u0111i\\u1ec3m c\\u00e2n b\\u1eb1ng \\u1edf ph\\u1ea7n th\\u00f4ng s\\u1ed1 v\\u1ee3t b\\u00ean tr\\u00ean, th\\u00ec c\\u00e1c b\\u1ea1n c\\u0169ng \\u0111\\u00e3 h\\u00ecnh dung \\u0111\\u01b0\\u1ee3c 1 c\\u00e2y v\\u1ee3t thi\\u00ean c\\u00f4ng hay c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n th\\u00ec th\\u00f4ng s\\u1ed1 v\\u1ee3t s\\u1ebd nh\\u01b0 th\\u1ec3 n\\u00e0o. Tuy Nhi\\u00ean, Shop VNB c\\u0169ng \\u0111\\u00e3\\u00a0ph\\u00e2n lo\\u1ea1i s\\u1eb5n cho b\\u1ea1n c\\u00e1c d\\u00f2ng v\\u1ee3t n\\u00e0o thi\\u00ean c\\u00f4ng; c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n; hay ph\\u1ea3n t\\u1ea1t, ph\\u00f2ng th\\u1ee7.<\\/span><\\/p>\\r\\n<h3><span style=\\\"font-size: 14pt;\\\"><strong>3.1 Ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi ch\\u01a1i theo phong c\\u00e1ch ch\\u01a1i T\\u1ea5n C\\u00f4ng\\u00a0<\\/strong><\\/span><\\/h3>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">L\\u1ed1i ch\\u01a1i t\\u1ea5n c\\u00f4ng d\\u1ed3n d\\u1eadp, Smash c\\u1ea7u li\\u00ean t\\u1ee5c \\u0111\\u1ec3 ghi \\u0111i\\u1ec3m, \\u00e1p \\u0111\\u1ea3o \\u0111\\u1ed1i th\\u1ee7 tr\\u00ean s\\u00e2n lu\\u00f4n l\\u00e0 l\\u1ed1i ch\\u01a1i \\u0111\\u01b0\\u1ee3c r\\u1ea5t nhi\\u1ec1u c\\u00e1c l\\u00f4ng th\\u1ee7 \\u01b0a th\\u00edch. \\u0110\\u1eb7c bi\\u1ec7t, m\\u1ed9t trong nh\\u1eefng y\\u1ebfu t\\u1ed1 quy\\u1ebft \\u0111\\u1ecbnh t\\u1ea1o n\\u00ean c\\u00fa \\u0111\\u1eadp c\\u1ea7u uy l\\u1ef1c ch\\u00ednh l\\u00e0 c\\u00e2y v\\u1ee3t c\\u1ee7a b\\u1ea1n. Ch\\u00ednh v\\u00ec th\\u1ebf vi\\u1ec7c l\\u1ef1a ch\\u1ecdn m\\u1ed9t c\\u00e2y v\\u1ee3t thi\\u00ean c\\u00f4ng n\\u1eb7ng \\u0111\\u1ea7u s\\u1ebd ph\\u00f9 h\\u1ee3p v\\u1edbi l\\u1ed1i \\u0111\\u00e1nh c\\u00f4ng c\\u1ee7a b\\u1ea1n. M\\u1ed9t trong s\\u1ed1 nh\\u1eefng c\\u00e2y v\\u1ee3t thi\\u00ean c\\u00f4ng ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0:<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex thi\\u00ean c\\u00f4ng: V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex Astrox 99, Yonex Astrox 88D Pro, Yonex Astrox 77 Pro...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining thi\\u00ean c\\u00f4ng: V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining Calibar 900C, Lining Tectonic 7C, 4000c,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Victor thi\\u00ean c\\u00f4ng: Victor Thruster Ruyga, victor jetspeed 10,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>3.2 L\\u1ed1i ch\\u01a1i C\\u00f4ng Th\\u1ee7 To\\u00e0n Di\\u1ec7n<\\/strong>\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">B\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi ch\\u01a1i c\\u1ea7u l\\u00f4ng y\\u00eau th\\u00edch l\\u1ed1i \\u0111\\u00e1nh k\\u1ef9 thu\\u1eadt, nhanh, ch\\u1eadm t\\u00f9y bi\\u1ebfn, th\\u00edch ki\\u1ec3m so\\u00e1t c\\u1ea7u, \\u0111i\\u1ec1u c\\u1ea7u b\\u00e0o m\\u00f2n s\\u1ee9c b\\u1ec1n \\u0111\\u1ed1i th\\u1ee7 v\\u00e0 \\u201cch\\u1ed1t h\\u1ea1\\u201d b\\u1eb1ng m\\u1ed9t pha t\\u1ea5n c\\u00f4ng nhanh ch\\u1edbp nho\\u00e1ng. B\\u1ea1n \\u00a0l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i c\\u1ea7u l\\u00f4ng v\\u00e0 ch\\u01b0a \\u0111\\u1ecbnh h\\u00ecnh \\u0111\\u01b0\\u1ee3c l\\u1ed1i \\u0111\\u00e1nh c\\u1ee7a m\\u00ecnh, ch\\u01b0a bi\\u1ebft l\\u1ef1c tay c\\u0169ng nh\\u01b0 phong c\\u00e1ch ch\\u01a1i c\\u1ee7a m\\u00ecnh. Hay b\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi ch\\u01a1i l\\u00fac t\\u1ea5n c\\u00f4ng nhanh, d\\u1ed3n d\\u1eadp, l\\u00fac l\\u1ea1i ph\\u00f2ng th\\u1ee7 \\u1ed5n \\u0111\\u1ecbnh t\\u1eeb t\\u1eeb, ki\\u1ec3m so\\u00e1t tr\\u1eadn c\\u1ea7u th\\u00ec \\u1eafc h\\u1eb3n \\u0111\\u00f3 l\\u00e0 l\\u1ed1i \\u0111\\u00e1nh c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n hay c\\u00f2n g\\u1ecdi l\\u00e0 to\\u00e0n di\\u1ec7n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">L\\u1ed1i \\u0111\\u00e1nh c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n kh\\u00f4ng ch\\u1ec9 d\\u1ef1a v\\u00e0o k\\u1ef9 thu\\u1eadt, s\\u1ee9c b\\u1ec1n, kh\\u1ea3 n\\u0103ng ph\\u00e1n \\u0111o\\u00e1n t\\u00ecnh hu\\u1ed1ng c\\u1ea7u c\\u1ee7a ng\\u01b0\\u1eddi m\\u00e0 quan tr\\u1ecdng kh\\u00f4ng k\\u00e9m c\\u00f2n l\\u00e0 c\\u00e2y v\\u1ee3t m\\u00e0 b\\u1ea1n d\\u00f9ng. M\\u1ed9t c\\u00e2y v\\u1ee3t n\\u1eb7ng \\u0111\\u1ea7u cho kh\\u1ea3 n\\u0103ng t\\u1ea5n c\\u00f4ng r\\u1ea5t t\\u1ed1t nh\\u01b0ng l\\u1ea1i h\\u1ea1n ch\\u1ebf trong v\\u1ea5n \\u0111\\u1ec1 ph\\u1ea3n x\\u1ea1 nhanh c\\u1ee7a c\\u00e1c pha c\\u1ea7u c\\u1eadn l\\u01b0\\u1edbi, c\\u1ea7u nhanh. M\\u1ed9t c\\u00e2y v\\u1ee3t nh\\u1eb9 \\u0111\\u1ea7u gi\\u00fap b\\u1ea1n \\u1ee9ng bi\\u1ebfn nhanh trong c\\u00e1c t\\u00ednh h\\u01b0\\u1edbng c\\u1ea7u \\u0111\\u1ed5i h\\u01b0\\u1edbng b\\u1ea5t ng\\u1edd, nh\\u1eefng pha b\\u1ecf nh\\u1ecf, ch\\u1ee5p c\\u1ea7u, \\u0111\\u1ea9y c\\u1ea7u, ch\\u01a1i tr\\u00ean l\\u01b0\\u1edbi \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n r\\u1ea5t hi\\u1ec7u qu\\u1ea3 nh\\u01b0ng kh\\u1ea3 n\\u0103ng t\\u1ea5n c\\u00f4ng c\\u1ee7a v\\u1ee3t l\\u1ea1i kh\\u00f4ng cao, \\u0111\\u1eadp c\\u1ea7u \\u0111i kh\\u00f4ng c\\u1eafm, g\\u00e2y m\\u1ea5t s\\u1ee9c ng\\u01b0\\u1eddi ch\\u01a1i. V\\u00ec v\\u1eady, m\\u1ed9t c\\u00e2y v\\u1ee3t c\\u00e2n b\\u1eb1ng cho l\\u1ed1i ch\\u01a1i c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n l\\u00e0 v\\u00f4 c\\u00f9ng quan tr\\u1ecdng quy\\u1ebft \\u0111\\u1ecbnh ph\\u1ea7n l\\u1edbn \\u0111\\u1ebfn l\\u1ed1i \\u0111\\u00e1nh, phong c\\u00e1ch ch\\u01a1i v\\u00e0 tr\\u00ecnh \\u0111\\u1ed9 ng\\u01b0\\u1eddi ch\\u01a1i.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng to\\u00e0n di\\u1ec7n, hay c\\u00f2n g\\u1ecdi l\\u00e0 v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u00e2n b\\u1eb1ng l\\u00e0 v\\u1ee3t c\\u00f3 \\u0111i\\u1ec3m c\\u00e2n b\\u1eb1ng 285 +- 3 mm ho\\u1eb7c c\\u00f3 h\\u00e3ng x\\u00e1c \\u0111\\u1ecbnh \\u0111\\u1ebfn 285 +- 5 mm.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ng\\u00e0y nay, c\\u00e1c h\\u00e3ng c\\u1ea7u l\\u00f4ng s\\u1ea3n xu\\u1ea5t v\\u1ee3t to\\u00e0n di\\u1ec7n th\\u01b0\\u1eddng \\u0111\\u01b0a v\\u00e0o c\\u00e1c d\\u00f2ng v\\u1ee3t ri\\u00eang m\\u00e0 khi nh\\u1eafc \\u0111\\u1ebfn d\\u00f2ng v\\u1ee3t \\u0111\\u00f3 ng\\u01b0\\u1eddi ch\\u01a1i s\\u1ebd bi\\u1ebft \\u0111\\u00e2y l\\u00e0 c\\u00e2y v\\u1ee3t to\\u00e0n di\\u1ec7n. V\\u00ed d\\u1ee5 nh\\u01b0:<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- Yonex: Arc Saber, Nanoflare, Doura, ...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- Victor: Brave Sword, Hypernano X, Jetspeed, ...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- Lining: High Carbon, nh\\u1eefng c\\u00e2y v\\u1ee3t theo Boost Series, ...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- Mizuno: Technoblade, ...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>3.3 C\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng theo l\\u1ed1i ch\\u01a1i Ph\\u1ea3n T\\u1ea1t, Ph\\u00f2ng Th\\u1ee7<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng chuy\\u00ean ph\\u1ea3n t\\u1ea1t n\\u1ed5i b\\u1eadt v\\u1edbi s\\u1ef1 nhanh l\\u1eb9 trong l\\u1ed1i ch\\u01a1i, gi\\u00fap ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 s\\u1ef1 linh ho\\u1ea1t trong ph\\u00f2ng th\\u1ee7, b\\u00ean c\\u1ea1nh \\u0111\\u00f3 c\\u00f2n d\\u00e0nh th\\u1ebf ch\\u1ee7 \\u0111\\u1ed9ng t\\u1eeb nh\\u1eefng pha ph\\u1ea3n t\\u1ea1t ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t thi\\u00ean v\\u1ec1 l\\u1ed1i \\u0111\\u00e1nh ph\\u1ea3n t\\u1ea1t, ph\\u00f2ng th\\u1ee7 ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn:<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex chuy\\u1ec3n th\\u1ee7 ph\\u1ea3n t\\u1ea1t: \\u00a0Arcsaber 11, Nanoflare 700 xanh.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Victor: Brave Sword 12.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining chuy\\u00ean th\\u1ee7: Aeronaut 6000D, V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining 3D Calibar 300B, Lining 3D Calibar 900i.<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>4. Ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng theo n\\u1ed9i dung ch\\u01a1i<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">N\\u1ed9i dung ch\\u01a1i c\\u1ea7u l\\u00f4ng th\\u01b0\\u1eddng s\\u1ebd chia ra 2 n\\u1ed9i dung ch\\u00ednh \\u0111\\u00f3 l\\u00e0 \\u0111\\u00e1nh \\u0111\\u00f4i v\\u00e0 \\u0111\\u00e1nh \\u0111\\u01a1n.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u00f3 c\\u1ea7n ph\\u00e2n bi\\u1ec7t v\\u1ee3t \\u0111\\u00e1nh \\u0111\\u00f4i v\\u00e0 \\u0111\\u00e1nh \\u0111\\u01a1n hay kh\\u00f4ng? Th\\u1eadt s\\u1ef1 \\u0111\\u00e2y c\\u0169ng l\\u00e0 m\\u1ed9t c\\u00e2u h\\u1ecfi \\u0111\\u01b0\\u1ee3c kh\\u00e1 nhi\\u1ec1u ng\\u01b0\\u1eddi ch\\u01a1i t\\u00ecm hi\\u1ec3u. C\\u00f3 nhi\\u1ec1u b\\u1ea1n ch\\u01a1i th\\u00ec s\\u1ebd s\\u1eed d\\u1ee5ng v\\u1ee3t ri\\u00eang \\u0111\\u1ec3 \\u0111\\u00e1nh \\u0111\\u00f4i v\\u00e0 \\u0111\\u00e1nh \\u0111\\u01a1n. C\\u00f2n 1 s\\u1ed1 ng\\u01b0\\u1eddi ch\\u01a1i th\\u00ec s\\u1eed d\\u1ee5ng 1 v\\u1ee3t d\\u00f9ng chung cho c\\u1ea3 \\u0111\\u00e1nh \\u0111\\u01a1n v\\u00e0 \\u0111\\u00e1nh \\u0111\\u00f4i, mi\\u1ec5n sao h\\u1ee3p tay l\\u00e0 \\u0111\\u01b0\\u1ee3c.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Th\\u1eadt s\\u1ef1 th\\u00ec c\\u0169ng ch\\u01b0a c\\u00f3 c\\u00e1i n\\u00e0o quy \\u0111\\u1ecbnh r\\u00f5 v\\u1ee3t ch\\u1ec9 s\\u1eed d\\u1ee5ng ri\\u00eang cho \\u0111\\u00e1nh \\u0111\\u00f4i, ho\\u1eb7c ch\\u1ec9 s\\u1eed d\\u1ee5ng ri\\u00eang cho \\u0111\\u00e1nh \\u0111\\u01a1n. Tuy nhi\\u00ean, trong \\u0111\\u00e1nh \\u0111\\u00f4i th\\u01b0\\u1eddng nh\\u1eefng pha c\\u1ea7u cho t\\u1ed1c \\u0111\\u1ed9 nhanh h\\u01a1n n\\u00ean \\u0111\\u00f2i h\\u1ecfi ch\\u1ecdn l\\u1ef1a nh\\u1eefng c\\u00e2y v\\u1ee3t c\\u00f3 tr\\u1ecdng l\\u01b0\\u1ee3ng kh\\u00f4ng qu\\u00e1 n\\u1eb7ng t\\u1ea7m 4U, \\u0111i\\u1ec3m c\\u00e2n b\\u1eb1ng h\\u01a1i n\\u1eb7ng \\u0111\\u1ea7u v\\u00e0 \\u0111\\u0169a v\\u1ee3t c\\u1ee9ng trung b\\u00ecnh \\u0111\\u1ec3 ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 th\\u1ec3 d\\u1ec5 d\\u00e0ng x\\u1eed l\\u00ed m\\u1ecdi t\\u00ecnh hu\\u1ed1ng tr\\u00ean s\\u00e2n \\u0111\\u1ea5u.<\\/span><br \\/><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 m\\u1eabu v\\u1ee3t c\\u1ea7u l\\u00f4ng \\u0111\\u00e1nh \\u0111\\u00f4i: Yonex Nanoflare 700 \\u0110\\u1ecf, Yonex Astrox 88d pro, Mizuno JPX 8.1, Lining Tectonic 7.<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>5. H\\u01b0\\u1edbng d\\u1eabn ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng theo tr\\u00ecnh \\u0111\\u1ed9 ch\\u01a1i<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed7i lo\\u1ea1i v\\u1ee3t s\\u1ebd c\\u00f3 nh\\u1eefng \\u0111i\\u1ec3m ri\\u00eang v\\u1ec1 thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng tr\\u00ecnh \\u0111\\u1ed9 v\\u00e0 l\\u1ed1i ch\\u01a1i kh\\u00e1c nhau. T\\u1ea5t nhi\\u00ean nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u00f3 v\\u1eabn ph\\u1ea3i \\u0111\\u00e1p \\u1ee9ng ti\\u00eau chu\\u1ea9n quy \\u0111\\u1ecbnh c\\u1ee7a lu\\u1eadt c\\u1ea7u l\\u00f4ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>N\\u1ebfu b\\u1ea1n l\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi<\\/strong>, \\u0111ang t\\u1eadp l\\u00e0m quen v\\u1edbi nh\\u1eefng k\\u1ef9 thu\\u1eadt \\u0111\\u00e1nh c\\u1ea7u l\\u00f4ng c\\u01a1 b\\u1ea3n th\\u00ec c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i l\\u00e0\\u00a0ch\\u1ecdn 1 c\\u00e2y v\\u1ee3t v\\u1ee3t ph\\u1ed5 th\\u00f4ng, gi\\u00e1 r\\u1ebb. Nh\\u1eefng c\\u00e2y v\\u1ee3t n\\u00e0y v\\u1eabn trang b\\u1ecb nh\\u1eefng c\\u00f4ng ngh\\u1ec7 \\u0111\\u1ec3 h\\u1ed7 tr\\u1ee3 t\\u1ed1i \\u0111a cho ng\\u01b0\\u1eddi ch\\u01a1i. Th\\u00f4ng th\\u01b0\\u1eddng th\\u00ec nh\\u1eefng c\\u00e2y v\\u1ee3t thu\\u1ed9c t\\u1ea7m 5u,4u, \\u0111\\u0169a c\\u1ee9ng trung b\\u00ecnh v\\u00e0 v\\u1ee3t c\\u00e2n b\\u1eb1ng s\\u1ebd th\\u00edch h\\u1ee3p cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i. M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0: vnb v200, apacs one malaysia, prokenex 704, V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 01A...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 tr\\u00ecnh \\u0111\\u1ed9 trung b\\u00ecnh<\\/strong>: B\\u1ea1n s\\u1ebd l\\u1ef1a ch\\u1ecdn cho m\\u00ecnh nh\\u1eefng c\\u00e2y v\\u1ee3t thi\\u00ean v\\u1ec1 l\\u1ed1i \\u0111\\u00e1nh c\\u1ee7a m\\u00ecnh h\\u01a1n. C\\u00f3 th\\u1ec3 thi\\u00ean c\\u00f4ng ho\\u1eb7c c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n t\\u00f9y theo phong c\\u00e1ch ch\\u01a1i c\\u1ee7a t\\u1eebng ng\\u01b0\\u1eddi. Tuy nhi\\u00ean, \\u0111\\u1ed1i v\\u1edbi v\\u1ee3t thi\\u00ean c\\u00f4ng c\\u00e1c b\\u1ea1n kh\\u00f4ng n\\u00ean ch\\u1ecdn nh\\u1eefng c\\u00e2y v\\u1ee3t qu\\u00e1 n\\u1eb7ng \\u0111\\u1ea7u ho\\u1eb7c qu\\u00e1 c\\u1ee9ng. Nh\\u01b0 v\\u1eady s\\u1ebd kh\\u00f4ng nh\\u1eefng kh\\u00f4ng mang l\\u1ea1i hi\\u1ec7u qu\\u1ea3 m\\u00e0 c\\u00f2n r\\u1ea5t d\\u1ec5 b\\u1ecb ch\\u1ea5n th\\u01b0\\u01a1ng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>\\u0110\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 tr\\u00ecnh \\u0111\\u1ed9 kh\\u00e1 t\\u1ed1t<\\/strong>: \\u0110\\u1ed1i v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi ch\\u01a1i \\u0111\\u1ea1t \\u0111\\u1ebfn tr\\u00ecnh \\u0111\\u1ed9 n\\u00e0y th\\u00ec l\\u1ef1c tay kh\\u00e1 kh\\u1ecfe, quan tr\\u1ecdng l\\u1ef1a ch\\u1ecdn cho m\\u00ecnh m\\u1ed9t c\\u00e2y v\\u1ee3t h\\u1ee3p v\\u1edbi tay nh\\u1ea5t. Th\\u01b0\\u1eddng th\\u00ec ng\\u01b0\\u1eddi ch\\u01a1i \\u0111\\u1ea1t tr\\u00ecnh \\u0111\\u1ed9 kh\\u00e1 t\\u1ed1t s\\u1ebd ch\\u1ecdn cho m\\u00ecnh nh\\u1eefng c\\u00e2y v\\u1ee3t n\\u1eb7ng 3U, 4U, th\\u00e2n v\\u1ee3t t\\u01b0\\u01a1ng \\u0111\\u1ed1i c\\u1ee9ng. Ho\\u1eb7c nh\\u1eefng c\\u00e2y v\\u1ee3t si\\u00eau n\\u1eb7ng \\u0111\\u1ea7u \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 th\\u1ef1c hi\\u1ec7n nh\\u1eefng pha smash ch\\u00e1y s\\u00e2n.<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>6. H\\u01b0\\u1edbng d\\u1eabn ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng theo m\\u1ee9c gi\\u00e1<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Hi\\u1ec7n t\\u1ea1i v\\u1ee3t c\\u1ea7u l\\u00f4ng s\\u1ebd c\\u00f3 nhi\\u1ec1u m\\u1ee9c gi\\u00e1 kh\\u00e1c nhau, c\\u00f3 nh\\u1eefng c\\u00e2y v\\u1ee3t ch\\u1ec9 t\\u1ea7m v\\u00e0i tr\\u0103m c\\u0169ng c\\u00f3 nh\\u1eefng c\\u00e2y v\\u1ee3t l\\u00ean \\u0111\\u1ebfn m\\u1ee9c v\\u00e0i tri\\u1ec7u. V\\u1eady ch\\u00fang c\\u00f3 g\\u00ec kh\\u00e1c nhau, c\\u00f9ng shopVNB t\\u00ecm hi\\u1ec3u nh\\u00e9!<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>V\\u1ee3t c\\u1ea7u l\\u00f4ng d\\u01b0\\u1edbi 5 tr\\u0103m<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u1ede m\\u1ee9c gi\\u00e1 d\\u01b0\\u1edbi 5 tr\\u0103m th\\u00ec hi\\u1ec7n c\\u00f3 r\\u1ea5t \\u00edt m\\u1eabu, \\u0111a ph\\u1ea7n l\\u00e0 v\\u1ee3t c\\u1ea7u l\\u00f4ng cho tr\\u1ebb e v\\u00e0 v\\u1ee3t ph\\u00f4i. \\u01afu \\u0111i\\u1ec3m c\\u1ee7a nh\\u1eefng c\\u00e2y v\\u1ee3t n\\u00e0y l\\u00e0 gi\\u00e1 th\\u00e0nh r\\u1ebb, tuy nhi\\u00ean th\\u00ec n\\u01b0\\u1edbc s\\u01a1n s\\u1ebd kh\\u00f4ng \\u0111\\u01b0\\u1ee3c ch\\u00e2u chu\\u1ed1t c\\u0169ng nh\\u01b0 \\u0111\\u1ed9 ch\\u1ecbu l\\u1ef1c k\\u00e9m c\\u1ee7a khung v\\u1ee3t. V\\u1ee3t r\\u1ea5t d\\u1ec5 b\\u1ecb g\\u00e3y c\\u0169ng nh\\u01b0 h\\u01b0 h\\u1ecfng.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>V\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 t\\u1eeb 5 tr\\u0103m \\u0111\\u1ebfn 1 tri\\u1ec7u\\u00a0<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ph\\u00e2n kh\\u00fac n\\u00e0y c\\u00f3 r\\u1ea5t nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m cho b\\u1ea1n l\\u1ef1a ch\\u1ecdn. \\u1ede ph\\u00e2n kh\\u00fac n\\u00e0y th\\u00ec \\u0111a ph\\u1ea7n l\\u00e0 v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e0nh cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i, ng\\u01b0\\u1eddi ch\\u01a1i phong tr\\u00e0o. Nh\\u1eefng c\\u00e2y v\\u1ee3t thu\\u1ed9c ph\\u00e2n kh\\u00fac n\\u00e0y \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf b\\u1eaft m\\u1eaft, \\u0111\\u1ed9 b\\u1ec1n cao, mang \\u0111\\u1ebfn nh\\u1eefng tr\\u1ea3i nghi\\u1ec7p t\\u1ed1t nh\\u1ea5t. M\\u1ed9t trong s\\u1ed1 nh\\u1eefng c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 t\\u1eeb 5 tr\\u0103m \\u0111\\u1ebfn 1 tri\\u1ec7u ph\\u1ea3i k\\u1ec3 \\u0111\\u1ebfn nh\\u01b0: Vnb V200, Lining High Carbon 1200, Kumpoo K520 Pro, Vnb V88, Yonex Astrox 01 Clear, V\\u1ee3t c\\u1ea7u l\\u00f4ng Apacs Power Concept 928, V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining Tectonic 1...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>V\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1eeb 1 tri\\u1ec7u - 2 tri\\u1ec7u<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ph\\u00e2n kh\\u00fac t\\u1eeb 1 tri\\u1ec7u \\u0111\\u1ebfn 2 tri\\u1ec7u l\\u00e0 ph\\u00e2n kh\\u00fac trung b\\u00ecnh v\\u00e0 \\u0111a ph\\u1ea7n \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi ch\\u01a1i l\\u1ef1a ch\\u1ecdn. Nh\\u1eefng c\\u00e2y v\\u1ee3t gi\\u00e1 t\\u1eeb 1 tri\\u1ec7u - 2 tri\\u1ec7u c\\u0169ng \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c trang b\\u1ecb nh\\u1eefng c\\u00f4ng ngh\\u1ec7 ti\\u00ean ti\\u1ebfn \\u0111\\u1ec3 t\\u1ed1i \\u01b0u cho ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, m\\u1ee9c gi\\u00e1 n\\u00e0y l\\u00e0 m\\u1ee9c gi\\u00e1 h\\u1ee3p l\\u00fd \\u0111\\u1ec3 \\u0111\\u1ea1i \\u0111a s\\u1ed1 ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 th\\u1ec3 b\\u1ecf ra v\\u00e0 l\\u1ef1a ch\\u1ecdn cho m\\u00ecnh m\\u1ed9t c\\u00e2y v\\u1ee3t \\u01b0ng \\u00fd nh\\u1ea5t. \\u1ede t\\u1ea7m gi\\u00e1 n\\u00e0y, b\\u1ea1n c\\u0169ng \\u0111\\u00e3 c\\u00f3 th\\u1ec3 l\\u1ef1a ch\\u1ecdn nh\\u1eefng c\\u00e2y v\\u1ee3t \\u0111\\u1ebfn t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng nh\\u01b0 Yonex, Lining, Mizuno..M\\u1ed9t s\\u1ed1 c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 t\\u1eeb 1 \\u0111\\u1ebfn 2 tri\\u1ec7u n\\u1ed5i b\\u1eadc nh\\u01b0:\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex gi\\u00e1 t\\u1eeb 1 \\u0111\\u1ebfn 2 tri\\u1ec7u: V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 88S Play Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 99 Play - Tr\\u1eafng Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 88D Game Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Yonex Astrox 10 DG (NV\\/TQ) Ch\\u00ednh H\\u00e3ng..<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining gi\\u00e1 t\\u1eeb 1 \\u0111\\u1ebfn 2 tri\\u1ec7u: V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Windstorm 74, V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Tectonic 3 Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Aeronaut 6000, V\\u1ee3t C\\u1ea7u L\\u00f4ng Lining Aeronaut 6000 Power,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">- V\\u1ee3t c\\u1ea7u l\\u00f4ng Lining gi\\u00e1 t\\u1eeb 1 \\u0111\\u1ebfn 2 tri\\u1ec7u: V\\u1ee3t C\\u1ea7u L\\u00f4ng Victor Arrowspeed 30 Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Victor JS700 Ch\\u00ednh H\\u00e3ng, V\\u1ee3t C\\u1ea7u L\\u00f4ng Victor DX 09 Ch\\u00ednh H\\u00e3ng...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>V\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1eeb 2 - 3 tri\\u1ec7u\\u00a0<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u1ede m\\u1ee9c gi\\u00e1 t\\u1eeb 2 \\u0111\\u1ebfn 3 tri\\u1ec7u, s\\u1ebd l\\u00e0 nh\\u1eefng c\\u00e2y v\\u1ee3t thu\\u1ed9c d\\u00f2ng cao c\\u1ea5p t\\u1eeb c\\u00e1c h\\u00e3ng l\\u1edbn. Nh\\u1eefng c\\u00e2y v\\u1ee3t \\u1edf ph\\u00e2n kh\\u00fac n\\u00e0y s\\u1ebd \\u0111\\u01b0\\u1ee3c trang b\\u1ecb nh\\u1eefng c\\u00f4ng ngh\\u1ec7 m\\u1edbi nh\\u1ea5t hi\\u1ec7n t\\u1ea1i, c\\u00f9ng v\\u1edbi nh\\u1eefng v\\u1eadt li\\u1ec7u v\\u00e0 thi\\u1ebft k\\u1ebf ti\\u00ean ti\\u1ebfn nh\\u1ea5t.\\u00a0 Nh\\u1eefng c\\u00e2y v\\u1ee3t thu\\u1ed9c ph\\u00e2n kh\\u00fac cao c\\u1ea5p n\\u00e0y s\\u1ebd cho ng\\u01b0\\u1eddi ch\\u01a1i nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t s\\u1ed1 v\\u1ee3t c\\u1ea7u l\\u00f4ng gi\\u00e1 t\\u1eeb 2 \\u0111\\u1ebfn 3 tri\\u1ec7u n\\u1ed9i b\\u1eadc: Yonex Astrox 77 \\u0110\\u1ecf Shine Red, Lining Calibar 600, Yonex NanoFlare 600, Yonex Astrox 100 Tour, Lining Tectonic 7.,,,<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>7. H\\u01b0\\u1edbng d\\u1eabn ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i\\u00a0- X\\u00e1c \\u0111\\u1ecbnh m\\u1ee5c \\u0111\\u00edch s\\u1eed d\\u1ee5ng<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u0110\\u1ea7u ti\\u00ean tr\\u01b0\\u1edbc khi quy\\u1ebft \\u0111\\u1ecbnh ch\\u1ecdn mua v\\u1ee3t c\\u1ea7u l\\u00f4ng th\\u00ec b\\u1ea1n ph\\u1ea3i x\\u00e1c \\u0111\\u1ecbnh m\\u1ee5c \\u0111\\u00edch mua v\\u1ee3t c\\u1ea7u l\\u00f4ng \\u0111\\u1ec3\\u00a0l\\u00e0m g\\u00ec nh\\u01b0 mua v\\u1ee3t c\\u1ea7u l\\u00f4ng thi \\u0111\\u1ea5u, v\\u1ee3t c\\u1ea7u l\\u00f4ng luy\\u1ec7n t\\u1eadp\\u00a0hay \\u0111\\u1ec3 ph\\u1ee5c v\\u1ee5 cho c\\u00f4ng t\\u00e1c \\u0111\\u00e0o t\\u1ea1o, t\\u00f9y v\\u00e0o t\\u1eebng m\\u1ee5c \\u0111\\u00edch m\\u00e0 ta s\\u1ebd bi\\u1ebft c\\u00e1ch ch\\u1ecdn mua v\\u1ee3t c\\u1ea7u l\\u00f4ng\\u00a0n\\u00e0o ph\\u00f9 h\\u1ee3p.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Gi\\u1ea3 d\\u1ee5 nh\\u01b0 b\\u1ea1n mu\\u1ed1n mua v\\u1ee3t c\\u1ea7u l\\u00f4ng \\u0111\\u1ec3 thi \\u0111\\u1ea5u th\\u00ec\\u00a0ch\\u1eafc ch\\u1eafn b\\u1ea1n\\u00a0c\\u1ea7n l\\u1ef1a ch\\u1ecdn s\\u1ea3n ph\\u1ea9m c\\u00f3 ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t \\u0111\\u1ebfn t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u v\\u1ee3t c\\u1ea7u l\\u00f4ng n\\u1ed5i ti\\u1ebfng \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi d\\u00f9ng, c\\u00f3 th\\u00f4ng s\\u1ed1 k\\u1ef9 thu\\u1eadt ch\\u00ednh x\\u00e1c,.... B\\u1ea1n c\\u1ea7n mua nh\\u1eefng lo\\u1ea1i nh\\u01b0: v\\u1ee3t Yonex ch\\u00ednh h\\u00e3ng, v\\u1ee3t c\\u1ea7u l\\u00f4ng Lining, v\\u1ee3t c\\u1ea7u l\\u00f4ng Victor,... B\\u00ean c\\u1ea1nh vi\\u1ec7c x\\u00e1c \\u0111\\u1ecbnh v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1ed1t ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u00ecnh, b\\u1ea1n c\\u1ea7n ph\\u1ea3i suy ngh\\u0129 xem\\u00a0n\\u00ean ch\\u1ecdn mua v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u1ee7a h\\u00e3ng n\\u00e0o?\\u00a0Ch\\u1ecdn t\\u00ecm ra\\u00a0<a href=\\\"http:\\/\\/shopvnb.com\\/\\\">shop c\\u1ea7u l\\u00f4ng uy t\\u00edn<\\/a>\\u00a0hi\\u1ec7n nay \\u0111\\u1ec3 mua v\\u1ee3t.<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\"><strong>8. Tr\\u00ecnh \\u0111\\u1ed9 v\\u00e0 l\\u1ed1i ch\\u01a1i c\\u1ea7u l\\u00f4ng -\\u00a0m\\u1edbi t\\u1eadp ch\\u01a1i c\\u1ea7u l\\u00f4ng n\\u00ean ch\\u1ecdn v\\u1ee3t n\\u00e0o?<\\/strong><\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">M\\u1ed9t y\\u1ebfu t\\u1ed1 ti\\u1ebfp theo m\\u00e0 ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i c\\u1ea7u l\\u00f4ng c\\u1ea7n l\\u01b0u \\u00fd l\\u00e0 tr\\u00ecnh \\u0111\\u1ed9 v\\u00e0 l\\u1ed1i ch\\u01a1i c\\u1ea7u l\\u00f4ng. B\\u1edfi v\\u00ec t\\u1ea5t c\\u1ea3 c\\u00e1c lo\\u1ea1i v\\u1ee3t c\\u1ea7u l\\u00f4ng kh\\u00f4ng ph\\u1ea3i c\\u00e1i n\\u00e0o c\\u0169ng c\\u00f3 thi\\u1ebft k\\u1ebf, \\u0111\\u1eb7c \\u0111i\\u1ec3m v\\u00e0 c\\u00f4ng d\\u1ee5ng gi\\u1ed1ng nhau\\u00a0m\\u00e0 n\\u00f3 s\\u1ebd c\\u00f3 nh\\u1eefng \\u0111i\\u1ec3m ri\\u00eang v\\u1ec1 thi\\u1ebft k\\u1ebf \\u0111\\u1ec3 ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u1ed7i tr\\u00ecnh \\u0111\\u1ed9 v\\u00e0 m\\u1ed7i l\\u1ed1i ch\\u01a1i kh\\u00e1c nhau, t\\u00f9y v\\u00e0o t\\u1eebng ng\\u01b0\\u1eddi.\\u00a0T\\u1ea5t nhi\\u00ean nh\\u1eefng thi\\u1ebft k\\u1ebf v\\u00e0 \\u0111\\u1eb7c \\u0111i\\u1ec3m\\u00a0\\u0111\\u00f3 v\\u1eabn ph\\u1ea3i n\\u1eb1m trong ph\\u1ea1m vi ti\\u00eau chu\\u1ea9n nh\\u1ea5t \\u0111\\u1ecbnh\\u00a0\\u0111\\u01b0\\u1ee3c lu\\u1eadt c\\u1ea7u l\\u00f4ng quy \\u0111\\u1ecbnh.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">N\\u1ebfu b\\u1ea1n m\\u1edbi bi\\u1ebft ch\\u01a1i c\\u1ea7u l\\u00f4ng v\\u00e0\\u00a0\\u0111ang t\\u1eadp l\\u00e0m quen v\\u1edbi nh\\u1eefng k\\u1ef9 thu\\u1eadt \\u0111\\u00e1nh c\\u1ea7u l\\u00f4ng c\\u01a1 b\\u1ea3n v\\u00e0 c\\u00e1c l\\u1ed1i ch\\u01a1i v\\u1eabn ch\\u01b0a x\\u00e1c \\u0111\\u1ecbnh\\u00a0th\\u00ec b\\u1ea1n ch\\u1ec9 c\\u1ea7n c\\u00e2y v\\u1ee3t c\\u00f3 \\u0111\\u1ed9 n\\u1eb7ng v\\u1eeba ph\\u1ea3i, th\\u00e2n d\\u1ebbo, tr\\u1ee3 l\\u1ef1c t\\u1ed1t t\\u1ea7m\\u00a04U ho\\u1eb7c\\u00a05U l\\u00e0 chu\\u1ea9n nh\\u1ea5t.<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><img src=\\\"https:\\/\\/cdn2.shopvnb.com\\/uploads\\/images\\/tin_tuc\\/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-1.webp\\\" alt=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex Nanoray Light 11i ch\\u00ednh h\\u00e3ng\\\" \\/><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<a title=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex Nanoray Light 11i ch\\u00ednh h\\u00e3ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/vot-cau-long-yonex-nanoray-11i.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex Nanoray Light 11i ch\\u00ednh h\\u00e3ng<\\/a><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><img src=\\\"https:\\/\\/cdn2.shopvnb.com\\/uploads\\/images\\/tin_tuc\\/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-2.webp\\\" alt=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare Drive ch\\u00ednh h\\u00e3ng\\\" \\/><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><a title=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare Drive ch\\u00ednh h\\u00e3ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/vot-cau-long-yonex-nanoflare-drive.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare Drive ch\\u00ednh h\\u00e3ng<\\/a><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Nh\\u01b0ng n\\u1ebfu ch\\u01a1i \\u0111\\u01b0\\u1ee3c m\\u1ed9t th\\u1eddi gian v\\u00e0 n\\u1eafm \\u0111\\u01b0\\u1ee3c h\\u1ebft nh\\u1eefng l\\u1ed1i ch\\u01a1i, t\\u1eeb \\u0111\\u00f3 s\\u1ebd h\\u00ecnh th\\u00e0nh l\\u1ed1i ch\\u01a1i ri\\u00eang cho m\\u00ecnh,\\u00a0th\\u00ec l\\u00fac \\u0111\\u00f3 l\\u1ea1i c\\u1ea7n ch\\u1ecdn v\\u1ee3t ph\\u00f9 h\\u1ee3p v\\u1edbi l\\u1ed1i\\u00a0ch\\u01a1i \\u0111\\u00f3. Gi\\u1ea3 d\\u1ee5\\u00a0n\\u1ebfu b\\u1ea1n thi\\u00ean v\\u1ec1 ch\\u01a1i t\\u1ea5n c\\u00f4ng\\u00a0th\\u00ec n\\u00ean ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1ea5n c\\u00f4ng, c\\u00f3 \\u0111\\u1eb7c \\u0111i\\u1ec3m th\\u00e2n\\u00a0c\\u1ee9ng, n\\u1eb7ng \\u0111\\u1ea7u. C\\u00e1c lo\\u1ea1i v\\u1ee3t c\\u1ea7u l\\u00f4ng chuy\\u00ean t\\u1ea5n c\\u00f4ng \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi tin d\\u00f9ng nh\\u01b0:\\u00a0V\\u1ee3t c\\u1ea7u l\\u00f4ng chuy\\u00ean\\u00a0c\\u00f4ng Yonex Astrox 99,\\u00a0Yonex Voltric Z Force II,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><strong>G\\u1ee3i \\u00fd cho b\\u1ea1n:\\u00a0<\\/strong><a title=\\\"Top 10 v\\u1ee3t c\\u1ea7u l\\u00f4ng thi\\u00ean c\\u00f4ng \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng nh\\u1ea5t\\\" href=\\\"https:\\/\\/shopvnb.com\\/top-10-vot-cau-long-thien-cong-duoc-ua-chuong-nhat-\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Top 10 v\\u1ee3t c\\u1ea7u l\\u00f4ng thi\\u00ean c\\u00f4ng \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng nh\\u1ea5t<\\/a><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">N\\u1ebfu b\\u1ea1n thi\\u00ean v\\u1ec1 l\\u1ed1i ch\\u01a1i ph\\u00f2ng th\\u1ee7, th\\u00ec b\\u1ea1n c\\u1ea7n ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u00e2n b\\u1eb1ng,\\u00a0linh ho\\u1ea1t, x\\u1eed l\\u00ed \\u0111\\u01b0\\u1ee3c h\\u1ea7u h\\u1ebft c\\u00e1c qu\\u1ea3 t\\u1ea5n c\\u00f4ng c\\u1ee7a \\u0111\\u1ed1i th\\u1ee7. C\\u00e1c lo\\u1ea1i v\\u1ee3t c\\u1ea7u l\\u00f4ng ph\\u00f2ng\\u00a0th\\u1ee7 \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi d\\u00f9ng nh\\u01b0:\\u00a0<a title=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex Arcsaber 11 2017 ch\\u00ednh h\\u00e3ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/vot-cau-long-yonex-arcsaber-11-2017.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Yonex Arcsaber 11<\\/a>,\\u00a0<a title=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare 700 - Xanh ch\\u00ednh h\\u00e3ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/vot-cau-long-yonex-nanoflare-700-xanh.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare 700<\\/a>,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\"><img src=\\\"https:\\/\\/cdn2.shopvnb.com\\/uploads\\/images\\/tin_tuc\\/huong-dan-cach-chon-vot-cau-long-cho-nguoi-moi-choi-3.webp\\\" alt=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng Yonex NanoFlare 700 Xanh ch\\u00ednh h\\u00e3ng\\\" \\/><\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Ngo\\u00e0i ra, n\\u1ebfu l\\u00e0 mu\\u1ed1n ch\\u1ecdn m\\u1ed9t c\\u00e2y v\\u1ee3t c\\u1ea7u l\\u00f4ng c\\u00f4ng th\\u1ee7 to\\u00e0n di\\u1ec7n th\\u00ec c\\u00f3 c\\u00e1c lo\\u1ea1i nh\\u01b0:\\u00a0Yonex NanoFlare 800,\\u00a0Yonex Duora 10,...<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">Mua\\u00a0<a title=\\\"V\\u1ee3t c\\u1ea7u l\\u00f4ng ch\\u00ednh h\\u00e3ng ch\\u1ea5t l\\u01b0\\u1ee3ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/vot-cau-long.html\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">v\\u1ee3t c\\u1ea7u l\\u00f4ng ch\\u00ednh h\\u00e3ng<\\/a>\\u00a0t\\u1ea1i \\u0111\\u00e2y!<\\/span><\\/p>\\r\\n<h2><span style=\\\"font-size: 14pt;\\\">\\u00a0<\\/span><\\/h2>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">V\\u1eady l\\u00e0\\u00a0<a href=\\\"http:\\/\\/shopvnb.com\\/\\\">ShopTrkibadmin<\\/a>\\u00a0v\\u00e0 chia s\\u1ebb v\\u00e0 t\\u01b0 v\\u1ea5n c\\u00e1ch ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng cho ng\\u01b0\\u1eddi m\\u1edbi ch\\u01a1i cho b\\u1ea1n, hy v\\u1ecdng nh\\u1eefng th\\u00f4ng tin tr\\u00ean s\\u1ebd gi\\u00fap b\\u1ea1n c\\u00f3 th\\u00eam nhi\\u1ec1u g\\u1ee3i \\u00fd \\u0111\\u1ec3 ch\\u1ecdn v\\u1ee3t c\\u1ea7u l\\u00f4ng t\\u1ed1t nh\\u1ea5t ph\\u00f9 h\\u1ee3p cho m\\u00ecnh nh\\u00e9!<\\/span><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2023-11-15 07:28:52\",\"created_by\":\"67\",\"created_by_alias\":\"\",\"modified\":\"2023-11-15 07:28:52\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-11-15 07:28:52\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);
INSERT INTO `satnu_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(4, 4, 1, '', '2023-11-15 08:51:13', 67, 3388, 'aef5e1e569c5b08fcb3ea49ba1ec8dd4759bec08', '{\"id\":4,\"asset_id\":63,\"title\":\"Li\\u00ean h\\u1ec7\",\"alias\":\"lien-h\",\"introtext\":\"<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>H\\u1ec7 th\\u1ed1ng c\\u1eeda h\\u00e0ng:\\u00a0<\\/b><a title=\\\"H\\u1ec7 th\\u1ed1ng c\\u1eeda h\\u00e0ng\\\" href=\\\"https:\\/\\/shopvnb.com\\/he-thong-cua-hang\\\">1 shop Premium 59 c\\u1eeda h\\u00e0ng\\u00a0<\\/a>tr\\u00ean to\\u00e0n qu\\u1ed1c<\\/span>\\r\\n<p><a href=\\\"https:\\/\\/shopvnb.com\\/he-thong-cua-hang\\\">Xem t\\u1ea5t c\\u1ea3 c\\u00e1c c\\u1eeda h\\u00e0ng\\u00a0T<\\/a>rkibadmin<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>Hotline:\\u00a0<\\/b><a title=\\\"0355063692 | 0785277320\\\" href=\\\"tel:0355063692 | 0785277320\\\">0355063692 | 0785277320<\\/a><\\/span><\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>Email:\\u00a0<\\/b><a title=\\\"info@shopvnb.com\\\" href=\\\"mailto:info@shopvnb.com\\\">info@shopTrkibadmin.com<\\/a><\\/span><\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>H\\u1ee3p t\\u00e1c kinh doanh:\\u00a0<\\/b><a href=\\\"tel:0947342259\\\">0947342259 (Ms. Th\\u1ea3o)<\\/a><\\/span><\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>Hotline b\\u00e1n s\\u1ec9:\\u00a0<\\/b><a href=\\\"tel:0911105211\\\">0911 105 211<\\/a><\\/span><\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>Nh\\u01b0\\u1ee3ng quy\\u1ec1n th\\u01b0\\u01a1ng hi\\u1ec7u:\\u00a0<\\/b><a href=\\\"tel:0334.741.141\\\">0334.741.141 (Mr. H\\u1eadu)<\\/a><\\/span><\\/div>\\r\\n<div class=\\\"content-contact clearfix\\\"><span class=\\\"list_footer\\\"><b>Than phi\\u1ec1n d\\u1ecbch v\\u1ee5:\\u00a0<\\/b><a href=\\\"tel:0334.741.141\\\">0334.741.141 (Mr. H\\u1eadu)<\\/a><\\/span><\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2023-11-15 08:51:13\",\"created_by\":\"67\",\"created_by_alias\":\"\",\"modified\":\"2023-11-15 08:51:13\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-11-15 08:51:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(5, 5, 1, '', '2023-11-20 13:20:34', 67, 1786, '2de607e3deb1436894b308c7a664d5f853103146', '{\"id\":5,\"asset_id\":64,\"title\":\"h\\u01b0\\u1edbng d\\u1eabn\",\"alias\":\"hu-ng-d-n\",\"introtext\":\"<p>acsfweefwc<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2023-11-20 13:20:34\",\"created_by\":\"67\",\"created_by_alias\":\"\",\"modified\":\"2023-11-20 13:20:34\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2023-11-20 13:20:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_updates`
--

CREATE TABLE `satnu_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `satnu_updates`
--

INSERT INTO `satnu_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(155, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(156, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(157, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.27.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(158, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(159, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(160, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(161, 2, 0, 'Bengali, Bangladesh', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(162, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(163, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(164, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(165, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.10.6.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(166, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(167, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(168, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(169, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.10.10.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(170, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(171, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(172, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(173, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(174, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(175, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(176, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(177, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(178, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(179, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(180, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(181, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(182, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(183, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(184, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(185, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(186, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(187, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(188, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(189, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(190, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(191, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(192, 2, 0, 'Hindi, India', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(193, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(194, 2, 0, 'Indonesian, Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(195, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(196, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(197, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(198, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', ''),
(199, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(200, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(201, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.9.25.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(202, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(203, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(204, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(205, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(206, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '3.10.12.2', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(207, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(208, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(209, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.10.10.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(210, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(211, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '3.9.29.2', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(212, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(213, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.10.9.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(214, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(215, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(216, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(217, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.10.5.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(218, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(219, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.10.10.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(220, 2, 0, 'Spanish, Colombia', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(221, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(222, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(223, 2, 0, 'Syriac, East', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(224, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '3.10.11.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(225, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(226, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(227, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(228, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.10.2.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(229, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(230, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(231, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.10.12.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_update_sites`
--

CREATE TABLE `satnu_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `satnu_update_sites`
--

INSERT INTO `satnu_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1700481246, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1700481274, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1700481274, '');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_update_sites_extensions`
--

CREATE TABLE `satnu_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `satnu_update_sites_extensions`
--

INSERT INTO `satnu_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_usergroups`
--

CREATE TABLE `satnu_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_usergroups`
--

INSERT INTO `satnu_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_users`
--

CREATE TABLE `satnu_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_users`
--

INSERT INTO `satnu_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(67, 'Super User', 'admin', 'tk2234543@gmail.com', '$2y$10$LRme5MNChKi0vGwKjF615edxRAqAlntVpnUSB4n2KoSLrOdrxZSYi', 0, 1, '2023-11-08 08:12:24', '2023-11-20 13:18:28', '0', '', '0000-00-00 00:00:00', 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `satnu_user_keys`
--

CREATE TABLE `satnu_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_user_notes`
--

CREATE TABLE `satnu_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `satnu_user_profiles`
--

CREATE TABLE `satnu_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `satnu_user_usergroup_map`
--

CREATE TABLE `satnu_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_user_usergroup_map`
--

INSERT INTO `satnu_user_usergroup_map` (`user_id`, `group_id`) VALUES
(67, 8);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_utf8_conversion`
--

CREATE TABLE `satnu_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_utf8_conversion`
--

INSERT INTO `satnu_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `satnu_viewlevels`
--

CREATE TABLE `satnu_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satnu_viewlevels`
--

INSERT INTO `satnu_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `satnu_action_logs`
--
ALTER TABLE `satnu_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `satnu_action_logs_extensions`
--
ALTER TABLE `satnu_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satnu_action_logs_users`
--
ALTER TABLE `satnu_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `satnu_action_log_config`
--
ALTER TABLE `satnu_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satnu_assets`
--
ALTER TABLE `satnu_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `satnu_associations`
--
ALTER TABLE `satnu_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `satnu_banners`
--
ALTER TABLE `satnu_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_banner_clients`
--
ALTER TABLE `satnu_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `satnu_banner_tracks`
--
ALTER TABLE `satnu_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `satnu_categories`
--
ALTER TABLE `satnu_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_contact_details`
--
ALTER TABLE `satnu_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `satnu_content`
--
ALTER TABLE `satnu_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `satnu_contentitem_tag_map`
--
ALTER TABLE `satnu_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `satnu_content_frontpage`
--
ALTER TABLE `satnu_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `satnu_content_rating`
--
ALTER TABLE `satnu_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `satnu_content_types`
--
ALTER TABLE `satnu_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `satnu_extensions`
--
ALTER TABLE `satnu_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `satnu_fields`
--
ALTER TABLE `satnu_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_fields_categories`
--
ALTER TABLE `satnu_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `satnu_fields_groups`
--
ALTER TABLE `satnu_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_fields_values`
--
ALTER TABLE `satnu_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `satnu_finder_filters`
--
ALTER TABLE `satnu_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `satnu_finder_links`
--
ALTER TABLE `satnu_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `satnu_finder_links_terms0`
--
ALTER TABLE `satnu_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms1`
--
ALTER TABLE `satnu_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms2`
--
ALTER TABLE `satnu_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms3`
--
ALTER TABLE `satnu_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms4`
--
ALTER TABLE `satnu_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms5`
--
ALTER TABLE `satnu_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms6`
--
ALTER TABLE `satnu_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms7`
--
ALTER TABLE `satnu_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms8`
--
ALTER TABLE `satnu_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_terms9`
--
ALTER TABLE `satnu_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termsa`
--
ALTER TABLE `satnu_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termsb`
--
ALTER TABLE `satnu_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termsc`
--
ALTER TABLE `satnu_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termsd`
--
ALTER TABLE `satnu_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termse`
--
ALTER TABLE `satnu_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_links_termsf`
--
ALTER TABLE `satnu_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `satnu_finder_taxonomy`
--
ALTER TABLE `satnu_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `satnu_finder_taxonomy_map`
--
ALTER TABLE `satnu_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `satnu_finder_terms`
--
ALTER TABLE `satnu_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `satnu_finder_terms_common`
--
ALTER TABLE `satnu_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `satnu_finder_tokens`
--
ALTER TABLE `satnu_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `satnu_finder_tokens_aggregate`
--
ALTER TABLE `satnu_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `satnu_finder_types`
--
ALTER TABLE `satnu_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `satnu_languages`
--
ALTER TABLE `satnu_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `satnu_menu`
--
ALTER TABLE `satnu_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_menu_types`
--
ALTER TABLE `satnu_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `satnu_messages`
--
ALTER TABLE `satnu_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `satnu_messages_cfg`
--
ALTER TABLE `satnu_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `satnu_modules`
--
ALTER TABLE `satnu_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_modules_menu`
--
ALTER TABLE `satnu_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `satnu_newsfeeds`
--
ALTER TABLE `satnu_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `satnu_overrider`
--
ALTER TABLE `satnu_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satnu_postinstall_messages`
--
ALTER TABLE `satnu_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `satnu_privacy_consents`
--
ALTER TABLE `satnu_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `satnu_privacy_requests`
--
ALTER TABLE `satnu_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satnu_redirect_links`
--
ALTER TABLE `satnu_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `satnu_schemas`
--
ALTER TABLE `satnu_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `satnu_session`
--
ALTER TABLE `satnu_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `satnu_tags`
--
ALTER TABLE `satnu_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `satnu_template_styles`
--
ALTER TABLE `satnu_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `satnu_ucm_base`
--
ALTER TABLE `satnu_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `satnu_ucm_content`
--
ALTER TABLE `satnu_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `satnu_ucm_history`
--
ALTER TABLE `satnu_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `satnu_updates`
--
ALTER TABLE `satnu_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `satnu_update_sites`
--
ALTER TABLE `satnu_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `satnu_update_sites_extensions`
--
ALTER TABLE `satnu_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `satnu_usergroups`
--
ALTER TABLE `satnu_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `satnu_users`
--
ALTER TABLE `satnu_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `satnu_user_keys`
--
ALTER TABLE `satnu_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `satnu_user_notes`
--
ALTER TABLE `satnu_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `satnu_user_profiles`
--
ALTER TABLE `satnu_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `satnu_user_usergroup_map`
--
ALTER TABLE `satnu_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `satnu_viewlevels`
--
ALTER TABLE `satnu_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `satnu_action_logs`
--
ALTER TABLE `satnu_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `satnu_action_logs_extensions`
--
ALTER TABLE `satnu_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `satnu_action_log_config`
--
ALTER TABLE `satnu_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `satnu_assets`
--
ALTER TABLE `satnu_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `satnu_banners`
--
ALTER TABLE `satnu_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_banner_clients`
--
ALTER TABLE `satnu_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_categories`
--
ALTER TABLE `satnu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `satnu_contact_details`
--
ALTER TABLE `satnu_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_content`
--
ALTER TABLE `satnu_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satnu_content_types`
--
ALTER TABLE `satnu_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `satnu_extensions`
--
ALTER TABLE `satnu_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `satnu_fields`
--
ALTER TABLE `satnu_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_fields_groups`
--
ALTER TABLE `satnu_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_finder_filters`
--
ALTER TABLE `satnu_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_finder_links`
--
ALTER TABLE `satnu_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_finder_taxonomy`
--
ALTER TABLE `satnu_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satnu_finder_terms`
--
ALTER TABLE `satnu_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_finder_types`
--
ALTER TABLE `satnu_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_languages`
--
ALTER TABLE `satnu_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satnu_menu`
--
ALTER TABLE `satnu_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `satnu_menu_types`
--
ALTER TABLE `satnu_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satnu_messages`
--
ALTER TABLE `satnu_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_modules`
--
ALTER TABLE `satnu_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `satnu_newsfeeds`
--
ALTER TABLE `satnu_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_overrider`
--
ALTER TABLE `satnu_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `satnu_postinstall_messages`
--
ALTER TABLE `satnu_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `satnu_privacy_consents`
--
ALTER TABLE `satnu_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_privacy_requests`
--
ALTER TABLE `satnu_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_redirect_links`
--
ALTER TABLE `satnu_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_tags`
--
ALTER TABLE `satnu_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satnu_template_styles`
--
ALTER TABLE `satnu_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `satnu_ucm_content`
--
ALTER TABLE `satnu_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_ucm_history`
--
ALTER TABLE `satnu_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satnu_updates`
--
ALTER TABLE `satnu_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `satnu_update_sites`
--
ALTER TABLE `satnu_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `satnu_usergroups`
--
ALTER TABLE `satnu_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `satnu_users`
--
ALTER TABLE `satnu_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `satnu_user_keys`
--
ALTER TABLE `satnu_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_user_notes`
--
ALTER TABLE `satnu_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satnu_viewlevels`
--
ALTER TABLE `satnu_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
