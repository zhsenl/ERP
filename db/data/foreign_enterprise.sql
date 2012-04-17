/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2012-04-17 09:58:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `foreign_enterprises`
-- ----------------------------
DROP TABLE IF EXISTS `foreign_enterprises`;
CREATE TABLE `foreign_enterprises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkman` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_foreign_enterprises_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of foreign_enterprises
-- ----------------------------
INSERT INTO `foreign_enterprises` VALUES ('1', '4419960285', 'PINE BUSH LIMITED', '香港上水贸易广场A座3楼A3&A4室', '林生', '00852-82267344', '00852-27978143', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('2', '44199C3004', '彩顺包装公司', '香港九龙青山道700号时运中心1101室', '叶生', '82273446', '82268365', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('3', '4419947020', '香港有丽有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('4', '4419960039', '致富有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('5', '4419960690', '光阳贸易公司', '香港九龙弥敦道728号15楼15A室', null, '076988860466', '076988860466', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('6', '44199BB185', '顶尖科技股份有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('7', '4419940979', '妈妈的爱国际有限公司', '英属维尔京托特罗克街拉克大厦', null, '86818999', '02-87654321', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('8', '4419942856', '永洪控股有限公司', '中国香港', null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('9', '4419940737', '香港广达实业有限公司', '中国香港', null, '83314618', '83313875', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('10', '4419946531', '精明铝吕压铸制造厂有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('11', '4406944122', '欧一国际贸易有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('12', '44139446124', 'TUNBOW ELECIRICAL（BVI）LIMITED', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('13', '4419944303', '翔景国际有限公司', '南春闸门,劳尔政府路,查理斯镇,尼维斯', null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('14', '44199BR451', '平谦国际有限公司', '香港红勘鹤翔街8号', null, '00852-23330207', '00852-23348977', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('15', '4419948469', '瀚宇股份有限公司', '毛里求斯波特路易斯圣丹尼斯街802号', null, '00852-24927790', null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('16', '4419942478', '盛达科技公司', null, null, '852-27909108', null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('17', '4419940936', '飞宏国际股份有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('18', '4419927086', '均景有限公司', '香港尖沙嘴', null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('19', '4419940434', 'SUNNY WEALTH DEVELOPMENT LIMITED', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('20', '4419967446', '龙永织带饰品有限公司', '香港葵涌大连排道190号金龙工业中心4期6楼I室', '黄乐全', '852-23898378', '852-23898738', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('21', '4413933157', '华旋有限公司', '新界荃灣青山道611-619號東南工業大廈10樓', null, '00852-25813232', '00852-25813232', '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('22', '44199B7964', '嘉运机械工程有限公司', '新界荃灣青山道611-619號東南工業大廈10樓', null, '00852-25813232', null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('23', '4419967069', '日本坂东株式会社(香港)有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('24', '4413940742', '壑智控股有限公司', null, null, null, null, '2012-04-13 02:25:11', '2012-04-13 02:25:11');
INSERT INTO `foreign_enterprises` VALUES ('25', '4419963812', '元晖光电有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('26', '4419945354', '香港盈添有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('27', '4469940147', '锦辉控股(香港)有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('28', '4419945597', '格尔翰有限责任公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('29', '4419967383', '诺一实业有限公司', '香港英皇道300號五洲大廈4樓M室', null, '852-28061116 ', '852-28062009', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('30', '3502165941', '厦门贝乐高玩具有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('31', '4419962376', '香港星珍国际有限公司', '香港湾仔轩尼诗道289-295号朱钧记商业中心16楼B室', null, '00852-30788798', null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('32', '4419942691', '（韩国）东原应肯株式会社', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('33', '5034940004', '立达企业有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('34', '4419945395', '立峰国际有限公司', '萨摩亚国爱匹亚境外会馆大楼217号邮政号码', null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('35', '4453168704', '协盛国际有限公司', 'FLAT/RM B 9/F CHAMG PAO CHINE BLDG427 HENNESSY RD WANCHAI HK', null, '00852-27709787', '00852-35718256', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('36', '4419969415', '鸣鹏船务运输贸易公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('37', '4419945261', '阪和香港有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('38', '4419960112', '星河电路(香港)有限公司', '香港新界荃湾沙嘴道11-19号达贸中心19楼8-9室', null, '00852-27132560', '00852-31631911', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('39', '4419969400', 'T.S Lines Limited.', '9/F., C-Bons International Center., 108 Wai Yip Street, Kowlon', null, '00852-34132000', '00852-34132289', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('40', '3122210408', '辉盈控股有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('41', '4419949485', '力宇(香港)有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('42', '4419969401', 'SEN HER FEN INDUSTRIAL CO,. LTD', 'NO.12, DT743 ROAD. SONG THAN INDUSTRIAL PARK, DI AN, BINH DUONG PROCINCE', null, '0650-3742677', '0650-3742676', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('43', '4419960073', '正喜实业有限公司', null, null, '00852-27700163', '00852-27700163', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('44', '4419946427', '杰威国际有限公司', '香港九龙临乐街19号', null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('45', '4419920815', '万阳企业有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('46', '4419940329', '苏扬企业(香港)有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('47', '4419949039', '扬星企业(香港)有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('48', '3215910112', '江苏国泰国际集团华盛进出口有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('49', '3301939078', '盈达(澳门离岸商业服务)有限公司', '澳门商业大马路251A-301号友邦广场17楼1703-1704室', null, '853-8592-0888', '853-8592-0808', '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('50', '4413947037', '香港照伦有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('51', '4403945491', '嘉瑞制品有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('52', '4419947785', '升贸工业(香港)有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('53', '4469940100', '嘉运机械工程有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
INSERT INTO `foreign_enterprises` VALUES ('54', '4469940096', '嘉利环球科技有限公司', null, null, null, null, '2012-04-13 02:25:12', '2012-04-13 02:25:12');
