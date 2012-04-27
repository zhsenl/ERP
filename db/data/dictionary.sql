/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2012-04-11 11:54:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dict_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `dict_attachments`;
CREATE TABLE `dict_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_attachments
-- ----------------------------
INSERT INTO `dict_attachments` VALUES ('1', 'B', '出境货物通关单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_attachments` VALUES ('2', 'A', '入境货物通关单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_attachments` VALUES ('3', 'Y', '原产地证明', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_attachments` VALUES ('4', 'V', '自动进口许可证(加工贸易)', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_brackets`
-- ----------------------------
DROP TABLE IF EXISTS `dict_brackets`;
CREATE TABLE `dict_brackets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `weight` decimal(15,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_brackets
-- ----------------------------
INSERT INTO `dict_brackets` VALUES ('1', 'C1', 'NJGS21', '新日钢', '20尺单用骨架', '3800.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('2', 'C4', 'JGS41', '新日钢', '40尺二轴三用公仔架', '5000.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('3', 'A1', 'TG21', '新东急', '20尺单用骨架', '4100.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('4', 'A2', 'TG42', '新东急', '40尺二轴四用中置架', '5300.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('5', 'A3', 'TG40', '新东急', '40尺二轴鹅颈架', '5450.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('6', 'A4', 'TG43', '新东急', '40尺三轴四用中置架', '6200.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('7', 'A5', 'TP43', '新东急', '40尺三轴五用平板架', '7300.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('8', 'A6', 'THT66FB', '新东急', '30尺三轴二用平板架', '6500.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('9', 'B1', 'TH21', '华通', '20尺单用骨架', '4100.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('10', 'B2', 'TH42', '华通', '40尺二轴鹅颈架', '5300.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('11', 'B3', 'TH40', '华通', '40尺二轴鹅颈架', '5450.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('12', 'B4', 'TH43', '华通', '40尺三轴四用中置架', '6200.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('13', 'B5', 'THP43', '华通', '40尺三轴五用平板架', '7300.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('14', 'C10', 'JPS40M-3', '新日钢', '40尺三轴五用平板架', '7400.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('15', 'C11', 'FKZ340-T03', '新日钢', '40尺三轴四用中置架', '6100.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('16', 'C2', 'KG-920', '新日钢', '20尺单用骨架', '3800.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('17', 'C3', 'JGS41M', '新日钢', '40尺二轴四用中置架', '5200.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('18', 'C5', 'JGS42', '新日钢', '40尺二轴鹅颈架', '4700.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('19', 'C6', 'JGS41M-3A', '新日钢', '40尺三轴四用中置架', '6350.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('20', 'C7', 'JGS41-3A', '新日钢', '40尺三轴三用公仔架', '5700.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('21', 'C8', 'JPS30-3', '新日钢', 'JPS30-3', '5290.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('22', 'C9', 'JPS40M', '新日钢', '40尺二轴五用平板架', '6200.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('23', 'D2', 'TM43M', '南海明威', '40尺三轴四用中置架', '7050.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('24', 'E1', 'DCC-40B', '日本东进', '40尺三轴三用中置架', '5140.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('25', 'F1', 'GMFA3.8.75T', '英国富合', '40尺三轴四用平板架', '7200.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('26', 'F2', 'F', '英国富合', '40尺三轴四用架', '6500.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('27', 'F3', 'F3', '英国富合', '40尺二轴四用架', '5500.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('28', 'G1', 'SK40B', '顺德广连鸿', '40尺三轴四用中置架', '5300.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('29', 'G2', 'N.J6S21', '顺德广连鸿', '20尺单用骨架', '3800.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('30', 'G3', 'TPS46M-3', '顺德广连鸿', '40尺三轴三用中置架', '7400.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('31', 'H1', 'SKT43S', '顺德新劲力', '40尺三轴四用中置架', '6680.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('32', 'L1', 'JCT-21S', '大力士', '20尺单用骨架', '3800.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('33', 'L2', 'JCT-41SM', '大力士', '40尺二轴四用中置架', '5460.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('34', 'L3', 'JCT-43SM', '大力士', '40尺三轴四用中置架', '6613.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('35', 'L4', 'JCT-42S', '大力士', '40尺二轴鹅颈架', '4700.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('36', 'L5', 'JCT40FBM', '大力士', '40尺二轴五用平板架', '6375.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('37', 'L6', 'JCT43FBM', '大力士', '40尺三轴五用平板架', '6638.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('38', 'M1', 'M1', '韩进架', '40尺三轴四用中置架', '6270.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_brackets` VALUES ('39', 'N1', 'N1', '新劲钢', '40尺三轴四用中置架', '6370.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_bring_in_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_bring_in_modes`;
CREATE TABLE `dict_bring_in_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_bring_in_modes
-- ----------------------------
INSERT INTO `dict_bring_in_modes` VALUES ('1', '1', '直接', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_bring_in_modes` VALUES ('2', '2', '间接', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_containers`
-- ----------------------------
DROP TABLE IF EXISTS `dict_containers`;
CREATE TABLE `dict_containers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `valent_num` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_containers
-- ----------------------------
INSERT INTO `dict_containers` VALUES ('1', 'S', '20尺', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_containers` VALUES ('2', 'L', '40尺', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_countries`
-- ----------------------------
DROP TABLE IF EXISTS `dict_countries`;
CREATE TABLE `dict_countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_countries
-- ----------------------------
INSERT INTO `dict_countries` VALUES ('3', '110', 'HongKong', '香港', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('4', '116', 'Japan', '日本', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('5', '133', 'Korea', '韩国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('6', '142', 'China', '中国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('7', '143', 'Taiwan', '台澎金马关税区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('8', '502', 'United States', '美国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('9', '303', 'United King-dom', '英国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('10', '304', 'Germany', '德国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('11', '145', 'Kazakhstan', '哈萨克斯坦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('12', '609', 'New Zealand', '新西兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('13', '111', 'India', '印度', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('14', '112', 'Indonesia', '印度尼西亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('15', '113', 'Iran', '伊朗', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('16', '114', 'Iraq', '伊拉克', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('17', '115', 'Israel', '以色列', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('18', '117', 'Jordan', '约旦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('19', '118', 'Kuwait', '科威特', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('20', '120', 'Lebanon', '黎巴嫩', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('21', '121', 'Macau', '澳门', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('22', '122', 'Malaysia', '马来西亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('23', '127', 'Pakistan', '巴基斯坦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('24', '128', 'Palestine', '巴勒斯坦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('25', '129', 'Philippines', '菲律宾', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('26', '206', 'Cameroon', '喀麦隆', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('27', '215', 'Egypt', '埃及', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('28', '220', 'Ghana', '加纳', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('29', '221', 'Guinea', '几内亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('30', '223', 'Cote d\'lvoir', '科特迪瓦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('31', '225', 'Liberia', '利比里亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('32', '226', 'Libyan Arab Jm', '利比亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('33', '231', 'Mauritius', '毛里求斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('34', '232', 'Morocco', '摩洛哥', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('35', '236', 'Nigeria', '尼日利亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('36', '244', 'S.Africa', '南非', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('37', '246', 'Sudan', '苏丹', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('38', '301', 'Belgium', '比利时', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('39', '302', 'Denmark', '丹麦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('40', '305', 'France', '法国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('41', '306', 'Ireland', '爱尔兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('42', '307', 'Italy', '意大利', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('43', '309', 'Netherlands', '荷兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('44', '310', 'Greece', '希腊', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('45', '311', 'Portugal', '葡萄牙', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('46', '312', 'Spain', '西班牙', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('47', '316', 'Bulgaria', '保加利亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('48', '318', 'Finland', '芬兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('49', '321', 'Hungary', '匈牙利', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('50', '325', 'Monaco', '摩纳哥', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('51', '326', 'Norway', '挪威', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('52', '327', 'Poland', '波兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('53', '328', 'Romania', '罗马尼亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('54', '350', 'Slovenia Rep', '斯洛文尼亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('55', '352', 'Czech Rep', '捷克共和国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('56', '344', 'Russia', '俄罗斯联邦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('57', '331', 'Sweden', '瑞士', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('58', '330', 'Sweden', '瑞典', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('59', '347', 'Ukraine', '乌克兰', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('60', '353', 'Slovak Rep', '斯洛伐克', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('61', '354', 'Macedonia Rep', '马其顿', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('62', '402', 'Argentina', '阿根廷', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('63', '410', 'Brazil', '巴西', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('64', '412', 'Chile', '智利', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('65', '413', 'Colombia', '哥伦比亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('66', '414', 'Dominica', '多米尼亚共和国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('67', '415', 'Dominica', '哥斯达黎加', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('68', '418', 'Dominican Rep.', '多米尼加共和国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('69', '419', '厄瓜多尔', 'Ecuador', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('70', '423', 'Guatemala', '危地马拉', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('71', '425', 'Haiti', '海地', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('72', '426', 'Honduras', '洪都拉斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('73', '427', 'Jamaica', '牙买加', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('74', '429', 'Mexico', '墨西哥', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('75', '432', 'Panama', '巴拿马', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('76', '433', 'Paraguay', '巴拉圭', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('77', '434', 'Peru', '秘鲁', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('78', '435', 'Puerto Rico', '波多黎各', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('79', '444', 'Uruguay', '乌拉圭', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('80', '445', 'Venezuela', '委内瑞拉', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('81', '501', 'Canada', '加拿大', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('82', '601', 'Australia', '澳大利亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('83', '334', 'Estonia', '爱沙尼亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('84', '141', 'viet nam', '越南', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('85', '136', 'Thailand', '泰国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('86', '131', 'KS', '沙特阿拉伯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('87', '446', 'Br. Virgin Is', '英属维尔京群岛', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('88', '132', '132', '新加坡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_countries` VALUES ('89', '138', '138', '阿联酋', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_currencies`
-- ----------------------------
DROP TABLE IF EXISTS `dict_currencies`;
CREATE TABLE `dict_currencies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_currencies
-- ----------------------------
INSERT INTO `dict_currencies` VALUES ('4', '110', '港币', 'HKD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_currencies` VALUES ('5', '142', '人民币', 'CNY', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_currencies` VALUES ('6', '116', '日本元', 'JPY', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_currencies` VALUES ('7', '502', '美元', 'USD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_customs`
-- ----------------------------
DROP TABLE IF EXISTS `dict_customs`;
CREATE TABLE `dict_customs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_customs
-- ----------------------------
INSERT INTO `dict_customs` VALUES ('1', '5207', '埔凤岗办', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('2', '5217', '寮步车场', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('3', '5220', '东莞物流', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('4', '5204', '东莞海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('5', '5216', '埔沙田办', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('6', '5316', '大鹏海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('7', '5301', '皇岗海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('9', '5304', '蛇口海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('10', '5306', '笋岗海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('12', '5320', '文锦渡关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('13', '5321', '福保税关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('14', '5213', '埔长安办', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('15', '5303', '沙头角关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('16', '5317', '深关机场', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('17', '5318', '梅林海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('18', '5343', '深盐物流', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('19', '5345', '深圳湾关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('20', '5348', '深关大铲', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('22', '5795', '横琴海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('23', '5700', '拱北关区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('24', '7208', '凭祥海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('25', '5205', '太平海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('26', '7901', '成都海关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_customs` VALUES ('27', '5349', '前海港区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_deal_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_deal_modes`;
CREATE TABLE `dict_deal_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_deal_modes
-- ----------------------------
INSERT INTO `dict_deal_modes` VALUES ('1', '1', 'CIF', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_deal_modes` VALUES ('3', '3', 'FOB', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_declare_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_declare_modes`;
CREATE TABLE `dict_declare_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_declare_modes
-- ----------------------------
INSERT INTO `dict_declare_modes` VALUES ('1', '001', '普通报关单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_declare_modes` VALUES ('2', '002', '为带报关单清单的报关单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_declare_modes` VALUES ('3', '003', '无纸报关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_declare_modes` VALUES ('4', '004', '既是清单又是无纸报关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_districts`
-- ----------------------------
DROP TABLE IF EXISTS `dict_districts`;
CREATE TABLE `dict_districts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_districts
-- ----------------------------
INSERT INTO `dict_districts` VALUES ('1', '44199', '东莞', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('2', '44139', '惠州其他', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('3', '44039', '深圳其他', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('4', '44069', '佛山其他', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('5', '44079', '江门', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('6', '36029', '景德镇', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('7', '33029', '宁波其他', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('8', '11909', '北京其他', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('9', '44019', '广州其他', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('10', '32149', '常熟', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('11', '33179', '江山', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('12', '33019', '杭州其他', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('13', '44209', '中山其他', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_districts` VALUES ('14', '32049', '常州其他', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_goods`
-- ----------------------------
DROP TABLE IF EXISTS `dict_goods`;
CREATE TABLE `dict_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `plusCode` varchar(255) DEFAULT NULL,
  `unit1` varchar(255) DEFAULT NULL,
  `unit2` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_goods
-- ----------------------------
INSERT INTO `dict_goods` VALUES ('16234', '90011000', '光导纤维、光导纤维束及光缆', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16235', '90011000', '非色散位移单模光纤', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16236', '90011000', '其他光导纤维', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16237', '90011000', '非色散位移单模光纤', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16238', '90011000', '其他光导纤维', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16239', '90011000', '光导纤维束及光缆', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16240', '90012000', '偏振材料制的片及板', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16241', '90012000', '液晶显示板用偏振材料制的片及板', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16242', '90012000', '其他偏振材料制的片及板', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16243', '90013000', '隐形眼镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16244', '90014010', '玻璃制变色镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16245', '90014091', '玻璃制太阳镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16246', '90014099', '玻璃制其他眼镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16247', '90015010', '非玻璃材料制变色镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16248', '90015091', '非玻璃材料制太阳镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16249', '90015099', '非玻璃材料制其他眼镜片', '00', '020', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16250', '90019000', '编号9001未列名的其他光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16251', '90019000', '光通信用微光组件的光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16252', '90019000', '微型镜片', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16253', '90019000', '背投电视机显示屏(包括非涅耳透', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16254', '90019000', '光通信用微光组件的光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16255', '90019000', '微型镜片', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16256', '90019000', '背投电视机显示屏(包括非涅耳透', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16257', '90019000', '编号9001未列名的其他光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16258', '90019010', '彩色滤光片', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16259', '90019090', '光通信用微光组件的光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16260', '90019090', '微型镜片', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16261', '90019090', '背投电视机显示屏', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16262', '90019090', '液晶显示屏背光模组的光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16263', '90019090', '编号9001未列名的其他光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16264', '90021110', '特殊用途照相机用物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16265', '90021120', '缩微阅读机用物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16266', '90021131', '单反相机镜头', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16267', '90021139', '其他相机用镜头（单反相机除外）', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16268', '90021190', '彩色液晶投影机的镜头及镜头组件', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16269', '90021190', '数码相机的镜头', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16270', '90021190', '彩色液晶投影机的镜头及镜头组件', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16271', '90021190', '数码相机的镜头', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16272', '90021190', '其他照相机,投影仪等用物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16273', '90021910', '摄影机或放映机用物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16274', '90021990', '编号9002未列名的其他物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16275', '90021990', '摄录一体机的镜头', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16276', '90021990', '编号9002未列名的其他物镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16277', '90022010', '照相机用滤色镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16278', '90022090', '其他光学仪器或装置滤色镜', '00', '035', '007', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16279', '90029010', '照相机用未列名光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16280', '90029090', '其他光学仪器用未列名光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16281', '90029090', '抗辐射镜头', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16282', '90029090', '其他光学仪器用未列名光学元件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16283', '90031100', '塑料制眼镜架', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16284', '90031900', '濒危动物产品制眼镜架', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16285', '90031900', '其他非塑料材料制眼镜架', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16286', '90039000', '眼镜架零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16287', '90041000', '太阳镜', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16288', '90049010', '变色镜', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16289', '90049090', '其他眼镜', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16290', '90051000', '双筒望远镜', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16291', '90058010', '天文望远镜及其他天文仪器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16292', '90058090', '其他光学望远镜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16293', '90059010', '天文望远镜及其他天文仪器用零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16294', '90059090', '其他望远镜零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16295', '90061010', '电子分色机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16296', '90061090', '其他制版照相机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16297', '90062000', '缩微照相机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16298', '90063000', '特种用途的照相机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16299', '90064000', '一次成相照相机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16300', '90065100', '通过镜头取景的照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16301', '90065200', '使用胶片宽＜35mm的其他照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16302', '90065210', '缩微照相机,使用缩微胶卷、胶片', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16303', '90065290', '使用胶片宽＜35mm的其他照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16304', '90065300', '其他照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16305', '90065900', '使用胶片宽＞35mm的其他照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16306', '90065910', '激光照相排版设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16307', '90065990', '分幅相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16308', '90065990', '电子(或电子快门)分幅相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16309', '90065990', '条纹相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16310', '90065990', '电子条纹相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16311', '90065990', '使用胶片宽＞35mm的其他照相机', '00', '005', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16312', '90066100', '放电式(电子式)闪光灯装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16313', '90066200', '闪光灯泡、方形闪光灯及类似品', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16314', '90066900', '其他照相闪光灯装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16315', '90066910', '闪光灯泡', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16316', '90066990', '其他照相闪光灯装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16317', '90069110', '特种用途照相机的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16318', '90069120', '一次成像照相机的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16319', '90069191', '照相机自动调焦组件', '00', '035', '006', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16320', '90069192', '其他照相机的快门组件', '00', '035', '006', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16321', '90069199', '其他照相机的其他零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16322', '90069900', '照相闪光灯装置及闪光灯泡的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16323', '90071100', '胶片宽＜16mm的摄影机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16324', '90071910', '胶片宽度≥16mm的高速电影摄影机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16325', '90071990', '胶片宽≥16mm的其他电影摄影机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16326', '90072000', '放映机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16327', '90072010', '数字式放映机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16328', '90072090', '其他放映机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16329', '90079100', '电影摄影机用零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16330', '90079200', '电影放映机用零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16331', '90081000', '幻灯机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16332', '90082000', '缩微阅读机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16333', '90083010', '正射投影仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16334', '90083090', '其他影像投影仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16335', '90084000', '照片(电影片除外)放大机及缩片机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16336', '90089010', '缩微阅读机的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16337', '90089020', '照片放大机及缩片机的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16338', '90089090', '其他影像投影仪的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16339', '90091110', '多色静电感光复印设备(直接法)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16340', '90091190', '其他静电感光复印设备(直接法)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16341', '90091210', '多色静电感光复印设备(间接法)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16342', '90091290', '静电感光复印设备(间接法)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16343', '90091291', '多功能复印一体机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16344', '90091299', '其他静电感光复印设备(间接法)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16345', '90092110', '带有光学系统的多色感光复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16346', '90092190', '带有光学系统的其他感光复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16347', '90092210', '接触式多色感光复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16348', '90092290', '接触式的其他感光复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16349', '90093010', '多色热敏复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16350', '90093090', '其他热敏复印设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16351', '90099100', '文件自动送入器', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16352', '90099200', '送纸器', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16353', '90099300', '分页器', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16354', '90099910', '有机光导体感光鼓', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16355', '90099990', '复印设备的其他零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16356', '90101010', '电影用胶卷的自动显影装置及设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16357', '90101020', '特种照相胶卷自动显影装置及设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16358', '90101091', '彩色胶卷用自动显影及设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16359', '90101099', '其他胶卷的自动显影装置及设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16360', '90104100', '将电路图直接记录到晶片上的装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16361', '90104200', '分步重复光刻机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16362', '90104900', '将电路图绘制到半导体上其他装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16363', '90105010', '负片显示器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16364', '90105021', '电影用的洗印装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16365', '90105022', '特种照相用的洗印装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16366', '90105029', '其他照相用的洗印装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16367', '90105029', '集成电路掩膜版制造及曝光设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16368', '90105029', '其他照相用的洗印装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16369', '90106000', '银幕及其他投影屏幕', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16370', '90109010', '电影洗印用洗印装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16371', '90109020', '特种照相洗印用装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16372', '90109090', '其他洗印用装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16373', '90111000', '立体显微镜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16374', '90112000', '缩微照相等用的其他显微镜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16375', '90118000', '其他显微镜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16376', '90119000', '复式光学显微镜的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16377', '90121000', '非光学显微镜及衍射设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16378', '90129000', '非光学显微镜及衍射设备的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16379', '90131000', '武器用望远镜瞄准具及其他望远镜', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16380', '90132000', '2.5GB/S及以上SDH、波分复用光传', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16381', '90132000', '激光切割机用气体激光发生器,切', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16382', '90132000', '2.5GB/S及以上SDH、波分复用光传', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16383', '90132000', 'AVLIS、MLIS和CRISLA激光系统', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16384', '90132000', '氩离子激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16385', '90132000', '紫翠玉激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16386', '90132000', '脉冲二氧化碳激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16387', '90132000', '脉冲受激准分子激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16388', '90132000', '铜蒸汽激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16389', '90132000', '其他激光器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16390', '90138010', '放大镜', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16391', '90138020', '光学门眼', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16392', '90138030', '液晶显示板', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16393', '90138030', '26英寸及以上不含背光模组的液晶', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16394', '90138030', '其他液晶显示板', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16395', '90138090', '其他装置,仪器及器具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16396', '90139010', '激光器,望远镜等装置的零件,附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16397', '90139010', '激光视盘机激光发送装置的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16398', '90139010', '激光器,望远镜等装置的零件,附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16399', '90139090', '编号9013所列其他货品的零附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16400', '90141000', '定向罗盘', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16401', '90142000', '航空惯性导航仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16402', '90142000', '航空惯性导航仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16403', '90142000', '航天惯性导航仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16404', '90142000', '陀螺稳定平台', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16405', '90142000', '自动驾驶仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16406', '90142000', '陀螺仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16407', '90142000', '专门设计的导航信息处理机', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16408', '90142000', '地形等高线绘制设备', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16409', '90142000', '场景绘图及相关设备', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16410', '90142000', '其他航空或航天导航仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16411', '90142010', '无人航空飞行器的自动驾驶仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16412', '90142010', '其他自动驾驶仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16413', '90142090', '航空惯性导航仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16414', '90142090', '其他航天惯性导航仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16415', '90142090', '陀螺稳定平台', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16416', '90142090', '陀螺仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16417', '90142090', '专门设计的导航信息处理机', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16418', '90142090', '地形等高线绘制设备', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16419', '90142090', '场景绘图及相关设备', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16420', '90142090', '其他航空或航天导航仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16421', '90148000', '其他导航仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16422', '90148000', '比例误差小于0.25%的加速度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16423', '90148000', '高度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16424', '90148000', '其他导航仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16425', '90149000', '导航仪器及装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16426', '90149010', '自动驾驶仪用的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16427', '90149090', '其他导航仪器及装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16428', '90151000', '测距仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16429', '90152000', '经纬仪及视距仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16430', '90153000', '水平仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16431', '90154000', '摄影测量用仪器及装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16432', '90158000', '其他测量仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16433', '90158000', '机载或舰载重力仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16434', '90158000', '机载或舰载重力梯度仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16435', '90158000', '其他测量仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16436', '90159000', '大地测量仪器及装置的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16437', '90159000', '机、舰载重力仪和重力梯度仪部件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16438', '90159000', '其他大地测量仪及装置的零、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16439', '90160010', '感量为0.1毫克或更精密的天平', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16440', '90160090', '50毫克≥感量＞0.1毫克的天平', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16441', '90171000', '绘图台及绘图机,不论是否自动', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16442', '90172000', '其他绘图、划线或数学计算器具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16443', '90173000', '千分尺、卡尺及量规', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16444', '90178000', '其他手用测量长度的器具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16445', '90179000', '绘图计算器具等仪器的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16446', '90181100', '心电图记录仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16447', '90181210', 'Ｂ型超声波诊断仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16448', '90181210', 'Ｂ型超声波诊断仪零件', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16449', '90181210', 'Ｂ型超声波诊断仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16450', '90181291', '彩色超声波诊断仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16451', '90181299', '其他超声波扫描诊断装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16452', '90181300', '核磁共振成像装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16453', '90181300', '核磁共振成像装置零件', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16454', '90181300', '核磁共振成像装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16455', '90181400', '闪烁摄影装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16456', '90181930', '病员监护仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16457', '90181941', '听力计', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16458', '90181949', '其他听力诊断装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16459', '90181990', '其他电气诊断装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16460', '90182000', '紫外线及红外线装置', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16461', '90183100', '注射器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16462', '90183210', '管状金属针头', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16463', '90183220', '缝合用针', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16464', '90183900', '导管、插管及类似品', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16465', '90184100', '牙钻机', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16466', '90184910', '装有牙科设备的牙科用椅', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16467', '90184990', '牙科用其他仪器及器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16468', '90185000', '眼科用其他仪器及器具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16469', '90189010', '听诊器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16470', '90189020', '血压测量仪器及器具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16471', '90189030', '内窥镜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16472', '90189040', '肾脏透析设备(人工肾)', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16473', '90189050', '透热疗法设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16474', '90189060', '输血设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16475', '90189070', '麻醉设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16476', '90189080', '宫内节育器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16477', '90189090', '其他医疗、外科或兽医用仪器器具', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16478', '90191010', '按摩器具', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16479', '90191090', '机械疗法器具,心理功能测验装置', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16480', '90192000', '臭氧治疗器,氧气治疗器等器具', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16481', '90200000', '其他呼吸器具及防毒面具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16482', '90211000', '矫形或骨折用器具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16483', '90212100', '假牙', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16484', '90212900', '假牙固定件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16485', '90213100', '人造关节', '00', '035', '006', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16486', '90213900', '其他人造的人体部分', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16487', '90214000', '助听器,不包括零件、附件', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16488', '90215000', '心脏起搏器,不包括零件、附件', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16489', '90219000', '其他弥补生理缺陷,残疾用器具等', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16490', '90219000', '人工耳蜗植入装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16491', '90219000', '其他弥补生理缺陷,残疾用器具等', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16492', '90221200', 'X射线断层检查仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16493', '90221300', '其他牙科用X射线应用设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16494', '90221400', '医用直线加速器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16495', '90221400', '其他医疗或兽医用X射线应用设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16496', '90221910', '低剂量X射线安全检查设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16497', '90221990', '其他X射线应用设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16498', '90221990', 'X射线全自动燃料芯块检查台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16499', '90221990', '其他X射线应用设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16500', '90222100', '医疗用α、β、γ射线设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16501', '90222900', '其他非医疗用α、β、γ射线设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16502', '90222900', 'γ射线全自动燃料芯块检查台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16503', '90222900', '其他非医疗用α、β、γ射线设备', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16504', '90223000', 'X射线管', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16505', '90223000', 'X射线断层检查仪专用球管', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16506', '90223000', '其他X射线管', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16507', '90229010', 'X射线影像增强器', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16508', '90229090', '编号9022所列其他设备及零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16509', '90229090', '射线发生器的零部件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16510', '90229090', '射线发生器的零部件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16511', '90229090', '闪光X射线发生器', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16512', '90229090', 'X射线断层检查仪专用探测器', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16513', '90229090', '编号9022所列其他设备及零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16514', '90230000', '专供示范的仪器、装置及模型', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16515', '90241000', '金属材料的试验用机器及器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16516', '90241010', '电子万能试验机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16517', '90241020', '硬度计', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16518', '90241090', '其他金属材料的试验用机器及器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16519', '90248000', '非金属材料的试验用机器及器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16520', '90249000', '各种材料的试验用机器零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16521', '90251100', '可直接读数的液体温度计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16522', '90251910', '非液体的工业用温度计及高温计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16523', '90251990', '非液体的其他温度计,高温计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16524', '90258000', '其他温度计,比重计,湿度计等仪器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16525', '90259000', '比重计,温度计等类似仪器的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16526', '90261000', '测量、检验液体流量或液位的仪器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16527', '90262000', '测量、检验压力的仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16528', '90262000', '锰铜压力计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16529', '90262000', '其他测量、检验压力的仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16530', '90262010', '锰铜压力计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16531', '90262010', '其他压力、差压变送器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16532', '90262090', '其他测量、检验压力的仪器及装置', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16533', '90268000', '液体或气体的其他测量或检验仪器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16534', '90269000', '液体或气体的测量或检验仪器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16535', '90271000', '气体或烟雾分析仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16536', '90271000', '用于连续操作的气体检测器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16537', '90271000', '其他气体或烟雾分析仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16538', '90272000', '色谱仪及电泳仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16539', '90272011', '气相色谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16540', '90272012', '液相色谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16541', '90272019', '其他色谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16542', '90272020', '电泳仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16543', '90273000', '分光仪、分光光度计及摄谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16544', '90274000', '曝光表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16545', '90275000', '使用光学射线的其他仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16546', '90278010', '质谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16547', '90278011', '集成电路生产用氦质谱检漏台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16548', '90278019', 'UF6质谱仪/离子源', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16549', '90278019', '测大于230质量单位离子质谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16550', '90278019', '其他质谱仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16551', '90278090', '其他理化分析仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16552', '90278091', '曝光表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16553', '90278099', '其他理化分析仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16554', '90279000', '检镜切片机,理化分析仪器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16555', '90281010', '煤气表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16556', '90281090', '其他气量计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16557', '90282010', '水表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16558', '90282090', '其他液量计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16559', '90283010', '电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16560', '90283011', '单相感应式电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16561', '90283012', '三相感应式电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16562', '90283013', '单相电子式(静止式)电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16563', '90283014', '三相电子式(静止式)电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16564', '90283019', '其他电度表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16565', '90283090', '其他电量计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16566', '90289010', '工业用计量仪表零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16567', '90289090', '非工业用计量仪表零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16568', '90291010', '转数计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16569', '90291020', '车费计、里程计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16570', '90291090', '产量计数器、步数计及类似仪表', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16571', '90292010', '车辆用速度计', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16572', '90292090', '其他速度计及转速表,频闪观测仪', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16573', '90299000', '转数计、车费计及类似仪表零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16574', '90301000', '离子射线的测量或检验仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16575', '90302010', '300兆赫以下的通用示波器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16576', '90302090', '其他示波器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16577', '90303110', '五位半及以下的数字万用表,不带', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16578', '90303190', '其他万用表,不带记录装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16579', '90303200', '万用表,带记录装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16580', '90303310', '五位半及以下的数字电流、电压表', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16581', '90303320', '电阻测试仪,不带记录装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16582', '90303390', '检测电压、电流及功率的其他仪器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16583', '90303900', '其他带记录装置的检测电压、电流', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16584', '90303910', '五位半及以下的数字电流,电压表', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16585', '90303920', '电阻测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16586', '90303990', '检测电压、电流及功率的其他仪器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16587', '90304010', '12.4千兆赫兹以下数字式频率计', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16588', '90304090', '其他无线电通讯专用仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16589', '90308200', '检测半导体晶片或器件的仪器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16590', '90308310', '电感及电容测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16591', '90308390', '其他电量的测量或检验仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16592', '90308410', '电感及电容测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16593', '90308490', '其他电量的测量或检验仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16594', '90308910', '其他电感及电容测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16595', '90308990', '其他电量的测量或检验仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16596', '90308990', '中子探测和测量仪表', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16597', '90308990', '其他电量的测量或检验仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16598', '90309000', '检测半导体晶片及器件的仪器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16599', '90309000', 'ITA产品用的印刷电路组件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16600', '90309000', '检测半导体晶片及器件的仪器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16601', '90309000', 'ITA产品用的印刷电路组件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16602', '90309000', '编号9030所属货品的零件及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16603', '90311000', '机械零件平衡试验机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16604', '90311000', '陀螺动态平衡测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16605', '90311000', '其他机械零件平衡试验机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16606', '90312000', '试验台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16607', '90312000', '陀螺/马达运转试验台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16608', '90312000', '加速度表测试台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16609', '90312000', '试车台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16610', '90312000', '惯性平台测试台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16611', '90312000', '其他试验台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16612', '90313000', '轮廓投影仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16613', '90314100', '制造半导体器件的检测仪和器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16614', '90314110', '集成电路生产用氦质谱检漏台', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16615', '90314190', '其他检测半导体器件的仪器和器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16616', '90314900', '用于光盘生产线的AID自动检测机', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16617', '90314900', '其他光学测量或检验仪器和器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16618', '90314910', '轮廓投影仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16619', '90314990', '光盘质量在线检测仪及离线检测仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16620', '90314990', '其他光学测量或检验仪器和器具', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16621', '90318010', '光纤通信及光纤性能测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16622', '90318020', '坐标测量仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16623', '90318031', '超声波探伤检测仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16624', '90318032', '磁粉探伤检测仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16625', '90318033', '涡流探伤检测仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16626', '90318039', '其他无损探伤检测仪器(射线探伤', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16627', '90318090', '跑道摩擦系数测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16628', '90318090', '跑道摩擦系数测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16629', '90318090', '惯性测量单元测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16630', '90318090', '陀螺调谐测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16631', '90318090', '跑道摩擦系数测试仪', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16632', '90318090', '其他测量,检验仪器,器具及机器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16633', '90319000', '编号9031的仪器及器具的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16634', '90319000', '惯性测量单元稳定元件加工夹具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16635', '90319000', '惯性平台平衡夹具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16636', '90319000', '编号9031的仪器及器具的其他零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16637', '90321000', '恒温器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16638', '90322000', '恒压器', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16639', '90328100', '其他液压或气压的仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16640', '90328900', '三坐标测量机用自动控制柜', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16641', '90328900', '飞机自动驾驶系统', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16642', '90328900', '机床用成套数控伺服装置', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16643', '90328900', '风力发电设备用控制器', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16644', '90328900', '飞机自动驾驶系统', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16645', '90328900', '组合喷气发动机的燃烧调节装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16646', '90328900', '其他自动调节或控制仪器及装置', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16647', '90329000', '自动调节或控制仪器零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16648', '90330000', '飞机自动驾驶系统的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16649', '90330000', '飞机自动驾驶系统的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16650', '90330000', '第90章其他编号未列名零、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16651', '91011100', '机械指示式的贵金属电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16652', '91011200', '光电显示式的贵金属电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16653', '91011900', '其他贵金属电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16654', '91011910', '光电显示式的贵金属电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16655', '91011990', '其他贵金属电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16656', '91012100', '自动上弦的贵金属机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16657', '91012100', '含濒危动物皮自动上弦贵金属机械', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16658', '91012100', '其他自动上弦贵金属机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16659', '91012900', '非自动上弦贵金属机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16660', '91012900', '含濒危动物皮非自动上弦贵金属机', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16661', '91012900', '其他非自动上弦贵金属机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16662', '91019100', '贵金属电子怀表及其他电子表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16663', '91019900', '贵金属机械怀表及其他机械表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16664', '91021100', '机械指示式的其他电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16665', '91021200', '光电显示式的其他电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16666', '91021900', '其他电子手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16667', '91022100', '其他自动上弦的机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16668', '91022100', '含濒危动物皮其他自动上弦的机械', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16669', '91022100', '其他自动上弦的机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16670', '91022900', '其他非自动上弦的机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16671', '91022900', '含濒危动物皮其他非自动上弦机械', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16672', '91022900', '其他非自动上弦的机械手表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16673', '91029100', '电力驱动的电子怀表及其他电子表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16674', '91029900', '其他机械怀表,秒表及其他表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16675', '91031000', '以表芯装成的电子钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16676', '91039000', '以表芯装成的机械钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16677', '91040000', '仪表板钟及车辆船舶等用的类似钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16678', '91051100', '电子闹钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16679', '91051900', '机械闹钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16680', '91052100', '电子挂钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16681', '91052900', '机械挂钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16682', '91059110', '电子天文钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16683', '91059190', '其他电子钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16684', '91059900', '其他机械钟', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16685', '91061000', '考勤钟、时刻记录器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16686', '91062000', '停车计时表', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16687', '91069000', '其他时间记录器及其他类似装置', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16688', '91070000', '定时开关', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16689', '91081100', '已组装的机械指示式完整电子表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16690', '91081200', '已组装的光电显示式完整电子表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16691', '91081900', '其他已组装的完整电子表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16692', '91082000', '已组装的自动上弦完整表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16693', '91089010', '已组装表面≤33.8mm机械完整表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16694', '91089090', '其他已组装完整机械表芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16695', '91091100', '已组装的电子完整闹钟芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16696', '91091900', '已组装的其他完整电子钟芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16697', '91099000', '已组装的完整机械钟芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16698', '91101100', '未组装的完整表机芯', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16699', '91101200', '已组装的不完整表机芯', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16700', '91101900', '未组装的不完整表机芯', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16701', '91109010', '未组装的完整的钟机芯', '00', '035', '008', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16702', '91109090', '不完整的钟机芯', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16703', '91111000', '贵金属或包贵金属制的表壳', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16704', '91111000', '按重量计含金量在80%及以上的黄', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16705', '91111000', '其他贵金属或包贵金属制的表壳', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16706', '91112000', '贱金属制的表壳', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16707', '91118000', '非金属制的表壳', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16708', '91119000', '表壳的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16709', '91122000', '钟壳和本章其他商品的类似外壳', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16710', '91129000', '钟壳零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16711', '91131000', '贵金属或包贵金属制的表带及零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16712', '91131000', '按重量计含金量在80%及以上的黄', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16713', '91131000', '其他贵金属或包贵金属制的表带及', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16714', '91132000', '贱金属制的表带及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16715', '91139000', '濒危动物皮制的表带及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16716', '91139000', '其他非金属制的表带及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16717', '91141000', '钟、表的发条', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16718', '91142000', '钟、表的宝石轴承', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16719', '91143000', '钟面或表面', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16720', '91144000', '钟、表的夹板及横担(过桥)', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16721', '91149000', '钟、表的其他零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16722', '92011000', '竖式钢琴', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16723', '92012000', '完税价格≥5万美元的大钢琴', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16724', '92012000', '完税价格≥5万美元的大钢琴', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16725', '92012000', '其他大钢琴', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16726', '92019000', '其他钢琴', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16727', '92021000', '完税价格≥1.5万美元的含濒危动', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16728', '92021000', '其他含濒危动物皮的弓弦乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16729', '92021000', '完税价格≥1.5万美元的不含野生', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16730', '92021000', '其他弓弦乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16731', '92029000', '含濒危动物成分的其他弦乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16732', '92029000', '其他弦乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16733', '92030000', '键盘管风琴、簧风琴及类似乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16734', '92041000', '手风琴及类似乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16735', '92042000', '口琴', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16736', '92051000', '完税价格≥2000美元的铜管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16737', '92051000', '完税价格≥2000美元的铜管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16738', '92051000', '其他铜管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16739', '92059000', '完税价格≥1万美元的其他管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16740', '92059000', '其他管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16741', '92059010', '键盘管风琴、簧风琴及类似乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16742', '92059020', '手风琴及类似乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16743', '92059030', '口琴', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16744', '92059090', '完税价格≥1万美元的其他管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16745', '92059090', '其他管乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16746', '92060000', '含濒危动物皮的打击乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16747', '92060000', '其他打击乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16748', '92071000', '通过电产生或扩大声音的键盘乐器', '00', '008', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16749', '92079000', '其他通过电产生或扩大声音的乐器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16750', '92081000', '百音盒', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16751', '92089000', '92章其他编号未列名的其他乐器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16752', '92091000', '节拍器、音叉及定音管', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16753', '92092000', '百音盒的机械装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16754', '92093000', '乐器用的弦', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16755', '92099100', '钢琴的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16756', '92099200', '编号9202所列乐器的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16757', '92099300', '编号9203所列乐器的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16758', '92099400', '编号9207所列乐器的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16759', '92099900', '本章其他编号未列名的乐器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16760', '92099910', '节拍器、音叉及定音管', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16761', '92099920', '百音盒的机械装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16762', '92099990', '本章其他编号未列名的乐器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16763', '93011100', '自推进的火炮武器', '00', '002', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16764', '93011900', '其他火炮武器', '00', '002', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16765', '93012000', '火箭发射装置；火焰喷射器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16766', '93019000', '其他军用武器', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16767', '93020000', '左轮手枪及其他手枪', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16768', '93031000', '前装枪', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16769', '93032000', '其他运动、狩猎或打靶用滑膛枪', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16770', '93033000', '其他运动、狩猎或打靶用步枪', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16771', '93039000', '其他火器及类似装置', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16772', '93040000', '其他武器(如弹簧枪,气枪,警棍等', '00', '013', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16773', '93051000', '左轮手枪或其他手枪的零件及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16774', '93052100', '猎枪筒', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16775', '93052900', '滑膛枪或步枪用其他零件及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16776', '93059100', '其他军用武器用零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16777', '93059900', '其他武器的零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16778', '93061000', '铆接机或类似工具的子弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16779', '93062100', '猎枪弹', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16780', '93062900', '猎枪弹的零件及气枪弹丸', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16781', '93063000', '其他子弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16782', '93063080', '铆接机或类似工具的子弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16783', '93063090', '其他子弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16784', '93069000', '其他弹药和射弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16785', '93069000', '敏感物项管制的导弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16786', '93069000', '运载火箭', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16787', '93069000', '探空火箭', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16788', '93069000', '巡航导弹', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16789', '93069000', '其他弹药和射弹及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16790', '93070000', '剑,刀,长矛和类似的武器及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16791', '93070000', '濒危动物制的刀鞘、剑鞘', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16792', '93070000', '其他剑,刀,长矛和类似的武器及其', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16793', '94011000', '飞机用坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16794', '94012000', '机动车辆用坐具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16795', '94012010', '皮革或再生皮革面的机动车辆用坐', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16796', '94012090', '其他机动车辆用坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16797', '94013000', '可调高度的转动坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16798', '94014000', '能作床用的两用椅', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16799', '94014010', '皮革或再生皮革面的能作床用的两', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16800', '94014090', '其他能作床用的两用椅', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16801', '94015000', '藤、柳条、竹及类似材料制的坐具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16802', '94015100', '竹制或藤制的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16803', '94015900', '柳条及类似材料制的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16804', '94016100', '装软垫的木框架的其他坐具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16805', '94016110', '皮革或再生皮革面的装软垫的木框', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16806', '94016190', '其他装软垫的木框架的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16807', '94016900', '其他木框架的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16808', '94017100', '带软垫的金属框架的坐具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16809', '94017110', '皮革或再生皮革面的装软垫的金属', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16810', '94017190', '其他装软垫的金属框架的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16811', '94017900', '其他金属框架的坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16812', '94018000', '其他坐具', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16813', '94018010', '石制的其他坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16814', '94018090', '其他坐具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16815', '94019011', '机动车辆用座椅调角器', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16816', '94019019', '机动车辆用其他座具零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16817', '94019090', '其他座具的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16818', '94021010', '理发用椅及其零件', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16819', '94021090', '牙科及类似用途的椅及其零件', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16820', '94029000', '其他医疗,外科,兽医用家具及零件', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16821', '94031000', '办公室用金属家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16822', '94032000', '其他金属家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16823', '94033000', '办公室用木家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16824', '94033000', '濒危木制办公室用木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16825', '94033000', '其他办公室用木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16826', '94034000', '厨房用木家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16827', '94034000', '濒危木制厨房用木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16828', '94034000', '其他厨房用木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16829', '94035010', '卧室用红木制家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16830', '94035010', '卧室用濒危红木制家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16831', '94035010', '其他卧室用红木制家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16832', '94035091', '卧室用漆木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16833', '94035099', '卧室用其他木家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16834', '94035099', '卧室用其他濒危木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16835', '94035099', '卧室用其他木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16836', '94036010', '其他红木制家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16837', '94036010', '濒危红木制其他家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16838', '94036010', '其他红木制家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16839', '94036091', '其他漆木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16840', '94036099', '其他木家具', '00', '011', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16841', '94036099', '濒危木制其他家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16842', '94036099', '其他木家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16843', '94037000', '塑料家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16844', '94038010', '藤、柳条、竹及类似材料制家具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16845', '94038090', '其他材料制的家具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16846', '94038091', '石制的家具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16847', '94038099', '其他材料制的家具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16848', '94038100', '竹制或藤制的家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16849', '94038910', '柳条及类似材料制的家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16850', '94038920', '石制的家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16851', '94038990', '其他材料制的家具', '00', '011', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16852', '94039000', '飞机内厨房家具零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16853', '94039000', '其他编号9403所列物品的零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16854', '94041000', '弹簧床垫', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16855', '94042100', '蔺草包面的垫子', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16856', '94042100', '海绵橡胶或泡沫塑料制褥垫', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16857', '94042900', '其他材料制褥垫', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16858', '94043010', '濒危野禽羽毛或羽绒填充的睡袋', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16859', '94043010', '其他羽毛或羽绒填充的睡袋', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16860', '94043090', '其他睡袋', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16861', '94049010', '濒危野禽羽绒或羽毛填充其他寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16862', '94049010', '棉外壳野禽羽绒和羽毛填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16863', '94049010', '棉外壳野禽羽绒和羽毛填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16864', '94049010', '化纤外壳野禽羽绒和羽毛填充寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16865', '94049010', '其他材料制外壳寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16866', '94049010', '其他羽绒或羽毛填充的其他寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16867', '94049010', '棉外壳羽绒和羽毛填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16868', '94049010', '棉外壳羽绒羽毛填充寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16869', '94049010', '化纤外壳羽绒和羽毛填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16870', '94049010', '其他材料制外壳的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16871', '94049020', '濒危兽毛填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16872', '94049020', '棉外壳野生兽毛填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16873', '94049020', '棉外壳野生兽毛填充寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16874', '94049020', '化纤外壳野生兽毛填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16875', '94049020', '其他材料制外壳寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16876', '94049020', '其他兽毛填充的其他寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16877', '94049020', '棉外壳兽毛填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16878', '94049020', '棉外壳兽毛填充的寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16879', '94049020', '化纤外壳兽毛填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16880', '94049020', '其他材料制外壳兽毛填充寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16881', '94049030', '丝棉填充的其他寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16882', '94049030', '棉外壳丝棉填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16883', '94049030', '棉外壳丝棉填充的寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16884', '94049030', '化纤外壳丝棉填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16885', '94049030', '其他材料制外壳丝棉填充寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16886', '94049040', '化纤棉填充的其他寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16887', '94049040', '棉外壳化纤棉填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16888', '94049040', '棉外壳化纤棉填充的寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16889', '94049040', '化纤外壳化纤棉填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16890', '94049040', '其他材料外壳化纤棉填充寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16891', '94049090', '其他寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16892', '94049090', '棉外壳其他材料填充的被子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16893', '94049090', '棉外壳其他材料填充寝具及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16894', '94049090', '化纤外壳其他材料填充的寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16895', '94049090', '其他材料制外壳寝具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16896', '94051000', '枝形吊灯', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16897', '94052000', '电气台灯、床头灯、落地灯', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16898', '94053000', '圣诞树用的成套灯具', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16899', '94054010', '探照灯', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16900', '94054020', '聚光灯', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16901', '94054090', '其他电灯及照明装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16902', '94054090', '医疗外科专用照明设备', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16903', '94054090', '其他电灯及照明装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16904', '94055000', '非电气灯具及照明装置', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16905', '94056000', '发光标志、发光铭牌及类似品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16906', '94059100', '编号9405所列物品的玻璃制零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16907', '94059200', '编号9405所列物品的塑料制零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16908', '94059900', '编号9405所列物品其他材料制零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16909', '94060000', '用动植物材料制作的活动房屋', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16910', '94060000', '带有风扇的高效空气粒子过滤单元', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16911', '94060000', '其他活动房屋', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16912', '95010000', '供儿童乘骑的带轮玩具及玩偶车', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16913', '95021000', '玩偶', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16914', '95029100', '玩偶服装及其附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16915', '95029900', '其他玩偶零件、附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16916', '95030010', '三轮车、踏板车、踏板汽车和类似', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16917', '95030021', '动物玩偶,不论是否着装', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16918', '95030029', '其他玩偶,不论是否着装', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16919', '95030031', '缩小(按比例缩小)的电动火车模型', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16920', '95030039', '其他缩小(按比例缩小)的全套模型', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16921', '95030040', '其他建筑套件及建筑玩具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16922', '95030050', '玩具乐器', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16923', '95030060', '智力玩具', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16924', '95030081', '组装成套或全套的其他玩具', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16925', '95030082', '其他带动力装置的玩具及模型', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16926', '95030089', '其他未列名玩具', '00', '006', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16927', '95030090', '玩具、模型零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16928', '95031000', '玩具电动火车', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16929', '95032000', '缩小(按比例缩小)的全套模型组件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16930', '95033000', '其他建筑套件及建筑玩具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16931', '95034100', '填充的玩具动物', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16932', '95034900', '其他玩具动物', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16933', '95035000', '玩具乐器', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16934', '95036000', '智力玩具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16935', '95037000', '组装成套的其他玩具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16936', '95038000', '其他带动力装置的玩具及模型', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16937', '95039000', '其他未列名玩具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16938', '95041000', '电视电子游戏机', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16939', '95042000', '台球用品及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16940', '95042000', '濒危木制的台球用品及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16941', '95042000', '其他台球用品及附件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16942', '95043010', '用特定支付方式使其工作的电子游', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16943', '95043090', '用特定支付方式工作的其他游戏用', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16944', '95044000', '扑克牌', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16945', '95049010', '其他电子游戏机', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16946', '95049021', '保龄球自动分瓶机', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16947', '95049022', '保龄球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16948', '95049023', '保龄球瓶', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16949', '95049029', '其他保龄球自动球道设备及器具', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16950', '95049030', '象棋、跳棋等棋类用品', '00', '019', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16951', '95049040', '麻将及类似桌上游戏用品', '00', '019', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16952', '95049090', '其他游艺场、桌上或室内游戏用品', '00', '001', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16953', '95051000', '含动植物性材料的圣诞用品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16954', '95051000', '其他圣诞节用品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16955', '95059000', '其他节日用品或娱乐用品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16956', '95061100', '滑雪屐', '00', '025', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16957', '95061200', '滑雪屐扣件(滑雪屐带)', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16958', '95061900', '其他滑雪用具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16959', '95062100', '帆板', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16960', '95062900', '其他水上运动用具', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16961', '95063100', '完整的高尔夫球棍', '00', '014', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16962', '95063200', '高尔夫球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16963', '95063900', '其他高尔夫球用具', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16964', '95064010', '乒乓球', '00', '043', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16965', '95064090', '其他乒乓球运动用品及器械', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16966', '95065100', '草地网球拍', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16967', '95065900', '其他网球拍、羽毛球拍或类似球拍', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16968', '95066100', '草地网球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16969', '95066210', '篮球、足球、排球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16970', '95066290', '其他可充气的球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16971', '95066900', '其他球', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16972', '95067010', '溜冰鞋', '00', '025', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16973', '95067020', '旱冰鞋', '00', '025', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16974', '95069110', '健身及康复器械', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16975', '95069120', '滑板', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16976', '95069190', '一般的体育活动、体操或竞技用品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16977', '95069900', '其他未列名的95章用品及设备', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16978', '95071000', '用植物性材料制作的钓鱼竿', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16979', '95071000', '碳纤维鱼竿', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16980', '95071000', '其他钓鱼竿', '00', '019', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16981', '95072000', '钓鱼钩', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16982', '95073000', '钓线轮', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16983', '95079000', '其他用品', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16984', '95081000', '流动马戏团及流动动物园', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16985', '95081000', '有濒危动物的流动马戏团', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16986', '95081000', '其他流动马戏团及流动动物园', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16987', '95089000', '其他游乐场娱乐设备;流动剧团', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16988', '96011000', '已加工的濒危兽牙及其制品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16989', '96011000', '其他已加工的兽牙及其制品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16990', '96019000', '其他已加工濒危动物质雕刻料', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16991', '96019000', '其他已加工动物质雕刻料及其制品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16992', '96020010', '装药用胶囊', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16993', '96020090', '已加工植物或矿物质雕刻料及制品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16994', '96031000', '用枝条或其他植物材料捆扎成的帚', '00', '016', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16995', '96032100', '牙刷', '00', '016', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16996', '96032900', '野生动物毛制剃须刷,发刷', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16997', '96032900', '剃须刷,发刷,睫毛刷等人体化妆刷', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16998', '96033010', '濒危动物毛制的画笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('16999', '96033010', '其他画笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17000', '96033020', '濒危动物毛制的毛笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17001', '96033020', '其他毛笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17002', '96033090', '濒危动物毛制化妆用的类似笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17003', '96033090', '其他化妆用的类似笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17004', '96034011', '猪鬃制漆刷及类似品', '00', '016', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17005', '96034019', '其他材料制漆刷及类似刷', '00', '016', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17006', '96034020', '油漆块垫及滚筒', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17007', '96035011', '作为机器、器具零件的金属丝刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17008', '96035019', '作为车辆零件的金属丝刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17009', '96035091', '濒危动物毛制作为机器零件其他刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17010', '96035091', '其他作为机器、器具零件的其他刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17011', '96035099', '濒危动物毛制作为车辆零件其他刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17012', '96035099', '其他作为车辆零件的其他刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17013', '96039010', '濒危野禽羽毛掸', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17014', '96039010', '其他羽毛掸', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17015', '96039090', '濒危动物毛、鬃、尾制其他帚,刷', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17016', '96039090', '其他动植物材料制帚,刷,拖把等', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17017', '96039090', '其他材料制帚,刷,拖把及毛掸', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17018', '96040000', '手用粗筛、细筛', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17019', '96050000', '个人梳妆、缝纫等用成套旅行用品', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17020', '96050000', '含野生动物成分的成套旅行用品', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17021', '96050000', '个人梳妆、缝纫等用成套旅行用品', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17022', '96061000', '揿扣及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17023', '96062100', '塑料制钮扣', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17024', '96062200', '金属制钮扣', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17025', '96062900', '含濒危动物成分的其他钮扣', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17026', '96062900', '其他钮扣', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17027', '96063000', '钮扣芯及钮扣的其他零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17028', '96071100', '装有贱金属齿的拉链', '00', '030', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17029', '96071900', '其他拉链', '00', '030', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17030', '96072000', '拉链零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17031', '96081000', '圆珠笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17032', '96082000', '毡尖和其他渗水式笔尖笔及唛头笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17033', '96083100', '墨汁画笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17034', '96083910', '自来水笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17035', '96083990', '其他钢笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17036', '96084000', '活动铅笔', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17037', '96085000', '含有两种笔及以上的成套货品', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17038', '96086000', '圆珠笔芯', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17039', '96089100', '钢笔头及笔尖粒', '00', '012', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17040', '96089910', '机器、仪器用笔', '00', '012', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17041', '96089920', '蜡纸铁笔,钢笔杆,铅笔杆等', '00', '012', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17042', '96089990', '其他笔零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17043', '96091010', '铅笔', '00', '035', '041', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17044', '96091020', '颜色铅笔', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17045', '96092000', '铅笔芯,黑的或其他颜色的', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17046', '96099000', '蜡笔,图画碳笔,书写或绘画用粉笔', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17047', '96100000', '具有书写或绘画面的石板、黑板', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17048', '96110000', '含濒危动物成分的手用日期戳', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17049', '96110000', '手用日期戳、封缄戳及类似印戳', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17050', '96121000', '打字机色带或类似色带', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17051', '96121000', '化学纤维制机织打字机色带', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17052', '96121000', '打字机色带或类似色带', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17053', '96122000', '印台', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17054', '96131000', '一次性袖珍气体打火机', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17055', '96132000', '可充气袖珍气体打火机', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17056', '96138000', '其他打火器', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17057', '96139000', '打火机及打火器零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17058', '96140010', '含濒危动物成分的烟斗及烟斗头', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17059', '96140010', '用植物性材料制作的烟斗及烟斗头', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17060', '96140010', '其他烟斗及烟斗头', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17061', '96140090', '含濒危野生动物成份的烟嘴及其零', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17062', '96140090', '其他烟嘴及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17063', '96142000', '含濒危动物成分的烟斗及烟斗头', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17064', '96142000', '用植物性材料制作的烟斗及烟斗头', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17065', '96142000', '其他烟斗及烟斗头', '00', '007', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17066', '96149000', '含野生动物成份的烟嘴及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17067', '96149000', '其他烟嘴及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17068', '96151100', '硬质橡胶、塑料制梳子、发夹等', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17069', '96151900', '含濒危动物成分的其他材料制梳子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17070', '96151900', '用其他动植物材料制的梳子', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17071', '96151900', '其他材料制梳子、角质发夹等', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17072', '96159000', '其他发夹、卷发器等及其零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17073', '96161000', '香水喷雾器或类似的化妆用喷雾器', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17074', '96162000', '施敷脂粉或化妆品用粉扑及粉拍', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17075', '96170010', '保温瓶及零件', '00', '007', '035', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17076', '96170090', '其他真空容器及零件', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17077', '96180000', '用植物性材料制作的人体模型', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17078', '96180000', '裁缝用其他人体模型', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17079', '97011010', '手绘油画、粉画及其他画的原件', '00', '023', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17080', '97011020', '手绘油画、粉画及其他画的复制品', '00', '023', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17081', '97019000', '含濒危动物成分的拼贴画', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17082', '97019000', '用其他动植物材料制作的拼贴画', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17083', '97019000', '其他拼贴画及类似装饰板', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17084', '97020000', '雕版画、印制画、石印画的原本', '00', '023', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17085', '97030000', '濒危动植物材料制的雕塑品原件', '00', '023', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17086', '97030000', '其他各种材料制的雕塑品原件', '00', '023', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17087', '97040010', '邮票', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17088', '97040090', '印花税票及类似票证等', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17089', '97050000', '含濒危动植物的收藏品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17090', '97050000', '具有动、植、矿物学意义的收藏品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17091', '97060000', '超过一百年的濒危野生动植古物', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17092', '97060000', '其他超过一百年的古物', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17093', '98010010', '≤2000元RMB的非税,非证进口商品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17094', '98010030', '本条为辨别新旧库而设', '00', '001', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17095', '98010090', '其他未分类商品', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17096', '98013000', '流通中的货币现钞', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17097', '98030010', '系统软件', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17098', '98030020', '支撑软件', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17099', '98030030', '应用软件', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17100', '98030090', '其他软件', '00', '006', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17101', '99520100', '新疆棉', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17102', '99520200', '内地棉', '00', '035', '000', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17104', '15180000', '环氧大豆油（工业用）', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17105', '85049049', '变压器零件/铝圆线线圈', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17106', '39021000', '改性PP塑胶粒 PD-305', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17107', '72104900', '热镀锌钢卷/厚度:1MM,宽度:1350MM', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17108', '39201090', 'PE薄膜新料', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17109', '85049020', '不间断电源用升压变换线圈', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17110', '39231000', '手提打印机工具箱', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17111', '54026990', '涤纶长丝纱线', '00', '千克', null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17112', '85322590', '塑胶电容', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17113', '85044099', '变频器', '00', '个', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17114', '85177090', '交换机用插板/钢铁制', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17115', '40161090', '海绵垫', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17116', '56039310', '不织布片/浸渍', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17117', '85299060', '橡胶配件', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17118', '85189000', '塑胶配件', '00', '千克', '千个', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_goods` VALUES ('17119', '39211310', 'PU人革', '00', '千克', '米', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_investment_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_investment_modes`;
CREATE TABLE `dict_investment_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_investment_modes
-- ----------------------------
INSERT INTO `dict_investment_modes` VALUES ('1', '1', '技术型', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_investment_modes` VALUES ('2', '2', '生产型', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_load_ports`
-- ----------------------------
DROP TABLE IF EXISTS `dict_load_ports`;
CREATE TABLE `dict_load_ports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `custom_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_load_ports
-- ----------------------------
INSERT INTO `dict_load_ports` VALUES ('5', '5238', '凤岗车检场', '5207', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('7', '5294', '56号泊位', '5216', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('9', '5268', '寮步车检场', '5217', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('10', '5284', '长安车检场', '5213', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('12', '5269', '东莞保税（B型）/泽盛 BW521669415/', '5220', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('13', '5297', '装卸口岸:加贸结转', '5200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_load_ports` VALUES ('14', '5239', '虎门车检场', '5205', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_metal_cabinets`
-- ----------------------------
DROP TABLE IF EXISTS `dict_metal_cabinets`;
CREATE TABLE `dict_metal_cabinets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` decimal(15,4) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_metal_cabinets
-- ----------------------------
INSERT INTO `dict_metal_cabinets` VALUES ('1', '1', '铁皮柜', '2200.0000', '20\'*8\'*8\'6\"', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('3', '2', '铝皮柜(冻柜)', '2200.0000', '20*8*8\'6', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('4', '4', '铝皮柜', '3800.0000', '40\'*8\'*8\'6\"', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('5', '6', '铁皮柜', '3800.0000', '40\'*8\'*9\'6\"', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('6', '8', '铝皮柜(冻柜)', '3800.0000', '40\'*8\'*9\'6\"', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('7', '9', '铁皮柜', '3800.0000', '45\'*8\'*9\'6\"', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('8', '3', '铁皮柜', '3800.0000', '40’*8‘*8’6”', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('9', '7', '铝皮柜', '3800.0000', '40‘*8’*9‘6“', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('10', '5', '铝皮柜（冻柜）', '3800.0000', '40’*8‘*8’6”', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('11', 'A', '铝皮柜', '3800.0000', '45‘*8’*9‘6“', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_metal_cabinets` VALUES ('12', 'B', '铁皮柜', '3800.0000', '48’*8‘*9’6”', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_pay_ways`
-- ----------------------------
DROP TABLE IF EXISTS `dict_pay_ways`;
CREATE TABLE `dict_pay_ways` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_pay_ways
-- ----------------------------
INSERT INTO `dict_pay_ways` VALUES ('1', '7', '先出后结', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('2', '2', '电汇', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('3', '6', '信用证', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('4', '1', '信汇', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('5', '3', '票汇', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('6', '4', '付款交单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('7', '5', '承兑交单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('8', '8', '先结后出', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_pay_ways` VALUES ('9', '9', '其他', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_ports`
-- ----------------------------
DROP TABLE IF EXISTS `dict_ports`;
CREATE TABLE `dict_ports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_ports
-- ----------------------------
INSERT INTO `dict_ports` VALUES ('1', '1002', '喀布尔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('2', '1003', '坎大哈', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('3', '1004', '中国', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('4', '1005', '东莞物流', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('5', '3151', '长滩', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('6', '3154', '洛杉矶', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('7', '3195', '西雅图', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('8', '1045', '孟买', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('9', '1463', '达曼', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('10', '110', '香港', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('11', '1099', '雅加达', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('12', '1164', '泗水', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('13', '1421', '阿什杜德', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('14', '1331', '东京', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('15', '1354', '横宾', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('16', '1287', '名古屋', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('17', '1212', '千叶', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('18', '1303', '大阪', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('19', '1359', '亚喀巴', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('20', '1366', '舒艾巴', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('21', '1369', '贝鲁特', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('22', '121', '澳门', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('23', '1393', '马六甲', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('24', '1399', '巴生港', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('25', '1418', '卡拉奇', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('26', '1419', '耶路撤冷', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('27', '1441', '马尼拉', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('28', '1464', '吉达', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('29', '132', '新加坡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('30', '1480', '釜山', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('31', '1489', '科伦坡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('32', '1495', '塔尔图斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('33', '1494', '拉塔基亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('34', '1497', '曼谷', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('35', '1518', '伊斯坦布尔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('36', '1543', '迪拜', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('38', '1561', '基隆', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('39', '1560', '高雄', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('40', '1620', '塞得港', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('41', '1670', '巴尔迪亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('42', '1727', '拉格斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('43', '1754', '开普敦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('44', '1752', '德班', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('45', '1787', '安特卫普', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('46', '1804', '哥本哈根', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('47', '1974', '伦敦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('48', '2057', '南安普敦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('49', '3419', '菲利克斯托', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('50', '2101', '不来梅', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('51', '2110', '汉堡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('52', '2165', '勒阿夫勒', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('53', '2170', '马骞', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('54', '2210', '都柏林', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('55', '2258', '那不勒斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('56', '2290', '的里雅斯特', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('57', '2245', '热那亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('58', '2309', '鹿特丹', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('59', '2359', '里斯本', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('60', '2343', '比雷埃夫斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('61', '2382', '巴塞罗那', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('62', '2428', '哈米纳', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('63', '3453', '布达佩斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('64', '325', '摩纳哥', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('65', '2469', '奥勒松', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('66', '2533', '格丁尼亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('67', '2551', '哥得堡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('68', '2639', '巴塞尔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('69', '2654', '圣彼得堡', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('70', '2665', '塞瓦斯托波尔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('71', '2705', '不宜诺斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('72', '2754', '里约热内卢', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('73', '2762', '圣多斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('74', '2774', '伊基克', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('75', '2790', '布韦那文图拉', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('76', '2831', '圣多明各', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('77', '2835', '曼塔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('78', '2881', '曼萨尼略', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('79', '2902', '科隆', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('80', '2915', '奇卡马港', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('81', '2954', '科洛尼亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('82', '3089', '温哥华', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('83', '3086', '多伦多', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('84', '3125', '芝加哥', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('85', '3190', '萨凡纳', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('86', '3242', '墨尔本', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('87', '3266', '悉尼', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('88', '3166', '纽约', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('89', '2976', '马拉开波', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('90', '2847', '圣何塞', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('91', '2865', '金斯敦', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('92', '2424', '布加斯', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('93', '2925', '阿瓜迪亚', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('94', '2541', '康斯坦萨', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('95', '1642', '特马', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('96', '2669', '塔林', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('97', '1558', '胡志明市', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('98', '1470', '利雅得', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('99', '2725', '圣佩德罗', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('100', '1891', '波士顿', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('101', '1539', '阿布扎比', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('102', '3201', '塔科马', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('103', '3213', '布里斯班', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('104', '142', '中国境内', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('105', '1794', '泽不腊赫', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_ports` VALUES ('106', '3232', '弗里曼特尔', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_process_types`
-- ----------------------------
DROP TABLE IF EXISTS `dict_process_types`;
CREATE TABLE `dict_process_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_process_types
-- ----------------------------
INSERT INTO `dict_process_types` VALUES ('1', '1', '增值加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_process_types` VALUES ('2', '2', '料件加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_receipt_statuses`
-- ----------------------------
DROP TABLE IF EXISTS `dict_receipt_statuses`;
CREATE TABLE `dict_receipt_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_receipt_statuses
-- ----------------------------
INSERT INTO `dict_receipt_statuses` VALUES ('1', '001', '导入成功', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('2', '002', '导入失败', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('3', '003', 'QP接收成功，上载发往数据中心', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('4', '004', 'QP接收成功，申报发往数据中心', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('5', '005', 'QP处理失败，请重新上载或申报', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('6', '006', '上载成功', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('7', '007', '上载失败', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('8', '008', '申报成功', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('9', '009', '上载未申报（无申报权限）', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('10', '010', '上载申报失败', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('11', '011', '海关已接收', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('12', '012', '担保放行', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('13', '013', '不被受理', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('14', '014', '需手工申报', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('15', '015', '退回修改', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('16', '016', '报关单已审结', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('17', '017', '放行交单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('18', '018', '需交税费', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('19', '019', '申报失败', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('20', '020', '海关删单', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('21', '021', '报关单重审', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('22', '022', '已结关', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('23', '023', '进出口审结/查验/放行通知', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('24', '024', '出口查验通知', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('25', '025', '海关已放行 ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('26', '026', '海关放行前删除', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('27', '027', '海关准许进港回执（保税港区专用）', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_receipt_statuses` VALUES ('28', '028', '其他（回执）', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_tax_kinds`
-- ----------------------------
DROP TABLE IF EXISTS `dict_tax_kinds`;
CREATE TABLE `dict_tax_kinds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_tax_kinds
-- ----------------------------
INSERT INTO `dict_tax_kinds` VALUES ('3', '503', '进料加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_tax_kinds` VALUES ('4', '101', '一般征税', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_tax_kinds` VALUES ('5', '299', '其他法定', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_tax_kinds` VALUES ('7', '501', '加工设备', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_tax_kinds` VALUES ('8', '502', '来料加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_tax_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_tax_modes`;
CREATE TABLE `dict_tax_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_tax_modes
-- ----------------------------
INSERT INTO `dict_tax_modes` VALUES ('3', '1', '照章征税', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_tax_modes` VALUES ('4', '3', '全免', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_trade_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_trade_modes`;
CREATE TABLE `dict_trade_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_trade_modes
-- ----------------------------
INSERT INTO `dict_trade_modes` VALUES ('3', '0110', '一般贸易', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('4', '0214', '来料加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('6', '0615', '进料对口', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('7', '0633', '保税物流中心', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('8', '0245', '来料料件内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('9', '0255', '来料深加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('10', '0258', '来料余料结转', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('11', '0265', '来料料件复出', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('12', '0300', '来料料件退换', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('13', '0320', '不作价设备', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('14', '0420', '加工贸易设备', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('15', '0644', '进料料件内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('16', '0654', '进料深加工', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('17', '0657', '进料余料结转', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('18', '0664', '进料料件复出', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('19', '0700', '进料料件退换', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('20', '0844', '进料边角料内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('21', '0845', '来料边角料内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('22', '1300', '修理物品', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('23', '2225', '外资设备物品', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('24', '4500', '直接退运', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('25', '4600', '进料成品退换', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('26', '9700', '后续补税', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('27', '6033', '物流中心进出境货物', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trade_modes` VALUES ('28', '1200', '保税间货物', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_transport_modes`
-- ----------------------------
DROP TABLE IF EXISTS `dict_transport_modes`;
CREATE TABLE `dict_transport_modes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_transport_modes
-- ----------------------------
INSERT INTO `dict_transport_modes` VALUES ('3', '4', '公路运输', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('4', 'W', '物流中心', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('5', '2', '水路运输', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('6', '0', '非保税区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('7', '1', '监管仓库', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('8', '5', '航空运输', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('9', '7', '保税区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('10', 'X', '物流园区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('11', 'Y', '保税港区', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_transport_modes` VALUES ('12', '9', '其它运输', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_trucks`
-- ----------------------------
DROP TABLE IF EXISTS `dict_trucks`;
CREATE TABLE `dict_trucks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ic_card` varchar(255) DEFAULT NULL,
  `corporation_name` varchar(255) DEFAULT NULL,
  `hk_truck_no` varchar(255) DEFAULT NULL,
  `corporation_address` varchar(255) DEFAULT NULL,
  `corporation_code` varchar(255) DEFAULT NULL,
  `corporation_telephone` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=486 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_trucks
-- ----------------------------
INSERT INTO `dict_trucks` VALUES ('1', '5318101182', '02UCT002', '520755739', null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('2', '0402100014', '冀R12590', '520750395', null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('3', '5200102561', '粤S24561', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('4', '5200102365', '粤ZSA13G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('5', '5300182164', '粤Z0G78G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('6', '5300181030', '粤Z0R43G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('7', '5300182421', '粤Z0W40G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('8', '5300180702', '粤Z0A55G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('9', '5300180046', '粤Z0A56G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('10', '5300180896', '粤Z0A57G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('11', '5300180160', '粤Z1B86G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('12', '5300180204', '粤Z1C28G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('13', '5318112905', '粤B61046', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('14', '5318163642', '粤B95753', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('15', '5300115007', '粤ZCQ47港', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('16', '5318178879', '粤BH3223', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('17', '5200104001', '粤S23203', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('18', '5318106805', '粤B38417', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('19', '5318169336', '粤BC6092', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('20', '5318150005', '粤B63007', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('21', '5200104003', '粤S22608', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('22', '5200104482', '粤S22803', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('23', '5318151188', '粤B64157', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('24', '5318177881', '粤BH1079', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('25', '5200100544', '粤S19753', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('26', '5318105659', '粤B49473', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('27', '5318161672', '粤B61538', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('28', '5318105658', '粤B49586', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('29', '5200151188', '粤S80821', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('30', '5200101197', '粤S18588', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('31', '5200102562', '粤S24512', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('32', '5200103671', '粤S29786', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('33', '5200102431', '粤S24412', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('34', '5200150428', '粤S44598', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('35', '5200100516', '粤S21599', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('36', '5318101726', '粤B43670', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('37', '5200104015', '粤S23900', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('38', '1234567890', '粤z1234', '987654321', '香港青龙国际货运有限公司', 'hk23港', '深圳市福田区福田路皇城大厦A座12楼1206', '4419988888', '777888888', '张三', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('39', '5318178549', '粤BH2645', null, '深圳市友博物流有限公司', 'BH2645', '深圳市福田保税区红花路99号', '4419', '0755-28892101', '张朝辉', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('40', '5318175341', '粤BF9196', null, null, 'BF9196', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('41', '5318184093', '粤BJ7455', null, null, 'BJ7455', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('42', '5318161674', '粤B59503', null, null, 'B59503', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('43', '5318162044', '粤B60087', null, null, 'B60087', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('44', '5341100591', '粤L05018', null, null, 'L08018', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('45', '5200150318', '粤S17333', null, null, 'S17333', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('46', '5200151189', '粤S80825', null, null, 'S80825', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('47', '5200104017', '粤S14398', null, null, 'S14398', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('48', '5200104004', '粤S23200', null, null, 'S23200', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('49', '5200102426', '粤S24482', null, null, 'S24482', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('50', '5200103634', '粤S29446', null, null, 'S29446', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('51', '5318100568', '粤B43508', null, null, 'B43508', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('52', '5200104006', '粤S22908', null, null, 'S22908', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('53', '5318101570', '粤B38500', null, null, 'B38500', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('54', '5710100925', '粤ZAL05A', null, null, 'MJ94-28', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('55', '5300110195', '粤ZFV68G', null, null, 'LK3577', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('56', '5318150582', '粤B65510', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('57', '5200102346', '粤S24320', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('58', '5300105810', '粤ZCN76G', null, null, 'RM3525', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('59', '5200102349', '粤S24439', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('60', '5318169148', '粤BC4333', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('62', '5318156360', '粤B79086', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('63', '5318174578', '粤BF6089', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('64', '5318108087', '粤B50118', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('65', '5318158276', '粤B35204', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('66', '5318171669', '粤BE0931', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('67', '5318181721', '粤BK8277', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('68', '5318184652', '粤BL4439', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('69', '5318114077', '粤B63758', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('70', '5300111150', '粤ZCE60G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('71', '5318152261', '粤BB0659', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('72', '5300101632', '粤ZGR80G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('73', '5300103477', '粤ZHD36G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('74', '5710150416', '粤ZAC17A', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('75', '5318173697', '粤BE9236', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('76', '5318162669', '粤B91357', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('77', '5318185707', '粤BL4717', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('78', '530106746', '粤ZSA13G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('79', '5300106746', '粤ZSA13G', null, '0', '00', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('80', '5300106805', '粤ZBV18G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('81', '5300105980', '粤ZAM06G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('82', '5318152873', '粤B69533', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('83', '5318177843', '粤BH1923', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('84', '5300107697', '粤ZFF16G', null, '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('85', '5300106037', '粤B30399', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('86', '5318171421', '粤B59813', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('87', '5200104000', '粤S23800', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('88', '5200150432', '粤S44586', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('89', '5200151186', '粤S80676', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('90', '5200151194', '粤S80709', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('91', '5300106006', '粤B22587', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('92', '5318175319', '粤BF9553', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('93', '5318177414', '粤BG9710', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('94', '5318157123', '粤B45031', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('95', '5318185000', '粤BL7612', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('96', '5300109304', '粤ZCF80G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('97', '5300182163', '粤Z0H27G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('98', '5318171126', '粤BD4439', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('99', '5300116978', '粤ZFJ99G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('100', '5200100531', '粤S24728', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('101', '5318185544', '粤B5510J', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('102', '5318113588', '粤B63679', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('103', '5318184404', '粤BJ6300', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('104', '5318165173', '粤B71641', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('105', '5318165569', '粤B58972', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('106', '5318168946', '粤B78Q15', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('107', '5300107646', '粤ZAA31G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('108', '5318111339', '粤B57216', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('109', '5318168322', '粤B41997', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('110', '5318161872', '粤BZ8857', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('111', '5198100171', '粤P01423', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('112', '5318180642', '粤BK3316', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('113', '5318172111', '粤BE1777', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('114', '5300111261', '粤ZDA97G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('115', '5318185241', '粤BL9138', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('116', '5318176710', '粤BG6259', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('117', '5318188259', '粤BN3210', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('118', '5300113754', '粤ZSS58G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('119', '5318180510', '粤BK2153', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('120', '5318102962', '粤B47605', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('121', '5318109634', '粤B54185', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('122', '5200151410', '粤S80295', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('123', '5318160966', '粤B88907', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('124', '5318153964', '粤B73429', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('125', '5318107782', '粤B51374', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('126', '5300113987', '粤ZDU91G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('127', '5300109684', '粤ZFX93G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('128', '5300110594', '粤ZCN88G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('129', '5300104020', '粤ZHK63G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('130', '5318105940', '粤B36963', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('131', '5318152406', '粤BB0531', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('132', '5318187292', '粤BJ0518', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('133', '5318107781', '粤B51269', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('134', '5318107784', '粤B51278', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('135', '5300111621', '粤ZAJ32G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('136', '5318101495', '粤B45559', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('137', '5318155006', '粤B58930', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('138', '5318105941', '粤B36985', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('139', '5341150401', '粤L38157', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('140', '5318101492', '粤B45443', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('141', '5300104372', '粤ZAR57G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('142', '5318180639', '粤BK0507', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('143', '5300115694', '粤ZAU13G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('144', '5300112196', '粤ZCL18G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('145', '5318184938', '粤BL6035', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('146', '5318186579', '粤BM6893', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('147', '5300112300', '粤ZEL11G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('148', '5300111586', '粤ZFD20G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('149', '5318183085', '粤BJ5926', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('150', '5318171100', '粤BD8929', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('151', '5300115072', '粤ZFG63G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('152', '5318175506', '粤BF9932', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('153', '5318153405', '粤B71471', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('154', '5200104005', '粤S14598', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('155', '5318109593', '粤B53522', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('156', '5318068035', '粤BH6346', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('157', '5318179280', '粤BH6346', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('158', '5318107837', '粤B50337', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('159', '5318154465', '粤B73506', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('160', '5318110059', '粤B55654', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('161', '5200102427', '粤S24476', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('162', '5200104009', '粤S22028', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('163', '5710150961', '粤ZAE91A', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('164', '5300105914', '粤ZHS84G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('165', '5318172256', '粤BE3772', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('166', '5200150177', '粤S18983', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('167', '5318184986', '粤BL6969', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('168', '5318185934', '粤BM2469', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('169', '5318187529', '粤BN2010', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('170', '5318161456', '粤B89289', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('171', '5318182043', '粤BK8721', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('172', '5318155461', '粤BNE361', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('173', '5318173899', '粤BE5941', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('174', '5300102328', '粤ZGQ10G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('175', '5318175913', '粤BG3535', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('176', '5318154622', '粤B73899', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('177', '5318173722', '粤BD6527', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('178', '5710100466', '粤ZAL08A', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('179', '5318184921', '粤BA5L83', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('180', '5160150228', '粤AQ6499', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('181', '5318187954', '粤B51646', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('182', '5318176408', '粤BG5830', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('183', '5318166046', '粤B82029', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('184', '5300113891', '粤ZEP73G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('185', '5318152801', '粤BB1438', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('186', '5318165835', '粤B42490', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('187', '5318160790', '粤B47386', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('188', '5318185437', '粤BL8407', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('189', '5318182978', '粤BJ6379', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('190', '5318168837', '粤B46476', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('191', '5318182509', '粤BK8702', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('192', '5300108478', '粤ZFF84G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('193', '5318175976', '粤BG4063', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('194', '5300113732', '粤ZSR31G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('195', '5318170345', '粤BC5932', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('196', '5318171557', '粤B34649', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('197', '5318104036', '粤B34271', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('198', '5200100527', '粤S24708', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('199', '5300112723', '粤ZBW08G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('200', '5318180853', '粤BH8732', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('201', '5318184482', '粤BL1469', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('202', '5318170804', '粤BD6696', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('203', '5318177624', '粤B78543', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('204', '5318180514', '粤B544Z0', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('205', '5318163649', '粤B59559', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('206', '5318170237', '粤BD2771', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('207', '5318172763', '粤BE5703', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('208', '5318161373', '粤B71516', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('209', '5318159331', '粤B85429', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('210', '5318183534', '粤BJ7692', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('211', '5200102559', '粤S24569', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('212', '5318185424', '粤BM0721', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('213', '5318187984', '粤BN6915', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('214', '5318187692', '粤BM7218', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('215', '5318162371', '粤B93295', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('216', '5318184743', '粤BL3526', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('217', '5160150227', '粤AQ6488', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('218', '5318169551', '粤BC8653', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('219', '5318188902', '粤BP2201', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('220', '5318174617', '粤BF6161', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('221', '5318159390', '粤B85829', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('222', '5160150057', '粤AR4669', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('223', '5200100528', '粤S24538', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('224', '5318177601', '粤B330U5', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('225', '5318157175', '粤B44368', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('226', '5318165780', '粤BB3483', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('227', '5318186938', '粤BM8665', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('228', '5300108751', '粤ZGA39G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('229', '5300100930', '粤ZHM89G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('230', '5318182964', '粤BK8083', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('231', '5318151117', '粤B28565', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('232', '5318169553', '粤BC8680', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('233', '5300100431', '粤ZGD32G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('234', '5318180738', '粤BH4940', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('235', '5318185351', '粤BL7412', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('236', '5300113300', '粤ZSS16G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('237', '5318188728', '粤BN9387', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('238', '5300111099', '粤ZHV62G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('239', '5318165776', '粤BB3791', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('240', '5200102345', '粤S24336', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('241', '5318180363', '粤B3570D', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('242', '5300110017', '粤ZEY38G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('243', '5710150137', '粤ZAF38A', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('244', '5300117012', '粤ZJE24G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('245', '5300104033', '粤ZHK99G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('246', '5318185579', '粤BL9925', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('247', '5318185518', '粤B41197', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('248', '5318169554', '粤BC7492', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('249', '5318176762', '粤BG6487', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('250', '5318169552', '粤BC8789', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('251', '5318154608', '粤BA7642', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('252', '5318181178', '粤BK4281', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('253', '5318164302', '粤B59376', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('254', '5341150076', '粤L03527', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('255', '5318179707', '粤BH7873', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('256', '5318170553', '粤BD5262', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('257', '5318168248', '粤BA9633', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('258', '5318176361', '粤BG5492', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('259', '5318166444', '粤B98122', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('260', '5300117306', '粤ZGJ54G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('261', '5318185397', '粤BD5V33', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('262', '5318165449', '粤B32206', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('263', '5318175420', '粤B903R1', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('264', '5300102781', '粤ZGV80G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('265', '5318162632', '粤B31417', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('266', '5318186005', '粤BJ6690', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('267', '5318179751  ', '粤BH7577', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('268', '5318181786', '粤BK7952', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('269', '5200104484', '粤S29573', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('270', '6705150119', '粤KP5369', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('271', '5300115477', '粤B34635', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('272', '5318150084', '粤B42475', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('273', '5200100529', '粤S24928', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('274', '5300110209', '粤ZSU11G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('275', '5200103628', '粤S29651', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('276', '5318113529', '粤B42432', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('277', '5318104672', '粤B37746', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('278', '5318165935', '粤BLN426', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('279', '5318153804', '粤B57082', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('280', '5200103997', '粤S22583', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('281', '5200104007', '粤S22098', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('282', '5200104014', '粤S22563', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('283', '5318181412', '粤BK6818', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('284', '5200151193', '粤S80706', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('285', '5200151434', '粤S87466', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('286', '5200150431', '粤S44581', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('287', '5300107101', '粤ZEY87G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('288', '5200103629', '粤S29513', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('289', '5318154761', '粤B74341', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('290', '5160150059', '粤AR4587', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('291', '5200104535', '粤S16811', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('292', '5318189275', '粤BP1425', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('293', '5318179589', '粤BH5243', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('294', '5200150179', '粤S22718', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('295', '5200151439', '粤S87459', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('296', '5200150430', '粤S44568', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('297', '5200151192', '粤S80703', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('299', '5200104011', '粤S23863', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('300', '5200150427', '粤S43106', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('301', '5300102721', '粤ZSZ47G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('302', '5200102589', '粤S27339', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('303', '5200151187', '粤S80833', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('304', '5200104660', '粤S22808', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('305', '5200102350', '粤S24340', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('306', '5200150176', '粤S24914', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('307', '5200151190', '粤S80828', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('308', '5200100530', '粤S24878', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('309', '5318169555', '粤BC8767', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('310', '5300102352', '粤ZGQ29G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('311', '5200104012', '粤S22733', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('312', '5318187181', '粤BN0706', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('313', '5318188178', '粤BN5710', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('314', '5318180751', '粤BK2948', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('315', '5318113172', '粤B61865', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('316', '5318178164', '粤BH2656', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('317', '5318188503', '粤BN7728', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('318', '5318189625', '粤BP4733', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('319', '5318183971', '粤BL1848', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('320', '5318182759', '粤BJ5625', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('321', '5200103638', '粤S29595', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('322', '5200104013', '粤S23893', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('323', '5200151432', '粤S87486', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('324', '5200103643', '粤S29526', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('325', '5318189589', '粤BP4748', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('326', '5318176359', '粤BG5648', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('327', '5318185505', '粤BL6293', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('328', '5200150424', '粤S44589', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('329', '5318155344', '粤B49058', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('330', '5200103672', '粤S29826', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('331', '5200101196', '粤S17988', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('332', '5318160166', '粤BLW989', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('333', '5200102296', '粤S27722', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('334', '5200102430', '粤S24479', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('335', '5300103240', '粤ZHC53G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('336', '5318171563', '粤BE1218', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('337', '5318155345', '粤B49193', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('338', '5318113173', '粤B61919', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('339', '5200150627', '粤S47225', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('340', '5200151436', '粤S87463', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('341', '5318177863', '粤BG1700', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('342', '5300108295', '粤ZDH84G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('343', '5318188631', '粤BM9094', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('344', '5200101231', '粤S20940', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('345', '5200103948', '粤S24536', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('346', '5200151635', '粤S26686', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('347', '5318107008', '粤B34555', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('348', '5200103632', '粤S29602', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('349', '5318184788', '粤BL5228', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('350', '5318108570', '粤B51839', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('351', '5318186382', '粤BM2087', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('352', '5200102428', '粤S24414', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('353', '5318104446', '粤B32276', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('354', '5318177603', '粤B71985', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('355', '5300103903', '粤ZYA64G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('356', '5318159829', '粤B62518', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('357', '5200102563', '粤S24567', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('358', '5300116816', '粤ZJC83G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('359', '5318179473', '粤BH5355', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('360', '5200103630', '粤S29618', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('361', '5318161848', '粤B60292', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('362', '5200100526', '粤S19767', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('363', '5198100172', '粤P01178', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('364', '5318171287', '粤BD9881', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('365', '5200151534', '粤S26786', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('366', '5318169985', '粤BC7689', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('367', '5318185450', '粤BM0720', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('368', '5300104197', '粤ZYB18G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('369', '5318169645', '粤BC8267', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('370', '5318187952', '粤BN5916', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('371', '5200103642', '粤S29656', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('372', '5318186447', '粤BM1918', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('373', '5318153523', '粤B42821', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('374', '5200151536', '粤S26696', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('375', '5318105592', '粤B40253', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('376', '5318153495', '粤B45590', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('377', '5300102454', '粤ZGS01G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('378', '5300108282', '粤ZDE38G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('379', '5341100518', '粤L04556', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('380', '5300105260', '粤ZHQ57G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('381', '5318185232', '粤BL9712', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('382', '5318187925', '粤BN6765', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('383', '5318188673', '粤BP1991', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('384', '5300111448', '粤ZFH56G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('385', '5318175641', '粤BG1259', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('386', '5318151612', '粤B48807', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('387', '5300107565', '粤ZAW36G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('388', '5318168931', '粤B47808', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('390', '5318189871', '粤BL8C42', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('391', '5318168122', '粤B46405', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('392', '5318169000', '粤B60075', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('393', '5318166488', '粤B78525', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('394', '5318151140', '粤B51376', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('395', '5318167922', '粤B72106', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('396', '5318186843', '粤BM6191', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('397', '5318185267', '粤BJ6002', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('398', '5200151535', '粤S26676', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('399', '5300107468', '粤ZAW12G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('400', '5300117237', '粤ZJG38G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('401', '5300111716', '粤ZFA23G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('402', '5318171864', '粤BE2635', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('403', '5300107613', '粤ZAD90G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('404', '5318181101', '粤BH8875', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('405', '5318185374', '粤BL4618', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('406', '5318167287', '粤BB7382', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('408', '5318166434', '粤BXP661', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('409', '5318178637', '粤B67911', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('411', '5300117603', '粤ZEU88G', '142121', null, 'KR3796', null, null, '83694620', '黄禹宁', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('412', '5300112839', '粤ZAH19港', '521322905', null, 'PW5725', null, null, '83694604', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('413', '5318189588', '粤BP1785', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('414', '5318183707', '粤BJ8053', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('415', '5300190145', '粤ZFL94G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('416', '5318153987', '粤B72713', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('417', '5318159060', '粤B44431', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('418', '5318166212', '粤B32231', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('419', '5318171918', '粤BE2588', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('420', '5341150247', '粤L74459', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('421', '5318171729', '粤BE2193', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('422', '5318171135', '粤BD6077', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('423', '5318184953', '粤BK4580', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('424', '5318171071', '粤BD8672', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('425', '5318171321', '粤BD9837', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('426', '5318178531', '粤BH4188', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('427', '5200103667', '粤S29702', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('428', '5200100525', '粤S19765', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('429', '5200101211', '粤S23508', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('430', '5200104016', '粤S14698', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('431', '5200103109', '粤S26253', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('432', '5200100524', '粤S19748', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('433', '5318190327', '粤BJ1900', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('434', '5318175642', '粤B824S5', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('435', '5318190527', '粤BJ1900', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('436', '5318189869', '粤BP4952', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('437', '5200102896', '粤S27111', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('438', '5318154640', '粤B74021', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('439', '5318102812', '粤B47381', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('440', '5710150368', '粤ZAA15A', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('441', '5318102818', '粤B47280', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('442', '5318102816', '粤B47208', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('443', '5318170499', '粤B11P18', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('444', '5318185044', '粤BH6427', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('445', '5318102814', '粤B47241', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('446', '5318102817', '粤B47307', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('447', '5200150105', '粤S67320', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('448', '5318170329', '粤BC8600', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('449', '5318161032', '粤BA9593', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('450', '5318182772', '粤BJ4151', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('451', '5318169524', '粤BC6416', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('452', '5318160837', '粤B88425', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('453', '5318174803', '粤BF5187', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('454', '5318102820', '粤B47207', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('455', '5300115165', '粤ZEW57G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('456', '5318185201', '粤BL8808', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('457', '5318164558', '粤B97686', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('458', '6705100484', '粤KN2413', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('459', '5300112550', '粤ZFR39G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('460', '5318153485', '粤B71207', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('461', '5300105104', '粤ZBX11G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('462', '5318169355', '粤B83040', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('463', '5318184193', '粤BL3143', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('464', '5318179779', '粤BH8203', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('465', '5300112553', '粤ZBQ72G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('466', '5318183461', '粤BJ7782', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('467', '5318184115', '粤BJ8621', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('468', '5318172690', '粤BE5875', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('469', '5300105658', '粤ZFU04G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('470', '5318159635', '粤B58560', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('471', '5318173987', '粤BF2870', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('472', '5318178260', '粤BH2502', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('473', '5200150104', '粤S35322', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('474', '5300104542', '粤ZHN31G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('475', '5318113116', '粤B61890', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('476', '5318176761', '粤BG6791', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('477', '5318167342', '粤B94772', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('478', '5300103796', '粤ZYA43G', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('479', '5318176720', '粤BG5953', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('480', '5318184382', '粤BL3165', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('481', '5318179756', '粤BG6409', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('482', '5318164870', '粤BA4098', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('483', '5318158587', '粤B80455', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('484', '5318168349', '粤B31692', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_trucks` VALUES ('485', '5318162501', '粤B92977', null, null, null, null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_units`
-- ----------------------------
DROP TABLE IF EXISTS `dict_units`;
CREATE TABLE `dict_units` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_units
-- ----------------------------
INSERT INTO `dict_units` VALUES ('3', '001', '台', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('4', '007', '个', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('5', '035', '千克', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('6', '002', '座', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('7', '003', '辆', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('8', '008', '只', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('9', '011', '件', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('10', '033', '立方米', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('11', '032', '平方米', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('12', '006', '套', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('13', '054', '千个', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('14', '005', '架', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('15', '010', '张', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('16', '012', '支', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('17', '013', '枝', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('18', '014', '根', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('19', '015', '条', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('20', '016', '把', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('21', '017', '块', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('22', '018', '卷', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('23', '019', '副', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('24', '030', '米', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('25', '036', '克', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('26', '050', '千只', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('27', '051', '千块', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('28', '086', '码', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('29', '099', '立方英尺', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('30', '111', '平方英尺', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('31', '125', '包', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('32', '130', '匹', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('33', '135', '捆', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('34', '143', '千支', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('35', '140', '盒', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('37', '101', '卷', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('38', '102', '扎', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('39', '103', '纸箱', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('41', '100', '托', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('42', '025', '双', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_units` VALUES ('43', '038', '万个', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_usages`
-- ----------------------------
DROP TABLE IF EXISTS `dict_usages`;
CREATE TABLE `dict_usages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_usages
-- ----------------------------
INSERT INTO `dict_usages` VALUES ('1', '01', '外贸自营内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_usages` VALUES ('2', '02', '其他内销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_usages` VALUES ('3', '05', '加工返销', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_usages` VALUES ('4', '04', '企业自用', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_usages` VALUES ('5', '07', '收保证金', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_usages` VALUES ('6', '11', '其它', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `dict_wrap_types`
-- ----------------------------
DROP TABLE IF EXISTS `dict_wrap_types`;
CREATE TABLE `dict_wrap_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_wrap_types
-- ----------------------------
INSERT INTO `dict_wrap_types` VALUES ('6', '2', '纸箱', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('7', '3', '桶装', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('9', '4', '散装', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('10', '5', '托盘', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('11', '6', '包', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('12', '7', '其它', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('13', '1', '木箱', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('14', '8', '塑胶篮', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `dict_wrap_types` VALUES ('15', '9', '裸装', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
