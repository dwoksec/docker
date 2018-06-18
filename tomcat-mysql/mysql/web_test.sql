/*
Navicat MySQL Data Transfer

Source Server         : sa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : web_test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-05-27 18:54:27
*/
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_name` varchar(50) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `commodity_many` int(11) NOT NULL,
  `commodity_price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '供应LED租赁屏远程控制电源直通柜控制柜', '深圳舞艺电气供应LED租赁屏远程控制电源直通柜控制柜，质量保证，欢迎来电咨询！15路电源直通柜主要技术参数：1、单相/三相五线', '900', '1');
INSERT INTO `commodity` VALUES ('2', '供应6ES72881SR400AA0西门子', '广州鸿懿电气设备有限公司主营PLC、变频器、人机界面、电缆、传感器等。在电工电气－工控系统及装备行业获得广大客户的认可。公', '880', '1');
INSERT INTO `commodity` VALUES ('3', '供应西门子PLC总代理-西门子一级代理商', '西门子PLC总代理-西门子一级代理商 西门子PLC总代理-西门子一级代理商西门子总代理 西门子一级代理商 西门子PLC总代理 西门子模', '970', '1');

-- ----------------------------
-- Table structure for `kind`
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `electronicKind` varchar(255) DEFAULT NULL,
  `netKind` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `netKind` (`netKind`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '电子仪器/仪表', '10');
INSERT INTO `kind` VALUES ('2', '电子元件', '10');
INSERT INTO `kind` VALUES ('3', '集成电路IC', '10');
INSERT INTO `kind` VALUES ('4', '微电机', '10');
INSERT INTO `kind` VALUES ('5', '农用物资', '1');

-- ----------------------------
-- Table structure for `kinds`
-- ----------------------------
DROP TABLE IF EXISTS `kinds`;
CREATE TABLE `kinds` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(255) DEFAULT NULL,
  `ids` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kinds
-- ----------------------------
INSERT INTO `kinds` VALUES ('1', '信号发生器', '1');
INSERT INTO `kinds` VALUES ('2', '脉冲仪', '1');
INSERT INTO `kinds` VALUES ('3', '电压/电流/电阻测量仪器', '1');
INSERT INTO `kinds` VALUES ('4', '光学电子仪器', '1');
INSERT INTO `kinds` VALUES ('5', '监视器', '1');
INSERT INTO `kinds` VALUES ('6', '电子元件参数测试仪器', '1');
INSERT INTO `kinds` VALUES ('7', '光电器件测试仪器', '1');
INSERT INTO `kinds` VALUES ('8', '半导体器件测试仪器', '1');
INSERT INTO `kinds` VALUES ('9', '集成电路测试仪器', '1');
INSERT INTO `kinds` VALUES ('10', '电真空器件测试仪器', '1');
INSERT INTO `kinds` VALUES ('11', '时间/频率测量仪器', '1');
INSERT INTO `kinds` VALUES ('12', '微波仪器', '1');
INSERT INTO `kinds` VALUES ('13', '场强干扰测试仪器', '1');
INSERT INTO `kinds` VALUES ('14', '信号分析仪器', '1');
INSERT INTO `kinds` VALUES ('15', '示波器', '1');
INSERT INTO `kinds` VALUES ('16', '通信测量仪器', '1');
INSERT INTO `kinds` VALUES ('17', '记录显示仪器', '1');
INSERT INTO `kinds` VALUES ('18', '广播电视测量仪器', '1');
INSERT INTO `kinds` VALUES ('19', '声振测量仪器', '1');
INSERT INTO `kinds` VALUES ('20', '动态分析仪器', '1');
INSERT INTO `kinds` VALUES ('21', '电导率仪', '1');
INSERT INTO `kinds` VALUES ('22', '水工业水质检测及分析仪器', '1');
INSERT INTO `kinds` VALUES ('23', '万用表', '1');
INSERT INTO `kinds` VALUES ('24', '试验仪器', '1');
INSERT INTO `kinds` VALUES ('25', '其它仪器/仪表', '1');
INSERT INTO `kinds` VALUES ('26', '全景扫频仪', '1');
INSERT INTO `kinds` VALUES ('27', '半导体器件图示仪', '1');
INSERT INTO `kinds` VALUES ('28', '器件参数测试仪器', '1');
INSERT INTO `kinds` VALUES ('29', '在线检测及控制仪表等', '1');
INSERT INTO `kinds` VALUES ('30', '温度测量仪表', '1');
INSERT INTO `kinds` VALUES ('31', '液位测量仪表', '1');
INSERT INTO `kinds` VALUES ('32', '电阻/电位器', '2');
INSERT INTO `kinds` VALUES ('33', '电容器', '2');
INSERT INTO `kinds` VALUES ('34', '电感器', '2');
INSERT INTO `kinds` VALUES ('35', '磁性元器件', '2');
INSERT INTO `kinds` VALUES ('36', '语音IC', '3');
INSERT INTO `kinds` VALUES ('37', '手机IC', '3');
INSERT INTO `kinds` VALUES ('38', '驱动微电机', '4');
INSERT INTO `kinds` VALUES ('39', '同步/异步/交直流/直线电动机', '4');
INSERT INTO `kinds` VALUES ('40', '电子设备冷却用小型风机', '4');
INSERT INTO `kinds` VALUES ('41', '计算机用电机', '4');
INSERT INTO `kinds` VALUES ('42', '控制微电机', '4');

