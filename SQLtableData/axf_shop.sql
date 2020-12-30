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

 Date: 30/12/2020 19:50:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_shop
-- ----------------------------
DROP TABLE IF EXISTS `axf_shop`;
CREATE TABLE `axf_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_shop
-- ----------------------------
BEGIN;
INSERT INTO `axf_shop` VALUES (1, 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4192308299,552663128&fm=15&gp=0.jpg', '闪送超市', 1464);
INSERT INTO `axf_shop` VALUES (2, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', '热销榜', 104749);
INSERT INTO `axf_shop` VALUES (3, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3669994257,1077928177&fm=11&gp=0.jpg', '新品尝鲜', 104747);
INSERT INTO `axf_shop` VALUES (4, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '牛奶面包', 103536);
INSERT INTO `axf_shop` VALUES (5, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '饮料酒水', 103549);
INSERT INTO `axf_shop` VALUES (6, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '优选水果', 103532);
INSERT INTO `axf_shop` VALUES (7, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1123856262,1723770168&fm=15&gp=0.jpg', '更多', 100001);
INSERT INTO `axf_shop` VALUES (8, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', '鲜蜂力荐', 21854);
INSERT INTO `axf_shop` VALUES (9, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3669994257,1077928177&fm=11&gp=0.jpg', '卤味-鸭货不能停', 21742);
INSERT INTO `axf_shop` VALUES (10, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', '零食轰趴', 21142);
INSERT INTO `axf_shop` VALUES (11, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3669994257,1077928177&fm=11&gp=0.jpg', '整箱购', 20581);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
