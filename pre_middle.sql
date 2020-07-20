/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : pre_middle

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 20/07/2020 03:56:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache_messages
-- ----------------------------
DROP TABLE IF EXISTS `cache_messages`;
CREATE TABLE `cache_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_messages
-- ----------------------------
INSERT INTO `cache_messages` VALUES (1, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (2, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (3, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (4, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (5, '694a444da0465b43826a41e49ab0e68f');
INSERT INTO `cache_messages` VALUES (6, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (7, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (8, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (9, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (10, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (11, 'd2f2297d6e829cd3493aa7de4416a18f');
INSERT INTO `cache_messages` VALUES (12, '5d7d516a064f4448d9eac6f86579741f');
INSERT INTO `cache_messages` VALUES (13, '5d7d516a064f4448d9eac6f86579741f');
INSERT INTO `cache_messages` VALUES (14, '5d7d516a064f4448d9eac6f86579741f');
INSERT INTO `cache_messages` VALUES (15, '9a121932c763ae2661c229503ad819bb');
INSERT INTO `cache_messages` VALUES (16, '9a121932c763ae2661c229503ad819bb');
INSERT INTO `cache_messages` VALUES (17, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (18, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (19, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (20, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (21, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (22, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (23, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (24, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (25, '4c3e5e0d5af226c48dcd8e5ef34b8de6');
INSERT INTO `cache_messages` VALUES (26, '9e4b1049b407bcc9b0d52d8318ce9c83');
INSERT INTO `cache_messages` VALUES (27, 'e3758ee94b7923c14724e9874661a769');
INSERT INTO `cache_messages` VALUES (28, '10ed2a829a033732dc86c92a8f9626b3');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Test title 1');
INSERT INTO `products` VALUES (2, 'Test title 2');
INSERT INTO `products` VALUES (3, 'Test title 3');
INSERT INTO `products` VALUES (4, 'Test title 4');
INSERT INTO `products` VALUES (5, 'Test title 5');
INSERT INTO `products` VALUES (6, 'Test title 6');
INSERT INTO `products` VALUES (7, 'Test title 7');
INSERT INTO `products` VALUES (8, 'Test title 8');
INSERT INTO `products` VALUES (9, 'Test title 9');
INSERT INTO `products` VALUES (10, 'Test title 10');
INSERT INTO `products` VALUES (11, 'Test title 11');
INSERT INTO `products` VALUES (12, 'Test title 12');
INSERT INTO `products` VALUES (13, 'Test title 13');
INSERT INTO `products` VALUES (14, 'Test title 14');
INSERT INTO `products` VALUES (15, 'Test title 15');
INSERT INTO `products` VALUES (16, 'Test title 16');
INSERT INTO `products` VALUES (17, 'Test title 17');
INSERT INTO `products` VALUES (18, 'Test title 18');
INSERT INTO `products` VALUES (19, 'Test title 19');
INSERT INTO `products` VALUES (20, 'Test title 20');
INSERT INTO `products` VALUES (21, 'Test title 21');
INSERT INTO `products` VALUES (22, 'Test title 22');
INSERT INTO `products` VALUES (23, 'Test title 23');
INSERT INTO `products` VALUES (24, 'Test title 24');
INSERT INTO `products` VALUES (25, 'Test title 25');
INSERT INTO `products` VALUES (26, 'Test title 26');
INSERT INTO `products` VALUES (27, 'Test title 27');
INSERT INTO `products` VALUES (28, 'Test title 28');
INSERT INTO `products` VALUES (29, 'Test title 29');
INSERT INTO `products` VALUES (30, 'Test title 30');
INSERT INTO `products` VALUES (31, 'Test title 31');
INSERT INTO `products` VALUES (32, 'Test title 32');
INSERT INTO `products` VALUES (33, 'Test title 33');
INSERT INTO `products` VALUES (34, 'Test title 34');
INSERT INTO `products` VALUES (35, 'Test title 35');
INSERT INTO `products` VALUES (36, 'Test title 36');
INSERT INTO `products` VALUES (37, 'Test title 37');
INSERT INTO `products` VALUES (38, 'Test title 38');
INSERT INTO `products` VALUES (39, 'Test title 39');
INSERT INTO `products` VALUES (40, 'Test title 40');
INSERT INTO `products` VALUES (41, 'Test title 41');
INSERT INTO `products` VALUES (42, 'Test title 42');
INSERT INTO `products` VALUES (43, 'Test title 43');
INSERT INTO `products` VALUES (44, 'Test title 44');
INSERT INTO `products` VALUES (45, 'Test title 45');
INSERT INTO `products` VALUES (46, 'Test title 46');
INSERT INTO `products` VALUES (47, 'Test title 47');
INSERT INTO `products` VALUES (48, 'Test title 48');
INSERT INTO `products` VALUES (49, 'Test title 49');
INSERT INTO `products` VALUES (50, 'Test title 50');

SET FOREIGN_KEY_CHECKS = 1;
