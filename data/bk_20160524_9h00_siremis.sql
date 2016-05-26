/*
Navicat MySQL Data Transfer

Source Server         : 123.30.236.113
Source Server Version : 50173
Source Host           : 123.30.236.113:3306
Source Database       : siremis

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-05-24 09:07:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acl_action`
-- ----------------------------
DROP TABLE IF EXISTS `acl_action`;
CREATE TABLE `acl_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL DEFAULT '',
  `resource` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_action
-- ----------------------------
INSERT INTO `acl_action` VALUES ('1', 'system', 'Site', 'Administer_General', 'General administration of the site');
INSERT INTO `acl_action` VALUES ('2', 'system', 'User', 'Administer_Users', 'Administration of users');
INSERT INTO `acl_action` VALUES ('3', 'system', 'User', 'Administer_User_ACL', 'Administration of user access control');
INSERT INTO `acl_action` VALUES ('4', 'system', 'Role', 'Administer_Roles', 'Administration of user roles');
INSERT INTO `acl_action` VALUES ('5', 'system', 'Group', 'Administer_Groups', 'Administration of user groups');
INSERT INTO `acl_action` VALUES ('6', 'system', 'Module', 'Administer_Modules', 'Administration includes view modules, load modules, activate/deactivate modules');
INSERT INTO `acl_action` VALUES ('7', 'menu', 'Menu', 'Administer_Menu', 'Can manage menu content for the application');
INSERT INTO `acl_action` VALUES ('8', 'cache', 'cache', 'access', 'view cache usage information');
INSERT INTO `acl_action` VALUES ('9', 'cache', 'cache', 'admin', 'manage and view cache usage information');
INSERT INTO `acl_action` VALUES ('10', 'contact', 'contact', 'access', 'access my contact');
INSERT INTO `acl_action` VALUES ('11', 'cronjob', 'cronjob', 'Administer_Cron', 'Manage cronjobs with crontab syntax');
INSERT INTO `acl_action` VALUES ('12', 'eventlog', 'EventLog', 'Access_EventLog', 'Access event logs');
INSERT INTO `acl_action` VALUES ('13', 'eventlog', 'EventLog', 'Administer_EventLog', 'Manage event logs');
INSERT INTO `acl_action` VALUES ('14', 'help', 'Help', 'Administer_Help', 'Can manage help content for the application');
INSERT INTO `acl_action` VALUES ('15', 'ser', 'SERAdmin', 'Administer_Modules', 'Can manage all SIP settings');
INSERT INTO `acl_action` VALUES ('16', 'sipuser', 'SIPUser', 'Administer_Modules', 'Can manage own SIP settings');
INSERT INTO `acl_action` VALUES ('17', 'theme', 'Theme', 'Administer_Theme', 'Can manage system theme package for the application');
INSERT INTO `acl_action` VALUES ('18', 'translation', 'Menu', 'Administer_Transation', 'Can manage user interface translation for the application');
INSERT INTO `acl_action` VALUES ('19', 'user', 'UserAccount', 'Edit_Own_Account', 'Can edit user own account data');

-- ----------------------------
-- Table structure for `acl_role_action`
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_action`;
CREATE TABLE `acl_role_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` varchar(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `action_id` (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_role_action
-- ----------------------------
INSERT INTO `acl_role_action` VALUES ('1', '1', '1', '1');
INSERT INTO `acl_role_action` VALUES ('2', '1', '2', '1');
INSERT INTO `acl_role_action` VALUES ('3', '1', '3', '1');
INSERT INTO `acl_role_action` VALUES ('4', '1', '4', '1');
INSERT INTO `acl_role_action` VALUES ('5', '1', '5', '1');
INSERT INTO `acl_role_action` VALUES ('6', '1', '6', '1');
INSERT INTO `acl_role_action` VALUES ('7', '1', '7', '1');
INSERT INTO `acl_role_action` VALUES ('8', '1', '8', '1');
INSERT INTO `acl_role_action` VALUES ('9', '1', '9', '1');
INSERT INTO `acl_role_action` VALUES ('10', '1', '10', '1');
INSERT INTO `acl_role_action` VALUES ('11', '1', '11', '1');
INSERT INTO `acl_role_action` VALUES ('12', '1', '12', '1');
INSERT INTO `acl_role_action` VALUES ('13', '1', '13', '1');
INSERT INTO `acl_role_action` VALUES ('14', '1', '14', '1');
INSERT INTO `acl_role_action` VALUES ('15', '1', '15', '1');
INSERT INTO `acl_role_action` VALUES ('16', '1', '16', '1');
INSERT INTO `acl_role_action` VALUES ('17', '1', '17', '1');
INSERT INTO `acl_role_action` VALUES ('18', '1', '18', '1');
INSERT INTO `acl_role_action` VALUES ('19', '1', '19', '1');
INSERT INTO `acl_role_action` VALUES ('20', '2', '15', '1');
INSERT INTO `acl_role_action` VALUES ('21', '2', '19', '1');
INSERT INTO `acl_role_action` VALUES ('22', '3', '16', '1');
INSERT INTO `acl_role_action` VALUES ('23', '3', '19', '1');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT '',
  `position` varchar(255) DEFAULT '',
  `fast_index` varchar(10) DEFAULT '',
  `photo` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `mobile` varchar(255) DEFAULT '',
  `fax` varchar(255) DEFAULT '',
  `zipcode` varchar(255) DEFAULT '',
  `province` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `street` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) DEFAULT '',
  `icq` varchar(255) DEFAULT '',
  `skype` varchar(255) DEFAULT '',
  `yahoo` varchar(255) DEFAULT '',
  `misc` text,
  `type_id` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `default` int(11) DEFAULT '0',
  `access` varchar(255) DEFAULT NULL,
  `params` text,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', 'Rocky', 'Swen', 'Rocky, Swen', 'Openbiz LLC', 'Management', 'CEO', 'J', '/files/upload/contact/20100524200309-RockySwen.jpg', '', '', '', '', 'CA', '', '', 'USA', '', '', '', '', '', '', null, '1', '50', '0', '1', '0', null, null, '1', '2010-05-24 08:00:01', '1', '2010-05-24 20:03:09');
INSERT INTO `contact` VALUES ('2', 'Jixian', 'Wang', 'Jixian, Wang', 'Openbiz LLC', 'Management', 'CTO', 'R', '/files/upload/contact/20100524200245-skype.jpg', '+86 10 6497 9191', '+86 139 1015 4220', '+86 10 6497 9191', '100101', 'Beijing', 'Beijing', 'Chaoyang Yayuncun', 'China', 'jixian2003@qq.com', 'http://www.czm.cn/', '315824246', '', 'jixianwang', '', 'Hosting Company CEO\r\n#1 fadsf\r\nadfasdf', '1', '50', '0', '1', '0', null, null, '1', '2010-05-24 08:41:57', '1', '2010-05-24 20:02:45');
INSERT INTO `contact` VALUES ('3', 'Wang', 'Ou', 'Wang, Ou', 'Openbiz LLC', 'Design Dept', 'Designer', 'W', '/files/upload/contact/20100524200233-WangOu.jpg', '+86 10 64979191', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '1', '50', '0', '1', '0', null, null, '1', '2010-05-24 08:43:41', '1', '2010-06-12 04:02:29');
INSERT INTO `contact` VALUES ('4', 'test', 'li', 'test, li', 'jixian llc', 'sdf', 'jixian', 't', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '1', '50', '0', '1', '0', null, null, '1', '2010-06-13 10:52:00', '1', '2010-06-13 10:52:00');

-- ----------------------------
-- Table structure for `contact_type`
-- ----------------------------
DROP TABLE IF EXISTS `contact_type`;
CREATE TABLE `contact_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_type
-- ----------------------------
INSERT INTO `contact_type` VALUES ('1', 'Business', 'Business Contacts', '45', '1', '1', '2010-05-23 01:09:06', '1', '2010-05-23 18:47:14');
INSERT INTO `contact_type` VALUES ('2', 'Family', 'Family Contacts', '45', '1', '1', '2010-05-23 01:23:04', '1', '2010-05-24 18:51:35');
INSERT INTO `contact_type` VALUES ('3', 'Provider', 'Business Provider Contacts', '50', '1', '1', '2010-05-23 01:34:12', '1', '2010-05-24 02:41:09');
INSERT INTO `contact_type` VALUES ('4', 'Client', 'Business Client Contacts', '45', '1', '1', '2010-05-23 01:34:39', '1', '2010-05-24 11:10:32');

-- ----------------------------
-- Table structure for `cronjob`
-- ----------------------------
DROP TABLE IF EXISTS `cronjob`;
CREATE TABLE `cronjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `minute` varchar(255) NOT NULL DEFAULT '',
  `hour` varchar(255) NOT NULL DEFAULT '',
  `day` varchar(255) NOT NULL DEFAULT '',
  `month` varchar(255) NOT NULL DEFAULT '',
  `weekday` varchar(255) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  `sendmail` varchar(255) DEFAULT '',
  `max_run` int(2) DEFAULT '1',
  `num_run` int(2) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `last_exec` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `minute` (`minute`),
  KEY `hour` (`hour`),
  KEY `weekday` (`day`),
  KEY `month` (`month`),
  KEY `week` (`weekday`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cronjob
-- ----------------------------

-- ----------------------------
-- Table structure for `event_log`
-- ----------------------------
DROP TABLE IF EXISTS `event_log`;
CREATE TABLE `event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ipaddr` varchar(16) NOT NULL,
  `event` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `UserID` (`user_id`,`ipaddr`,`event`),
  KEY `Message` (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_log
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `help`
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '10',
  `content` longtext,
  `create_by` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help
-- ----------------------------
INSERT INTO `help` VALUES ('1', '3', 'What is Module Management?', '<p>\n	Module Management screen allows administrator to manage modules in the application</p>\n', '10', '<p>\n	Action can be done on the module management screen.</p>\n<ul>\n	<li>\n		Edit button. This is to activate or deactivate a module</li>\n	<li>\n		Delete button. This is to delete a module. When a module is deleted, its ACL settings are deleted as well.</li>\n	<li>\n		Load button. This is to load new modules added in the modules directory. The loading processor will read mod.xml, and load module and it ACL info to the system.</li>\n</ul>\n', '1', '2010-05-01 13:01:58', '1', '2010-05-01 13:06:21');
INSERT INTO `help` VALUES ('2', '1', 'What is User Management ?', '<p>\n	User Manage screen allows administrator to manage application users</p>\n', '10', '<p>\n	Action can be done on the user management screen</p>\n<ul>\n	<li>\n		Add button to add a new user</li>\n	<li>\n		Edit button to edit a selected user</li>\n	<li>\n		Delete button to delete a selected user</li>\n</ul>\n', '1', '2010-02-07 16:07:21', '1', '2010-05-01 12:50:12');
INSERT INTO `help` VALUES ('3', '2', 'What is Role Management?', '<p>\n	Role Management screen allows administrator to manage roles in the application</p>\n', '10', '<p>\n	Actions can be done on the role management screen.</p>\n<ul>\n	<li>\n		Add button</li>\n	<li>\n		Edit button</li>\n	<li>\n		Delete button. If a role is deleted, its permissions will be deleted as well.</li>\n</ul>\n', '1', '2010-02-07 17:25:46', '1', '2010-05-01 12:58:06');
INSERT INTO `help` VALUES ('4', '6', 'How to ceate a help tip?', '<p>\r\n	You need to go to Manage Help tips module and click Add button to create a new help tips.</p>\r\n', '10', null, '1', '2010-04-24 04:18:35', '1', '2010-04-24 04:19:35');
INSERT INTO `help` VALUES ('5', '6', 'How to map a help category to system module?', '<p>\r\n	You can mapping a help category to a module&#39;s left help panel by specified URL match. then the module will only show help tips under this category.</p>\r\n', '10', null, '1', '2010-04-24 04:21:54', '1', '2010-04-24 04:21:54');
INSERT INTO `help` VALUES ('6', '3', 'How to reload a module?', '<p>\n	A module can be reloaded to update its change</p>\n', '10', '<p>\n	On the module management screen, click the module name to drilldown the module detail form. On this form, click Reload button to update the changes into the system</p>\n', '1', '2010-05-01 13:09:09', '1', '2010-05-01 13:09:09');
INSERT INTO `help` VALUES ('7', '4', 'What is Event Log?', '<p>\n	Event log screen is to list all events logged by the application</p>\n', '10', '<p>\n	On the Event Log screen, clicking on the comments link to see to event log detail.</p>\n<p>\n	Clicking on the Clear button, all log records will be deleted from the log table. Be careful of using it.</p>\n', '1', '2010-05-01 13:12:11', '1', '2010-05-01 13:15:33');
INSERT INTO `help` VALUES ('8', '5', 'How to manage email queue?', '<p>\n	Email Queue Management screen allows user to manage queued emails</p>\n', '10', '<p>\n	Action can be done on the email queue management screen.</p>\n<ul>\n	<li>\n		Send All button. This is to send all queued email immediately</li>\n	<li>\n		Send button. This is to send the selected email immediately</li>\n	<li>\n		Delete. This is to delete the selected email from the queue</li>\n	<li>\n		Delete Sent. This is to delete all sent emails from the queue</li>\n	<li>\n		Delete All. This is to empty the email queue</li>\n</ul>\n', '1', '2010-05-01 13:17:05', '1', '2010-05-01 16:18:48');
INSERT INTO `help` VALUES ('9', '5', 'How to manage email log?', '<p>\n	Email Log Management screen allows user to manage email activities</p>\n', '10', '<p>\n	Clicking the Clear button will empty the email log records.</p>\n', '1', '2010-05-01 13:18:11', '1', '2010-05-01 16:19:59');

-- ----------------------------
-- Table structure for `help_category`
-- ----------------------------
DROP TABLE IF EXISTS `help_category`;
CREATE TABLE `help_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `url_match` varchar(255) DEFAULT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '10',
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_category
-- ----------------------------
INSERT INTO `help_category` VALUES ('1', '7', 'User Management', '/system/user_list.*', '<p>\n	About how to manage users and system access.</p>\n', '10', '1', '2010-04-19 18:15:18', '1', '2010-04-22 01:37:29');
INSERT INTO `help_category` VALUES ('2', '7', 'Role Management', '/system/role_list.*', '<p>\n	About how to manage system role and permissions group.</p>\n', '20', '1', '2010-04-19 19:50:23', '1', '2010-04-21 08:10:48');
INSERT INTO `help_category` VALUES ('3', '7', 'Module Management', '/system/module_list.*', '<p>\n	About how to mount a module into system.</p>\n', '30', '1', '2010-04-21 03:35:11', '1', '2010-04-21 05:11:09');
INSERT INTO `help_category` VALUES ('4', '7', 'Event Log Management', '/system/event_log.*', '<p>About system event log/</p>\n', '40', '1', '2010-04-21 05:01:44', '1', '2010-04-21 08:09:53');
INSERT INTO `help_category` VALUES ('5', '7', 'Email Management', '/email/email_.*', '<p>\n	About how to manage system email function</p>\n', '50', '1', '2010-04-21 05:03:43', '1', '2010-05-01 13:19:08');
INSERT INTO `help_category` VALUES ('6', '7', 'Help Management', '/help/help_.*', '<p>\r\n	About how to manage the online help module of cubi system.</p>\r\n', '60', '1', '2010-04-21 05:09:50', '1', '2010-04-24 05:16:02');
INSERT INTO `help_category` VALUES ('7', '0', 'System Admin', null, '<p>\n	System help content.</p>\n', '10', '1', '2010-04-21 05:10:29', '1', '2010-04-21 05:11:54');

-- ----------------------------
-- Table structure for `help_category_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `help_category_mapping`;
CREATE TABLE `help_category_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of help_category_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `module` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `url_match` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `parent` varchar(255) DEFAULT '',
  `ordering` int(4) DEFAULT '10',
  `access` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `icon_css` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `create_by` int(10) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_by` int(10) DEFAULT '1',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('System', 'system', 'Administration', '/system/general_default', null, null, '', '1', '', '10', 'Site.Administer_General', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.User', 'system', 'Users', '', null, null, '', '1', 'System', '10', 'User.Administer_Users', 'spacer.gif', 'icon_user', 'System User Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.User.List', 'system', 'User Management', '/system/user_list', null, null, '', '1', 'System.User', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.User.Detail', 'system', 'User Detail', '/system/user_detail', null, null, '', '1', 'System.User.List', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Role', 'system', 'Roles', '', null, null, '', '1', 'System', '12', '', 'spacer.gif', 'icon_role', 'Role Management Module', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Role.List', 'system', 'Role Management', '/system/role_list', null, null, '', '1', 'System.Role', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Role.Detail', 'system', 'Role Detail', '/system/role_detail', null, null, '', '1', 'System.Role.List', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Module', 'system', 'Modules', '', null, null, '', '1', 'System', '14', '', 'spacer.gif', 'icon_module', 'Modules Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Modules.List', 'system', 'Module Management', '/system/module_list', null, null, '', '1', 'System.Module', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Modules.Detail', 'system', 'Module Detail', '/system/module_detail', null, null, '', '1', 'System.Modules.List', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Group', 'system', 'Groups', '', null, null, '', '1', 'System', '12', '', 'spacer.gif', 'icon_user', 'Group Management Module', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Group.List', 'system', 'Group Management', '/system/group_list', null, null, '', '1', 'System.Group', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Menu', 'menu', 'Menu', '', null, null, '', '1', 'System', '30', '', 'spacer.gif', 'icon_menu', 'System Menu Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Menu.List', 'menu', 'Manage Menu by List', '/menu/menu_list', null, null, '', '1', 'System.Menu', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Menu.Tree', 'menu', 'Manage Menu by Tree', '/menu/menu_tree', null, null, '', '1', 'System.Menu', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Cache', 'cache', 'Cache', '', null, null, '', '1', 'System', '50', '', 'spacer.gif', 'icon_cache', 'Cache Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('cache.manage', 'cache', 'Manage System Cache ', '/cache/manage', null, null, '', '1', 'Cache', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact', 'contact', 'Contacts', '', null, null, '', '1', 'Collaboration', '50', '', 'spacer.gif', 'icon_contact', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.NewProf', 'contact', 'New Contact Profile', '/contact/contact_new', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.GCard', 'contact', 'View General Card', '/contact/contact_general_card', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.DCard', 'contact', 'View Detailed Card', '/contact/contact_detail_card', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.PhoneBook', 'contact', 'View Phone Book', '/contact/contact_list', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.Company', 'contact', 'View Company', '/contact/company_list', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.ByType', 'contact', 'View By Contact Type', '/contact/contact_type_list', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('Contact.Type', 'contact', 'Contact Type Manage', '/contact/type_manage', null, null, '', '1', 'Contact', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Cronjob', 'cronjob', 'Cronjob', '', null, null, '', '1', 'System', '40', '', 'spacer.gif', 'icon_cronjob', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Cronjob.List', 'cronjob', 'Manage CronjobLog', '/cronjob/cronjob_list', null, null, '', '1', 'System.Cronjob', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.EventLog', 'eventlog', 'Event Log', '', null, null, '', '1', 'System', '60', '', 'spacer.gif', 'icon_eventlog', 'Event Log Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.EventLog.List', 'eventlog', 'Manage EventLog', '/eventlog/event_log_list', null, null, '', '1', 'System.EventLog', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Help', 'help', 'Help', '', null, null, '', '1', 'System', '50', '', 'spacer.gif', 'icon_help', 'Help Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Help.Cat', 'help', 'Manage Help Category', '/help/help_category', null, null, '', '1', 'System.Help', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Htlp.Tip', 'help', 'Manage Help Tips', '/help/help_list', null, null, '', '1', 'System.Help', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser', 'ser', 'SIP Admin Menu', '/ser/ser_default', null, null, '', '1', '', '25', 'SERAdmin.Administer_Modules', 'spacer.gif', '', 'SIP Admin Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs', 'ser', 'Subscriber Services', '', null, null, '', '1', 'System.Ser', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Subscriber.List', 'ser', 'Subscriber List', '{@home:url}/ser/subscriber_list', null, null, '', '1', 'System.Ser.Sbs', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Aliasdb.List', 'ser', 'Aliases DB List', '{@home:url}/ser/aliasdb_list', null, null, '', '1', 'System.Ser.Sbs', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Speeddial.List', 'ser', 'Speed Dial List', '{@home:url}/ser/speed_dial_list', null, null, '', '1', 'System.Ser.Sbs', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.UsrPreferences.List', 'ser', 'User Preferences', '{@home:url}/ser/usr_preferences_list', null, null, '', '1', 'System.Ser.Sbs', '50', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Uridb.List', 'ser', 'URI DB List', '{@home:url}/ser/uri_list', null, null, '', '1', 'System.Ser.Sbs', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Location.Management', 'ser', 'Location Management', '', null, null, '', '1', 'System.Ser.Sbs', '70', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Location.List', 'ser', 'Location List', '{@home:url}/ser/location_list', null, null, '', '1', 'System.Ser.Sbs.Location.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.LocationAttrs.List', 'ser', 'Location Attrs List', '{@home:url}/ser/location_attrs_list', null, null, '', '1', 'System.Ser.Sbs.Location.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Msilo.List', 'ser', 'Messages List', '{@home:url}/ser/silo_list', null, null, '', '1', 'System.Ser.Sbs', '80', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Userblacklist.Management', 'ser', 'Blacklist Management', '', null, null, '', '1', 'System.Ser.Sbs', '90', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Userblacklist.List', 'ser', 'User Black List', '{@home:url}/ser/userblacklist_list', null, null, '', '1', 'System.Ser.Sbs.Userblacklist.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Sbs.Globalblacklist.List', 'ser', 'Global Black List', '{@home:url}/ser/globalblacklist_list', null, null, '', '1', 'System.Ser.Sbs.Userblacklist.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv', 'ser', 'Server Services', '', null, null, '', '1', 'System.Ser', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Domain.Management', 'ser', 'Domain Management', '', null, null, '', '1', 'System.Ser.Srv', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Domain.List', 'ser', 'Domain List', '{@home:url}/ser/domain_list', null, null, '', '1', 'System.Ser.Srv.Domain.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.DomainAttrs.List', 'ser', 'Domain Attrs List', '{@home:url}/ser/domain_attrs_list', null, null, '', '1', 'System.Ser.Srv.Domain.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Htable.List', 'ser', 'HTable List', '{@home:url}/ser/htable_list', null, null, '', '1', 'System.Ser.Srv', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Dialplan.List', 'ser', 'Dialplan List', '{@home:url}/ser/dialplan_list', null, null, '', '1', 'System.Ser.Srv', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Dialog.Management', 'ser', 'Dialog Management', '', null, null, '', '1', 'System.Ser.Srv', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Dialog.List', 'ser', 'Dialog List', '{@home:url}/ser/dialog_list', null, null, '', '1', 'System.Ser.Srv.Dialog.Management', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.DialogVars.List', 'ser', 'Dialog Vars List', '{@home:url}/ser/dialog_vars_list', null, null, '', '1', 'System.Ser.Srv.Dialog.Management', '50', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.SipTrace.List', 'ser', 'SIP Trace List', '{@home:url}/ser/sip_trace_list', null, null, '', '1', 'System.Ser.Srv', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.UACReg.List', 'ser', 'UACReg List', '{@home:url}/ser/uacreg_list', null, null, '', '1', 'System.Ser.Srv', '70', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Mtrees.Management', 'ser', 'MTrees Management', '', null, null, '', '1', 'System.Ser.Srv', '80', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Mtrees.List', 'ser', 'MTrees List', '{@home:url}/ser/mtrees_list', null, null, '', '1', 'System.Ser.Srv.Mtrees.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Mtree.List', 'ser', 'MTree List', '{@home:url}/ser/mtree_list', null, null, '', '1', 'System.Ser.Srv.Mtrees.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl', 'ser', 'ACL Services', '', null, null, '', '1', 'System.Ser', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.Grp.Management', 'ser', 'Group Management', '', null, null, '', '1', 'System.Ser.Acl', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.Grp.List', 'ser', 'Group List', '{@home:url}/ser/grp_list', null, null, '', '1', 'System.Ser.Acl.Grp.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.ReGrp.List', 'ser', 'RegExp Group List', '{@home:url}/ser/re_grp_list', null, null, '', '1', 'System.Ser.Acl.Grp.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.Permissions.Management', 'ser', 'Permissions Management', '', null, null, '', '1', 'System.Ser.Acl', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.Address.List', 'ser', 'Permissions - Address', '{@home:url}/ser/address_list', null, null, '', '1', 'System.Ser.Acl.Permissions.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acl.Trusted.List', 'ser', 'Permissions - Trusted', '{@home:url}/ser/trusted_list', null, null, '', '1', 'System.Ser.Acl.Permissions.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg', 'ser', 'Routing Services', '', null, null, '', '1', 'System.Ser', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.Dispatcher.List', 'ser', 'Dispatcher List', '{@home:url}/ser/dispatcher_list', null, null, '', '1', 'System.Ser.Rtg', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.Pdt.List', 'ser', 'Pdt List', '{@home:url}/ser/pdt_list', null, null, '', '1', 'System.Ser.Rtg', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.Lcr.Management', 'ser', 'LCR Management', '', null, null, '', '1', 'System.Ser.Rtg', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.LcrGw.List', 'ser', 'LCR Gateway List', '{@home:url}/ser/lcr_gw_list', null, null, '', '1', 'System.Ser.Rtg.Lcr.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.LcrRule.List', 'ser', 'LCR Rule List', '{@home:url}/ser/lcr_rule_list', null, null, '', '1', 'System.Ser.Rtg.Lcr.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.LcrRuleTarget.List', 'ser', 'LCR Target List', '{@home:url}/ser/lcr_rule_target_list', null, null, '', '1', 'System.Ser.Rtg.Lcr.Management', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.CarrierRoute.Management', 'ser', 'CarrierRoute Management', '', null, null, '', '1', 'System.Ser.Rtg', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.CarrierRoute.List', 'ser', 'CR Route List', '{@home:url}/ser/carrierroute_list', null, null, '', '1', 'System.Ser.Rtg.CarrierRoute.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.CarrierFailureRoute.List', 'ser', 'CR Failure List', '{@home:url}/ser/carrierfailureroute_list', null, null, '', '1', 'System.Ser.Rtg.CarrierRoute.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.CarrierName.List', 'ser', 'CR Name List', '{@home:url}/ser/carrier_name_list', null, null, '', '1', 'System.Ser.Rtg.CarrierRoute.Management', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Rtg.CRDomainName.List', 'ser', 'CR Domain List', '{@home:url}/ser/domain_name_list', null, null, '', '1', 'System.Ser.Rtg.CarrierRoute.Management', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs', 'ser', 'Accounting Services', '', null, null, '', '1', 'System.Ser', '50', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.Acc.Management', 'ser', 'Accounting Management', '', null, null, '', '1', 'System.Ser.Acs', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.Accounting', 'ser', 'Accounting List', '{@home:url}/ser/acc_list', null, null, '', '1', 'System.Ser.Acs.Acc.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.MissedCalls', 'ser', 'Missed Calls List', '{@home:url}/ser/missed_calls_list', null, null, '', '1', 'System.Ser.Acs.Acc.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.Cdrs.Management', 'ser', 'CDR Management', '', null, null, '', '1', 'System.Ser.Acs', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.Cdrs', 'ser', 'CDR List', '{@home:url}/ser/cdrs_list', null, null, '', '1', 'System.Ser.Acs.Cdrs.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Acs.BillingRates', 'ser', 'Billing Rates List', '{@home:url}/ser/billing_rates_list', null, null, '', '1', 'System.Ser.Acs.Cdrs.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs', 'ser', 'Presence Services', '', null, null, '', '1', 'System.Ser', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Management', 'ser', 'Management List', '', null, null, '', '1', 'System.Ser.Prs', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.ActiveWatchers', 'ser', 'Active Watchers List', '{@home:url}/ser/active_watchers_list', null, null, '', '1', 'System.Ser.Prs.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Watchers', 'ser', 'Watchers List', '{@home:url}/ser/watchers_list', null, null, '', '1', 'System.Ser.Prs.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Presentity', 'ser', 'Presentity List', '{@home:url}/ser/presentity_list', null, null, '', '1', 'System.Ser.Prs.Management', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Pua', 'ser', 'PUA List', '{@home:url}/ser/pua_list', null, null, '', '1', 'System.Ser.Prs.Management', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Rls. Management', 'ser', 'RLS Management', '', null, null, '', '1', 'System.Ser.Prs', '50', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.RlsWatchers', 'ser', 'RLS Watchers List', '{@home:url}/ser/rls_watchers_list', null, null, '', '1', 'System.Ser.Prs.Rls. Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.RlsPresentity', 'ser', 'RLS Presentity List', '{@home:url}/ser/rls_presentity_list', null, null, '', '1', 'System.Ser.Prs.Rls. Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Xcap', 'ser', 'XCAP List', '{@home:url}/ser/xcap_list', null, null, '', '1', 'System.Ser.Prs', '70', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Prs.Sca', 'ser', 'SCA List', '{@home:url}/ser/sca_subscriptions_list', null, null, '', '1', 'System.Ser.Prs', '80', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Msc', 'ser', 'Misc Services', '', null, null, '', '1', 'System.Ser', '70', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Srv.Rtpproxy.List', 'ser', 'RTPProxy List', '{@home:url}/ser/rtpproxy_list', null, null, '', '1', 'System.Ser.Msc', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Msc.Moh.Management', 'ser', 'MoH Management', '{@home:url}/ser/mohqueues_list', null, null, '', '1', 'System.Ser.Msc', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Msc.Mohqueues.List', 'ser', 'MoH Queues List', '{@home:url}/ser/mohqueues_list', null, null, '', '1', 'System.Ser.Msc.Moh.Management', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Msc.Mohqcalls.List', 'ser', 'MoH QCalls List', '{@home:url}/ser/mohqcalls_list', null, null, '', '1', 'System.Ser.Msc.Moh.Management', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Cms', 'ser', 'Command Services', '', null, null, '', '1', 'System.Ser', '80', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Cms.Micmds', 'ser', 'MI Commands', '{@home:url}/ser/micmds', null, null, '', '1', 'System.Ser.Cms', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Cms.Jrcmds', 'ser', 'JSONRPC Commands', '{@home:url}/ser/jrcmds', null, null, '', '1', 'System.Ser.Cms', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Cms.Xrcmds', 'ser', 'XMLRPC Commands', '{@home:url}/ser/xrcmds', null, null, '', '1', 'System.Ser.Cms', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Cms.Fscmds', 'ser', 'FSwitch Commands', '{@home:url}/ser/fscmds', null, null, '', '1', 'System.Ser.Cms', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Charts', 'ser', 'Chart Services', '', null, null, '', '1', 'System.Ser', '90', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Charts.Shm', 'ser', 'SHM Charts', '{@home:url}/ser/charts_shm/cg=shm', null, null, '', '1', 'System.Ser.Charts', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Charts.Load', 'ser', 'Load Charts', '{@home:url}/ser/charts_load/cg=load', null, null, '', '1', 'System.Ser.Charts', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Charts.Tm', 'ser', 'TM Charts', '{@home:url}/ser/charts_tm/cg=tm', null, null, '', '1', 'System.Ser.Charts', '35', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.Charts.Usrloc', 'ser', 'UsrLoc Charts', '{@home:url}/ser/charts_uls/cg=usrloc', null, null, '', '1', 'System.Ser.Charts', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.ChartsStatsUls', 'ser', 'UsrLoc Stats', '{@home:url}/ser/charts_stats_uls', null, null, '', '1', 'System.Ser.Charts', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.ChartsStatsAcc', 'ser', 'Acc Charts', '{@home:url}/ser/charts_stats_acc', null, null, '', '1', 'System.Ser.Charts', '70', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Ser.SummaryStatsAcc', 'ser', 'Acc Summary', '{@home:url}/ser/summary_stats_acc', null, null, '', '1', 'System.Ser.Charts', '80', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser', 'sipuser', 'SIP User Menu', '/sipuser/sipuser_default', null, null, '', '1', '', '45', 'SIPUser.Administer_Modules', 'spacer.gif', '', 'SIP Profile Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs', 'sipuser', 'Own SIP Profile', '', null, null, '', '1', 'System.Sipuser', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs.Subscriber.List', 'sipuser', 'Subscriber Data', '{@home:url}/sipuser/subscriber_list', null, null, '', '1', 'System.Sipuser.Sbs', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs.Location.List', 'sipuser', 'Location Records', '{@home:url}/sipuser/location_list', null, null, '', '1', 'System.Sipuser.Sbs', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs.Aliasdb.List', 'sipuser', 'Aliases DB Records', '{@home:url}/sipuser/aliasdb_list', null, null, '', '1', 'System.Sipuser.Sbs', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs.Speeddial.List', 'sipuser', 'Speed Dial Records', '{@home:url}/sipuser/speed_dial_list', null, null, '', '1', 'System.Sipuser.Sbs', '50', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Sbs.Msilo.List', 'sipuser', 'Stored Messages', '{@home:url}/sipuser/silo_list', null, null, '', '1', 'System.Sipuser.Sbs', '60', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Acs', 'sipuser', 'Accounting', '', null, null, '', '1', 'System.Sipuser', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Acs.Acc.List', 'sipuser', 'Initiated Calls', '{@home:url}/sipuser/acc_list', null, null, '', '1', 'System.Sipuser.Acs', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Acs.MissedCalls.List', 'sipuser', 'Missed Calls', '{@home:url}/sipuser/missed_calls_list', null, null, '', '1', 'System.Sipuser.Acs', '30', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Sipuser.Acs.Cdrs.List', 'sipuser', 'Call Data Records', '{@home:url}/sipuser/cdrs_list', null, null, '', '1', 'System.Sipuser.Acs', '40', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Theme', 'theme', 'Theme', '', null, null, '', '1', 'System', '50', '', 'spacer.gif', 'icon_theme', 'Theme Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Theme.Manage', 'theme', 'Manage Theme', '/theme/manage_theme', null, null, '', '1', 'System.Theme', '10', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Translation', 'translation', 'Translation', '', null, null, '', '1', 'System', '50', '', 'spacer.gif', 'icon_translation', 'Translation Management', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Translation.translation', 'translation', 'Manage UI Translation', '/translation/manage_translation', null, null, '', '1', 'System.Translation', '20', '', '', '', '', '1', null, '1', null);
INSERT INTO `menu` VALUES ('System.Translation.language', 'translation', 'Manage Languages', '/translation/manage_language', null, null, '', '1', 'System.Translation', '30', '', '', '', '', '1', null, '1', null);

-- ----------------------------
-- Table structure for `meta_do`
-- ----------------------------
DROP TABLE IF EXISTS `meta_do`;
CREATE TABLE `meta_do` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `dbname` varchar(100) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `data` text,
  `fields` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meta_do
-- ----------------------------

-- ----------------------------
-- Table structure for `meta_form`
-- ----------------------------
DROP TABLE IF EXISTS `meta_form`;
CREATE TABLE `meta_form` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `dataobj` varchar(100) DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `data` text,
  `elements` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meta_form
-- ----------------------------

-- ----------------------------
-- Table structure for `meta_view`
-- ----------------------------
DROP TABLE IF EXISTS `meta_view`;
CREATE TABLE `meta_view` (
  `name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `template` varchar(100) DEFAULT NULL,
  `data` text,
  `forms` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meta_view
-- ----------------------------

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `author` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `openbiz_version` varchar(64) DEFAULT NULL,
  `depend_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'system', 'system module, only administrator can access', '1', 'Rocky', '0.1', '2.4', '');
INSERT INTO `module` VALUES ('2', 'menu', 'menu management module', '1', 'Jixian, Rocky', '0.1', '2.4', 'system');
INSERT INTO `module` VALUES ('3', 'cache', 'Cache management module', '1', 'Jixian', '0.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('4', 'contact', 'contact management module', '1', '', '0.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('5', 'cronjob', 'cronjob management module', '1', '', '0.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('6', 'eventlog', 'Event log module, only administrator can access', '1', 'Rocky', '0.1', '2.4', '');
INSERT INTO `module` VALUES ('7', 'help', 'help management module', '1', '', '0.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('8', 'ser', 'SIP Admin Modules', '1', '', '4.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('9', 'sipuser', 'SIP User module', '1', '', '4.0', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('10', 'theme', 'Theme management module', '1', 'Jixian', '0.1', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('11', 'translation', 'UI translation management module', '1', 'Jixian', '0.2', '2.4', 'system,menu');
INSERT INTO `module` VALUES ('12', 'user', 'usr login, my account edit, password reset', '1', 'Rocky, Jixian', '0.1', '2.4', 'system,menu');

-- ----------------------------
-- Table structure for `pass_token`
-- ----------------------------
DROP TABLE IF EXISTS `pass_token`;
CREATE TABLE `pass_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pass_token
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `default` int(2) DEFAULT '0',
  `startpage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `default` (`default`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'Administrator', 'System administrator', '1', '0', '/system/general_default');
INSERT INTO `role` VALUES ('2', 'Sipadmin', 'General SIP admins', '1', '0', '/ser/ser_default');
INSERT INTO `role` VALUES ('3', 'Sipuser', 'General SIP users', '1', '0', '/sipuser/sipuser_default');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enctype` varchar(64) NOT NULL DEFAULT 'SHA1',
  `email` varchar(64) DEFAULT '',
  `status` int(2) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `lastlogout` datetime DEFAULT NULL,
  `create_by` int(10) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_by` int(10) DEFAULT '1',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'SHA1', 'admin@yourcompany.com', '1', '2010-05-16 18:20:40', '2009-08-24 13:24:14', '1', '2010-05-01 01:19:57', '1', '2010-05-01 01:19:57');
INSERT INTO `user` VALUES ('2', 'member', '6467baa3b187373e3931422e2a8ef22f3e447d77', 'SHA1', 'member@yourcompany.com', '0', '2010-05-01 01:19:57', '2009-08-23 23:39:37', '1', '2010-05-01 01:19:57', '5', '2010-05-01 01:19:57');
INSERT INTO `user` VALUES ('3', 'guest', '35675e68f4b5af7b995d9205ad0fc43842f16450', 'SHA1', 'guest@yourcompany.com', '0', null, null, null, '2010-01-12 02:20:10', null, '2010-01-12 02:20:10');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
INSERT INTO `user_role` VALUES ('2', '2', '2');
INSERT INTO `user_role` VALUES ('3', '3', '3');
