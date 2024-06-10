/*
 Navicat Premium Data Transfer

 Source Server         : 3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : db_ssm_forum

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 21/08/2020 22:26:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jxust_bankuai
-- ----------------------------
DROP TABLE IF EXISTS `jxust_bankuai`;
CREATE TABLE `jxust_bankuai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` int(11) NULL DEFAULT NULL,
  `orderby` int(11) NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `fatiegroup` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `huifugroup` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `findgroup` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yuming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_bankuai
-- ----------------------------
INSERT INTO `jxust_bankuai` VALUES (1, '编程技术交流', '20200310/2020031010543819216818.PNG', NULL, '', 0, 1, '2017-07-26 13:44:15', 1, '', '', '', 'bianchengjishujiaoliu');
INSERT INTO `jxust_bankuai` VALUES (2, 'Java交流版块', '20200310/2020031011122212865597.JPG', NULL, '这里是Java交流版块，有关Java的技术大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 1, 1, '2017-07-26 13:44:25', 1, '', '', '', 'Javajiaoliubankuai');
INSERT INTO `jxust_bankuai` VALUES (3, 'python交流版块', '20200310/2020031011132609360072.JPG', NULL, '这里是Python交流版块，有关Python的技术大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 1, 2, '2017-08-11 16:49:53', 1, '', '', '', 'pythonjiaoliubankuai');
INSERT INTO `jxust_bankuai` VALUES (4, 'php交流版块', '20200310/2020031011141540999857.JPG', NULL, '这里是PHP交流版块，有关PHP的技术大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 1, 3, '2017-08-14 19:57:45', 1, '', '', '', 'phpjiaoliubankuai');
INSERT INTO `jxust_bankuai` VALUES (6, 'Android技术交流', '20200310/2020031014512949073749.JPG', NULL, '这里是Android交流版块，有关Android的技术大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 1, 5, '2020-03-10 14:51:00', 1, '', '', '', 'Androidjishujiaoliu');
INSERT INTO `jxust_bankuai` VALUES (7, 'ios技术交流', '20200310/2020031014524749976589.JPG', NULL, '这里是IOS交流版块，有关IOS的技术大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 1, 6, '2020-03-10 14:53:01', 1, '', '', '', 'iosjishujiaoliu');
INSERT INTO `jxust_bankuai` VALUES (8, '面试心得交流', '20200310/2020031014545798963545.JPG', NULL, '这里是面试交流版块，有关面试的心得体会大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 0, 2, '2020-03-10 14:55:29', 1, '', '', '', 'mianshixindejiaoliu');
INSERT INTO `jxust_bankuai` VALUES (9, '笔试交流版块', '20200310/2020031015034479073918.JPG', NULL, '这里是笔试交流版块，有关面试题目的心得体会大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 8, 7, '2020-03-10 14:57:03', 1, '', '', '', 'bishijiaoliubankuai');
INSERT INTO `jxust_bankuai` VALUES (10, '面试交流版块', '20200310/2020031015043973569275.JPG', NULL, '这里是面试交流版块，有关面试题目的心得体会大家可以在这里发言交流，请勿发表广告、骂人等垃圾帖子，否则将封禁账号。文明发帖，好好学习，天天向上！', 8, 8, '2020-03-10 15:04:53', 1, '', '', '', 'mianshijiaoliubankuai');

-- ----------------------------
-- Table structure for jxust_group
-- ----------------------------
DROP TABLE IF EXISTS `jxust_group`;
CREATE TABLE `jxust_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_group
-- ----------------------------
INSERT INTO `jxust_group` VALUES (1, '超级管理员', '2017-05-09', 1, '1', '1');
INSERT INTO `jxust_group` VALUES (2, '版主组', '2017-05-09', 1, '1', '1');
INSERT INTO `jxust_group` VALUES (3, '普通会员', '2017-05-09', 1, '1', '1');

-- ----------------------------
-- Table structure for jxust_group_user
-- ----------------------------
DROP TABLE IF EXISTS `jxust_group_user`;
CREATE TABLE `jxust_group_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `groupid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of jxust_group_user
-- ----------------------------
INSERT INTO `jxust_group_user` VALUES (1, 1, 1);
INSERT INTO `jxust_group_user` VALUES (2, 2, 3);
INSERT INTO `jxust_group_user` VALUES (3, 3, 3);
INSERT INTO `jxust_group_user` VALUES (4, 4, 3);

-- ----------------------------
-- Table structure for jxust_huifu
-- ----------------------------
DROP TABLE IF EXISTS `jxust_huifu`;
CREATE TABLE `jxust_huifu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) NULL DEFAULT NULL,
  `huifuid` int(11) NULL DEFAULT NULL,
  `contenthtml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `contenttxt` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `lastupdate` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderby` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jbbs_huifu_tieziid_index`(`tieziid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_huifu
-- ----------------------------
INSERT INTO `jxust_huifu` VALUES (1, 1, NULL, '<p>hello</p>', 'hello', '2017-08-10 15:49:01', 1, NULL, '0', 1);
INSERT INTO `jxust_huifu` VALUES (2, 1, NULL, '<p>啦啦啦</p>', '啦啦啦', '2017-08-10 15:50:01', 2, NULL, '1', 2);
INSERT INTO `jxust_huifu` VALUES (3, 1, NULL, '<p><em><span style=\"font-size: 16px; color: rgb(192, 80, 77);\"><strong>嗯 不错嘛！</strong></span></em></p>', '嗯 不错嘛！', '2020-03-20 10:44:02', 2, NULL, '0', 3);
INSERT INTO `jxust_huifu` VALUES (4, 1, 3, '<p>瓜娃子！</p>', '瓜娃子！', '2020-03-20 10:44:17', 2, NULL, '0', 4);
INSERT INTO `jxust_huifu` VALUES (5, 1, 4, '<p>Java教程在哪？</p>', 'Java教程在哪？', '2020-03-20 10:44:52', 2, NULL, '0', 5);
INSERT INTO `jxust_huifu` VALUES (6, 2, NULL, '<p>还可以哈！</p>', '还可以哈！', '2020-03-20 15:05:52', 2, NULL, '0', 1);
INSERT INTO `jxust_huifu` VALUES (7, 2, NULL, '嗯 真的好！', '嗯 真的好！', '2020-03-20 15:07:29', 2, NULL, '0', 2);
INSERT INTO `jxust_huifu` VALUES (8, 3, NULL, '<p>教程下载地址：<a href=\"https://www.yuanlrc.com/product/details.html?pid=245\">https://www.yuanlrc.com/product/details.html?pid=245</a></p>', '教程下载地址：https://www.yuanlrc.com/product/details.html?pid=245', '2020-03-30 16:35:01', 2, NULL, '0', 1);
INSERT INTO `jxust_huifu` VALUES (9, 3, NULL, '<p>这个可以免费下载吗？</p>', '这个可以免费下载吗？', '2020-03-30 16:42:37', 3, NULL, '1', 2);
INSERT INTO `jxust_huifu` VALUES (10, 3, NULL, '<p>这个可以免费下载吗？</p>', '这个可以免费下载吗？', '2020-03-30 16:42:56', 3, NULL, '0', 3);
INSERT INTO `jxust_huifu` VALUES (12, 6, NULL, '<p>还不错的，我用过。</p>', '还不错的，我用过。', '2020-04-03 10:20:53', 3, NULL, '0', 1);
INSERT INTO `jxust_huifu` VALUES (13, 6, NULL, '<p>在猿来入此beta上有php的教程哦！</p>', '在猿来入此beta上有php的教程哦！', '2020-04-03 10:26:21', 1, NULL, '0', 2);

-- ----------------------------
-- Table structure for jxust_info
-- ----------------------------
DROP TABLE IF EXISTS `jxust_info`;
CREATE TABLE `jxust_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indextitle` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logoimg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foothtml` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_info
-- ----------------------------
INSERT INTO `jxust_info` VALUES (1, '技术交流论文', '技术交流论文', '技术交流论文', '技术交流论文', '20200310/2020031014460616912847.JPG', '');

-- ----------------------------
-- Table structure for jxust_inner_link
-- ----------------------------
DROP TABLE IF EXISTS `jxust_inner_link`;
CREATE TABLE `jxust_inner_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `innerlink` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isuse` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_inner_link
-- ----------------------------
INSERT INTO `jxust_inner_link` VALUES (1, 'beata', 'http://www.yuanlrc.com', '0', '1', 1, '2020-04-03 10:50:32');

-- ----------------------------
-- Table structure for jxust_jifen
-- ----------------------------
DROP TABLE IF EXISTS `jxust_jifen`;
CREATE TABLE `jxust_jifen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) NULL DEFAULT NULL,
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fenshu` int(11) NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL,
  `operateuserid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_jifen
-- ----------------------------
INSERT INTO `jxust_jifen` VALUES (1, NULL, '每天第一次登录您获得2积分', '104', '2017-08-10 15:25:20', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (2, NULL, '每天第一次登录您获得2积分', '104', '2017-08-10 15:46:09', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (3, NULL, '您发布了帖子获得2积分', '101', '2017-08-10 15:48:43', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (4, NULL, '您回复了帖子获得1积分', '102', '2017-08-10 15:49:01', 1, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (5, NULL, '您发布了帖子获得2积分', '101', '2017-08-10 15:49:49', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (6, NULL, '您回复了帖子获得1积分', '102', '2017-08-10 15:50:01', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (7, NULL, '每天第一次登录您获得2积分', '104', '2017-08-11 15:52:34', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (8, NULL, '您的帖子被设置为精华获得5积分', '103', '2017-08-11 16:54:21', 5, NULL, 1);
INSERT INTO `jxust_jifen` VALUES (9, NULL, '每天第一次登录您获得2积分', '104', '2017-08-14 19:55:31', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (10, NULL, '每天第一次登录您获得2积分', '104', '2020-03-06 11:16:03', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (11, NULL, '每天第一次登录您获得2积分', '104', '2020-03-10 10:24:49', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (12, NULL, '每天第一次登录您获得2积分', '104', '2020-03-10 15:09:02', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (13, NULL, '每天第一次登录您获得2积分', '104', '2020-03-18 15:25:40', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (14, NULL, '每天第一次登录您获得2积分', '104', '2020-03-19 15:33:00', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (15, NULL, '每天第一次登录您获得2积分', '104', '2020-03-19 16:00:58', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (16, NULL, '每天第一次登录您获得2积分', '104', '2020-03-20 10:42:49', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (17, NULL, '您回复了帖子获得1积分', '102', '2020-03-20 10:44:02', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (18, NULL, '您回复了帖子获得1积分', '102', '2020-03-20 10:44:17', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (19, NULL, '您回复了帖子获得1积分', '102', '2020-03-20 10:44:52', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (20, NULL, '您发布了帖子获得2积分', '101', '2020-03-20 14:44:38', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (21, NULL, '您回复了帖子获得1积分', '102', '2020-03-20 15:05:52', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (22, NULL, '您回复了帖子获得1积分', '102', '2020-03-20 15:07:29', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (23, NULL, '每天第一次登录您获得2积分', '104', '2020-03-20 16:22:42', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (24, NULL, '每天第一次登录您获得2积分', '104', '2020-03-30 16:33:00', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (25, NULL, '您发布了帖子获得2积分', '101', '2020-03-30 16:34:07', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (26, NULL, '您回复了帖子获得1积分', '102', '2020-03-30 16:35:01', 1, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (27, NULL, '每天第一次登录您获得2积分', '104', '2020-03-30 16:41:12', 2, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (28, NULL, '您回复了帖子获得1积分', '102', '2020-03-30 16:42:37', 1, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (29, NULL, '您回复了帖子获得1积分', '102', '2020-03-30 16:42:56', 1, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (30, NULL, '每天第一次登录您获得2积分', '104', '2020-04-03 10:11:22', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (31, NULL, '您发布了帖子获得2积分', '101', '2020-04-03 10:13:18', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (32, NULL, '您发布了帖子获得2积分', '101', '2020-04-03 10:14:25', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (33, NULL, '每天第一次登录您获得2积分', '104', '2020-04-03 10:14:55', 2, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (34, NULL, '您回复了帖子获得1积分', '102', '2020-04-03 10:15:03', 1, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (35, NULL, '您发布了帖子获得2积分', '101', '2020-04-03 10:18:55', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (36, NULL, '您回复了帖子获得1积分', '102', '2020-04-03 10:20:53', 1, 3, NULL);
INSERT INTO `jxust_jifen` VALUES (37, NULL, '您回复了帖子获得1积分', '102', '2020-04-03 10:26:21', 1, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (38, NULL, '每天第一次登录您获得2积分', '104', '2020-04-03 10:29:29', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (39, NULL, '您发布了帖子获得2积分', '101', '2020-04-03 13:57:25', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (40, NULL, '每天第一次登录您获得2积分', '104', '2020-05-07 17:06:03', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (41, NULL, '每天第一次登录您获得2积分', '104', '2020-05-09 16:22:01', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (42, NULL, '每天第一次登录您获得2积分', '104', '2020-05-09 16:58:20', 2, 4, NULL);
INSERT INTO `jxust_jifen` VALUES (43, NULL, '每天第一次登录您获得2积分', '104', '2020-05-09 17:48:58', 2, 2, NULL);
INSERT INTO `jxust_jifen` VALUES (44, NULL, '每天第一次登录您获得2积分', '104', '2020-08-16 19:43:18', 2, 1, NULL);
INSERT INTO `jxust_jifen` VALUES (45, NULL, '每天第一次登录您获得2积分', '104', '2020-08-21 22:23:57', 2, 1, NULL);

-- ----------------------------
-- Table structure for jxust_jifen_group
-- ----------------------------
DROP TABLE IF EXISTS `jxust_jifen_group`;
CREATE TABLE `jxust_jifen_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jifen` int(11) NULL DEFAULT NULL,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_jifen_group
-- ----------------------------
INSERT INTO `jxust_jifen_group` VALUES (1, 'VIP1', 0, 'VIP1', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (2, 'VIP2', 100, 'VIP2', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (3, 'VIP3', 200, 'VIP3', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (4, 'VIP4', 300, 'VIP4', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (5, 'VIP5', 400, 'VIP5', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (6, 'VIP6', 500, 'VIP6', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (7, 'VIP7', 600, 'VIP7', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (8, 'VIP8', 700, 'VIP8', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (9, 'VIP9', 800, 'VIP9', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (10, 'VIP10', 900, 'VIP10', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (11, 'VIP11', 1000, 'VIP11', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (12, 'VIP12', 1100, 'VIP12', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (13, 'VIP13', 1200, 'VIP13', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (14, 'VIP14', 1300, 'VIP14', NULL, NULL, NULL);
INSERT INTO `jxust_jifen_group` VALUES (15, 'VIP15', 1400, 'VIP15', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for jxust_link
-- ----------------------------
DROP TABLE IF EXISTS `jxust_link`;
CREATE TABLE `jxust_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderby` int(11) NULL DEFAULT NULL,
  `bankuaiid` int(11) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isshow` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_link
-- ----------------------------
INSERT INTO `jxust_link` VALUES (1, 'Beta', 'https://www.yuanlrc.com/', 1, '2017-08-11 16:43:07', 0, 0, NULL, '0', '1');
INSERT INTO `jxust_link` VALUES (2, 'test', 'http://programmer.ischoolbar.com/', 1, '2020-03-10 10:28:51', 1, 0, NULL, '0', '1');

-- ----------------------------
-- Table structure for jxust_message
-- ----------------------------
DROP TABLE IF EXISTS `jxust_message`;
CREATE TABLE `jxust_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useridsend` int(11) NULL DEFAULT NULL,
  `useridaccept` int(11) NULL DEFAULT NULL,
  `messagetype` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isread` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_message
-- ----------------------------
INSERT INTO `jxust_message` VALUES (1, '一条新的回复消息', '用户 javaee 回复了我的帖子:  <a href=\'/bbs/tiezi/1_1_1.html\' target=\"_blank\" >你好啊</a> </br>回复内容: hello ', '2017-08-10 15:49:01', NULL, 1, '2', '1');
INSERT INTO `jxust_message` VALUES (2, '一条新的回复消息', '用户 java12 回复了我的帖子:  <a href=\'/bbs/tiezi/1_1_1.html\' target=\"_blank\" >你好啊</a> </br>回复内容: 啦啦啦 ', '2017-08-10 15:50:01', NULL, 1, '2', '1');
INSERT INTO `jxust_message` VALUES (3, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/1_1_1.html\' target=\"_blank\" >ssm基础实战教程</a> </br>回复内容: 嗯 不错嘛！ ', '2020-03-20 10:44:02', NULL, 1, '2', '1');
INSERT INTO `jxust_message` VALUES (4, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/1_1_1.html\' target=\"_blank\" >ssm基础实战教程</a> </br>回复内容: 瓜娃子！ ', '2020-03-20 10:44:17', NULL, 1, '2', '1');
INSERT INTO `jxust_message` VALUES (5, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/1_1_1.html\' target=\"_blank\" >ssm基础实战教程</a> </br>回复内容: Java教程在哪？ ', '2020-03-20 10:44:52', NULL, 1, '2', '1');
INSERT INTO `jxust_message` VALUES (6, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/2_1_1.html\' target=\"_blank\" >猿来入此springboot实战开发教程</a> </br>回复内容: 还可以哈！ ', '2020-03-20 15:05:52', NULL, 2, '2', '1');
INSERT INTO `jxust_message` VALUES (7, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/2_1_1.html\' target=\"_blank\" >猿来入此springboot实战开发教程</a> </br>回复内容: 嗯 真的好！ ', '2020-03-20 15:07:29', NULL, 2, '2', '1');
INSERT INTO `jxust_message` VALUES (8, '一条新的回复消息', '用户 javaer 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/3_1_1.html\' target=\"_blank\" >Python基础爬虫教程之四周教你快速掌握Python爬虫技术</a> </br>回复内容: 教程下载地址：https://www.yuanlrc.com/product/details.html?pid=245 ', '2020-03-30 16:35:01', NULL, 2, '2', '1');
INSERT INTO `jxust_message` VALUES (9, '一条新的回复消息', '用户 yuanlrc 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/3_1_1.html\' target=\"_blank\" >Python基础爬虫教程之四周教你快速掌握Python爬虫技术</a> </br>回复内容: 这个可以免费下载吗？ ', '2020-03-30 16:42:37', NULL, 2, '2', '0');
INSERT INTO `jxust_message` VALUES (10, '一条新的回复消息', '用户 yuanlrc 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/3_1_1.html\' target=\"_blank\" >Python基础爬虫教程之四周教你快速掌握Python爬虫技术</a> </br>回复内容: 这个可以免费下载吗？ ', '2020-03-30 16:42:56', NULL, 2, '2', '0');
INSERT INTO `jxust_message` VALUES (11, '一条新的回复消息', '用户 yuanlrc 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/5_1_1.html\' target=\"_blank\" >PHP7好用吗？</a> </br>回复内容: 真的不错 ', '2020-04-03 10:15:03', NULL, 1, '2', '0');
INSERT INTO `jxust_message` VALUES (12, '一条新的回复消息', '用户 yuanlrc 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/6_1_1.html\' target=\"_blank\" >PHP7好用吗？</a> </br>回复内容: 还不错的，我用过。 ', '2020-04-03 10:20:53', NULL, 1, '2', '0');
INSERT INTO `jxust_message` VALUES (13, '一条新的回复消息', '用户 admin 回复了我的帖子:  <a href=\'/ssm-bbs/tiezi/6_1_1.html\' target=\"_blank\" >PHP7好用吗？</a> </br>回复内容: 在猿来入此beta上有php的教程哦！ ', '2020-04-03 10:26:21', NULL, 1, '2', '0');

-- ----------------------------
-- Table structure for jxust_pic
-- ----------------------------
DROP TABLE IF EXISTS `jxust_pic`;
CREATE TABLE `jxust_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tieziid` int(11) NULL DEFAULT NULL,
  `bankuaiid` int(11) NULL DEFAULT NULL,
  `pictype` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `isdel` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_pic
-- ----------------------------

-- ----------------------------
-- Table structure for jxust_stop_ip
-- ----------------------------
DROP TABLE IF EXISTS `jxust_stop_ip`;
CREATE TABLE `jxust_stop_ip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `isuse` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_stop_ip
-- ----------------------------

-- ----------------------------
-- Table structure for jxust_tiezi
-- ----------------------------
DROP TABLE IF EXISTS `jxust_tiezi`;
CREATE TABLE `jxust_tiezi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contenthtml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `contenttxt` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `bankuai_id` int(11) NULL DEFAULT NULL,
  `zhutiid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastupdate` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jinghua` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhiding` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `findcount` int(11) NULL DEFAULT 0,
  `huifuid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jbbs_tiezi_bankuai_id_index`(`bankuai_id`) USING BTREE,
  INDEX `jbbs_tiezi_createuserid_index`(`createuserid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_tiezi
-- ----------------------------
INSERT INTO `jxust_tiezi` VALUES (1, 'ssm基础实战教程', '<p>这里是ssm基础实战教程：<a href=\"https://www.yuanlrc.com/product/search.html?q=ssm\">https://www.yuanlrc.com/product/search.html?q=ssm</a></p>', '这里是ssm基础实战教程：https://www.yuanlrc.com/product/search.html?q=ssm', '2017-08-10 15:48:43', 1, 2, '1', '您的帖子在2020-03-19 16:01:13被admin编辑<br/>您的帖子在2020-03-19 16:01:23被admin编辑<br/>您的帖子在2020-03-19 16:02:20被admin编辑<br/>', NULL, NULL, 30, 5);
INSERT INTO `jxust_tiezi` VALUES (2, '猿来入此springboot实战开发教程', '<p><strong><em><span style=\"font-size: 18px;\">猿来入此实战教程：</span></em></strong><strong style=\"font-size: 18px; text-decoration: underline;\"><em><span style=\"font-size: 18px;\"><a href=\"https://www.yuanlrc.com/product/search.html?q=springboot\" style=\"font-size: 18px; text-decoration: underline;\">https://www.yuanlrc.com/product/search.html?q=springboot</a></span></em></strong></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p style=\"line-height: 16px;\"><br/></p><p><br/></p>', '猿来入此实战教程：https://www.yuanlrc.com/product/search.html?q=springboot', '2020-03-20 14:44:38', 2, 2, '2', '您的帖子在2020-03-20 15:01:35被javaer编辑<br/>您的帖子在2020-03-20 15:03:01被javaer编辑<br/>您的帖子在2020-03-20 15:04:51被javaer编辑<br/>您的帖子在2020-03-20 15:05:22被javaer编辑<br/>您的帖子在2020-03-20 15:06:18被javaer编辑<br/>您的帖子在2020-04-03 10:24:40被admin编辑<br/>', NULL, NULL, 17, 7);
INSERT INTO `jxust_tiezi` VALUES (3, 'Python基础爬虫教程之四周教你快速掌握Python爬虫技术', '<p><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">适用人群：即将毕业的大学生，工资低工作重的白领，渴望崭露头角的职场新人，零基础学过很多次编程都没能学会的人</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">简介</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">毕业不知如何就业？工作效率低经常挨骂？很多次想学编程都没有学会？</span><br/><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">Python实战：四周实现爬虫系统，无需编程基础，二十八天掌握一项谋生技能。</span><br/><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">带你学到如何从网上批量获得几十万数据，如何处理海量大数据，数据可视化及网站制作。</span><br/><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">四大保障：</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">1、快速入门，无需基础。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">包含最好的Python入门教材《魔力教程》，生动有趣的从零基础学习编程。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">2、保驾护航，名师指路。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">老师为科大讯飞、小米等著名企业的资深高级Python工程师，为您解答问题、点评作业。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">3、内容丰富，学习全面。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">课程教授网页爬虫、多线程、数据库、大数据处理、数据可视化、网站制作等多方面内容，全面练习，综合提升。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">4、项目实战，积累经验。</span><br/><span style=\"box-sizing: border-box; color: rgb(64, 64, 64); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(255, 255, 255);\">就业没砝码？跳槽没经验？上千行代码，几十万数据，大项目有大经验。</span></p>', '适用人群：即将毕业的大学生，工资低工作重的白领，渴望崭露头角的职场新人，零基础学过很多次编程都没能学会的人简介毕业不知如何就业？工作效率低经常挨骂？很多次想学编程都没有学会？Python实战：四周实现爬虫系统，无需编程基础，二十八天掌握一项谋生技能。带你学到如何从网上批量获得几十万数据，如何处理海量大数据，数据可视化及网站制作。四大保障：1、快速入门，无需基础。包含最好的Python入门教材《魔力教程》，生动有趣的从零基础学习编程。2、保驾护航，名师指路。老师为科大讯飞、小米等著名企业的资深高级Python工程师，为您解答问题、点评作业。3、内容丰富，学习全面。课程教授网页爬虫、多线程、数据库、大数据处理、数据可视化、网站制作等多方面内容，全面练习，综合提升。4、项目实战，积累经验。就业没砝码？跳槽没经验？上千行代码，几十万数据，大项目有大经验。', '2020-03-30 16:34:07', 2, 3, '4', '', NULL, NULL, 6, 10);
INSERT INTO `jxust_tiezi` VALUES (6, 'PHP7好用吗？', '<p><strong><span style=\"font-size: 18px;\">大家觉得PHP7好用吗？</span></strong></p>', '大家觉得PHP7好用吗？', '2020-04-03 10:18:55', 1, 4, '6', '您的帖子在2020-04-03 10:20:26被admin编辑<br/>', NULL, NULL, 7, 13);
INSERT INTO `jxust_tiezi` VALUES (7, 'springboot实战教程', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, simsun, &quot;Helvetica Neue&quot;, Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);\">在我们的猿来入此beata上有很多教程。</span></p>', '在我们的猿来入此beata上有很多教程。', '2020-04-03 13:57:24', 1, 2, '2', '', NULL, NULL, 9, NULL);

-- ----------------------------
-- Table structure for jxust_user
-- ----------------------------
DROP TABLE IF EXISTS `jxust_user`;
CREATE TABLE `jxust_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qianming` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastlogintime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuceip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jifen` int(11) NULL DEFAULT NULL,
  `vipLevel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'VIP1',
  `onlinetime` int(11) NULL DEFAULT 0,
  `cookieid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_user
-- ----------------------------
INSERT INTO `jxust_user` VALUES (1, '张康大', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', '20200310/2020031014580652940953.PNG', '1193284480@qq.com', '1993-04-08', '0', '400-8080-105', '猿来入此，既可以学习编程，也可以赚钱的网站：https://www.yuanlrc.com', '2017-05-06 22:25:35', '2020-08-21 22:23:57', '737a87b275c7477b8cebaa90b3f1d08a', '192.168.2.1', '1', 36, 'VIP15', 36570, 'a796f9016d054deeb482d52cf1c3484c');
INSERT INTO `jxust_user` VALUES (2, '', 'javaer', '4QrcOUm6Wau+VuBX8g+IPg==', '20200310/2020031015091272619643.PNG', 'lilq@sttri.com.cn', '2020-03-10', '0', '13656564545', '猿来入此，既可以学习编程，也可以赚钱的网站：https://www.yuanlrc.com', '2017-08-10 15:45:45', '2020-05-09 17:48:58', '192.168.0.104', '192.168.1.20', '1', 29, 'VIP5', 35820, '9258db7bdffd42999f640336ddffc916');
INSERT INTO `jxust_user` VALUES (3, NULL, 'yuanlrc', '4QrcOUm6Wau+VuBX8g+IPg==', 'touxiang.jpg', 'ylrc@yuanlrc.co', NULL, NULL, NULL, NULL, '2020-03-30 16:40:43', '2020-04-03 10:32:55', '192.168.1.19', '192.168.1.13', '1', 8, 'VIP8', 1230, '3dd84d12b7804ee3bf14ec0b4cf3f2bc');
INSERT INTO `jxust_user` VALUES (4, NULL, 'aaaaaa', 'C056Dl/oStNftflbnO6seQ==', 'touxiang.jpg', 'aa@qq.com', NULL, NULL, NULL, NULL, '2020-05-09 16:58:07', '2020-05-09 16:58:20', '192.168.1.20', '192.168.1.20', '1', 2, 'VIP1', 0, '46f019f7abae47a09af60e1a9c6f935b');

-- ----------------------------
-- Table structure for jxust_user_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `jxust_user_liuyan`;
CREATE TABLE `jxust_user_liuyan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenthtml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `liuyanuserid` int(11) NULL DEFAULT NULL,
  `createuserid` int(11) NULL DEFAULT NULL,
  `createtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_user_liuyan
-- ----------------------------
INSERT INTO `jxust_user_liuyan` VALUES (2, '哈哈', 1, 1, '2020-04-03 10:16');

-- ----------------------------
-- Table structure for jxust_zhuti
-- ----------------------------
DROP TABLE IF EXISTS `jxust_zhuti`;
CREATE TABLE `jxust_zhuti`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bankuai_id` int(11) NULL DEFAULT NULL,
  `orderby` int(11) NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jxust_zhuti
-- ----------------------------
INSERT INTO `jxust_zhuti` VALUES (1, 'SSM框架相关', 2, 1, '2020-03-10 15:05:47');
INSERT INTO `jxust_zhuti` VALUES (2, 'springboot框架相关', 2, 2, '2020-03-10 15:06:34');
INSERT INTO `jxust_zhuti` VALUES (3, 'SSH框架相关', 2, 3, '2020-03-10 15:07:16');
INSERT INTO `jxust_zhuti` VALUES (4, 'python教程', 3, 1, '2020-03-20 16:24:24');
INSERT INTO `jxust_zhuti` VALUES (5, 'Python项目', 3, 2, '2020-03-20 16:24:35');
INSERT INTO `jxust_zhuti` VALUES (6, 'PHP7新特性', 4, 1, '2020-04-03 10:12:34');
INSERT INTO `jxust_zhuti` VALUES (7, 'ThinkPHP框架', 4, 2, '2020-04-03 10:12:54');

-- ----------------------------
-- View structure for jxust_jifen_group_user
-- ----------------------------
DROP VIEW IF EXISTS `jxust_jifen_group_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `jxust_jifen_group_user` AS select (select `tt2`.`id` from `jxust_jifen_group` `tt2` where (`tt2`.`jifen` <= `t1`.`jifen`) order by `tt2`.`jifen` desc limit 0,1) AS `jifen_groupid`,`t1`.`id` AS `userid` from `jxust_user` `t1`;

SET FOREIGN_KEY_CHECKS = 1;
