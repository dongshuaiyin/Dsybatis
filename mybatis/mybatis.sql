/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : mybatis

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/12/2020 22:32:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fee_202001
-- ----------------------------
DROP TABLE IF EXISTS `fee_202001`;
CREATE TABLE `fee_202001`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202001
-- ----------------------------
INSERT INTO `fee_202001` VALUES (1, '200.0', '2020-01-01');
INSERT INTO `fee_202001` VALUES (2, '300.0', '2020-01-02');
INSERT INTO `fee_202001` VALUES (3, '400.0', '2020-01-03');
INSERT INTO `fee_202001` VALUES (4, '300.0', '2020-01-04');
INSERT INTO `fee_202001` VALUES (5, '600.0', '2020-01-05');

-- ----------------------------
-- Table structure for fee_202002
-- ----------------------------
DROP TABLE IF EXISTS `fee_202002`;
CREATE TABLE `fee_202002`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202002
-- ----------------------------
INSERT INTO `fee_202002` VALUES (0, '200.0', '2020-02-01');
INSERT INTO `fee_202002` VALUES (0, '300.0', '2020-02-02');
INSERT INTO `fee_202002` VALUES (0, '400.0', '2020-02-03');
INSERT INTO `fee_202002` VALUES (0, '300.0', '2020-02-04');
INSERT INTO `fee_202002` VALUES (0, '600.0', '2020-02-05');

-- ----------------------------
-- Table structure for fee_202003
-- ----------------------------
DROP TABLE IF EXISTS `fee_202003`;
CREATE TABLE `fee_202003`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202003
-- ----------------------------
INSERT INTO `fee_202003` VALUES (0, '200.0', '2020-03-01');
INSERT INTO `fee_202003` VALUES (0, '300.0', '2020-03-02');
INSERT INTO `fee_202003` VALUES (0, '400.0', '2020-03-03');
INSERT INTO `fee_202003` VALUES (0, '300.0', '2020-03-04');
INSERT INTO `fee_202003` VALUES (0, '600.0', '2020-03-05');

-- ----------------------------
-- Table structure for fee_202004
-- ----------------------------
DROP TABLE IF EXISTS `fee_202004`;
CREATE TABLE `fee_202004`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202004
-- ----------------------------
INSERT INTO `fee_202004` VALUES (0, '200.0', '2020-04-01');
INSERT INTO `fee_202004` VALUES (0, '300.0', '2020-04-02');
INSERT INTO `fee_202004` VALUES (0, '400.0', '2020-04-03');
INSERT INTO `fee_202004` VALUES (0, '300.0', '2020-04-04');
INSERT INTO `fee_202004` VALUES (0, '600.0', '2020-04-05');

-- ----------------------------
-- Table structure for fee_202005
-- ----------------------------
DROP TABLE IF EXISTS `fee_202005`;
CREATE TABLE `fee_202005`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202005
-- ----------------------------
INSERT INTO `fee_202005` VALUES (0, '200.0', '2020-05-01');
INSERT INTO `fee_202005` VALUES (0, '300.0', '2020-05-02');
INSERT INTO `fee_202005` VALUES (0, '400.0', '2020-05-03');
INSERT INTO `fee_202005` VALUES (0, '300.0', '2020-05-04');
INSERT INTO `fee_202005` VALUES (0, '600.0', '2020-05-05');

-- ----------------------------
-- Table structure for fee_202006
-- ----------------------------
DROP TABLE IF EXISTS `fee_202006`;
CREATE TABLE `fee_202006`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202006
-- ----------------------------
INSERT INTO `fee_202006` VALUES (0, '200.0', '2020-06-01');
INSERT INTO `fee_202006` VALUES (0, '300.0', '2020-06-02');
INSERT INTO `fee_202006` VALUES (0, '400.0', '2020-06-03');
INSERT INTO `fee_202006` VALUES (0, '300.0', '2020-06-04');
INSERT INTO `fee_202006` VALUES (0, '600.0', '2020-06-05');

