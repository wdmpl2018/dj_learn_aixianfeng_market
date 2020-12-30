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

 Date: 30/12/2020 19:50:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `axf_ordergoods`;
CREATE TABLE `axf_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_good_num` int(11) NOT NULL,
  `o_goods_id` int(11) NOT NULL,
  `o_order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axf_ordergoods_o_goods_id_f5c54400_fk_axf_goods_id` (`o_goods_id`),
  KEY `axf_ordergoods_o_order_id_35bb0edb_fk_axf_order_id` (`o_order_id`),
  CONSTRAINT `axf_ordergoods_o_goods_id_f5c54400_fk_axf_goods_id` FOREIGN KEY (`o_goods_id`) REFERENCES `axf_goods` (`id`),
  CONSTRAINT `axf_ordergoods_o_order_id_35bb0edb_fk_axf_order_id` FOREIGN KEY (`o_order_id`) REFERENCES `axf_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_ordergoods
-- ----------------------------
BEGIN;
INSERT INTO `axf_ordergoods` VALUES (1, 1, 474, 1);
INSERT INTO `axf_ordergoods` VALUES (2, 1, 555, 2);
INSERT INTO `axf_ordergoods` VALUES (3, 1, 556, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
