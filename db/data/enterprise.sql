/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2012-04-17 09:57:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `enterprises`
-- ----------------------------
DROP TABLE IF EXISTS `enterprises`;
CREATE TABLE `enterprises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkman` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_enterprises_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of enterprises
-- ----------------------------
INSERT INTO `enterprises` VALUES ('1', '61235698', '东莞市彩顺包装制品有限公司', '东莞市塘厦镇', '叶积贺', '81095508', '81095509', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('2', '757897390', '东莞市新泽进出口有限公司', '东莞市南城区第一国际百安中心A座1206室', '陈生', '0769-22827832', '0769-22827566', '中国银行东莞分行', '802828944808091001', '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('3', '123456789', '东莞市新泽报关咨询服务有限公司', '东莞市南城区第一国际百安中心A座1206室', '陈柱勤', '22827332', '22827566', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('4', '4419947020', '东莞福摩斯托电子有限公司', '长安', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('5', '4419960039', '东莞市建安贸易有限公司', '东莞', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('6', '4419960690', '东莞市裕光进出口贸易有限公司', '东莞南城区海关大道', null, '076988860466', '076988860466', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('7', '44199BB185', '东莞大朗永富电子厂', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('8', '4419960730', '东莞市大朗外资引进公司', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('9', '4453165000', '深圳市鑫亿杰商贸有限公司', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('10', '617768271', '东莞贯新幼童用品有限公司', '广东省东莞市清溪镇', '林艺', '0769-86818999', '0769-87323299', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('11', '618347508', '东莞广达塑胶制品有限公司', '东莞市大朗镇', '黄霞', '87516025', '87779832', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('12', '618114886', '东莞美时家具有限公司', '东莞市塘厦镇', '郭超文', '82031185', '87884070', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('13', '618100935', '东莞永洪印刷有限公司', '东莞市樟木头镇', '夏雷', '87711991', null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('14', '4419946531', '东莞精明五金科技有限公司', '东莞凤岗', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('15', '4419969415', '东莞市泽盛物流有限公司', '东莞市沙田镇港口大道物流中心保税大厦六楼615室', '陈柱勤', '0769-8886 0466', '0769-8886 0422', '招商银行股份有限公司东莞虎门港支行', '769902929110488', '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('16', '4419969534', '东莞市领创环保材料科技有限公司', '东莞市长安镇新民三村新丰路环保工业区', '吴小姐', '81871068', '85370193', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('17', '4406944122', '佛山市高明欧一电子制造有限公司', '佛山', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('18', '4403942939', '东保利电业（深圳）有限公司', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('19', '4403947814', '新美亚通信设备（深圳）有限公司', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('20', '4420941179', '华夏塑胶（中山）有限公司', '中山市', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('21', '4419946494', '东莞祥富电子有限公司', '大朗', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('22', '4419944084', '东莞高盛电子有限公司', '常平', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('23', '3225940570', '金太电子材料（苏州）有限公司', '苏州', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('24', '4413946124', '东保达电子（惠州）有限公司', '惠州', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('25', '4453061825', '深圳市旺达顺进出口有限公司', '深圳市', null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('26', '765747819', '东莞翔国光电科技有限公司', '东莞茶山镇茶山工业区E区', '梁伊娜', '0769-81833588', '0769-81833586', '中国农业银行东莞市茶山支行', '44302001040006051', '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('27', 'X18180103', '东莞长安霄边平谦电子厂', '东莞长安霄边工业区', '陈明康', '85535375', '85536236', null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('28', '4419910022', '东莞市对外加工装配服务公司', null, null, null, null, null, null, '2012-04-17 01:55:34', '2012-04-17 01:55:34');
INSERT INTO `enterprises` VALUES ('29', '789494190', '东莞硕宇电子有限公司', '东莞虎门新湾新开发区宏业南路', '陈志雄', '85710300', '85710442', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('30', 'X18189091', '东莞清溪电子玩具制品二厂', '东莞清溪镇上元村', '杨玉遴', '87731092', '87738099', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('31', 'X18155473', '凤岗油甘埔运通玩具厂', '凤岗镇油甘埔', '刘玉', null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('32', 'X18398491', '东莞清溪万锋五金塑胶厂', '东莞市清溪镇金桥工业区', '傅小军', '87730183', '87739072', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('33', '618350977', '东莞泛昌窗帘制品有限公司', '东莞市常平镇土塘管理区', '黄连弟', '87779827', '87779837', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('34', '987654321', '东莞市华洋报关有限公司', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('35', '4407932094', 'ABB新会低压开关有限公司', '新会市', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('36', '4469960285', '东莞市晟泓国际货物运输代理有限公司', '东莞市沙田镇', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('37', '4419940936', '飞宏（东莞）电子有限公司', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('38', '4419942478', '盛恒达电子（东莞）有限公司', '东莞市石碣镇科技工业园', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('39', '618337983', '东莞乐迪卡游戏机制造有限公司', '东莞虎门', '欧阳', '85553364', '85551226', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('40', '4407942177', '江门市晋宝铝制品厂有限公司', '江门', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('41', '618338724', '东莞米德兰五金塑胶制品有限公司', '东莞清溪大埔工业区', '韩涛', '0769-87312072', '0769-87312072', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('42', '671397694', '东莞市龙永织带饰品有限公司', '东莞市厚街镇桥头第一工业区', '张峰', '85580163', '85883096', '中国农业银行厚街支行桥头分理处', '44285501040003272', '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('43', '4413933157', '惠州市华阳精机有限公司', '惠州市水口华阳工业区', null, '0752-5302888', '0752-5302888', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('44', '44199B7964', '凤岗嘉辉塑胶五金制品厂', '东莞凤岗镇大龙工业区', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('45', '4419967069', '东莞市通道蓝天电源设备有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('46', '4413940742', '大洋塑胶(惠州)有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('47', '4419963812', '东莞元晖光电照明有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('48', '4419945354', '东莞喜益塑胶有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('49', '4469940147', '东莞锦辉电子有限公司	', '东莞樟木头樟洋港洋工业区', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('50', '4419945597', '格尔翰汽车配件（东莞）有限公司	', '东莞石排镇田边村大基工业园', null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('51', '4419967383', '东莞市诺隆塑胶五金制品有限公司', '东莞虎门镇南面工业区A5栋', null, '0769-81227256', '0769-81227156', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('52', '4419945395', '东莞大邦鞋业有限公司', '东莞市石排镇田寮村工业区东桥一路', null, '0769－220305555', null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('53', '44199B4711', '东莞黄江大伟（成记）玩具厂', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('54', '3502165941', '厦门贝乐高玩具有限公司', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('55', '4419962376', '东莞市星珍电子有限公司	', '东莞市东城区余屋正坑工业区勿松五街28号', null, '0769-23325677', '0769-23325887', null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('56', '4419942691', '东莞东原电子有限公司', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('57', '5034940004', '重庆立达服装有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('58', '3302931371', '百隆澳门离岸商业服务有限公司', null, null, null, null, null, null, '2012-04-17 01:55:35', '2012-04-17 01:55:35');
INSERT INTO `enterprises` VALUES ('59', '4403945491', '创金美科技（深圳）有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('60', '4469940076', '广东保点明辉商标标识有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('61', '4453168704', '深圳市福之临商贸有限公司', '深圳市罗湖区深南东路新街25号', null, '0755－89438616', null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('62', '4419948554', '东莞益宝鞋材有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('63', '4419945261', '阪和钢板加工（东莞）有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('64', '4419960112', '广东汇富进出口贸易有限公司', '东莞市南城区莞太路23号鸿禧商业大厦12楼', null, '0769-21997888', '0769-22486329', null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('65', '5106943768', '德阳帛汉电子有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('66', '3122210408', '上海市轻工业品进出口有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('67', '3214940222', '科博特高温材料(苏州)有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('68', '4419949485', '东莞力宇橡胶制品有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('69', '3317910005', '宁波中鑫毛纺集团江山有限公司', '江山市贺村十里牌工业园区56号', null, '0570-4555050', '0570-4555000', null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('70', '4401618445175', '从化志华灯饰有限公司', '从化市明珠工业园振兴路2号', null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('71', '4419960073', '广东省东莞包装进出口有限公司', '东莞市南城区胜和路华凯大厦601', null, '0769-22802989', '0769-22802989', null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('72', '4419946427', '东莞承杰针织有限公司	', '东莞大朗长搪第三工业区', null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('73', '4419920815', '东莞富阳针织有限公司	', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('74', '4419940329', '东莞苏扬电器有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('75', '4419949039', '东莞华星树业饰品有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('76', '3215910112', '江苏国泰华盛实业有限公司', '江苏张家港市人民中路国泰大厦20028', null, '852-22827566', '852-22827566', null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('77', '3301939078', '杭州海虹精细化工有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('78', '44209B1174', '中山市三乡镇宝元制鞋厂', '广东省中山市三乡镇第二工业区', null, '0760-86686869', '0760-86686869', null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('79', '4420950002', '中山市三乡对外加工装配服务公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('80', '4413947037', '联宏灯饰(惠州)有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('81', '4451964277', '广州成汉电子科技有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('82', '4419947785', '东莞升贸锡制品有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('83', '4403949813', '深圳村田科技有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('84', '4469940100', '东莞凤岗嘉辉塑胶五金有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('85', '3204945274', '常州永宝利染丝有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');
INSERT INTO `enterprises` VALUES ('86', '4469940096', '东莞凤岗嘉安塑胶五金有限公司', null, null, null, null, null, null, '2012-04-17 01:55:36', '2012-04-17 01:55:36');

-- ----------------------------
-- Table structure for `enterprise_custom_options`
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_custom_options`;
CREATE TABLE `enterprise_custom_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterprise_id` int(11) DEFAULT NULL,
  `custom_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_private_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ic_card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificate_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proxy_unit_price` decimal(15,4) DEFAULT NULL,
  `service_unit_price` decimal(15,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `trade_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of enterprise_custom_options
-- ----------------------------
INSERT INTO `enterprise_custom_options` VALUES ('1', '1', '5207', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '44199C3004');
INSERT INTO `enterprise_custom_options` VALUES ('2', '2', '5204', null, null, null, null, null, null, '400.0000', '100.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419960285');
INSERT INTO `enterprise_custom_options` VALUES ('3', '3', '5217', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419980074');
INSERT INTO `enterprise_custom_options` VALUES ('4', '4', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419947020');
INSERT INTO `enterprise_custom_options` VALUES ('5', '5', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419960039');
INSERT INTO `enterprise_custom_options` VALUES ('6', '6', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419960690');
INSERT INTO `enterprise_custom_options` VALUES ('7', '7', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '44199BB185');
INSERT INTO `enterprise_custom_options` VALUES ('8', '8', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419960730');
INSERT INTO `enterprise_custom_options` VALUES ('9', '9', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4453165000');
INSERT INTO `enterprise_custom_options` VALUES ('10', '10', '5207', 'T61776827100', 'TCS52001', '0000000', 'EBT00010000000840', '0000000033457', '6312eb', '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419940979');
INSERT INTO `enterprise_custom_options` VALUES ('11', '11', '5207', 'T61834750800', 'TCS52001', '0000000', 'EBT00010000001108', '8300000023785', '627b33', '13.0000', '5.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419940737');
INSERT INTO `enterprise_custom_options` VALUES ('12', '12', '5207', 'T61811488600', 'TCS52001', '0000000', 'EBT00010000001104', '8300000025006', '5f1df5', '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419940487');
INSERT INTO `enterprise_custom_options` VALUES ('13', '13', '5207', 'TX1818909100', 'TCS52001', '0000000', 'EBT00010000001239', null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419942856');
INSERT INTO `enterprise_custom_options` VALUES ('14', '14', '5207', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419946531');
INSERT INTO `enterprise_custom_options` VALUES ('15', '15', '5216', null, null, null, null, null, null, '400.0000', '100.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419969415');
INSERT INTO `enterprise_custom_options` VALUES ('16', '16', '5213', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419969534');
INSERT INTO `enterprise_custom_options` VALUES ('17', '17', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4406944122');
INSERT INTO `enterprise_custom_options` VALUES ('18', '18', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4403942939');
INSERT INTO `enterprise_custom_options` VALUES ('19', '19', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4403947814');
INSERT INTO `enterprise_custom_options` VALUES ('20', '20', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4420941179');
INSERT INTO `enterprise_custom_options` VALUES ('21', '21', '5213', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419946494');
INSERT INTO `enterprise_custom_options` VALUES ('22', '22', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419944084');
INSERT INTO `enterprise_custom_options` VALUES ('23', '23', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '3225940570');
INSERT INTO `enterprise_custom_options` VALUES ('24', '24', '5220', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4413946124');
INSERT INTO `enterprise_custom_options` VALUES ('25', '25', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4453061825');
INSERT INTO `enterprise_custom_options` VALUES ('26', '26', '5204', null, null, null, null, null, null, '13.0000', '7.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419944303');
INSERT INTO `enterprise_custom_options` VALUES ('27', '27', '5213', 'TX1815010300', 'TCS52001', '0000000', 'EBT00010000001251', '8600000094267', '743747', '13.0000', '9.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '44199BR451');
INSERT INTO `enterprise_custom_options` VALUES ('28', '28', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:34', '2012-04-17 01:55:34', '4419910022');
INSERT INTO `enterprise_custom_options` VALUES ('29', '29', '5205', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419948469');
INSERT INTO `enterprise_custom_options` VALUES ('30', '30', '5207', null, null, null, null, null, null, '13.0000', '9.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '44199B5851');
INSERT INTO `enterprise_custom_options` VALUES ('31', '31', '5207', 'TX1815547300', 'TCS52001', '0000000', 'EBT00010000001237', null, null, '13.0000', '9.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '44199B7103');
INSERT INTO `enterprise_custom_options` VALUES ('32', '32', '5207', 'TX1839849100', 'TCS52001', '0000000', 'EBT00010000001238', null, null, '13.0000', '9.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '44199B6167');
INSERT INTO `enterprise_custom_options` VALUES ('33', '33', '5207', 'T61835097700', 'TCS52001', '0000000', 'EBT00010000001242', null, null, '13.0000', '9.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419940637');
INSERT INTO `enterprise_custom_options` VALUES ('34', '34', '5207', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419980127');
INSERT INTO `enterprise_custom_options` VALUES ('35', '35', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4407932094');
INSERT INTO `enterprise_custom_options` VALUES ('36', '36', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4469960285');
INSERT INTO `enterprise_custom_options` VALUES ('37', '37', '5207', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419940936');
INSERT INTO `enterprise_custom_options` VALUES ('38', '38', '5204', null, null, null, null, null, null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419942478');
INSERT INTO `enterprise_custom_options` VALUES ('39', '39', '5205', 'T61833798300', 'TCS52001', '0000000', 'EBT00010000001212', '8300000023300', '746569', '13.0000', '7.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419927086');
INSERT INTO `enterprise_custom_options` VALUES ('40', '40', '5220', null, null, null, null, 'CNC', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4407942177');
INSERT INTO `enterprise_custom_options` VALUES ('41', '41', '5207', 'T61833872400', 'TCS52001', '0000000', 'EBT00010000001243', '8300000088069', '698b9b', '9.0000', '13.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419940434');
INSERT INTO `enterprise_custom_options` VALUES ('42', '42', '5204', null, null, null, null, '000000', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419967446');
INSERT INTO `enterprise_custom_options` VALUES ('43', '43', '5220', null, null, null, null, '11', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4413933157');
INSERT INTO `enterprise_custom_options` VALUES ('44', '44', '5220', null, null, null, null, '12', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '44199B7964');
INSERT INTO `enterprise_custom_options` VALUES ('45', '45', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419967069');
INSERT INTO `enterprise_custom_options` VALUES ('46', '46', '5345', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4413940742');
INSERT INTO `enterprise_custom_options` VALUES ('47', '47', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419963812');
INSERT INTO `enterprise_custom_options` VALUES ('48', '48', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419945354');
INSERT INTO `enterprise_custom_options` VALUES ('49', '49', '5207', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4469940147');
INSERT INTO `enterprise_custom_options` VALUES ('50', '50', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419945597');
INSERT INTO `enterprise_custom_options` VALUES ('51', '51', '5205', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419967383');
INSERT INTO `enterprise_custom_options` VALUES ('52', '52', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419945395');
INSERT INTO `enterprise_custom_options` VALUES ('53', '53', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '44199B4711');
INSERT INTO `enterprise_custom_options` VALUES ('54', '54', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '3502165941');
INSERT INTO `enterprise_custom_options` VALUES ('55', '55', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419962376');
INSERT INTO `enterprise_custom_options` VALUES ('56', '56', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '4419942691');
INSERT INTO `enterprise_custom_options` VALUES ('57', '57', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '5034940004');
INSERT INTO `enterprise_custom_options` VALUES ('58', '58', '5700', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:35', '2012-04-17 01:55:35', '3302931371');
INSERT INTO `enterprise_custom_options` VALUES ('59', '59', '5301', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4403945491');
INSERT INTO `enterprise_custom_options` VALUES ('60', '60', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4469940076');
INSERT INTO `enterprise_custom_options` VALUES ('61', '61', '5320', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4453168704');
INSERT INTO `enterprise_custom_options` VALUES ('62', '62', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419948554');
INSERT INTO `enterprise_custom_options` VALUES ('63', '63', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419945261');
INSERT INTO `enterprise_custom_options` VALUES ('64', '64', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419960112');
INSERT INTO `enterprise_custom_options` VALUES ('65', '65', '7901', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '5106943768');
INSERT INTO `enterprise_custom_options` VALUES ('66', '66', '5213', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3122210408');
INSERT INTO `enterprise_custom_options` VALUES ('67', '67', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3214940222');
INSERT INTO `enterprise_custom_options` VALUES ('68', '68', '5205', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419949485');
INSERT INTO `enterprise_custom_options` VALUES ('69', '69', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3317910005');
INSERT INTO `enterprise_custom_options` VALUES ('70', '70', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4401618445175');
INSERT INTO `enterprise_custom_options` VALUES ('71', '71', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419960073');
INSERT INTO `enterprise_custom_options` VALUES ('72', '72', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419946427');
INSERT INTO `enterprise_custom_options` VALUES ('73', '73', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419920815');
INSERT INTO `enterprise_custom_options` VALUES ('74', '74', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419940329');
INSERT INTO `enterprise_custom_options` VALUES ('75', '75', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419949039');
INSERT INTO `enterprise_custom_options` VALUES ('76', '76', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3215910112');
INSERT INTO `enterprise_custom_options` VALUES ('77', '77', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3301939078');
INSERT INTO `enterprise_custom_options` VALUES ('78', '78', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '44209B1174');
INSERT INTO `enterprise_custom_options` VALUES ('79', '79', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4420950002');
INSERT INTO `enterprise_custom_options` VALUES ('80', '80', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4413947037');
INSERT INTO `enterprise_custom_options` VALUES ('81', '81', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4451964277');
INSERT INTO `enterprise_custom_options` VALUES ('82', '82', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4419947785');
INSERT INTO `enterprise_custom_options` VALUES ('83', '83', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4403949813');
INSERT INTO `enterprise_custom_options` VALUES ('84', '84', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4469940100');
INSERT INTO `enterprise_custom_options` VALUES ('85', '85', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '3204945274');
INSERT INTO `enterprise_custom_options` VALUES ('86', '86', '5204', null, null, null, null, '1', null, '0.0000', '0.0000', '2012-04-17 01:55:36', '2012-04-17 01:55:36', '4469940096');
