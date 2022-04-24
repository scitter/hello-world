/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 120.53.239.4:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 21/11/2021 19:20:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `lend_num` int NULL DEFAULT NULL,
  `max_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (8, 'user', 'reader', 'user', '66eofe@qq.com', '12333334568', 1, 30, 577);
INSERT INTO `admin` VALUES (7, 'admin', 'admin', 'admin', '444', '13333334567', 0, 30, 5);
INSERT INTO `admin` VALUES (11, 'zh', 'xm', '123', '123', '123', 1, 30, 5);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `num` int NOT NULL,
  `press` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `ISBN`(`card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (18, '哈利波特', 'book-001', '哈利', 345, '哈利', '小说类');
INSERT INTO `book` VALUES (17, '西游记', 'book-002', '吴承恩', 34, '上海出版社', '小说类');
INSERT INTO `book` VALUES (14, '倚天屠龙记', 'book-003', '金庸', 5, '青海出版社', '武侠类');
INSERT INTO `book` VALUES (25, 'afsf', 'safsdf4', 'fdgfdg', 50, 'sadf', '小说类');
INSERT INTO `book` VALUES (26, '235', '3256r', 'dfgdsg', 65, 'dsgsd', '小说类');
INSERT INTO `book` VALUES (27, '43643', '45643', 'ertwerte', 67, 'wetwet', '武侠类');
INSERT INTO `book` VALUES (30, '火影忍者', 'book-006', '岸本齐史', 888, '猪猪出版社', '小说类');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (11, '文学类');
INSERT INTO `booktype` VALUES (10, '小说类');
INSERT INTO `booktype` VALUES (6, '武侠类');
INSERT INTO `booktype` VALUES (12, '漫画类');
INSERT INTO `booktype` VALUES (13, '青春文学类');
INSERT INTO `booktype` VALUES (14, '动漫类');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int NOT NULL AUTO_INCREMENT,
  `aid` int NULL DEFAULT NULL,
  `bid` int NULL DEFAULT NULL,
  `card` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (47, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-11', '2020-6-11', 0);
INSERT INTO `history` VALUES (46, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-10', '2021-10-21', 0);
INSERT INTO `history` VALUES (45, 8, 18, 'dscds', 'sdf', 'user', '普通用户', '2020-6-9', '2020-7-9', 1);
INSERT INTO `history` VALUES (44, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-9', '2020-7-9', 1);
INSERT INTO `history` VALUES (43, 8, 14, 'dgsdg', '普通用户', 'user', '普通用户', '2020-6-3', '2020-6-9', 0);
INSERT INTO `history` VALUES (42, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-3', '2020-7-3', 1);
INSERT INTO `history` VALUES (41, 8, 15, '001', '鹿鼎记', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (40, 8, 14, 'dgsdg', '普通用户', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (39, 8, 16, 'sss', 's', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (38, 8, 15, '001', '张', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (37, 8, 16, 'sss', 's', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (36, 8, 15, '001', '张', 'user', '普通用户', '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (35, 0, 14, 'dgsdg', '普通用户', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (34, 0, 15, '001', '张', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (33, 0, 15, '001', '张', NULL, NULL, '2020-6-3', '2020-6-3', 0);
INSERT INTO `history` VALUES (32, 7, 15, '001', '张', 'admin', 'admin', '2020-6-3', '2020-6-3', 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `nId` int NOT NULL AUTO_INCREMENT,
  `nTime` date NULL DEFAULT NULL,
  `nPerson` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nContext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (25, '2021-11-21', 'admin', '欢迎进入图书管理系统');

SET FOREIGN_KEY_CHECKS = 1;
