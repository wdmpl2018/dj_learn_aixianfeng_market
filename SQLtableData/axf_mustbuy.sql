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

 Date: 30/12/2020 19:49:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_mustbuy
-- ----------------------------
DROP TABLE IF EXISTS `axf_mustbuy`;
CREATE TABLE `axf_mustbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_mustbuy
-- ----------------------------
BEGIN;
INSERT INTO `axf_mustbuy` VALUES (1, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '酸奶女王', 21870);
INSERT INTO `axf_mustbuy` VALUES (2, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3654560112,3063816267&fm=15&gp=0.jpg', '鲜果女王', 21861);
INSERT INTO `axf_mustbuy` VALUES (3, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '麻辣女王', 21866);
INSERT INTO `axf_mustbuy` VALUES (4, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3654560112,3063816267&fm=15&gp=0.jpg', '鲜货直供－果析', 21858);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
