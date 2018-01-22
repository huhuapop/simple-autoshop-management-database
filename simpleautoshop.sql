/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : simpleautoshop

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-05 10:56:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', 'Uma', 'Kline', '1-753-492-2603', 'tempor@nislelementumpurus.ca', '3092 Mus. Road', 'Troy', 'AL', '36082');
INSERT INTO `tbl_customer` VALUES ('2', 'Madeson', 'Peck', '1-947-343-1784', 'amet@purusactellus.ca', '964 Eleifend Road', 'Troy', 'AL', '36082');
INSERT INTO `tbl_customer` VALUES ('3', 'Audra', 'Green', '1-947-428-7998', 'vitae@Vivamusmolestie.net', 'Ap #990-6604 Penatibus Avenue', 'Troy', 'AL', '36081');
INSERT INTO `tbl_customer` VALUES ('4', 'Aspen', 'Beach', '1-411-573-2065', 'magna@dolorFusce.com', 'P.O. Box 952, 2633 Vitae, Rd.', 'Troy', 'AL', '36081');
INSERT INTO `tbl_customer` VALUES ('5', 'Aladdin', 'Benton', '1-727-147-6363', 'Sed.eu.nibh@pharetrased.org', '6312 Ipsum Ave', 'Troy', 'AL', '36081');
INSERT INTO `tbl_customer` VALUES ('6', 'Brittany', 'Montgomery', '1-467-615-4861', 'vulputate@liberoProinmi.net', '1621 Ut Rd.', 'Dunwoody', 'GA', '30338');
INSERT INTO `tbl_customer` VALUES ('7', 'Anjolie', 'Heath', '1-536-706-1713', 'nisi.sem.semper@purusin.co.uk', '6077 Mauris, St.', 'Dunwoody', 'GA', '30338');
INSERT INTO `tbl_customer` VALUES ('8', 'Hyatt', 'Park', '1-948-606-8053', 'pede.blandit@acorciUt.ca', 'Ap #903-1473 Dui. Rd.', 'Dunwoody', 'GA', '30338');
INSERT INTO `tbl_customer` VALUES ('9', 'Lila', 'Wilder', '1-245-273-9998', 'nunc.In@nisiMauris.com', '681-2452 Rhoncus. Rd.', 'Dunwoody', 'GA', '30338');
INSERT INTO `tbl_customer` VALUES ('10', 'Quyn', 'Solomon', '1-383-861-4902', 'risus@ultricies.org', '9619 Sed Av.', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('11', 'Chadwick', 'Bradley', '1-478-171-5482', 'non.lacinia@Integereu.net', '1245 Id Ave', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('12', 'Yoko', 'Medina', '1-434-908-2900', 'ullamcorper.Duis.at@sapienNuncpulvinar.ca', 'P.O. Box 739, 9593 Sed, St.', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('13', 'Scarlet', 'Mcdowell', '1-146-378-6864', 'gravida@IntegerurnaVivamus.ca', '434-3833 Massa. St.', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('14', 'Ora', 'Huber', '1-360-264-3481', 'erat.volutpat.Nulla@nulla.ca', 'P.O. Box 270, 9403 Dolor Road', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('15', 'Hedy', 'Horton', '1-949-615-7909', 'penatibus.et.magnis@posuerecubilia.org', '8165 Feugiat. Rd.', 'Destin', 'FL', '11111');
INSERT INTO `tbl_customer` VALUES ('16', 'Orla', 'Pitts', '1-681-542-2665', 'vulputate@ornare.net', 'Ap #677-909 Tincidunt St.', 'Atlanta', 'GA', '30303');
INSERT INTO `tbl_customer` VALUES ('17', 'Melyssa', 'Massey', '1-418-698-0427', 'tellus.Suspendisse@blandit.edu', '492-6689 Laoreet, Road', 'Atlanta', 'GA', '30303');
INSERT INTO `tbl_customer` VALUES ('18', 'Yvette', 'Bartlett', '1-164-115-9068', 'facilisis@Morbi.ca', 'Ap #910-4141 Ligula. Road', 'Atlanta', 'GA', '30303');
INSERT INTO `tbl_customer` VALUES ('19', 'Kiara', 'Shields', '1-542-337-1106', 'massa.Vestibulum@rutrumFusce.co.uk', '6868 Integer St.', 'Atlanta', 'GA', '30303');
INSERT INTO `tbl_customer` VALUES ('20', 'Leigh', 'Williams', '1-917-657-0658', 'blandit.at@anequeNullam.co.uk', '310-184 Mi Av.', 'Atlanta', 'GA', '30303');

-- ----------------------------
-- Table structure for tbl_customer_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_vehicle`;
CREATE TABLE `tbl_customer_vehicle` (
  `customer_vehicle_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_vehicle_id`),
  KEY `customer_id` (`customer_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `tbl_customer_vehicle_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`),
  CONSTRAINT `tbl_customer_vehicle_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `tbl_vehivle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer_vehicle
-- ----------------------------
INSERT INTO `tbl_customer_vehicle` VALUES ('1', '1', '1');
INSERT INTO `tbl_customer_vehicle` VALUES ('2', '1', '2');
INSERT INTO `tbl_customer_vehicle` VALUES ('3', '1', '3');
INSERT INTO `tbl_customer_vehicle` VALUES ('4', '1', '4');
INSERT INTO `tbl_customer_vehicle` VALUES ('5', '2', '5');
INSERT INTO `tbl_customer_vehicle` VALUES ('6', '3', '6');
INSERT INTO `tbl_customer_vehicle` VALUES ('7', '4', '7');
INSERT INTO `tbl_customer_vehicle` VALUES ('8', '5', '8');
INSERT INTO `tbl_customer_vehicle` VALUES ('9', '6', '9');
INSERT INTO `tbl_customer_vehicle` VALUES ('10', '7', '10');
INSERT INTO `tbl_customer_vehicle` VALUES ('11', '8', '11');
INSERT INTO `tbl_customer_vehicle` VALUES ('12', '9', '12');
INSERT INTO `tbl_customer_vehicle` VALUES ('13', '10', '13');
INSERT INTO `tbl_customer_vehicle` VALUES ('14', '10', '14');
INSERT INTO `tbl_customer_vehicle` VALUES ('15', '10', '15');
INSERT INTO `tbl_customer_vehicle` VALUES ('16', '11', '16');
INSERT INTO `tbl_customer_vehicle` VALUES ('17', '11', '17');
INSERT INTO `tbl_customer_vehicle` VALUES ('18', '12', '18');
INSERT INTO `tbl_customer_vehicle` VALUES ('19', '13', '19');
INSERT INTO `tbl_customer_vehicle` VALUES ('20', '14', '20');
INSERT INTO `tbl_customer_vehicle` VALUES ('21', '15', '21');
INSERT INTO `tbl_customer_vehicle` VALUES ('22', '16', '22');
INSERT INTO `tbl_customer_vehicle` VALUES ('23', '16', '23');
INSERT INTO `tbl_customer_vehicle` VALUES ('24', '17', '24');
INSERT INTO `tbl_customer_vehicle` VALUES ('25', '17', '25');
INSERT INTO `tbl_customer_vehicle` VALUES ('26', '17', '26');
INSERT INTO `tbl_customer_vehicle` VALUES ('27', '18', '27');
INSERT INTO `tbl_customer_vehicle` VALUES ('28', '19', '28');
INSERT INTO `tbl_customer_vehicle` VALUES ('29', '20', '29');
INSERT INTO `tbl_customer_vehicle` VALUES ('30', '20', '30');
INSERT INTO `tbl_customer_vehicle` VALUES ('31', '20', '31');
INSERT INTO `tbl_customer_vehicle` VALUES ('32', '20', '32');
INSERT INTO `tbl_customer_vehicle` VALUES ('33', '20', '33');
INSERT INTO `tbl_customer_vehicle` VALUES ('34', '20', '34');
INSERT INTO `tbl_customer_vehicle` VALUES ('35', '20', '35');

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', '2014-02-01 08:00:00', '2014-02-02 08:00:00');
INSERT INTO `tbl_order` VALUES ('2', '2014-02-02 08:00:00', '2014-02-03 08:00:00');
INSERT INTO `tbl_order` VALUES ('3', '2014-02-03 08:00:00', '2014-02-04 08:00:00');
INSERT INTO `tbl_order` VALUES ('4', '2014-02-04 08:00:00', '2014-02-05 08:00:00');
INSERT INTO `tbl_order` VALUES ('5', '2014-02-05 08:00:00', '2014-02-06 08:00:00');
INSERT INTO `tbl_order` VALUES ('6', '2014-02-06 08:00:00', '2014-02-07 08:00:00');
INSERT INTO `tbl_order` VALUES ('7', '2014-02-07 08:00:00', '2014-02-08 08:00:00');
INSERT INTO `tbl_order` VALUES ('8', '2014-02-08 08:00:00', '2014-02-09 08:00:00');
INSERT INTO `tbl_order` VALUES ('9', '2014-02-09 08:00:00', '2014-02-10 08:00:00');
INSERT INTO `tbl_order` VALUES ('10', '2014-02-10 08:00:00', '2014-02-11 08:00:00');
INSERT INTO `tbl_order` VALUES ('11', '2014-02-11 08:00:00', '2014-02-12 08:00:00');
INSERT INTO `tbl_order` VALUES ('12', '2014-02-12 08:00:00', '2014-02-13 08:00:00');
INSERT INTO `tbl_order` VALUES ('13', '2014-02-13 08:00:00', '2014-02-14 08:00:00');
INSERT INTO `tbl_order` VALUES ('14', '2014-02-14 08:00:00', '2014-02-15 08:00:00');
INSERT INTO `tbl_order` VALUES ('15', '2014-02-15 08:00:00', '2014-02-16 08:00:00');
INSERT INTO `tbl_order` VALUES ('16', '2014-02-16 08:00:00', '2014-02-17 08:00:00');
INSERT INTO `tbl_order` VALUES ('17', '2014-02-17 08:00:00', '2014-02-18 08:00:00');
INSERT INTO `tbl_order` VALUES ('18', '2014-02-18 08:00:00', '2014-02-19 08:00:00');
INSERT INTO `tbl_order` VALUES ('19', '2014-02-19 08:00:00', '2014-02-20 08:00:00');
INSERT INTO `tbl_order` VALUES ('20', '2014-02-20 08:00:00', '2014-02-21 08:00:00');
INSERT INTO `tbl_order` VALUES ('21', '2014-02-21 08:00:00', '2014-02-22 08:00:00');
INSERT INTO `tbl_order` VALUES ('22', '2014-02-22 08:00:00', '2014-02-23 08:00:00');
INSERT INTO `tbl_order` VALUES ('23', '2014-02-23 08:00:00', '2014-02-24 08:00:00');
INSERT INTO `tbl_order` VALUES ('24', '2014-02-24 08:00:00', '2014-02-25 08:00:00');
INSERT INTO `tbl_order` VALUES ('25', '2014-02-25 08:00:00', '2014-02-26 08:00:00');
INSERT INTO `tbl_order` VALUES ('26', '2014-02-26 08:00:00', '2014-02-27 08:00:00');
INSERT INTO `tbl_order` VALUES ('27', '2014-02-27 08:00:00', '2014-02-28 08:00:00');
INSERT INTO `tbl_order` VALUES ('28', '2014-02-28 08:00:00', '2014-03-01 08:00:00');
INSERT INTO `tbl_order` VALUES ('29', '2014-03-01 08:00:00', '2014-03-02 08:00:00');
INSERT INTO `tbl_order` VALUES ('30', '2014-03-02 08:00:00', '2014-03-03 08:00:00');
INSERT INTO `tbl_order` VALUES ('31', '2014-03-03 08:00:00', '2014-03-04 08:00:00');
INSERT INTO `tbl_order` VALUES ('32', '2014-03-04 08:00:00', '2014-03-05 08:00:00');
INSERT INTO `tbl_order` VALUES ('33', '2014-03-05 08:00:00', '2014-03-06 08:00:00');
INSERT INTO `tbl_order` VALUES ('34', '2014-03-06 08:00:00', '2014-03-07 08:00:00');
INSERT INTO `tbl_order` VALUES ('35', '2014-03-07 08:00:00', '2014-03-08 08:00:00');
INSERT INTO `tbl_order` VALUES ('36', '2014-03-08 08:00:00', '2014-03-09 08:00:00');
INSERT INTO `tbl_order` VALUES ('37', '2014-03-09 08:00:00', '2014-03-10 08:00:00');
INSERT INTO `tbl_order` VALUES ('38', '2014-03-10 08:00:00', '2014-03-11 08:00:00');
INSERT INTO `tbl_order` VALUES ('39', '2014-03-11 08:00:00', '2014-03-12 08:00:00');
INSERT INTO `tbl_order` VALUES ('40', '2014-03-12 08:00:00', '2014-03-13 08:00:00');
INSERT INTO `tbl_order` VALUES ('41', '2014-03-13 08:00:00', '2014-03-14 08:00:00');
INSERT INTO `tbl_order` VALUES ('42', '2014-03-14 08:00:00', '2014-03-15 08:00:00');

-- ----------------------------
-- Table structure for tbl_order_service
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_service`;
CREATE TABLE `tbl_order_service` (
  `order_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`order_service_id`),
  KEY `order_id` (`order_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `tbl_order_service_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  CONSTRAINT `tbl_order_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `tbl_service` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_service
-- ----------------------------
INSERT INTO `tbl_order_service` VALUES ('1', '1', '1');
INSERT INTO `tbl_order_service` VALUES ('2', '2', '1');
INSERT INTO `tbl_order_service` VALUES ('3', '3', '1');
INSERT INTO `tbl_order_service` VALUES ('4', '4', '1');
INSERT INTO `tbl_order_service` VALUES ('5', '5', '15');
INSERT INTO `tbl_order_service` VALUES ('6', '6', '1');
INSERT INTO `tbl_order_service` VALUES ('7', '6', '2');
INSERT INTO `tbl_order_service` VALUES ('8', '6', '3');
INSERT INTO `tbl_order_service` VALUES ('9', '6', '6');
INSERT INTO `tbl_order_service` VALUES ('10', '6', '7');
INSERT INTO `tbl_order_service` VALUES ('11', '7', '21');
INSERT INTO `tbl_order_service` VALUES ('12', '8', '1');
INSERT INTO `tbl_order_service` VALUES ('13', '8', '25');
INSERT INTO `tbl_order_service` VALUES ('14', '9', '5');
INSERT INTO `tbl_order_service` VALUES ('15', '9', '9');
INSERT INTO `tbl_order_service` VALUES ('16', '9', '9');
INSERT INTO `tbl_order_service` VALUES ('17', '9', '9');
INSERT INTO `tbl_order_service` VALUES ('18', '10', '16');
INSERT INTO `tbl_order_service` VALUES ('19', '11', '18');
INSERT INTO `tbl_order_service` VALUES ('20', '12', '25');
INSERT INTO `tbl_order_service` VALUES ('21', '13', '24');
INSERT INTO `tbl_order_service` VALUES ('22', '14', '1');
INSERT INTO `tbl_order_service` VALUES ('23', '14', '2');
INSERT INTO `tbl_order_service` VALUES ('24', '15', '3');
INSERT INTO `tbl_order_service` VALUES ('25', '15', '5');
INSERT INTO `tbl_order_service` VALUES ('26', '16', '13');
INSERT INTO `tbl_order_service` VALUES ('27', '17', '15');
INSERT INTO `tbl_order_service` VALUES ('28', '18', '17');
INSERT INTO `tbl_order_service` VALUES ('29', '19', '17');
INSERT INTO `tbl_order_service` VALUES ('30', '19', '17');
INSERT INTO `tbl_order_service` VALUES ('31', '19', '20');
INSERT INTO `tbl_order_service` VALUES ('32', '20', '1');
INSERT INTO `tbl_order_service` VALUES ('33', '21', '3');
INSERT INTO `tbl_order_service` VALUES ('34', '22', '1');
INSERT INTO `tbl_order_service` VALUES ('35', '23', '15');
INSERT INTO `tbl_order_service` VALUES ('36', '24', '1');
INSERT INTO `tbl_order_service` VALUES ('37', '25', '12');
INSERT INTO `tbl_order_service` VALUES ('38', '26', '23');
INSERT INTO `tbl_order_service` VALUES ('39', '26', '16');
INSERT INTO `tbl_order_service` VALUES ('40', '26', '19');
INSERT INTO `tbl_order_service` VALUES ('41', '26', '5');
INSERT INTO `tbl_order_service` VALUES ('42', '27', '3');
INSERT INTO `tbl_order_service` VALUES ('43', '28', '21');
INSERT INTO `tbl_order_service` VALUES ('44', '29', '25');
INSERT INTO `tbl_order_service` VALUES ('45', '30', '25');
INSERT INTO `tbl_order_service` VALUES ('46', '31', '8');
INSERT INTO `tbl_order_service` VALUES ('47', '32', '16');
INSERT INTO `tbl_order_service` VALUES ('48', '33', '1');
INSERT INTO `tbl_order_service` VALUES ('49', '34', '19');
INSERT INTO `tbl_order_service` VALUES ('50', '35', '25');
INSERT INTO `tbl_order_service` VALUES ('51', '36', '9');
INSERT INTO `tbl_order_service` VALUES ('52', '36', '21');
INSERT INTO `tbl_order_service` VALUES ('53', '36', '18');
INSERT INTO `tbl_order_service` VALUES ('54', '36', '21');
INSERT INTO `tbl_order_service` VALUES ('55', '36', '20');
INSERT INTO `tbl_order_service` VALUES ('56', '36', '4');
INSERT INTO `tbl_order_service` VALUES ('57', '36', '23');
INSERT INTO `tbl_order_service` VALUES ('58', '37', '2');
INSERT INTO `tbl_order_service` VALUES ('59', '38', '1');
INSERT INTO `tbl_order_service` VALUES ('60', '39', '3');
INSERT INTO `tbl_order_service` VALUES ('61', '40', '3');
INSERT INTO `tbl_order_service` VALUES ('62', '41', '8');
INSERT INTO `tbl_order_service` VALUES ('63', '41', '3');
INSERT INTO `tbl_order_service` VALUES ('64', '42', '10');

-- ----------------------------
-- Table structure for tbl_rate
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rate`;
CREATE TABLE `tbl_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `labor_cost_per_hour` double NOT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_rate
-- ----------------------------
INSERT INTO `tbl_rate` VALUES ('1', '65');
INSERT INTO `tbl_rate` VALUES ('2', '55');
INSERT INTO `tbl_rate` VALUES ('3', '85');
INSERT INTO `tbl_rate` VALUES ('4', '0');

-- ----------------------------
-- Table structure for tbl_service
-- ----------------------------
DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE `tbl_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `labor_hour` double NOT NULL,
  `part_cost` double NOT NULL,
  `rate_id` int(11) NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `rate_id` (`rate_id`),
  CONSTRAINT `tbl_service_ibfk_1` FOREIGN KEY (`rate_id`) REFERENCES `tbl_rate` (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_service
-- ----------------------------
INSERT INTO `tbl_service` VALUES ('1', 'oil change', '0', '30', '4');
INSERT INTO `tbl_service` VALUES ('2', 'tire rotation', '0', '10', '4');
INSERT INTO `tbl_service` VALUES ('3', 'tire balance', '0', '30', '4');
INSERT INTO `tbl_service` VALUES ('4', 'tire rotation & balance', '0', '35', '4');
INSERT INTO `tbl_service` VALUES ('5', 'alignment', '0.8', '0', '3');
INSERT INTO `tbl_service` VALUES ('6', 'A/C inspection', '0.5', '0', '1');
INSERT INTO `tbl_service` VALUES ('7', 'A/C repair', '4', '0', '1');
INSERT INTO `tbl_service` VALUES ('8', 'A/C add Freon', '0', '79', '4');
INSERT INTO `tbl_service` VALUES ('9', 'small tire replace', '0', '80', '4');
INSERT INTO `tbl_service` VALUES ('10', 'large tire replace', '0', '150', '4');
INSERT INTO `tbl_service` VALUES ('11', 'engine inspection', '1', '0', '1');
INSERT INTO `tbl_service` VALUES ('12', 'engine repair', '5', '500', '3');
INSERT INTO `tbl_service` VALUES ('13', 'transmission flush', '1', '65', '1');
INSERT INTO `tbl_service` VALUES ('14', 'transmission inspection', '1.2', '0', '1');
INSERT INTO `tbl_service` VALUES ('15', 'transmission repair', '7', '300', '1');
INSERT INTO `tbl_service` VALUES ('16', 'engine tune up', '0', '599', '4');
INSERT INTO `tbl_service` VALUES ('17', 'break pads replace', '0.5', '40', '2');
INSERT INTO `tbl_service` VALUES ('18', 'break rotors replace', '0.7', '60', '2');
INSERT INTO `tbl_service` VALUES ('19', 'break shoes replace', '0.5', '20', '2');
INSERT INTO `tbl_service` VALUES ('20', 'cooling system flush', '2', '80', '1');
INSERT INTO `tbl_service` VALUES ('21', 'CV boots replace', '1', '100', '1');
INSERT INTO `tbl_service` VALUES ('22', 'window motor & regulator replace', '1.6', '130', '1');
INSERT INTO `tbl_service` VALUES ('23', 'light body damage repair', '3', '0', '3');
INSERT INTO `tbl_service` VALUES ('24', 'severe body damage repair', '6', '0', '3');
INSERT INTO `tbl_service` VALUES ('25', 'emission test', '0', '19.99', '4');

-- ----------------------------
-- Table structure for tbl_vehicle_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_vehicle_order`;
CREATE TABLE `tbl_vehicle_order` (
  `vehicle_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_order_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `tbl_vehicle_order_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `tbl_vehivle` (`vehicle_id`),
  CONSTRAINT `tbl_vehicle_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_vehicle_order
-- ----------------------------
INSERT INTO `tbl_vehicle_order` VALUES ('1', '1', '1');
INSERT INTO `tbl_vehicle_order` VALUES ('2', '2', '2');
INSERT INTO `tbl_vehicle_order` VALUES ('3', '2', '3');
INSERT INTO `tbl_vehicle_order` VALUES ('4', '3', '4');
INSERT INTO `tbl_vehicle_order` VALUES ('5', '3', '5');
INSERT INTO `tbl_vehicle_order` VALUES ('6', '4', '6');
INSERT INTO `tbl_vehicle_order` VALUES ('7', '5', '7');
INSERT INTO `tbl_vehicle_order` VALUES ('8', '6', '8');
INSERT INTO `tbl_vehicle_order` VALUES ('9', '7', '9');
INSERT INTO `tbl_vehicle_order` VALUES ('10', '8', '10');
INSERT INTO `tbl_vehicle_order` VALUES ('11', '9', '11');
INSERT INTO `tbl_vehicle_order` VALUES ('12', '10', '12');
INSERT INTO `tbl_vehicle_order` VALUES ('13', '11', '13');
INSERT INTO `tbl_vehicle_order` VALUES ('14', '12', '14');
INSERT INTO `tbl_vehicle_order` VALUES ('15', '12', '15');
INSERT INTO `tbl_vehicle_order` VALUES ('16', '13', '16');
INSERT INTO `tbl_vehicle_order` VALUES ('17', '13', '17');
INSERT INTO `tbl_vehicle_order` VALUES ('18', '14', '18');
INSERT INTO `tbl_vehicle_order` VALUES ('19', '15', '19');
INSERT INTO `tbl_vehicle_order` VALUES ('20', '16', '20');
INSERT INTO `tbl_vehicle_order` VALUES ('21', '16', '21');
INSERT INTO `tbl_vehicle_order` VALUES ('22', '17', '22');
INSERT INTO `tbl_vehicle_order` VALUES ('23', '18', '23');
INSERT INTO `tbl_vehicle_order` VALUES ('24', '19', '24');
INSERT INTO `tbl_vehicle_order` VALUES ('25', '20', '25');
INSERT INTO `tbl_vehicle_order` VALUES ('26', '21', '26');
INSERT INTO `tbl_vehicle_order` VALUES ('27', '22', '27');
INSERT INTO `tbl_vehicle_order` VALUES ('28', '23', '28');
INSERT INTO `tbl_vehicle_order` VALUES ('29', '24', '29');
INSERT INTO `tbl_vehicle_order` VALUES ('30', '25', '30');
INSERT INTO `tbl_vehicle_order` VALUES ('31', '26', '31');
INSERT INTO `tbl_vehicle_order` VALUES ('32', '27', '32');
INSERT INTO `tbl_vehicle_order` VALUES ('33', '27', '33');
INSERT INTO `tbl_vehicle_order` VALUES ('34', '28', '34');
INSERT INTO `tbl_vehicle_order` VALUES ('35', '29', '35');
INSERT INTO `tbl_vehicle_order` VALUES ('36', '29', '36');
INSERT INTO `tbl_vehicle_order` VALUES ('37', '30', '37');
INSERT INTO `tbl_vehicle_order` VALUES ('38', '31', '38');
INSERT INTO `tbl_vehicle_order` VALUES ('39', '32', '39');
INSERT INTO `tbl_vehicle_order` VALUES ('40', '33', '40');
INSERT INTO `tbl_vehicle_order` VALUES ('41', '34', '41');
INSERT INTO `tbl_vehicle_order` VALUES ('42', '35', '42');

-- ----------------------------
-- Table structure for tbl_vehivle
-- ----------------------------
DROP TABLE IF EXISTS `tbl_vehivle`;
CREATE TABLE `tbl_vehivle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `VIN` varchar(45) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `make` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `mileage` varchar(45) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_vehivle
-- ----------------------------
INSERT INTO `tbl_vehivle` VALUES ('1', 'ABCDJS123KDJR894H', '2003', 'honda', 'accord', '120385');
INSERT INTO `tbl_vehivle` VALUES ('2', 'AKS92H3NRKW91HW', '1992', 'honda', 'civic', '162978');
INSERT INTO `tbl_vehivle` VALUES ('3', '103JD8SOQPWM103', '1986', 'honda', 'crv', '79445');
INSERT INTO `tbl_vehivle` VALUES ('4', 'SKQI291OEJZ91JEIAS', '2008', 'ford', 'focus', '98647');
INSERT INTO `tbl_vehivle` VALUES ('5', 'SLA02LAXHS9001JSA', '1998', 'ford', 'focus', '191162');
INSERT INTO `tbl_vehivle` VALUES ('6', '1NSA8DH1KD9AH2KS', '2006', 'ford', 'escape', '171553');
INSERT INTO `tbl_vehivle` VALUES ('7', '103JAKIS8HSNFK29A', '2005', 'ford', 'escape', '125803');
INSERT INTO `tbl_vehivle` VALUES ('8', 'SNA81JSNALZ92HAN', '1997', 'ford', 'fusion', '142807');
INSERT INTO `tbl_vehivle` VALUES ('9', 'XMl193HS9FN29DKC', '2000', 'toyota', 'camry', '146976');
INSERT INTO `tbl_vehivle` VALUES ('10', 'ZJD92NFLS9ANZJD93', '2006', 'toyota', 'camry', '194943');
INSERT INTO `tbl_vehivle` VALUES ('11', 'SNDK303NDKXHA82', '2011', 'toyota', 'rav-4', '85159');
INSERT INTO `tbl_vehivle` VALUES ('12', 'ZNCKS84NSKDKFNA', '1998', 'toyota', 'corolla', '75659');
INSERT INTO `tbl_vehivle` VALUES ('13', 'NZJD92JRNVKCHSAK', '2005', 'toyota', 'corolla', '44870');
INSERT INTO `tbl_vehivle` VALUES ('14', 'ANJDJ3BDK9F9ANSD', '2001', 'toyota', '4runner', '61495');
INSERT INTO `tbl_vehivle` VALUES ('15', 'ZNCMSKJ39DKSNCK', '1997', 'vw', 'jetta', '107870');
INSERT INTO `tbl_vehivle` VALUES ('16', 'NZMCK14NFD42X5D', '1993', 'vw', 'jetta', '80989');
INSERT INTO `tbl_vehivle` VALUES ('17', '4S534F2C2X4CR5D4S', '2006', 'vw', 'jetta', '150142');
INSERT INTO `tbl_vehivle` VALUES ('18', '1X2C5AJDK92NDFLX', '1993', 'vw', 'golf', '126333');
INSERT INTO `tbl_vehivle` VALUES ('19', 'AJDMFJ30SJDKLADF', '1992', 'vw', 'golf', '67367');
INSERT INTO `tbl_vehivle` VALUES ('20', 'NMXKLD92NDMFLZ', '1987', 'vw', 'golf', '168569');
INSERT INTO `tbl_vehivle` VALUES ('21', 'SNDJKFN29DNVMX', '2008', 'nissan', 'altima', '51211');
INSERT INTO `tbl_vehivle` VALUES ('22', 'ANDJF93NAJKDKFZ', '2012', 'nissan', 'altima', '181628');
INSERT INTO `tbl_vehivle` VALUES ('23', 'ANDKFKCHA93JDBF', '2001', 'nissan', 'maxima', '166063');
INSERT INTO `tbl_vehivle` VALUES ('24', 'ZNDMNAKD8NGDK', '2014', 'nissan', 'versa', '168881');
INSERT INTO `tbl_vehivle` VALUES ('25', 'XZNDKJF82NDEJSKC', '1986', 'nissan', 'sentra', '48304');
INSERT INTO `tbl_vehivle` VALUES ('26', 'SKDMFN2KEJDUFJD', '1993', 'nissan', 'sentra', '148489');
INSERT INTO `tbl_vehivle` VALUES ('27', 'SKDNMRB29REJFGY', '1991', 'nissan', 'cube', '83647');
INSERT INTO `tbl_vehivle` VALUES ('28', 'SKXJFHTR8B23KIJ3J2', '1989', 'nissan', 'altima', '15352');
INSERT INTO `tbl_vehivle` VALUES ('29', 'SKDJRUY48NSKD8QK', '1992', 'volvo', 'xc90', '4235');
INSERT INTO `tbl_vehivle` VALUES ('30', 'WKENRBN8WKDU7G', '2012', 'volvo', 'xc60', '82366');
INSERT INTO `tbl_vehivle` VALUES ('31', 'SLKDJFH382KDJF7RE8', '1993', 'mitsubishi', 'eclipse', '61601');
INSERT INTO `tbl_vehivle` VALUES ('32', 'SKDJFBN2934JDUF23', '2007', 'mitsubishi', 'endeavor', '1273');
INSERT INTO `tbl_vehivle` VALUES ('33', 'SKLDJFHE82NEKG78F', '2003', 'mitsubishi', 'endeavor', '12010');
INSERT INTO `tbl_vehivle` VALUES ('34', 'DKLFGJAHA9DJHABN', '2004', 'mitsubishi', 'endeavor', '199848');
INSERT INTO `tbl_vehivle` VALUES ('35', 'SKAJ73U2BN2KDJFHD', '2011', 'mitsubishi', 'outlander', '26314');