-- ----------------------------
-- Table structure for fee_202007
-- ----------------------------
DROP TABLE IF EXISTS `fee_202007`;
CREATE TABLE `fee_202007`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202007
-- ----------------------------
INSERT INTO `fee_202007` VALUES (0, '200.0', '2020-07-01');
INSERT INTO `fee_202007` VALUES (0, '300.0', '2020-07-02');
INSERT INTO `fee_202007` VALUES (0, '400.0', '2020-07-03');
INSERT INTO `fee_202007` VALUES (0, '300.0', '2020-07-04');
INSERT INTO `fee_202007` VALUES (0, '600.0', '2020-07-05');

-- ----------------------------
-- Table structure for fee_202008
-- ----------------------------
DROP TABLE IF EXISTS `fee_202008`;
CREATE TABLE `fee_202008`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` datetime NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202008
-- ----------------------------
INSERT INTO `fee_202008` VALUES (0, '200.0', '2020-08-01 00:00:00');
INSERT INTO `fee_202008` VALUES (0, '300.0', '2020-08-02 00:00:00');
INSERT INTO `fee_202008` VALUES (0, '400.0', '2020-08-03 00:00:00');
INSERT INTO `fee_202008` VALUES (0, '300.0', '2020-08-04 00:00:00');
INSERT INTO `fee_202008` VALUES (0, '600.0', '2020-08-05 00:00:00');

-- ----------------------------
-- Table structure for fee_202009
-- ----------------------------
DROP TABLE IF EXISTS `fee_202009`;
CREATE TABLE `fee_202009`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202009
-- ----------------------------
INSERT INTO `fee_202009` VALUES (0, '200.0', '2020-09-01');
INSERT INTO `fee_202009` VALUES (0, '300.0', '2020-09-02');
INSERT INTO `fee_202009` VALUES (0, '400.0', '2020-09-03');
INSERT INTO `fee_202009` VALUES (0, '300.0', '2020-09-04');
INSERT INTO `fee_202009` VALUES (0, '600.0', '2020-09-05');

-- ----------------------------
-- Table structure for fee_202010
-- ----------------------------
DROP TABLE IF EXISTS `fee_202010`;
CREATE TABLE `fee_202010`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202010
-- ----------------------------
INSERT INTO `fee_202010` VALUES (0, '200.0', '2020-10-01');
INSERT INTO `fee_202010` VALUES (0, '300.0', '2020-10-02');
INSERT INTO `fee_202010` VALUES (0, '400.0', '2020-10-03');
INSERT INTO `fee_202010` VALUES (0, '300.0', '2020-10-04');
INSERT INTO `fee_202010` VALUES (0, '600.0', '2020-10-05');

-- ----------------------------
-- Table structure for fee_202011
-- ----------------------------
DROP TABLE IF EXISTS `fee_202011`;
CREATE TABLE `fee_202011`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202011
-- ----------------------------
INSERT INTO `fee_202011` VALUES (0, '200.0', '2020-11-01');
INSERT INTO `fee_202011` VALUES (0, '300.0', '2020-11-02');
INSERT INTO `fee_202011` VALUES (0, '400.0', '2020-11-03');
INSERT INTO `fee_202011` VALUES (0, '300.0', '2020-11-04');
INSERT INTO `fee_202011` VALUES (0, '600.0', '2020-11-05');

-- ----------------------------
-- Table structure for fee_202012
-- ----------------------------
DROP TABLE IF EXISTS `fee_202012`;
CREATE TABLE `fee_202012`  (
  `id` int(32) NOT NULL DEFAULT 0 COMMENT 'id编号',
  `fee_amt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用金额',
  `fee_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用日期'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_202012
-- ----------------------------
INSERT INTO `fee_202012` VALUES (0, '200.0', '2020-12-01');
INSERT INTO `fee_202012` VALUES (0, '300.0', '2020-12-02');
INSERT INTO `fee_202012` VALUES (0, '400.0', '2020-12-03');
INSERT INTO `fee_202012` VALUES (0, '300.0', '2020-12-04');
INSERT INTO `fee_202012` VALUES (0, '600.0', '2020-12-05');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'dsy', '111');

SET FOREIGN_KEY_CHECKS = 1;
