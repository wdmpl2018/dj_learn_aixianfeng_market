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

 Date: 30/12/2020 19:51:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_wheel
-- ----------------------------
DROP TABLE IF EXISTS `axf_wheel`;
CREATE TABLE `axf_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_wheel
-- ----------------------------
BEGIN;
INSERT INTO `axf_wheel` VALUES (1, 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4192308299,552663128&fm=15&gp=0.jpg', '酸奶女王', 21870);
INSERT INTO `axf_wheel` VALUES (2, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1431197101,2655495400&fm=15&gp=0.jpg', '优选圣女果', 21869);
INSERT INTO `axf_wheel` VALUES (3, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3221328076,3986497967&fm=15&gp=0.jpg', '伊利酸奶大放价', 21862);
INSERT INTO `axf_wheel` VALUES (4, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3282100996,1719251904&fm=15&gp=0.jpg', '鲜货直供－窝夫小子', 21770);
INSERT INTO `axf_wheel` VALUES (5, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3001275054,2517055192&fm=15&gp=0.jpg', '鲜货直供－狼博森食品', 21874);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
