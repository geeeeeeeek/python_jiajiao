/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_jiajiao

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 10/06/2023 15:59:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1686369031223.jpeg', 'http://www.baidu.com111', '2023-06-10 11:50:35.067715');

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '高中', '2023-06-10 11:34:06.830953');
INSERT INTO `b_classification` VALUES (2, '初中', '2023-06-10 11:34:12.348249');
INSERT INTO `b_classification` VALUES (3, '小学', '2023-06-10 11:34:17.082527');
INSERT INTO `b_classification` VALUES (4, '艺术', '2023-06-10 11:34:55.285118');
INSERT INTO `b_classification` VALUES (5, '音乐', '2023-06-10 11:35:00.866149');
INSERT INTO `b_classification` VALUES (6, '书法', '2023-06-10 11:35:07.426851');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (2, '非常负责人的老师', '2023-06-10 15:31:44.503884', 0, 4, 4);
INSERT INTO `b_comment` VALUES (3, '啊啊', '2023-06-10 15:31:47.198375', 0, 4, 4);
INSERT INTO `b_comment` VALUES (4, '美丽的老师', '2023-06-10 15:46:19.351025', 0, 14, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 11:56:33.452311');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 14:17:18.857568');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 14:36:24.381880');
INSERT INTO `b_login_log` VALUES (4, 'daa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 15:28:16.416808');
INSERT INTO `b_login_log` VALUES (5, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 15:30:47.211277');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-10 15:35:27.098108');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '通知', '今天新增13位家教信息', '2023-06-10 11:50:57.822056');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1173 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-10 11:29:10.185374', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-10 11:29:10.187371', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-10 11:29:10.186372', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-10 11:29:10.187371', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-10 11:29:18.450702', '/myapp/admin/adminLogin', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-10 11:29:54.323683', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-10 11:29:54.328956', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-10 11:29:54.339900', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-10 11:29:58.351754', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-10 11:30:13.760692', '/myapp/admin/user/create', 'POST', NULL, '219');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-10 11:31:00.690221', '/myapp/admin/user/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-10 11:31:00.732750', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-10 11:31:21.296434', '/myapp/admin/user/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-10 11:31:21.356471', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-10 11:31:28.740461', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-10 11:31:34.766237', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-10 11:32:34.004990', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-10 11:32:34.959007', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-10 11:32:34.965000', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-10 11:32:34.966993', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-10 11:32:47.450060', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-10 11:32:47.449060', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-10 11:32:47.452162', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-10 11:32:51.383552', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-10 11:32:51.387562', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-10 11:32:51.388563', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-10 11:33:50.801357', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-10 11:34:06.835005', '/myapp/admin/classification/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-10 11:34:06.859440', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-10 11:34:12.353242', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-10 11:34:12.393831', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-10 11:34:17.087951', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-10 11:34:17.113936', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-10 11:34:55.292566', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-10 11:34:55.344460', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-10 11:35:00.872155', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-10 11:35:00.938510', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-10 11:35:07.432373', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-10 11:35:07.476046', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-10 11:35:13.971095', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-10 11:35:27.814655', '/myapp/admin/tag/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-10 11:35:27.842140', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-10 11:35:31.995170', '/myapp/admin/tag/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-10 11:35:32.037164', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-10 11:35:42.103096', '/myapp/admin/tag/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-10 11:35:42.153122', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-10 11:35:46.610600', '/myapp/admin/tag/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-10 11:35:46.664519', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-10 11:35:50.776566', '/myapp/admin/tag/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-10 11:35:50.818348', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-10 11:35:59.598950', '/myapp/admin/tag/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-10 11:35:59.628703', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-10 11:36:05.944636', '/myapp/admin/tag/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-10 11:36:05.980445', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-10 11:36:16.630087', '/myapp/admin/tag/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-10 11:36:16.662079', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-10 11:36:20.217375', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-10 11:36:20.219002', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-10 11:36:20.222049', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-10 11:36:20.254308', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-10 11:36:32.921024', '/myapp/admin/tag/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-10 11:36:32.949552', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-10 11:36:35.601077', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-10 11:36:35.604068', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-10 11:36:35.607077', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-10 11:36:35.611078', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-10 11:36:51.717632', '/myapp/admin/tag/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-10 11:36:51.757747', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-10 11:36:54.265023', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-10 11:36:54.270105', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-10 11:36:54.267921', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-10 11:36:54.272129', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-10 11:37:50.207011', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-10 11:37:50.208051', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-10 11:37:50.209046', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-10 11:43:34.604147', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-10 11:43:34.605102', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-10 11:43:34.629624', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-10 11:43:44.916380', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-10 11:43:45.379887', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-10 11:43:45.381943', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-10 11:43:45.384458', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-10 11:44:33.932045', '/myapp/admin/thing/create', 'POST', NULL, '288');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-10 11:44:33.987557', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-10 11:44:36.110334', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-10 11:45:03.544619', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-10 11:45:03.637297', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-10 11:45:12.966558', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-10 11:45:13.043792', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-10 11:45:16.313834', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-10 11:45:16.800931', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-10 11:45:16.817031', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-10 11:45:16.823813', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-10 11:45:45.290749', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-10 11:45:45.297750', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-10 11:45:45.319722', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-10 11:46:13.570155', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-10 11:46:13.574338', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-10 11:46:13.586970', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-10 11:46:23.838014', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-10 11:46:23.844526', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-10 11:46:23.860533', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-10 11:46:31.888334', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-10 11:46:31.890328', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-10 11:46:31.897025', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-10 11:46:36.753999', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-10 11:46:36.764623', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-10 11:46:36.779268', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-10 11:49:50.529813', '/myapp/admin/thing/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-10 11:49:50.610225', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-10 11:49:52.337145', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-10 11:49:52.339186', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-10 11:49:52.341293', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-10 11:49:52.352995', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-10 11:49:52.375084', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-10 11:49:52.395090', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-10 11:50:07.292405', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-10 11:50:07.392576', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-10 11:50:10.625517', '/myapp/admin/thing/delete', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-10 11:50:10.698995', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-10 11:50:11.965769', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-10 11:50:12.714330', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-10 11:50:13.366510', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-10 11:50:23.879919', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-10 11:50:24.635440', '/myapp/admin/notice/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-10 11:50:25.831807', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-10 11:50:35.078487', '/myapp/admin/ad/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-10 11:50:35.110409', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-10 11:50:35.138392', '/upload/ad/1686369031223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-10 11:50:36.691391', '/myapp/admin/notice/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-10 11:50:57.830115', '/myapp/admin/notice/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-10 11:50:57.874090', '/myapp/admin/notice/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-10 11:51:00.854834', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-10 11:51:00.896671', '/upload/ad/1686369031223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-10 11:51:04.534660', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-10 11:51:04.562655', '/upload/ad/1686369031223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-10 11:51:10.174338', '/myapp/admin/loginLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-10 11:51:10.703591', '/myapp/admin/opLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-10 11:51:11.559600', '/myapp/admin/errorLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-10 11:52:13.584978', '/myapp/admin/opLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-10 11:52:18.726769', '/myapp/admin/errorLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-10 11:52:20.234558', '/myapp/admin/loginLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-10 11:52:21.427700', '/myapp/admin/opLog/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-10 11:52:21.966554', '/myapp/admin/loginLog/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-10 11:52:30.461426', '/myapp/admin/overview/count', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-10 11:52:30.932958', '/myapp/admin/overview/count', 'GET', NULL, '513');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-10 11:52:33.171434', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1030');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-10 11:52:33.736889', '/myapp/admin/overview/count', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-10 11:53:49.264672', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-10 11:54:35.908457', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-10 11:55:08.111157', '/myapp/admin/overview/count', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-10 11:55:15.870138', '/myapp/admin/overview/count', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-10 11:55:24.456130', '/myapp/admin/overview/count', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-10 11:55:25.000894', '/myapp/admin/overview/count', 'GET', NULL, '546');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-10 11:55:28.369493', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1022');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-10 11:56:04.212943', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-10 11:56:07.811847', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-10 11:56:07.835943', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-10 11:56:07.839018', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-10 11:56:08.547848', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-10 11:56:09.082575', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-10 11:56:11.490973', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-10 11:56:12.507743', '/myapp/admin/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-10 11:56:13.200046', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-10 11:56:33.460208', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-10 11:56:33.775278', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-10 11:56:33.776296', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-10 11:56:33.785828', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-10 11:56:48.827722', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-10 11:56:48.835676', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-10 11:56:48.846667', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-10 11:56:51.132172', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-10 11:56:51.134173', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-10 11:56:51.148769', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-10 11:57:05.764994', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-10 11:57:05.768482', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-10 11:57:05.772525', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-10 11:57:07.201967', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-10 11:57:07.840367', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-10 11:57:07.843856', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-10 11:57:07.847965', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-10 11:57:09.230437', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-10 11:57:09.581873', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-10 11:57:10.866345', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-10 11:57:10.867366', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-10 11:57:10.874603', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-10 11:57:11.994472', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-10 11:57:12.624023', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-10 11:57:12.627023', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-10 11:57:12.673215', '/myapp/admin/tag/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-10 11:57:14.065237', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-10 11:57:17.693496', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-10 11:57:36.233342', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-10 11:57:36.237139', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-10 11:57:36.239717', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-10 11:57:36.247772', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-10 11:58:39.095647', '/myapp/admin/thing/create', 'POST', NULL, '228');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-10 11:58:39.175187', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-10 11:59:16.820571', '/myapp/admin/thing/create', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-10 11:59:16.930329', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-10 11:59:20.244531', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-10 11:59:20.247529', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-10 11:59:20.249528', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-10 11:59:20.275990', '/myapp/index/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-10 11:59:20.289996', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-10 11:59:20.290996', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-10 11:59:20.298005', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-10 11:59:20.312035', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-10 14:03:41.993185', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-10 14:03:41.994185', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-10 14:03:41.996185', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-10 14:03:42.008184', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-10 14:03:42.025183', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-10 14:03:42.026184', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-10 14:03:42.026184', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-10 14:03:42.026184', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-10 14:04:37.744176', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-10 14:04:39.055849', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-10 14:04:39.979211', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-10 14:04:40.579458', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-10 14:04:42.182247', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-10 14:04:44.251605', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-10 14:04:44.755116', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-10 14:04:45.891787', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-10 14:04:46.751832', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-10 14:12:35.071468', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-10 14:12:35.076445', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-10 14:12:35.080455', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-10 14:12:35.099878', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-10 14:13:22.918990', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-10 14:13:22.924989', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-10 14:14:26.822853', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-10 14:14:26.837860', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-10 14:14:26.844868', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-10 14:14:26.849931', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-10 14:14:33.317456', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-10 14:14:33.340001', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-10 14:14:33.362011', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-10 14:14:33.367985', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-10 14:15:58.368888', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-10 14:15:58.376886', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-10 14:15:58.385560', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-10 14:15:58.388560', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-10 14:16:55.691621', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-10 14:17:04.932049', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-10 14:17:04.934049', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-10 14:17:04.935064', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-10 14:17:04.944614', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-10 14:17:07.396890', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-10 14:17:07.401889', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-10 14:17:07.407894', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-10 14:17:07.429900', '/myapp/index/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-10 14:17:07.459959', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-10 14:17:07.460968', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-10 14:17:07.461959', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-10 14:17:16.142751', '/myapp/index/user/register', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-10 14:17:18.864568', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-10 14:17:18.926144', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-10 14:17:18.930146', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-10 14:17:18.934143', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-10 14:17:18.957990', '/myapp/index/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-10 14:17:23.288668', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-10 14:17:23.298670', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-10 14:17:23.303670', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-10 14:17:23.333670', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-10 14:17:26.541265', '/myapp/index/comment/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-10 14:17:26.576943', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-10 14:17:28.226427', '/myapp/index/comment/like', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-10 14:17:28.258474', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-10 14:17:28.676681', '/myapp/index/comment/like', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-10 14:17:28.713645', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-10 14:17:29.723926', '/myapp/index/thing/addWishUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-10 14:17:29.769389', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-10 14:17:30.086455', '/myapp/index/thing/addCollectUser', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-10 14:17:30.141436', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-10 14:21:07.525515', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-10 14:21:07.534881', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-10 14:21:07.538188', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-10 14:21:07.543025', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-10 14:21:58.414078', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-10 14:21:58.423105', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-10 14:21:58.427096', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-10 14:21:58.431096', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-10 14:22:25.342567', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-10 14:22:25.359145', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-10 14:22:25.362216', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-10 14:22:25.371408', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-10 14:23:16.475893', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-10 14:23:16.496894', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-10 14:23:16.499894', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-10 14:23:16.514893', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-10 14:23:20.188438', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-10 14:23:20.206605', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-10 14:23:20.213605', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-10 14:23:20.220193', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-10 14:23:20.254748', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-10 14:23:36.529377', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-10 14:23:36.538014', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-10 14:23:36.544954', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-10 14:23:36.547947', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-10 14:23:51.435613', '/myapp/index/thing/addWishUser', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-10 14:23:51.498814', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-10 14:23:51.892089', '/myapp/index/thing/addCollectUser', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-10 14:23:51.936759', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-10 14:24:23.843494', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-10 14:24:23.857508', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-10 14:24:23.863055', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-10 14:24:23.868054', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-10 14:26:09.621039', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-10 14:26:09.640158', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-10 14:26:09.650440', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-10 14:26:09.651456', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-10 14:26:09.666669', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-10 14:26:09.679029', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-10 14:26:09.680045', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-10 14:26:09.681065', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-10 14:26:40.666810', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-10 14:26:40.675810', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-10 14:26:40.687804', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-10 14:26:40.690822', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-10 14:27:13.100825', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-10 14:27:13.114742', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-10 14:27:13.121781', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-10 14:27:13.125317', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-10 14:27:39.703505', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-10 14:27:40.152603', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-10 14:27:42.442885', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-10 14:27:43.292896', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-10 14:28:03.804099', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-10 14:28:04.416884', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-10 14:28:05.700240', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-10 14:28:06.453651', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-10 14:28:10.376074', '/myapp/index/user/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-10 14:28:10.425231', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-10 14:28:12.489781', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-10 14:28:20.550955', '/myapp/index/user/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-10 14:28:20.570894', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-10 14:28:21.778775', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-10 14:28:23.232506', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-10 14:28:25.483442', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-10 14:28:26.291682', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-10 14:28:29.581247', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-10 14:28:54.160628', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-10 14:28:54.703886', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-10 14:28:55.359527', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-10 14:28:56.526904', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-10 14:28:56.528904', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-10 14:28:56.539001', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-10 14:28:56.547922', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-10 14:30:39.527026', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-10 14:30:39.534578', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-10 14:30:39.543073', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-10 14:30:39.545396', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-10 14:30:46.758477', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-10 14:30:46.762487', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-10 14:30:46.772474', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-10 14:30:46.778474', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-10 14:31:33.167555', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-10 14:31:33.169555', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-10 14:31:33.170547', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-10 14:31:33.181558', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-10 14:31:41.944601', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-10 14:31:41.946673', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-10 14:31:41.950893', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-10 14:31:41.964086', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-10 14:31:41.988320', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-10 14:31:41.988320', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-10 14:31:41.989402', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-10 14:31:41.998278', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-10 14:33:00.728206', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-10 14:33:00.737193', '/myapp/index/notice/list_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-10 14:33:00.745180', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-10 14:33:05.663923', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-10 14:33:05.664917', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-10 14:33:05.669916', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-10 14:33:05.680924', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-10 14:33:15.579069', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-10 14:33:15.583061', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-10 14:33:15.604070', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-10 14:33:58.890824', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-10 14:33:58.894063', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-10 14:33:58.898904', '/myapp/index/notice/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-10 14:33:58.920295', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-10 14:33:58.941705', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-10 14:33:58.941705', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-10 14:33:58.941705', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-10 14:33:58.941705', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-10 14:34:21.651767', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-10 14:34:21.653766', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-10 14:34:21.654766', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-10 14:34:21.674775', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-10 14:34:21.698018', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-10 14:34:21.699027', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-10 14:34:21.699027', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-10 14:34:21.700045', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-10 14:34:25.980146', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-10 14:34:25.982146', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-10 14:34:25.985147', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-10 14:34:26.006166', '/myapp/index/notice/list_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-10 14:34:26.029950', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-10 14:34:26.030474', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-10 14:34:26.030996', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-10 14:34:26.031537', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-10 14:34:54.501391', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-10 14:34:54.532164', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-10 14:36:24.385948', '/myapp/index/user/login', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-10 14:36:24.426983', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-10 14:36:24.429983', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-10 14:36:24.433983', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-10 14:36:24.459081', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-10 14:36:30.643524', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-10 14:36:30.645516', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-10 14:36:30.658515', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-10 14:36:30.662515', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-10 14:36:34.604294', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-10 14:36:34.607910', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-10 14:36:34.611545', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-10 14:36:34.631812', '/myapp/index/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-10 14:37:50.721058', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-10 14:38:04.909636', '/myapp/index/notice/list_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-10 14:38:29.448898', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-10 14:38:29.454950', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-10 14:38:29.470509', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-10 14:38:29.476539', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-10 14:40:45.874450', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-10 14:40:45.878630', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-10 14:40:45.885749', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-10 14:40:45.891970', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-10 14:40:47.473018', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-10 14:40:49.266591', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-10 14:40:51.219034', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-10 14:44:39.375417', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-10 14:44:39.380418', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-10 14:44:39.399417', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-10 14:45:10.538124', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-10 14:45:12.845283', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-10 14:45:12.848283', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-10 14:45:12.862283', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-10 14:45:12.865282', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-10 14:46:13.682003', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-10 14:46:13.686634', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-10 14:57:02.990718', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-10 14:57:03.905894', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-10 14:57:03.906895', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-10 14:57:03.917904', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-10 14:57:03.918900', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-10 14:58:06.463264', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-10 14:58:06.485460', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-10 14:58:06.487534', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-10 14:58:06.493775', '/myapp/index/thing/listUserThing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-10 14:58:06.507962', '/myapp/index/thing/listUserThing', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-10 14:59:09.828187', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-10 14:59:09.830186', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-10 14:59:09.832630', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-10 14:59:09.843634', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-10 14:59:09.846643', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-10 14:59:32.666332', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-10 14:59:32.669325', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-10 14:59:32.684333', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-10 14:59:32.685332', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-10 14:59:32.687323', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-10 15:00:34.752412', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-10 15:00:34.758604', '/myapp/index/thing/listUserThing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-10 15:00:52.623472', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-10 15:00:52.640911', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-10 15:01:18.338773', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-10 15:01:18.342774', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-10 15:02:00.728440', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-10 15:02:00.732544', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-10 15:02:00.753571', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-10 15:02:59.416698', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-10 15:02:59.424155', '/myapp/index/thing/listUserThing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-10 15:02:59.435155', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-10 15:06:32.389389', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-10 15:06:32.415410', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-10 15:06:32.428510', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-10 15:06:58.180906', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-10 15:06:58.186972', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-10 15:06:58.201707', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-10 15:09:41.945184', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-10 15:09:41.951457', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-10 15:09:41.963607', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-10 15:09:46.847208', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-10 15:09:46.859207', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-10 15:09:46.861207', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-10 15:09:46.864214', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-10 15:09:46.865228', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-10 15:09:46.909991', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-10 15:09:50.351838', '/myapp/index/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-10 15:09:50.391632', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-10 15:10:40.900651', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-10 15:10:40.902650', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-10 15:10:40.913642', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-10 15:10:40.915651', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-10 15:10:40.916643', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-10 15:10:40.961665', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-10 15:11:06.724281', '/myapp/index/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-10 15:11:06.782294', '/myapp/index/thing/listUserThing', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-10 15:11:46.264534', '/myapp/index/thing/listUserThing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-10 15:11:46.272538', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-10 15:11:46.308490', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-10 15:12:37.782251', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-10 15:12:37.783520', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-10 15:12:37.795826', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-10 15:12:40.273701', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-10 15:12:40.275700', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-10 15:12:40.281701', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-10 15:12:40.286701', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-10 15:12:40.287701', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-10 15:12:40.303811', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-10 15:12:43.041035', '/myapp/index/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-10 15:12:43.077248', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-10 15:13:11.851926', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-10 15:13:11.862933', '/myapp/index/thing/listUserThing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-10 15:13:11.877800', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-10 15:13:13.725447', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-10 15:13:13.724449', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-10 15:13:13.746439', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-10 15:13:13.748439', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-10 15:13:13.754438', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-10 15:13:13.775439', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-10 15:13:18.290169', '/myapp/index/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-10 15:13:18.349125', '/myapp/index/thing/listUserThing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-10 15:13:22.409725', '/myapp/index/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-10 15:13:22.448126', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-10 15:13:27.260725', '/myapp/index/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-10 15:13:27.303685', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-10 15:13:31.246740', '/myapp/index/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-10 15:13:31.275186', '/myapp/index/thing/listUserThing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-10 15:13:35.311871', '/myapp/index/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-10 15:13:35.353978', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-10 15:13:43.739930', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-10 15:13:44.810057', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-10 15:13:44.827327', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-10 15:13:44.863486', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-10 15:14:00.071515', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-10 15:14:01.657439', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-10 15:14:04.364495', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-10 15:14:04.382200', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-10 15:14:04.390201', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-10 15:14:19.150319', '/myapp/index/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-10 15:14:19.235035', '/myapp/index/thing/listUserThing', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-10 15:14:52.432124', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-10 15:14:52.439123', '/myapp/index/thing/listUserThing', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-10 15:14:52.452391', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-10 15:14:56.476048', '/myapp/index/thing/listUserThing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-06-10 15:14:56.488884', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-06-10 15:14:56.506182', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-06-10 15:14:56.508220', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-06-10 15:14:56.517335', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-06-10 15:14:56.530890', '/upload/cover/1686369534606.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-06-10 15:15:00.161249', '/myapp/index/thing/update', 'POST', NULL, '299');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-06-10 15:15:00.196347', '/myapp/index/thing/listUserThing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-06-10 15:15:00.217937', '/upload/cover/1686381298517.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-06-10 15:15:04.684437', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-06-10 15:15:04.687416', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-06-10 15:15:04.697422', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-06-10 15:15:04.714821', '/upload/cover/1686381298517.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-06-10 15:15:04.717828', '/upload/cover/1686381298517.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-06-10 15:15:04.739839', '/upload/cover/1686381298517.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-06-10 15:18:26.843371', '/myapp/index/thing/listUserThing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-06-10 15:18:26.845382', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-06-10 15:18:26.847812', '/myapp/index/thing/listUserThing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-06-10 15:18:26.857810', '/myapp/index/thing/listUserThing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-06-10 15:18:26.867801', '/myapp/index/thing/listUserThing', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-06-10 15:18:39.953448', '/myapp/index/thing/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-06-10 15:18:40.010058', '/myapp/index/thing/listUserThing', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-06-10 15:19:24.948578', '/myapp/index/thing/listUserThing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-06-10 15:19:24.975682', '/myapp/index/thing/listUserThing', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-06-10 15:19:26.941291', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-06-10 15:19:26.946445', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-06-10 15:19:26.958731', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-06-10 15:19:26.959993', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-06-10 15:19:26.962022', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-06-10 15:19:28.322615', '/myapp/index/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-06-10 15:19:28.376602', '/myapp/index/thing/listUserThing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-06-10 15:19:55.721290', '/myapp/index/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-06-10 15:19:55.775526', '/myapp/index/thing/listUserThing', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-06-10 15:19:55.803365', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-06-10 15:19:57.834050', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-06-10 15:20:06.340717', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-06-10 15:20:06.871199', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-06-10 15:20:13.904893', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-06-10 15:20:13.907834', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-06-10 15:20:13.929349', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-06-10 15:20:13.931317', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-06-10 15:20:33.754219', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-06-10 15:20:33.760535', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-06-10 15:20:33.775560', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-06-10 15:20:33.794587', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-06-10 15:20:33.814583', '/upload/cover/1686369498575.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-06-10 15:20:33.817607', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-06-10 15:20:33.829265', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-06-10 15:28:13.735645', '/myapp/index/user/register', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-06-10 15:28:16.421807', '/myapp/index/user/login', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-06-10 15:28:16.485430', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-06-10 15:28:16.496425', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-06-10 15:28:16.501429', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-06-10 15:28:16.520586', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-06-10 15:29:03.219821', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-06-10 15:29:06.122700', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-06-10 15:29:06.124698', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-06-10 15:29:06.130698', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-06-10 15:29:06.140091', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-06-10 15:29:06.168862', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-06-10 15:29:06.169861', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-06-10 15:29:06.169861', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-06-10 15:29:06.169861', '/upload/cover/1686368636971.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-06-10 15:29:06.878828', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-06-10 15:29:06.882926', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-06-10 15:29:06.887302', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-06-10 15:29:06.888321', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-06-10 15:29:17.413393', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-06-10 15:29:19.414756', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-06-10 15:29:19.417756', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-06-10 15:29:19.424881', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-06-10 15:29:19.441140', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-06-10 15:29:20.204294', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-06-10 15:29:20.207292', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-06-10 15:29:20.227967', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-06-10 15:29:20.237961', '/myapp/index/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-06-10 15:29:20.987408', '/myapp/index/thing/listUserThing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-06-10 15:29:20.989408', '/myapp/index/thing/listUserThing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-06-10 15:29:20.993410', '/myapp/index/thing/listUserThing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-06-10 15:29:20.997409', '/myapp/index/thing/listUserThing', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-06-10 15:29:20.998407', '/myapp/index/thing/listUserThing', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-06-10 15:29:27.114912', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-06-10 15:29:29.613729', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-06-10 15:29:29.621729', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-06-10 15:29:29.645729', '/myapp/index/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-06-10 15:29:29.648731', '/myapp/index/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-06-10 15:29:30.979238', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-06-10 15:29:30.990262', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-06-10 15:29:30.998691', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-06-10 15:29:31.007346', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-06-10 15:29:54.355319', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-06-10 15:29:54.420119', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-06-10 15:29:54.868342', '/myapp/index/thing/addCollectUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-06-10 15:29:54.931332', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-06-10 15:29:57.176698', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-06-10 15:29:57.188690', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-06-10 15:29:57.191689', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-06-10 15:29:57.219849', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-06-10 15:29:58.983757', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-06-10 15:29:58.996459', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-06-10 15:29:59.006467', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-06-10 15:29:59.008471', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-06-10 15:30:04.672810', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-06-10 15:30:04.679813', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-06-10 15:30:08.599930', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-06-10 15:30:08.643443', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-06-10 15:30:10.976651', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-06-10 15:30:10.987387', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-06-10 15:30:11.003935', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-06-10 15:30:11.009326', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-06-10 15:30:14.210910', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-06-10 15:30:14.215130', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-06-10 15:30:14.218683', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-06-10 15:30:14.240046', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-06-10 15:30:14.241067', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-06-10 15:30:18.777889', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-06-10 15:30:19.558879', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-06-10 15:30:20.467887', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-06-10 15:30:21.151943', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-06-10 15:30:21.786049', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-06-10 15:30:22.659244', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-06-10 15:30:23.812872', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-06-10 15:30:24.431948', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-06-10 15:30:24.899079', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-06-10 15:30:25.429487', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-06-10 15:30:26.628449', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-06-10 15:30:32.212033', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-06-10 15:30:32.226088', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-06-10 15:30:32.241557', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-06-10 15:30:47.216244', '/myapp/admin/adminLogin', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-06-10 15:30:47.406323', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-06-10 15:30:47.407325', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-06-10 15:30:47.476784', '/myapp/admin/tag/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-06-10 15:30:54.603779', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-06-10 15:30:58.269999', '/myapp/admin/thing/delete', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-06-10 15:31:09.078148', '/myapp/admin/thing/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-06-10 15:31:13.333821', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-06-10 15:31:16.847746', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-06-10 15:31:19.390770', '/myapp/admin/classification/delete', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-06-10 15:31:22.223707', '/myapp/admin/classification/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-06-10 15:31:24.107771', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-06-10 15:31:26.570136', '/myapp/admin/tag/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-06-10 15:31:28.241922', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-06-10 15:31:29.661447', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-06-10 15:31:30.413885', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-06-10 15:31:34.340751', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-06-10 15:31:34.358473', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-06-10 15:31:34.385184', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-06-10 15:31:34.388822', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-06-10 15:31:44.508398', '/myapp/index/comment/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-06-10 15:31:44.526845', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-06-10 15:31:47.207032', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-06-10 15:31:47.230643', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-06-10 15:31:50.674439', '/myapp/admin/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-06-10 15:32:35.708113', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-06-10 15:32:40.065038', '/myapp/admin/comment/delete', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-06-10 15:32:41.236883', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-06-10 15:32:44.228871', '/myapp/admin/user/delete', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-06-10 15:32:50.198017', '/myapp/admin/user/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-06-10 15:32:54.999732', '/myapp/admin/user/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-06-10 15:32:58.206797', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-06-10 15:32:58.237420', '/upload/ad/1686369031223.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-06-10 15:32:58.983701', '/myapp/admin/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-06-10 15:33:02.357829', '/myapp/admin/loginLog/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-06-10 15:33:02.907805', '/myapp/admin/opLog/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-06-10 15:33:05.201628', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-06-10 15:33:16.363049', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-06-10 15:33:16.367096', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-06-10 15:33:16.372897', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-06-10 15:33:16.387717', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-06-10 15:33:16.423790', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-06-10 15:33:18.698252', '/myapp/admin/overview/count', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-06-10 15:34:17.774912', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-06-10 15:34:17.809160', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-06-10 15:34:17.827987', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-06-10 15:34:17.829988', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-06-10 15:34:20.143208', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-06-10 15:34:26.990423', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1103');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-06-10 15:35:03.458887', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-06-10 15:35:05.161583', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1035');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-06-10 15:35:13.894839', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-06-10 15:35:13.899414', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-06-10 15:35:13.928139', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-06-10 15:35:16.481890', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-06-10 15:35:24.167039', '/myapp/admin/adminLogin', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-06-10 15:35:27.106685', '/myapp/admin/adminLogin', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-06-10 15:35:27.237469', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-06-10 15:35:27.241473', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-06-10 15:35:27.272024', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-06-10 15:37:15.041576', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-06-10 15:37:15.064353', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-06-10 15:37:15.092164', '/myapp/admin/tag/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-06-10 15:38:05.905218', '/myapp/admin/thing/create', 'POST', NULL, '197');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-06-10 15:38:06.011489', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-06-10 15:38:07.954240', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-06-10 15:38:16.374129', '/upload/cover/1686382652823.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-06-10 15:38:19.676596', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-06-10 15:38:19.765154', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-06-10 15:38:21.997458', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-06-10 15:38:22.000458', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-06-10 15:38:22.004459', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-06-10 15:38:22.034463', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-06-10 15:38:22.061770', '/upload/cover/1686382652823.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-06-10 15:38:24.441060', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-06-10 15:38:24.471942', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-06-10 15:38:24.478161', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-06-10 15:38:24.484579', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-06-10 15:38:24.490780', '/upload/cover/1686382652823.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-06-10 15:38:56.286842', '/myapp/admin/thing/create', 'POST', NULL, '100');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-06-10 15:38:56.395162', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-06-10 15:39:34.793734', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-06-10 15:39:34.935418', '/myapp/admin/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-06-10 15:40:10.106238', '/myapp/admin/thing/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-06-10 15:40:10.257726', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-06-10 15:40:52.545208', '/myapp/admin/thing/create', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-06-10 15:40:52.658983', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-06-10 15:41:27.401146', '/myapp/admin/thing/create', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-06-10 15:41:27.508137', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-06-10 15:41:30.355977', '/myapp/index/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-06-10 15:41:30.358368', '/myapp/index/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-06-10 15:41:30.368431', '/myapp/index/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-06-10 15:41:30.405507', '/myapp/index/tag/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-06-10 15:41:30.442560', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-06-10 15:41:30.454970', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-06-10 15:41:30.454970', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-06-10 15:41:30.454970', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-06-10 15:41:30.458385', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-06-10 15:41:30.471110', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-06-10 15:41:43.706128', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-06-10 15:41:43.894124', '/myapp/admin/thing/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-06-10 15:41:45.975807', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-06-10 15:41:45.977816', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-06-10 15:41:45.987090', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-06-10 15:41:46.013020', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-06-10 15:41:46.037625', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-06-10 15:41:46.037625', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-06-10 15:41:46.037625', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-06-10 15:41:46.038977', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-06-10 15:41:46.040401', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-06-10 15:42:05.847836', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-06-10 15:42:06.403239', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-06-10 15:42:07.165882', '/myapp/index/thing/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-06-10 15:42:07.796103', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-06-10 15:42:08.273455', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-06-10 15:42:08.730695', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-06-10 15:42:57.581648', '/myapp/admin/thing/create', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-06-10 15:42:57.793462', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-06-10 15:43:28.011194', '/myapp/admin/thing/create', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-06-10 15:43:28.139111', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-06-10 15:44:00.486645', '/myapp/admin/thing/create', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-06-10 15:44:00.718652', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-06-10 15:44:37.964203', '/myapp/admin/thing/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-06-10 15:44:38.086238', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-06-10 15:45:16.766687', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-06-10 15:45:17.013293', '/myapp/admin/thing/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-06-10 15:45:19.208131', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-06-10 15:45:19.218076', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-06-10 15:45:19.228085', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-06-10 15:45:19.291009', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-06-10 15:45:19.330885', '/upload/cover/1686382652823.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-06-10 15:45:19.332879', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-06-10 15:45:19.334885', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-06-10 15:45:19.336913', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-06-10 15:45:19.338921', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-06-10 15:45:19.339882', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-06-10 15:45:19.350883', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-06-10 15:45:19.352906', '/upload/cover/1686382989770.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-06-10 15:45:19.358905', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-06-10 15:45:19.365887', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-06-10 15:45:19.366888', '/upload/cover/1686383023502.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-06-10 15:45:19.378421', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-06-10 15:45:30.089265', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-06-10 15:45:30.656020', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-06-10 15:45:31.575811', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-06-10 15:45:33.387866', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-06-10 15:45:33.806574', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-06-10 15:45:35.804668', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-06-10 15:45:36.624897', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-06-10 15:45:37.514791', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-06-10 15:45:38.712245', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-06-10 15:45:39.399106', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-06-10 15:45:41.147231', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-06-10 15:45:41.611818', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-06-10 15:45:43.111529', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-06-10 15:45:55.802278', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-06-10 15:45:55.909339', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-06-10 15:45:58.346484', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-06-10 15:45:58.349699', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-06-10 15:45:58.351042', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-06-10 15:45:58.408227', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-06-10 15:45:58.432259', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-06-10 15:45:58.432259', '/upload/cover/1686383023502.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-06-10 15:45:58.432259', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-06-10 15:45:58.433290', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-06-10 15:45:58.435252', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-06-10 15:45:58.444252', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-06-10 15:45:58.449253', '/upload/cover/1686382828553.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-06-10 15:45:58.450253', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-06-10 15:45:58.450253', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-06-10 15:45:58.451267', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-06-10 15:45:58.457278', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-06-10 15:45:58.899399', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-06-10 15:46:00.229656', '/myapp/index/thing/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-06-10 15:46:10.932446', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-06-10 15:46:10.951756', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-06-10 15:46:10.957979', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-06-10 15:46:10.987309', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-06-10 15:46:11.012847', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-06-10 15:46:12.334565', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-06-10 15:46:12.393152', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-06-10 15:46:12.672514', '/myapp/index/thing/addCollectUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-06-10 15:46:12.732185', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-06-10 15:46:19.358439', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-06-10 15:46:19.404719', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-06-10 15:46:25.847207', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-06-10 15:46:26.300717', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-06-10 15:46:26.998531', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-06-10 15:46:27.450787', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-06-10 15:46:59.373661', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-06-10 15:46:59.415004', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-06-10 15:46:59.416005', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-06-10 15:46:59.418006', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-06-10 15:46:59.428018', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-06-10 15:46:59.429016', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-06-10 15:47:00.542596', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-06-10 15:47:01.590324', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-06-10 15:47:01.637725', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-06-10 15:47:02.452890', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-06-10 15:47:03.263265', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-06-10 15:47:03.705339', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-06-10 15:47:03.730856', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-06-10 15:47:03.738844', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-06-10 15:47:03.740851', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-06-10 15:47:04.110516', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-06-10 15:47:04.544782', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2023-06-10 15:47:05.145333', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2023-06-10 15:47:06.321164', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2023-06-10 15:47:07.104024', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2023-06-10 15:47:07.505199', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2023-06-10 15:47:07.801730', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2023-06-10 15:47:16.338957', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2023-06-10 15:47:16.554952', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2023-06-10 15:47:23.177835', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2023-06-10 15:47:23.455411', '/myapp/admin/thing/list', 'GET', NULL, '240');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2023-06-10 15:47:34.488979', '/upload/cover/1686383023502.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2023-06-10 15:47:49.374966', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2023-06-10 15:47:49.591462', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2023-06-10 15:47:52.509291', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2023-06-10 15:47:52.512289', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2023-06-10 15:47:52.519288', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2023-06-10 15:47:52.573289', '/myapp/index/tag/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2023-06-10 15:47:52.616841', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2023-06-10 15:47:52.616841', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2023-06-10 15:47:52.616841', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2023-06-10 15:47:52.617840', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2023-06-10 15:47:52.617840', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2023-06-10 15:47:52.630841', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2023-06-10 15:47:52.639832', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2023-06-10 15:47:52.660901', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2023-06-10 15:47:52.661909', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2023-06-10 15:47:52.664833', '/upload/cover/1686382828553.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2023-06-10 15:47:52.665832', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2023-06-10 15:47:52.669833', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2023-06-10 15:47:57.731073', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2023-06-10 15:47:57.755075', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2023-06-10 15:47:57.785084', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2023-06-10 15:47:57.807654', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2023-06-10 15:47:57.809558', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2023-06-10 15:48:02.320061', '/myapp/index/thing/addWishUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2023-06-10 15:48:02.389122', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2023-06-10 15:48:02.742641', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2023-06-10 15:48:02.794730', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2023-06-10 15:48:19.406051', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2023-06-10 15:48:19.411169', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2023-06-10 15:48:19.421683', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2023-06-10 15:48:19.451299', '/myapp/index/classification/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2023-06-10 15:48:19.473303', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2023-06-10 15:48:19.474299', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2023-06-10 15:48:23.137330', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2023-06-10 15:48:23.143975', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2023-06-10 15:48:23.175176', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2023-06-10 15:48:23.180551', '/myapp/index/thing/getWishThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2023-06-10 15:48:28.955240', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2023-06-10 15:48:29.689841', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2023-06-10 15:48:30.745764', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2023-06-10 15:48:30.748766', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2023-06-10 15:48:30.752767', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2023-06-10 15:48:30.822550', '/myapp/index/classification/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2023-06-10 15:48:55.056764', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2023-06-10 15:48:55.070770', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2023-06-10 15:48:55.107764', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2023-06-10 15:48:55.132769', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2023-06-10 15:48:55.154907', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2023-06-10 15:48:55.180320', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2023-06-10 15:48:55.180320', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2023-06-10 15:48:55.180320', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2023-06-10 15:48:56.744558', '/myapp/index/thing/addWishUser', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2023-06-10 15:48:56.816300', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2023-06-10 15:48:57.082184', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2023-06-10 15:48:57.133858', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2023-06-10 15:49:01.135227', '/myapp/admin/overview/count', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2023-06-10 15:49:06.729545', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2023-06-10 15:49:06.741371', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2023-06-10 15:49:06.767399', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2023-06-10 15:49:06.797209', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2023-06-10 15:49:06.826003', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2023-06-10 15:49:06.840926', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2023-06-10 15:49:12.890976', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2023-06-10 15:49:12.913988', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2023-06-10 15:49:12.932988', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2023-06-10 15:49:12.962501', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2023-06-10 15:49:16.811223', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2023-06-10 15:49:23.588495', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2023-06-10 15:49:23.590495', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2023-06-10 15:49:23.608503', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2023-06-10 15:49:23.666614', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2023-06-10 15:49:23.687688', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2023-06-10 15:49:23.702369', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2023-06-10 15:49:24.722249', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2023-06-10 15:49:24.724546', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2023-06-10 15:49:24.766168', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2023-06-10 15:49:24.795683', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2023-06-10 15:49:24.902232', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2023-06-10 15:49:24.919225', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2023-06-10 15:49:24.933226', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2023-06-10 15:49:24.990781', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2023-06-10 15:49:25.074879', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2023-06-10 15:49:25.090878', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2023-06-10 15:49:25.097601', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2023-06-10 15:49:25.125568', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2023-06-10 15:49:25.232762', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2023-06-10 15:49:25.247381', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2023-06-10 15:49:25.263397', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2023-06-10 15:49:25.313669', '/myapp/index/comment/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2023-06-10 15:49:25.785702', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2023-06-10 15:49:25.796635', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2023-06-10 15:49:25.810640', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2023-06-10 15:49:25.857290', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2023-06-10 15:49:25.946317', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2023-06-10 15:49:25.951315', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2023-06-10 15:49:25.973315', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2023-06-10 15:49:26.002089', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2023-06-10 15:49:26.140816', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2023-06-10 15:49:26.164824', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2023-06-10 15:49:26.174348', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2023-06-10 15:49:26.234324', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2023-06-10 15:49:26.342302', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2023-06-10 15:49:26.367304', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2023-06-10 15:49:26.378845', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2023-06-10 15:49:26.435948', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2023-06-10 15:49:26.613241', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2023-06-10 15:49:26.640255', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2023-06-10 15:49:26.657250', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2023-06-10 15:49:26.674768', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2023-06-10 15:49:26.753806', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2023-06-10 15:49:26.771324', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2023-06-10 15:49:26.783719', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2023-06-10 15:49:26.825805', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2023-06-10 15:49:26.936889', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2023-06-10 15:49:26.983854', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2023-06-10 15:49:26.985852', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2023-06-10 15:49:27.002328', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2023-06-10 15:49:27.142696', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2023-06-10 15:49:27.156178', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2023-06-10 15:49:27.189731', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2023-06-10 15:49:27.217694', '/myapp/index/comment/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2023-06-10 15:49:27.314800', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2023-06-10 15:49:27.327801', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2023-06-10 15:49:27.346797', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2023-06-10 15:49:27.366802', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2023-06-10 15:49:27.548145', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2023-06-10 15:49:27.562153', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2023-06-10 15:49:27.566153', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2023-06-10 15:49:27.591665', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2023-06-10 15:49:27.784668', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2023-06-10 15:49:27.793935', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2023-06-10 15:49:27.810974', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2023-06-10 15:49:27.820976', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2023-06-10 15:49:27.858954', '/upload/cover/1686382989770.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2023-06-10 15:49:31.863351', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2023-06-10 15:49:38.980999', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2023-06-10 15:49:38.982667', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2023-06-10 15:49:38.984060', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2023-06-10 15:49:39.033053', '/myapp/index/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2023-06-10 15:49:39.069517', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2023-06-10 15:49:39.070518', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2023-06-10 15:49:39.070518', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2023-06-10 15:49:39.071549', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2023-06-10 15:49:39.071549', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2023-06-10 15:49:39.072536', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2023-06-10 15:49:39.089089', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2023-06-10 15:49:39.098061', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2023-06-10 15:49:42.393930', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2023-06-10 15:49:42.400839', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2023-06-10 15:49:42.428405', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2023-06-10 15:49:42.488048', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2023-06-10 15:49:43.405219', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2023-06-10 15:49:43.409272', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2023-06-10 15:49:43.444405', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2023-06-10 15:49:43.511367', '/myapp/index/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2023-06-10 15:49:44.161584', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2023-06-10 15:49:44.173594', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2023-06-10 15:49:44.188107', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2023-06-10 15:49:44.218662', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2023-06-10 15:49:44.321368', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2023-06-10 15:49:44.327369', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2023-06-10 15:49:44.342378', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2023-06-10 15:49:44.385921', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2023-06-10 15:49:44.534296', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2023-06-10 15:49:44.577691', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2023-06-10 15:49:44.605233', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2023-06-10 15:49:44.626232', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2023-06-10 15:49:46.728183', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2023-06-10 15:49:46.735189', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2023-06-10 15:49:46.739189', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2023-06-10 15:49:46.763888', '/myapp/index/thing/detail', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2023-06-10 15:49:47.247605', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2023-06-10 15:49:47.267337', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2023-06-10 15:49:47.268359', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2023-06-10 15:49:47.308756', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2023-06-10 15:49:47.553080', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2023-06-10 15:49:47.601715', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2023-06-10 15:49:47.609761', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2023-06-10 15:49:47.630195', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2023-06-10 15:49:47.720863', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2023-06-10 15:49:47.734862', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2023-06-10 15:49:47.754863', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2023-06-10 15:49:47.781401', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2023-06-10 15:49:47.860942', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2023-06-10 15:49:47.868994', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2023-06-10 15:49:47.893662', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2023-06-10 15:49:47.917875', '/myapp/index/comment/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2023-06-10 15:49:47.949391', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2023-06-10 15:49:48.068078', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2023-06-10 15:49:48.084079', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2023-06-10 15:49:48.105609', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2023-06-10 15:49:48.157613', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2023-06-10 15:49:48.310341', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2023-06-10 15:49:48.340078', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2023-06-10 15:49:48.355075', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2023-06-10 15:49:48.405968', '/myapp/index/comment/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2023-06-10 15:49:48.492370', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2023-06-10 15:49:48.524374', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2023-06-10 15:49:48.527370', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2023-06-10 15:49:48.576584', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2023-06-10 15:49:48.667185', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2023-06-10 15:49:48.671187', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2023-06-10 15:49:48.689714', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2023-06-10 15:49:48.739197', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2023-06-10 15:49:48.910759', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2023-06-10 15:49:48.939752', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2023-06-10 15:49:48.937751', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2023-06-10 15:49:48.963751', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2023-06-10 15:49:48.976762', '/upload/cover/1686383098285.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2023-06-10 15:49:55.241221', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2023-06-10 15:49:55.243362', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2023-06-10 15:49:55.247663', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2023-06-10 15:49:55.315693', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2023-06-10 15:49:55.337805', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2023-06-10 15:49:55.338752', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2023-06-10 15:49:57.640274', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2023-06-10 15:49:57.651273', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2023-06-10 15:49:57.654274', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2023-06-10 15:49:57.706373', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2023-06-10 15:50:01.570557', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2023-06-10 15:50:01.575560', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2023-06-10 15:50:01.638134', '/myapp/admin/tag/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2023-06-10 15:50:03.554061', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2023-06-10 15:50:09.648894', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2023-06-10 15:50:09.663844', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2023-06-10 15:50:09.670845', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2023-06-10 15:50:09.726409', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2023-06-10 15:50:09.744045', '/upload/cover/1686383058316.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2023-06-10 15:50:09.746047', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2023-06-10 15:50:12.649651', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2023-06-10 15:50:12.657706', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2023-06-10 15:50:12.684704', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2023-06-10 15:50:12.742262', '/myapp/index/comment/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2023-06-10 15:50:12.763399', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2023-06-10 15:50:12.764398', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2023-06-10 15:50:14.023802', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2023-06-10 15:50:14.032819', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2023-06-10 15:50:14.060835', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2023-06-10 15:50:14.099534', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2023-06-10 15:50:14.431520', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2023-06-10 15:50:14.434522', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2023-06-10 15:50:14.472898', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2023-06-10 15:50:14.500162', '/myapp/index/thing/detail', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2023-06-10 15:50:16.275731', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2023-06-10 15:50:49.474153', '/myapp/admin/overview/count', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2023-06-10 15:50:59.217662', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1045');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2023-06-10 15:51:00.903123', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2023-06-10 15:51:00.904606', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2023-06-10 15:51:01.033114', '/myapp/admin/classification/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2023-06-10 15:51:03.928586', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2023-06-10 15:55:03.884659', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2023-06-10 15:55:03.885634', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2023-06-10 15:55:03.946659', '/myapp/admin/tag/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2023-06-10 15:55:44.236978', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2023-06-10 15:55:44.241405', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2023-06-10 15:55:44.242405', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2023-06-10 15:55:44.277024', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2023-06-10 15:55:44.311162', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2023-06-10 15:55:44.312655', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2023-06-10 15:55:44.313730', '/upload/cover/1686383262923.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2023-06-10 15:55:44.314811', '/upload/cover/1686382960542.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2023-06-10 15:55:44.315817', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2023-06-10 15:55:44.317028', '/upload/cover/1686382868658.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2023-06-10 15:55:44.330885', '/upload/cover/1686381579098.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2023-06-10 15:55:44.331884', '/upload/cover/1686382902635.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2023-06-10 15:55:44.338915', '/upload/cover/1686382790756.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2023-06-10 15:55:44.342359', '/upload/cover/1686383153904.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2023-06-10 15:55:44.343359', '/upload/cover/1686382828553.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2023-06-10 15:55:44.344781', '/upload/cover/1686382753352.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2023-06-10 15:56:15.832959', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2023-06-10 15:56:15.847975', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2023-06-10 15:56:15.881546', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2023-06-10 15:56:15.917694', '/myapp/index/thing/detail', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2023-06-10 15:56:15.936142', '/upload/cover/1686368989472.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2023-06-10 15:56:29.354035', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2023-06-10 15:56:29.364443', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2023-06-10 15:56:29.404278', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2023-06-10 15:56:29.407388', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2023-06-10 15:56:34.356374', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2023-06-10 15:56:34.360207', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2023-06-10 15:56:34.391277', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2023-06-10 15:56:34.440906', '/myapp/index/comment/list', 'GET', NULL, '93');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '语文', '2023-06-10 11:35:27.807659');
INSERT INTO `b_tag` VALUES (2, '数学', '2023-06-10 11:35:31.991138');
INSERT INTO `b_tag` VALUES (3, '奥赛', '2023-06-10 11:35:42.097512');
INSERT INTO `b_tag` VALUES (4, '编程', '2023-06-10 11:35:46.604577');
INSERT INTO `b_tag` VALUES (5, '机器人', '2023-06-10 11:35:50.770614');
INSERT INTO `b_tag` VALUES (6, '篮球', '2023-06-10 11:35:59.594147');
INSERT INTO `b_tag` VALUES (7, '架子鼓', '2023-06-10 11:36:05.938002');
INSERT INTO `b_tag` VALUES (8, '二胡', '2023-06-10 11:36:16.624500');
INSERT INTO `b_tag` VALUES (9, '英语', '2023-06-10 11:36:32.915057');
INSERT INTO `b_tag` VALUES (10, '物理', '2023-06-10 11:36:51.712514');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT 0,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '刘老师', 'cover/1686368636971.jpeg', '擅长音乐教学11', '25元/时', '13222223333', '26', '女', '北京市海淀区颐和园路', '0', '2023-06-10 11:44:33.875410', 2, 0, 0, 0, 4, NULL);
INSERT INTO `b_thing` VALUES (2, '刘德华', 'cover/1686368989472.jpeg', '擅长小学数学教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '32', '15899999999', '25', '女', '北京市大兴区', '0', '2023-06-10 11:49:50.499932', 19, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (4, '张惠妹', 'cover/1686369498575.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '100', '18977776666', '28', '女', '济南市历城区', '0', '2023-06-10 11:58:39.068214', 2, 0, 0, 0, 2, NULL);
INSERT INTO `b_thing` VALUES (6, '范冰冰', 'cover/1686381579098.jpeg', 'ddddd', '25元/时', '18900002222', '22', '女', '青岛', '1', '2023-06-10 15:18:39.924435', 15, 0, 1, 1, 4, 3);
INSERT INTO `b_thing` VALUES (7, '萧红', 'cover/1686383153904.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '200元/时元/时', '13533332222', '25', '女', '上海市浦东新区', '0', '2023-06-10 15:38:05.869819', 1, 0, 0, 0, 6, NULL);
INSERT INTO `b_thing` VALUES (8, '张爱玲', 'cover/1686382902635.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '200元/时', '18977777777', '30', '女', '山东济南', '0', '2023-06-10 15:38:56.229121', 1, 0, 0, 0, 5, NULL);
INSERT INTO `b_thing` VALUES (9, '鲁玲玲', 'cover/1686382753352.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '100', '18900001111', '23', '女', '广东深圳', '0', '2023-06-10 15:39:34.768062', 0, 0, 0, 0, 4, NULL);
INSERT INTO `b_thing` VALUES (10, '张雪莹', 'cover/1686382790756.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '200', '13222222222', '22', '女', '陕西西安', '0', '2023-06-10 15:40:10.078968', 3, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (11, '郭晓美', 'cover/1686382828553.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '80', '13222222222', '23', '女', '河北唐山', '0', '2023-06-10 15:40:52.507497', 0, 0, 0, 0, 2, NULL);
INSERT INTO `b_thing` VALUES (12, '周晓彤', 'cover/1686382868658.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '100', '13222222222', '22', '女', '浙江杭州', '0', '2023-06-10 15:41:27.366065', 0, 0, 0, 0, 1, NULL);
INSERT INTO `b_thing` VALUES (13, '张小美', 'cover/1686382960542.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '100', '13222222222', '22', '女', '山东菏泽', '0', '2023-06-10 15:42:57.555501', 0, 0, 0, 0, 6, NULL);
INSERT INTO `b_thing` VALUES (14, '王丽丽', 'cover/1686382989770.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '90', '18977777777', '29', '女', '山东济南', '0', '2023-06-10 15:43:27.975449', 3, 0, 1, 1, 5, NULL);
INSERT INTO `b_thing` VALUES (15, '李刚', 'cover/1686383262923.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '180元/时', '18900001111', '22', '男', '山东烟台', '0', '2023-06-10 15:44:00.463457', 3, 0, 1, 1, 4, NULL);
INSERT INTO `b_thing` VALUES (16, '李小红', 'cover/1686383058316.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '25', '18943333333', '23', '女', '河北石家庄', '0', '2023-06-10 15:44:37.932955', 2, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (17, '周泽利', 'cover/1686383098285.jpeg', '擅长教学，希望大家喜欢。性格开朗，乐观向上，爱好广泛，待人真诚，热情、对工作认真负责，积极主动，能吃苦耐劳，有较强的适应环境能力，耐心。与人相处和睦融洽，乐于助人。现就读于北京大学。', '25', '14322222222', '23', '女', '河南郑州', '0', '2023-06-10 15:45:16.741886', 3, 0, 1, 1, 1, NULL);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 6, 4);
INSERT INTO `b_thing_collect` VALUES (3, 14, 4);
INSERT INTO `b_thing_collect` VALUES (4, 15, 4);
INSERT INTO `b_thing_collect` VALUES (5, 17, 4);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (51, 1, 1);
INSERT INTO `b_thing_tag` VALUES (52, 1, 2);
INSERT INTO `b_thing_tag` VALUES (2, 1, 7);
INSERT INTO `b_thing_tag` VALUES (1, 1, 10);
INSERT INTO `b_thing_tag` VALUES (4, 2, 5);
INSERT INTO `b_thing_tag` VALUES (5, 2, 6);
INSERT INTO `b_thing_tag` VALUES (3, 2, 8);
INSERT INTO `b_thing_tag` VALUES (6, 4, 3);
INSERT INTO `b_thing_tag` VALUES (7, 4, 4);
INSERT INTO `b_thing_tag` VALUES (8, 4, 5);
INSERT INTO `b_thing_tag` VALUES (9, 4, 6);
INSERT INTO `b_thing_tag` VALUES (10, 4, 7);
INSERT INTO `b_thing_tag` VALUES (11, 4, 8);
INSERT INTO `b_thing_tag` VALUES (12, 4, 9);
INSERT INTO `b_thing_tag` VALUES (13, 4, 10);
INSERT INTO `b_thing_tag` VALUES (49, 6, 1);
INSERT INTO `b_thing_tag` VALUES (50, 6, 2);
INSERT INTO `b_thing_tag` VALUES (16, 7, 8);
INSERT INTO `b_thing_tag` VALUES (17, 7, 9);
INSERT INTO `b_thing_tag` VALUES (18, 7, 10);
INSERT INTO `b_thing_tag` VALUES (19, 8, 5);
INSERT INTO `b_thing_tag` VALUES (20, 8, 6);
INSERT INTO `b_thing_tag` VALUES (21, 8, 7);
INSERT INTO `b_thing_tag` VALUES (22, 9, 3);
INSERT INTO `b_thing_tag` VALUES (23, 9, 4);
INSERT INTO `b_thing_tag` VALUES (24, 9, 5);
INSERT INTO `b_thing_tag` VALUES (27, 10, 7);
INSERT INTO `b_thing_tag` VALUES (25, 10, 8);
INSERT INTO `b_thing_tag` VALUES (26, 10, 9);
INSERT INTO `b_thing_tag` VALUES (28, 11, 5);
INSERT INTO `b_thing_tag` VALUES (29, 11, 6);
INSERT INTO `b_thing_tag` VALUES (30, 11, 7);
INSERT INTO `b_thing_tag` VALUES (33, 12, 7);
INSERT INTO `b_thing_tag` VALUES (31, 12, 8);
INSERT INTO `b_thing_tag` VALUES (32, 12, 9);
INSERT INTO `b_thing_tag` VALUES (34, 13, 9);
INSERT INTO `b_thing_tag` VALUES (35, 13, 10);
INSERT INTO `b_thing_tag` VALUES (37, 14, 5);
INSERT INTO `b_thing_tag` VALUES (38, 14, 6);
INSERT INTO `b_thing_tag` VALUES (39, 14, 7);
INSERT INTO `b_thing_tag` VALUES (36, 14, 9);
INSERT INTO `b_thing_tag` VALUES (41, 15, 5);
INSERT INTO `b_thing_tag` VALUES (42, 15, 6);
INSERT INTO `b_thing_tag` VALUES (40, 15, 8);
INSERT INTO `b_thing_tag` VALUES (44, 16, 5);
INSERT INTO `b_thing_tag` VALUES (45, 16, 7);
INSERT INTO `b_thing_tag` VALUES (43, 16, 9);
INSERT INTO `b_thing_tag` VALUES (47, 17, 5);
INSERT INTO `b_thing_tag` VALUES (48, 17, 7);
INSERT INTO `b_thing_tag` VALUES (46, 17, 8);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 6, 4);
INSERT INTO `b_thing_wish` VALUES (3, 14, 4);
INSERT INTO `b_thing_wish` VALUES (4, 15, 4);
INSERT INTO `b_thing_wish` VALUES (5, 17, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-10 11:31:00.685301', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-10 11:31:21.282023', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'dddddd222', '', NULL, NULL, NULL, NULL, '2023-06-10 14:17:16.138752', 0, 'aaa@dd.com', 1, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'daa', 'afa939adf52ddcbd204c814afcdd754a', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-10 15:28:13.719957', 0, NULL, 0, NULL, 'afa939adf52ddcbd204c814afcdd754a');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-10 11:26:10.216191');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-10 11:26:10.564771');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-10 11:26:10.648305');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-10 11:26:10.657304');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-10 11:26:10.669313');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-10 11:26:10.760888');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-10 11:26:10.822061');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-10 11:26:10.882050');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-10 11:26:10.891047');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-10 11:26:10.954584');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-10 11:26:10.960584');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-10 11:26:10.970582');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-10 11:26:11.040110');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-10 11:26:11.101114');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-10 11:26:11.159675');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-10 11:26:11.172676');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-10 11:26:11.228321');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-10 11:26:12.173341');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-06-10 11:26:12.231537');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_thing_user', '2023-06-10 14:51:26.873911');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
