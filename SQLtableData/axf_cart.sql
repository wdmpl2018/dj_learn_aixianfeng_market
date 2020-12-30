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

 Date: 30/12/2020 19:49:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_cart
-- ----------------------------
DROP TABLE IF EXISTS `axf_cart`;
CREATE TABLE `axf_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_goods_num` int(11) NOT NULL,
  `c_is_select` tinyint(1) NOT NULL,
  `c_goods_id` int(11) NOT NULL,
  `c_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_cart_c_goods_id_85ddfb56_fk_axf_goods_id` (`c_goods_id`),
  KEY `axf_cart_c_user_id_5abdebfe_fk_axf_user_id` (`c_user_id`),
  CONSTRAINT `axf_cart_c_goods_id_85ddfb56_fk_axf_goods_id` FOREIGN KEY (`c_goods_id`) REFERENCES `axf_goods` (`id`),
  CONSTRAINT `axf_cart_c_user_id_5abdebfe_fk_axf_user_id` FOREIGN KEY (`c_user_id`) REFERENCES `axf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_cart
-- ----------------------------
BEGIN;
INSERT INTO `axf_cart` VALUES (1, 1, 0, 495, 11);
INSERT INTO `axf_cart` VALUES (4, 8, 0, 554, 11);
INSERT INTO `axf_cart` VALUES (6, 3, 0, 557, 11);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
