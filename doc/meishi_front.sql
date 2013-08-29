/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : meishi_front

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2013-08-29 13:41:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `ID` varchar(40) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ID` varchar(40) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` varchar(40) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `CREATER_TIME` datetime DEFAULT NULL,
  `LAST_LOGIN_TIME` datetime DEFAULT NULL,
  `LAST_LOGIN_IP` varchar(20) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('c70dc989-be6e-4285-8244-932f0f5cc01c', 'admin', '123456', null, null, null, 'enable');
