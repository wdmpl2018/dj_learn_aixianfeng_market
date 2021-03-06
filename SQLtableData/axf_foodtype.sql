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

 Date: 30/12/2020 19:49:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_foodtype
-- ----------------------------
DROP TABLE IF EXISTS `axf_foodtype`;
CREATE TABLE `axf_foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `typename` varchar(80) NOT NULL,
  `childtypenames` varchar(120) NOT NULL,
  `typesort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_foodtype
-- ----------------------------
BEGIN;
INSERT INTO `axf_foodtype` VALUES (1, 104749, '热销榜', '全部分类:0', 1);
INSERT INTO `axf_foodtype` VALUES (2, 104747, '新品尝鲜', '全部分类:0', 2);
INSERT INTO `axf_foodtype` VALUES (3, 103532, '优选水果', '全部分类:0#进口水果:103534#国产水果:103533', 3);
INSERT INTO `axf_foodtype` VALUES (4, 103581, '卤味熟食', '全部分类:0', 4);
INSERT INTO `axf_foodtype` VALUES (5, 103536, '牛奶面包', '全部分类:0#酸奶乳酸菌:103537#牛奶豆浆:103538#面包蛋糕:103540', 5);
INSERT INTO `axf_foodtype` VALUES (6, 103549, '饮料酒水', '全部分类:0#饮用水:103550#茶饮/咖啡:103554#功能饮料:103553#酒类:103555#果汁饮料:103551#碳酸饮料:103552#整箱购:104503#植物蛋白:104489#进口饮料:103556', 6);
INSERT INTO `axf_foodtype` VALUES (7, 103541, '休闲零食', '全部分类:0#进口零食:103547#饼干糕点:103544#膨化食品:103543#坚果炒货:103542#肉干蜜饯:103546#糖果巧克力:103545', 7);
INSERT INTO `axf_foodtype` VALUES (8, 103557, '方便速食', '全部分类:0#方便面:103558#火腿肠卤蛋:103559#速冻面点:103562#下饭小菜:103560#罐头食品:103561#冲调饮品:103563', 8);
INSERT INTO `axf_foodtype` VALUES (9, 103569, '粮油调味', '全部分类:0#杂粮米面油:103570#厨房调味:103571#调味酱:103572', 9);
INSERT INTO `axf_foodtype` VALUES (10, 103575, '生活用品', '全部分类:0#个人护理:103576#纸品:103578#日常用品:103580#家居清洁:103577', 10);
INSERT INTO `axf_foodtype` VALUES (11, 104958, '冰激凌', '全部分类:0', 11);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
