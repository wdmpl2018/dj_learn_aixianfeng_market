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

 Date: 30/12/2020 19:49:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for axf_mainshow
-- ----------------------------
DROP TABLE IF EXISTS `axf_mainshow`;
CREATE TABLE `axf_mainshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `trackid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `brandname` varchar(50) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `childcid1` int(11) NOT NULL,
  `productid1` int(11) NOT NULL,
  `longname1` varchar(128) NOT NULL,
  `price1` double NOT NULL,
  `marketprice1` double NOT NULL,
  `img2` varchar(255) NOT NULL,
  `childcid2` int(11) NOT NULL,
  `productid2` int(11) NOT NULL,
  `longname2` varchar(128) NOT NULL,
  `price2` double NOT NULL,
  `marketprice2` double NOT NULL,
  `img3` varchar(255) NOT NULL,
  `childcid3` int(11) NOT NULL,
  `productid3` int(11) NOT NULL,
  `longname3` varchar(128) NOT NULL,
  `price3` double NOT NULL,
  `marketprice3` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of axf_mainshow
-- ----------------------------
BEGIN;
INSERT INTO `axf_mainshow` VALUES (1, 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4192308299,552663128&fm=15&gp=0.jpg', '优选水果', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
INSERT INTO `axf_mainshow` VALUES (2, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1431197101,2655495400&fm=15&gp=0.jpg', '牛奶面包', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
INSERT INTO `axf_mainshow` VALUES (3, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3221328076,3986497967&fm=15&gp=0.jpg', '卤味熟食', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
INSERT INTO `axf_mainshow` VALUES (4, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3282100996,1719251904&fm=15&gp=0.jpg', '饮料酒水', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
INSERT INTO `axf_mainshow` VALUES (5, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3001275054,2517055192&fm=15&gp=0.jpg', '零食大趴', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
INSERT INTO `axf_mainshow` VALUES (6, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3001275054,2517055192&fm=15&gp=0.jpg', '方便速食', 21782, 103532, '爱鲜蜂', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=281350274,3664360552&fm=11&gp=0.jpg', 103533, 118824, '爱鲜蜂·特小凤西瓜1.5-2.5kg/粒', 25.8, 25.8, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3935341392,221046113&fm=11&gp=0.jpg', 103534, 116950, '蜂觅·越南直采红心火龙果350-450g/盒', 15.3, 15.8, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=431188765,1972892809&fm=11&gp=0.jpg', 103533, 118826, '爱鲜蜂·海南千禧果400-450g/盒', 9.9, 13.8);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
