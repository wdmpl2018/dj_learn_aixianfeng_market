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

 Date: 30/12/2020 19:50:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_order
-- ----------------------------
DROP TABLE IF EXISTS `axf_order`;
CREATE TABLE `axf_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_price` double NOT NULL,
  `o_time` datetime(6) NOT NULL,
  `o_status` int(11) NOT NULL,
  `o_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_order_o_user_id_a23247bb_fk_axf_user_id` (`o_user_id`),
  CONSTRAINT `axf_order_o_user_id_a23247bb_fk_axf_user_id` FOREIGN KEY (`o_user_id`) REFERENCES `axf_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_order
-- ----------------------------
BEGIN;
INSERT INTO `axf_order` VALUES (1, 15, '2020-12-27 13:23:23.268532', 1, 11);
INSERT INTO `axf_order` VALUES (2, 67.5, '2020-12-27 13:39:03.684574', 1, 11);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
