/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : fullycms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-27 17:55:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activations`
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', '4pCO8hpZcK9Xsz6XCpVggyduSrKprGBB', '1', '2016-03-28 16:15:03', '2016-03-28 16:15:03', '2016-03-28 16:15:03');
INSERT INTO `activations` VALUES ('2', '2', 'z12vqDh0P6ooniQECNPUo8b1oR3hUCvm', '1', '2016-03-28 16:15:04', '2016-03-28 16:15:04', '2016-03-28 16:15:04');

-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Cras vitae vulputate ipsum', 'This is the first blog post.<br><br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet facilisis ipsum. Aenean placerat orci ut ligula hendrerit egestas. Curabitur non porttitor elit. Ut scelerisque est ipsum, non molestie quam consequat accumsan. Suspendisse luctus metus ut mi consectetur, mollis convallis tortor posuere. Duis vestibulum erat at lacus ultrices, ut aliquam turpis pulvinar. Cras lobortis dui nisi, sed varius massa pulvinar sit amet. Cras vitae vulputate ipsum. Ut varius lectus quam, id ultrices nisl tempor mattis. Etiam sit amet imperdiet ipsum.\r\n\r\nSed porta velit vitae quam bibendum, ut convallis neque pharetra. Sed tempus velit tristique iaculis blandit. Phasellus et egestas lorem. Duis elementum turpis sollicitudin est consequat, vel viverra est tristique. Pellentesque lacinia posuere ante. Duis et consequat justo. Sed fermentum velit elit. Nulla suscipit vulputate ipsum, mattis tincidunt orci luctus eget. Nam in volutpat turpis. Cras vitae sapien urna. Pellentesque vestibulum adipiscing malesuada. Donec ornare sollicitudin libero ut hendrerit. ', 'blog-post', '1', 'blog, post', 'Blog Post', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('2', 'Donec molestie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus in tellus vel consectetur. Cras a quam facilisis, porta dui id, ultrices dui. Donec molestie, tortor eu condimentum tempus, massa nisl auctor dui, sodales tempus diam leo sed magna. Aliquam eu neque non nibh congue euismod. Vestibulum at malesuada nibh, sit amet imperdiet erat. Vivamus fringilla augue nunc, id porttitor lectus iaculis vitae. Maecenas posuere porttitor arcu. Nullam bibendum congue diam sed interdum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin laoreet aliquam gravida. Etiam sit amet orci sed augue lacinia vulputate. Phasellus mollis pretium orci, mollis ultrices purus accumsan sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam ac sollicitudin erat, sit amet cursus elit. Duis nec lacinia eros, sit amet convallis erat. ', 'blog-post-2', '1', 'blog, post, 2', 'Blog Post 2', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('3', 'Donec eu vehicula arcu', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-3', '1', 'blog, post, 3', 'Blog Post 3', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('4', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-4', '1', 'blog, post, 4', 'Blog Post 4', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('5', 'Aliquam elit libero', 'Aenean varius lectus commodo, sollicitudin nulla eget, malesuada velit. Maecenas neque mi, eleifend non urna non, pellentesque tincidunt orci. Aliquam elit libero, feugiat a posuere id, aliquet non dui. Nam ultrices nisl elit, a auctor mauris malesuada sit amet. Etiam malesuada scelerisque nisl, eu mollis leo condimentum sit amet. Nam varius aliquam malesuada. Curabitur scelerisque facilisis dolor, vitae viverra metus mollis ut. Nunc non neque ut ante pretium adipiscing sit amet sed leo. Donec eu vehicula arcu, non blandit quam. ', 'blog-post-5', '1', 'blog, post, 5', 'Blog Post 5', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('6', 'Fusce dictum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-6', '1', 'blog, post, 6', 'Blog Post 6', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('7', 'Pellentesque molestie', 'Curabitur sit amet rutrum lectus. Donec in massa adipiscing, facilisis mi quis, faucibus quam. In adipiscing, nisl vitae varius sagittis, augue nulla pulvinar diam, at viverra est est vel dui. Ut at velit sem. Vivamus rutrum iaculis leo, et vehicula velit aliquam vitae. Pellentesque molestie, ipsum elementum eleifend viverra, felis neque sagittis lorem, sed vestibulum erat dolor iaculis erat. Curabitur porta, arcu vitae luctus sagittis, sapien sapien pretium lorem, id accumsan quam turpis ornare ligula. Curabitur porttitor et quam ut facilisis. In hac habitasse platea dictumst. Nulla sed rhoncus nulla, vitae iaculis eros. Vivamus non enim sit amet velit pharetra luctus. Curabitur sodales lectus vestibulum, hendrerit justo sit amet, ullamcorper diam. Donec eu velit vitae justo convallis convallis. ', 'blog-post-7', '1', 'blog, post, 7', 'Blog Post 7', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('8', 'Nullam suscipit adipiscing purus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce risus massa, facilisis ac interdum quis, hendrerit ac lacus. Integer tempor lacinia justo eget accumsan. Fusce vitae lorem vulputate lectus gravida euismod. Donec vitae quam eu magna tristique ultrices id quis diam. Fusce dictum, nisi id vehicula condimentum, dui ipsum varius nisl, eget euismod tortor magna eget odio. Sed nec diam semper, fermentum lectus in, congue purus. Sed congue viverra dolor id cursus. Cras eu placerat eros, ac viverra leo. Proin eleifend leo tortor, quis molestie diam egestas at. Nullam suscipit adipiscing purus, nec sollicitudin metus interdum quis. Pellentesque dapibus vitae felis non lobortis. Suspendisse id mollis justo. Duis semper rutrum orci id tristique. Cras ultrices laoreet cursus. ', 'blog-post-8', '1', 'blog, post, 8', 'Blog Post 8', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('9', 'Mauris risus nisl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in odio in augue tincidunt viverra. Cras sit amet risus eget augue fermentum consequat et id libero. Donec a laoreet orci. In mi ligula, ornare sit amet nisi et, laoreet tincidunt elit. Curabitur id dui urna. Cras metus tortor, egestas nec magna ornare, scelerisque laoreet ante. Nam aliquam felis velit, a ornare ante porta quis. Proin nisi enim, lobortis at sapien sit amet, lacinia dictum libero. Donec ac pulvinar ante. Mauris risus nisl, pellentesque sed nunc eget, aliquam volutpat dolor. Fusce mollis id purus quis malesuada. Nullam gravida faucibus faucibus. Curabitur ut neque odio. Aenean porta fringilla placerat. Nullam consequat sagittis orci sed tincidunt. ', 'blog-post-9', '1', 'blog, post, 9', 'Blog Post 9', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('10', 'Nam iaculis leo risus', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-10', '1', 'blog, post, 10', 'Blog Post 10', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('11', 'Vestibulum quis dui in tellus commodo eleifend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-11', '2', 'blog, post, 11', 'Blog Post 11', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('12', ' Sed scelerisque', 'In varius volutpat accumsan. Nam rhoncus massa ipsum. In ante erat, vestibulum non neque sit amet, sagittis ultricies risus. Nam iaculis leo risus, at malesuada arcu dictum quis. Nulla blandit mi turpis, nec vestibulum diam suscipit egestas. Aliquam ut mollis nulla. Sed scelerisque, magna vel scelerisque porta, mauris sem varius massa, eget sagittis dui eros id metus. Curabitur imperdiet est tellus, sed rutrum lacus viverra ut. Donec gravida adipiscing tellus sit amet posuere. Duis vel auctor arcu, nec ornare purus. Nulla vehicula, eros quis imperdiet laoreet, libero ipsum porttitor dui, consequat fringilla nulla lectus non elit. ', 'blog-post-12', '2', 'blog, post, 12', 'Blog Post 12', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('13', 'Aenean sapien lectus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-13', '3', 'blog, post, 13', 'Blog Post 13', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('14', 'Phasellus eget euismod tortor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '3', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'vi', '2016-03-28 16:20:19', '2016-03-28 16:20:19');
INSERT INTO `articles` VALUES ('15', 'Vestibulum at congue enim', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pulvinar eu orci id pretium. Morbi blandit lorem non orci commodo ullamcorper. Morbi rhoncus nisl non ligula posuere malesuada. In sit amet eros feugiat, condimentum urna vel, ornare tortor. Donec quis tellus eleifend, vulputate augue sed, molestie ipsum. Aenean sapien lectus, laoreet vitae justo at, posuere faucibus justo. Nam auctor, magna at pretium luctus, nisi mi gravida arcu, suscipit ultrices velit nisi vel libero. Phasellus eget euismod tortor. Aliquam rhoncus felis sed magna scelerisque fringilla. Vestibulum at congue enim. Integer rutrum aliquam velit in dictum. Sed sed sollicitudin nisi, et scelerisque odio. Vestibulum quis dui in tellus commodo eleifend. Suspendisse et quam purus. Donec at massa feugiat leo commodo commodo. ', 'blog-post-14', '5', 'blog, post, 14', 'Blog Post 14', '1', null, null, null, 'en', '2016-03-28 16:20:19', '2016-03-28 16:20:19');

-- ----------------------------
-- Table structure for `articles_tags`
-- ----------------------------
DROP TABLE IF EXISTS `articles_tags`;
CREATE TABLE `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articles_tags_article_id_index` (`article_id`),
  KEY `articles_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles_tags