-- ----------------------------
-- Table structure for `netinfor`
-- ----------------------------
DROP TABLE IF EXISTS `netinfor`;
CREATE TABLE `netinfor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `netName` varchar(255) NOT NULL,
  `annotation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of netinfor
-- ----------------------------
INSERT INTO `netinfor` VALUES ('1', '农业网', '农用资源');
INSERT INTO `netinfor` VALUES ('2', '食品网', '地方特产');
INSERT INTO `netinfor` VALUES ('3', '机械网', '泵');
INSERT INTO `netinfor` VALUES ('4', '能源网', '车用润滑网');
INSERT INTO `netinfor` VALUES ('5', '化工网', '有机化工原料');
INSERT INTO `netinfor` VALUES ('6', '涂料网', '涂料');
INSERT INTO `netinfor` VALUES ('7', '环保网', '分析仪器');
INSERT INTO `netinfor` VALUES ('9', '家居网', '包/箱/袋');
INSERT INTO `netinfor` VALUES ('10', '电器网', '电子仪器/仪表');
INSERT INTO `netinfor` VALUES ('11', '服装网', '服装机械及设计');
INSERT INTO `netinfor` VALUES ('12', '服饰网', '成品鞋');
INSERT INTO `netinfor` VALUES ('13', '纺织网', '纺织设备和器材');
INSERT INTO `netinfor` VALUES ('14', '皮革网', '原料毛皮');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `noid` int(11) NOT NULL AUTO_INCREMENT,
  `noName` varchar(255) DEFAULT NULL,
  `nsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`noid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', 'aqw', '1');
INSERT INTO `recommend` VALUES ('2', 'aqwx', '1');
INSERT INTO `recommend` VALUES ('4', 'er\'t', '1');
INSERT INTO `recommend` VALUES ('6', 'zc', '1');
INSERT INTO `recommend` VALUES ('7', 'xcv', '1');
INSERT INTO `recommend` VALUES ('8', 'ws', '1');
INSERT INTO `recommend` VALUES ('9', 'cv', '1');
INSERT INTO `recommend` VALUES ('10', 'as', '1');
INSERT INTO `recommend` VALUES ('11', 'as', '1');
INSERT INTO `recommend` VALUES ('12', 'qw', '1');
INSERT INTO `recommend` VALUES ('13', 'cd', '1');
INSERT INTO `recommend` VALUES ('14', 'er', '13');
INSERT INTO `recommend` VALUES ('15', 'admin', '1');
INSERT INTO `recommend` VALUES ('16', 'tr', '1');
INSERT INTO `recommend` VALUES ('17', 'ty', '1');
INSERT INTO `recommend` VALUES ('18', 'dd', '13');

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `Handled` float(11,0) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('12', '1', '1', '0', '供应LED租赁屏远程控制电源直通柜控制柜', '深圳舞艺电气供应LED租赁屏远程控制电源直通柜控制柜，质量保证，欢迎来电咨询！15路电源直通柜主要技术参数：1、单相/三相五线');
INSERT INTO `shopping_cart` VALUES ('13', '1', '2', '0', '供应6ES72881SR400AA0西门子', '广州鸿懿电气设备有限公司主营PLC、变频器、人机界面、电缆、传感器等。在电工电气－工控系统及装备行业获得广大客户的认可。公');
INSERT INTO `shopping_cart` VALUES ('14', '1', '3', '0', '供应西门子PLC总代理-西门子一级代理商', '西门子PLC总代理-西门子一级代理商 西门子PLC总代理-西门子一级代理商西门子总代理 西门子一级代理商 西门子PLC总代理 西门子模');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `integral` int(11) unsigned zerofill DEFAULT NULL,
  `tag` int(10) unsigned zerofill NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'sa', '1234', '123456789@qq.com', '00000001760', '0000000001', '吃饭');
INSERT INTO `user` VALUES ('3', 'a\'s', '123', '123456789@qq.com', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('9', 'aqw', '123', '123456789@qq.com', '00000000000', '0000000001', '玩');
INSERT INTO `user` VALUES ('10', 'xcv', '123', '123456789@qq.com', '00000000000', '0000000001', '吃饭');
INSERT INTO `user` VALUES ('11', 'ws', '123', '123456789@qq.com', '00000000100', '0000000000', null);
INSERT INTO `user` VALUES ('12', 'cv', '123', '123456789@qq.com', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('13', 'cd', '123456', '123456789@qq.com', '00000000390', '0000000001', '\'');
INSERT INTO `user` VALUES ('14', 'qw', '', '', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('15', 'er', '', '123456789@qq.com', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('16', 'admin', 'zxcvbnmlkjh', '123456789@qq.com', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('17', 'tr', '123', '123456789@qq.com', '00000000000', '0000000000', null);
INSERT INTO `user` VALUES ('18', 'ty', '123', '123456789@qq.com', '00000000000', '0000000001', 'ci');
INSERT INTO `user` VALUES ('19', 'dd', '', '', '00000000000', '0000000001', '小说');

-- ----------------------------
-- View structure for `kindelectronic`
-- ----------------------------
DROP VIEW IF EXISTS `kindelectronic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kindelectronic` AS select `kind`.`electronicKind` AS `electronicKind`,`kinds`.`sid` AS `sid`,`kinds`.`sName` AS `sName`,`kind`.`netKind` AS `netKind`,`netinfor`.`netName` AS `netName` from ((`kind` join `kinds`) join `netinfor`) where ((`kind`.`id` = `kinds`.`ids`) and (`kind`.`netKind` = `netinfor`.`id`)) ;
