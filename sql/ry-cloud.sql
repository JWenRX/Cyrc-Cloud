/*
 Navicat Premium Data Transfer

 Source Server         : ljw
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : ry-cloud

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 20/12/2021 14:04:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cygl_cy
-- ----------------------------
DROP TABLE IF EXISTS `cygl_cy`;
CREATE TABLE `cygl_cy`  (
  `cy_id` bigint(0) NOT NULL COMMENT '产业ID',
  `cy_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产业名称',
  `cy_direction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产业方向',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`cy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cygl_cy
-- ----------------------------
INSERT INTO `cygl_cy` VALUES (521226343, '基因工程产业', '生物产业方向', 'admin', '2021-12-15 15:27:04', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (773182312, '光电子材料产业', '新材料产业方向', 'admin', '2021-12-15 15:31:49', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (998212853, '电子核心产业', '新一代信息技术产业方向', 'admin', '2021-12-10 21:42:30', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1045901320, '数字创意产业', '新一代信息技术产业方向', 'admin', '2021-12-15 15:25:59', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1095808224, '航空航天装备产业', '高端装备制造产业方向', 'admin', '2021-12-17 16:38:55', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1248811901, '生物制药产业', '生物产业方向', 'admin', '2021-12-15 15:27:19', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1362257712, '智能电网产业', '新一代信息技术产业方向', 'admin', '2021-12-15 15:24:57', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1498480700, '智能制造装备产业', '高端装备制造产业方向', 'admin', '2021-12-10 21:42:11', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1717163125, '新能源汽车产业', '节能环保方向', 'admin', '2021-12-10 21:44:04', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1868797674, '高分子材料产业', '新材料产业方向', 'admin', '2021-12-15 15:30:33', NULL, NULL, 0);
INSERT INTO `cygl_cy` VALUES (1912894129, '高效节能产业', '节能环保方向', 'admin', '2021-12-09 15:46:20', 'admin', '2021-12-09 15:46:45', 0);
INSERT INTO `cygl_cy` VALUES (2073946375, '下一代信息网络产业', '新一代信息技术产业方向', 'admin', '2021-12-10 21:42:55', NULL, NULL, 0);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'cygl_cy', '产业管理', NULL, NULL, 'CyglCy', 'crud', 'com.ruoyi.cygl', 'cygl', 'cy', '产业管理', 'ljw17', '0', '/', '{}', 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57', NULL);
INSERT INTO `gen_table` VALUES (4, 'qygl', '企业管理', NULL, NULL, 'Qygl', 'crud', 'com.ruoyi.qygl', 'cygl', 'qygl', '企业管理', 'ljw17', '0', '/', '{\"parentMenuId\":2019}', 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (25, '3', 'cy_id', '产业ID', 'bigint', 'Long', 'cyId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (26, '3', 'cy_name', '产业名称', 'varchar(255)', 'String', 'cyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (27, '3', 'cy_direction', '产业方向', 'varchar(255)', 'String', 'cyDirection', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (28, '3', 'create_by', '创建者', 'bigint', 'Long', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (29, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (30, '3', 'update_by', '更新者', 'bigint', 'Long', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (31, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (32, '3', 'is_deleted', '是否删除', 'int', 'Long', 'isDeleted', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-12-08 22:37:18', '', '2021-12-08 22:48:57');
INSERT INTO `gen_table_column` VALUES (33, '4', 'qy_id', '企业id', 'bigint', 'Long', 'qyId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (34, '4', 'qy_name', '企业名称', 'varchar(255)', 'String', 'qyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (35, '4', '\r\nqy_industry', '所在产业', 'bigint', 'Long', '\r\nqyIndustry', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (36, '4', 'qy_areas', '企业所在城市', 'varchar(255)', 'String', 'qyAreas', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (37, '4', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (38, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (39, '4', 'update_by', '更新者', 'varchar(0)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (40, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');
INSERT INTO `gen_table_column` VALUES (41, '4', 'is_deleted', '是否删除（0否1是）', 'int', 'Long', 'isDeleted', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-12-09 22:20:07', '', '2021-12-09 22:26:22');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qygl
-- ----------------------------
DROP TABLE IF EXISTS `qygl`;
CREATE TABLE `qygl`  (
  `qy_id` bigint(0) NOT NULL COMMENT '企业id',
  `qy_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `qy_industry` bigint(0) NULL DEFAULT NULL COMMENT '所在产业',
  `qy_areas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业所在城市',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除（0否1是）',
  PRIMARY KEY (`qy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qygl
-- ----------------------------
INSERT INTO `qygl` VALUES (192020907, '徐州工程机械集团有限公司', 1717163125, '江苏省/徐州市', 'admin', '2021-12-15 22:13:39', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (195258530, '北京轩宇信息技术有限公司', 2073946375, '北京市', 'admin', '2021-12-12 16:10:38', 'admin', '2021-12-12 16:37:24', 0);
INSERT INTO `qygl` VALUES (391866149, '哈尔滨电站设备集团公司', 1362257712, '黑龙江省/哈尔滨市', 'admin', '2021-12-15 22:14:58', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (395991575, '广东动力资源有限公司', 1868797674, '广东省/广州市', 'admin', '2021-12-10 21:41:28', 'admin', '2021-12-17 15:42:39', 0);
INSERT INTO `qygl` VALUES (422169164, '中国机械工业集团有限公司', 1498480700, '北京市', 'admin', '2021-12-15 22:04:51', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (769838009, '北生药业股份有限公司', 1248811901, '广西壮族自治区/南宁市', 'admin', '2021-12-15 22:42:38', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1222422917, '山东山松生物工程集团有限公司', 1248811901, '山西省/大同市', 'admin', '2021-12-15 22:40:51', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1224324815, '苏达山新材料有限公司', 1868797674, '浙江省/杭州市', 'admin', '2021-12-17 16:24:29', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1311491718, '北京丹序生物制药有限公司', 1248811901, '北京市', 'admin', '2021-12-15 22:38:47', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1355241388, '山东五利煤矿股份公司', 1498480700, '山东省/济南市', 'admin', '2021-12-13 16:12:42', 'admin', '2021-12-15 15:35:05', 0);
INSERT INTO `qygl` VALUES (1679018088, '1', 773182312, '北京市', 'admin', '2021-12-17 16:43:41', NULL, NULL, 1);
INSERT INTO `qygl` VALUES (1718659980, '潍柴控股集团有限公司', 1717163125, '山东省/济南市', 'admin', '2021-12-15 22:12:22', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1783052344, '尤利新材料有限公司', 773182312, '广东省/广州市', 'admin', '2021-12-17 16:25:34', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1834822290, '上海电气(集团)总公司', 1362257712, '上海市', 'admin', '2021-12-15 22:11:24', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (1838554377, '华宝集团公司', 1248811901, '福建省/龙岩市', 'admin', '2021-12-15 22:41:59', NULL, NULL, 0);
INSERT INTO `qygl` VALUES (2102076844, '蔚来控股有限公司', 1717163125, '安徽省/合肥市', 'admin', '2021-12-10 14:24:10', 'admin', '2021-12-17 15:42:32', 0);

-- ----------------------------
-- Table structure for rcgl_rc
-- ----------------------------
DROP TABLE IF EXISTS `rcgl_rc`;
CREATE TABLE `rcgl_rc`  (
  `rc_id` bigint(0) NOT NULL COMMENT '人才ID',
  `rc_company` bigint(0) NULL DEFAULT NULL COMMENT '所属机构ID',
  `rc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `rc_research_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研究方向',
  `rc_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人才级别（院士，国家级，省级，市级）',
  `rc_paper_num` int(0) NULL DEFAULT 0 COMMENT '论文数',
  `rc_patent_num` int(0) NULL DEFAULT 0 COMMENT '专利数',
  `rc_project_num` int(0) NULL DEFAULT 0 COMMENT '项目数',
  `rc_activation` decimal(5, 2) NULL DEFAULT 60.00 COMMENT '活跃度',
  `rc_areas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在区域',
  `cy_direction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属产业人才',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(0) NULL DEFAULT 0 COMMENT '是否删除（0否1是）',
  PRIMARY KEY (`rc_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rcgl_rc
-- ----------------------------
INSERT INTO `rcgl_rc` VALUES (414292156, 391866149, '赵武', '车联网', '国家级', 12, 24, 16, 87.60, '黑龙江省/哈尔滨市', '新一代信息技术产业方向', 'admin', '2021-12-15 23:31:39', 'superAdmin', '2021-12-20 14:02:12', 0);
INSERT INTO `rcgl_rc` VALUES (571400081, 769838009, '刘美', '18', '省级', 13, 22, 10, 74.90, '北京市', '生物产业方向', 'admin', '2021-12-17 16:35:56', 'superAdmin', '2021-12-20 14:00:05', 0);
INSERT INTO `rcgl_rc` VALUES (697249190, 422169164, '安婷', '机械自动化', '国家级', 10, 26, 10, 77.20, '北京市', '高端装备制造产业方向', 'admin', '2021-12-16 23:30:52', 'superAdmin', '2021-12-19 23:56:20', 0);
INSERT INTO `rcgl_rc` VALUES (900759249, 1838554377, '廖七', '大数据分析', '国家级', 10, 21, 8, 65.10, '辽宁省/鞍山市', '生物产业方向', 'admin', '2021-12-17 15:33:37', 'superAdmin', '2021-12-19 23:56:09', 0);
INSERT INTO `rcgl_rc` VALUES (906451348, 1783052344, '吴六', '新能源', '省级', 10, 20, 26, 95.80, '广东省/韶关市', '新材料产业方向', 'admin', '2021-12-16 16:10:04', 'superAdmin', '2021-12-20 14:02:24', 0);
INSERT INTO `rcgl_rc` VALUES (981409868, 1222422917, '吴开', '基因工程', '院士', 10, 20, 8, 63.40, '山东省/济南市', '生物产业方向', 'admin', '2021-12-17 15:31:59', 'superAdmin', '2021-12-19 23:56:05', 0);
INSERT INTO `rcgl_rc` VALUES (1018529144, 395991575, '张三', 'AI算法', '国家级', 10, 40, 13, 100.00, '广东省/广州市', '新材料产业方向', 'admin', '2021-12-12 22:04:19', 'superAdmin', '2021-12-20 14:02:31', 0);
INSERT INTO `rcgl_rc` VALUES (1317827681, 195258530, '李四', '数据挖掘', '市级', 10, 15, 8, 60.00, '北京市', '新一代信息技术产业方向', 'admin', '2021-12-12 22:27:52', 'superAdmin', '2021-12-20 14:02:36', 0);
INSERT INTO `rcgl_rc` VALUES (1462441642, 2102076844, '刘星', '网络安全', '院士', 7, 10, 5, 60.00, '吉林省/长春市', '节能环保方向', 'admin', '2021-12-12 22:43:27', 'superAdmin', '2021-12-19 23:55:35', 0);
INSERT INTO `rcgl_rc` VALUES (1652133453, 391866149, '张涛', '电力资源', '国家级', 11, 15, 10, 60.00, '河北省/秦皇岛市', '新一代信息技术产业方向', 'admin', '2021-12-17 14:53:30', 'superAdmin', '2021-12-20 14:01:46', 0);
INSERT INTO `rcgl_rc` VALUES (1813461686, 1224324815, '甄子丹', '可再生能源', '市级', 30, 15, 10, 88.50, '广东省/佛山市', '新材料产业方向', 'superAdmin', '2021-12-19 23:52:52', 'superAdmin', '2021-12-19 23:55:52', 0);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-12-02 20:07:27', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-12-02 20:07:27', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-12-02 20:07:27', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-12-02 20:07:27', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '政府产业人才股份公司', 0, '李四', '15888888888', '123456@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 15:58:54');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '张三', '15888888888', 'zs@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 15:59:10');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '王安石', '15888888888', 'was@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:01:12');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '赵武', '15888888888', 'zw@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 15:59:25');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '赵武', '15888888888', 'zw@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 15:59:43');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '赵武', '15888888888', 'zw@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:00:07');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '赵武', '15888888888', 'zw@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:00:43');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '赵武', '15888888888', 'zw@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:00:30');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '王安石', '15888888888', 'was@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:01:26');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '王安石', '15888888888', 'was@qq.com', '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:01:39');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-12-02 20:07:27', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-12-02 20:07:27', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-12-02 20:07:27', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-12-02 20:07:27', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-02 20:27:11');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-02 20:27:11');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-02 20:27:50');
INSERT INTO `sys_logininfor` VALUES (103, '', '127.0.0.1', '0', '退出成功', '2021-12-02 20:29:48');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-02 20:29:56');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-07 15:09:48');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-07 15:10:12');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '10.201.92.102', '0', '登录成功', '2021-12-07 15:12:16');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-07 15:37:25');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-07 15:37:34');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-08 13:36:16');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-08 13:37:35');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-08 23:08:19');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-08 23:08:37');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-08 23:08:50');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-09 14:30:26');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-09 14:30:26');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-09 14:30:35');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-09 21:58:13');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-09 21:58:13');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-09 21:58:26');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-10 13:29:10');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-10 13:30:09');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-12 15:43:20');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-12 15:43:20');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-12 15:43:29');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-13 15:10:04');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-13 15:10:24');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-13 15:10:40');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-13 17:02:32');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-13 17:03:07');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-15 13:52:44');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-15 14:02:50');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-15 14:03:02');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-15 23:29:07');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-15 23:29:10');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-15 23:29:19');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:01');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:02');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:02');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:02');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:03');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:05:28');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-16 16:05:56');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-16 16:06:05');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 16:06:16');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-16 16:07:19');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-16 21:46:14');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-16 21:46:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-17 13:33:07');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-17 13:54:35');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-17 14:45:48');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 22:57:52');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 22:57:52');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-18 22:58:01');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 23:06:59');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-18 23:10:23');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 23:16:17');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-18 23:17:35');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 23:21:46');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-18 23:23:23');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-18 23:53:37');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-18 23:53:51');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-19 00:10:16');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-19 15:25:09');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-19 15:25:09');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-19 15:25:23');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '0', '退出成功', '2021-12-19 15:56:53');
INSERT INTO `sys_logininfor` VALUES (168, 'ry', '127.0.0.1', '1', '用户密码错误', '2021-12-19 15:57:13');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '0', '登录成功', '2021-12-19 15:57:54');
INSERT INTO `sys_logininfor` VALUES (170, 'ry', '127.0.0.1', '1', '用户密码错误', '2021-12-19 16:05:33');
INSERT INTO `sys_logininfor` VALUES (171, 'ly', '127.0.0.1', '1', '用户密码错误', '2021-12-19 16:11:07');
INSERT INTO `sys_logininfor` VALUES (172, 'ly', '127.0.0.1', '1', '用户密码错误', '2021-12-19 16:11:43');
INSERT INTO `sys_logininfor` VALUES (173, 'ly', '127.0.0.1', '0', '登录成功', '2021-12-19 16:13:16');
INSERT INTO `sys_logininfor` VALUES (174, 'ly', '127.0.0.1', '0', '退出成功', '2021-12-19 16:56:47');
INSERT INTO `sys_logininfor` VALUES (175, 'superAdmin', '127.0.0.1', '0', '登录成功', '2021-12-19 16:58:51');
INSERT INTO `sys_logininfor` VALUES (176, 'superAdmin', '127.0.0.1', '0', '退出成功', '2021-12-19 17:02:23');
INSERT INTO `sys_logininfor` VALUES (177, 'superAdmin', '127.0.0.1', '0', '登录成功', '2021-12-19 17:02:42');
INSERT INTO `sys_logininfor` VALUES (178, 'superAdmin', '127.0.0.1', '0', '退出成功', '2021-12-20 13:53:19');
INSERT INTO `sys_logininfor` VALUES (179, 'superAdmin', '127.0.0.1', '0', '登录成功', '2021-12-20 13:53:36');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2027 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-12-02 20:07:26', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-12-02 20:07:26', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-12-02 20:07:26', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-12-02 20:07:26', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-12-02 20:07:26', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-12-02 20:07:26', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-12-02 20:07:26', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-12-02 20:07:26', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-12-02 20:07:26', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-12-02 20:07:26', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-12-02 20:07:26', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-12-02 20:07:26', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-12-02 20:07:26', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-12-02 20:07:26', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-12-02 20:07:26', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, 'Sentinel控制台', 2, 3, 'http://localhost:8718', '', '', 0, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', 'admin', '2021-12-02 20:07:26', '', NULL, '流量控制菜单');
INSERT INTO `sys_menu` VALUES (112, 'Nacos控制台', 2, 4, 'http://localhost:8848/nacos', '', '', 0, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', 'admin', '2021-12-02 20:07:26', '', NULL, '服务治理菜单');
INSERT INTO `sys_menu` VALUES (113, 'Admin控制台', 2, 5, 'http://localhost:9100/login', '', '', 0, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-12-02 20:07:26', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-12-02 20:07:26', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-12-02 20:07:26', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-12-02 20:07:26', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', 'admin', '2021-12-02 20:07:26', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', 'admin', '2021-12-02 20:07:26', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '人才管理', 2006, 1, 'rc', 'rcgl/rc/index', NULL, 1, 0, 'C', '0', '0', 'rcgl:rc:list', 'eye', 'admin', '2021-12-07 17:01:08', 'admin', '2021-12-08 13:44:23', '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2001, '人才查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'rcgl:rc:query', '#', 'admin', '2021-12-07 17:01:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '人才新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'rcgl:rc:add', '#', 'admin', '2021-12-07 17:01:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '人才修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'rcgl:rc:edit', '#', 'admin', '2021-12-07 17:01:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '人才删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'rcgl:rc:remove', '#', 'admin', '2021-12-07 17:01:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '人才导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'rcgl:rc:export', '#', 'admin', '2021-12-07 17:01:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '人才管理', 0, 1, 'cyrc', NULL, NULL, 1, 0, 'M', '0', '0', '', 'server', 'admin', '2021-12-08 13:42:56', 'admin', '2021-12-08 13:43:59', '');
INSERT INTO `sys_menu` VALUES (2013, '产业管理', 2019, 1, 'cy', 'cygl/cy/index', NULL, 1, 0, 'C', '0', '0', 'cygl:cy:list', 'client', 'admin', '2021-12-08 23:31:45', 'admin', '2021-12-09 14:43:53', '产业管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '产业管理查询', 2013, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:cy:query', '#', 'admin', '2021-12-08 23:31:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '产业管理新增', 2013, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:cy:add', '#', 'admin', '2021-12-08 23:31:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '产业管理修改', 2013, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:cy:edit', '#', 'admin', '2021-12-08 23:31:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '产业管理删除', 2013, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:cy:remove', '#', 'admin', '2021-12-08 23:31:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '产业管理导出', 2013, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:cy:export', '#', 'admin', '2021-12-08 23:31:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '产业管理', 0, 1, 'cygl', NULL, NULL, 1, 0, 'M', '0', '0', '', 'example', 'admin', '2021-12-09 14:42:36', 'admin', '2021-12-09 14:43:04', '');
INSERT INTO `sys_menu` VALUES (2020, '企业管理', 2019, 1, 'qygl', 'cygl/qygl/index', NULL, 1, 0, 'C', '0', '0', 'cygl:qygl:list', 'excel', 'admin', '2021-12-09 22:31:22', 'admin', '2021-12-09 22:48:25', '企业管理菜单');
INSERT INTO `sys_menu` VALUES (2021, '企业管理查询', 2020, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:qygl:query', '#', 'admin', '2021-12-09 22:31:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '企业管理新增', 2020, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:qygl:add', '#', 'admin', '2021-12-09 22:31:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '企业管理修改', 2020, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:qygl:edit', '#', 'admin', '2021-12-09 22:31:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '企业管理删除', 2020, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:qygl:remove', '#', 'admin', '2021-12-09 22:31:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '企业管理导出', 2020, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'cygl:qygl:export', '#', 'admin', '2021-12-09 22:31:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '产业分布', 2019, 1, 'industDistribute', 'cygl/cy/industDistribute', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2021-12-13 16:51:37', 'admin', '2021-12-13 16:52:26', '');
INSERT INTO `sys_menu` VALUES (2027, '人才分布', 2006, 1, 'rcDistribute', 'rcgl/rc/rcDistribute', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2021-12-15 22:56:34', 'admin', '2021-12-15 22:57:13', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 产业人才新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-12-02 20:07:27', 'admin', '2021-12-19 16:04:26', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 产业人才系统凌晨维护', '1', 0x3C703EE7BBB4E68AA4E58685E5AEB93C2F703E, '0', 'admin', '2021-12-02 20:07:27', 'admin', '2021-12-19 16:04:41', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 374 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'rc_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 15:55:37');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, NULL, 0, NULL, '2021-12-07 15:56:08');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/1', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 16:07:01');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'rcgl_rc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 16:07:06');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, NULL, 0, NULL, '2021-12-07 16:07:11');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"人才管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"rc\",\"component\":\"rcgl/rc/index\",\"children\":[],\"createTime\":1638867668000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"rcgl:rc:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 17:06:52');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"人才管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"rc\",\"component\":\"rcgl/rc/index\",\"children\":[],\"createTime\":1638867668000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"rcgl:rc:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 21:04:31');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"eye\",\"orderNum\":\"1\",\"menuName\":\"人才管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"rc\",\"component\":\"rcgl/rc/index\",\"children\":[],\"createTime\":1638867668000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"rcgl:rc:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 21:05:54');
INSERT INTO `sys_oper_log` VALUES (108, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"params\":{},\"rcProjectNum\":4,\"rcActivation\":87,\"rcPatentNum\":1,\"rcResearchField\":\"AI\",\"createTime\":1638884348383,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 21:39:08');
INSERT INTO `sys_oper_log` VALUES (109, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638884434744,\"params\":{},\"rcProjectNum\":4,\"rcActivation\":87,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createTime\":1638884348000,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 21:40:34');
INSERT INTO `sys_oper_log` VALUES (110, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"params\":{}}', NULL, 0, NULL, '2021-12-07 21:43:25');
INSERT INTO `sys_oper_log` VALUES (111, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":1,\"rcProjectNum\":23,\"rcPatentNum\":4,\"rcResearchField\":\"C语言\",\"createBy\":1,\"createTime\":1638886105426,\"rcCommanyId\":123,\"rcId\":1431755586,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:08:25');
INSERT INTO `sys_oper_log` VALUES (112, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":134,\"rcProjectNum\":1,\"rcPatentNum\":123,\"rcResearchField\":\"Java\",\"createBy\":1,\"createTime\":1638886218410,\"rcCommanyId\":7483,\"rcId\":1755693400,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:10:18');
INSERT INTO `sys_oper_log` VALUES (113, '删除人才信息', 3, 'com.ruoyi.rcgl.controller.RcglRcController.remove()', 'DELETE', 1, 'admin', NULL, '/rc/1431755586', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:22:46');
INSERT INTO `sys_oper_log` VALUES (114, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638887626089,\"rcProjectNum\":4,\"rcActivation\":87.1,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:33:46');
INSERT INTO `sys_oper_log` VALUES (115, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638887739150,\"rcProjectNum\":4,\"rcActivation\":87.1,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:35:39');
INSERT INTO `sys_oper_log` VALUES (116, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638887837483,\"rcProjectNum\":4,\"rcActivation\":87.2,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:39:17');
INSERT INTO `sys_oper_log` VALUES (117, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638888000527,\"rcProjectNum\":4,\"rcActivation\":87.2,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:47:03');
INSERT INTO `sys_oper_log` VALUES (118, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcPaperNum\":10,\"updateTime\":1638889042397,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcCommanyId\":123,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-07 22:57:22');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"eye\",\"orderNum\":\"1\",\"menuName\":\"人才管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"rc\",\"component\":\"rcgl/rc/index\",\"children\":[],\"createTime\":1638867668000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"rcgl:rc:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 13:40:26');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"产业人才\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cyrc\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 13:42:56');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"server\",\"orderNum\":\"1\",\"menuName\":\"产业人才\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cyrc\",\"children\":[],\"createTime\":1638942176000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 13:43:59');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"eye\",\"orderNum\":\"1\",\"menuName\":\"人才管理\",\"params\":{},\"parentId\":2006,\"isCache\":\"0\",\"path\":\"rc\",\"component\":\"rcgl/rc/index\",\"children\":[],\"createTime\":1638867668000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"rcgl:rc:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 13:44:23');
INSERT INTO `sys_oper_log` VALUES (123, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试\",\"rcPaperNum\":10,\"updateTime\":1638943563118,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 14:06:03');
INSERT INTO `sys_oper_log` VALUES (124, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"updateTime\":1638943575670,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 14:06:15');
INSERT INTO `sys_oper_log` VALUES (125, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"北京轩宇信息技术有限公司\",\"rcPaperNum\":134,\"updateTime\":1638943663398,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":123,\"rcResearchField\":\"Java\",\"createBy\":1,\"createTime\":1638886218000,\"updateBy\":1,\"rcId\":1755693400,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 14:07:43');
INSERT INTO `sys_oper_log` VALUES (126, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"updateTime\":1638949319501,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 15:41:59');
INSERT INTO `sys_oper_log` VALUES (127, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1638949592014,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 15:46:32');
INSERT INTO `sys_oper_log` VALUES (128, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1638951364609,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 16:16:04');
INSERT INTO `sys_oper_log` VALUES (129, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"北京轩宇信息技术有限公司\",\"rcPaperNum\":134,\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1638951372417,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":123,\"rcResearchField\":\"Java\",\"createBy\":1,\"createTime\":1638886218000,\"updateBy\":1,\"rcId\":1755693400,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 16:16:12');
INSERT INTO `sys_oper_log` VALUES (130, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"\",\"updateTime\":1638953740775,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 16:55:40');
INSERT INTO `sys_oper_log` VALUES (131, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"北京轩宇信息技术有限公司\",\"rcPaperNum\":134,\"rcAreas\":\"\",\"updateTime\":1638953916641,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":123,\"rcResearchField\":\"Java\",\"createBy\":1,\"createTime\":1638886218000,\"updateBy\":1,\"rcId\":1755693400,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 16:58:36');
INSERT INTO `sys_oper_log` VALUES (132, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试\",\"rcPaperNum\":1,\"rcAreas\":\"undefined/undefined\",\"rcProjectNum\":3,\"rcActivation\":78.0,\"rcPatentNum\":2,\"rcResearchField\":\"物联网\",\"createBy\":1,\"createTime\":1638954160252,\"rcId\":1599364736,\"rcName\":\"小明2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:02:40');
INSERT INTO `sys_oper_log` VALUES (133, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"\",\"updateTime\":1638954801614,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:13:21');
INSERT INTO `sys_oper_log` VALUES (134, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"\",\"updateTime\":1638954921332,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:15:21');
INSERT INTO `sys_oper_log` VALUES (135, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1638955008077,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:16:48');
INSERT INTO `sys_oper_log` VALUES (136, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"北京轩宇信息技术有限公司\",\"rcPaperNum\":134,\"rcAreas\":\"山西省/阳泉市\",\"updateTime\":1638955069694,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":123,\"rcResearchField\":\"Java\",\"createBy\":1,\"createTime\":1638886218000,\"updateBy\":1,\"rcId\":1755693400,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:17:49');
INSERT INTO `sys_oper_log` VALUES (137, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试3\",\"rcPaperNum\":3,\"rcAreas\":\"吉林省/四平市\",\"rcProjectNum\":5,\"rcActivation\":89.03,\"rcPatentNum\":1,\"rcResearchField\":\"golang\",\"createBy\":1,\"createTime\":1638955123995,\"rcId\":1903967553,\"rcName\":\"小刘\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 17:18:44');
INSERT INTO `sys_oper_log` VALUES (138, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试\",\"rcPaperNum\":1,\"rcAreas\":\"河北省/邯郸市\",\"updateTime\":1638970189917,\"rcProjectNum\":3,\"rcActivation\":78.0,\"rcPatentNum\":2,\"rcResearchField\":\"物联网\",\"createBy\":1,\"createTime\":1638954160000,\"updateBy\":1,\"rcId\":1599364736,\"rcName\":\"小明2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 21:29:50');
INSERT INTO `sys_oper_log` VALUES (139, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1638972765448,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 22:12:45');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'cygl_cy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 22:37:19');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, NULL, 0, NULL, '2021-12-08 22:37:29');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/2', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-08 22:46:51');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, NULL, 0, NULL, '2021-12-08 23:13:58');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"产业管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cygl\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 14:42:36');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"1\",\"menuName\":\"产业管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"cygl\",\"children\":[],\"createTime\":1639032156000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2019,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 14:43:04');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"client\",\"orderNum\":\"1\",\"menuName\":\"产业管理\",\"params\":{},\"parentId\":2019,\"isCache\":\"0\",\"path\":\"cy\",\"component\":\"cygl/cy/index\",\"children\":[],\"createTime\":1638977505000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"cygl:cy:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 14:43:53');
INSERT INTO `sys_oper_log` VALUES (147, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"测试方向1\",\"createBy\":1,\"createTime\":1639034231998,\"cyName\":\"测试1\",\"cyId\":710032180}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:17:12');
INSERT INTO `sys_oper_log` VALUES (148, '产业管理', 2, 'com.ruoyi.cygl.controller.CyglCyController.edit()', 'PUT', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"测试方向\",\"createBy\":1,\"isDeleted\":0,\"createTime\":1639034232000,\"updateBy\":1,\"updateTime\":1639034242725,\"cyName\":\"测试\",\"cyId\":710032180}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:17:22');
INSERT INTO `sys_oper_log` VALUES (149, '产业管理', 3, 'com.ruoyi.cygl.controller.CyglCyController.remove()', 'DELETE', 1, 'admin', NULL, '/cy/710032180', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:19:12');
INSERT INTO `sys_oper_log` VALUES (150, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639035980433,\"cyName\":\"高效节能产业\",\"cyId\":1912894129}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:46:20');
INSERT INTO `sys_oper_log` VALUES (151, '产业管理', 2, 'com.ruoyi.cygl.controller.CyglCyController.edit()', 'PUT', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"isDeleted\":0,\"createTime\":1639035980000,\"updateBy\":1,\"updateTime\":1639035995032,\"cyName\":\"高效节能产业\",\"cyId\":1912894129}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:46:35');
INSERT INTO `sys_oper_log` VALUES (152, '产业管理', 2, 'com.ruoyi.cygl.controller.CyglCyController.edit()', 'PUT', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"isDeleted\":0,\"createTime\":1639035980000,\"updateBy\":1,\"updateTime\":1639036004557,\"cyName\":\"高效节能产业\",\"cyId\":1912894129}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 15:46:44');
INSERT INTO `sys_oper_log` VALUES (153, '产业管理', 5, 'com.ruoyi.cygl.controller.CyglCyController.export()', 'POST', 1, 'admin', NULL, '/cy/export', '127.0.0.1', '', '{}', NULL, 0, NULL, '2021-12-09 16:05:31');
INSERT INTO `sys_oper_log` VALUES (154, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639037660702,\"cyName\":\"1\",\"cyId\":2139105372}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:20');
INSERT INTO `sys_oper_log` VALUES (155, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639037668437,\"cyName\":\"2\",\"cyId\":1802607060}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:28');
INSERT INTO `sys_oper_log` VALUES (156, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"生物产业方向\",\"createBy\":1,\"createTime\":1639037678830,\"cyName\":\"2\",\"cyId\":282928629}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:38');
INSERT INTO `sys_oper_log` VALUES (157, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639037689680,\"cyName\":\"1\",\"cyId\":30310487}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:49');
INSERT INTO `sys_oper_log` VALUES (158, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639037694034,\"cyName\":\"1\",\"cyId\":40322968}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:54');
INSERT INTO `sys_oper_log` VALUES (159, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639037698803,\"cyName\":\"1\",\"cyId\":1975033008}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:14:58');
INSERT INTO `sys_oper_log` VALUES (160, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639037703972,\"cyName\":\"1\",\"cyId\":756687657}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:15:03');
INSERT INTO `sys_oper_log` VALUES (161, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639037708274,\"cyName\":\"1\",\"cyId\":456372822}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:15:08');
INSERT INTO `sys_oper_log` VALUES (162, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639037714717,\"cyName\":\"1\",\"cyId\":1100017641}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:15:14');
INSERT INTO `sys_oper_log` VALUES (163, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639037720686,\"cyName\":\"2\",\"cyId\":540372254}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:15:20');
INSERT INTO `sys_oper_log` VALUES (164, '产业管理', 3, 'com.ruoyi.cygl.controller.CyglCyController.remove()', 'DELETE', 1, 'admin', NULL, '/cy/540372254,1100017641,456372822,756687657,1975033008,40322968,30310487,282928629,1802607060,2139105372', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 16:28:16');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '127.0.0.1', '', 'qygl', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 22:20:08');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '127.0.0.1', '', NULL, NULL, 0, NULL, '2021-12-09 22:26:30');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"1\",\"menuName\":\"企业管理\",\"params\":{},\"parentId\":2019,\"isCache\":\"0\",\"path\":\"qygl\",\"component\":\"cygl/qygl/index\",\"children\":[],\"createTime\":1639060282000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2020,\"menuType\":\"C\",\"perms\":\"cygl:qygl:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 22:48:26');
INSERT INTO `sys_oper_log` VALUES (168, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639064957209,\"cyName\":\"1\",\"cyId\":54130745}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 23:49:17');
INSERT INTO `sys_oper_log` VALUES (169, '产业管理', 3, 'com.ruoyi.cygl.controller.CyglCyController.remove()', 'DELETE', 1, 'admin', NULL, '/cy/54130745', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-09 23:49:23');
INSERT INTO `sys_oper_log` VALUES (170, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1,\"createTime\":1639114677408,\"qyId\":508175889,\"qyAreas\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\r\n### The error may exist in file [E:\\SpringCloudStudy\\RuoYi-Cloud\\ruoyi-modules\\ruoyi-cygl\\target\\classes\\mapper\\cygl\\QyglMapper.xml]\r\n### The error may involve com.ruoyi.qygl.mapper.QyglMapper.insertQygl-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qygl          ( qy_id,             qy_name,             qy_industry,             qy_areas,             create_by,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'', '2021-12-10 13:37:58');
INSERT INTO `sys_oper_log` VALUES (171, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1,\"createTime\":1639115050770,\"qyId\":1097536372,\"qyAreas\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\r\n### The error may exist in file [E:\\SpringCloudStudy\\RuoYi-Cloud\\ruoyi-modules\\ruoyi-cygl\\target\\classes\\mapper\\cygl\\QyglMapper.xml]\r\n### The error may involve com.ruoyi.qygl.mapper.QyglMapper.insertQygl-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qygl          ( qy_id,             qy_name,             qy_industry,             qy_areas,             create_by,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'', '2021-12-10 13:44:11');
INSERT INTO `sys_oper_log` VALUES (172, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"createTime\":1639115383190,\"qyId\":963510607,\"qyAreas\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 13:49:43');
INSERT INTO `sys_oper_log` VALUES (173, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1984572528,\"createTime\":1639115519898,\"qyId\":1320445637,\"qyAreas\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\r\n### The error may exist in file [E:\\SpringCloudStudy\\RuoYi-Cloud\\ruoyi-modules\\ruoyi-cygl\\target\\classes\\mapper\\cygl\\QyglMapper.xml]\r\n### The error may involve com.ruoyi.qygl.mapper.QyglMapper.insertQygl-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qygl          ( qy_id,             qy_name,             qy_industry,             qy_areas,             create_by,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'', '2021-12-10 13:51:59');
INSERT INTO `sys_oper_log` VALUES (174, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1984572528,\"createTime\":1639115527282,\"qyId\":673864822,\"qyAreas\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\r\n### The error may exist in file [E:\\SpringCloudStudy\\RuoYi-Cloud\\ruoyi-modules\\ruoyi-cygl\\target\\classes\\mapper\\cygl\\QyglMapper.xml]\r\n### The error may involve com.ruoyi.qygl.mapper.QyglMapper.insertQygl-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into qygl          ( qy_id,             qy_name,             qy_industry,             qy_areas,             create_by,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'qy_industry\' in \'field list\'', '2021-12-10 13:52:07');
INSERT INTO `sys_oper_log` VALUES (175, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1,\"createTime\":1639116465465,\"qyId\":225778786,\"qyAreas\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:07:45');
INSERT INTO `sys_oper_log` VALUES (176, '企业管理', 3, 'com.ruoyi.qygl.controller.QyglController.remove()', 'DELETE', 1, 'admin', NULL, '/qygl/225778786', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:07:50');
INSERT INTO `sys_oper_log` VALUES (177, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1,\"createTime\":1639115383000,\"updateBy\":\"admin\",\"qyId\":963510607,\"updateTime\":1639116596811,\"qyAreas\":\"2\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'update_by\' at row 1\r\n### The error may exist in file [E:\\SpringCloudStudy\\RuoYi-Cloud\\ruoyi-modules\\ruoyi-cygl\\target\\classes\\mapper\\cygl\\QyglMapper.xml]\r\n### The error may involve com.ruoyi.qygl.mapper.QyglMapper.updateQygl-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update qygl          SET qy_name = ?,             qy_industry = ?,             qy_areas = ?,             create_by = ?,             create_time = ?,             update_by = ?,             update_time = ?          where qy_id = ? and is_deleted=0\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'update_by\' at row 1\n; Data truncation: Data too long for column \'update_by\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'update_by\' at row 1', '2021-12-10 14:09:56');
INSERT INTO `sys_oper_log` VALUES (178, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1,\"createTime\":1639115383000,\"updateBy\":\"admin\",\"qyId\":963510607,\"updateTime\":1639116651309,\"qyAreas\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:10:51');
INSERT INTO `sys_oper_log` VALUES (179, '企业管理', 3, 'com.ruoyi.qygl.controller.QyglController.remove()', 'DELETE', 1, 'admin', NULL, '/qygl/963510607', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:24:01');
INSERT INTO `sys_oper_log` VALUES (180, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":1,\"createTime\":1639117449895,\"qyId\":2102076844,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:24:09');
INSERT INTO `sys_oper_log` VALUES (181, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"qyId\":2102076844,\"updateTime\":1639117461745,\"qyAreas\":\"河北省/秦皇岛市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 14:24:21');
INSERT INTO `sys_oper_log` VALUES (182, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"qyIndustry\":1912894129,\"createTime\":1639143687720,\"qyId\":395991575,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:41:29');
INSERT INTO `sys_oper_log` VALUES (183, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639143731106,\"cyName\":\"智能制造装备产业\",\"cyId\":1498480700}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:42:11');
INSERT INTO `sys_oper_log` VALUES (184, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新一代信息技术产业方向\",\"createBy\":1,\"createTime\":1639143750110,\"cyName\":\"电子核心产业\",\"cyId\":998212853}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:42:30');
INSERT INTO `sys_oper_log` VALUES (185, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新一代信息技术产业方向\",\"createBy\":1,\"createTime\":1639143774664,\"cyName\":\"下一代信息网络产业\",\"cyId\":2073946375}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:42:54');
INSERT INTO `sys_oper_log` VALUES (186, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"节能环保方向\",\"createBy\":1,\"createTime\":1639143843953,\"cyName\":\"新能源汽车产业\",\"cyId\":1717163125}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:44:04');
INSERT INTO `sys_oper_log` VALUES (187, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1717163125,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"qyId\":395991575,\"updateTime\":1639143875852,\"qyAreas\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:44:35');
INSERT INTO `sys_oper_log` VALUES (188, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1717163125,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"qyId\":395991575,\"updateTime\":1639143924004,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 21:45:24');
INSERT INTO `sys_oper_log` VALUES (189, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":998212853,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"qyId\":2102076844,\"updateTime\":1639150641587,\"qyAreas\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-10 23:37:22');
INSERT INTO `sys_oper_log` VALUES (190, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":998212853,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639295650024,\"qyAreas\":\"河北省/秦皇岛市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:54:10');
INSERT INTO `sys_oper_log` VALUES (191, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639295676840,\"qyAreas\":\"河北省/秦皇岛市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:54:36');
INSERT INTO `sys_oper_log` VALUES (192, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":998212853,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639295891864,\"qyAreas\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:58:11');
INSERT INTO `sys_oper_log` VALUES (193, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":998212853,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639295906813,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:58:26');
INSERT INTO `sys_oper_log` VALUES (194, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1498480700,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639295913849,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:58:33');
INSERT INTO `sys_oper_log` VALUES (195, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639295921345,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:58:41');
INSERT INTO `sys_oper_log` VALUES (196, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1498480700,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639295937901,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:58:57');
INSERT INTO `sys_oper_log` VALUES (197, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639295942194,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 15:59:02');
INSERT INTO `sys_oper_log` VALUES (198, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试3\",\"rcPaperNum\":3,\"rcAreas\":\"内蒙古自治区/包头市\",\"updateTime\":1639296379476,\"rcProjectNum\":5,\"rcActivation\":89.03,\"rcPatentNum\":1,\"rcResearchField\":\"golang\",\"createBy\":1,\"createTime\":1638955124000,\"updateBy\":1,\"rcId\":1903967553,\"rcName\":\"小刘\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:06:19');
INSERT INTO `sys_oper_log` VALUES (199, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"内蒙古自治区/包头市\",\"updateTime\":1639296385570,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:06:25');
INSERT INTO `sys_oper_log` VALUES (200, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"isDeleted\":0,\"qyIndustry\":1498480700,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639296614733,\"qyAreas\":\"山西省/长治市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:10:14');
INSERT INTO `sys_oper_log` VALUES (201, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639296619242,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:10:19');
INSERT INTO `sys_oper_log` VALUES (202, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"2\",\"qyIndustry\":1912894129,\"createTime\":1639296637712,\"qyId\":195258530,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:10:37');
INSERT INTO `sys_oper_log` VALUES (203, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"测试3\",\"rcPaperNum\":3,\"rcAreas\":\"北京市\",\"updateTime\":1639296734869,\"rcProjectNum\":5,\"rcActivation\":89.03,\"rcPatentNum\":1,\"rcResearchField\":\"golang\",\"createBy\":1,\"createTime\":1638955124000,\"updateBy\":1,\"rcId\":1903967553,\"rcName\":\"小刘\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:12:14');
INSERT INTO `sys_oper_log` VALUES (204, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":\"广东动力资源有限公司\",\"rcPaperNum\":10,\"rcAreas\":\"内蒙古自治区/包头市\",\"updateTime\":1639296738785,\"rcProjectNum\":4,\"rcActivation\":87.23,\"rcPatentNum\":1,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1638884348000,\"updateBy\":1,\"rcId\":752769364,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:12:18');
INSERT INTO `sys_oper_log` VALUES (205, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"政府产业人才国有公司\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:34:51');
INSERT INTO `sys_oper_log` VALUES (206, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"政府产业人才股份公司\",\"leader\":\"张三\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:35:05');
INSERT INTO `sys_oper_log` VALUES (207, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"北京轩宇信息技术有限公司\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639296638000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":195258530,\"updateTime\":1639298184639,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:36:24');
INSERT INTO `sys_oper_log` VALUES (208, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"广东动力资源有限公司\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639298234190,\"qyAreas\":\"山西省/长治市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:37:14');
INSERT INTO `sys_oper_log` VALUES (209, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"北京轩宇信息技术有限公司\",\"isDeleted\":0,\"qyIndustry\":2073946375,\"createTime\":1639296638000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":195258530,\"updateTime\":1639298243894,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:37:23');
INSERT INTO `sys_oper_log` VALUES (210, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"蔚来控股有限公司\",\"isDeleted\":0,\"qyIndustry\":1717163125,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639298363125,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:39:23');
INSERT INTO `sys_oper_log` VALUES (211, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"广东动力资源有限公司\",\"isDeleted\":0,\"qyIndustry\":1912894129,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639298382769,\"qyAreas\":\"广东省/广州市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:39:42');
INSERT INTO `sys_oper_log` VALUES (212, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"蔚来控股有限公司\",\"isDeleted\":0,\"qyIndustry\":1717163125,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639298402613,\"qyAreas\":\"安徽省/合肥市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 16:40:02');
INSERT INTO `sys_oper_log` VALUES (213, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcAreas\":\"广东省/广州市\",\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"rcResearchField\":\"AI算法\",\"createBy\":1,\"createTime\":1639317859051,\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:04:19');
INSERT INTO `sys_oper_log` VALUES (214, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":10,\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639319236040,\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"admin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:27:16');
INSERT INTO `sys_oper_log` VALUES (215, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319271607,\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:27:51');
INSERT INTO `sys_oper_log` VALUES (216, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1639319283100,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:28:03');
INSERT INTO `sys_oper_log` VALUES (217, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":10,\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639319286384,\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"admin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:28:06');
INSERT INTO `sys_oper_log` VALUES (218, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1639319293338,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:28:13');
INSERT INTO `sys_oper_log` VALUES (219, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639319300591,\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"admin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:28:20');
INSERT INTO `sys_oper_log` VALUES (220, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":7,\"rcAreas\":\"吉林省/长春市\",\"rcProjectNum\":5,\"rcActivation\":88.0,\"rcPatentNum\":10,\"rcResearchField\":\"网络安全\",\"createBy\":\"admin\",\"createTime\":1639320207338,\"rcId\":1462441642,\"rcName\":\"刘星\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-12 22:43:27');
INSERT INTO `sys_oper_log` VALUES (221, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"rcAreas\":\"\",\"rcActivation\":60.0}', NULL, 0, NULL, '2021-12-12 22:44:00');
INSERT INTO `sys_oper_log` VALUES (222, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-12 23:04:25');
INSERT INTO `sys_oper_log` VALUES (223, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-12 23:39:48');
INSERT INTO `sys_oper_log` VALUES (224, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-12 23:40:55');
INSERT INTO `sys_oper_log` VALUES (225, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-12 23:44:21');
INSERT INTO `sys_oper_log` VALUES (226, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-12 23:52:52');
INSERT INTO `sys_oper_log` VALUES (227, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"rcAreas\":\"\",\"rcActivation\":60.0}', NULL, 0, NULL, '2021-12-13 15:15:18');
INSERT INTO `sys_oper_log` VALUES (228, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"rcAreas\":\"\",\"rcActivation\":60.0}', NULL, 0, NULL, '2021-12-13 15:21:49');
INSERT INTO `sys_oper_log` VALUES (229, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"rcAreas\":\"\",\"rcActivation\":60.0}', NULL, 0, NULL, '2021-12-13 15:24:27');
INSERT INTO `sys_oper_log` VALUES (230, '产业管理', 5, 'com.ruoyi.cygl.controller.CyglCyController.export()', 'POST', 1, 'admin', NULL, '/cy/export', '127.0.0.1', '', '{}', NULL, 0, NULL, '2021-12-13 15:24:59');
INSERT INTO `sys_oper_log` VALUES (231, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-13 15:25:30');
INSERT INTO `sys_oper_log` VALUES (232, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"测试1\",\"qyIndustry\":1498480700,\"createTime\":1639383162460,\"qyId\":1355241388,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:12:43');
INSERT INTO `sys_oper_log` VALUES (233, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"测试1\",\"isDeleted\":0,\"qyIndustry\":1498480700,\"createTime\":1639383162000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":1355241388,\"updateTime\":1639383539832,\"qyAreas\":\"山西省/阳泉市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:19:00');
INSERT INTO `sys_oper_log` VALUES (234, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'admin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-13 16:19:10');
INSERT INTO `sys_oper_log` VALUES (235, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1639383709356,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:21:49');
INSERT INTO `sys_oper_log` VALUES (236, '导出人才信息表', 5, 'com.ruoyi.rcgl.controller.RcglRcController.export()', 'POST', 1, 'admin', NULL, '/rc/export', '127.0.0.1', '', '{\"rcAreas\":\"\",\"rcActivation\":60.0}', NULL, 0, NULL, '2021-12-13 16:21:56');
INSERT INTO `sys_oper_log` VALUES (237, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcAreas\":\"北京市\",\"updateTime\":1639384150745,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:29:10');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"1\",\"menuName\":\"产业分布\",\"params\":{},\"parentId\":2019,\"isCache\":\"0\",\"path\":\"/industDistribute\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:51:38');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"1\",\"menuName\":\"产业分布\",\"params\":{},\"parentId\":2019,\"isCache\":\"0\",\"path\":\"industDistribute\",\"component\":\"cygl/cy/industDistribute\",\"children\":[],\"createTime\":1639385497000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-13 16:52:26');
INSERT INTO `sys_oper_log` VALUES (240, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新一代信息技术产业方向\",\"createBy\":1,\"createTime\":1639553097372,\"cyName\":\"智能电网产业\",\"cyId\":1362257712}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:24:58');
INSERT INTO `sys_oper_log` VALUES (241, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新一代信息技术产业方向\",\"createBy\":1,\"createTime\":1639553159130,\"cyName\":\"数字创意产业\",\"cyId\":1045901320}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:25:59');
INSERT INTO `sys_oper_log` VALUES (242, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"生物产业方向\",\"createBy\":1,\"createTime\":1639553223909,\"cyName\":\"基因工程产业\",\"cyId\":521226343}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:27:03');
INSERT INTO `sys_oper_log` VALUES (243, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"生物产业方向\",\"createBy\":1,\"createTime\":1639553238662,\"cyName\":\"生物制药产业\",\"cyId\":1248811901}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:27:18');
INSERT INTO `sys_oper_log` VALUES (244, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新材料产业方向\",\"createBy\":1,\"createTime\":1639553432858,\"cyName\":\"高分子材料产业\",\"cyId\":1868797674}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:30:32');
INSERT INTO `sys_oper_log` VALUES (245, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"新材料产业方向\",\"createBy\":1,\"createTime\":1639553508592,\"cyName\":\"光电子材料产业\",\"cyId\":773182312}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:31:48');
INSERT INTO `sys_oper_log` VALUES (246, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"山东五利煤矿股份公司\",\"isDeleted\":0,\"qyIndustry\":1498480700,\"createTime\":1639383162000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":1355241388,\"updateTime\":1639553705442,\"qyAreas\":\"山东省/济南市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 15:35:05');
INSERT INTO `sys_oper_log` VALUES (247, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"中国机械工业集团有限公司\",\"qyIndustry\":1498480700,\"createTime\":1639577091192,\"qyId\":422169164,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:04:51');
INSERT INTO `sys_oper_log` VALUES (248, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"上海电气(集团)总公司\",\"qyIndustry\":1362257712,\"createTime\":1639577484437,\"qyId\":1834822290,\"qyAreas\":\"上海市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:11:24');
INSERT INTO `sys_oper_log` VALUES (249, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"潍柴控股集团有限公司\",\"qyIndustry\":1717163125,\"createTime\":1639577542268,\"qyId\":1718659980,\"qyAreas\":\"山东省/济南市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:12:22');
INSERT INTO `sys_oper_log` VALUES (250, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"徐州工程机械集团有限公司\",\"qyIndustry\":1717163125,\"createTime\":1639577619406,\"qyId\":192020907,\"qyAreas\":\"江苏省/徐州市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:13:39');
INSERT INTO `sys_oper_log` VALUES (251, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"哈尔滨电站设备集团公司\",\"qyIndustry\":1362257712,\"createTime\":1639577697745,\"qyId\":391866149,\"qyAreas\":\"黑龙江省/哈尔滨市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:14:57');
INSERT INTO `sys_oper_log` VALUES (252, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"北京丹序生物制药有限公司\",\"qyIndustry\":1248811901,\"createTime\":1639579127287,\"qyId\":1311491718,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:38:47');
INSERT INTO `sys_oper_log` VALUES (253, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"山东山松生物工程集团有限公司\",\"qyIndustry\":1248811901,\"createTime\":1639579251260,\"qyId\":1222422917,\"qyAreas\":\"山西省/大同市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:40:51');
INSERT INTO `sys_oper_log` VALUES (254, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"华宝集团公司\",\"qyIndustry\":1248811901,\"createTime\":1639579318623,\"qyId\":1838554377,\"qyAreas\":\"福建省/龙岩市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:41:58');
INSERT INTO `sys_oper_log` VALUES (255, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"北生药业股份有限公司\",\"qyIndustry\":1248811901,\"createTime\":1639579357926,\"qyId\":769838009,\"qyAreas\":\"广西壮族自治区/南宁市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:42:37');
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"1\",\"menuName\":\"人才分布\",\"params\":{},\"parentId\":2006,\"isCache\":\"0\",\"path\":\"a\",\"component\":\"/rcgl/rc/rcDistribute\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:56:35');
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '127.0.0.1', '', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":\"1\",\"menuName\":\"人才分布\",\"params\":{},\"parentId\":2006,\"isCache\":\"0\",\"path\":\"rcDistribute\",\"component\":\"rcgl/rc/rcDistribute\",\"children\":[],\"createTime\":1639580194000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2027,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 22:57:13');
INSERT INTO `sys_oper_log` VALUES (258, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":12,\"rcLevel\":\"国家级\",\"rcAreas\":\"黑龙江省/哈尔滨市\",\"rcProjectNum\":67,\"rcActivation\":8.0,\"rcPatentNum\":4,\"rcResearchField\":\"车联网\",\"createBy\":\"admin\",\"createTime\":1639582299099,\"rcId\":414292156,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 23:31:39');
INSERT INTO `sys_oper_log` VALUES (259, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":7,\"rcLevel\":\"院士\",\"rcAreas\":\"吉林省/长春市\",\"updateTime\":1639582332668,\"rcProjectNum\":5,\"rcActivation\":88.0,\"rcPatentNum\":10,\"rcResearchField\":\"网络安全\",\"createBy\":\"admin\",\"createTime\":1639320207000,\"updateBy\":\"admin\",\"rcId\":1462441642,\"rcName\":\"刘星\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 23:32:12');
INSERT INTO `sys_oper_log` VALUES (260, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639582564532,\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"admin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 23:36:04');
INSERT INTO `sys_oper_log` VALUES (261, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcLevel\":\"市级\",\"rcAreas\":\"北京市\",\"updateTime\":1639582573663,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-15 23:36:13');
INSERT INTO `sys_oper_log` VALUES (262, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642203986,\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 16:10:05');
INSERT INTO `sys_oper_log` VALUES (263, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639668170478,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:23:02');
INSERT INTO `sys_oper_log` VALUES (264, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639668212006,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:23:32');
INSERT INTO `sys_oper_log` VALUES (265, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639668363460,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:26:03');
INSERT INTO `sys_oper_log` VALUES (266, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639668464853,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:27:45');
INSERT INTO `sys_oper_log` VALUES (267, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639668571792,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:29:31');
INSERT INTO `sys_oper_log` VALUES (268, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"rcProjectNum\":1,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668651579,\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:30:52');
INSERT INTO `sys_oper_log` VALUES (269, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639668666042,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:31:06');
INSERT INTO `sys_oper_log` VALUES (270, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639668792743,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:33:12');
INSERT INTO `sys_oper_log` VALUES (271, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639668865156,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:34:25');
INSERT INTO `sys_oper_log` VALUES (272, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669105926,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:38:26');
INSERT INTO `sys_oper_log` VALUES (273, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669211377,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:40:11');
INSERT INTO `sys_oper_log` VALUES (274, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669339441,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:42:19');
INSERT INTO `sys_oper_log` VALUES (275, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669507263,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:45:07');
INSERT INTO `sys_oper_log` VALUES (276, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669763338,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:49:23');
INSERT INTO `sys_oper_log` VALUES (277, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639669892380,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:51:32');
INSERT INTO `sys_oper_log` VALUES (278, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670029826,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:53:50');
INSERT INTO `sys_oper_log` VALUES (279, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670113459,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:55:13');
INSERT INTO `sys_oper_log` VALUES (280, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670257838,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:57:37');
INSERT INTO `sys_oper_log` VALUES (281, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670379030,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-16 23:59:39');
INSERT INTO `sys_oper_log` VALUES (282, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670572705,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:02:52');
INSERT INTO `sys_oper_log` VALUES (283, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670753418,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:05:53');
INSERT INTO `sys_oper_log` VALUES (284, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670871394,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:07:51');
INSERT INTO `sys_oper_log` VALUES (285, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639670999518,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:09:59');
INSERT INTO `sys_oper_log` VALUES (286, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671075375,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:11:15');
INSERT INTO `sys_oper_log` VALUES (287, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671271812,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:14:32');
INSERT INTO `sys_oper_log` VALUES (288, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671424084,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:17:04');
INSERT INTO `sys_oper_log` VALUES (289, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671482782,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:18:02');
INSERT INTO `sys_oper_log` VALUES (290, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671604710,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:20:04');
INSERT INTO `sys_oper_log` VALUES (291, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639671757531,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 00:22:37');
INSERT INTO `sys_oper_log` VALUES (292, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639720781552,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 13:59:42');
INSERT INTO `sys_oper_log` VALUES (293, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639720984706,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:03:04');
INSERT INTO `sys_oper_log` VALUES (294, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639721440394,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:10:40');
INSERT INTO `sys_oper_log` VALUES (295, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639721476826,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:11:17');
INSERT INTO `sys_oper_log` VALUES (296, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639722001418,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:20:01');
INSERT INTO `sys_oper_log` VALUES (297, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639722251146,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:24:11');
INSERT INTO `sys_oper_log` VALUES (298, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639722931487,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"faf\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"a\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:35:31');
INSERT INTO `sys_oper_log` VALUES (299, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"rcProjectNum\":1,\"rcPatentNum\":1,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"1\",\"createBy\":\"admin\",\"createTime\":1639724010283,\"rcId\":1652133453,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:53:30');
INSERT INTO `sys_oper_log` VALUES (300, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":1,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639724052494,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"1\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"admin\",\"rcId\":1652133453,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:54:12');
INSERT INTO `sys_oper_log` VALUES (301, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639724144852,\"rcProjectNum\":10,\"rcActivation\":88.0,\"rcPatentNum\":10,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"admin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:55:45');
INSERT INTO `sys_oper_log` VALUES (302, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":422169164,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639724217150,\"rcProjectNum\":10,\"rcActivation\":87.1,\"rcPatentNum\":8,\"cyDirection\":\"高端装备制造产业方向\",\"rcResearchField\":\"机械自动化\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"admin\",\"rcId\":697249190,\"rcName\":\"安婷\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:56:57');
INSERT INTO `sys_oper_log` VALUES (303, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639724232731,\"rcProjectNum\":10,\"rcActivation\":88.0,\"rcPatentNum\":10,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"admin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:13');
INSERT INTO `sys_oper_log` VALUES (304, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639724237566,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:17');
INSERT INTO `sys_oper_log` VALUES (305, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcLevel\":\"市级\",\"rcAreas\":\"北京市\",\"updateTime\":1639724240864,\"rcProjectNum\":8,\"rcActivation\":90.1,\"rcPatentNum\":5,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"admin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:20');
INSERT INTO `sys_oper_log` VALUES (306, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639724244873,\"rcProjectNum\":3,\"rcActivation\":89.02,\"rcPatentNum\":4,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"admin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:24');
INSERT INTO `sys_oper_log` VALUES (307, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639724248115,\"rcProjectNum\":10,\"rcActivation\":88.0,\"rcPatentNum\":10,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"admin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:28');
INSERT INTO `sys_oper_log` VALUES (308, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":12,\"rcLevel\":\"国家级\",\"rcAreas\":\"黑龙江省/哈尔滨市\",\"updateTime\":1639724266177,\"rcProjectNum\":67,\"rcActivation\":80.9,\"rcPatentNum\":4,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"车联网\",\"createBy\":\"admin\",\"createTime\":1639582299000,\"updateBy\":\"admin\",\"rcId\":414292156,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:57:46');
INSERT INTO `sys_oper_log` VALUES (309, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":7,\"rcLevel\":\"院士\",\"rcAreas\":\"吉林省/长春市\",\"updateTime\":1639724280004,\"rcProjectNum\":5,\"rcActivation\":88.0,\"rcPatentNum\":10,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"网络安全\",\"createBy\":\"admin\",\"createTime\":1639320207000,\"updateBy\":\"admin\",\"rcId\":1462441642,\"rcName\":\"刘星\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 14:58:00');
INSERT INTO `sys_oper_log` VALUES (310, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1222422917,\"rcPaperNum\":10,\"rcLevel\":\"院士\",\"rcAreas\":\"山东省/济南市\",\"rcProjectNum\":8,\"rcActivation\":78.9,\"rcPatentNum\":20,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"基因工程\",\"createBy\":\"admin\",\"createTime\":1639726318605,\"rcId\":981409868,\"rcName\":\"吴开\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 15:31:58');
INSERT INTO `sys_oper_log` VALUES (311, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1838554377,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"辽宁省/鞍山市\",\"rcProjectNum\":8,\"rcActivation\":91.2,\"rcPatentNum\":21,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"大数据分析\",\"createBy\":\"admin\",\"createTime\":1639726417010,\"rcId\":900759249,\"rcName\":\"廖七\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 15:33:37');
INSERT INTO `sys_oper_log` VALUES (312, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"蔚来控股有限公司\",\"isDeleted\":0,\"qyIndustry\":773182312,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639726844534,\"qyAreas\":\"安徽省/合肥市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 15:40:46');
INSERT INTO `sys_oper_log` VALUES (313, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"蔚来控股有限公司\",\"isDeleted\":0,\"qyIndustry\":1717163125,\"createTime\":1639117450000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":2102076844,\"updateTime\":1639726951857,\"qyAreas\":\"安徽省/合肥市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 15:42:32');
INSERT INTO `sys_oper_log` VALUES (314, '企业管理', 2, 'com.ruoyi.qygl.controller.QyglController.edit()', 'PUT', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"广东动力资源有限公司\",\"isDeleted\":0,\"qyIndustry\":1868797674,\"createTime\":1639143688000,\"updateBy\":\"admin\",\"cy\":{\"isDeleted\":0},\"qyId\":395991575,\"updateTime\":1639726959159,\"qyAreas\":\"广东省/广州市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 15:42:39');
INSERT INTO `sys_oper_log` VALUES (315, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"苏达山新材料有限公司\",\"qyIndustry\":1868797674,\"createTime\":1639729468945,\"qyId\":1224324815,\"qyAreas\":\"浙江省/杭州市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:24:29');
INSERT INTO `sys_oper_log` VALUES (316, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"尤利新材料有限公司\",\"qyIndustry\":773182312,\"createTime\":1639729534091,\"qyId\":1783052344,\"qyAreas\":\"广东省/广州市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:25:34');
INSERT INTO `sys_oper_log` VALUES (317, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1783052344,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639729582100,\"rcProjectNum\":56,\"rcActivation\":91.03,\"rcPatentNum\":20,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"admin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:26:22');
INSERT INTO `sys_oper_log` VALUES (318, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":192020907,\"rcPaperNum\":1,\"rcLevel\":\"省级\",\"rcAreas\":\"北京市\",\"rcProjectNum\":1,\"rcPatentNum\":1,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"1\",\"createBy\":\"admin\",\"createTime\":1639730155607,\"rcId\":571400081,\"rcName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:35:56');
INSERT INTO `sys_oper_log` VALUES (319, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":769838009,\"rcPaperNum\":1,\"rcLevel\":\"省级\",\"rcAreas\":\"北京市\",\"updateTime\":1639730167389,\"rcProjectNum\":1,\"rcActivation\":60.0,\"rcPatentNum\":1,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"1\",\"createBy\":\"admin\",\"createTime\":1639730156000,\"updateBy\":\"admin\",\"rcId\":571400081,\"rcName\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:36:07');
INSERT INTO `sys_oper_log` VALUES (320, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'admin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":769838009,\"rcPaperNum\":13,\"rcLevel\":\"省级\",\"rcAreas\":\"北京市\",\"updateTime\":1639730210867,\"rcProjectNum\":10,\"rcActivation\":89.0,\"rcPatentNum\":12,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"18\",\"createBy\":\"admin\",\"createTime\":1639730156000,\"updateBy\":\"admin\",\"rcId\":571400081,\"rcName\":\"刘美\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:36:50');
INSERT INTO `sys_oper_log` VALUES (321, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":1,\"createTime\":1639730334870,\"cyName\":\"航空航天装备产业\",\"cyId\":1095808224}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:38:55');
INSERT INTO `sys_oper_log` VALUES (322, '企业管理', 1, 'com.ruoyi.qygl.controller.QyglController.add()', 'POST', 1, 'admin', NULL, '/qygl', '127.0.0.1', '', '{\"createBy\":\"admin\",\"qyName\":\"1\",\"qyIndustry\":773182312,\"createTime\":1639730621126,\"qyId\":1679018088,\"qyAreas\":\"北京市\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:43:41');
INSERT INTO `sys_oper_log` VALUES (323, '企业管理', 3, 'com.ruoyi.qygl.controller.QyglController.remove()', 'DELETE', 1, 'admin', NULL, '/qygl/1679018088', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:44:57');
INSERT INTO `sys_oper_log` VALUES (324, '产业管理', 1, 'com.ruoyi.cygl.controller.CyglCyController.add()', 'POST', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":\"admin\",\"createTime\":1639730706909,\"cyName\":\"1\",\"cyId\":985179347}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:45:06');
INSERT INTO `sys_oper_log` VALUES (325, '产业管理', 2, 'com.ruoyi.cygl.controller.CyglCyController.edit()', 'PUT', 1, 'admin', NULL, '/cy', '127.0.0.1', '', '{\"cyDirection\":\"高端装备制造产业方向\",\"createBy\":\"admin\",\"isDeleted\":0,\"createTime\":1639730707000,\"updateBy\":\"admin\",\"updateTime\":1639730733628,\"cyName\":\"1\",\"cyId\":985179347}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:45:33');
INSERT INTO `sys_oper_log` VALUES (326, '产业管理', 3, 'com.ruoyi.cygl.controller.CyglCyController.remove()', 'DELETE', 1, 'admin', NULL, '/cy/985179347', '127.0.0.1', '', NULL, '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-17 16:45:44');
INSERT INTO `sys_oper_log` VALUES (327, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1638446846000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"李四\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1638446846000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:49:51');
INSERT INTO `sys_oper_log` VALUES (328, '个人信息', 2, 'com.ruoyi.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/user/profile', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1638446846000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"12345@qq.com\",\"nickName\":\"李四\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1638446846000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:50:05');
INSERT INTO `sys_oper_log` VALUES (329, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1638446846000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2006,2000,2019,2013,2020,2001,2005,2014,2018,2021,2025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:53:47');
INSERT INTO `sys_oper_log` VALUES (330, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1638446846000,\"remark\":\"普通用户\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"刘依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1638446846000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:55:44');
INSERT INTO `sys_oper_log` VALUES (331, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1638446846000,\"remark\":\"普通用户\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"ly@qq.com\",\"nickName\":\"刘依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1638446846000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:56:11');
INSERT INTO `sys_oper_log` VALUES (332, '用户管理', 4, 'com.ruoyi.system.controller.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/user/authRole', '127.0.0.1', '', '2 [2]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:56:30');
INSERT INTO `sys_oper_log` VALUES (333, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"政府产业人才股份公司\",\"leader\":\"李四\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"123456@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:58:54');
INSERT INTO `sys_oper_log` VALUES (334, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"深圳总公司\",\"leader\":\"张三\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"zs@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:59:10');
INSERT INTO `sys_oper_log` VALUES (335, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"研发部门\",\"leader\":\"赵武\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zw@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:59:25');
INSERT INTO `sys_oper_log` VALUES (336, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"市场部门\",\"leader\":\"赵武\",\"deptId\":104,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zw@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 15:59:43');
INSERT INTO `sys_oper_log` VALUES (337, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"测试部门\",\"leader\":\"赵武\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zw@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:00:07');
INSERT INTO `sys_oper_log` VALUES (338, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"运维部门\",\"leader\":\"赵武\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zw@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:00:30');
INSERT INTO `sys_oper_log` VALUES (339, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"财务部门\",\"leader\":\"赵武\",\"deptId\":106,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"zw@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:00:43');
INSERT INTO `sys_oper_log` VALUES (340, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"长沙分公司\",\"leader\":\"王安石\",\"deptId\":102,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"was@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:01:12');
INSERT INTO `sys_oper_log` VALUES (341, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"市场部门\",\"leader\":\"王安石\",\"deptId\":108,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"was@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:01:26');
INSERT INTO `sys_oper_log` VALUES (342, '部门管理', 2, 'com.ruoyi.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/dept', '127.0.0.1', '', '{\"deptName\":\"财务部门\",\"leader\":\"王安石\",\"deptId\":109,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":102,\"createBy\":\"admin\",\"children\":[],\"createTime\":1638446846000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,102\",\"email\":\"was@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:01:39');
INSERT INTO `sys_oper_log` VALUES (343, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1638446846000,\"remark\":\"普通用户\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"ly@qq.com\",\"nickName\":\"刘依\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"赵武\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1638446846000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:03:13');
INSERT INTO `sys_oper_log` VALUES (344, '通知公告', 2, 'com.ruoyi.system.controller.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/notice', '127.0.0.1', '', '{\"noticeContent\":\"新版本内容\",\"createBy\":\"admin\",\"createTime\":1638446847000,\"updateBy\":\"admin\",\"noticeType\":\"2\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2018-07-01 产业人才新版本发布啦\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:04:26');
INSERT INTO `sys_oper_log` VALUES (345, '通知公告', 2, 'com.ruoyi.system.controller.SysNoticeController.edit()', 'PUT', 1, 'admin', NULL, '/notice', '127.0.0.1', '', '{\"noticeContent\":\"<p>维护内容</p>\",\"createBy\":\"admin\",\"createTime\":1638446847000,\"updateBy\":\"admin\",\"noticeType\":\"1\",\"remark\":\"管理员\",\"params\":{},\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-07-01 产业人才系统凌晨维护\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:04:41');
INSERT INTO `sys_oper_log` VALUES (346, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/user/resetPwd', '127.0.0.1', '', '{\"admin\":false,\"password\":\"$2a$10$IoKUt6xRbq9aqk809gXy7Oaizo9tE3fV5cQUVGe8hFrUYlhH4/.s2\",\"updateBy\":\"admin\",\"params\":{},\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:12:57');
INSERT INTO `sys_oper_log` VALUES (347, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1638446846000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"menuIds\":[2006,2000,2019,2013,2020,2001,2005,2027,2014,2018,2021,2025,2026],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:14:47');
INSERT INTO `sys_oper_log` VALUES (348, '角色管理', 1, 'com.ruoyi.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"系统管理员\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"superAdmin\",\"roleName\":\"系统管理员\",\"deptIds\":[],\"menuIds\":[1,2,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2006,2000,2001,2002,2003,2004,2005,2027,2019,2013,2014,2015,2016,2017,2018,2020,2021,2022,2023,2024,2025,2026,109,1046,1047,1048,111,112],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:54:20');
INSERT INTO `sys_oper_log` VALUES (349, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '127.0.0.1', '', '{\"phonenumber\":\"16696759916\",\"admin\":false,\"remark\":\"集团董事长\",\"password\":\"$2a$10$zG/.7cM9fmxxVPWX7BAGaedM4Amp7wdbwCSnv3bAp5SfzCQHge3Ue\",\"postIds\":[1],\"email\":\"sa@qq.com\",\"nickName\":\"superAdmin\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"王安石\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 16:56:32');
INSERT INTO `sys_oper_log` VALUES (350, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '127.0.0.1', '', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"remark\":\"系统管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1639904060000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"superAdmin\",\"roleName\":\"系统管理员\",\"menuIds\":[1,2,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2006,2000,2001,2002,2003,2004,2005,2027,2019,2013,2014,2015,2016,2017,2018,2020,2021,2022,2023,2024,2025,2026,109,1046,1047,1048,111,112],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 17:01:00');
INSERT INTO `sys_oper_log` VALUES (351, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1838554377,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"辽宁省/鞍山市\",\"updateTime\":1639928902951,\"rcProjectNum\":8,\"rcActivation\":62.9,\"rcPatentNum\":21,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"大数据分析\",\"createBy\":\"admin\",\"createTime\":1639726417000,\"updateBy\":\"superAdmin\",\"rcId\":900759249,\"rcName\":\"廖七\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:48:27');
INSERT INTO `sys_oper_log` VALUES (352, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1838554377,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"辽宁省/鞍山市\",\"updateTime\":1639928896910,\"rcProjectNum\":8,\"rcActivation\":62.9,\"rcPatentNum\":21,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"大数据分析\",\"createBy\":\"admin\",\"createTime\":1639726417000,\"updateBy\":\"superAdmin\",\"rcId\":900759249,\"rcName\":\"廖七\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:48:27');
INSERT INTO `sys_oper_log` VALUES (353, '新增人才', 1, 'com.ruoyi.rcgl.controller.RcglRcController.add()', 'POST', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1224324815,\"rcPaperNum\":30,\"rcLevel\":\"市级\",\"rcAreas\":\"广东省/佛山市\",\"rcProjectNum\":10,\"rcActivation\":91.5,\"rcPatentNum\":15,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"可再生能源\",\"createBy\":\"superAdmin\",\"createTime\":1639929172435,\"rcId\":1813461686,\"rcName\":\"甄子丹\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:52:52');
INSERT INTO `sys_oper_log` VALUES (354, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1224324815,\"rcPaperNum\":30,\"rcLevel\":\"市级\",\"rcAreas\":\"广东省/佛山市\",\"updateTime\":1639929225429,\"rcProjectNum\":10,\"rcActivation\":88.5,\"rcPatentNum\":15,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"可再生能源\",\"createBy\":\"superAdmin\",\"createTime\":1639929172000,\"updateBy\":\"superAdmin\",\"rcId\":1813461686,\"rcName\":\"甄子丹\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:53:45');
INSERT INTO `sys_oper_log` VALUES (355, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1222422917,\"rcPaperNum\":10,\"rcLevel\":\"院士\",\"rcAreas\":\"山东省/济南市\",\"updateTime\":1639929237966,\"rcProjectNum\":8,\"rcActivation\":63.4,\"rcPatentNum\":20,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"基因工程\",\"createBy\":\"admin\",\"createTime\":1639726319000,\"updateBy\":\"superAdmin\",\"rcId\":981409868,\"rcName\":\"吴开\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:53:58');
INSERT INTO `sys_oper_log` VALUES (356, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1783052344,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639929242712,\"rcProjectNum\":56,\"rcActivation\":100.0,\"rcPatentNum\":20,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"superAdmin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:03');
INSERT INTO `sys_oper_log` VALUES (357, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcLevel\":\"市级\",\"rcAreas\":\"北京市\",\"updateTime\":1639929246332,\"rcProjectNum\":8,\"rcActivation\":37.9,\"rcPatentNum\":5,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"superAdmin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:06');
INSERT INTO `sys_oper_log` VALUES (358, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1783052344,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639929260609,\"rcProjectNum\":56,\"rcActivation\":100.0,\"rcPatentNum\":20,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"superAdmin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:20');
INSERT INTO `sys_oper_log` VALUES (359, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639929264791,\"rcProjectNum\":3,\"rcActivation\":27.200000000000003,\"rcPatentNum\":4,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"superAdmin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:24');
INSERT INTO `sys_oper_log` VALUES (360, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":769838009,\"rcPaperNum\":13,\"rcLevel\":\"省级\",\"rcAreas\":\"北京市\",\"updateTime\":1639929271903,\"rcProjectNum\":10,\"rcActivation\":57.9,\"rcPatentNum\":12,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"18\",\"createBy\":\"admin\",\"createTime\":1639730156000,\"updateBy\":\"superAdmin\",\"rcId\":571400081,\"rcName\":\"刘美\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:31');
INSERT INTO `sys_oper_log` VALUES (361, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1224324815,\"rcPaperNum\":30,\"rcLevel\":\"市级\",\"rcAreas\":\"广东省/佛山市\",\"updateTime\":1639929277732,\"rcProjectNum\":10,\"rcActivation\":88.5,\"rcPatentNum\":15,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"可再生能源\",\"createBy\":\"superAdmin\",\"createTime\":1639929172000,\"updateBy\":\"superAdmin\",\"rcId\":1813461686,\"rcName\":\"甄子丹\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:54:37');
INSERT INTO `sys_oper_log` VALUES (362, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1783052344,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639929327280,\"rcProjectNum\":56,\"rcActivation\":100.0,\"rcPatentNum\":20,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"superAdmin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:27');
INSERT INTO `sys_oper_log` VALUES (363, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1224324815,\"rcPaperNum\":30,\"rcLevel\":\"市级\",\"rcAreas\":\"广东省/佛山市\",\"updateTime\":1639929331557,\"rcProjectNum\":10,\"rcActivation\":88.5,\"rcPatentNum\":15,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"可再生能源\",\"createBy\":\"superAdmin\",\"createTime\":1639929172000,\"updateBy\":\"superAdmin\",\"rcId\":1813461686,\"rcName\":\"甄子丹\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:31');
INSERT INTO `sys_oper_log` VALUES (364, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":2102076844,\"rcPaperNum\":7,\"rcLevel\":\"院士\",\"rcAreas\":\"吉林省/长春市\",\"updateTime\":1639929335017,\"rcProjectNum\":5,\"rcActivation\":60.0,\"rcPatentNum\":10,\"cyDirection\":\"节能环保方向\",\"rcResearchField\":\"网络安全\",\"createBy\":\"admin\",\"createTime\":1639320207000,\"updateBy\":\"superAdmin\",\"rcId\":1462441642,\"rcName\":\"刘星\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:35');
INSERT INTO `sys_oper_log` VALUES (365, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639929340103,\"rcProjectNum\":10,\"rcActivation\":60.0,\"rcPatentNum\":10,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"superAdmin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:40');
INSERT INTO `sys_oper_log` VALUES (366, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":422169164,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639929344166,\"rcProjectNum\":10,\"rcActivation\":60.0,\"rcPatentNum\":8,\"cyDirection\":\"高端装备制造产业方向\",\"rcResearchField\":\"机械自动化\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"superAdmin\",\"rcId\":697249190,\"rcName\":\"安婷\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:44');
INSERT INTO `sys_oper_log` VALUES (367, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":12,\"rcLevel\":\"国家级\",\"rcAreas\":\"黑龙江省/哈尔滨市\",\"updateTime\":1639929347562,\"rcProjectNum\":67,\"rcActivation\":100.0,\"rcPatentNum\":4,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"车联网\",\"createBy\":\"admin\",\"createTime\":1639582299000,\"updateBy\":\"superAdmin\",\"rcId\":414292156,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:47');
INSERT INTO `sys_oper_log` VALUES (368, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1224324815,\"rcPaperNum\":30,\"rcLevel\":\"市级\",\"rcAreas\":\"广东省/佛山市\",\"updateTime\":1639929352171,\"rcProjectNum\":10,\"rcActivation\":88.5,\"rcPatentNum\":15,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"可再生能源\",\"createBy\":\"superAdmin\",\"createTime\":1639929172000,\"updateBy\":\"superAdmin\",\"rcId\":1813461686,\"rcName\":\"甄子丹\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:52');
INSERT INTO `sys_oper_log` VALUES (369, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1222422917,\"rcPaperNum\":10,\"rcLevel\":\"院士\",\"rcAreas\":\"山东省/济南市\",\"updateTime\":1639929356072,\"rcProjectNum\":8,\"rcActivation\":63.4,\"rcPatentNum\":20,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"基因工程\",\"createBy\":\"admin\",\"createTime\":1639726319000,\"updateBy\":\"superAdmin\",\"rcId\":981409868,\"rcName\":\"吴开\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:55:56');
INSERT INTO `sys_oper_log` VALUES (370, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1838554377,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"辽宁省/鞍山市\",\"updateTime\":1639929360121,\"rcProjectNum\":8,\"rcActivation\":65.1,\"rcPatentNum\":21,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"大数据分析\",\"createBy\":\"admin\",\"createTime\":1639726417000,\"updateBy\":\"superAdmin\",\"rcId\":900759249,\"rcName\":\"廖七\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:56:00');
INSERT INTO `sys_oper_log` VALUES (371, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1222422917,\"rcPaperNum\":10,\"rcLevel\":\"院士\",\"rcAreas\":\"山东省/济南市\",\"updateTime\":1639929365456,\"rcProjectNum\":8,\"rcActivation\":63.4,\"rcPatentNum\":20,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"基因工程\",\"createBy\":\"admin\",\"createTime\":1639726319000,\"updateBy\":\"superAdmin\",\"rcId\":981409868,\"rcName\":\"吴开\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:56:05');
INSERT INTO `sys_oper_log` VALUES (372, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1838554377,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"辽宁省/鞍山市\",\"updateTime\":1639929368818,\"rcProjectNum\":8,\"rcActivation\":65.1,\"rcPatentNum\":21,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"大数据分析\",\"createBy\":\"admin\",\"createTime\":1639726417000,\"updateBy\":\"superAdmin\",\"rcId\":900759249,\"rcName\":\"廖七\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:56:08');
INSERT INTO `sys_oper_log` VALUES (373, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":422169164,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"北京市\",\"updateTime\":1639929379624,\"rcProjectNum\":10,\"rcActivation\":77.19999999999999,\"rcPatentNum\":26,\"cyDirection\":\"高端装备制造产业方向\",\"rcResearchField\":\"机械自动化\",\"createBy\":\"admin\",\"createTime\":1639668652000,\"updateBy\":\"superAdmin\",\"rcId\":697249190,\"rcName\":\"安婷\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:56:19');
INSERT INTO `sys_oper_log` VALUES (374, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639929392064,\"rcProjectNum\":10,\"rcActivation\":60.0,\"rcPatentNum\":15,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"superAdmin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-19 23:56:32');
INSERT INTO `sys_oper_log` VALUES (375, '企业管理', 5, 'com.ruoyi.qygl.controller.QyglController.export()', 'POST', 1, 'superAdmin', NULL, '/qygl/export', '127.0.0.1', '', '{\"qyAreas\":\"\"}', NULL, 0, NULL, '2021-12-20 13:57:10');
INSERT INTO `sys_oper_log` VALUES (376, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcLevel\":\"市级\",\"rcAreas\":\"北京市\",\"updateTime\":1639979986304,\"rcProjectNum\":8,\"rcActivation\":60.0,\"rcPatentNum\":15,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"superAdmin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 13:59:46');
INSERT INTO `sys_oper_log` VALUES (377, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":769838009,\"rcPaperNum\":13,\"rcLevel\":\"省级\",\"rcAreas\":\"北京市\",\"updateTime\":1639980005496,\"rcProjectNum\":10,\"rcActivation\":74.9,\"rcPatentNum\":22,\"cyDirection\":\"生物产业方向\",\"rcResearchField\":\"18\",\"createBy\":\"admin\",\"createTime\":1639730156000,\"updateBy\":\"superAdmin\",\"rcId\":571400081,\"rcName\":\"刘美\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:00:05');
INSERT INTO `sys_oper_log` VALUES (378, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639980090903,\"rcProjectNum\":13,\"rcActivation\":100.0,\"rcPatentNum\":40,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"superAdmin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:01:30');
INSERT INTO `sys_oper_log` VALUES (379, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":11,\"rcLevel\":\"国家级\",\"rcAreas\":\"河北省/秦皇岛市\",\"updateTime\":1639980105772,\"rcProjectNum\":10,\"rcActivation\":60.0,\"rcPatentNum\":15,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"电力资源\",\"createBy\":\"admin\",\"createTime\":1639724010000,\"updateBy\":\"superAdmin\",\"rcId\":1652133453,\"rcName\":\"张涛\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:01:45');
INSERT INTO `sys_oper_log` VALUES (380, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":391866149,\"rcPaperNum\":12,\"rcLevel\":\"国家级\",\"rcAreas\":\"黑龙江省/哈尔滨市\",\"updateTime\":1639980131540,\"rcProjectNum\":16,\"rcActivation\":87.6,\"rcPatentNum\":24,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"车联网\",\"createBy\":\"admin\",\"createTime\":1639582299000,\"updateBy\":\"superAdmin\",\"rcId\":414292156,\"rcName\":\"赵武\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:02:11');
INSERT INTO `sys_oper_log` VALUES (381, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":1783052344,\"rcPaperNum\":10,\"rcLevel\":\"省级\",\"rcAreas\":\"广东省/韶关市\",\"updateTime\":1639980144257,\"rcProjectNum\":26,\"rcActivation\":95.80000000000001,\"rcPatentNum\":20,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"新能源\",\"createBy\":\"admin\",\"createTime\":1639642204000,\"updateBy\":\"superAdmin\",\"rcId\":906451348,\"rcName\":\"吴六\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:02:24');
INSERT INTO `sys_oper_log` VALUES (382, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":395991575,\"rcPaperNum\":10,\"rcLevel\":\"国家级\",\"rcAreas\":\"广东省/广州市\",\"updateTime\":1639980151086,\"rcProjectNum\":13,\"rcActivation\":100.0,\"rcPatentNum\":40,\"cyDirection\":\"新材料产业方向\",\"rcResearchField\":\"AI算法\",\"createBy\":\"admin\",\"createTime\":1639317859000,\"updateBy\":\"superAdmin\",\"rcId\":1018529144,\"rcName\":\"张三\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:02:31');
INSERT INTO `sys_oper_log` VALUES (383, '修改人才信息', 2, 'com.ruoyi.rcgl.controller.RcglRcController.edit()', 'PUT', 1, 'superAdmin', NULL, '/rc', '127.0.0.1', '', '{\"rcCompany\":195258530,\"rcPaperNum\":10,\"rcLevel\":\"市级\",\"rcAreas\":\"北京市\",\"updateTime\":1639980155995,\"rcProjectNum\":8,\"rcActivation\":60.0,\"rcPatentNum\":15,\"cyDirection\":\"新一代信息技术产业方向\",\"rcResearchField\":\"数据挖掘\",\"createBy\":\"admin\",\"createTime\":1639319272000,\"updateBy\":\"superAdmin\",\"rcId\":1317827681,\"rcName\":\"李四\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-12-20 14:02:36');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-12-02 20:07:26', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-12-02 20:07:26', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-12-02 20:07:26', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:14:47', '普通角色');
INSERT INTO `sys_role` VALUES (100, '系统管理员', 'superAdmin', 3, '1', 1, 1, '0', '0', 'admin', '2021-12-19 16:54:20', 'admin', '2021-12-19 17:01:00', '系统管理员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 111);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1021);
INSERT INTO `sys_role_menu` VALUES (100, 1022);
INSERT INTO `sys_role_menu` VALUES (100, 1023);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1025);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '李四', '00', '12345@qq.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-12-02 20:07:26', 'admin', '2021-12-02 20:07:26', '', '2021-12-19 15:50:05', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ly', '刘依', '00', 'ly@qq.com', '15666666666', '1', '', '$2a$10$IoKUt6xRbq9aqk809gXy7Oaizo9tE3fV5cQUVGe8hFrUYlhH4/.s2', '0', '0', '127.0.0.1', '2021-12-02 20:07:26', 'admin', '2021-12-02 20:07:26', 'admin', '2021-12-19 16:12:57', '普通用户');
INSERT INTO `sys_user` VALUES (100, 100, 'superAdmin', '王安石', '00', 'sa@qq.com', '16696759916', '0', '', '$2a$10$zG/.7cM9fmxxVPWX7BAGaedM4Amp7wdbwCSnv3bAp5SfzCQHge3Ue', '0', '0', '', NULL, 'admin', '2021-12-19 16:56:32', '', NULL, '集团董事长');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 4);
INSERT INTO `sys_user_post` VALUES (100, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

SET FOREIGN_KEY_CHECKS = 1;
