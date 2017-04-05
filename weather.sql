/*
Navicat MySQL Data Transfer

Source Server         : point
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : weather

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-04-05 19:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `code` char(9) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d6wmr68dljice4y25ykax6rfs` (`provinceid`),
  CONSTRAINT `FK_d6wmr68dljice4y25ykax6rfs` FOREIGN KEY (`provinceid`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '1', '北京市', '101010100');
INSERT INTO `city` VALUES ('2', '2', '天津市', '101030100');
INSERT INTO `city` VALUES ('3', '3', '上海市', '101020100');
INSERT INTO `city` VALUES ('4', '4', '重庆市', '101040100');
INSERT INTO `city` VALUES ('5', '5', '石家庄市', '101090101');
INSERT INTO `city` VALUES ('6', '5', '唐山市', '101090501');
INSERT INTO `city` VALUES ('7', '5', '秦皇岛市', '101091101');
INSERT INTO `city` VALUES ('8', '5', '邯郸市', '101091001');
INSERT INTO `city` VALUES ('9', '5', '邢台市', '101090901');
INSERT INTO `city` VALUES ('10', '5', '保定市', '101090201');
INSERT INTO `city` VALUES ('11', '5', '张家口市', '101090301');
INSERT INTO `city` VALUES ('12', '5', '承德市', '101090402');
INSERT INTO `city` VALUES ('13', '5', '沧州市', '101090701');
INSERT INTO `city` VALUES ('14', '5', '廊坊市', '101090601');
INSERT INTO `city` VALUES ('15', '5', '衡水市', '101090801');
INSERT INTO `city` VALUES ('16', '6', '太原市', '101100101');
INSERT INTO `city` VALUES ('17', '6', '大同市', '101100201');
INSERT INTO `city` VALUES ('18', '6', '阳泉市', '101100301');
INSERT INTO `city` VALUES ('19', '6', '长治市', '101100501');
INSERT INTO `city` VALUES ('20', '6', '晋城市', '101100601');
INSERT INTO `city` VALUES ('21', '6', '朔州市', '101100901');
INSERT INTO `city` VALUES ('22', '6', '晋中市', '101100401');
INSERT INTO `city` VALUES ('23', '6', '运城市', '101100801');
INSERT INTO `city` VALUES ('24', '6', '忻州市', '101101001');
INSERT INTO `city` VALUES ('25', '6', '临汾市', '101100701');
INSERT INTO `city` VALUES ('26', '6', '吕梁市', '101101100');
INSERT INTO `city` VALUES ('27', '7', '台北市', '101340102');
INSERT INTO `city` VALUES ('28', '7', '高雄市', '101340201');
INSERT INTO `city` VALUES ('30', '7', '台中市', '101340401');
INSERT INTO `city` VALUES ('34', '7', '台北县', '101340101');
INSERT INTO `city` VALUES ('50', '8', '沈阳市', '101070101');
INSERT INTO `city` VALUES ('51', '8', '大连市', '101070201');
INSERT INTO `city` VALUES ('52', '8', '鞍山市', '101070301');
INSERT INTO `city` VALUES ('53', '8', '抚顺市', '101070401');
INSERT INTO `city` VALUES ('54', '8', '本溪市', '101070501');
INSERT INTO `city` VALUES ('55', '8', '丹东市', '101070601');
INSERT INTO `city` VALUES ('56', '8', '锦州市', '101070701');
INSERT INTO `city` VALUES ('57', '8', '营口市', '101070801');
INSERT INTO `city` VALUES ('58', '8', '阜新市', '101070901');
INSERT INTO `city` VALUES ('59', '8', '辽阳市', '101071001');
INSERT INTO `city` VALUES ('60', '8', '盘锦市', '101071301');
INSERT INTO `city` VALUES ('61', '8', '铁岭市', '101071101');
INSERT INTO `city` VALUES ('62', '8', '朝阳市', '101071201');
INSERT INTO `city` VALUES ('63', '8', '葫芦岛市', '101071401');
INSERT INTO `city` VALUES ('64', '9', '长春市', '101060101');
INSERT INTO `city` VALUES ('65', '9', '吉林市', '101060201');
INSERT INTO `city` VALUES ('66', '9', '四平市', '101060401');
INSERT INTO `city` VALUES ('67', '9', '辽源市', '101060701');
INSERT INTO `city` VALUES ('68', '9', '通化市', '101060501');
INSERT INTO `city` VALUES ('69', '9', '白山市', '101060901');
INSERT INTO `city` VALUES ('70', '9', '松原市', '101060801');
INSERT INTO `city` VALUES ('71', '9', '白城市', '101060601');
INSERT INTO `city` VALUES ('73', '10', '哈尔滨市', '101050101');
INSERT INTO `city` VALUES ('74', '10', '齐齐哈尔市', '101050201');
INSERT INTO `city` VALUES ('75', '10', '鹤岗市', '101051201');
INSERT INTO `city` VALUES ('76', '10', '双鸭山市', '101051301');
INSERT INTO `city` VALUES ('77', '10', '鸡西市', '101051101');
INSERT INTO `city` VALUES ('78', '10', '大庆市', '101050901');
INSERT INTO `city` VALUES ('79', '10', '伊春市', '101050801');
INSERT INTO `city` VALUES ('80', '10', '牡丹江市', '101050301');
INSERT INTO `city` VALUES ('81', '10', '佳木斯市', '101050401');
INSERT INTO `city` VALUES ('82', '10', '七台河市', '101051002');
INSERT INTO `city` VALUES ('83', '10', '黑河市', '101050601');
INSERT INTO `city` VALUES ('84', '10', '绥化市', '101050501');
INSERT INTO `city` VALUES ('85', '10', '大兴安岭地区', '101050701');
INSERT INTO `city` VALUES ('86', '11', '南京市', '101190101');
INSERT INTO `city` VALUES ('87', '11', '无锡市', '101190201');
INSERT INTO `city` VALUES ('88', '11', '徐州市', '101190801');
INSERT INTO `city` VALUES ('89', '11', '常州市', '101191101');
INSERT INTO `city` VALUES ('90', '11', '苏州市', '101190401');
INSERT INTO `city` VALUES ('91', '11', '南通市', '101190501');
INSERT INTO `city` VALUES ('92', '11', '连云港市', '101191001');
INSERT INTO `city` VALUES ('93', '11', '淮安市', '101190901');
INSERT INTO `city` VALUES ('94', '11', '盐城市', '101190701');
INSERT INTO `city` VALUES ('95', '11', '扬州市', '101190601');
INSERT INTO `city` VALUES ('96', '11', '镇江市', '101190301');
INSERT INTO `city` VALUES ('97', '11', '泰州市', '101191201');
INSERT INTO `city` VALUES ('98', '11', '宿迁市', '101191301');
INSERT INTO `city` VALUES ('99', '12', '杭州市', '101210101');
INSERT INTO `city` VALUES ('100', '12', '宁波市', '101210401');
INSERT INTO `city` VALUES ('101', '12', '温州市', '101210701');
INSERT INTO `city` VALUES ('102', '12', '嘉兴市', '101210301');
INSERT INTO `city` VALUES ('103', '12', '湖州市', '101210201');
INSERT INTO `city` VALUES ('104', '12', '绍兴市', '101210501');
INSERT INTO `city` VALUES ('105', '12', '金华市', '101210901');
INSERT INTO `city` VALUES ('106', '12', '衢州市', '101211001');
INSERT INTO `city` VALUES ('107', '12', '舟山市', '101211101');
INSERT INTO `city` VALUES ('108', '12', '台州市', '101210601');
INSERT INTO `city` VALUES ('109', '12', '丽水市', '101210801');
INSERT INTO `city` VALUES ('110', '13', '合肥市', '101220101');
INSERT INTO `city` VALUES ('111', '13', '芜湖市', '101220301');
INSERT INTO `city` VALUES ('112', '13', '蚌埠市', '101220201');
INSERT INTO `city` VALUES ('113', '13', '淮南市', '101220401');
INSERT INTO `city` VALUES ('114', '13', '马鞍山市', '101220501');
INSERT INTO `city` VALUES ('115', '13', '淮北市', '101221201');
INSERT INTO `city` VALUES ('116', '13', '铜陵市', '101221301');
INSERT INTO `city` VALUES ('117', '13', '安庆市', '101220601');
INSERT INTO `city` VALUES ('118', '13', '黄山市', '101221008');
INSERT INTO `city` VALUES ('119', '13', '滁州市', '101221101');
INSERT INTO `city` VALUES ('120', '13', '阜阳市', '101220801');
INSERT INTO `city` VALUES ('121', '13', '宿州市', '101220701');
INSERT INTO `city` VALUES ('123', '13', '六安市', '101221501');
INSERT INTO `city` VALUES ('124', '13', '亳州市', '101220901');
INSERT INTO `city` VALUES ('125', '13', '池州市', '101221701');
INSERT INTO `city` VALUES ('126', '13', '宣城市', '101221401');
INSERT INTO `city` VALUES ('127', '14', '福州市', '101230101');
INSERT INTO `city` VALUES ('128', '14', '厦门市', '101230201');
INSERT INTO `city` VALUES ('129', '14', '莆田市', '101230401');
INSERT INTO `city` VALUES ('130', '14', '三明市', '101230801');
INSERT INTO `city` VALUES ('131', '14', '泉州市', '101230501');
INSERT INTO `city` VALUES ('132', '14', '漳州市', '101230601');
INSERT INTO `city` VALUES ('133', '14', '南平市', '101230901');
INSERT INTO `city` VALUES ('134', '14', '龙岩市', '101230701');
INSERT INTO `city` VALUES ('135', '14', '宁德市', '101230301');
INSERT INTO `city` VALUES ('136', '15', '南昌市', '101240101');
INSERT INTO `city` VALUES ('137', '15', '景德镇市', '101240801');
INSERT INTO `city` VALUES ('138', '15', '萍乡市', '101240901');
INSERT INTO `city` VALUES ('139', '15', '九江市', '101240201');
INSERT INTO `city` VALUES ('140', '15', '新余市', '101241001');
INSERT INTO `city` VALUES ('141', '15', '鹰潭市', '101241101');
INSERT INTO `city` VALUES ('142', '15', '赣州市', '101240701');
INSERT INTO `city` VALUES ('143', '15', '吉安市', '101240601');
INSERT INTO `city` VALUES ('144', '15', '宜春市', '101240501');
INSERT INTO `city` VALUES ('145', '15', '抚州市', '101240401');
INSERT INTO `city` VALUES ('146', '15', '上饶市', '101240301');
INSERT INTO `city` VALUES ('147', '16', '济南市', '101120101');
INSERT INTO `city` VALUES ('148', '16', '青岛市', '101120201');
INSERT INTO `city` VALUES ('149', '16', '淄博市', '101120301');
INSERT INTO `city` VALUES ('150', '16', '枣庄市', '101121401');
INSERT INTO `city` VALUES ('151', '16', '东营市', '101121201');
INSERT INTO `city` VALUES ('152', '16', '烟台市', '101120501');
INSERT INTO `city` VALUES ('153', '16', '潍坊市', '101120601');
INSERT INTO `city` VALUES ('154', '16', '济宁市', '101120701');
INSERT INTO `city` VALUES ('155', '16', '泰安市', '101120801');
INSERT INTO `city` VALUES ('156', '16', '威海市', '101121301');
INSERT INTO `city` VALUES ('157', '16', '日照市', '101121501');
INSERT INTO `city` VALUES ('158', '16', '莱芜市', '101121601');
INSERT INTO `city` VALUES ('159', '16', '临沂市', '101120901');
INSERT INTO `city` VALUES ('160', '16', '德州市', '101120401');
INSERT INTO `city` VALUES ('161', '16', '聊城市', '101121701');
INSERT INTO `city` VALUES ('162', '16', '滨州市', '101121101');
INSERT INTO `city` VALUES ('163', '16', '菏泽市', '101121001');
INSERT INTO `city` VALUES ('164', '17', '郑州市', '101180101');
INSERT INTO `city` VALUES ('165', '17', '开封市', '101180801');
INSERT INTO `city` VALUES ('166', '17', '洛阳市', '101180901');
INSERT INTO `city` VALUES ('167', '17', '平顶山市', '101180501');
INSERT INTO `city` VALUES ('168', '17', '安阳市', '101180201');
INSERT INTO `city` VALUES ('169', '17', '鹤壁市', '101181201');
INSERT INTO `city` VALUES ('170', '17', '新乡市', '101180301');
INSERT INTO `city` VALUES ('171', '17', '焦作市', '101181101');
INSERT INTO `city` VALUES ('172', '17', '濮阳市', '101181301');
INSERT INTO `city` VALUES ('173', '17', '许昌市', '101180401');
INSERT INTO `city` VALUES ('174', '17', '漯河市', '101181501');
INSERT INTO `city` VALUES ('175', '17', '三门峡市', '101210604');
INSERT INTO `city` VALUES ('176', '17', '南阳市', '101180701');
INSERT INTO `city` VALUES ('177', '17', '商丘市', '101181001');
INSERT INTO `city` VALUES ('178', '17', '信阳市', '101180601');
INSERT INTO `city` VALUES ('179', '17', '周口市', '101181401');
INSERT INTO `city` VALUES ('180', '17', '驻马店市', '101181601');
INSERT INTO `city` VALUES ('181', '17', '济源市', '101181801');
INSERT INTO `city` VALUES ('182', '18', '武汉市', '101200101');
INSERT INTO `city` VALUES ('183', '18', '黄石市', '101200601');
INSERT INTO `city` VALUES ('184', '18', '十堰市', '101201101');
INSERT INTO `city` VALUES ('185', '18', '荆州市', '101200801');
INSERT INTO `city` VALUES ('186', '18', '宜昌市', '101200901');
INSERT INTO `city` VALUES ('187', '18', '襄樊市', '101200201');
INSERT INTO `city` VALUES ('188', '18', '鄂州市', '101200301');
INSERT INTO `city` VALUES ('189', '18', '荆门市', '101201401');
INSERT INTO `city` VALUES ('190', '18', '孝感市', '101200401');
INSERT INTO `city` VALUES ('191', '18', '黄冈市', '101200501');
INSERT INTO `city` VALUES ('192', '18', '咸宁市', '101200701');
INSERT INTO `city` VALUES ('193', '18', '随州市', '101201301');
INSERT INTO `city` VALUES ('194', '18', '仙桃市', '101201601');
INSERT INTO `city` VALUES ('195', '18', '天门市', '101201501');
INSERT INTO `city` VALUES ('196', '18', '潜江市', '101201701');
INSERT INTO `city` VALUES ('197', '18', '神农架林区', '101201201');
INSERT INTO `city` VALUES ('198', '18', '恩施土家族苗族自治州', '101201001');
INSERT INTO `city` VALUES ('199', '19', '长沙市', '101250101');
INSERT INTO `city` VALUES ('200', '19', '株洲市', '101250301');
INSERT INTO `city` VALUES ('201', '19', '湘潭市', '101250201');
INSERT INTO `city` VALUES ('202', '19', '衡阳市', '101250401');
INSERT INTO `city` VALUES ('203', '19', '邵阳市', '101250901');
INSERT INTO `city` VALUES ('204', '19', '岳阳市', '101251001');
INSERT INTO `city` VALUES ('205', '19', '常德市', '101250601');
INSERT INTO `city` VALUES ('206', '19', '张家界市', '101251101');
INSERT INTO `city` VALUES ('207', '19', '益阳市', '101250700');
INSERT INTO `city` VALUES ('208', '19', '郴州市', '101250501');
INSERT INTO `city` VALUES ('209', '19', '永州市', '101251401');
INSERT INTO `city` VALUES ('210', '19', '怀化市', '101251201');
INSERT INTO `city` VALUES ('211', '19', '娄底市', '101250801');
INSERT INTO `city` VALUES ('213', '20', '广州市', '101280101');
INSERT INTO `city` VALUES ('214', '20', '深圳市', '101280601');
INSERT INTO `city` VALUES ('215', '20', '珠海市', '101280701');
INSERT INTO `city` VALUES ('216', '20', '汕头市', '101280501');
INSERT INTO `city` VALUES ('217', '20', '韶关市', '101280201');
INSERT INTO `city` VALUES ('218', '20', '佛山市', '101280800');
INSERT INTO `city` VALUES ('219', '20', '江门市', '101281101');
INSERT INTO `city` VALUES ('220', '20', '湛江市', '101281001');
INSERT INTO `city` VALUES ('221', '20', '茂名市', '101282001');
INSERT INTO `city` VALUES ('222', '20', '肇庆市', '101280901');
INSERT INTO `city` VALUES ('223', '20', '惠州市', '101280301');
INSERT INTO `city` VALUES ('224', '20', '梅州市', '101280401');
INSERT INTO `city` VALUES ('225', '20', '汕尾市', '101282101');
INSERT INTO `city` VALUES ('226', '20', '河源市', '101281201');
INSERT INTO `city` VALUES ('227', '20', '阳江市', '101281801');
INSERT INTO `city` VALUES ('228', '20', '清远市', '101281301');
INSERT INTO `city` VALUES ('229', '20', '东莞市', '101281601');
INSERT INTO `city` VALUES ('230', '20', '中山市', '101281701');
INSERT INTO `city` VALUES ('231', '20', '潮州市', '101281501');
INSERT INTO `city` VALUES ('232', '20', '揭阳市', '101281901');
INSERT INTO `city` VALUES ('233', '20', '云浮市', '101281401');
INSERT INTO `city` VALUES ('234', '21', '兰州市', '101160101');
INSERT INTO `city` VALUES ('235', '21', '金昌市', '101160601');
INSERT INTO `city` VALUES ('236', '21', '白银市', '101161301');
INSERT INTO `city` VALUES ('237', '21', '天水市', '101160901');
INSERT INTO `city` VALUES ('239', '21', '武威市', '101160501');
INSERT INTO `city` VALUES ('240', '21', '张掖市', '101160701');
INSERT INTO `city` VALUES ('241', '21', '平凉市', '101160301');
INSERT INTO `city` VALUES ('242', '21', '酒泉市', '101160801');
INSERT INTO `city` VALUES ('243', '21', '庆阳市', '101160401');
INSERT INTO `city` VALUES ('244', '21', '定西市', '101160201');
INSERT INTO `city` VALUES ('246', '21', '临夏回族自治州', '101161101');
INSERT INTO `city` VALUES ('247', '21', '甘南藏族自治州', '101050204');
INSERT INTO `city` VALUES ('248', '22', '成都市', '101270101');
INSERT INTO `city` VALUES ('249', '22', '自贡市', '101270301');
INSERT INTO `city` VALUES ('250', '22', '攀枝花市', '101270201');
INSERT INTO `city` VALUES ('251', '22', '泸州市', '101271001');
INSERT INTO `city` VALUES ('252', '22', '德阳市', '101272001');
INSERT INTO `city` VALUES ('253', '22', '绵阳市', '101270401');
INSERT INTO `city` VALUES ('254', '22', '广元市', '101272101');
INSERT INTO `city` VALUES ('255', '22', '遂宁市', '101270701');
INSERT INTO `city` VALUES ('256', '22', '内江市', '101271201');
INSERT INTO `city` VALUES ('257', '22', '乐山市', '101271401');
INSERT INTO `city` VALUES ('258', '22', '南充市', '101270501');
INSERT INTO `city` VALUES ('259', '22', '眉山市', '101271501');
INSERT INTO `city` VALUES ('260', '22', '宜宾市', '101271101');
INSERT INTO `city` VALUES ('261', '22', '广安市', '101270801');
INSERT INTO `city` VALUES ('262', '22', '达州市', '101270601');
INSERT INTO `city` VALUES ('263', '22', '雅安市', '101271701');
INSERT INTO `city` VALUES ('264', '22', '巴中市', '101270901');
INSERT INTO `city` VALUES ('265', '22', '资阳市', '101271301');
INSERT INTO `city` VALUES ('266', '22', '阿坝藏族羌族自治州', '101271901');
INSERT INTO `city` VALUES ('267', '22', '甘孜藏族自治州', '101271801');
INSERT INTO `city` VALUES ('268', '22', '凉山彝族自治州', '101271601');
INSERT INTO `city` VALUES ('269', '23', '贵阳市', '101260101');
INSERT INTO `city` VALUES ('270', '23', '六盘水市', '101260801');
INSERT INTO `city` VALUES ('271', '23', '遵义市', '101260201');
INSERT INTO `city` VALUES ('272', '23', '安顺市', '101260301');
INSERT INTO `city` VALUES ('273', '23', '铜仁地区', '101260601');
INSERT INTO `city` VALUES ('274', '23', '毕节地区', '101260701');
INSERT INTO `city` VALUES ('275', '23', '黔西南布依族苗族自治州', '101260901');
INSERT INTO `city` VALUES ('278', '24', '海口市', '101310101');
INSERT INTO `city` VALUES ('279', '24', '三亚市', '101310201');
INSERT INTO `city` VALUES ('280', '24', '五指山市', '101310222');
INSERT INTO `city` VALUES ('281', '24', '琼海市', '101310211');
INSERT INTO `city` VALUES ('282', '24', '儋州市', '101310205');
INSERT INTO `city` VALUES ('283', '24', '文昌市', '101310212');
INSERT INTO `city` VALUES ('284', '24', '万宁市', '101310215');
INSERT INTO `city` VALUES ('285', '24', '东方市', '101310202');
INSERT INTO `city` VALUES ('286', '24', '澄迈县', '101310204');
INSERT INTO `city` VALUES ('287', '24', '定安县', '101310209');
INSERT INTO `city` VALUES ('288', '24', '屯昌县', '101310210');
INSERT INTO `city` VALUES ('289', '24', '临高县', '101310203');
INSERT INTO `city` VALUES ('290', '24', '白沙黎族自治县', '101310207');
INSERT INTO `city` VALUES ('291', '24', '昌江黎族自治县', '101310206');
INSERT INTO `city` VALUES ('292', '24', '乐东黎族自治县', '101310221');
INSERT INTO `city` VALUES ('293', '24', '陵水黎族自治县', '101310216');
INSERT INTO `city` VALUES ('294', '24', '保亭黎族苗族自治县', '101310214');
INSERT INTO `city` VALUES ('295', '24', '琼中黎族苗族自治县', '101310208');
INSERT INTO `city` VALUES ('296', '25', '昆明市', '101290101');
INSERT INTO `city` VALUES ('297', '25', '曲靖市', '101290401');
INSERT INTO `city` VALUES ('298', '25', '玉溪市', '101290701');
INSERT INTO `city` VALUES ('299', '25', '保山市', '101290501');
INSERT INTO `city` VALUES ('300', '25', '昭通市', '101291001');
INSERT INTO `city` VALUES ('301', '25', '丽江市', '101291401');
INSERT INTO `city` VALUES ('303', '25', '临沧市', '101291101');
INSERT INTO `city` VALUES ('304', '25', '文山壮族苗族自治州', '101290601');
INSERT INTO `city` VALUES ('305', '25', '红河哈尼族彝族自治州', '101290301');
INSERT INTO `city` VALUES ('307', '25', '楚雄彝族自治州', '101290801');
INSERT INTO `city` VALUES ('308', '25', '大理白族自治州', '101290201');
INSERT INTO `city` VALUES ('309', '25', '德宏傣族景颇族自治州', '101291501');
INSERT INTO `city` VALUES ('310', '25', '怒江傈傈族自治州', '101291201');
INSERT INTO `city` VALUES ('312', '26', '西宁市', '101150101');
INSERT INTO `city` VALUES ('313', '26', '海东地区', '101150201');
INSERT INTO `city` VALUES ('314', '26', '海北藏族自治州', '101150801');
INSERT INTO `city` VALUES ('315', '26', '黄南藏族自治州', '101150301');
INSERT INTO `city` VALUES ('316', '26', '海南藏族自治州', '101150401');
INSERT INTO `city` VALUES ('317', '26', '果洛藏族自治州', '101150501');
INSERT INTO `city` VALUES ('318', '26', '玉树藏族自治州', '101150601');
INSERT INTO `city` VALUES ('319', '26', '海西蒙古族藏族自治州', '101150701');
INSERT INTO `city` VALUES ('320', '27', '西安市', '101110101');
INSERT INTO `city` VALUES ('321', '27', '铜川市', '101111001');
INSERT INTO `city` VALUES ('322', '27', '宝鸡市', '101110901');
INSERT INTO `city` VALUES ('323', '27', '咸阳市', '101110200');
INSERT INTO `city` VALUES ('324', '27', '渭南市', '101110501');
INSERT INTO `city` VALUES ('325', '27', '延安市', '101110300');
INSERT INTO `city` VALUES ('326', '27', '汉中市', '101110801');
INSERT INTO `city` VALUES ('327', '27', '榆林市', '101110401');
INSERT INTO `city` VALUES ('328', '27', '安康市', '101110701');
INSERT INTO `city` VALUES ('329', '27', '商洛市', '101110601');
INSERT INTO `city` VALUES ('330', '28', '南宁市', '101300101');
INSERT INTO `city` VALUES ('331', '28', '柳州市', '101300301');
INSERT INTO `city` VALUES ('332', '28', '桂林市', '101300501');
INSERT INTO `city` VALUES ('333', '28', '梧州市', '101300601');
INSERT INTO `city` VALUES ('334', '28', '北海市', '101301301');
INSERT INTO `city` VALUES ('335', '28', '防城港市', '101301405');
INSERT INTO `city` VALUES ('336', '28', '钦州市', '101301101');
INSERT INTO `city` VALUES ('337', '28', '贵港市', '101300801');
INSERT INTO `city` VALUES ('338', '28', '玉林市', '101300901');
INSERT INTO `city` VALUES ('339', '28', '百色市', '101301001');
INSERT INTO `city` VALUES ('340', '28', '贺州市', '101300701');
INSERT INTO `city` VALUES ('341', '28', '河池市', '101301201');
INSERT INTO `city` VALUES ('342', '28', '来宾市', '101300401');
INSERT INTO `city` VALUES ('343', '28', '崇左市', '101300201');
INSERT INTO `city` VALUES ('344', '29', '拉萨市', '101140101');
INSERT INTO `city` VALUES ('345', '29', '那曲地区', '101140601');
INSERT INTO `city` VALUES ('346', '29', '昌都地区', '101140501');
INSERT INTO `city` VALUES ('347', '29', '山南地区', '101140301');
INSERT INTO `city` VALUES ('348', '29', '日喀则地区', '101140201');
INSERT INTO `city` VALUES ('349', '29', '阿里地区', '101140701');
INSERT INTO `city` VALUES ('350', '29', '林芝地区', '101140401');
INSERT INTO `city` VALUES ('351', '30', '银川市', '101170101');
INSERT INTO `city` VALUES ('352', '30', '石嘴山市', '101170201');
INSERT INTO `city` VALUES ('353', '30', '吴忠市', '101170301');
INSERT INTO `city` VALUES ('354', '30', '固原市', '101170401');
INSERT INTO `city` VALUES ('355', '30', '中卫市', '101170501');
INSERT INTO `city` VALUES ('356', '31', '乌鲁木齐市', '101130101');
INSERT INTO `city` VALUES ('357', '31', '克拉玛依市', '101130201');
INSERT INTO `city` VALUES ('358', '31', '石河子市　', '101130301');
INSERT INTO `city` VALUES ('359', '31', '阿拉尔市', '101130701');
INSERT INTO `city` VALUES ('362', '31', '吐鲁番市', '101130501');
INSERT INTO `city` VALUES ('363', '31', '阿克苏市', '101130801');
INSERT INTO `city` VALUES ('364', '31', '喀什市', '101130901');
INSERT INTO `city` VALUES ('365', '31', '哈密市', '101131201');
INSERT INTO `city` VALUES ('366', '31', '和田市', '101131301');
INSERT INTO `city` VALUES ('367', '31', '阿图什市', '101131501');
INSERT INTO `city` VALUES ('368', '31', '库尔勒市', '101130601');
INSERT INTO `city` VALUES ('369', '31', '昌吉市　', '101130401');
INSERT INTO `city` VALUES ('370', '31', '阜康市', '101130404');
INSERT INTO `city` VALUES ('371', '31', '米泉市', '101130403');
INSERT INTO `city` VALUES ('372', '31', '博乐市', '101131601');
INSERT INTO `city` VALUES ('373', '31', '伊宁市', '101131001');
INSERT INTO `city` VALUES ('375', '31', '塔城市', '101131101');
INSERT INTO `city` VALUES ('376', '31', '乌苏市', '101131106');
INSERT INTO `city` VALUES ('377', '31', '阿勒泰市', '101131401');
INSERT INTO `city` VALUES ('378', '32', '呼和浩特市', '101080101');
INSERT INTO `city` VALUES ('379', '32', '包头市', '101080201');
INSERT INTO `city` VALUES ('380', '32', '乌海市', '101080301');
INSERT INTO `city` VALUES ('381', '32', '赤峰市', '101080601');
INSERT INTO `city` VALUES ('382', '32', '通辽市', '101080501');
INSERT INTO `city` VALUES ('383', '32', '鄂尔多斯市', '101080701');
INSERT INTO `city` VALUES ('385', '32', '巴彦淖尔市', '101050107');
INSERT INTO `city` VALUES ('386', '32', '乌兰察布市', '101150709');
INSERT INTO `city` VALUES ('388', '32', '兴安盟', '101300506');
INSERT INTO `city` VALUES ('390', '33', '澳门特别行政区', '101330101');
INSERT INTO `city` VALUES ('391', '34', '香港特别行政区', '101320101');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '北京市');
INSERT INTO `province` VALUES ('2', '天津市');
INSERT INTO `province` VALUES ('3', '上海市');
INSERT INTO `province` VALUES ('4', '重庆市');
INSERT INTO `province` VALUES ('5', '河北省');
INSERT INTO `province` VALUES ('6', '山西省');
INSERT INTO `province` VALUES ('7', '台湾省');
INSERT INTO `province` VALUES ('8', '辽宁省');
INSERT INTO `province` VALUES ('9', '吉林省');
INSERT INTO `province` VALUES ('10', '黑龙江省');
INSERT INTO `province` VALUES ('11', '江苏省');
INSERT INTO `province` VALUES ('12', '浙江省');
INSERT INTO `province` VALUES ('13', '安徽省');
INSERT INTO `province` VALUES ('14', '福建省');
INSERT INTO `province` VALUES ('15', '江西省');
INSERT INTO `province` VALUES ('16', '山东省');
INSERT INTO `province` VALUES ('17', '河南省');
INSERT INTO `province` VALUES ('18', '湖北省');
INSERT INTO `province` VALUES ('19', '湖南省');
INSERT INTO `province` VALUES ('20', '广东省');
INSERT INTO `province` VALUES ('21', '甘肃省');
INSERT INTO `province` VALUES ('22', '四川省');
INSERT INTO `province` VALUES ('23', '贵州省');
INSERT INTO `province` VALUES ('24', '海南省');
INSERT INTO `province` VALUES ('25', '云南省');
INSERT INTO `province` VALUES ('26', '青海省');
INSERT INTO `province` VALUES ('27', '陕西省');
INSERT INTO `province` VALUES ('28', '广西壮族自治区');
INSERT INTO `province` VALUES ('29', '西藏自治区');
INSERT INTO `province` VALUES ('30', '宁夏回族自治区');
INSERT INTO `province` VALUES ('31', '新疆维吾尔自治区');
INSERT INTO `province` VALUES ('32', '内蒙古自治区');
INSERT INTO `province` VALUES ('33', '澳门特别行政区');
INSERT INTO `province` VALUES ('34', '香港特别行政区');

-- ----------------------------
-- Table structure for t101010100
-- ----------------------------
DROP TABLE IF EXISTS `t101010100`;
CREATE TABLE `t101010100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101010100
-- ----------------------------
INSERT INTO `t101010100` VALUES ('3', '北京', '101010100', '17', '多云', '东南风', 'SE ', '3级', '90', '90', '18:35', '2017-04-05', '9℃', '25℃', '晴转多云，有轻雾或雾转多云间晴，早晨有轻雾或雾', '南风', '微风');

-- ----------------------------
-- Table structure for t101020100
-- ----------------------------
DROP TABLE IF EXISTS `t101020100`;
CREATE TABLE `t101020100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101020100
-- ----------------------------
INSERT INTO `t101020100` VALUES ('3', '上海', '101020100', '19', '多云', '东北风', 'NE ', '1级', '75', '75', '18:43', '2017-04-05', '16℃', '23℃', '小雨转中雨', '东南风转东风', '微风');

-- ----------------------------
-- Table structure for t101030100
-- ----------------------------
DROP TABLE IF EXISTS `t101030100`;
CREATE TABLE `t101030100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101030100
-- ----------------------------
INSERT INTO `t101030100` VALUES ('3', '天津', '101030100', '12', '多云', '东风', 'E ', '3级', '57', '57', '18:35', '2017-04-05', '11℃', '24℃', '晴转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101040100
-- ----------------------------
DROP TABLE IF EXISTS `t101040100`;
CREATE TABLE `t101040100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101040100
-- ----------------------------
INSERT INTO `t101040100` VALUES ('3', '重庆', '101040100', '18', '雨', '东风', 'E ', '2级', '70', '70', '18:35', '2017-04-05', '14℃', '26℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101050101
-- ----------------------------
DROP TABLE IF EXISTS `t101050101`;
CREATE TABLE `t101050101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050101
-- ----------------------------
INSERT INTO `t101050101` VALUES ('3', '哈尔滨', '101050101', '17', '多云', '西南风', 'SW ', '6级', '190', '190', '18:35', '2017-04-05', '7℃', '17℃', '多云转小雨', '西北风转无持续风向', '3-4级');

-- ----------------------------
-- Table structure for t101050107
-- ----------------------------
DROP TABLE IF EXISTS `t101050107`;
CREATE TABLE `t101050107` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050107
-- ----------------------------
INSERT INTO `t101050107` VALUES ('3', '巴彦', '101050107', '16', '多云', '西南风', 'SW ', '4级', '', '', '18:35', '2017-04-05', '4℃', '15℃', '多云转小雨', '西北风转北风', '3-4级');

-- ----------------------------
-- Table structure for t101050201
-- ----------------------------
DROP TABLE IF EXISTS `t101050201`;
CREATE TABLE `t101050201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050201
-- ----------------------------
INSERT INTO `t101050201` VALUES ('3', '齐齐哈尔', '101050201', '10', '晴', '北风', 'N ', '2级', '105', '105', '18:35', '2017-04-05', '3℃', '12℃', '小雨转多云', '北风', '4-5级');

-- ----------------------------
-- Table structure for t101050204
-- ----------------------------
DROP TABLE IF EXISTS `t101050204`;
CREATE TABLE `t101050204` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050204
-- ----------------------------
INSERT INTO `t101050204` VALUES ('3', '甘南', '101050204', '8', '晴', '东北风', 'NE ', '3级', '', '', '18:45', '2017-04-05', '2℃', '11℃', '小雨转多云', '东北风', '4-5级');

-- ----------------------------
-- Table structure for t101050301
-- ----------------------------
DROP TABLE IF EXISTS `t101050301`;
CREATE TABLE `t101050301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050301
-- ----------------------------
INSERT INTO `t101050301` VALUES ('3', '牡丹江', '101050301', '16', '晴', '西南风', 'SW ', '5级', '132', '132', '18:35', '2017-04-05', '4℃', '21℃', '晴转多云', '无持续风向转西北风', '微风转5-6级');

-- ----------------------------
-- Table structure for t101050401
-- ----------------------------
DROP TABLE IF EXISTS `t101050401`;
CREATE TABLE `t101050401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050401
-- ----------------------------
INSERT INTO `t101050401` VALUES ('3', '佳木斯', '101050401', '16', '多云', '西南风', 'SW ', '5级', '112', '112', '18:35', '2017-04-05', '7℃', '19℃', '晴转阵雨', '西风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101050501
-- ----------------------------
DROP TABLE IF EXISTS `t101050501`;
CREATE TABLE `t101050501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050501
-- ----------------------------
INSERT INTO `t101050501` VALUES ('3', '绥化', '101050501', '16', '多云', '西南风', 'SW ', '5级', '500', '500', '18:40', '2017-04-05', '8℃', '11℃', '多云转阵雨', '西南风', '4-5级转3-4级');

-- ----------------------------
-- Table structure for t101050601
-- ----------------------------
DROP TABLE IF EXISTS `t101050601`;
CREATE TABLE `t101050601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050601
-- ----------------------------
INSERT INTO `t101050601` VALUES ('3', '黑河', '101050601', '4', '多云', '东北风', 'NE ', '3级', '32', '32', '18:45', '2017-04-05', '-2℃', '8℃', '雨夹雪转多云', '北风', '3-4级');

-- ----------------------------
-- Table structure for t101050701
-- ----------------------------
DROP TABLE IF EXISTS `t101050701`;
CREATE TABLE `t101050701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050701
-- ----------------------------
INSERT INTO `t101050701` VALUES ('3', '大兴安岭', '101050701', '2', '雨', '东北风', 'NE ', '4级', '25', '25', '18:45', '2017-04-05', '-2℃', '9℃', '阵雪转多云', '北风转西风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101050801
-- ----------------------------
DROP TABLE IF EXISTS `t101050801`;
CREATE TABLE `t101050801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050801
-- ----------------------------
INSERT INTO `t101050801` VALUES ('3', '伊春', '101050801', '13', '多云', '北风', 'N ', '2级', '103', '103', '18:45', '2017-04-05', '5℃', '10℃', '多云转阵雨', '西南风', '微风转4-5级');

-- ----------------------------
-- Table structure for t101050901
-- ----------------------------
DROP TABLE IF EXISTS `t101050901`;
CREATE TABLE `t101050901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101050901
-- ----------------------------
INSERT INTO `t101050901` VALUES ('3', '大庆', '101050901', '14', '晴', '西北风', 'NW ', '2级', '138', '138', '18:45', '2017-04-05', '8℃', '11℃', '多云转阵雨', '北风', '4-5级转5-6级');

-- ----------------------------
-- Table structure for t101051002
-- ----------------------------
DROP TABLE IF EXISTS `t101051002`;
CREATE TABLE `t101051002` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101051002
-- ----------------------------
INSERT INTO `t101051002` VALUES ('3', '七台河', '101051002', '17', '晴', '西风', 'W ', '2级', '92', '92', '18:40', '2017-04-05', '6℃', '20℃', '晴转多云', '西风', '3-4级');

-- ----------------------------
-- Table structure for t101051101
-- ----------------------------
DROP TABLE IF EXISTS `t101051101`;
CREATE TABLE `t101051101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101051101
-- ----------------------------
INSERT INTO `t101051101` VALUES ('3', '鸡西', '101051101', '17', '多云', '西南风', 'SW ', '4级', '100', '100', '18:45', '2017-04-05', '6℃', '20℃', '多云', '西北风', '3-4级');

-- ----------------------------
-- Table structure for t101051201
-- ----------------------------
DROP TABLE IF EXISTS `t101051201`;
CREATE TABLE `t101051201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101051201
-- ----------------------------
INSERT INTO `t101051201` VALUES ('3', '鹤岗', '101051201', '10', '多云', '东风', 'E ', '2级', '135', '135', '18:40', '2017-04-05', '-3℃', '14℃', '多云转阵雨', '东风转西风', '3-4级');

-- ----------------------------
-- Table structure for t101051301
-- ----------------------------
DROP TABLE IF EXISTS `t101051301`;
CREATE TABLE `t101051301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101051301
-- ----------------------------
INSERT INTO `t101051301` VALUES ('3', '双鸭山', '101051301', '18', '多云', '西南风', 'SW ', '4级', '105', '105', '18:45', '2017-04-05', '10℃', '18℃', '多云转阵雨', '西南风转西北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101060101
-- ----------------------------
DROP TABLE IF EXISTS `t101060101`;
CREATE TABLE `t101060101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060101
-- ----------------------------
INSERT INTO `t101060101` VALUES ('3', '长春', '101060101', '14', '晴', '西南风', 'SW ', '4级', '122', '122', '18:00', '2017-04-05', '6℃', '16℃', '多云转小雨', '西北风', '3-4级');

-- ----------------------------
-- Table structure for t101060201
-- ----------------------------
DROP TABLE IF EXISTS `t101060201`;
CREATE TABLE `t101060201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060201
-- ----------------------------
INSERT INTO `t101060201` VALUES ('3', '吉林', '101060201', '17', '晴', '西南风', 'SW ', '4级', '119', '119', '17:00', '2017-04-05', '7℃', '16℃', '晴转小雨', '南风转无持续风向', '3-4级转微风');

-- ----------------------------
-- Table structure for t101060401
-- ----------------------------
DROP TABLE IF EXISTS `t101060401`;
CREATE TABLE `t101060401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060401
-- ----------------------------
INSERT INTO `t101060401` VALUES ('3', '四平', '101060401', '13', '晴', '西南风', 'SW ', '4级', '68', '68', '18:00', '2017-04-05', '5℃', '16℃', '多云转小雨', '西南风转无持续风向', '4-5级转微风');

-- ----------------------------
-- Table structure for t101060501
-- ----------------------------
DROP TABLE IF EXISTS `t101060501`;
CREATE TABLE `t101060501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060501
-- ----------------------------
INSERT INTO `t101060501` VALUES ('3', '通化', '101060501', '14', '多云', '西南风', 'SW ', '3级', '54', '54', '17:00', '2017-04-05', '4℃', '18℃', '多云', '西风', '微风');

-- ----------------------------
-- Table structure for t101060601
-- ----------------------------
DROP TABLE IF EXISTS `t101060601`;
CREATE TABLE `t101060601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060601
-- ----------------------------
INSERT INTO `t101060601` VALUES ('3', '白城', '101060601', '19', '晴', '东风', 'E ', '3级', '112', '112', '17:00', '2017-04-05', '6℃', '14℃', '多云转小雨', '西南风转西风', '3-4级转微风');

-- ----------------------------
-- Table structure for t101060701
-- ----------------------------
DROP TABLE IF EXISTS `t101060701`;
CREATE TABLE `t101060701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060701
-- ----------------------------
INSERT INTO `t101060701` VALUES ('3', '辽源', '101060701', '15', '多云', '西南风', 'SW ', '3级', '53', '53', '18:00', '2017-04-05', '3℃', '19℃', '多云转小雨', '西南风转西风', '3-4级转微风');

-- ----------------------------
-- Table structure for t101060801
-- ----------------------------
DROP TABLE IF EXISTS `t101060801`;
CREATE TABLE `t101060801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060801
-- ----------------------------
INSERT INTO `t101060801` VALUES ('3', '松原', '101060801', '19', '晴', '西南风', 'SW ', '6级', '500', '500', '17:00', '2017-04-05', '8℃', '15℃', '多云转小雨', '西南风', '3-4级');

-- ----------------------------
-- Table structure for t101060901
-- ----------------------------
DROP TABLE IF EXISTS `t101060901`;
CREATE TABLE `t101060901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101060901
-- ----------------------------
INSERT INTO `t101060901` VALUES ('3', '白山', '101060901', '14', '晴', '东南风', 'SE ', '3级', '72', '72', '18:00', '2017-04-05', '3℃', '20℃', '晴', '西风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101070101
-- ----------------------------
DROP TABLE IF EXISTS `t101070101`;
CREATE TABLE `t101070101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070101
-- ----------------------------
INSERT INTO `t101070101` VALUES ('3', '沈阳', '101070101', '12', '多云', '西南风', 'SW ', '3级', '42', '42', '18:35', '2017-04-05', '6℃', '17℃', '多云', '西南风转西北风', '3-4级');

-- ----------------------------
-- Table structure for t101070201
-- ----------------------------
DROP TABLE IF EXISTS `t101070201`;
CREATE TABLE `t101070201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070201
-- ----------------------------
INSERT INTO `t101070201` VALUES ('3', '大连', '101070201', '7', '多云', '东风', 'E ', '3级', '32', '32', '18:45', '2017-04-05', '6℃', '15℃', '多云转晴', '东南风转西风', '4-5级');

-- ----------------------------
-- Table structure for t101070301
-- ----------------------------
DROP TABLE IF EXISTS `t101070301`;
CREATE TABLE `t101070301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070301
-- ----------------------------
INSERT INTO `t101070301` VALUES ('3', '鞍山', '101070301', '12', '多云', '西南风', 'SW ', '3级', '36', '36', '18:35', '2017-04-05', '9℃', '18℃', '多云转晴', '南风转北风', '4-5级');

-- ----------------------------
-- Table structure for t101070401
-- ----------------------------
DROP TABLE IF EXISTS `t101070401`;
CREATE TABLE `t101070401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070401
-- ----------------------------
INSERT INTO `t101070401` VALUES ('3', '抚顺', '101070401', '12', '多云', '西南风', 'SW ', '2级', '38', '38', '18:45', '2017-04-05', '5℃', '17℃', '多云', '东北风转西北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101070501
-- ----------------------------
DROP TABLE IF EXISTS `t101070501`;
CREATE TABLE `t101070501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070501
-- ----------------------------
INSERT INTO `t101070501` VALUES ('3', '本溪', '101070501', '11', '多云', '南风', 'S ', '3级', '34', '34', '18:40', '2017-04-05', '8℃', '17℃', '多云', '南风转西北风', '3-4级');

-- ----------------------------
-- Table structure for t101070601
-- ----------------------------
DROP TABLE IF EXISTS `t101070601`;
CREATE TABLE `t101070601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070601
-- ----------------------------
INSERT INTO `t101070601` VALUES ('3', '丹东', '101070601', '10', '雨', '东北风', 'NE ', '3级', '51', '51', '18:45', '2017-04-05', '8℃', '17℃', '阴转多云', '东南风转西南风', '微风');

-- ----------------------------
-- Table structure for t101070701
-- ----------------------------
DROP TABLE IF EXISTS `t101070701`;
CREATE TABLE `t101070701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070701
-- ----------------------------
INSERT INTO `t101070701` VALUES ('3', '锦州', '101070701', '10', '多云', '东南风', 'SE ', '4级', '37', '37', '18:45', '2017-04-05', '7℃', '19℃', '多云转晴', '南风转北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101070801
-- ----------------------------
DROP TABLE IF EXISTS `t101070801`;
CREATE TABLE `t101070801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070801
-- ----------------------------
INSERT INTO `t101070801` VALUES ('3', '营口', '101070801', '11', '多云', '西风', 'W ', '2级', '36', '36', '18:40', '2017-04-05', '6℃', '14℃', '多云', '西南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101070901
-- ----------------------------
DROP TABLE IF EXISTS `t101070901`;
CREATE TABLE `t101070901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101070901
-- ----------------------------
INSERT INTO `t101070901` VALUES ('3', '阜新', '101070901', '11', '晴', '西南风', 'SW ', '5级', '39', '39', '18:45', '2017-04-05', '6℃', '15℃', '多云', '南风转北风', '5-6级');

-- ----------------------------
-- Table structure for t101071001
-- ----------------------------
DROP TABLE IF EXISTS `t101071001`;
CREATE TABLE `t101071001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101071001
-- ----------------------------
INSERT INTO `t101071001` VALUES ('3', '辽阳', '101071001', '13', '多云', '东南风', 'SE ', '3级', '30', '30', '18:35', '2017-04-05', '7℃', '18℃', '多云', '西南风转北风', '3-4级');

-- ----------------------------
-- Table structure for t101071101
-- ----------------------------
DROP TABLE IF EXISTS `t101071101`;
CREATE TABLE `t101071101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101071101
-- ----------------------------
INSERT INTO `t101071101` VALUES ('3', '铁岭', '101071101', '13', '晴', '西南风', 'SW ', '4级', '50', '50', '18:35', '2017-04-05', '6℃', '16℃', '多云转阵雨', '西南风转北风', '3-4级');

-- ----------------------------
-- Table structure for t101071201
-- ----------------------------
DROP TABLE IF EXISTS `t101071201`;
CREATE TABLE `t101071201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101071201
-- ----------------------------
INSERT INTO `t101071201` VALUES ('3', '朝阳', '101071201', '12', '晴', '南风', 'S ', '5级', '39', '39', '18:35', '2017-04-05', '6℃', '17℃', '多云', '南风转北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101071301
-- ----------------------------
DROP TABLE IF EXISTS `t101071301`;
CREATE TABLE `t101071301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101071301
-- ----------------------------
INSERT INTO `t101071301` VALUES ('3', '盘锦', '101071301', '11', '多云', '西南风', 'SW ', '4级', '36', '36', '18:35', '2017-04-05', '6℃', '16℃', '多云转晴', '西南风转北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101071401
-- ----------------------------
DROP TABLE IF EXISTS `t101071401`;
CREATE TABLE `t101071401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101071401
-- ----------------------------
INSERT INTO `t101071401` VALUES ('3', '葫芦岛', '101071401', '10', '多云', '南风', 'S ', '3级', '69', '69', '18:35', '2017-04-05', '5℃', '19℃', '多云转晴', '西南风转北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101080101
-- ----------------------------
DROP TABLE IF EXISTS `t101080101`;
CREATE TABLE `t101080101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080101
-- ----------------------------
INSERT INTO `t101080101` VALUES ('3', '呼和浩特', '101080101', '16', '晴', '西风', 'W ', '4级', '67', '67', '18:45', '2017-04-05', '8℃', '20℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101080201
-- ----------------------------
DROP TABLE IF EXISTS `t101080201`;
CREATE TABLE `t101080201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080201
-- ----------------------------
INSERT INTO `t101080201` VALUES ('3', '包头', '101080201', '16', '晴', '东南风', 'SE ', '3级', '84', '84', '18:45', '2017-04-05', '6℃', '20℃', '多云', '西南风', '微风');

-- ----------------------------
-- Table structure for t101080301
-- ----------------------------
DROP TABLE IF EXISTS `t101080301`;
CREATE TABLE `t101080301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080301
-- ----------------------------
INSERT INTO `t101080301` VALUES ('3', '乌海', '101080301', '19', '晴', '北风', 'N ', '5级', '50', '50', '18:35', '2017-04-05', '11℃', '25℃', '多云转晴', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101080501
-- ----------------------------
DROP TABLE IF EXISTS `t101080501`;
CREATE TABLE `t101080501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080501
-- ----------------------------
INSERT INTO `t101080501` VALUES ('3', '通辽', '101080501', '14', '晴', '西南风', 'SW ', '5级', '77', '77', '18:45', '2017-04-05', '8℃', '16℃', '多云转小雨', '西南风转西北风', '4-5级');

-- ----------------------------
-- Table structure for t101080601
-- ----------------------------
DROP TABLE IF EXISTS `t101080601`;
CREATE TABLE `t101080601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080601
-- ----------------------------
INSERT INTO `t101080601` VALUES ('3', '赤峰', '101080601', '16', '多云', '南风', 'S ', '4级', '79', '79', '18:35', '2017-04-05', '10℃', '18℃', '多云', '西南风转北风', '3-4级');

-- ----------------------------
-- Table structure for t101080701
-- ----------------------------
DROP TABLE IF EXISTS `t101080701`;
CREATE TABLE `t101080701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101080701
-- ----------------------------
INSERT INTO `t101080701` VALUES ('3', '鄂尔多斯', '101080701', '15', '晴', '西南风', 'SW ', '4级', '79', '79', '18:40', '2017-04-05', '7℃', '20℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101090101
-- ----------------------------
DROP TABLE IF EXISTS `t101090101`;
CREATE TABLE `t101090101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090101
-- ----------------------------
INSERT INTO `t101090101` VALUES ('3', '石家庄', '101090101', '15', '多云', '东南风', 'SE ', '3级', '130', '130', '18:35', '2017-04-05', '9℃', '25℃', '晴', '无持续风向转南风', '微风');

-- ----------------------------
-- Table structure for t101090201
-- ----------------------------
DROP TABLE IF EXISTS `t101090201`;
CREATE TABLE `t101090201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090201
-- ----------------------------
INSERT INTO `t101090201` VALUES ('3', '保定', '101090201', '14', '多云', '西南风', 'SW ', '2级', '82', '82', '18:45', '2017-04-05', '10℃', '21℃', '多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101090301
-- ----------------------------
DROP TABLE IF EXISTS `t101090301`;
CREATE TABLE `t101090301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090301
-- ----------------------------
INSERT INTO `t101090301` VALUES ('3', '张家口', '101090301', '17', '晴', '东南风', 'SE ', '4级', '66', '66', '18:40', '2017-04-05', '8℃', '22℃', '多云转晴', '东南风转西北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101090402
-- ----------------------------
DROP TABLE IF EXISTS `t101090402`;
CREATE TABLE `t101090402` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090402
-- ----------------------------
INSERT INTO `t101090402` VALUES ('3', '承德', '101090402', '13', '多云', '东南风', 'SE ', '4级', '97', '97', '18:35', '2017-04-05', '7℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101090501
-- ----------------------------
DROP TABLE IF EXISTS `t101090501`;
CREATE TABLE `t101090501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090501
-- ----------------------------
INSERT INTO `t101090501` VALUES ('3', '唐山', '101090501', '11', '多云', '东南风', 'SE ', '3级', '68', '68', '18:40', '2017-04-05', '7℃', '24℃', '晴', '西南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101090601
-- ----------------------------
DROP TABLE IF EXISTS `t101090601`;
CREATE TABLE `t101090601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090601
-- ----------------------------
INSERT INTO `t101090601` VALUES ('3', '廊坊', '101090601', '15', '多云', '东南风', 'SE ', '3级', '93', '93', '18:35', '2017-04-05', '8℃', '23℃', '多云', '东北风转东南风', '微风');

-- ----------------------------
-- Table structure for t101090701
-- ----------------------------
DROP TABLE IF EXISTS `t101090701`;
CREATE TABLE `t101090701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090701
-- ----------------------------
INSERT INTO `t101090701` VALUES ('3', '沧州', '101090701', '14', '晴', '东南风', 'SE ', '4级', '75', '75', '18:40', '2017-04-05', '10℃', '24℃', '晴', '南风转东南风', '微风');

-- ----------------------------
-- Table structure for t101090801
-- ----------------------------
DROP TABLE IF EXISTS `t101090801`;
CREATE TABLE `t101090801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090801
-- ----------------------------
INSERT INTO `t101090801` VALUES ('3', '衡水', '101090801', '16', '多云', '西南风', 'SW ', '2级', '74', '74', '18:40', '2017-04-05', '10℃', '24℃', '晴', '东风转南风', '微风');

-- ----------------------------
-- Table structure for t101090901
-- ----------------------------
DROP TABLE IF EXISTS `t101090901`;
CREATE TABLE `t101090901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101090901
-- ----------------------------
INSERT INTO `t101090901` VALUES ('3', '邢台', '101090901', '14', '多云', '东南风', 'SE ', '2级', '79', '79', '18:45', '2017-04-05', '9℃', '23℃', '晴', '南风', '微风');

-- ----------------------------
-- Table structure for t101091001
-- ----------------------------
DROP TABLE IF EXISTS `t101091001`;
CREATE TABLE `t101091001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101091001
-- ----------------------------
INSERT INTO `t101091001` VALUES ('3', '邯郸', '101091001', '16', '多云', '东北风', 'NE ', '1级', '115', '115', '18:40', '2017-04-05', '10℃', '24℃', '多云转晴', '南风', '微风');

-- ----------------------------
-- Table structure for t101091101
-- ----------------------------
DROP TABLE IF EXISTS `t101091101`;
CREATE TABLE `t101091101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101091101
-- ----------------------------
INSERT INTO `t101091101` VALUES ('3', '秦皇岛', '101091101', '8', '多云', '东风', 'E ', '2级', '34', '34', '18:40', '2017-04-05', '5℃', '18℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101100101
-- ----------------------------
DROP TABLE IF EXISTS `t101100101`;
CREATE TABLE `t101100101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100101
-- ----------------------------
INSERT INTO `t101100101` VALUES ('3', '太原', '101100101', '17', '多云', '东南风', 'SE ', '3级', '69', '69', '17:00', '2017-04-05', '6℃', '24℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101100201
-- ----------------------------
DROP TABLE IF EXISTS `t101100201`;
CREATE TABLE `t101100201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100201
-- ----------------------------
INSERT INTO `t101100201` VALUES ('3', '大同', '101100201', '16', '多云', '南风', 'S ', '3级', '54', '54', '18:45', '2017-04-05', '3℃', '21℃', '晴', '西北风转南风', '3-4级');

-- ----------------------------
-- Table structure for t101100301
-- ----------------------------
DROP TABLE IF EXISTS `t101100301`;
CREATE TABLE `t101100301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100301
-- ----------------------------
INSERT INTO `t101100301` VALUES ('3', '阳泉', '101100301', '14', '多云', '东风', 'E ', '3级', '65', '65', '18:40', '2017-04-05', '8℃', '24℃', '晴转多云', '东风', '微风');

-- ----------------------------
-- Table structure for t101100401
-- ----------------------------
DROP TABLE IF EXISTS `t101100401`;
CREATE TABLE `t101100401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100401
-- ----------------------------
INSERT INTO `t101100401` VALUES ('3', '晋中', '101100401', '18', '晴', '东南风', 'SE ', '2级', '64', '64', '17:00', '2017-04-05', '6℃', '23℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101100501
-- ----------------------------
DROP TABLE IF EXISTS `t101100501`;
CREATE TABLE `t101100501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100501
-- ----------------------------
INSERT INTO `t101100501` VALUES ('3', '长治', '101100501', '13', '多云', '南风', 'S ', '5级', '80', '80', '18:35', '2017-04-05', '7℃', '18℃', '晴转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101100601
-- ----------------------------
DROP TABLE IF EXISTS `t101100601`;
CREATE TABLE `t101100601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100601
-- ----------------------------
INSERT INTO `t101100601` VALUES ('3', '晋城', '101100601', '12', '阴', '南风', 'S ', '3级', '123', '123', '18:45', '2017-04-05', '8℃', '21℃', '多云转晴', '东南风', '微风');

-- ----------------------------
-- Table structure for t101100701
-- ----------------------------
DROP TABLE IF EXISTS `t101100701`;
CREATE TABLE `t101100701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100701
-- ----------------------------
INSERT INTO `t101100701` VALUES ('3', '临汾', '101100701', '20', '晴', '西风', 'W ', '2级', '79', '79', '18:45', '2017-04-05', '9℃', '25℃', '晴', '北风', '微风');

-- ----------------------------
-- Table structure for t101100801
-- ----------------------------
DROP TABLE IF EXISTS `t101100801`;
CREATE TABLE `t101100801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100801
-- ----------------------------
INSERT INTO `t101100801` VALUES ('3', '运城', '101100801', '18', '晴', '东南风', 'SE ', '5级', '73', '73', '18:45', '2017-04-05', '10℃', '26℃', '晴', '北风', '微风');

-- ----------------------------
-- Table structure for t101100901
-- ----------------------------
DROP TABLE IF EXISTS `t101100901`;
CREATE TABLE `t101100901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101100901
-- ----------------------------
INSERT INTO `t101100901` VALUES ('3', '朔州', '101100901', '17', '晴', '东风', 'E ', '3级', '60', '60', '18:35', '2017-04-05', '3℃', '22℃', '晴转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101101001
-- ----------------------------
DROP TABLE IF EXISTS `t101101001`;
CREATE TABLE `t101101001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101101001
-- ----------------------------
INSERT INTO `t101101001` VALUES ('3', '忻州', '101101001', '17', '晴', '东南风', 'SE ', '3级', '78', '78', '18:00', '2017-04-05', '6℃', '23℃', '晴转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101101100
-- ----------------------------
DROP TABLE IF EXISTS `t101101100`;
CREATE TABLE `t101101100` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101101100
-- ----------------------------
INSERT INTO `t101101100` VALUES ('3', '吕梁', '101101100', '17', '晴', '西南风', 'SW ', '3级', '50', '50', '18:45', '2017-04-05', '8℃', '23℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110101
-- ----------------------------
DROP TABLE IF EXISTS `t101110101`;
CREATE TABLE `t101110101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110101
-- ----------------------------
INSERT INTO `t101110101` VALUES ('3', '西安', '101110101', '18', '多云', '西北风', 'NW ', '2级', '92', '92', '18:45', '2017-04-05', '12℃', '23℃', '多云转晴', '东北风', '微风');

-- ----------------------------
-- Table structure for t101110200
-- ----------------------------
DROP TABLE IF EXISTS `t101110200`;
CREATE TABLE `t101110200` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110200
-- ----------------------------
INSERT INTO `t101110200` VALUES ('3', '咸阳', '101110200', '18', '多云', '东北风', 'NE ', '2级', '130', '130', '18:35', '2017-04-05', '10℃', '21℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110300
-- ----------------------------
DROP TABLE IF EXISTS `t101110300`;
CREATE TABLE `t101110300` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110300
-- ----------------------------
INSERT INTO `t101110300` VALUES ('3', '延安', '101110300', '15', '多云', '东风', 'E ', '3级', '41', '41', '18:40', '2017-04-05', '7℃', '22℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110401
-- ----------------------------
DROP TABLE IF EXISTS `t101110401`;
CREATE TABLE `t101110401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110401
-- ----------------------------
INSERT INTO `t101110401` VALUES ('3', '榆林', '101110401', '14', '晴', '东南风', 'SE ', '4级', '41', '41', '18:45', '2017-04-05', '7℃', '21℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110501
-- ----------------------------
DROP TABLE IF EXISTS `t101110501`;
CREATE TABLE `t101110501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110501
-- ----------------------------
INSERT INTO `t101110501` VALUES ('3', '渭南', '101110501', '17', '多云', '东风', 'E ', '2级', '85', '85', '18:45', '2017-04-05', '10℃', '22℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110601
-- ----------------------------
DROP TABLE IF EXISTS `t101110601`;
CREATE TABLE `t101110601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110601
-- ----------------------------
INSERT INTO `t101110601` VALUES ('3', '商洛', '101110601', '13', '雨', '东南风', 'SE ', '5级', '42', '42', '18:45', '2017-04-05', '10℃', '21℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110701
-- ----------------------------
DROP TABLE IF EXISTS `t101110701`;
CREATE TABLE `t101110701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110701
-- ----------------------------
INSERT INTO `t101110701` VALUES ('3', '安康', '101110701', '17', '多云', '东北风', 'NE ', '2级', '54', '54', '18:35', '2017-04-05', '12℃', '24℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110801
-- ----------------------------
DROP TABLE IF EXISTS `t101110801`;
CREATE TABLE `t101110801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110801
-- ----------------------------
INSERT INTO `t101110801` VALUES ('3', '汉中', '101110801', '21', '多云', '东风', 'E ', '2级', '45', '45', '18:35', '2017-04-05', '12℃', '23℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101110901
-- ----------------------------
DROP TABLE IF EXISTS `t101110901`;
CREATE TABLE `t101110901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101110901
-- ----------------------------
INSERT INTO `t101110901` VALUES ('3', '宝鸡', '101110901', '16', '阴', '西南风', 'SW ', '2级', '118', '118', '18:40', '2017-04-05', '11℃', '22℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101111001
-- ----------------------------
DROP TABLE IF EXISTS `t101111001`;
CREATE TABLE `t101111001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101111001
-- ----------------------------
INSERT INTO `t101111001` VALUES ('3', '铜川', '101111001', '17', '多云', '西南风', 'SW ', '2级', '84', '84', '18:40', '2017-04-05', '10℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101120101
-- ----------------------------
DROP TABLE IF EXISTS `t101120101`;
CREATE TABLE `t101120101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120101
-- ----------------------------
INSERT INTO `t101120101` VALUES ('3', '济南', '101120101', '13', '阴', '东北风', 'NE ', '2级', '92', '92', '18:35', '2017-04-05', '10℃', '24℃', '多云转晴', '无持续风向转南风', '微风');

-- ----------------------------
-- Table structure for t101120201
-- ----------------------------
DROP TABLE IF EXISTS `t101120201`;
CREATE TABLE `t101120201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120201
-- ----------------------------
INSERT INTO `t101120201` VALUES ('3', '青岛', '101120201', '13', '阴', '西北风', 'NW ', '4级', '46', '46', '18:35', '2017-04-05', '9℃', '15℃', '多云转晴', '东北风转东南风', '3-4级');

-- ----------------------------
-- Table structure for t101120301
-- ----------------------------
DROP TABLE IF EXISTS `t101120301`;
CREATE TABLE `t101120301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120301
-- ----------------------------
INSERT INTO `t101120301` VALUES ('3', '淄博', '101120301', '13', '阴', '东北风', 'NE ', '2级', '97', '97', '18:35', '2017-04-05', '7℃', '23℃', '多云', '北风转南风', '微风');

-- ----------------------------
-- Table structure for t101120401
-- ----------------------------
DROP TABLE IF EXISTS `t101120401`;
CREATE TABLE `t101120401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120401
-- ----------------------------
INSERT INTO `t101120401` VALUES ('3', '德州', '101120401', '15', '阴', '东风', 'E ', '2级', '78', '78', '18:35', '2017-04-05', '9℃', '24℃', '晴转多云', '北风转南风', '微风');

-- ----------------------------
-- Table structure for t101120501
-- ----------------------------
DROP TABLE IF EXISTS `t101120501`;
CREATE TABLE `t101120501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120501
-- ----------------------------
INSERT INTO `t101120501` VALUES ('3', '烟台', '101120501', '8', '晴', '东北风', 'NE ', '3级', '45', '45', '18:45', '2017-04-05', '6℃', '19℃', '阴转多云', '北风转南风', '3-4级');

-- ----------------------------
-- Table structure for t101120601
-- ----------------------------
DROP TABLE IF EXISTS `t101120601`;
CREATE TABLE `t101120601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120601
-- ----------------------------
INSERT INTO `t101120601` VALUES ('3', '潍坊', '101120601', '12', '阴', '东北风', 'NE ', '3级', '102', '102', '18:45', '2017-04-05', '6℃', '23℃', '阴转多云', '北风转南风', '3-4级');

-- ----------------------------
-- Table structure for t101120701
-- ----------------------------
DROP TABLE IF EXISTS `t101120701`;
CREATE TABLE `t101120701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120701
-- ----------------------------
INSERT INTO `t101120701` VALUES ('3', '济宁', '101120701', '15', '多云', '北风', 'N ', '2级', '70', '70', '18:35', '2017-04-05', '11℃', '22℃', '多云', '东南风', '微风');

-- ----------------------------
-- Table structure for t101120801
-- ----------------------------
DROP TABLE IF EXISTS `t101120801`;
CREATE TABLE `t101120801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120801
-- ----------------------------
INSERT INTO `t101120801` VALUES ('3', '泰安', '101120801', '15', '阴', '东北风', 'NE ', '3级', '66', '66', '18:45', '2017-04-05', '8℃', '22℃', '多云', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101120901
-- ----------------------------
DROP TABLE IF EXISTS `t101120901`;
CREATE TABLE `t101120901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101120901
-- ----------------------------
INSERT INTO `t101120901` VALUES ('3', '临沂', '101120901', '16', '阴', '西风', 'W ', '2级', '66', '66', '18:35', '2017-04-05', '11℃', '21℃', '多云', '北风转东风', '微风');

-- ----------------------------
-- Table structure for t101121001
-- ----------------------------
DROP TABLE IF EXISTS `t101121001`;
CREATE TABLE `t101121001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121001
-- ----------------------------
INSERT INTO `t101121001` VALUES ('3', '菏泽', '101121001', '15', '阴', '东北风', 'NE ', '2级', '80', '80', '18:45', '2017-04-05', '11℃', '22℃', '多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101121101
-- ----------------------------
DROP TABLE IF EXISTS `t101121101`;
CREATE TABLE `t101121101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121101
-- ----------------------------
INSERT INTO `t101121101` VALUES ('3', '滨州', '101121101', '13', '阴', '北风', 'N ', '2级', '102', '102', '18:45', '2017-04-05', '6℃', '24℃', '多云', '东北风转南风', '微风');

-- ----------------------------
-- Table structure for t101121201
-- ----------------------------
DROP TABLE IF EXISTS `t101121201`;
CREATE TABLE `t101121201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121201
-- ----------------------------
INSERT INTO `t101121201` VALUES ('3', '东营', '101121201', '12', '多云', '北风', 'N ', '3级', '84', '84', '18:45', '2017-04-05', '7℃', '22℃', '多云转晴', '南风转东风', '3-4级');

-- ----------------------------
-- Table structure for t101121301
-- ----------------------------
DROP TABLE IF EXISTS `t101121301`;
CREATE TABLE `t101121301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121301
-- ----------------------------
INSERT INTO `t101121301` VALUES ('3', '威海', '101121301', '9', '多云', '北风', 'N ', '4级', '29', '29', '18:45', '2017-04-05', '7℃', '16℃', '阴转多云', '北风转南风', '4-5级');

-- ----------------------------
-- Table structure for t101121401
-- ----------------------------
DROP TABLE IF EXISTS `t101121401`;
CREATE TABLE `t101121401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121401
-- ----------------------------
INSERT INTO `t101121401` VALUES ('3', '枣庄', '101121401', '15', '雨', '西风', 'W ', '3级', '79', '79', '18:35', '2017-04-05', '11℃', '21℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101121501
-- ----------------------------
DROP TABLE IF EXISTS `t101121501`;
CREATE TABLE `t101121501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121501
-- ----------------------------
INSERT INTO `t101121501` VALUES ('3', '日照', '101121501', '10', '阴', '东风', 'E ', '2级', '54', '54', '18:45', '2017-04-05', '10℃', '15℃', '多云', '东北风转东南风', '3-4级');

-- ----------------------------
-- Table structure for t101121601
-- ----------------------------
DROP TABLE IF EXISTS `t101121601`;
CREATE TABLE `t101121601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121601
-- ----------------------------
INSERT INTO `t101121601` VALUES ('3', '莱芜', '101121601', '13', '阴', '北风', 'N ', '3级', '67', '67', '18:45', '2017-04-05', '9℃', '22℃', '多云转晴', '北风转南风', '3-4级');

-- ----------------------------
-- Table structure for t101121701
-- ----------------------------
DROP TABLE IF EXISTS `t101121701`;
CREATE TABLE `t101121701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101121701
-- ----------------------------
INSERT INTO `t101121701` VALUES ('3', '聊城', '101121701', '15', '阴', '西北风', 'NW ', '1级', '89', '89', '18:35', '2017-04-05', '9℃', '23℃', '多云', '北风转南风', '微风');

-- ----------------------------
-- Table structure for t101130101
-- ----------------------------
DROP TABLE IF EXISTS `t101130101`;
CREATE TABLE `t101130101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130101
-- ----------------------------
INSERT INTO `t101130101` VALUES ('3', '乌鲁木齐', '101130101', '5', '晴', '北风', 'N ', '4级', '45', '45', '18:40', '2017-04-05', '0℃', '7℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130201
-- ----------------------------
DROP TABLE IF EXISTS `t101130201`;
CREATE TABLE `t101130201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130201
-- ----------------------------
INSERT INTO `t101130201` VALUES ('3', '克拉玛依', '101130201', '9', '多云', '西南风', 'SW ', '4级', '59', '59', '18:40', '2017-04-05', '4℃', '14℃', '多云', '无持续风向转西北风', '微风转4-5级');

-- ----------------------------
-- Table structure for t101130301
-- ----------------------------
DROP TABLE IF EXISTS `t101130301`;
CREATE TABLE `t101130301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130301
-- ----------------------------
INSERT INTO `t101130301` VALUES ('3', '石河子', '101130301', '9', '晴', '北风', 'N ', '3级', '38', '38', '18:45', '2017-04-05', '2℃', '13℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130401
-- ----------------------------
DROP TABLE IF EXISTS `t101130401`;
CREATE TABLE `t101130401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130401
-- ----------------------------
INSERT INTO `t101130401` VALUES ('3', '昌吉', '101130401', '10', '晴', '西风', 'W ', '3级', '29', '29', '18:40', '2017-04-05', '2℃', '15℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130403
-- ----------------------------
DROP TABLE IF EXISTS `t101130403`;
CREATE TABLE `t101130403` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130403
-- ----------------------------
INSERT INTO `t101130403` VALUES ('3', '米泉', '101130403', '1', '阴', '西风', 'W ', '1级', '', '', '11:50', '2017-04-05', '9℃', '1℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130404
-- ----------------------------
DROP TABLE IF EXISTS `t101130404`;
CREATE TABLE `t101130404` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130404
-- ----------------------------
INSERT INTO `t101130404` VALUES ('3', '阜康', '101130404', '10', '晴', '北风', 'N ', '2级', '', '', '18:35', '2017-04-05', '1℃', '13℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130501
-- ----------------------------
DROP TABLE IF EXISTS `t101130501`;
CREATE TABLE `t101130501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130501
-- ----------------------------
INSERT INTO `t101130501` VALUES ('3', '吐鲁番', '101130501', '18', '多云', '南风', 'S ', '2级', '408', '408', '18:45', '2017-04-05', '12℃', '24℃', '多云', '西北风转无持续风向', '3-4级转微风');

-- ----------------------------
-- Table structure for t101130601
-- ----------------------------
DROP TABLE IF EXISTS `t101130601`;
CREATE TABLE `t101130601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130601
-- ----------------------------
INSERT INTO `t101130601` VALUES ('3', '库尔勒', '101130601', '18', '阴', '北风', 'N ', '4级', '45', '45', '17:00', '2017-04-05', '10℃', '19℃', '多云', '东北风转无持续风向', '4-5级转3-4级');

-- ----------------------------
-- Table structure for t101130701
-- ----------------------------
DROP TABLE IF EXISTS `t101130701`;
CREATE TABLE `t101130701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130701
-- ----------------------------
INSERT INTO `t101130701` VALUES ('3', '阿拉尔', '101130701', '16', '阴', '东北风', 'NE ', '4级', '', '', '18:45', '2017-04-05', '11℃', '17℃', '小雨', '东风转无持续风向', '3-4级转微风');

-- ----------------------------
-- Table structure for t101130801
-- ----------------------------
DROP TABLE IF EXISTS `t101130801`;
CREATE TABLE `t101130801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130801
-- ----------------------------
INSERT INTO `t101130801` VALUES ('3', '阿克苏', '101130801', '11', '阴', '北风', 'N ', '5级', '106', '106', '18:45', '2017-04-05', '11℃', '15℃', '小雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101130901
-- ----------------------------
DROP TABLE IF EXISTS `t101130901`;
CREATE TABLE `t101130901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101130901
-- ----------------------------
INSERT INTO `t101130901` VALUES ('3', '喀什', '101130901', '9', '多云', '西北风', 'NW ', '3级', '34', '34', '18:45', '2017-04-05', '6℃', '13℃', '小雨', '西北风', '3-4级');

-- ----------------------------
-- Table structure for t101131001
-- ----------------------------
DROP TABLE IF EXISTS `t101131001`;
CREATE TABLE `t101131001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131001
-- ----------------------------
INSERT INTO `t101131001` VALUES ('3', '伊宁', '101131001', '9', '多云', '西南风', 'SW ', '3级', '34', '34', '18:45', '2017-04-05', '1℃', '7℃', '阴转小雨', '西风', '3-4级');

-- ----------------------------
-- Table structure for t101131101
-- ----------------------------
DROP TABLE IF EXISTS `t101131101`;
CREATE TABLE `t101131101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131101
-- ----------------------------
INSERT INTO `t101131101` VALUES ('3', '塔城', '101131101', '9', '多云', '西风', 'W ', '3级', '32', '32', '18:45', '2017-04-05', '1℃', '7℃', '多云转阵雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101131106
-- ----------------------------
DROP TABLE IF EXISTS `t101131106`;
CREATE TABLE `t101131106` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131106
-- ----------------------------
INSERT INTO `t101131106` VALUES ('3', '乌苏', '101131106', '8', '多云', '西风', 'W ', '3级', '', '', '18:40', '2017-04-05', '2℃', '12℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101131201
-- ----------------------------
DROP TABLE IF EXISTS `t101131201`;
CREATE TABLE `t101131201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131201
-- ----------------------------
INSERT INTO `t101131201` VALUES ('3', '哈密', '101131201', '16', '多云', '西北风', 'NW ', '3级', '81', '81', '18:40', '2017-04-05', '6℃', '19℃', '多云转晴', '东北风', '3-4级');

-- ----------------------------
-- Table structure for t101131301
-- ----------------------------
DROP TABLE IF EXISTS `t101131301`;
CREATE TABLE `t101131301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131301
-- ----------------------------
INSERT INTO `t101131301` VALUES ('3', '和田', '101131301', '17', '多云', '西北风', 'NW ', '5级', '500', '500', '18:45', '2017-04-05', '10℃', '11℃', '小雨转中雨', '北风转西风', '4-5级转3-4级');

-- ----------------------------
-- Table structure for t101131401
-- ----------------------------
DROP TABLE IF EXISTS `t101131401`;
CREATE TABLE `t101131401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131401
-- ----------------------------
INSERT INTO `t101131401` VALUES ('3', '阿勒泰', '101131401', '6', '晴', '南风', 'S ', '3级', '28', '28', '18:35', '2017-04-05', '-2℃', '10℃', '多云', '无持续风向转西风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101131501
-- ----------------------------
DROP TABLE IF EXISTS `t101131501`;
CREATE TABLE `t101131501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131501
-- ----------------------------
INSERT INTO `t101131501` VALUES ('3', '阿图什', '101131501', '10', '阴', '南风', 'S ', '2级', '40', '40', '18:40', '2017-04-05', '9℃', '15℃', '小雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101131601
-- ----------------------------
DROP TABLE IF EXISTS `t101131601`;
CREATE TABLE `t101131601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101131601
-- ----------------------------
INSERT INTO `t101131601` VALUES ('3', '博乐', '101131601', '7', '阴', '南风', 'S ', '2级', '32', '32', '18:35', '2017-04-05', '0℃', '9℃', '多云转晴', '西北风转东南风', '4-5级转3-4级');

-- ----------------------------
-- Table structure for t101140101
-- ----------------------------
DROP TABLE IF EXISTS `t101140101`;
CREATE TABLE `t101140101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140101
-- ----------------------------
INSERT INTO `t101140101` VALUES ('3', '拉萨', '101140101', '16', '多云', '西风', 'W ', '4级', '49', '49', '18:35', '2017-04-05', '2℃', '17℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101140201
-- ----------------------------
DROP TABLE IF EXISTS `t101140201`;
CREATE TABLE `t101140201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140201
-- ----------------------------
INSERT INTO `t101140201` VALUES ('3', '日喀则', '101140201', '16', '多云', '北风', 'N ', '0级', '33', '33', '17:00', '2017-04-05', '2℃', '18℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101140301
-- ----------------------------
DROP TABLE IF EXISTS `t101140301`;
CREATE TABLE `t101140301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140301
-- ----------------------------
INSERT INTO `t101140301` VALUES ('3', '山南', '101140301', '16', '晴', '南风', 'S ', '5级', '43', '43', '18:35', '2017-04-05', '-1℃', '15℃', '晴转多云', '无持续风向转南风', '微风转4-5级');

-- ----------------------------
-- Table structure for t101140401
-- ----------------------------
DROP TABLE IF EXISTS `t101140401`;
CREATE TABLE `t101140401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140401
-- ----------------------------
INSERT INTO `t101140401` VALUES ('3', '林芝', '101140401', '16', '多云', '东风', 'E ', '4级', '40', '40', '18:45', '2017-04-05', '4℃', '17℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101140501
-- ----------------------------
DROP TABLE IF EXISTS `t101140501`;
CREATE TABLE `t101140501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140501
-- ----------------------------
INSERT INTO `t101140501` VALUES ('3', '昌都', '101140501', '16', '多云', '南风', 'S ', '2级', '38', '38', '18:35', '2017-04-05', '0℃', '19℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101140601
-- ----------------------------
DROP TABLE IF EXISTS `t101140601`;
CREATE TABLE `t101140601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140601
-- ----------------------------
INSERT INTO `t101140601` VALUES ('3', '那曲', '101140601', '8', '多云', '西南风', 'SW ', '5级', '79', '79', '18:40', '2017-04-05', '-7℃', '8℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101140701
-- ----------------------------
DROP TABLE IF EXISTS `t101140701`;
CREATE TABLE `t101140701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101140701
-- ----------------------------
INSERT INTO `t101140701` VALUES ('3', '阿里', '101140701', '7', '阴', '西南风', 'SW ', '5级', '25', '25', '18:35', '2017-04-05', '-5℃', '6℃', '阵雪转小雪', '无持续风向转西南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101150101
-- ----------------------------
DROP TABLE IF EXISTS `t101150101`;
CREATE TABLE `t101150101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150101
-- ----------------------------
INSERT INTO `t101150101` VALUES ('3', '西宁', '101150101', '19', '晴', '东南风', 'SE ', '3级', '50', '50', '18:45', '2017-04-05', '0℃', '22℃', '晴', '西风', '微风');

-- ----------------------------
-- Table structure for t101150201
-- ----------------------------
DROP TABLE IF EXISTS `t101150201`;
CREATE TABLE `t101150201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150201
-- ----------------------------
INSERT INTO `t101150201` VALUES ('3', '平安', '101150201', '21', '晴', '东风', 'E ', '3级', '42', '42', '18:45', '2017-04-05', '6℃', '24℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150301
-- ----------------------------
DROP TABLE IF EXISTS `t101150301`;
CREATE TABLE `t101150301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150301
-- ----------------------------
INSERT INTO `t101150301` VALUES ('3', '同仁', '101150301', '19', '晴', '西北风', 'NW ', '3级', '40', '40', '18:35', '2017-04-05', '3℃', '22℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150401
-- ----------------------------
DROP TABLE IF EXISTS `t101150401`;
CREATE TABLE `t101150401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150401
-- ----------------------------
INSERT INTO `t101150401` VALUES ('3', '共和', '101150401', '16', '晴', '东南风', 'SE ', '4级', '25', '25', '18:35', '2017-04-05', '-1℃', '18℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150501
-- ----------------------------
DROP TABLE IF EXISTS `t101150501`;
CREATE TABLE `t101150501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150501
-- ----------------------------
INSERT INTO `t101150501` VALUES ('3', '玛沁', '101150501', '9', '多云', '西南风', 'SW ', '3级', '43', '43', '18:35', '2017-04-05', '-7℃', '13℃', '多云', '西风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101150601
-- ----------------------------
DROP TABLE IF EXISTS `t101150601`;
CREATE TABLE `t101150601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150601
-- ----------------------------
INSERT INTO `t101150601` VALUES ('3', '玉树', '101150601', '12', '晴', '西风', 'W ', '4级', '39', '39', '18:40', '2017-04-05', '-4℃', '16℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150701
-- ----------------------------
DROP TABLE IF EXISTS `t101150701`;
CREATE TABLE `t101150701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150701
-- ----------------------------
INSERT INTO `t101150701` VALUES ('3', '德令哈', '101150701', '17', '多云', '北风', 'N ', '3级', '38', '38', '18:35', '2017-04-05', '5℃', '19℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150709
-- ----------------------------
DROP TABLE IF EXISTS `t101150709`;
CREATE TABLE `t101150709` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150709
-- ----------------------------
INSERT INTO `t101150709` VALUES ('3', '乌兰', '101150709', '15', '多云', '东北风', 'NE ', '2级', '', '', '18:45', '2017-04-05', '2℃', '20℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101150801
-- ----------------------------
DROP TABLE IF EXISTS `t101150801`;
CREATE TABLE `t101150801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101150801
-- ----------------------------
INSERT INTO `t101150801` VALUES ('3', '海晏', '101150801', '13', '晴', '东南风', 'SE ', '4级', '42', '42', '18:40', '2017-04-05', '-5℃', '16℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101160101
-- ----------------------------
DROP TABLE IF EXISTS `t101160101`;
CREATE TABLE `t101160101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160101
-- ----------------------------
INSERT INTO `t101160101` VALUES ('3', '兰州', '101160101', '25', '晴', '东北风', 'NE ', '3级', '55', '55', '18:35', '2017-04-05', '7℃', '26℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101160201
-- ----------------------------
DROP TABLE IF EXISTS `t101160201`;
CREATE TABLE `t101160201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160201
-- ----------------------------
INSERT INTO `t101160201` VALUES ('3', '定西', '101160201', '19', '晴', '东南风', 'SE ', '5级', '42', '42', '18:35', '2017-04-05', '5℃', '22℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101160301
-- ----------------------------
DROP TABLE IF EXISTS `t101160301`;
CREATE TABLE `t101160301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160301
-- ----------------------------
INSERT INTO `t101160301` VALUES ('3', '平凉', '101160301', '11', '多云', '南风', 'S ', '5级', '58', '58', '18:45', '2017-04-05', '7℃', '18℃', '多云转晴', '东南风', '微风');

-- ----------------------------
-- Table structure for t101160401
-- ----------------------------
DROP TABLE IF EXISTS `t101160401`;
CREATE TABLE `t101160401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160401
-- ----------------------------
INSERT INTO `t101160401` VALUES ('3', '庆阳', '101160401', '14', '多云', '南风', 'S ', '3级', '58', '58', '18:35', '2017-04-05', '8℃', '18℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101160501
-- ----------------------------
DROP TABLE IF EXISTS `t101160501`;
CREATE TABLE `t101160501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160501
-- ----------------------------
INSERT INTO `t101160501` VALUES ('3', '武威', '101160501', '16', '晴', '西北风', 'NW ', '3级', '103', '103', '18:35', '2017-04-05', '6℃', '21℃', '晴转多云', '西北风', '4-5级');

-- ----------------------------
-- Table structure for t101160601
-- ----------------------------
DROP TABLE IF EXISTS `t101160601`;
CREATE TABLE `t101160601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160601
-- ----------------------------
INSERT INTO `t101160601` VALUES ('3', '金昌', '101160601', '15', '晴', '北风', 'N ', '5级', '78', '78', '18:45', '2017-04-05', '5℃', '20℃', '多云转晴', '西北风', '4-5级');

-- ----------------------------
-- Table structure for t101160701
-- ----------------------------
DROP TABLE IF EXISTS `t101160701`;
CREATE TABLE `t101160701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160701
-- ----------------------------
INSERT INTO `t101160701` VALUES ('3', '张掖', '101160701', '15', '晴', '北风', 'N ', '5级', '79', '79', '18:40', '2017-04-05', '4℃', '19℃', '晴', '无持续风向转西北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101160801
-- ----------------------------
DROP TABLE IF EXISTS `t101160801`;
CREATE TABLE `t101160801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160801
-- ----------------------------
INSERT INTO `t101160801` VALUES ('3', '酒泉', '101160801', '13', '多云', '东风', 'E ', '4级', '90', '90', '18:45', '2017-04-05', '3℃', '16℃', '多云', '东风', '3-4级转微风');

-- ----------------------------
-- Table structure for t101160901
-- ----------------------------
DROP TABLE IF EXISTS `t101160901`;
CREATE TABLE `t101160901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101160901
-- ----------------------------
INSERT INTO `t101160901` VALUES ('3', '天水', '101160901', '21', '多云', '南风', 'S ', '4级', '34', '34', '18:45', '2017-04-05', '10℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101161101
-- ----------------------------
DROP TABLE IF EXISTS `t101161101`;
CREATE TABLE `t101161101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101161101
-- ----------------------------
INSERT INTO `t101161101` VALUES ('3', '临夏', '101161101', '21', '晴', '东北风', 'NE ', '3级', '53', '53', '18:45', '2017-04-05', '4℃', '24℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101161301
-- ----------------------------
DROP TABLE IF EXISTS `t101161301`;
CREATE TABLE `t101161301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101161301
-- ----------------------------
INSERT INTO `t101161301` VALUES ('3', '白银', '101161301', '22', '晴', '东北风', 'NE ', '3级', '53', '53', '18:40', '2017-04-05', '8℃', '23℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101170101
-- ----------------------------
DROP TABLE IF EXISTS `t101170101`;
CREATE TABLE `t101170101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101170101
-- ----------------------------
INSERT INTO `t101170101` VALUES ('3', '银川', '101170101', '20', '晴', '北风', 'N ', '3级', '87', '87', '18:35', '2017-04-05', '11℃', '25℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101170201
-- ----------------------------
DROP TABLE IF EXISTS `t101170201`;
CREATE TABLE `t101170201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101170201
-- ----------------------------
INSERT INTO `t101170201` VALUES ('3', '石嘴山', '101170201', '21', '晴', '西南风', 'SW ', '2级', '85', '85', '18:35', '2017-04-05', '8℃', '25℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101170301
-- ----------------------------
DROP TABLE IF EXISTS `t101170301`;
CREATE TABLE `t101170301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101170301
-- ----------------------------
INSERT INTO `t101170301` VALUES ('3', '吴忠', '101170301', '22', '晴', '东风', 'E ', '3级', '66', '66', '18:40', '2017-04-05', '11℃', '27℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101170401
-- ----------------------------
DROP TABLE IF EXISTS `t101170401`;
CREATE TABLE `t101170401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101170401
-- ----------------------------
INSERT INTO `t101170401` VALUES ('3', '固原', '101170401', '13', '多云', '东南风', 'SE ', '4级', '65', '65', '18:40', '2017-04-05', '7℃', '21℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101170501
-- ----------------------------
DROP TABLE IF EXISTS `t101170501`;
CREATE TABLE `t101170501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101170501
-- ----------------------------
INSERT INTO `t101170501` VALUES ('3', '中卫', '101170501', '24', '晴', '东风', 'E ', '3级', '88', '88', '18:40', '2017-04-05', '8℃', '28℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101180101
-- ----------------------------
DROP TABLE IF EXISTS `t101180101`;
CREATE TABLE `t101180101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180101
-- ----------------------------
INSERT INTO `t101180101` VALUES ('3', '郑州', '101180101', '16', '阴', '东风', 'E ', '3级', '82', '82', '18:40', '2017-04-05', '11℃', '23℃', '阴转多云', '东风', '微风');

-- ----------------------------
-- Table structure for t101180201
-- ----------------------------
DROP TABLE IF EXISTS `t101180201`;
CREATE TABLE `t101180201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180201
-- ----------------------------
INSERT INTO `t101180201` VALUES ('3', '安阳', '101180201', '15', '多云', '南风', 'S ', '3级', '155', '155', '18:45', '2017-04-05', '11℃', '23℃', '晴', '南风', '微风');

-- ----------------------------
-- Table structure for t101180301
-- ----------------------------
DROP TABLE IF EXISTS `t101180301`;
CREATE TABLE `t101180301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180301
-- ----------------------------
INSERT INTO `t101180301` VALUES ('3', '新乡', '101180301', '16', '多云', '东风', 'E ', '2级', '92', '92', '18:45', '2017-04-05', '11℃', '23℃', '晴', '东南风转东北风', '微风');

-- ----------------------------
-- Table structure for t101180401
-- ----------------------------
DROP TABLE IF EXISTS `t101180401`;
CREATE TABLE `t101180401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180401
-- ----------------------------
INSERT INTO `t101180401` VALUES ('3', '许昌', '101180401', '14', '多云', '南风', 'S ', '2级', '120', '120', '18:35', '2017-04-05', '10℃', '21℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101180501
-- ----------------------------
DROP TABLE IF EXISTS `t101180501`;
CREATE TABLE `t101180501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180501
-- ----------------------------
INSERT INTO `t101180501` VALUES ('3', '平顶山', '101180501', '16', '多云', '南风', 'S ', '3级', '150', '150', '18:40', '2017-04-05', '14℃', '22℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101180601
-- ----------------------------
DROP TABLE IF EXISTS `t101180601`;
CREATE TABLE `t101180601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180601
-- ----------------------------
INSERT INTO `t101180601` VALUES ('3', '信阳', '101180601', '15', '阴', '东北风', 'NE ', '4级', '87', '87', '18:45', '2017-04-05', '14℃', '22℃', '中雨', '东风', '微风');

-- ----------------------------
-- Table structure for t101180701
-- ----------------------------
DROP TABLE IF EXISTS `t101180701`;
CREATE TABLE `t101180701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180701
-- ----------------------------
INSERT INTO `t101180701` VALUES ('3', '南阳', '101180701', '16', '多云', '东风', 'E ', '3级', '103', '103', '18:40', '2017-04-05', '12℃', '22℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101180801
-- ----------------------------
DROP TABLE IF EXISTS `t101180801`;
CREATE TABLE `t101180801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180801
-- ----------------------------
INSERT INTO `t101180801` VALUES ('3', '开封', '101180801', '15', '多云', '东风', 'E ', '3级', '130', '130', '18:45', '2017-04-05', '12℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101180901
-- ----------------------------
DROP TABLE IF EXISTS `t101180901`;
CREATE TABLE `t101180901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101180901
-- ----------------------------
INSERT INTO `t101180901` VALUES ('3', '洛阳', '101180901', '14', '多云', '东风', 'E ', '3级', '162', '162', '18:45', '2017-04-05', '12℃', '22℃', '多云', '无持续风向转东南风', '微风');

-- ----------------------------
-- Table structure for t101181001
-- ----------------------------
DROP TABLE IF EXISTS `t101181001`;
CREATE TABLE `t101181001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181001
-- ----------------------------
INSERT INTO `t101181001` VALUES ('3', '商丘', '101181001', '14', '多云', '南风', 'S ', '2级', '118', '118', '18:35', '2017-04-05', '9℃', '21℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101181101
-- ----------------------------
DROP TABLE IF EXISTS `t101181101`;
CREATE TABLE `t101181101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181101
-- ----------------------------
INSERT INTO `t101181101` VALUES ('3', '焦作', '101181101', '16', '雨', '东北风', 'NE ', '3级', '132', '132', '18:35', '2017-04-05', '13℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101181201
-- ----------------------------
DROP TABLE IF EXISTS `t101181201`;
CREATE TABLE `t101181201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181201
-- ----------------------------
INSERT INTO `t101181201` VALUES ('3', '鹤壁', '101181201', '14', '多云', '南风', 'S ', '2级', '112', '112', '18:40', '2017-04-05', '9℃', '23℃', '晴转多云', '无持续风向转南风', '微风');

-- ----------------------------
-- Table structure for t101181301
-- ----------------------------
DROP TABLE IF EXISTS `t101181301`;
CREATE TABLE `t101181301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181301
-- ----------------------------
INSERT INTO `t101181301` VALUES ('3', '濮阳', '101181301', '15', '多云', '南风', 'S ', '2级', '105', '105', '18:40', '2017-04-05', '9℃', '22℃', '多云', '无持续风向转南风', '微风');

-- ----------------------------
-- Table structure for t101181401
-- ----------------------------
DROP TABLE IF EXISTS `t101181401`;
CREATE TABLE `t101181401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181401
-- ----------------------------
INSERT INTO `t101181401` VALUES ('3', '周口', '101181401', '15', '阴', '东风', 'E ', '2级', '112', '112', '18:40', '2017-04-05', '12℃', '20℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101181501
-- ----------------------------
DROP TABLE IF EXISTS `t101181501`;
CREATE TABLE `t101181501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181501
-- ----------------------------
INSERT INTO `t101181501` VALUES ('3', '漯河', '101181501', '15', '多云', '东南风', 'SE ', '2级', '104', '104', '18:40', '2017-04-05', '10℃', '21℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101181601
-- ----------------------------
DROP TABLE IF EXISTS `t101181601`;
CREATE TABLE `t101181601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181601
-- ----------------------------
INSERT INTO `t101181601` VALUES ('3', '驻马店', '101181601', '14', '多云', '东南风', 'SE ', '2级', '78', '78', '18:35', '2017-04-05', '10℃', '20℃', '小雨', '东风', '微风');

-- ----------------------------
-- Table structure for t101181801
-- ----------------------------
DROP TABLE IF EXISTS `t101181801`;
CREATE TABLE `t101181801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101181801
-- ----------------------------
INSERT INTO `t101181801` VALUES ('3', '济源', '101181801', '15', '多云', '东风', 'E ', '2级', '', '', '18:35', '2017-04-05', '11℃', '23℃', '多云转晴', '东北风转东风', '微风');

-- ----------------------------
-- Table structure for t101190101
-- ----------------------------
DROP TABLE IF EXISTS `t101190101`;
CREATE TABLE `t101190101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190101
-- ----------------------------
INSERT INTO `t101190101` VALUES ('3', '南京', '101190101', '18', '阴', '西风', 'W ', '2级', '68', '68', '18:45', '2017-04-05', '16℃', '18℃', '小到中雨转大雨', '西南风转无持续风向', '微风转3-4级');

-- ----------------------------
-- Table structure for t101190201
-- ----------------------------
DROP TABLE IF EXISTS `t101190201`;
CREATE TABLE `t101190201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190201
-- ----------------------------
INSERT INTO `t101190201` VALUES ('3', '无锡', '101190201', '20', '多云', '西风', 'W ', '3级', '82', '82', '18:45', '2017-04-05', '16℃', '20℃', '小雨转大雨', '东风', '3-4级');

-- ----------------------------
-- Table structure for t101190301
-- ----------------------------
DROP TABLE IF EXISTS `t101190301`;
CREATE TABLE `t101190301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190301
-- ----------------------------
INSERT INTO `t101190301` VALUES ('3', '镇江', '101190301', '18', '阴', '西北风', 'NW ', '3级', '98', '98', '18:35', '2017-04-05', '15℃', '17℃', '中雨转大雨', '西南风转东北风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101190401
-- ----------------------------
DROP TABLE IF EXISTS `t101190401`;
CREATE TABLE `t101190401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190401
-- ----------------------------
INSERT INTO `t101190401` VALUES ('3', '苏州', '101190401', '19', '雨', '西风', 'W ', '2级', '82', '82', '18:35', '2017-04-05', '17℃', '21℃', '阵雨转中雨', '南风转东风', '3-4级');

-- ----------------------------
-- Table structure for t101190501
-- ----------------------------
DROP TABLE IF EXISTS `t101190501`;
CREATE TABLE `t101190501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190501
-- ----------------------------
INSERT INTO `t101190501` VALUES ('3', '南通', '101190501', '20', '多云', '西北风', 'NW ', '2级', '99', '99', '18:45', '2017-04-05', '16℃', '18℃', '小雨转大雨', '东风', '4-5级转3-4级');

-- ----------------------------
-- Table structure for t101190601
-- ----------------------------
DROP TABLE IF EXISTS `t101190601`;
CREATE TABLE `t101190601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190601
-- ----------------------------
INSERT INTO `t101190601` VALUES ('3', '扬州', '101190601', '17', '阴', '北风', 'N ', '3级', '98', '98', '18:45', '2017-04-05', '15℃', '18℃', '小雨转中雨', '东风转东北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101190701
-- ----------------------------
DROP TABLE IF EXISTS `t101190701`;
CREATE TABLE `t101190701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190701
-- ----------------------------
INSERT INTO `t101190701` VALUES ('3', '盐城', '101190701', '17', '阴', '北风', 'N ', '2级', '145', '145', '18:45', '2017-04-05', '13℃', '18℃', '小雨', '东风', '3-4级');

-- ----------------------------
-- Table structure for t101190801
-- ----------------------------
DROP TABLE IF EXISTS `t101190801`;
CREATE TABLE `t101190801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190801
-- ----------------------------
INSERT INTO `t101190801` VALUES ('3', '徐州', '101190801', '15', '多云', '西风', 'W ', '2级', '99', '99', '18:45', '2017-04-05', '11℃', '21℃', '阴', '北风转东风', '微风');

-- ----------------------------
-- Table structure for t101190901
-- ----------------------------
DROP TABLE IF EXISTS `t101190901`;
CREATE TABLE `t101190901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101190901
-- ----------------------------
INSERT INTO `t101190901` VALUES ('3', '淮安', '101190901', '15', '阴', '西北风', 'NW ', '2级', '134', '134', '18:45', '2017-04-05', '13℃', '19℃', '阴', '东风', '3-4级');

-- ----------------------------
-- Table structure for t101191001
-- ----------------------------
DROP TABLE IF EXISTS `t101191001`;
CREATE TABLE `t101191001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101191001
-- ----------------------------
INSERT INTO `t101191001` VALUES ('3', '连云港', '101191001', '14', '阴', '西南风', 'SW ', '2级', '77', '77', '18:40', '2017-04-05', '12℃', '19℃', '阴', '西南风转东北风', '3-4级转微风');

-- ----------------------------
-- Table structure for t101191101
-- ----------------------------
DROP TABLE IF EXISTS `t101191101`;
CREATE TABLE `t101191101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101191101
-- ----------------------------
INSERT INTO `t101191101` VALUES ('3', '常州', '101191101', '19', '阴', '西北风', 'NW ', '2级', '105', '105', '18:45', '2017-04-05', '15℃', '17℃', '小到中雨转中到大雨', '东风转东北风', '3-4级');

-- ----------------------------
-- Table structure for t101191201
-- ----------------------------
DROP TABLE IF EXISTS `t101191201`;
CREATE TABLE `t101191201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101191201
-- ----------------------------
INSERT INTO `t101191201` VALUES ('3', '泰州', '101191201', '17', '阴', '西北风', 'NW ', '3级', '97', '97', '18:40', '2017-04-05', '15℃', '17℃', '小雨转中雨', '东风转东北风', '3-4级');

-- ----------------------------
-- Table structure for t101191301
-- ----------------------------
DROP TABLE IF EXISTS `t101191301`;
CREATE TABLE `t101191301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101191301
-- ----------------------------
INSERT INTO `t101191301` VALUES ('3', '宿迁', '101191301', '14', '阴', '南风', 'S ', '1级', '79', '79', '18:40', '2017-04-05', '12℃', '21℃', '阴', '东风', '微风');

-- ----------------------------
-- Table structure for t101200101
-- ----------------------------
DROP TABLE IF EXISTS `t101200101`;
CREATE TABLE `t101200101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200101
-- ----------------------------
INSERT INTO `t101200101` VALUES ('3', '武汉', '101200101', '17', '雨', '东北风', 'NE ', '3级', '120', '120', '18:40', '2017-04-05', '17℃', '19℃', '暴雨转中雨', '东风转无持续风向', '微风');

-- ----------------------------
-- Table structure for t101200201
-- ----------------------------
DROP TABLE IF EXISTS `t101200201`;
CREATE TABLE `t101200201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200201
-- ----------------------------
INSERT INTO `t101200201` VALUES ('3', '襄阳', '101200201', '16', '多云', '北风', 'N ', '3级', '92', '92', '18:35', '2017-04-05', '13℃', '20℃', '小雨转多云', '西北风转东北风', '微风');

-- ----------------------------
-- Table structure for t101200301
-- ----------------------------
DROP TABLE IF EXISTS `t101200301`;
CREATE TABLE `t101200301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200301
-- ----------------------------
INSERT INTO `t101200301` VALUES ('3', '鄂州', '101200301', '17', '雨', '东北风', 'NE ', '4级', '77', '77', '18:45', '2017-04-05', '16℃', '20℃', '大雨转中雨', '东风', '微风');

-- ----------------------------
-- Table structure for t101200401
-- ----------------------------
DROP TABLE IF EXISTS `t101200401`;
CREATE TABLE `t101200401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200401
-- ----------------------------
INSERT INTO `t101200401` VALUES ('3', '孝感', '101200401', '17', '多云', '东风', 'E ', '2级', '98', '98', '18:35', '2017-04-05', '15℃', '19℃', '暴雨转中雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101200501
-- ----------------------------
DROP TABLE IF EXISTS `t101200501`;
CREATE TABLE `t101200501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200501
-- ----------------------------
INSERT INTO `t101200501` VALUES ('3', '黄冈', '101200501', '17', '雨', '东北风', 'NE ', '3级', '113', '113', '18:40', '2017-04-05', '16℃', '19℃', '大雨转中雨', '东风转东北风', '微风');

-- ----------------------------
-- Table structure for t101200601
-- ----------------------------
DROP TABLE IF EXISTS `t101200601`;
CREATE TABLE `t101200601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200601
-- ----------------------------
INSERT INTO `t101200601` VALUES ('3', '黄石', '101200601', '18', '雨', '东南风', 'SE ', '2级', '152', '152', '18:35', '2017-04-05', '16℃', '20℃', '中雨', '东风转西风', '微风');

-- ----------------------------
-- Table structure for t101200701
-- ----------------------------
DROP TABLE IF EXISTS `t101200701`;
CREATE TABLE `t101200701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200701
-- ----------------------------
INSERT INTO `t101200701` VALUES ('3', '咸宁', '101200701', '17', '雨', '东北风', 'NE ', '3级', '99', '99', '18:40', '2017-04-05', '15℃', '19℃', '小雨转中雨', '东风转西风', '微风');

-- ----------------------------
-- Table structure for t101200801
-- ----------------------------
DROP TABLE IF EXISTS `t101200801`;
CREATE TABLE `t101200801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200801
-- ----------------------------
INSERT INTO `t101200801` VALUES ('3', '荆州', '101200801', '16', '雨', '北风', 'N ', '2级', '92', '92', '18:45', '2017-04-05', '15℃', '19℃', '中雨转小雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101200901
-- ----------------------------
DROP TABLE IF EXISTS `t101200901`;
CREATE TABLE `t101200901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101200901
-- ----------------------------
INSERT INTO `t101200901` VALUES ('3', '宜昌', '101200901', '14', '雨', '西风', 'W ', '2级', '130', '130', '18:40', '2017-04-05', '13℃', '21℃', '小雨', '西北风', '微风');

-- ----------------------------
-- Table structure for t101201001
-- ----------------------------
DROP TABLE IF EXISTS `t101201001`;
CREATE TABLE `t101201001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201001
-- ----------------------------
INSERT INTO `t101201001` VALUES ('3', '恩施', '101201001', '15', '雨', '南风', 'S ', '1级', '43', '43', '18:40', '2017-04-05', '15℃', '22℃', '小雨转阴', '西南风转北风', '微风');

-- ----------------------------
-- Table structure for t101201101
-- ----------------------------
DROP TABLE IF EXISTS `t101201101`;
CREATE TABLE `t101201101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201101
-- ----------------------------
INSERT INTO `t101201101` VALUES ('3', '十堰', '101201101', '15', '多云', '北风', 'N ', '2级', '57', '57', '18:40', '2017-04-05', '13℃', '23℃', '小雨转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101201201
-- ----------------------------
DROP TABLE IF EXISTS `t101201201`;
CREATE TABLE `t101201201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201201
-- ----------------------------
INSERT INTO `t101201201` VALUES ('3', '神农架', '101201201', '13', '多云', '西南风', 'SW ', '2级', '', '', '18:39', '2017-04-05', '11℃', '22℃', '中雨转多云', '东南风转东风', '微风');

-- ----------------------------
-- Table structure for t101201301
-- ----------------------------
DROP TABLE IF EXISTS `t101201301`;
CREATE TABLE `t101201301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201301
-- ----------------------------
INSERT INTO `t101201301` VALUES ('3', '随州', '101201301', '18', '多云', '东北风', 'NE ', '2级', '68', '68', '18:45', '2017-04-05', '14℃', '20℃', '中雨转小雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101201401
-- ----------------------------
DROP TABLE IF EXISTS `t101201401`;
CREATE TABLE `t101201401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201401
-- ----------------------------
INSERT INTO `t101201401` VALUES ('3', '荆门', '101201401', '15', '多云', '北风', 'N ', '4级', '59', '59', '18:40', '2017-04-05', '13℃', '22℃', '小雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101201501
-- ----------------------------
DROP TABLE IF EXISTS `t101201501`;
CREATE TABLE `t101201501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201501
-- ----------------------------
INSERT INTO `t101201501` VALUES ('3', '天门', '101201501', '16', '多云', '东北风', 'NE ', '2级', '', '', '18:40', '2017-04-05', '16℃', '19℃', '暴雨转小雨', '东北风', '微风');

-- ----------------------------
-- Table structure for t101201601
-- ----------------------------
DROP TABLE IF EXISTS `t101201601`;
CREATE TABLE `t101201601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201601
-- ----------------------------
INSERT INTO `t101201601` VALUES ('3', '仙桃', '101201601', '17', '雨', '东北风', 'NE ', '2级', '', '', '18:40', '2017-04-05', '14℃', '20℃', '大雨转中雨', '东北风转北风', '微风');

-- ----------------------------
-- Table structure for t101201701
-- ----------------------------
DROP TABLE IF EXISTS `t101201701`;
CREATE TABLE `t101201701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101201701
-- ----------------------------
INSERT INTO `t101201701` VALUES ('3', '潜江', '101201701', '16', '雨', '东北风', 'NE ', '3级', '', '', '18:40', '2017-04-05', '15℃', '19℃', '暴雨转小雨', '东北风', '微风');

-- ----------------------------
-- Table structure for t101210101
-- ----------------------------
DROP TABLE IF EXISTS `t101210101`;
CREATE TABLE `t101210101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210101
-- ----------------------------
INSERT INTO `t101210101` VALUES ('3', '杭州', '101210101', '22', '阴', '北风', 'N ', '4级', '75', '75', '18:35', '2017-04-05', '18℃', '27℃', '阵雨转中雨', '南风转西南风', '微风');

-- ----------------------------
-- Table structure for t101210201
-- ----------------------------
DROP TABLE IF EXISTS `t101210201`;
CREATE TABLE `t101210201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210201
-- ----------------------------
INSERT INTO `t101210201` VALUES ('3', '湖州', '101210201', '19', '多云', '西北风', 'NW ', '2级', '88', '88', '18:40', '2017-04-05', '17℃', '24℃', '小雨转中雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101210301
-- ----------------------------
DROP TABLE IF EXISTS `t101210301`;
CREATE TABLE `t101210301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210301
-- ----------------------------
INSERT INTO `t101210301` VALUES ('3', '嘉兴', '101210301', '21', '雨', '东北风', 'NE ', '2级', '87', '87', '18:35', '2017-04-05', '16℃', '26℃', '阵雨转雷阵雨', '南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101210401
-- ----------------------------
DROP TABLE IF EXISTS `t101210401`;
CREATE TABLE `t101210401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210401
-- ----------------------------
INSERT INTO `t101210401` VALUES ('3', '宁波', '101210401', '20', '多云', '东风', 'E ', '3级', '64', '64', '18:40', '2017-04-05', '19℃', '27℃', '阴转多云', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101210501
-- ----------------------------
DROP TABLE IF EXISTS `t101210501`;
CREATE TABLE `t101210501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210501
-- ----------------------------
INSERT INTO `t101210501` VALUES ('3', '越城', '101210501', '23', '多云', '东南风', 'SE ', '2级', '78', '78', '18:40', '2017-04-05', '19℃', '26℃', '阴转小雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101210601
-- ----------------------------
DROP TABLE IF EXISTS `t101210601`;
CREATE TABLE `t101210601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210601
-- ----------------------------
INSERT INTO `t101210601` VALUES ('3', '台州', '101210601', '20', '多云', '西南风', 'SW ', '4级', '62', '62', '18:40', '2017-04-05', '16℃', '26℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101210604
-- ----------------------------
DROP TABLE IF EXISTS `t101210604`;
CREATE TABLE `t101210604` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210604
-- ----------------------------
INSERT INTO `t101210604` VALUES ('3', '三门', '101210604', '19', '多云', '东北风', 'NE ', '3级', '', '', '18:40', '2017-04-05', '16℃', '27℃', '多云', '南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101210701
-- ----------------------------
DROP TABLE IF EXISTS `t101210701`;
CREATE TABLE `t101210701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210701
-- ----------------------------
INSERT INTO `t101210701` VALUES ('3', '温州', '101210701', '18', '多云', '东风', 'E ', '2级', '68', '68', '18:40', '2017-04-05', '17℃', '26℃', '多云转阴', '东北风', '微风');

-- ----------------------------
-- Table structure for t101210801
-- ----------------------------
DROP TABLE IF EXISTS `t101210801`;
CREATE TABLE `t101210801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210801
-- ----------------------------
INSERT INTO `t101210801` VALUES ('3', '丽水', '101210801', '24', '多云', '东北风', 'NE ', '2级', '84', '84', '18:45', '2017-04-05', '18℃', '30℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101210901
-- ----------------------------
DROP TABLE IF EXISTS `t101210901`;
CREATE TABLE `t101210901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101210901
-- ----------------------------
INSERT INTO `t101210901` VALUES ('3', '金华', '101210901', '23', '多云', '西风', 'W ', '2级', '71', '71', '18:45', '2017-04-05', '18℃', '26℃', '阴转阵雨', '西风', '微风');

-- ----------------------------
-- Table structure for t101211001
-- ----------------------------
DROP TABLE IF EXISTS `t101211001`;
CREATE TABLE `t101211001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101211001
-- ----------------------------
INSERT INTO `t101211001` VALUES ('3', '衢州', '101211001', '23', '多云', '西北风', 'NW ', '2级', '64', '64', '18:45', '2017-04-05', '18℃', '26℃', '多云转小雨', '西风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101211101
-- ----------------------------
DROP TABLE IF EXISTS `t101211101`;
CREATE TABLE `t101211101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101211101
-- ----------------------------
INSERT INTO `t101211101` VALUES ('3', '舟山', '101211101', '17', '阴', '东南风', 'SE ', '4级', '54', '54', '18:40', '2017-04-05', '16℃', '23℃', '阴转多云', '南风', '4-5级');

-- ----------------------------
-- Table structure for t101220101
-- ----------------------------
DROP TABLE IF EXISTS `t101220101`;
CREATE TABLE `t101220101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220101
-- ----------------------------
INSERT INTO `t101220101` VALUES ('3', '合肥', '101220101', '17', '多云', '南风', 'S ', '2级', '102', '102', '18:35', '2017-04-05', '16℃', '19℃', '中雨', '东北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101220201
-- ----------------------------
DROP TABLE IF EXISTS `t101220201`;
CREATE TABLE `t101220201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220201
-- ----------------------------
INSERT INTO `t101220201` VALUES ('3', '蚌埠', '101220201', '15', '阴', '西北风', 'NW ', '2级', '95', '95', '18:40', '2017-04-05', '14℃', '20℃', '小雨', '东风', '微风');

-- ----------------------------
-- Table structure for t101220301
-- ----------------------------
DROP TABLE IF EXISTS `t101220301`;
CREATE TABLE `t101220301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220301
-- ----------------------------
INSERT INTO `t101220301` VALUES ('3', '芜湖', '101220301', '16', '多云', '东南风', 'SE ', '1级', '114', '114', '18:40', '2017-04-05', '16℃', '20℃', '中雨转大雨', '东风转东北风', '3-4级转微风');

-- ----------------------------
-- Table structure for t101220401
-- ----------------------------
DROP TABLE IF EXISTS `t101220401`;
CREATE TABLE `t101220401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220401
-- ----------------------------
INSERT INTO `t101220401` VALUES ('3', '淮南', '101220401', '15', '阴', '北风', 'N ', '2级', '87', '87', '18:40', '2017-04-05', '13℃', '19℃', '小雨', '东风转东北风', '3-4级');

-- ----------------------------
-- Table structure for t101220501
-- ----------------------------
DROP TABLE IF EXISTS `t101220501`;
CREATE TABLE `t101220501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220501
-- ----------------------------
INSERT INTO `t101220501` VALUES ('3', '马鞍山', '101220501', '17', '多云', '东风', 'E ', '2级', '82', '82', '18:40', '2017-04-05', '14℃', '19℃', '中雨转大雨', '东风', '3-4级');

-- ----------------------------
-- Table structure for t101220601
-- ----------------------------
DROP TABLE IF EXISTS `t101220601`;
CREATE TABLE `t101220601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220601
-- ----------------------------
INSERT INTO `t101220601` VALUES ('3', '安庆', '101220601', '17', '雨', '东北风', 'NE ', '3级', '138', '138', '18:45', '2017-04-05', '16℃', '21℃', '小雨转中雨', '东北风转北风', '微风');

-- ----------------------------
-- Table structure for t101220701
-- ----------------------------
DROP TABLE IF EXISTS `t101220701`;
CREATE TABLE `t101220701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220701
-- ----------------------------
INSERT INTO `t101220701` VALUES ('3', '宿州', '101220701', '14', '阴', '西北风', 'NW ', '2级', '158', '158', '18:45', '2017-04-05', '13℃', '20℃', '阴', '东风', '微风');

-- ----------------------------
-- Table structure for t101220801
-- ----------------------------
DROP TABLE IF EXISTS `t101220801`;
CREATE TABLE `t101220801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220801
-- ----------------------------
INSERT INTO `t101220801` VALUES ('3', '阜阳', '101220801', '14', '阴', '西北风', 'NW ', '3级', '89', '89', '18:35', '2017-04-05', '13℃', '20℃', '小雨转阴', '东风', '微风');

-- ----------------------------
-- Table structure for t101220901
-- ----------------------------
DROP TABLE IF EXISTS `t101220901`;
CREATE TABLE `t101220901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101220901
-- ----------------------------
INSERT INTO `t101220901` VALUES ('3', '亳州', '101220901', '14', '阴', '东风', 'E ', '2级', '84', '84', '18:40', '2017-04-05', '11℃', '21℃', '阴', '东风', '微风');

-- ----------------------------
-- Table structure for t101221008
-- ----------------------------
DROP TABLE IF EXISTS `t101221008`;
CREATE TABLE `t101221008` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221008
-- ----------------------------
INSERT INTO `t101221008` VALUES ('3', '黄山风景区(光明顶)', '101221008', '4', '阴', '西南风', 'SW ', '4级', '', '', '11:50', '2017-04-05', '9℃', '4℃', '多云', '西南风', '3-4级转4-5级');

-- ----------------------------
-- Table structure for t101221101
-- ----------------------------
DROP TABLE IF EXISTS `t101221101`;
CREATE TABLE `t101221101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221101
-- ----------------------------
INSERT INTO `t101221101` VALUES ('3', '滁州', '101221101', '16', '阴', '北风', 'N ', '3级', '114', '114', '18:40', '2017-04-05', '15℃', '18℃', '小雨转中雨', '东北风转东风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101221201
-- ----------------------------
DROP TABLE IF EXISTS `t101221201`;
CREATE TABLE `t101221201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221201
-- ----------------------------
INSERT INTO `t101221201` VALUES ('3', '淮北', '101221201', '15', '阴', '西北风', 'NW ', '2级', '110', '110', '18:40', '2017-04-05', '12℃', '21℃', '多云转阴', '东风', '微风');

-- ----------------------------
-- Table structure for t101221301
-- ----------------------------
DROP TABLE IF EXISTS `t101221301`;
CREATE TABLE `t101221301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221301
-- ----------------------------
INSERT INTO `t101221301` VALUES ('3', '铜陵', '101221301', '17', '雨', '北风', 'N ', '2级', '120', '120', '18:35', '2017-04-05', '16℃', '21℃', '中雨', '东风转北风', '微风');

-- ----------------------------
-- Table structure for t101221401
-- ----------------------------
DROP TABLE IF EXISTS `t101221401`;
CREATE TABLE `t101221401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221401
-- ----------------------------
INSERT INTO `t101221401` VALUES ('3', '宣城', '101221401', '17', '多云', '东北风', 'NE ', '2级', '145', '145', '18:35', '2017-04-05', '16℃', '21℃', '中雨转大雨', '东风转东北风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101221501
-- ----------------------------
DROP TABLE IF EXISTS `t101221501`;
CREATE TABLE `t101221501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221501
-- ----------------------------
INSERT INTO `t101221501` VALUES ('3', '六安', '101221501', '17', '多云', '东风', 'E ', '1级', '102', '102', '18:35', '2017-04-05', '15℃', '18℃', '中雨', '东北风', '微风');

-- ----------------------------
-- Table structure for t101221701
-- ----------------------------
DROP TABLE IF EXISTS `t101221701`;
CREATE TABLE `t101221701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101221701
-- ----------------------------
INSERT INTO `t101221701` VALUES ('3', '池州', '101221701', '17', '雨', '东北风', 'NE ', '3级', '160', '160', '18:35', '2017-04-05', '16℃', '23℃', '小雨转中雨', '东风转西北风', '微风');

-- ----------------------------
-- Table structure for t101230101
-- ----------------------------
DROP TABLE IF EXISTS `t101230101`;
CREATE TABLE `t101230101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230101
-- ----------------------------
INSERT INTO `t101230101` VALUES ('3', '福州', '101230101', '22', '多云', '东南风', 'SE ', '4级', '91', '91', '18:40', '2017-04-05', '18℃', '25℃', '多云', '无持续风向转西南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101230201
-- ----------------------------
DROP TABLE IF EXISTS `t101230201`;
CREATE TABLE `t101230201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230201
-- ----------------------------
INSERT INTO `t101230201` VALUES ('3', '厦门', '101230201', '21', '多云', '南风', 'S ', '3级', '55', '55', '18:35', '2017-04-05', '18℃', '25℃', '多云转阵雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230301
-- ----------------------------
DROP TABLE IF EXISTS `t101230301`;
CREATE TABLE `t101230301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230301
-- ----------------------------
INSERT INTO `t101230301` VALUES ('3', '宁德', '101230301', '21', '多云', '东南风', 'SE ', '3级', '67', '67', '18:45', '2017-04-05', '17℃', '25℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230401
-- ----------------------------
DROP TABLE IF EXISTS `t101230401`;
CREATE TABLE `t101230401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230401
-- ----------------------------
INSERT INTO `t101230401` VALUES ('3', '莆田', '101230401', '22', '多云', '东风', 'E ', '2级', '62', '62', '18:45', '2017-04-05', '18℃', '24℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230501
-- ----------------------------
DROP TABLE IF EXISTS `t101230501`;
CREATE TABLE `t101230501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230501
-- ----------------------------
INSERT INTO `t101230501` VALUES ('3', '泉州', '101230501', '21', '多云', '西南风', 'SW ', '5级', '55', '55', '18:35', '2017-04-05', '18℃', '25℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230601
-- ----------------------------
DROP TABLE IF EXISTS `t101230601`;
CREATE TABLE `t101230601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230601
-- ----------------------------
INSERT INTO `t101230601` VALUES ('3', '漳州', '101230601', '23', '阴', '南风', 'S ', '4级', '38', '38', '18:35', '2017-04-05', '19℃', '25℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230701
-- ----------------------------
DROP TABLE IF EXISTS `t101230701`;
CREATE TABLE `t101230701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230701
-- ----------------------------
INSERT INTO `t101230701` VALUES ('3', '龙岩', '101230701', '23', '多云', '西南风', 'SW ', '3级', '44', '44', '18:40', '2017-04-05', '18℃', '24℃', '阴', '无持续风向转南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101230801
-- ----------------------------
DROP TABLE IF EXISTS `t101230801`;
CREATE TABLE `t101230801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230801
-- ----------------------------
INSERT INTO `t101230801` VALUES ('3', '三明', '101230801', '25', '多云', '东南风', 'SE ', '3级', '66', '66', '18:35', '2017-04-05', '18℃', '27℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101230901
-- ----------------------------
DROP TABLE IF EXISTS `t101230901`;
CREATE TABLE `t101230901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101230901
-- ----------------------------
INSERT INTO `t101230901` VALUES ('3', '南平', '101230901', '23', '多云', '西南风', 'SW ', '2级', '72', '72', '18:45', '2017-04-05', '18℃', '28℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240101
-- ----------------------------
DROP TABLE IF EXISTS `t101240101`;
CREATE TABLE `t101240101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240101
-- ----------------------------
INSERT INTO `t101240101` VALUES ('3', '南昌', '101240101', '25', '阴', '南风', 'S ', '2级', '69', '69', '18:40', '2017-04-05', '20℃', '26℃', '阴转中到大雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240201
-- ----------------------------
DROP TABLE IF EXISTS `t101240201`;
CREATE TABLE `t101240201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240201
-- ----------------------------
INSERT INTO `t101240201` VALUES ('3', '九江', '101240201', '20', '雨', '西北风', 'NW ', '3级', '130', '130', '18:40', '2017-04-05', '17℃', '21℃', '小雨转中雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240301
-- ----------------------------
DROP TABLE IF EXISTS `t101240301`;
CREATE TABLE `t101240301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240301
-- ----------------------------
INSERT INTO `t101240301` VALUES ('3', '上饶', '101240301', '22', '多云', '东北风', 'NE ', '3级', '83', '83', '18:35', '2017-04-05', '18℃', '27℃', '阴转阵雨', '东北风', '微风');

-- ----------------------------
-- Table structure for t101240401
-- ----------------------------
DROP TABLE IF EXISTS `t101240401`;
CREATE TABLE `t101240401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240401
-- ----------------------------
INSERT INTO `t101240401` VALUES ('3', '抚州', '101240401', '25', '多云', '东南风', 'SE ', '2级', '74', '74', '18:40', '2017-04-05', '20℃', '28℃', '多云转雷阵雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101240501
-- ----------------------------
DROP TABLE IF EXISTS `t101240501`;
CREATE TABLE `t101240501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240501
-- ----------------------------
INSERT INTO `t101240501` VALUES ('3', '宜春', '101240501', '24', '多云', '东南风', 'SE ', '2级', '77', '77', '18:35', '2017-04-05', '18℃', '25℃', '多云转中雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240601
-- ----------------------------
DROP TABLE IF EXISTS `t101240601`;
CREATE TABLE `t101240601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240601
-- ----------------------------
INSERT INTO `t101240601` VALUES ('3', '吉安', '101240601', '26', '多云', '南风', 'S ', '4级', '56', '56', '18:40', '2017-04-05', '20℃', '28℃', '多云转雷阵雨', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101240701
-- ----------------------------
DROP TABLE IF EXISTS `t101240701`;
CREATE TABLE `t101240701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240701
-- ----------------------------
INSERT INTO `t101240701` VALUES ('3', '赣州', '101240701', '25', '多云', '南风', 'S ', '3级', '54', '54', '18:40', '2017-04-05', '19℃', '28℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240801
-- ----------------------------
DROP TABLE IF EXISTS `t101240801`;
CREATE TABLE `t101240801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240801
-- ----------------------------
INSERT INTO `t101240801` VALUES ('3', '景德镇', '101240801', '21', '雨', '北风', 'N ', '2级', '92', '92', '18:45', '2017-04-05', '19℃', '25℃', '阵雨转中雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101240901
-- ----------------------------
DROP TABLE IF EXISTS `t101240901`;
CREATE TABLE `t101240901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101240901
-- ----------------------------
INSERT INTO `t101240901` VALUES ('3', '萍乡', '101240901', '24', '晴', '东南风', 'SE ', '2级', '72', '72', '18:45', '2017-04-05', '18℃', '24℃', '多云转中雨', '西南风', '微风');

-- ----------------------------
-- Table structure for t101241001
-- ----------------------------
DROP TABLE IF EXISTS `t101241001`;
CREATE TABLE `t101241001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101241001
-- ----------------------------
INSERT INTO `t101241001` VALUES ('3', '新余', '101241001', '24', '多云', '西南风', 'SW ', '2级', '63', '63', '18:35', '2017-04-05', '19℃', '25℃', '阵雨转中雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101241101
-- ----------------------------
DROP TABLE IF EXISTS `t101241101`;
CREATE TABLE `t101241101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101241101
-- ----------------------------
INSERT INTO `t101241101` VALUES ('3', '鹰潭', '101241101', '25', '多云', '东北风', 'NE ', '1级', '74', '74', '18:35', '2017-04-05', '19℃', '28℃', '多云转阵雨', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101250101
-- ----------------------------
DROP TABLE IF EXISTS `t101250101`;
CREATE TABLE `t101250101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250101
-- ----------------------------
INSERT INTO `t101250101` VALUES ('3', '长沙', '101250101', '25', '多云', '东南风', 'SE ', '2级', '68', '68', '18:45', '2017-04-05', '17℃', '22℃', '阵雨转大雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101250201
-- ----------------------------
DROP TABLE IF EXISTS `t101250201`;
CREATE TABLE `t101250201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250201
-- ----------------------------
INSERT INTO `t101250201` VALUES ('3', '湘潭', '101250201', '24', '多云', '南风', 'S ', '3级', '66', '66', '18:40', '2017-04-05', '18℃', '24℃', '多云转中雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101250301
-- ----------------------------
DROP TABLE IF EXISTS `t101250301`;
CREATE TABLE `t101250301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250301
-- ----------------------------
INSERT INTO `t101250301` VALUES ('3', '株洲', '101250301', '25', '多云', '西南风', 'SW ', '3级', '63', '63', '18:40', '2017-04-05', '19℃', '24℃', '小雨转中雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101250401
-- ----------------------------
DROP TABLE IF EXISTS `t101250401`;
CREATE TABLE `t101250401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250401
-- ----------------------------
INSERT INTO `t101250401` VALUES ('3', '衡阳', '101250401', '25', '多云', '南风', 'S ', '3级', '54', '54', '18:35', '2017-04-05', '21℃', '27℃', '多云转阵雨', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101250501
-- ----------------------------
DROP TABLE IF EXISTS `t101250501`;
CREATE TABLE `t101250501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250501
-- ----------------------------
INSERT INTO `t101250501` VALUES ('3', '郴州', '101250501', '21', '多云', '南风', 'S ', '6级', '53', '53', '18:40', '2017-04-05', '20℃', '25℃', '多云转阵雨', '南风', '5-6级');

-- ----------------------------
-- Table structure for t101250601
-- ----------------------------
DROP TABLE IF EXISTS `t101250601`;
CREATE TABLE `t101250601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250601
-- ----------------------------
INSERT INTO `t101250601` VALUES ('3', '常德', '101250601', '15', '雨', '北风', 'N ', '4级', '97', '97', '18:40', '2017-04-05', '15℃', '18℃', '中雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101250700
-- ----------------------------
DROP TABLE IF EXISTS `t101250700`;
CREATE TABLE `t101250700` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250700
-- ----------------------------
INSERT INTO `t101250700` VALUES ('3', '益阳', '101250700', '22', '', '西北风', 'NW ', '2级', '124', '124', '19:00', '2017-04-05', '17℃', '20℃', '中雨转小雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101250801
-- ----------------------------
DROP TABLE IF EXISTS `t101250801`;
CREATE TABLE `t101250801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250801
-- ----------------------------
INSERT INTO `t101250801` VALUES ('3', '娄底', '101250801', '23', '多云', '南风', 'S ', '5级', '62', '62', '18:45', '2017-04-05', '18℃', '23℃', '阵雨转小到中雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101250901
-- ----------------------------
DROP TABLE IF EXISTS `t101250901`;
CREATE TABLE `t101250901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101250901
-- ----------------------------
INSERT INTO `t101250901` VALUES ('3', '邵阳', '101250901', '22', '阴', '南风', 'S ', '3级', '57', '57', '18:45', '2017-04-05', '18℃', '25℃', '阵雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101251001
-- ----------------------------
DROP TABLE IF EXISTS `t101251001`;
CREATE TABLE `t101251001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101251001
-- ----------------------------
INSERT INTO `t101251001` VALUES ('3', '岳阳', '101251001', '18', '雨', '东北风', 'NE ', '4级', '109', '109', '18:45', '2017-04-05', '16℃', '19℃', '大雨转小雨', '北风', '微风');

-- ----------------------------
-- Table structure for t101251101
-- ----------------------------
DROP TABLE IF EXISTS `t101251101`;
CREATE TABLE `t101251101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101251101
-- ----------------------------
INSERT INTO `t101251101` VALUES ('3', '张家界', '101251101', '16', '雨', '东风', 'E ', '2级', '49', '49', '18:45', '2017-04-05', '16℃', '20℃', '大雨转小雨', '东北风', '微风');

-- ----------------------------
-- Table structure for t101251201
-- ----------------------------
DROP TABLE IF EXISTS `t101251201`;
CREATE TABLE `t101251201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101251201
-- ----------------------------
INSERT INTO `t101251201` VALUES ('3', '怀化', '101251201', '23', '多云', '南风', 'S ', '3级', '64', '64', '18:45', '2017-04-05', '18℃', '22℃', '多云转阵雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101251401
-- ----------------------------
DROP TABLE IF EXISTS `t101251401`;
CREATE TABLE `t101251401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101251401
-- ----------------------------
INSERT INTO `t101251401` VALUES ('3', '永州', '101251401', '22', '多云', '西北风', 'NW ', '2级', '67', '67', '18:45', '2017-04-05', '20℃', '26℃', '阵雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101260101
-- ----------------------------
DROP TABLE IF EXISTS `t101260101`;
CREATE TABLE `t101260101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260101
-- ----------------------------
INSERT INTO `t101260101` VALUES ('3', '贵阳', '101260101', '22', '阴', '东南风', 'SE ', '5级', '57', '57', '18:40', '2017-04-05', '15℃', '24℃', '雷阵雨转多云', '东北风转南风', '微风');

-- ----------------------------
-- Table structure for t101260201
-- ----------------------------
DROP TABLE IF EXISTS `t101260201`;
CREATE TABLE `t101260201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260201
-- ----------------------------
INSERT INTO `t101260201` VALUES ('3', '遵义', '101260201', '23', '雨', '西北风', 'NW ', '3级', '78', '78', '18:40', '2017-04-05', '16℃', '25℃', '阵雨转多云', '东北风', '微风');

-- ----------------------------
-- Table structure for t101260301
-- ----------------------------
DROP TABLE IF EXISTS `t101260301`;
CREATE TABLE `t101260301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260301
-- ----------------------------
INSERT INTO `t101260301` VALUES ('3', '安顺', '101260301', '23', '晴', '东南风', 'SE ', '4级', '38', '38', '18:40', '2017-04-05', '15℃', '24℃', '雷阵雨转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101260601
-- ----------------------------
DROP TABLE IF EXISTS `t101260601`;
CREATE TABLE `t101260601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260601
-- ----------------------------
INSERT INTO `t101260601` VALUES ('3', '铜仁', '101260601', '21', '阴', '东风', 'E ', '2级', '66', '66', '18:45', '2017-04-05', '17℃', '24℃', '雷阵雨转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101260701
-- ----------------------------
DROP TABLE IF EXISTS `t101260701`;
CREATE TABLE `t101260701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260701
-- ----------------------------
INSERT INTO `t101260701` VALUES ('3', '毕节', '101260701', '16', '雨', '东北风', 'NE ', '4级', '60', '60', '18:35', '2017-04-05', '12℃', '26℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101260801
-- ----------------------------
DROP TABLE IF EXISTS `t101260801`;
CREATE TABLE `t101260801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260801
-- ----------------------------
INSERT INTO `t101260801` VALUES ('3', '水城', '101260801', '19', '多云', '东南风', 'SE ', '2级', '65', '65', '18:40', '2017-04-05', '10℃', '25℃', '多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101260901
-- ----------------------------
DROP TABLE IF EXISTS `t101260901`;
CREATE TABLE `t101260901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101260901
-- ----------------------------
INSERT INTO `t101260901` VALUES ('3', '兴义', '101260901', '26', '多云', '西南风', 'SW ', '6级', '52', '52', '18:40', '2017-04-05', '15℃', '27℃', '多云', '东风', '微风');

-- ----------------------------
-- Table structure for t101270101
-- ----------------------------
DROP TABLE IF EXISTS `t101270101`;
CREATE TABLE `t101270101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270101
-- ----------------------------
INSERT INTO `t101270101` VALUES ('3', '成都', '101270101', '19', '多云', '东北风', 'NE ', '2级', '84', '84', '18:35', '2017-04-05', '14℃', '22℃', '阴转多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101270201
-- ----------------------------
DROP TABLE IF EXISTS `t101270201`;
CREATE TABLE `t101270201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270201
-- ----------------------------
INSERT INTO `t101270201` VALUES ('3', '攀枝花', '101270201', '26', '多云', '南风', 'S ', '4级', '33', '33', '18:40', '2017-04-05', '15℃', '30℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270301
-- ----------------------------
DROP TABLE IF EXISTS `t101270301`;
CREATE TABLE `t101270301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270301
-- ----------------------------
INSERT INTO `t101270301` VALUES ('3', '自贡', '101270301', '22', '多云', '东北风', 'NE ', '3级', '60', '60', '18:40', '2017-04-05', '15℃', '26℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270401
-- ----------------------------
DROP TABLE IF EXISTS `t101270401`;
CREATE TABLE `t101270401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270401
-- ----------------------------
INSERT INTO `t101270401` VALUES ('3', '绵阳', '101270401', '20', '多云', '西风', 'W ', '2级', '57', '57', '18:35', '2017-04-05', '14℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270501
-- ----------------------------
DROP TABLE IF EXISTS `t101270501`;
CREATE TABLE `t101270501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270501
-- ----------------------------
INSERT INTO `t101270501` VALUES ('3', '南充', '101270501', '15', '多云', '东北风', 'NE ', '3级', '52', '52', '18:35', '2017-04-05', '13℃', '24℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270601
-- ----------------------------
DROP TABLE IF EXISTS `t101270601`;
CREATE TABLE `t101270601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270601
-- ----------------------------
INSERT INTO `t101270601` VALUES ('3', '达州', '101270601', '16', '雨', '北风', 'N ', '1级', '53', '53', '18:35', '2017-04-05', '13℃', '24℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270701
-- ----------------------------
DROP TABLE IF EXISTS `t101270701`;
CREATE TABLE `t101270701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270701
-- ----------------------------
INSERT INTO `t101270701` VALUES ('3', '遂宁', '101270701', '19', '多云', '东北风', 'NE ', '2级', '42', '42', '18:45', '2017-04-05', '13℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270801
-- ----------------------------
DROP TABLE IF EXISTS `t101270801`;
CREATE TABLE `t101270801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270801
-- ----------------------------
INSERT INTO `t101270801` VALUES ('3', '广安', '101270801', '15', '多云', '北风', 'N ', '2级', '39', '39', '18:00', '2017-04-05', '14℃', '25℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101270901
-- ----------------------------
DROP TABLE IF EXISTS `t101270901`;
CREATE TABLE `t101270901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101270901
-- ----------------------------
INSERT INTO `t101270901` VALUES ('3', '巴中', '101270901', '18', '多云', '南风', 'S ', '2级', '42', '42', '18:35', '2017-04-05', '13℃', '24℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271001
-- ----------------------------
DROP TABLE IF EXISTS `t101271001`;
CREATE TABLE `t101271001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271001
-- ----------------------------
INSERT INTO `t101271001` VALUES ('3', '泸州', '101271001', '20', '阴', '东风', 'E ', '3级', '64', '64', '18:35', '2017-04-05', '15℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271101
-- ----------------------------
DROP TABLE IF EXISTS `t101271101`;
CREATE TABLE `t101271101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271101
-- ----------------------------
INSERT INTO `t101271101` VALUES ('3', '宜宾', '101271101', '22', '多云', '东北风', 'NE ', '3级', '73', '73', '18:45', '2017-04-05', '16℃', '29℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271201
-- ----------------------------
DROP TABLE IF EXISTS `t101271201`;
CREATE TABLE `t101271201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271201
-- ----------------------------
INSERT INTO `t101271201` VALUES ('3', '内江', '101271201', '21', '多云', '东北风', 'NE ', '3级', '46', '46', '18:45', '2017-04-05', '14℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271301
-- ----------------------------
DROP TABLE IF EXISTS `t101271301`;
CREATE TABLE `t101271301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271301
-- ----------------------------
INSERT INTO `t101271301` VALUES ('3', '资阳', '101271301', '20', '阴', '东北风', 'NE ', '3级', '55', '55', '18:35', '2017-04-05', '14℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271401
-- ----------------------------
DROP TABLE IF EXISTS `t101271401`;
CREATE TABLE `t101271401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271401
-- ----------------------------
INSERT INTO `t101271401` VALUES ('3', '乐山', '101271401', '20', '阴', '西风', 'W ', '2级', '83', '83', '18:45', '2017-04-05', '16℃', '26℃', '阴转多云', '北风', '微风');

-- ----------------------------
-- Table structure for t101271501
-- ----------------------------
DROP TABLE IF EXISTS `t101271501`;
CREATE TABLE `t101271501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271501
-- ----------------------------
INSERT INTO `t101271501` VALUES ('3', '眉山', '101271501', '19', '多云', '北风', 'N ', '2级', '65', '65', '18:40', '2017-04-05', '15℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271601
-- ----------------------------
DROP TABLE IF EXISTS `t101271601`;
CREATE TABLE `t101271601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271601
-- ----------------------------
INSERT INTO `t101271601` VALUES ('3', '凉山', '101271601', '23', '晴', '西北风', 'NW ', '5级', '41', '41', '18:45', '2017-04-05', '16℃', '28℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271701
-- ----------------------------
DROP TABLE IF EXISTS `t101271701`;
CREATE TABLE `t101271701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271701
-- ----------------------------
INSERT INTO `t101271701` VALUES ('3', '雅安', '101271701', '17', '雨', '东风', 'E ', '2级', '160', '160', '18:45', '2017-04-05', '14℃', '22℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271801
-- ----------------------------
DROP TABLE IF EXISTS `t101271801`;
CREATE TABLE `t101271801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271801
-- ----------------------------
INSERT INTO `t101271801` VALUES ('3', '甘孜', '101271801', '14', '晴', '西风', 'W ', '4级', '39', '39', '18:35', '2017-04-05', '2℃', '16℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101271901
-- ----------------------------
DROP TABLE IF EXISTS `t101271901`;
CREATE TABLE `t101271901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101271901
-- ----------------------------
INSERT INTO `t101271901` VALUES ('3', '阿坝', '101271901', '17', '多云', '西南风', 'SW ', '3级', '39', '39', '18:35', '2017-04-05', '-3℃', '16℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101272001
-- ----------------------------
DROP TABLE IF EXISTS `t101272001`;
CREATE TABLE `t101272001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101272001
-- ----------------------------
INSERT INTO `t101272001` VALUES ('3', '德阳', '101272001', '19', '阴', '西南风', 'SW ', '2级', '62', '62', '18:45', '2017-04-05', '15℃', '23℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101272101
-- ----------------------------
DROP TABLE IF EXISTS `t101272101`;
CREATE TABLE `t101272101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101272101
-- ----------------------------
INSERT INTO `t101272101` VALUES ('3', '广元', '101272101', '22', '多云', '东风', 'E ', '3级', '51', '51', '18:40', '2017-04-05', '12℃', '22℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280101
-- ----------------------------
DROP TABLE IF EXISTS `t101280101`;
CREATE TABLE `t101280101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280101
-- ----------------------------
INSERT INTO `t101280101` VALUES ('3', '广州', '101280101', '26', '多云', '东南风', 'SE ', '3级', '53', '53', '15:25', '2017-04-05', '20℃', '26℃', '阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280201
-- ----------------------------
DROP TABLE IF EXISTS `t101280201`;
CREATE TABLE `t101280201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280201
-- ----------------------------
INSERT INTO `t101280201` VALUES ('3', '韶关', '101280201', '24', '多云', '西南风', 'SW ', '3级', '55', '55', '18:35', '2017-04-05', '18℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280301
-- ----------------------------
DROP TABLE IF EXISTS `t101280301`;
CREATE TABLE `t101280301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280301
-- ----------------------------
INSERT INTO `t101280301` VALUES ('3', '惠州', '101280301', '24', '多云', '东南风', 'SE ', '4级', '55', '55', '18:35', '2017-04-05', '18℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280401
-- ----------------------------
DROP TABLE IF EXISTS `t101280401`;
CREATE TABLE `t101280401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280401
-- ----------------------------
INSERT INTO `t101280401` VALUES ('3', '梅州', '101280401', '24', '多云', '南风', 'S ', '3级', '54', '54', '18:40', '2017-04-05', '18℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280501
-- ----------------------------
DROP TABLE IF EXISTS `t101280501`;
CREATE TABLE `t101280501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280501
-- ----------------------------
INSERT INTO `t101280501` VALUES ('3', '汕头', '101280501', '22', '多云', '东风', 'E ', '3级', '52', '52', '18:35', '2017-04-05', '19℃', '25℃', '多云转阴', '东风转东南风', '微风');

-- ----------------------------
-- Table structure for t101280601
-- ----------------------------
DROP TABLE IF EXISTS `t101280601`;
CREATE TABLE `t101280601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280601
-- ----------------------------
INSERT INTO `t101280601` VALUES ('3', '深圳', '101280601', '23', '多云', '东南风', 'SE ', '4级', '45', '45', '18:35', '2017-04-05', '20℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280701
-- ----------------------------
DROP TABLE IF EXISTS `t101280701`;
CREATE TABLE `t101280701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280701
-- ----------------------------
INSERT INTO `t101280701` VALUES ('3', '珠海', '101280701', '22', '多云', '东南风', 'SE ', '4级', '41', '41', '18:35', '2017-04-05', '20℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280800
-- ----------------------------
DROP TABLE IF EXISTS `t101280800`;
CREATE TABLE `t101280800` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280800
-- ----------------------------
INSERT INTO `t101280800` VALUES ('3', '佛山', '101280800', '25', '晴', '东南风', 'SE ', '4级', '57', '57', '18:35', '2017-04-05', '20℃', '27℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101280901
-- ----------------------------
DROP TABLE IF EXISTS `t101280901`;
CREATE TABLE `t101280901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101280901
-- ----------------------------
INSERT INTO `t101280901` VALUES ('3', '肇庆', '101280901', '24', '多云', '东南风', 'SE ', '3级', '63', '63', '18:35', '2017-04-05', '19℃', '28℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281001
-- ----------------------------
DROP TABLE IF EXISTS `t101281001`;
CREATE TABLE `t101281001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281001
-- ----------------------------
INSERT INTO `t101281001` VALUES ('3', '湛江', '101281001', '22', '多云', '东风', 'E ', '4级', '54', '54', '18:35', '2017-04-05', '22℃', '27℃', '多云', '无持续风向转东南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101281101
-- ----------------------------
DROP TABLE IF EXISTS `t101281101`;
CREATE TABLE `t101281101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281101
-- ----------------------------
INSERT INTO `t101281101` VALUES ('3', '江门', '101281101', '24', '多云', '南风', 'S ', '3级', '51', '51', '18:45', '2017-04-05', '21℃', '28℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281201
-- ----------------------------
DROP TABLE IF EXISTS `t101281201`;
CREATE TABLE `t101281201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281201
-- ----------------------------
INSERT INTO `t101281201` VALUES ('3', '河源', '101281201', '24', '多云', '东南风', 'SE ', '2级', '52', '52', '18:35', '2017-04-05', '18℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281301
-- ----------------------------
DROP TABLE IF EXISTS `t101281301`;
CREATE TABLE `t101281301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281301
-- ----------------------------
INSERT INTO `t101281301` VALUES ('3', '清远', '101281301', '24', '多云', '南风', 'S ', '3级', '55', '55', '18:35', '2017-04-05', '21℃', '27℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281401
-- ----------------------------
DROP TABLE IF EXISTS `t101281401`;
CREATE TABLE `t101281401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281401
-- ----------------------------
INSERT INTO `t101281401` VALUES ('3', '云浮', '101281401', '24', '多云', '东南风', 'SE ', '3级', '53', '53', '18:35', '2017-04-05', '20℃', '27℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281501
-- ----------------------------
DROP TABLE IF EXISTS `t101281501`;
CREATE TABLE `t101281501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281501
-- ----------------------------
INSERT INTO `t101281501` VALUES ('3', '潮州', '101281501', '22', '多云', '东南风', 'SE ', '2级', '56', '56', '18:40', '2017-04-05', '18℃', '26℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281601
-- ----------------------------
DROP TABLE IF EXISTS `t101281601`;
CREATE TABLE `t101281601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281601
-- ----------------------------
INSERT INTO `t101281601` VALUES ('3', '东莞', '101281601', '23', '多云', '西南风', 'SW ', '2级', '52', '52', '18:35', '2017-04-05', '20℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281701
-- ----------------------------
DROP TABLE IF EXISTS `t101281701`;
CREATE TABLE `t101281701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281701
-- ----------------------------
INSERT INTO `t101281701` VALUES ('3', '中山', '101281701', '23', '多云', '东南风', 'SE ', '3级', '38', '38', '18:40', '2017-04-05', '20℃', '26℃', '阴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281801
-- ----------------------------
DROP TABLE IF EXISTS `t101281801`;
CREATE TABLE `t101281801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281801
-- ----------------------------
INSERT INTO `t101281801` VALUES ('3', '阳江', '101281801', '23', '多云', '东南风', 'SE ', '4级', '49', '49', '18:35', '2017-04-05', '20℃', '26℃', '多云转阴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101281901
-- ----------------------------
DROP TABLE IF EXISTS `t101281901`;
CREATE TABLE `t101281901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101281901
-- ----------------------------
INSERT INTO `t101281901` VALUES ('3', '揭阳', '101281901', '23', '多云', '东南风', 'SE ', '3级', '57', '57', '18:35', '2017-04-05', '18℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101282001
-- ----------------------------
DROP TABLE IF EXISTS `t101282001`;
CREATE TABLE `t101282001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101282001
-- ----------------------------
INSERT INTO `t101282001` VALUES ('3', '茂名', '101282001', '23', '多云', '东南风', 'SE ', '4级', '56', '56', '18:45', '2017-04-05', '20℃', '28℃', '多云', '无持续风向转东南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101282101
-- ----------------------------
DROP TABLE IF EXISTS `t101282101`;
CREATE TABLE `t101282101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101282101
-- ----------------------------
INSERT INTO `t101282101` VALUES ('3', '汕尾', '101282101', '22', '多云', '东南风', 'SE ', '3级', '57', '57', '18:45', '2017-04-05', '20℃', '26℃', '多云', '无持续风向转东南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101290101
-- ----------------------------
DROP TABLE IF EXISTS `t101290101`;
CREATE TABLE `t101290101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290101
-- ----------------------------
INSERT INTO `t101290101` VALUES ('3', '昆明', '101290101', '18', '晴', '西南风', 'SW ', '6级', '44', '44', '18:45', '2017-04-05', '10℃', '25℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290201
-- ----------------------------
DROP TABLE IF EXISTS `t101290201`;
CREATE TABLE `t101290201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290201
-- ----------------------------
INSERT INTO `t101290201` VALUES ('3', '大理', '101290201', '16', '多云', '东南风', 'SE ', '4级', '31', '31', '18:45', '2017-04-05', '8℃', '23℃', '多云转晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290301
-- ----------------------------
DROP TABLE IF EXISTS `t101290301`;
CREATE TABLE `t101290301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290301
-- ----------------------------
INSERT INTO `t101290301` VALUES ('3', '红河', '101290301', '27', '雨', '西风', 'W ', '6级', '53', '53', '18:40', '2017-04-05', '17℃', '31℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290401
-- ----------------------------
DROP TABLE IF EXISTS `t101290401`;
CREATE TABLE `t101290401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290401
-- ----------------------------
INSERT INTO `t101290401` VALUES ('3', '曲靖', '101290401', '20', '多云', '西南风', 'SW ', '6级', '52', '52', '18:40', '2017-04-05', '11℃', '25℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290501
-- ----------------------------
DROP TABLE IF EXISTS `t101290501`;
CREATE TABLE `t101290501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290501
-- ----------------------------
INSERT INTO `t101290501` VALUES ('3', '保山', '101290501', '18', '雨', '南风', 'S ', '3级', '34', '34', '18:35', '2017-04-05', '11℃', '23℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290601
-- ----------------------------
DROP TABLE IF EXISTS `t101290601`;
CREATE TABLE `t101290601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290601
-- ----------------------------
INSERT INTO `t101290601` VALUES ('3', '文山', '101290601', '23', '雨', '西南风', 'SW ', '3级', '41', '41', '18:35', '2017-04-05', '14℃', '28℃', '晴转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290701
-- ----------------------------
DROP TABLE IF EXISTS `t101290701`;
CREATE TABLE `t101290701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290701
-- ----------------------------
INSERT INTO `t101290701` VALUES ('3', '玉溪', '101290701', '18', '多云', '西风', 'W ', '6级', '36', '36', '18:45', '2017-04-05', '11℃', '24℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101290801
-- ----------------------------
DROP TABLE IF EXISTS `t101290801`;
CREATE TABLE `t101290801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101290801
-- ----------------------------
INSERT INTO `t101290801` VALUES ('3', '楚雄', '101290801', '18', '多云', '南风', 'S ', '5级', '36', '36', '18:45', '2017-04-05', '12℃', '23℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101291001
-- ----------------------------
DROP TABLE IF EXISTS `t101291001`;
CREATE TABLE `t101291001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101291001
-- ----------------------------
INSERT INTO `t101291001` VALUES ('3', '昭通', '101291001', '16', '多云', '东北风', 'NE ', '5级', '64', '64', '18:45', '2017-04-05', '9℃', '25℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101291101
-- ----------------------------
DROP TABLE IF EXISTS `t101291101`;
CREATE TABLE `t101291101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101291101
-- ----------------------------
INSERT INTO `t101291101` VALUES ('3', '临沧', '101291101', '20', '雨', '西南风', 'SW ', '4级', '34', '34', '18:45', '2017-04-05', '12℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101291201
-- ----------------------------
DROP TABLE IF EXISTS `t101291201`;
CREATE TABLE `t101291201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101291201
-- ----------------------------
INSERT INTO `t101291201` VALUES ('3', '怒江', '101291201', '22', '雨', '东风', 'E ', '2级', '36', '36', '18:40', '2017-04-05', '15℃', '28℃', '小雨转多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101291401
-- ----------------------------
DROP TABLE IF EXISTS `t101291401`;
CREATE TABLE `t101291401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101291401
-- ----------------------------
INSERT INTO `t101291401` VALUES ('3', '丽江', '101291401', '19', '阴', '西风', 'W ', '4级', '34', '34', '18:35', '2017-04-05', '7℃', '22℃', '晴', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101291501
-- ----------------------------
DROP TABLE IF EXISTS `t101291501`;
CREATE TABLE `t101291501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101291501
-- ----------------------------
INSERT INTO `t101291501` VALUES ('3', '德宏', '101291501', '22', '雨', '西南风', 'SW ', '4级', '34', '34', '18:40', '2017-04-05', '14℃', '27℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101300101
-- ----------------------------
DROP TABLE IF EXISTS `t101300101`;
CREATE TABLE `t101300101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300101
-- ----------------------------
INSERT INTO `t101300101` VALUES ('3', '南宁', '101300101', '21', '阴', '东南风', 'SE ', '5级', '51', '51', '18:45', '2017-04-05', '21℃', '26℃', '阴转小雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101300201
-- ----------------------------
DROP TABLE IF EXISTS `t101300201`;
CREATE TABLE `t101300201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300201
-- ----------------------------
INSERT INTO `t101300201` VALUES ('3', '崇左', '101300201', '24', '多云', '西南风', 'SW ', '4级', '42', '42', '18:40', '2017-04-05', '20℃', '28℃', '多云', '南风', '微风');

-- ----------------------------
-- Table structure for t101300301
-- ----------------------------
DROP TABLE IF EXISTS `t101300301`;
CREATE TABLE `t101300301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300301
-- ----------------------------
INSERT INTO `t101300301` VALUES ('3', '柳州', '101300301', '23', '阴', '东北风', 'NE ', '4级', '59', '59', '18:40', '2017-04-05', '21℃', '25℃', '阴转小雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101300401
-- ----------------------------
DROP TABLE IF EXISTS `t101300401`;
CREATE TABLE `t101300401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300401
-- ----------------------------
INSERT INTO `t101300401` VALUES ('3', '来宾', '101300401', '22', '阴', '南风', 'S ', '3级', '89', '89', '18:35', '2017-04-05', '21℃', '25℃', '阴转小雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101300501
-- ----------------------------
DROP TABLE IF EXISTS `t101300501`;
CREATE TABLE `t101300501` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300501
-- ----------------------------
INSERT INTO `t101300501` VALUES ('3', '桂林', '101300501', '20', '雨', '北风', 'N ', '2级', '139', '139', '18:40', '2017-04-05', '19℃', '23℃', '小雨', '南风转西南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101300506
-- ----------------------------
DROP TABLE IF EXISTS `t101300506`;
CREATE TABLE `t101300506` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300506
-- ----------------------------
INSERT INTO `t101300506` VALUES ('3', '兴安', '101300506', '20', '多云', '西风', 'W ', '2级', '', '', '18:45', '2017-04-05', '18℃', '21℃', '小雨', '南风转西南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101300601
-- ----------------------------
DROP TABLE IF EXISTS `t101300601`;
CREATE TABLE `t101300601` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300601
-- ----------------------------
INSERT INTO `t101300601` VALUES ('3', '梧州', '101300601', '24', '多云', '东风', 'E ', '2级', '64', '64', '18:40', '2017-04-05', '20℃', '28℃', '阴转小雨', '东风', '微风');

-- ----------------------------
-- Table structure for t101300701
-- ----------------------------
DROP TABLE IF EXISTS `t101300701`;
CREATE TABLE `t101300701` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300701
-- ----------------------------
INSERT INTO `t101300701` VALUES ('3', '贺州', '101300701', '23', '阴', '东南风', 'SE ', '3级', '56', '56', '18:35', '2017-04-05', '20℃', '25℃', '阴转小雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101300801
-- ----------------------------
DROP TABLE IF EXISTS `t101300801`;
CREATE TABLE `t101300801` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300801
-- ----------------------------
INSERT INTO `t101300801` VALUES ('3', '贵港', '101300801', '24', '阴', '东南风', 'SE ', '2级', '64', '64', '18:45', '2017-04-05', '21℃', '27℃', '阴转小雨', '南风', '微风');

-- ----------------------------
-- Table structure for t101300901
-- ----------------------------
DROP TABLE IF EXISTS `t101300901`;
CREATE TABLE `t101300901` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101300901
-- ----------------------------
INSERT INTO `t101300901` VALUES ('3', '玉林', '101300901', '24', '多云', '南风', 'S ', '4级', '61', '61', '18:35', '2017-04-05', '21℃', '27℃', '阴转多云', '东南风转南风', '微风');

-- ----------------------------
-- Table structure for t101301001
-- ----------------------------
DROP TABLE IF EXISTS `t101301001`;
CREATE TABLE `t101301001` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101301001
-- ----------------------------
INSERT INTO `t101301001` VALUES ('3', '百色', '101301001', '24', '多云', '东风', 'E ', '5级', '57', '57', '18:35', '2017-04-05', '21℃', '31℃', '多云', '东南风', '微风');

-- ----------------------------
-- Table structure for t101301101
-- ----------------------------
DROP TABLE IF EXISTS `t101301101`;
CREATE TABLE `t101301101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101301101
-- ----------------------------
INSERT INTO `t101301101` VALUES ('3', '钦州', '101301101', '22', '多云', '东南风', 'SE ', '4级', '53', '53', '18:35', '2017-04-05', '21℃', '27℃', '阴转多云', '南风', '3-4级');

-- ----------------------------
-- Table structure for t101301201
-- ----------------------------
DROP TABLE IF EXISTS `t101301201`;
CREATE TABLE `t101301201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101301201
-- ----------------------------
INSERT INTO `t101301201` VALUES ('3', '河池', '101301201', '19', '阴', '东风', 'E ', '4级', '54', '54', '18:40', '2017-04-05', '20℃', '25℃', '小雨转阴', '南风', '微风');

-- ----------------------------
-- Table structure for t101301301
-- ----------------------------
DROP TABLE IF EXISTS `t101301301`;
CREATE TABLE `t101301301` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101301301
-- ----------------------------
INSERT INTO `t101301301` VALUES ('3', '北海', '101301301', '23', '多云', '东南风', 'SE ', '3级', '51', '51', '18:35', '2017-04-05', '22℃', '27℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101301405
-- ----------------------------
DROP TABLE IF EXISTS `t101301405`;
CREATE TABLE `t101301405` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101301405
-- ----------------------------
INSERT INTO `t101301405` VALUES ('3', '防城', '101301405', '22', '阴', '南风', 'S ', '3级', '', '', '18:45', '2017-04-05', '21℃', '25℃', '阴', '南风', '微风');

-- ----------------------------
-- Table structure for t101310101
-- ----------------------------
DROP TABLE IF EXISTS `t101310101`;
CREATE TABLE `t101310101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310101
-- ----------------------------
INSERT INTO `t101310101` VALUES ('3', '海口', '101310101', '26', '多云', '东南风', 'SE ', '5级', '50', '50', '18:35', '2017-04-05', '22℃', '30℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310201
-- ----------------------------
DROP TABLE IF EXISTS `t101310201`;
CREATE TABLE `t101310201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310201
-- ----------------------------
INSERT INTO `t101310201` VALUES ('3', '三亚', '101310201', '26', '多云', '东风', 'E ', '3级', '36', '36', '18:35', '2017-04-05', '23℃', '32℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310202
-- ----------------------------
DROP TABLE IF EXISTS `t101310202`;
CREATE TABLE `t101310202` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310202
-- ----------------------------
INSERT INTO `t101310202` VALUES ('3', '东方', '101310202', '25', '多云', '西北风', 'NW ', '3级', '', '', '18:40', '2017-04-05', '23℃', '30℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310203
-- ----------------------------
DROP TABLE IF EXISTS `t101310203`;
CREATE TABLE `t101310203` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310203
-- ----------------------------
INSERT INTO `t101310203` VALUES ('3', '临高', '101310203', '24', '多云', '东北风', 'NE ', '4级', '', '', '18:45', '2017-04-05', '21℃', '31℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310204
-- ----------------------------
DROP TABLE IF EXISTS `t101310204`;
CREATE TABLE `t101310204` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310204
-- ----------------------------
INSERT INTO `t101310204` VALUES ('3', '澄迈', '101310204', '27', '多云', '东风', 'E ', '3级', '', '', '18:45', '2017-04-05', '20℃', '32℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310205
-- ----------------------------
DROP TABLE IF EXISTS `t101310205`;
CREATE TABLE `t101310205` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310205
-- ----------------------------
INSERT INTO `t101310205` VALUES ('3', '儋州', '101310205', '26', '多云', '北风', 'N ', '4级', '', '', '18:45', '2017-04-05', '21℃', '32℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310206
-- ----------------------------
DROP TABLE IF EXISTS `t101310206`;
CREATE TABLE `t101310206` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310206
-- ----------------------------
INSERT INTO `t101310206` VALUES ('3', '昌江', '101310206', '26', '多云', '北风', 'N ', '4级', '', '', '18:45', '2017-04-05', '21℃', '32℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310207
-- ----------------------------
DROP TABLE IF EXISTS `t101310207`;
CREATE TABLE `t101310207` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310207
-- ----------------------------
INSERT INTO `t101310207` VALUES ('3', '白沙', '101310207', '26', '多云', '西北风', 'NW ', '4级', '', '', '18:45', '2017-04-05', '19℃', '32℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310208
-- ----------------------------
DROP TABLE IF EXISTS `t101310208`;
CREATE TABLE `t101310208` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310208
-- ----------------------------
INSERT INTO `t101310208` VALUES ('3', '琼中', '101310208', '25', '多云', '东风', 'E ', '3级', '', '', '18:35', '2017-04-05', '19℃', '30℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310209
-- ----------------------------
DROP TABLE IF EXISTS `t101310209`;
CREATE TABLE `t101310209` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310209
-- ----------------------------
INSERT INTO `t101310209` VALUES ('3', '定安', '101310209', '25', '多云', '东南风', 'SE ', '4级', '', '', '18:40', '2017-04-05', '21℃', '30℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310210
-- ----------------------------
DROP TABLE IF EXISTS `t101310210`;
CREATE TABLE `t101310210` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310210
-- ----------------------------
INSERT INTO `t101310210` VALUES ('3', '屯昌', '101310210', '25', '多云', '东风', 'E ', '4级', '', '', '18:45', '2017-04-05', '21℃', '30℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310211
-- ----------------------------
DROP TABLE IF EXISTS `t101310211`;
CREATE TABLE `t101310211` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310211
-- ----------------------------
INSERT INTO `t101310211` VALUES ('3', '琼海', '101310211', '25', '多云', '东风', 'E ', '3级', '', '', '18:45', '2017-04-05', '21℃', '29℃', '多云', '无持续风向转东南风', '微风转3-4级');

-- ----------------------------
-- Table structure for t101310212
-- ----------------------------
DROP TABLE IF EXISTS `t101310212`;
CREATE TABLE `t101310212` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310212
-- ----------------------------
INSERT INTO `t101310212` VALUES ('3', '文昌', '101310212', '25', '多云', '东北风', 'NE ', '2级', '', '', '18:35', '2017-04-05', '21℃', '29℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310214
-- ----------------------------
DROP TABLE IF EXISTS `t101310214`;
CREATE TABLE `t101310214` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310214
-- ----------------------------
INSERT INTO `t101310214` VALUES ('3', '保亭', '101310214', '25', '多云', '南风', 'S ', '3级', '', '', '18:35', '2017-04-05', '20℃', '31℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310215
-- ----------------------------
DROP TABLE IF EXISTS `t101310215`;
CREATE TABLE `t101310215` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310215
-- ----------------------------
INSERT INTO `t101310215` VALUES ('3', '万宁', '101310215', '24', '多云', '东南风', 'SE ', '4级', '', '', '18:45', '2017-04-05', '21℃', '29℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310216
-- ----------------------------
DROP TABLE IF EXISTS `t101310216`;
CREATE TABLE `t101310216` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310216
-- ----------------------------
INSERT INTO `t101310216` VALUES ('3', '陵水', '101310216', '24', '多云', '东风', 'E ', '4级', '', '', '18:40', '2017-04-05', '21℃', '28℃', '多云', '东南风', '3-4级');

-- ----------------------------
-- Table structure for t101310221
-- ----------------------------
DROP TABLE IF EXISTS `t101310221`;
CREATE TABLE `t101310221` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310221
-- ----------------------------
INSERT INTO `t101310221` VALUES ('3', '乐东', '101310221', '27', '多云', '西南风', 'SW ', '3级', '', '', '18:40', '2017-04-05', '20℃', '32℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101310222
-- ----------------------------
DROP TABLE IF EXISTS `t101310222`;
CREATE TABLE `t101310222` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101310222
-- ----------------------------
INSERT INTO `t101310222` VALUES ('3', '五指山', '101310222', '24', '多云', '东南风', 'SE ', '4级', '', '', '18:35', '2017-04-05', '19℃', '30℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101320101
-- ----------------------------
DROP TABLE IF EXISTS `t101320101`;
CREATE TABLE `t101320101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101320101
-- ----------------------------
INSERT INTO `t101320101` VALUES ('3', '香港', '101320101', '22', '多云', '东风', 'E ', '4级', '', '', '19:00', '2017-04-05', '21℃', '25℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101330101
-- ----------------------------
DROP TABLE IF EXISTS `t101330101`;
CREATE TABLE `t101330101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101330101
-- ----------------------------
INSERT INTO `t101330101` VALUES ('3', '澳门', '101330101', '23', '多云', '东风', 'E ', '2级', '', '', '19:00', '2017-04-05', '20℃', '26℃', '多云', '无持续风向', '微风');

-- ----------------------------
-- Table structure for t101340101
-- ----------------------------
DROP TABLE IF EXISTS `t101340101`;
CREATE TABLE `t101340101` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101340101
-- ----------------------------
INSERT INTO `t101340101` VALUES ('3', '台北', '101340101', '25', '多云', '东北风', 'NE ', '2级', '', '', '17:58', '2017-04-05', '21℃', '28℃', '阴', '南风', '3-4级转5-6级');

-- ----------------------------
-- Table structure for t101340102
-- ----------------------------
DROP TABLE IF EXISTS `t101340102`;
CREATE TABLE `t101340102` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101340102
-- ----------------------------
INSERT INTO `t101340102` VALUES ('3', '桃园', '101340102', '23', '多云', '西北风', 'NW ', '1级', '', '', '17:54', '2017-04-05', '21℃', '28℃', '阴', '南风', '3-4级转5-6级');

-- ----------------------------
-- Table structure for t101340201
-- ----------------------------
DROP TABLE IF EXISTS `t101340201`;
CREATE TABLE `t101340201` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101340201
-- ----------------------------
INSERT INTO `t101340201` VALUES ('3', '高雄', '101340201', '25', '多云', '西风', 'W ', '2级', '', '', '18:00', '2017-04-05', '23℃', '29℃', '多云', '东风转南风', '3-4级转5-6级');

-- ----------------------------
-- Table structure for t101340401
-- ----------------------------
DROP TABLE IF EXISTS `t101340401`;
CREATE TABLE `t101340401` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `currenttemp` varchar(6) DEFAULT NULL,
  `currentweather` varchar(20) DEFAULT NULL,
  `currentwd` varchar(20) DEFAULT NULL,
  `currentwde` varchar(20) DEFAULT NULL,
  `currentws` varchar(20) DEFAULT NULL,
  `aqi` varchar(5) DEFAULT NULL,
  `aqipm25` varchar(5) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `temp` varchar(5) DEFAULT NULL,
  `tempn` varchar(5) DEFAULT NULL,
  `weather` varchar(30) DEFAULT NULL,
  `wd` varchar(20) DEFAULT NULL,
  `ws` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t101340401
-- ----------------------------
INSERT INTO `t101340401` VALUES ('3', '台中', '101340401', '24', '多云', '北风', 'N ', '3级', '', '', '17:51', '2017-04-05', '20℃', '29℃', '阴', '无持续风向转西风', '微风转3-4级');

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `datetime` varchar(30) DEFAULT NULL,
  `temperature` varchar(15) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `situation` varchar(50) DEFAULT NULL,
  `wind` varchar(50) DEFAULT NULL,
  `icon1` varchar(15) DEFAULT NULL,
  `icon2` varchar(15) DEFAULT NULL,
  `descript` varchar(100) DEFAULT NULL,
  `advice` varchar(500) NOT NULL,
  PRIMARY KEY (`id`,`advice`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weather
-- ----------------------------