-- ----------------------------
INSERT INTO `articles_tags` VALUES ('1', '1', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('2', '1', '3', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('3', '1', '4', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('4', '2', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('5', '2', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('6', '3', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('7', '3', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('8', '3', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('9', '4', '4', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('10', '4', '5', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('11', '2', '3', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('12', '5', '5', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('13', '5', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('14', '1', '8', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('15', '1', '5', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('16', '6', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('17', '7', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('18', '8', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('19', '9', '3', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('20', '9', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('21', '10', '1', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('22', '10', '2', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('23', '10', '3', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('24', '10', '4', '2016-03-28 16:20:21', '2016-03-28 16:20:21');
INSERT INTO `articles_tags` VALUES ('25', '10', '5', '2016-03-28 16:20:21', '2016-03-28 16:20:21');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'PHP', 'php', 'vi');
INSERT INTO `categories` VALUES ('2', 'SQL', 'sql', 'vi');
INSERT INTO `categories` VALUES ('3', 'HTML', 'html', 'vi');
INSERT INTO `categories` VALUES ('4', 'CSS', 'css', 'vi');
INSERT INTO `categories` VALUES ('5', 'Javascript', 'javascript', 'vi');
INSERT INTO `categories` VALUES ('6', 'JQuery', 'jquery', 'en');

-- ----------------------------
-- Table structure for `faqs`
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('2', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu.', 'Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('3', 'Curabitur sagittis ante sed quam tristique interdum.', 'Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. ', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('4', 'Suspendisse sit amet interdum neque.', 'Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('5', 'Maecenas rutrum congue orci, a vestibulum enim varius sed.', 'Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('6', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('7', 'Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('8', 'Duis quam ante, fringilla in metus quis, ornare scelerisque felis. ', 'Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('9', 'Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla.', 'Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('10', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'vi', '2016-03-28 16:20:24', '2016-03-28 16:20:24');
INSERT INTO `faqs` VALUES ('11', 'Donec vitae elit sed ante sodales ultricies sed quis ipsum.', 'Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.', '1', 'en', '2016-03-28 16:20:24', '2016-03-28 16:20:24');

-- ----------------------------
-- Table structure for `features`
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES ('1', 'Sáng tạo', 'core_value', '<p>S&aacute;ng tạo l&agrave; lẽ sống</p>\r\n', '2016-03-28 16:20:22', '2016-04-27 09:25:08', '1', 'vi');
INSERT INTO `features` VALUES ('2', 'Creative', 'core_value', '<p>Creative is the live</p>\r\n', '2016-03-28 16:20:22', '2016-04-27 09:31:24', '1', 'en');
INSERT INTO `features` VALUES ('3', 'Khác biệt', 'core_value', '<p>Kh&aacute;c biệt để cạnh tranh</p>\r\n', '2016-04-27 09:25:37', '2016-04-27 09:25:37', '1', 'vi');
INSERT INTO `features` VALUES ('4', 'Chuyên nghiệp', 'core_value', '<p>Chuy&ecirc;n nghiệp x&aacute;c định l&agrave;m ăn l&acirc;u d&agrave;i</p>\r\n', '2016-04-27 09:26:54', '2016-04-27 09:26:54', '1', 'vi');
INSERT INTO `features` VALUES ('5', 'Những dự án gần đây', 'project', '<p>Tr&ecirc;n đ&acirc;y l&agrave; những dự &aacute;n nổi bật của ch&uacute;ng t&ocirc;i</p>\r\n', '2016-04-27 09:27:46', '2016-04-27 09:27:46', '1', 'vi');
INSERT INTO `features` VALUES ('6', 'Disparity', 'core_value', '<p>Disparity is competitive strength</p>\r\n', '2016-04-27 09:33:00', '2016-04-27 09:33:00', '1', 'en');
INSERT INTO `features` VALUES ('7', 'Profession', 'core_value', '<p>Profession for fast and sustainable</p>\r\n', '2016-04-27 09:38:57', '2016-04-27 09:38:57', '1', 'en');
INSERT INTO `features` VALUES ('8', 'Latest project', 'project', '<p>Our lastest project</p>\r\n', '2016-04-27 09:39:25', '2016-04-27 09:39:25', '1', 'en');
INSERT INTO `features` VALUES ('9', 'About us', 'about', '<p>im Catcom</p>\r\n', '2016-04-27 09:57:50', '2016-04-27 09:57:50', '1', 'en');
INSERT INTO `features` VALUES ('10', 'Về chúng tôi', 'about', '<p>Ch&uacute;ng t&ocirc;i l&agrave; Catcom, startup mạnh mẽ</p>\r\n', '2016-04-27 09:59:22', '2016-04-27 09:59:22', '1', 'vi');

-- ----------------------------
-- Table structure for `form_posts`
-- ----------------------------
DROP TABLE IF EXISTS `form_posts`;
CREATE TABLE `form_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_name_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of form_posts
-- ----------------------------

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `php_sapi_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for `maillist`
-- ----------------------------
DROP TABLE IF EXISTS `maillist`;
CREATE TABLE `maillist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maillist
-- ----------------------------

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Trang chủ', '/vi/', '1', '0', 'module', 'home', '1', '2016-03-28 16:20:23', '2016-04-15 07:26:40', 'vi');
INSERT INTO `menus` VALUES ('3', 'Tin tức', '/vi/article', '3', '0', 'module', 'blog', '1', '2016-03-28 16:20:23', '2016-04-15 07:28:41', 'vi');
INSERT INTO `menus` VALUES ('7', 'Về chúng tôi', '/vi/page/hakkimizda', '4', '0', 'module', 'page', '1', '2016-03-28 16:20:23', '2016-04-15 07:34:16', 'vi');
INSERT INTO `menus` VALUES ('8', 'Hỏi đáp', '/vi/faq', '6', '0', 'module', 'faq', '1', '2016-03-28 16:20:23', '2016-04-15 07:34:23', 'vi');
INSERT INTO `menus` VALUES ('9', 'Liên hệ', '/vi/contact', '5', '0', 'module', 'contact', '1', '2016-03-28 16:20:23', '2016-04-15 07:34:23', 'vi');
INSERT INTO `menus` VALUES ('10', 'Home', '/', '1', '0', 'module', 'home', '1', '2016-03-28 16:20:23', '2016-04-11 03:55:44', 'en');
INSERT INTO `menus` VALUES ('11', 'News', '/en/news', '2', '0', 'module', 'news', '1', '2016-03-28 16:20:23', '2016-04-11 03:55:46', 'en');
INSERT INTO `menus` VALUES ('12', 'Blog', '/en/article', '3', '11', 'module', 'blog', '1', '2016-03-28 16:20:23', '2016-04-11 08:54:42', 'en');
INSERT INTO `menus` VALUES ('13', 'Projects', '/en/project', '4', '0', 'module', 'project', '1', '2016-03-28 16:20:23', '2016-04-11 03:55:45', 'en');
INSERT INTO `menus` VALUES ('14', 'Videos', '/en/video', '5', '0', 'module', 'video', '1', '2016-03-28 16:20:23', '2016-04-11 03:55:45', 'en');
INSERT INTO `menus` VALUES ('15', 'Faq', '/en/faq', '6', '0', 'module', 'faq', '1', '2016-03-28 16:20:23', '2016-04-11 03:55:45', 'en');
INSERT INTO `menus` VALUES ('16', 'Contact Us', '/en/contact', '7', '0', 'module', 'contact', '0', '2016-03-28 16:20:23', '2016-04-11 03:55:45', 'en');
INSERT INTO `menus` VALUES ('18', 'Sản phẩm', '/vi/project', '2', '0', 'module', null, '1', '2016-04-15 07:34:06', '2016-04-15 07:34:16', 'vi');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2013_10_24_070153_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2013_10_24_111453_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143600_create_photo_galleries_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_06_143700_create_photos_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_10_191159_create_form_posts_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_222615_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_14_224042_create_articles_tags_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_22_085357_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_27_110650_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2013_11_29_083232_create_news_table', '1');
INSERT INTO `migrations` VALUES ('2013_12_11_124855_create_sliders_table', '1');
INSERT INTO `migrations` VALUES ('2014_01_13_204110_create_menus_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_11_133026_create_maillist_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_181907_create_faqs_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_190645_create_projects_table', '1');
INSERT INTO `migrations` VALUES ('2014_07_23_205053_create_videos_table', '1');
INSERT INTO `migrations` VALUES ('2014_09_10_205053_create_logs_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_09_230147_migration_cartalyst_sentinel', '1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'Nam consectetur ullamcorper leo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'nam-consectetur-ullamcorper-leo', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('2', 'Nunc pulvinar ligula vel justo tincidunt', 'Praesent non turpis facilisis, tincidunt lectus tristique, aliquet quam. Nulla facilisi. Mauris rutrum suscipit elit in tincidunt. Suspendisse potenti. Curabitur sed metus quis arcu aliquam adipiscing. Praesent ultrices nisl suscipit ante suscipit aliquet. Sed enim diam, dictum eget cursus sit amet, porta mollis felis. Donec vestibulum varius felis vel tristique. Donec in adipiscing tortor. Vestibulum dignissim scelerisque ante at aliquet. Cras ultrices metus convallis mi porttitor fermentum.Suspendisse nec velit ut est tristique placerat. Vivamus venenatis nunc id mi facilisis congue. Sed quis ipsum euismod diam aliquet venenatis. Nam nunc diam, tristique at placerat at, ullamcorper ut nunc. Aenean et vulputate augue, nec blandit ligula. Sed venenatis id dolor eu pharetra. Vestibulum tempus justo vitae nunc pellentesque vehicula. Aenean convallis ante vel justo porttitor hendrerit.Etiam sodales est ac porttitor hendrerit. Nullam vulputate arcu fermentum tincidunt gravida. Nunc pulvinar ligula vel justo tincidunt, eget venenatis sapien faucibus. Nam lobortis cursus dolor, sed vehicula sem tempus eget. Duis arcu tellus, vehicula at dapibus id, aliquam eu eros. Aenean eget nibh nunc. Fusce vitae urna in lorem iaculis tincidunt. Aliquam erat volutpat. Sed feugiat odio vitae varius pretium. Nam mattis augue ac lectus pulvinar, quis tempus lacus ornare. Sed nec eros tellus. Cras placerat erat eu odio congue, eget elementum massa aliquam. Ut congue fermentum ante a accumsan.Quisque tincidunt risus et erat varius convallis. Nulla faucibus vehicula libero eu elementum. Mauris elementum imperdiet dolor at faucibus. Praesent luctus convallis condimentum. Nam quis dolor interdum, malesuada sapien rhoncus, bibendum erat. Pellentesque aliquet est in nulla facilisis cursus. Aliquam diam augue, tincidunt eget purus a, tincidunt facilisis neque. Vestibulum hendrerit congue.', 'nunc-pulvinar-ligula-vel-justo-tincidunt', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('3', 'Pellentesque pulvinar dictum condimentum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean elit est, gravida ac arcu et, molestie commodo neque. Proin ut enim consectetur, varius ligula non, viverra diam. Nullam ut sollicitudin libero, nec pretium metus. Nulla sit amet iaculis libero. Maecenas pharetra venenatis libero nec facilisis. Proin nibh eros, tincidunt sed venenatis et, viverra quis ipsum. Ut at viverra lacus, quis convallis tortor. Ut laoreet euismod ante eget mollis. Ut eu sem neque. Aenean accumsan, velit sit amet imperdiet pharetra, magna tortor venenatis nisl, congue condimentum risus nisl eu leo. Integer vestibulum odio at leo euismod, id interdum dui molestie. Praesent laoreet rhoncus nisl quis blandit. Nullam sit amet porttitor nunc. Nam consectetur ullamcorper leo, nec condimentum nisi aliquam interdum. Phasellus sagittis, diam et imperdiet porttitor, erat nisi scelerisque risus, id imperdiet massa felis vel libero. Integer vel sem eu elit fringilla malesuada.Nam consectetur orci quis magna lacinia, in commodo enim ultrices. Cras facilisis feugiat enim quis tempus. Maecenas interdum nibh ut dapibus tempor. Morbi dolor risus, pulvinar nec malesuada nec, euismod ut nisl. Pellentesque pulvinar dictum condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent varius nisl vitae sapien pharetra blandit. In egestas magna non nulla porta, sed hendrerit augue congue. Duis dui felis, sodales eu pharetra eget, viverra in magna. Aenean in adipiscing lorem. Nulla orci ipsum, pharetra ut egestas in, vehicula et justo. Vivamus euismod dui a nulla ornare, at iaculis sem consectetur.', 'pellentesque-pulvinar-dictum-condimentum', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('4', 'Nunc rhoncus nulla facilisis turpis tristique egestas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel consectetur eros, eget sagittis purus. In tincidunt, nunc eu ultrices condimentum, dui libero faucibus orci, sed laoreet nunc nisl porta tellus. Sed nec ligula fringilla, rutrum turpis non, blandit nibh. Nulla dignissim tempor velit, a hendrerit turpis adipiscing vel. Vivamus pellentesque mollis eros non ultrices. Nam venenatis nisi risus, vitae pretium mauris porta in. Nunc rhoncus nulla facilisis turpis tristique egestas. Fusce non cursus tellus.', 'nunc-rhoncus-nulla-facilisis-turpis-tristique-egestas', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('5', 'Donec ut tempor risus', 'Donec ut suscipit tortor. Proin nec iaculis risus. Praesent commodo felis a libero aliquam, sed viverra ligula dapibus. Suspendisse elementum eu odio quis accumsan. Donec ut tempor risus. Nunc viverra cursus tellus, nec vestibulum ante viverra sed. ', 'donec-ut-tempor-risus', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('6', 'Mauris in purus erat', 'Donec ut metus arcu. Mauris quis quam viverra, ultricies urna tincidunt, vestibulum risus. Duis in lectus arcu. Vivamus nec vulputate magna. Integer ut vestibulum quam. Duis ac sapien commodo, consectetur ligula sed, tincidunt mi. Mauris in purus erat. Integer eget mollis elit. ', 'mauris-in-purus-erat', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('7', 'Vestibulum quam sem', 'Phasellus nulla sem, rhoncus id justo vel, rhoncus mollis eros. Morbi mollis mauris nisi, quis fringilla metus pretium at. Curabitur vel mi turpis. Donec sapien neque, auctor vel hendrerit sed, accumsan a elit. Proin turpis purus, tristique quis commodo quis, vulputate vel mi. Etiam feugiat quam vitae neque volutpat, eget rhoncus turpis pulvinar. Fusce non dictum ante. Sed congue non justo ac tincidunt. Vestibulum quam sem, suscipit quis quam quis, pharetra vehicula enim. Nullam lacinia consequat lacus ac tristique. Integer vitae pellentesque leo, sit amet faucibus diam. Suspendisse nulla mi, rutrum in accumsan nec, viverra eu velit. Vivamus porta hendrerit eros, faucibus rhoncus sem bibendum iaculis. ', 'vestibulum-quam-sem', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('8', 'In leo dui, rutrum pellentesque', 'Nam convallis vulputate erat. Nullam vehicula mauris non sapien fermentum condimentum. Nulla aliquam consequat iaculis. In leo dui, rutrum pellentesque dignissim ac, lacinia et eros. Fusce pretium aliquam eros eget euismod. Donec tristique auctor semper. Aenean a aliquet ipsum, ut fringilla diam. Etiam sed ullamcorper arcu. Quisque vehicula dui fringilla faucibus condimentum. ', 'in-leo-dui-rutrum-pellentesque', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('9', 'Class aptent taciti sociosqu ad litora', 'Nunc quis lorem ut metus consequat mollis. Maecenas condimentum turpis bibendum est venenatis gravida. Pellentesque id vehicula magna, sit amet semper purus. Ut tempor eros quis dui dictum, a sagittis ligula volutpat. Duis fermentum mattis dolor ut feugiat. Etiam et laoreet dolor, ultricies iaculis nisi. Nam erat nulla, facilisis at enim a, consectetur ornare magna. Phasellus aliquam varius quam eu lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse nibh nulla, iaculis nec orci a, luctus gravida est. ', 'class-aptent-taciti-sociosqu-ad-litora', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('10', 'Aliquam sodales lacus varius, convallis odio id', 'Fusce lacinia pretium facilisis. Maecenas sed lectus id sapien vulputate ornare. Curabitur quis gravida turpis. Suspendisse id lectus ac magna ornare ultricies a non orci. Suspendisse potenti. Mauris id enim vitae nulla mollis imperdiet eget quis dui. Duis laoreet dolor eget lorem egestas, quis dignissim dui tempus. Morbi fermentum mi et nibh suscipit porta. Aenean scelerisque id augue vitae vestibulum. Aliquam sodales lacus varius, convallis odio id, dignissim purus. Fusce eu vestibulum ligula. Aenean sodales sem sit amet felis aliquam gravida. Duis lacus sem, varius nec arcu ac, venenatis iaculis urna. In sit amet arcu porttitor, rutrum enim in, ullamcorper nisi. Nam eget placerat odio. Fusce in porttitor turpis. ', 'aliquam-sodales-lacus-varius-convallis-odio-id', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('11', 'Curabitur placerat pharetra metus eu bibendum', 'Vivamus condimentum ultrices dignissim. Quisque pharetra pulvinar sem, in feugiat odio condimentum id. Sed lacinia nulla ac varius ultrices. Curabitur placerat pharetra metus eu bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mi lacus, bibendum at massa non, tempus dapibus sapien. Praesent sollicitudin bibendum dolor, a congue sapien fringilla non. Donec in dui dui. ', 'curabitur-placerat-pharetra-metus-eu-bibendum', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('12', 'Quisque et convallis nulla', 'Ut id turpis molestie, porta diam vel, dapibus odio. Donec quis magna aliquet, varius ipsum eu, adipiscing sem. Cras vestibulum risus vitae condimentum vehicula. Pellentesque auctor auctor mattis. Pellentesque sollicitudin, dolor sed adipiscing posuere, arcu tellus sollicitudin ipsum, vel suscipit velit turpis accumsan sem. Quisque mollis mollis volutpat. Cras volutpat mauris iaculis molestie ullamcorper. Quisque et convallis nulla. Ut tincidunt ut sapien vel venenatis. Aliquam erat volutpat. Sed mollis gravida nunc, at aliquet justo consectetur non. Quisque a tellus eget lorem lobortis semper sit amet sed urna. Cras facilisis pretium lorem, non placerat libero elementum sit amet. Donec felis risus, iaculis viverra mattis a, pharetra vitae purus. ', 'quisque-et-convallis-nulla', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('13', 'Vivamus blandit nisi pellentesque', 'Vivamus diam sem, volutpat in cursus sit amet, viverra nec libero. Nam vestibulum rutrum nulla, ac tristique nisl adipiscing vel. In pellentesque quam erat, nec ullamcorper purus pharetra in. Mauris placerat, eros vitae commodo vestibulum, nunc sapien laoreet turpis, a convallis metus massa a sapien. Curabitur arcu metus, laoreet pretium velit sed, faucibus scelerisque ligula. Suspendisse ut ornare nunc, eu fermentum libero. Vivamus blandit nisi pellentesque, ullamcorper leo dapibus, accumsan ante. Praesent justo ipsum, vestibulum a justo non, tincidunt ultricies quam. ', 'vivamus-blandit-nisi-pellentesque', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('14', 'Pellentesque id leo neque', 'Curabitur tempor justo eu risus convallis molestie. Quisque lectus purus, vulputate sed neque sed, gravida sollicitudin mauris. Phasellus risus lacus, placerat ut massa nec, dapibus rutrum ante. Phasellus eleifend laoreet iaculis. Nam volutpat justo a lectus eleifend aliquet. Pellentesque id leo neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed tempus laoreet dui in vulputate. Quisque in dapibus libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices lorem et enim facilisis, id imperdiet sem tempor. Vivamus pellentesque quam nec neque bibendum, egestas suscipit neque rutrum. Nam ornare, elit posuere pretium rutrum, tortor leo scelerisque erat, vel cursus metus magna eu libero. Sed interdum sed libero vel luctus. ', 'pellentesque-id-leo-neque', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('15', 'Sed id metus a ipsum bibendum sagittis', 'Phasellus accumsan sit amet neque interdum dapibus. Morbi consequat eros vel enim mattis, et rutrum neque consectetur. Suspendisse ultrices libero dignissim, facilisis est ut, tincidunt lacus. Curabitur ligula ligula, sodales eu faucibus vel, cursus et diam. Aliquam at neque et est venenatis ornare nec non lacus. Etiam quis lorem dolor. Vestibulum dictum lorem in nulla fermentum iaculis. In hac habitasse platea dictumst. Sed id metus a ipsum bibendum sagittis. Aenean mi purus, sollicitudin at convallis id, ultricies non neque. Nullam consectetur molestie diam, at lacinia libero imperdiet ac. Fusce lacinia tempus eros, non commodo libero scelerisque sit amet. Integer rhoncus molestie tristique. Pellentesque laoreet ultricies elit non rhoncus. Sed placerat sit amet enim at vulputate. Vivamus ornare quis diam id ultrices. ', 'sed-id-metus-a-ipsum-bibendum-sagittis', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('16', 'Maecenas dictum nulla turpis', 'Quisque eleifend sollicitudin velit. Mauris dictum, dolor at eleifend ullamcorper, risus erat tincidunt massa, vel pellentesque nisi nisi id ipsum. Nullam eu erat neque. Mauris a convallis neque, vitae semper libero. Praesent in cursus sapien, sed fermentum urna. Maecenas dictum nulla turpis, nec euismod nisi dictum eu. Suspendisse sollicitudin eros ipsum, ut sodales odio molestie vel. Nullam sed ante ut massa tempor suscipit. Quisque ac vehicula nulla, in fringilla mauris. Proin venenatis, velit ut tristique rhoncus, nulla orci molestie magna, quis gravida urna tortor in metus. Vestibulum non diam lacus. Donec elementum mattis massa, sit amet rhoncus odio dictum eu. Curabitur mattis risus non cursus auctor. ', 'maecenas-dictum-nulla-turpis', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('17', 'In ultricies in tortor sed pellentesque', 'Cras ac libero in ipsum rutrum placerat tincidunt nec turpis. Fusce rhoncus turpis at sem eleifend aliquam. Curabitur fringilla, ipsum in scelerisque laoreet, est ligula sagittis enim, vitae adipiscing dolor nisi ut dolor. Donec at risus imperdiet nisi blandit volutpat. In ultricies in tortor sed pellentesque. Phasellus nec elit in enim facilisis adipiscing ut eu orci. Quisque congue iaculis leo ac viverra. Pellentesque sagittis pellentesque ipsum, id blandit elit tempus eu. ', 'in-ultricies-in-tortor-sed-pellentesque', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('18', 'In hac habitasse platea dictumst', 'Sed quis felis aliquet, luctus erat non, congue dui. Integer imperdiet odio non lacus rhoncus fringilla. Sed at lacus sollicitudin tellus dignissim mollis vitae sed metus. Sed blandit nisi vitae risus commodo mollis. Ut metus lorem, luctus ut venenatis vitae, rutrum ut odio. Etiam viverra quis nunc sit amet vestibulum. Vestibulum fermentum mauris vel nisi rutrum faucibus. Quisque ac nibh at nunc facilisis pulvinar eu in leo. In hac habitasse platea dictumst. Nullam vulputate, sapien quis porta ultrices, erat lacus tincidunt felis, sit amet molestie leo dui a arcu. Sed convallis faucibus urna, venenatis pellentesque nibh placerat at. Aliquam et bibendum nisl. Ut ut cursus tellus. Nullam ut urna a mi accumsan ultrices. Suspendisse potenti. Aenean et bibendum augue, sed posuere mauris. ', 'in-hac-habitasse-platea-dictumst', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'vi');
INSERT INTO `news` VALUES ('19', 'Nullam sodales, purus quis pulvinar dapibus', 'Pellentesque commodo mollis porta. Fusce eget leo in massa elementum faucibus at et nunc. Pellentesque id metus vel ligula venenatis gravida. Nullam vitae sapien id nibh pellentesque ullamcorper vel in risus. Curabitur sed faucibus sapien. Pellentesque sodales leo in mi commodo volutpat. In tempor consectetur magna tincidunt iaculis. Nullam sodales, purus quis pulvinar dapibus, arcu tortor feugiat lectus, eu viverra est lorem aliquam eros. ', 'nullam-sodales-purus-quis-pulvinar-dapibus', '2016-03-28', '2016-03-28 16:20:20', '2016-03-28 16:20:20', '1', null, null, null, 'en');
INSERT INTO `news` VALUES ('20', 'Nội dung viết trên mục tiếng anh', '<p>nội dung nằm ở khu vực n&agrave;y nh&eacute;</p>\r\n', 'noi-dung-viet-tren-muc-tieng-anh', '2016-04-08', '2016-04-08 04:45:31', '2016-04-08 04:45:31', '1', '/uploads/news/Screenshot (1).png', 'Screenshot (1).png', '193452', 'en');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Về chúng tôi', 'hakkimizda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p>\r\n\r\n<p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros.</p>\r\n\r\n<p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit.</p>\r\n\r\n<p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat.</p>\r\n\r\n<p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante.</p>\r\n', '2016-03-28 16:20:22', '2016-04-15 07:35:04', '1', 'vi');
INSERT INTO `pages` VALUES ('2', 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.</p><p>Maecenas tincidunt auctor iaculis. Duis sed suscipit arcu. Cras iaculis felis eu tincidunt adipiscing. Proin et purus vel metus tincidunt dapibus. Praesent aliquet vel mauris ac egestas. Vivamus eu semper lectus, et facilisis mi. Cras at augue sem. Curabitur sagittis ante sed quam tristique interdum. Sed adipiscing arcu vulputate, ullamcorper sem ac, vulputate mauris. Fusce sit amet blandit lacus. Quisque pellentesque pharetra dignissim. Cras commodo ullamcorper nibh. Nam consequat tellus sapien, at iaculis nulla euismod vel. Sed interdum nisl ac justo consequat porta sit amet quis arcu. Quisque ipsum turpis, condimentum a tortor at, lacinia placerat eros. </p><p>Donec mauris eros, viverra nec lorem et, eleifend elementum odio. Nullam auctor nisl quam, quis fringilla justo aliquet at. Cras sed imperdiet libero, eu semper magna. Ut tincidunt dui ac arcu accumsan, vitae pellentesque dolor aliquet. Curabitur porttitor ipsum id pulvinar convallis. Praesent id leo a lectus faucibus elementum. Vestibulum vehicula tincidunt odio ac hendrerit. </p><p>Suspendisse sit amet interdum neque. Cras sed nisl a lectus venenatis pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sed vulputate enim. Etiam eu metus in neque accumsan molestie eu at nunc. Sed porta feugiat metus, in tincidunt diam eleifend non. Vivamus placerat quis quam non dapibus. Maecenas sodales enim at est porttitor, at scelerisque nulla eleifend. Vivamus vel leo in nulla iaculis posuere. Pellentesque ipsum massa, ullamcorper sed neque vel, pretium placerat lectus. Phasellus non leo erat. </p><p>Maecenas rutrum congue orci, a vestibulum enim varius sed. Donec vestibulum pellentesque nunc, eget condimentum tellus iaculis sit amet. Donec condimentum lacus a lorem convallis, in venenatis arcu tincidunt. In feugiat erat purus, non ultricies diam eleifend at. Phasellus massa felis, ullamcorper in ullamcorper sed, consectetur consequat nulla. Aliquam scelerisque nec dolor at lobortis. Vivamus convallis erat ac suscipit aliquet. Maecenas congue ut felis vitae gravida. Nam scelerisque suscipit neque, at elementum lorem interdum sed. Maecenas ac interdum metus, eget mattis diam. Donec congue feugiat sollicitudin. Aliquam id porttitor massa, ac mattis quam. Donec vitae elit sed ante sodales ultricies sed quis ipsum. Nam dui quam, interdum non nisi eu, consectetur accumsan urna. Integer quis enim tincidunt, dictum nisi feugiat, placerat ante. Quisque a urna id odio mollis mattis ac at ante. </p>', '2016-03-28 16:20:22', '2016-03-28 16:20:22', '1', 'en');

-- ----------------------------
-- Table structure for `partners`
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of partners
-- ----------------------------
INSERT INTO `partners` VALUES ('1', 'Viettel', 'Viettel Group', '/uploads/partner/viettel-250x250.jpg', 'viettel-250x250.jpg', '10200', '1', 'vi', '2016-03-28 16:20:27', '2016-04-27 02:43:52', '1');
INSERT INTO `partners` VALUES ('2', 'Mobiphone', 'mobiphone', '/uploads/partner/mobifone.jpg', 'mobifone.jpg', '7052', '2', 'vi', '2016-03-28 16:20:27', '2016-04-27 03:03:13', '1');
INSERT INTO `partners` VALUES ('3', 'Vinaphone', 'Không ngừng vươn xa', '/uploads/partner/vinaphone.jpg', 'vinaphone.jpg', '10412', '3', 'vi', '2016-03-28 16:20:27', '2016-04-27 02:59:54', '1');
INSERT INTO `partners` VALUES ('4', 'Vega', 'VEGA', '/uploads/partner/vega.png', 'vega.png', '32151', '4', 'vi', '2016-03-28 16:20:27', '2016-04-27 03:12:41', '1');
INSERT INTO `partners` VALUES ('5', 'FPT', 'FPT', '/uploads/partner/FPT.jpeg', 'FPT.jpeg', '45158', '5', 'vi', '2016-03-28 16:20:27', '2016-04-26 11:16:22', '1');
INSERT INTO `partners` VALUES ('6', 'Zed', 'ZED', '/uploads/partner/zed.png', 'zed.png', '5182', '6', 'vi', '2016-03-28 16:20:27', '2016-04-27 03:12:11', '1');
INSERT INTO `partners` VALUES ('7', 'VcpMC', 'VCPMC', '/uploads/partner/vcpmc.jpg', 'vcpmc.jpg', '33440', '7', 'vi', '2016-03-28 16:20:27', '2016-04-27 03:12:23', '1');
INSERT INTO `partners` VALUES ('11', 'Aenean', 'Aenean ornare erat sed semper gravida', '/uploads/slider/Slider1.jpg', 'Slider1.jpg', '51235', '9', 'en', '2016-03-28 16:20:27', '2016-04-26 10:25:10', '1');
INSERT INTO `partners` VALUES ('12', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '/uploads/slider/nw-ban.png', 'nw-ban.png', '357902', '10', 'en', '2016-03-28 16:20:27', '2016-04-26 10:25:11', '1');
INSERT INTO `partners` VALUES ('13', 'Nhân hòa', 'To be the best', '/uploads/partner/Logo-nhan-Hoa.png', 'Logo-nhan-Hoa.png', '11030', '0', 'vi', '2016-04-27 02:46:46', '2016-04-27 03:13:23', '1');
INSERT INTO `partners` VALUES ('14', 'Sun media', '', '/uploads/partner/sunmedia.jpg', 'sunmedia.jpg', '31904', '0', 'vi', '2016-04-27 03:11:59', '2016-04-27 03:13:35', '1');

-- ----------------------------
-- Table structure for `persistences`
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('1', '1', 'x5SJS8bzyH9eXKLjCsgDbq6hla0OLgvl', '2016-03-28 16:22:10', '2016-03-28 16:22:10');
INSERT INTO `persistences` VALUES ('2', '1', '6XqNvr6VIMyydRSrDJtJ9cEiIIFpnWS4', '2016-03-29 10:23:46', '2016-03-29 10:23:46');
INSERT INTO `persistences` VALUES ('3', '1', 'OciEEwQJjXCzQIlJDqUTYlePu4QWhVd2', '2016-04-08 03:16:34', '2016-04-08 03:16:34');
INSERT INTO `persistences` VALUES ('4', '1', 'nTUUXzNIH19K3Tj6f55rixTUNhFuY55U', '2016-04-08 07:34:10', '2016-04-08 07:34:10');
INSERT INTO `persistences` VALUES ('5', '1', 'QslqbiM40JiE4qAvpsbQ3N9atAXKxBeF', '2016-04-11 03:55:13', '2016-04-11 03:55:13');
INSERT INTO `persistences` VALUES ('6', '1', 'HOHKykt8vnON8HcHUBjyLJQqMSEcBTLB', '2016-04-11 08:49:26', '2016-04-11 08:49:26');
INSERT INTO `persistences` VALUES ('7', '1', 'YaGYRkpMd3167myJE0zGtfA8ILOqoBA2', '2016-04-12 09:19:15', '2016-04-12 09:19:15');
INSERT INTO `persistences` VALUES ('9', '1', 'kMGJuxtx1Dk6BQkSxXcaPDMVRmVgBCNJ', '2016-04-13 08:19:38', '2016-04-13 08:19:38');
INSERT INTO `persistences` VALUES ('10', '2', 'cFvds5g6yNcdmbllqjgyzinWtxRJBHtc', '2016-04-14 01:51:44', '2016-04-14 01:51:44');
INSERT INTO `persistences` VALUES ('11', '1', '7xkA0eQ0Egj5M0aTtvIaiBzkySNQNUoD', '2016-04-14 06:50:11', '2016-04-14 06:50:11');
INSERT INTO `persistences` VALUES ('12', '1', 'khWuKiufHeyxTwaE6ZSRaeJ1tqlmerGl', '2016-04-14 09:31:58', '2016-04-14 09:31:58');
INSERT INTO `persistences` VALUES ('13', '1', 'FYCToIcRcNqyjuYKKKadQ5fKq1ch7KcZ', '2016-04-15 02:13:52', '2016-04-15 02:13:52');
INSERT INTO `persistences` VALUES ('14', '1', 'O5YNetvvCVfRgLCaER8YTjxsHr2kLRyW', '2016-04-15 02:57:50', '2016-04-15 02:57:50');
INSERT INTO `persistences` VALUES ('15', '1', 'Bqu1cMPbUSvuSVorA0acg1qUViaGzhWb', '2016-04-15 07:01:14', '2016-04-15 07:01:14');
INSERT INTO `persistences` VALUES ('16', '2', 'w740Ys0M9bHGrltIzSN6bShqe8H6eRCJ', '2016-04-15 09:58:11', '2016-04-15 09:58:11');
INSERT INTO `persistences` VALUES ('17', '1', '9wTXlAPxkCiyMLxpiyodGApBi4zv58yq', '2016-04-24 17:44:23', '2016-04-24 17:44:23');
INSERT INTO `persistences` VALUES ('18', '1', 'CogSzLu1O07wBffIgoYDZmaaidojdo9P', '2016-04-25 01:48:04', '2016-04-25 01:48:04');
INSERT INTO `persistences` VALUES ('19', '1', 'tSBqDSciWpltEYpCDsmvfyEx5d7oQZvh', '2016-04-25 07:52:17', '2016-04-25 07:52:17');
INSERT INTO `persistences` VALUES ('20', '1', 'SdDtxtHORheLbeam4FOxVtgWoFvGJkfJ', '2016-04-26 02:21:06', '2016-04-26 02:21:06');
INSERT INTO `persistences` VALUES ('21', '1', '4b9tcfXRbdOyUeeVkmIKe5GhqTtlzR7m', '2016-04-26 08:26:53', '2016-04-26 08:26:53');
INSERT INTO `persistences` VALUES ('22', '1', 'GIjj76Vnp7TUUaiDZEjqF7s6o4gabM5J', '2016-04-27 00:57:29', '2016-04-27 00:57:29');
INSERT INTO `persistences` VALUES ('24', '1', 'pvLUSts70PLROaexvmpRSiA7X05pqmN8', '2016-04-27 08:26:02', '2016-04-27 08:26:02');

-- ----------------------------
-- Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relationship_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('1', 'Screenshot (1).png', 'Screenshot (1)', '/uploads/dropzone/Screenshot (1).png', '193452', 'Fully\\Models\\PhotoGallery', '2');

-- ----------------------------
-- Table structure for `photo_galleries`
-- ----------------------------
DROP TABLE IF EXISTS `photo_galleries`;
CREATE TABLE `photo_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo_galleries
-- ----------------------------
INSERT INTO `photo_galleries` VALUES ('1', 'Fotoğraf Galerisi', 'fotograf-galerisi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In scelerisque eget tellus et tempor. Nulla vel lectus aliquam, tempus massa ornare, fermentum tellus. Maecenas in enim sed libero ultrices tincidunt. Ut turpis ante, facilisis a fringilla rhoncus, ornare quis ipsum. Nullam erat ligula, imperdiet vel neque ac, facilisis tempor est. Morbi nec volutpat turpis. Quisque blandit justo ut diam ultrices, id lobortis nunc molestie. Donec a leo at enim pretium vehicula eu non lorem. Cras consequat, arcu nec facilisis hendrerit, metus lacus malesuada nibh, a consequat nulla est et est. In cursus, lorem eu vehicula rhoncus, justo quam bibendum eros, ut iaculis nisi nisl at velit. Aliquam massa massa, sodales et nunc vitae, ullamcorper egestas est. Mauris iaculis convallis libero, a scelerisque dolor ornare ut. Pellentesque blandit in eros ut interdum. Nulla luctus condimentum dignissim. Pellentesque nec consectetur erat, accumsan cursus urna.', '2016-03-28 16:20:22', '2016-03-28 16:20:22', '1', 'vi');
INSERT INTO `photo_galleries` VALUES ('2', 'Photo Gallery Title', 'photo-gallery-title', '<p>Photo Gallery Content</p>\r\n', '2016-04-13 08:23:04', '2016-04-13 08:29:42', '1', 'en');

-- ----------------------------
-- Table structure for `projects`
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'lorem-ipsum-dolor', '', '', '0', 'en', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('2', 'Nullam sapien urna', 'Nullam sapien urna, volutpat vel tempus ac, porttitor sed lorem', 'nullam-sapien-urna', '', '', '0', 'en', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('3', 'Nunc fringilla', 'Nunc fringilla ut purus non pellentesque. Integer eget risus nunc', 'nunc-fringilla', '', '', '0', 'en', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', 'morbi-commodo', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', 'suspendisse', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', 'vestibulum', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', 'donec-lobortis-pulvinar-faucibus', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', 'phasellus-tempor-ut-ligula-eget-porta', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', 'aenean', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `projects` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', 'mauris-dapibus-tellus', '', '', '0', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');

-- ----------------------------
-- Table structure for `reminders`
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reminders
-- ----------------------------

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'superadmin', 'SuperAdmin', null, '2016-03-28 16:15:03', '2016-03-28 16:15:03');

-- ----------------------------
-- Table structure for `role_users`
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1', '2016-03-28 16:15:03', '2016-03-28 16:15:03');
INSERT INTO `role_users` VALUES ('2', '1', '2016-03-28 16:15:04', '2016-03-28 16:15:04');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', '{\"site_title\":\"CATCOM - C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n c\\u00f4ng ngh\\u1ec7 v\\u00e0 truy\\u1ec1n th\\u00f4ng\",\"ga_code\":\"UA-76417141-1\",\"meta_keywords\":\"outsource, c\\u00f4ng ty c\\u00f4ng ngh\\u1ec7, c\\u00f4ng ty truy\\u1ec1n th\\u00f4ng, c\\u00f4ng ngh\\u1ec7 v\\u00e0 truy\\u1ec1n th\\u00f4ng, c\\u00f4ng ty vi\\u1ec5n th\\u00f4ng\",\"meta_description\":\" C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n c\\u00f4ng ngh\\u1ec7 v\\u00e0 truy\\u1ec1n th\\u00f4ng\",\"cc_name\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n truy\\u1ec1n th\\u00f4ng Catcom\",\"cc_address\":\"t\\u00f2a B3C, K\\u0110T Nam Trung Y\\u00ean, Trung H\\u00f2a, C\\u1ea7u Gi\\u1ea5y, Ha N\\u1ed9i, VN\",\"cc_phone\":\"+84 (91) 6868689\",\"cc_contact\":\"Mr Pham Le Minh\",\"facebook\":\"http:\\/\\/facebook.com\\/catcomvn\",\"twitter\":\"\",\"google_plus\":\"\",\"youtube\":\"\",\"linkedin\":\"\",\"pinterest\":\"\",\"flickr\":\"\"}', '2016-03-28 16:20:23', '2016-04-26 04:42:17', 'vi');
INSERT INTO `settings` VALUES ('2', '{\"site_title\":\"CATCOM - Technology and communication JSC\",\"ga_code\":\"UA-76417141-1\",\"meta_keywords\":\"outsource, technology company, communication company, technology and communication, communication\",\"meta_description\":\"Technology and communication JSC\",\"facebook\":\"http:\\/\\/facebook.com\\/catcomvn\",\"twitter\":\"\",\"google_plus\":\"\",\"youtube\":\"\",\"linkedin\":\"\",\"pinterest\":\"\",\"flickr\":\"\",\"cc_name\":\"Catcom JSC.\",\"cc_address\":\"B3C Building, Nam Trung Yen urban, Trung Hoa, Cau Giay Dist, Hanoi, VN\",\"cc_phone\":\"+84 (91) 6868689\",\"cc_contact\":\"Mr Pham Le Minh\"}', '2016-04-15 10:00:48', '2016-04-25 08:33:41', 'en');

-- ----------------------------
-- Table structure for `sliders`
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'UBon', 'all in one, chat, call, social', '', '/uploads/slider/ubon-slider.jpg', 'ubon-slider.jpg', '220901', '1', 'vi', '2016-03-28 16:20:27', '2016-04-27 04:26:48', '1');
INSERT INTO `sliders` VALUES ('2', 'Communication', 'Kết nối thế giới', '', '/uploads/slider/slider2.png', 'slider2.png', '306206', '2', 'vi', '2016-03-28 16:20:27', '2016-04-27 04:27:51', '1');
INSERT INTO `sliders` VALUES ('3', 'Touch', 'Build by touch', '', '/uploads/slider/building-automation-1400x600.jpg', 'building-automation-1400x600.jpg', '173912', '3', 'vi', '2016-03-28 16:20:27', '2016-04-27 04:29:24', '1');
INSERT INTO `sliders` VALUES ('4', 'Morbi commodo', 'Morbi commodo massa at facilisis dignissim', '', '/uploads/slider/slider_4.jpg', 'slider_4.jpg', '335322', '4', 'vi', '2016-03-28 16:20:27', '2016-03-28 16:20:27', '0');
INSERT INTO `sliders` VALUES ('5', 'Suspendisse', 'Suspendisse enim eros, egestas quis risus eu, vulputate dignissim nisl', '', '/uploads/slider/slider_5.jpg', 'slider_5.jpg', '698727', '5', 'vi', '2016-03-28 16:20:27', '2016-03-28 16:20:27', '0');
INSERT INTO `sliders` VALUES ('6', 'Vestibulum', 'Vestibulum nec nisi feugiat, scelerisque urna ac, blandit nibh', '', '/uploads/slider/slider_6.jpg', 'slider_6.jpg', '844577', '6', 'vi', '2016-03-28 16:20:27', '2016-03-28 16:20:27', '0');
INSERT INTO `sliders` VALUES ('7', 'Donec lobortis pulvinar faucibus', 'Donec lobortis pulvinar faucibus. Etiam interdum justo eu dolor vulputate, at condimentum dolor faucibus', '', '/uploads/slider/slider_7.jpg', 'slider_7.jpg', '503064', '7', 'vi', '2016-03-28 16:20:27', '2016-03-28 16:20:27', '0');
INSERT INTO `sliders` VALUES ('8', 'Phasellus tempor ut ligula eget porta', 'Phasellus tempor ut ligula eget porta. Maecenas elementum iaculis ante, ut mattis lorem semper vel', '', '/uploads/slider/slider_8.jpg', 'slider_8.jpg', '623998', '8', 'vi', '2016-03-28 16:20:27', '2016-03-28 16:20:27', '0');
INSERT INTO `sliders` VALUES ('9', 'Aenean', 'Aenean ornare erat sed semper gravida', '', '/uploads/slider/Slider1.jpg', 'Slider1.jpg', '51235', '9', 'vi', '2016-03-28 16:20:27', '2016-04-15 02:59:14', '0');
INSERT INTO `sliders` VALUES ('10', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '', '/uploads/slider/banner-05.jpg', 'banner-05.jpg', '191550', '10', 'vi', '2016-03-28 16:20:27', '2016-04-15 02:59:53', '0');
INSERT INTO `sliders` VALUES ('11', 'Aenean', 'Aenean ornare erat sed semper gravida', '', '/uploads/slider/Slider1.jpg', 'Slider1.jpg', '51235', '9', 'en', '2016-03-28 16:20:27', '2016-04-15 03:00:16', '0');
INSERT INTO `sliders` VALUES ('12', 'Mauris dapibus tellus', 'Mauris dapibus tellus eu orci vulputate, hendrerit venenatis augue dictum', '', '/uploads/slider/nw-ban.png', 'nw-ban.png', '357902', '10', 'en', '2016-03-28 16:20:27', '2016-04-15 03:00:46', '0');
INSERT INTO `sliders` VALUES ('13', 'Banner 001', 'Description for banner 001', '', '/uploads/slider/01.jpg', '01.jpg', '157472', '0', 'en', '2016-04-15 02:16:29', '2016-04-27 09:37:04', '1');
INSERT INTO `sliders` VALUES ('14', 'Banner 002', 'Description banner 002', '', '/uploads/slider/nw-ban1.png', 'nw-ban1.png', '245393', '0', 'en', '2016-04-15 03:45:54', '2016-04-24 17:45:27', '1');

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'PHP', 'php', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('2', 'Laravel', 'laravel', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('3', 'Mysql', 'mysql', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('4', 'Oracle', 'oracle', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('5', 'MongoDB', 'mongodb', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('6', 'Redis', 'redis', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('7', 'Memcache', 'memcache', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('8', 'APC', 'apc', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('9', 'JSON', 'json', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('10', 'XML', 'xml', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('11', 'Ajax', 'ajax', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('12', 'HTML', 'html', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('13', 'CSS', 'css', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('14', 'Javascript', 'javascript', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'vi');
INSERT INTO `tags` VALUES ('15', 'Redis', 'redis', '2016-03-28 16:20:20', '2016-03-28 16:20:20', 'en');

-- ----------------------------
-- Table structure for `throttle`
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', null, 'global', null, '2016-04-13 02:35:35', '2016-04-13 02:35:35');
INSERT INTO `throttle` VALUES ('2', null, 'ip', '127.0.0.1', '2016-04-13 02:35:35', '2016-04-13 02:35:35');
INSERT INTO `throttle` VALUES ('3', '1', 'user', null, '2016-04-13 02:35:35', '2016-04-13 02:35:35');
INSERT INTO `throttle` VALUES ('4', null, 'global', null, '2016-04-13 02:35:45', '2016-04-13 02:35:45');
INSERT INTO `throttle` VALUES ('5', null, 'ip', '127.0.0.1', '2016-04-13 02:35:45', '2016-04-13 02:35:45');
INSERT INTO `throttle` VALUES ('6', '1', 'user', null, '2016-04-13 02:35:46', '2016-04-13 02:35:46');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'congnt@catcom.vn', '$2y$10$qN2EfJtEPKxsXqlAeKk9ru0kkXPjWyY8dFDealGtkYY5FN9wm9IfG', null, '2016-04-27 08:26:02', 'Cong', 'Nguyen', '2016-03-28 16:15:03', '2016-04-27 08:26:02');
INSERT INTO `users` VALUES ('2', 'admin@admin.com', '$2y$10$qN2EfJtEPKxsXqlAeKk9ru0kkXPjWyY8dFDealGtkYY5FN9wm9IfG', null, '2016-04-15 09:58:11', 'Super', 'Admin', '2016-03-28 16:15:04', '2016-04-15 09:58:11');

-- ----------------------------
-- Table structure for `videos`
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', 'Painless Billing With Laravel and Stripe', 'painless-billing-with-laravel-and-stripe', 'k9KKjxEq0Lg', 'youtube', 'en', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('2', 'Using Eloquent Outside of Laravel', 'using-eloquent-outside-of-laravel', 'L0g9ka5qaCc', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('3', 'Fast Laravel Workflow With Generators', 'fast-laravel-workflow-with-generators', 'rmtjulbbSmY', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('4', 'Laravel Envoy', 'laravel-envoy', 'ZI9vzxvERGI', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('5', 'PSR 4 Autoloading', 'psr-4-autoloading', 'FzdhnbM_0ug', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('6', 'Gulp This', 'gulp-this', '6Jhgkp67GxI', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('7', 'Test Databases In Memory (with Laravel)', 'test-databases-in-memory-with-laravel', 'NB9KfQiHJO0', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('8', 'Welcome to the Laravel Community', 'welcome-to-the-laravel-community', '2_BKIhjHwS8', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('9', 'Crazy Simple Pagination in Laravel', 'crazy-simple-pagination-in-laravel', 'lIEcyOUcNQk', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('10', 'Better Error Monitoring with Bugsnag and Laravel', 'better-error-monitoring-with-bugsnag-and-laravel', 'r4gK5uynk2s', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('11', 'Laravel Basic Authentication in 4 Minutes', 'laravel-basic-authentication-in-4-minutes', 'FqDomWno2C0', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('12', 'Understanding Fortrabbit Deployment Files', 'understanding-fortrabbit-deployment-files', 'YvJiKI4IQ0Q', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('13', 'Laravel - How to Tail Log Files', 'laravel-how-to-tail-log-files', 'lP5yFWAt8Nk', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('14', 'Laravel and the N+1 Problem', 'laravel-and-the-n1-problem', 'swhWRMkpVsg', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('15', 'Laravel Artisan Commands 101', 'laravel-artisan-commands-101', 'BviKET-QTEQ', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('16', 'Form Model Binding in Laravel', 'form-model-binding-in-laravel', 'EJwxG3b9j9c', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('17', 'C Tags', 'c-tags', 'cE7jSTdE_uQ', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('18', 'View Composers in Laravel', 'view-composers-in-laravel', 'X8yqmZtKOoY', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('19', 'Laravel - Understanding REST', 'laravel-understanding-rest', 'rD82cZjTUZs', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('20', 'Laravel Queues With Iron and Fortrabbit', 'laravel-queues-with-iron-and-fortrabbit', 'yeDCIognMRs', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('21', 'Namespacing Primer (with Laravel)', 'namespacing-primer-with-laravel', 'yAzd7Ig1Wgg', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('22', 'From Zero to Deploy with Laravel', 'from-zero-to-deploy-with-laravel', '8rblX6Ta1-U', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('23', 'Laravel Setup For Newbs', 'laravel-setup-for-newbs', '9AU2QvkqkBM', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('24', 'Laravel Caching Ins and Outs', 'laravel-caching-ins-and-outs', 'Hl4-dftfc0o', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('25', 'Laravel Authentication Essentials', 'laravel-authentication-essentials', 'msEwmVZ4wp4', 'youtube', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('26', 'Laravel 4 Update', 'laravel-4-update', '63892510', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('27', 'Laravel 4 - Iron.io Push Queues & Closures', 'laravel-4-ironio-push-queues-closures', '64703617', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('28', 'Laravel 4 - IoC Controller Injection & Unit Testing', 'laravel-4-ioc-controller-injection-unit-testing', '53029232', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('29', 'Laravel 4 - Mail::queue and Mail::later', 'laravel-4-mailqueue-and-maillater', '64779946', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('30', 'Laravel 4 - Eloquent Collections & Polymorphic Relations', 'laravel-4-eloquent-collections-polymorphic-relations', '53183075', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('31', 'Laravel 4 - Controllers & Filters', 'laravel-4-controllers-filters', '52964368', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('32', 'Laravel 4 - IoC Container Basics', 'laravel-4-ioc-container-basics', '53009943', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('33', 'Laravel 4 - Error Handling', 'laravel-4-error-handling', '53445935', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('34', 'Laravel 4 - Mail', 'laravel-4-mail', '53701740', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('35', 'Laravel 4 - Migrations & Seeding', 'laravel-4-migrations-seeding', '53701204', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('36', 'Laracon (Day 1: Talk 2) Jeffrey Way', 'laracon-day-1-talk-2-jeffrey-way', '61104599', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('37', 'Laracon (Day 1: Talk 1) Taylor Otwell', 'laracon-day-1-talk-1-taylor-otwell', '61063778', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('38', 'Laracon (Day 1 Talk 3) Kenny Meyers', 'laracon-day-1-talk-3-kenny-meyers', '61269747', 'vimeo', 'vi', '2016-03-28 16:20:25', '2016-03-28 16:20:25');
INSERT INTO `videos` VALUES ('39', 'Tuyển tập Lam Trường', 'tuyen-tap-lam-truong', 'IvYZDJXbDA8', 'youtube', 'en', '2016-04-13 09:30:45', '2016-04-13 09:30:45');
