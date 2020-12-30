/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mysql_duanj
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 127.0.0.1:3306
 Source Schema         : axf

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 30/12/2020 19:49:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_nav
-- ----------------------------
DROP TABLE IF EXISTS `axf_nav`;
CREATE TABLE `axf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_nav
-- ----------------------------
BEGIN;
INSERT INTO `axf_nav` VALUES (1, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', '每日必抢', 21851);
INSERT INTO `axf_nav` VALUES (2, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3669994257,1077928177&fm=11&gp=0.jpg', '每日签到', 21753);
INSERT INTO `axf_nav` VALUES (3, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', '鲜货直供', 21749);
INSERT INTO `axf_nav` VALUES (4, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', '鲜蜂力荐', 21854);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
