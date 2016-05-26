/*
Navicat MySQL Data Transfer

Source Server         : 123.30.236.113
Source Server Version : 50173
Source Host           : 123.30.236.113:3306
Source Database       : ubon

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-05-24 09:08:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dh_area`
-- ----------------------------
DROP TABLE IF EXISTS `dh_area`;
CREATE TABLE `dh_area` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `truongxuaId` int(11) NOT NULL,
  `zingId` int(11) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `level` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleUnique` varchar(255) NOT NULL,
  `unixTitle` varchar(250) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `parent` int(4) NOT NULL,
  `parent2` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `roomId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=43002 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dh_area
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_block_user`
-- ----------------------------
DROP TABLE IF EXISTS `dh_block_user`;
CREATE TABLE `dh_block_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT 'ID nguoi khoa',
  `targetUser` int(11) NOT NULL COMMENT 'ID nguoi bi khoa',
  `type` int(11) NOT NULL COMMENT '1:khoa khong cho phep gui tin nhan den; 2:khoa khong cho phep xem trang ca nhan',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `targetUser` (`targetUser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_block_user
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_call_sign`
-- ----------------------------
DROP TABLE IF EXISTS `dh_call_sign`;
CREATE TABLE `dh_call_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT 'chu ky cuoc goi cua nguoi nay',
  `targetUser` int(11) NOT NULL DEFAULT '0' COMMENT 'chu ky cuoc goi ap dung rieng voi nguoi nay',
  `callerCallSign` varchar(500) DEFAULT NULL,
  `calleeCallSign` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `targetUser` (`targetUser`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_call_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_campaign`
-- ----------------------------
DROP TABLE IF EXISTS `dh_campaign`;
CREATE TABLE `dh_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign` varchar(50) NOT NULL COMMENT 'ID cua chien dich',
  `user` int(11) NOT NULL COMMENT 'ID cua nguoi gioi thieu visitor den website',
  `ip` varchar(60) NOT NULL COMMENT 'IP cua visitor',
  `referrerDomain` varchar(50) NOT NULL,
  `custom` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign` (`campaign`),
  KEY `user` (`user`),
  KEY `ip` (`ip`),
  KEY `referrerDomain` (`referrerDomain`),
  KEY `created` (`created`),
  KEY `custom` (`custom`)
) ENGINE=MyISAM AUTO_INCREMENT=350256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_campaign
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_chat`
-- ----------------------------
DROP TABLE IF EXISTS `dh_chat`;
CREATE TABLE `dh_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `senderUsername` varchar(32) NOT NULL,
  `receiver` int(11) NOT NULL,
  `receiverUsername` varchar(32) NOT NULL,
  `msg` text NOT NULL,
  `msgTag` int(5) NOT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from` (`sender`),
  KEY `to` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_chat
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_chatgw_chat_conversation`
-- ----------------------------
DROP TABLE IF EXISTS `dh_chatgw_chat_conversation`;
CREATE TABLE `dh_chatgw_chat_conversation` (
  `id` varchar(250) NOT NULL,
  `superUser` int(11) NOT NULL,
  `subUser` int(11) NOT NULL,
  `withUser` int(11) NOT NULL,
  `lastTimeMsg` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `superUser` (`superUser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_chatgw_chat_conversation
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_chatgw_chat_log`
-- ----------------------------
DROP TABLE IF EXISTS `dh_chatgw_chat_log`;
CREATE TABLE `dh_chatgw_chat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromUser` int(11) NOT NULL,
  `toUser` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fromUser` (`fromUser`),
  KEY `toUser` (`toUser`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=2162969 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_chatgw_chat_log
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_chat_group`
-- ----------------------------
DROP TABLE IF EXISTS `dh_chat_group`;
CREATE TABLE `dh_chat_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `groupKey` varchar(32) NOT NULL COMMENT 'md5(userID1_userID2_...) (user ID 1 < user ID 2 < ...)',
  `creator` int(11) NOT NULL,
  `numberOfMembers` tinyint(3) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatarServer` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupKey` (`groupKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_chat_group
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_cms_data`
-- ----------------------------
DROP TABLE IF EXISTS `dh_cms_data`;
CREATE TABLE `dh_cms_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `targetUser` int(11) NOT NULL,
  `action` int(11) NOT NULL COMMENT '1:goi dien;2:nhan tin;3:xem trang ca nhan;4:binh luan;5:thich;6:viet len trang ca nhan',
  `view` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `user` (`user`),
  KEY `targetUser` (`targetUser`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_cms_data
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_daemon`
-- ----------------------------
DROP TABLE IF EXISTS `dh_daemon`;
CREATE TABLE `dh_daemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `PUSH_NOTIFICATION_CURRENT_SETTING` int(11) DEFAULT '0',
  `MESSAGE_FILE_URL` int(11) DEFAULT '0',
  `PUSH_NOTIFICATION_SETTING` int(11) DEFAULT '0',
  `MY_RINGBACK_TONE_DELETE` int(11) DEFAULT '0',
  `MY_RINGBACK_TONE_ADD` int(11) DEFAULT '0',
  `MY_RINGBACK_TONE_LIST` int(11) DEFAULT '0',
  `GET_LIST_MUSIC` int(11) DEFAULT '0',
  `GET_CURRENT_CALL_SIGN` int(11) DEFAULT '0',
  `CALL_RINGBACK_TONE` int(11) DEFAULT '0',
  `SEND_LOCATION` int(11) DEFAULT '0',
  `LIST_STICKER_PACKET` int(11) DEFAULT '0',
  `CALL_UPDATE` int(11) DEFAULT '0',
  `CALL_STATUS_CHANGE` int(11) DEFAULT '0',
  `FRIEND_VIA_WIFI_LEAVE` int(11) DEFAULT '0',
  `FRIEND_VIA_WIFI_JOIN` int(11) DEFAULT '0',
  `FRIEND_VIA_WIFI` int(11) DEFAULT '0',
  `APPLICATION_CHANGE_STATE` int(11) DEFAULT '0',
  `MESSAGE_STICKER` int(11) DEFAULT '0',
  `HAVE_OFFLINE_MESSAGE` int(11) DEFAULT '0',
  `ADMIN` int(11) DEFAULT '0',
  `SYSTEM_MAINTENANCE` int(11) DEFAULT '0',
  `CHANGE_SERVER_TO` int(11) DEFAULT '0',
  `NUMBER_NOTIFICATION` int(11) DEFAULT '0',
  `CHANGE_PASSWORD` int(11) DEFAULT '0',
  `GET_RELATIONSHIP_WITH_USER` int(11) DEFAULT '0',
  `SCHEDULE_MESSAGE_VIEW_LIST` int(11) DEFAULT '0',
  `SCHEDULE_MESSAGE_DELETE` int(11) DEFAULT '0',
  `SCHEDULE_MESSAGE_ADD` int(11) DEFAULT '0',
  `VIEW_USER_VISIT_MY_HOMEPAGE` int(11) DEFAULT '0',
  `CAPTCHA_FOR_REGISTER_ACCOUNT` int(11) DEFAULT '0',
  `UPDATE_USER_INFO` int(11) DEFAULT '0',
  `CHANGE_PRIVACY` int(11) DEFAULT '0',
  `LIST_LOCKED_USER` int(11) DEFAULT '0',
  `UNBLOCK_USER` int(11) DEFAULT '0',
  `BLOCK_USER` int(11) DEFAULT '0',
  `REPORT` int(11) DEFAULT '0',
  `DELETE_COMMENT` int(11) DEFAULT '0',
  `DELETE_POST` int(11) DEFAULT '0',
  `UNFRIEND` int(11) DEFAULT '0',
  `REGISTER_ACCOUNT` int(11) DEFAULT '0',
  `OFFLINE_ROOM_LIST_ROOM` int(11) DEFAULT '0',
  `OFFLINE_ROOM_LIST_ROOM_CATEGORY` int(11) DEFAULT '0',
  `OFFLINE_ROOM_LIST_FRIEND` int(11) DEFAULT '0',
  `OFFLINE_ROOM_LEAVE` int(11) DEFAULT '0',
  `OFFLINE_ROOM_JOIN` int(11) DEFAULT '0',
  `SEND_FILE_CANCEL` int(11) DEFAULT '0',
  `SEND_FILE_OK` int(11) DEFAULT '0',
  `MESSAGE_CHAT_GROUP_REPORT` int(11) DEFAULT '0',
  `HAVE_MESSAGE2` int(11) DEFAULT '0',
  `MESSAGE2` int(11) DEFAULT '0',
  `NEWS_FEED` int(11) DEFAULT '0',
  `OLA_ENCRYPT_PASSWORD` int(11) DEFAULT '0',
  `DELETE_LOCATION` int(11) DEFAULT '0',
  `SEARCH_USER_BY_LOCATION` int(11) DEFAULT '0',
  `VIEW_PENDDING_FRIEND` int(11) DEFAULT '0',
  `USER_NOTIFICATION` int(11) DEFAULT '0',
  `DELETE_RELATIONSHIP` int(11) DEFAULT '0',
  `MAKE_FRIEND_RESPONSE_SERVER` int(11) DEFAULT '0',
  `MAKE_FRIEND_REQUEST` int(11) DEFAULT '0',
  `MAKE_FRIEND_RESPONSE` int(11) DEFAULT '0',
  `MAKE_FRIEND` int(11) DEFAULT '0',
  `CREATE_POST` int(11) DEFAULT '0',
  `COMMENT_POST` int(11) DEFAULT '0',
  `LIKE_POST` int(11) DEFAULT '0',
  `VIEW_POST_COMMENT` int(11) DEFAULT '0',
  `VIEW_POST_LIKE` int(11) DEFAULT '0',
  `VIEW_HOME_PAGE_POST` int(11) DEFAULT '0',
  `VIEW_HOME_PAGE` int(11) DEFAULT '0',
  `LEAVE_ROOM_RESPONSE` int(11) DEFAULT '0',
  `OLA_REGISTER` int(11) DEFAULT '0',
  `OLA_ROBOT` int(11) DEFAULT '0',
  `SUGGEST_FRIEND` int(11) DEFAULT '0',
  `ERROR_LOGGED_OTHER_CHANNEL` int(11) DEFAULT '0',
  `USER_ADD_BOOK_DONE` int(11) DEFAULT '0',
  `USER_ADD_BOOK` int(11) DEFAULT '0',
  `SEARCH_USER` int(11) DEFAULT '0',
  `MESSAGE_CHAT_GROUP` int(11) DEFAULT '0',
  `JOIN_CHAT_GROUP` int(11) DEFAULT '0',
  `LEAVE_CHAT_GROUP` int(11) DEFAULT '0',
  `MAKE_CHAT_GROUP` int(11) DEFAULT '0',
  `UNREGISTER_PUSH_NOTIFICATION_RESPONSE` int(11) DEFAULT '0',
  `UNREGISTER_PUSH_NOTIFICATION` int(11) DEFAULT '0',
  `REGISTER_PUSH_NOTIFICATION_RESPONSE` int(11) DEFAULT '0',
  `REGISTER_PUSH_NOTIFICATION` int(11) DEFAULT '0',
  `FRIEND_LIST_DONE` int(11) DEFAULT '0',
  `SEND_FILE_DATA_DONE` int(11) DEFAULT '0',
  `GAME_INVITE_RESPONSE` int(11) DEFAULT '0',
  `GAME_INVITE` int(11) DEFAULT '0',
  `GAME_DATA` int(11) DEFAULT '0',
  `CALL_INVITE_RESPONSE` int(11) DEFAULT '0',
  `CALL_INVITE` int(11) DEFAULT '0',
  `MESSAGE_REPORT` int(11) DEFAULT '0',
  `GET_SERVER_ADDR` int(11) DEFAULT '0',
  `ROOM_FRIENDS` int(11) DEFAULT '0',
  `SEND_FILE_DATA` int(11) DEFAULT '0',
  `SEND_FILE_INFO_RESPONSE` int(11) DEFAULT '0',
  `SEND_FILE_INFO` int(11) DEFAULT '0',
  `USER_INFO` int(11) DEFAULT '0',
  `CONFERENCE_INFO` int(11) DEFAULT '0',
  `JOIN_ROOM_RESPONSE` int(11) DEFAULT '0',
  `HAVE_MESSAGE_ROOM` int(11) DEFAULT '0',
  `MESSAGE_ROOM` int(11) DEFAULT '0',
  `LIST_ROOM` int(11) DEFAULT '0',
  `LIST_AREA` int(11) DEFAULT '0',
  `LEAVE_ROOM` int(11) DEFAULT '0',
  `JOIN_ROOM` int(11) DEFAULT '0',
  `LEAVE_CONFERENCE` int(11) DEFAULT '0',
  `BROADCAST` int(11) DEFAULT '0',
  `FRIEND_LIST` int(11) DEFAULT '0',
  `PRESENCE_NOTIFY` int(11) DEFAULT '0',
  `JOIN_CONFERENCE` int(11) DEFAULT '0',
  `INVITE_CONFERENCE_RESPONSE` int(11) DEFAULT '0',
  `INVITE_CONFERENCE` int(11) DEFAULT '0',
  `HAVE_MESSAGE_CONFERENCE` int(11) DEFAULT '0',
  `MESSAGE_CONFERENCE` int(11) DEFAULT '0',
  `MAKE_CONFERENCE` int(11) DEFAULT '0',
  `HAVE_MESSAGE` int(11) DEFAULT '0',
  `MESSAGE` int(11) DEFAULT '0',
  `CURRENT_CALL_SIGN_WITH_FRIEND` int(11) NOT NULL DEFAULT '0',
  `VIEW_FRIEND_SUGGESTION` int(11) NOT NULL DEFAULT '0',
  `UPDATE_MY_FACEBOOK_INFO` int(11) NOT NULL DEFAULT '0',
  `LOGOUT` int(11) DEFAULT '0',
  `LOGIN` int(11) DEFAULT '0',
  `PING` int(11) DEFAULT '0',
  `DEFAULT` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `startTime` (`startTime`),
  KEY `endTime` (`endTime`)
) ENGINE=MyISAM AUTO_INCREMENT=79340 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_daemon
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_facebook_contact`
-- ----------------------------
DROP TABLE IF EXISTS `dh_facebook_contact`;
CREATE TABLE `dh_facebook_contact` (
  `user` int(11) NOT NULL,
  `facebookUserId` bigint(20) NOT NULL,
  `facebookFriendName` varchar(50) NOT NULL,
  `facebookFriendUserId` bigint(20) NOT NULL,
  `facebookFriendGender` int(11) NOT NULL,
  `facebookFriendPicture` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`user`,`facebookFriendUserId`),
  KEY `facebookFriendUserId` (`facebookFriendUserId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_facebook_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_file_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `dh_file_deleted`;
CREATE TABLE `dh_file_deleted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(500) NOT NULL,
  `server` int(11) NOT NULL,
  `nodeType` int(11) NOT NULL COMMENT '1:node, 2:comment',
  `fileType` int(11) NOT NULL COMMENT '0 - photo; 1 - voice',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23856 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_file_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_friend_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `dh_friend_deleted`;
CREATE TABLE `dh_friend_deleted` (
  `user` int(11) NOT NULL,
  `targetUser` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`user`,`targetUser`),
  KEY `user` (`user`),
  KEY `targetUser` (`targetUser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_friend_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_friend_suggestion`
-- ----------------------------
DROP TABLE IF EXISTS `dh_friend_suggestion`;
CREATE TABLE `dh_friend_suggestion` (
  `id` varchar(32) NOT NULL COMMENT 'user_targetUser',
  `user` int(11) NOT NULL COMMENT 'Goi y ket ban cho nguoi nay',
  `targetUser` int(11) NOT NULL COMMENT 'Ban be goi y',
  `aliasName` varchar(250) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1:qua facebook;2:qua danh ba',
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:user da xoa goi y nay roi',
  `created` datetime NOT NULL,
  `viewTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deleted` (`deleted`),
  KEY `user` (`user`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_friend_suggestion
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_like`
-- ----------------------------
DROP TABLE IF EXISTS `dh_like`;
CREATE TABLE `dh_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `user` int(11) NOT NULL,
  `wallTargetUser` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node` (`node`),
  KEY `user` (`user`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=19953 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_like
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_msg_file`
-- ----------------------------
DROP TABLE IF EXISTS `dh_msg_file`;
CREATE TABLE `dh_msg_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgId` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `server` tinyint(3) NOT NULL COMMENT 'server chua file',
  `path` varchar(500) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=2760212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_msg_file
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_node_wall_photo`
-- ----------------------------
DROP TABLE IF EXISTS `dh_node_wall_photo`;
CREATE TABLE `dh_node_wall_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `targetUser` int(11) NOT NULL,
  `wall` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `wall` (`wall`)
) ENGINE=MyISAM AUTO_INCREMENT=137754 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_node_wall_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_notification`
-- ----------------------------
DROP TABLE IF EXISTS `dh_notification`;
CREATE TABLE `dh_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `targetUser` int(11) NOT NULL,
  `node` int(11) NOT NULL,
  `nodeUsername` varchar(32) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `nodeType` tinyint(4) NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `viewTime` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `targetUser` (`targetUser`),
  KEY `view` (`view`),
  KEY `created` (`created`),
  KEY `viewTime` (`viewTime`)
) ENGINE=MyISAM AUTO_INCREMENT=115346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_notification
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_offline_message`
-- ----------------------------
DROP TABLE IF EXISTS `dh_offline_message`;
CREATE TABLE `dh_offline_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL DEFAULT '0',
  `receiverId` int(11) NOT NULL DEFAULT '0',
  `view` tinyint(1) NOT NULL,
  `packetBody` blob,
  `msgId` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL,
  `msgTag` int(5) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `senderId` (`senderId`),
  KEY `receiverId` (`receiverId`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=90572990 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dh_offline_message
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_offline_room`
-- ----------------------------
DROP TABLE IF EXISTS `dh_offline_room`;
CREATE TABLE `dh_offline_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_offline_room
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_offline_room_cat`
-- ----------------------------
DROP TABLE IF EXISTS `dh_offline_room_cat`;
CREATE TABLE `dh_offline_room_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_offline_room_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_offline_room_old`
-- ----------------------------
DROP TABLE IF EXISTS `dh_offline_room_old`;
CREATE TABLE `dh_offline_room_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_offline_room_old
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_offline_room_user`
-- ----------------------------
DROP TABLE IF EXISTS `dh_offline_room_user`;
CREATE TABLE `dh_offline_room_user` (
  `user` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `joinTime` datetime NOT NULL,
  `lastVisitTime` datetime NOT NULL,
  `visitCount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user`,`room`),
  KEY `show` (`show`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_offline_room_user
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_payment`
-- ----------------------------
DROP TABLE IF EXISTS `dh_payment`;
CREATE TABLE `dh_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL COMMENT 'Giá thành người dùng phải trả khi nhắn tin đến các đầu số dịch vụ của Appota.',
  `request` varchar(1000) DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT 'Trạng thái giao dịch: 1: Giao dịch thành công. 0: Giao dịch thất bại.',
  `sandbox` tinyint(1) DEFAULT NULL COMMENT 'Môi trường thực hiện giao dịch: 1: Môi trường sandbox, giao dịch được thực hiện bởi Appota giúp Nhà phát triển kiểm tra kết nối. 0: Giao dịch được thực hiện bởi người dùng, ứng dụng của Nhà phát triển được tính tiền.',
  `transaction_id` varchar(100) DEFAULT NULL COMMENT 'Mã giao dịch trên hệ thống Appota. Nhà phát triển có thể sử dụng mã giao dịch này để xác nhận lại giao dịch với Appota (xem phần Xác minh giao dịch).',
  `transaction_type` varchar(50) DEFAULT NULL COMMENT 'Loại giao dịch.',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Số điện thoại người dùng sử dụng để gửi tin nhắn.',
  `message` varchar(200) DEFAULT NULL COMMENT 'Nội dung tin nhắn của người dùng.',
  `code` varchar(10) DEFAULT NULL COMMENT 'Đầu số nhận tin nhắn người dùng gửi đi.',
  `currency` varchar(10) DEFAULT NULL COMMENT 'Đơn vị tiền tệ tương ứng với trường amount ở trên.',
  `country_code` varchar(5) DEFAULT NULL COMMENT 'Mã quốc gia.',
  `hash` varchar(64) DEFAULT NULL COMMENT 'Mã băm bảo mật nhằm xác nhận IPN được gọi bởi hệ thống Appota.',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_photo_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `dh_photo_tmp`;
CREATE TABLE `dh_photo_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `fileName` varchar(255) NOT NULL,
  `fileDir` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `server` tinyint(4) NOT NULL,
  `voiceDuration` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 - photo; 1 - voice; 2 - avatar; 3 - bg music hoac ringback tone',
  `userData` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134017 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dh_photo_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_push_notification_client`
-- ----------------------------
DROP TABLE IF EXISTS `dh_push_notification_client`;
CREATE TABLE `dh_push_notification_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `clientId` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1: android; 2: ios',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `clientId` (`clientId`)
) ENGINE=MyISAM AUTO_INCREMENT=93548 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_push_notification_client
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_report`
-- ----------------------------
DROP TABLE IF EXISTS `dh_report`;
CREATE TABLE `dh_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `reportedUser` int(11) NOT NULL,
  `reportedNode` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:noi dung vi pham; 2:user vi pham; 3:user spam',
  PRIMARY KEY (`id`),
  KEY `reportedUser` (`reportedUser`),
  KEY `reportedNode` (`reportedNode`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_report
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_ringback_tone`
-- ----------------------------
DROP TABLE IF EXISTS `dh_ringback_tone`;
CREATE TABLE `dh_ringback_tone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpId` int(11) NOT NULL DEFAULT '0',
  `isBgMusic` tinyint(1) NOT NULL DEFAULT '0' COMMENT '=1 thì đây là nhạc nền cuộc gọi, không phải nhạc chờ',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'người upload',
  `title` varchar(250) NOT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `filePath` varchar(250) NOT NULL,
  `server` int(11) NOT NULL DEFAULT '0',
  `fileSize` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `public` (`public`),
  KEY `tmpId` (`tmpId`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_ringback_tone
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_schedule_message`
-- ----------------------------
DROP TABLE IF EXISTS `dh_schedule_message`;
CREATE TABLE `dh_schedule_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `msgId` int(11) NOT NULL,
  `msgServiceType` int(11) NOT NULL,
  `msgPacketBody` blob NOT NULL,
  `time` datetime NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:chua dc server nao lay;1:da lay',
  `fromFullname` varchar(32) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sent` (`sent`),
  KEY `time` (`time`),
  KEY `msgId` (`msgId`),
  KEY `from` (`from`),
  KEY `status` (`status`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=1514 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_schedule_message
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_spam_key_word`
-- ----------------------------
DROP TABLE IF EXISTS `dh_spam_key_word`;
CREATE TABLE `dh_spam_key_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyWord` varchar(255) NOT NULL,
  `numberOfAppear` int(11) NOT NULL DEFAULT '3' COMMENT 'so lan xuat hien thi se block; 1=block ngay lap tuc; >1 xem tiep truong inTime',
  `inTime` int(11) NOT NULL DEFAULT '3600' COMMENT 'trong khoang thoi gian nay (tinh bang giay) neu keyWord xuat hien numberOfAppear lan thi se bi block',
  `expireDate` datetime DEFAULT NULL COMMENT 'Thoi diem het han cua tu khoa; NULL = mai mai',
  `blockTime` int(11) NOT NULL DEFAULT '0' COMMENT 'Thoi gian block (tinh bang giay); 0 = mai mai',
  `created` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:enable; 0:disable',
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_spam_key_word
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_sticker_packet`
-- ----------------------------
DROP TABLE IF EXISTS `dh_sticker_packet`;
CREATE TABLE `dh_sticker_packet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mini_cover` varchar(250) NOT NULL,
  `full_cover` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_sticker_packet
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_super_user`
-- ----------------------------
DROP TABLE IF EXISTS `dh_super_user`;
CREATE TABLE `dh_super_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT 'userId cua super nay, ung voi bang dh_user',
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_super_user
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_super_user_sub_user`
-- ----------------------------
DROP TABLE IF EXISTS `dh_super_user_sub_user`;
CREATE TABLE `dh_super_user_sub_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `super_user` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1636 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_super_user_sub_user
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_user_address_book`
-- ----------------------------
DROP TABLE IF EXISTS `dh_user_address_book`;
CREATE TABLE `dh_user_address_book` (
  `user` int(11) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`user`,`phonenumber`),
  KEY `user` (`user`),
  KEY `phonenumber` (`phonenumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_user_address_book
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_user_facebook_info`
-- ----------------------------
DROP TABLE IF EXISTS `dh_user_facebook_info`;
CREATE TABLE `dh_user_facebook_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `birthday` datetime NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` tinyint(3) NOT NULL,
  `facebookId` bigint(20) NOT NULL,
  `link` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `updated_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_user_facebook_info
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_user_location`
-- ----------------------------
DROP TABLE IF EXISTS `dh_user_location`;
CREATE TABLE `dh_user_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `locationLong` double NOT NULL,
  `locationLat` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `long` (`locationLong`),
  KEY `lat` (`locationLat`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=497563 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_user_location
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_user_ringback_tone`
-- ----------------------------
DROP TABLE IF EXISTS `dh_user_ringback_tone`;
CREATE TABLE `dh_user_ringback_tone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT 'Nhac cho cua nguoi nay',
  `targetUser` int(11) NOT NULL DEFAULT '0' COMMENT 'Nhac cho rieng khi targetUser goi den user',
  `ringback_tone` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `ringback_tone` (`ringback_tone`),
  KEY `created` (`created`),
  KEY `targetUser` (`targetUser`)
) ENGINE=MyISAM AUTO_INCREMENT=1672 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_user_ringback_tone
-- ----------------------------

-- ----------------------------
-- Table structure for `dh_visit_homepage_log`
-- ----------------------------
DROP TABLE IF EXISTS `dh_visit_homepage_log`;
CREATE TABLE `dh_visit_homepage_log` (
  `user` int(11) NOT NULL COMMENT 'nguoi` ghe tham',
  `targetUser` int(11) NOT NULL COMMENT 'trang ca nhan cua nguoi nay',
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `viewTime` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`user`,`targetUser`),
  KEY `user` (`user`),
  KEY `targetUser` (`targetUser`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_visit_homepage_log
-- ----------------------------
