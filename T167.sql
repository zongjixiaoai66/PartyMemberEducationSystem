/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t167`;
CREATE DATABASE IF NOT EXISTS `t167` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t167`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/meishishangcheng/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/meishishangcheng/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/meishishangcheng/upload/config3.jpg');

DROP TABLE IF EXISTS `dangfeidengji`;
CREATE TABLE IF NOT EXISTS `dangfeidengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhibu_id` int DEFAULT NULL COMMENT '所在支部',
  `dangfeidengji_name` varchar(200) DEFAULT NULL COMMENT '缴纳金额 Search111',
  `dangfeidengji_types` int DEFAULT NULL COMMENT '是否支付 Search111',
  `dangfeidengji_time` timestamp NULL DEFAULT NULL COMMENT '登记日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='党费登记';

DELETE FROM `dangfeidengji`;
INSERT INTO `dangfeidengji` (`id`, `zhibu_id`, `dangfeidengji_name`, `dangfeidengji_types`, `dangfeidengji_time`, `create_time`) VALUES
	(1, 3, '缴纳金额1', 1, '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(2, 3, '缴纳金额2', 2, '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(3, 1, '缴纳金额3', 2, '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(4, 2, '缴纳金额4', 2, '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(5, 3, '缴纳金额5', 1, '2022-03-01 02:29:29', '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'zhiburizhi_types', '日志类型', 1, '日志类型1', NULL, NULL, '2022-03-01 02:29:21'),
	(2, 'zhiburizhi_types', '日志类型', 2, '日志类型2', NULL, NULL, '2022-03-01 02:29:21'),
	(3, 'zhiburizhi_types', '日志类型', 3, '日志类型3', NULL, NULL, '2022-03-01 02:29:21'),
	(4, 'jicengdanwei_types', '单位类型', 1, '单位类型1', NULL, NULL, '2022-03-01 02:29:21'),
	(5, 'jicengdanwei_types', '单位类型', 2, '单位类型2', NULL, NULL, '2022-03-01 02:29:21'),
	(6, 'zhiburongyu_types', '荣誉类型', 1, '荣誉类型1', NULL, NULL, '2022-03-01 02:29:21'),
	(7, 'zhiburongyu_types', '荣誉类型', 2, '荣誉类型2', NULL, NULL, '2022-03-01 02:29:21'),
	(8, 'zhiburongyu_types', '荣誉类型', 3, '荣誉类型3', NULL, NULL, '2022-03-01 02:29:21'),
	(9, 'jiangchengjilu_types', '奖惩类型', 1, '奖惩类型1', NULL, NULL, '2022-03-01 02:29:21'),
	(10, 'jiangchengjilu_types', '奖惩类型', 2, '奖惩类型2', NULL, NULL, '2022-03-01 02:29:21'),
	(11, 'jiangchengjilu_types', '奖惩类型', 3, '奖惩类型3', NULL, NULL, '2022-03-01 02:29:21'),
	(12, 'dangfeidengji_types', '是否支付', 1, '未支付', NULL, NULL, '2022-03-01 02:29:21'),
	(13, 'dangfeidengji_types', '是否支付', 2, '已支付', NULL, NULL, '2022-03-01 02:29:21'),
	(14, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-01 02:29:21'),
	(15, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-01 02:29:21'),
	(16, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-01 02:29:21'),
	(17, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-01 02:29:21'),
	(18, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-01 02:29:21');

DROP TABLE IF EXISTS `jiangchengjilu`;
CREATE TABLE IF NOT EXISTS `jiangchengjilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhibu_id` int DEFAULT NULL COMMENT '支部',
  `jiangchengjilu_name` varchar(200) DEFAULT NULL COMMENT '奖惩标题 Search111',
  `jiangchengjilu_rongyu` varchar(200) DEFAULT NULL COMMENT '奖惩',
  `jiangchengjilu_types` int DEFAULT NULL COMMENT '奖惩类型 Search111',
  `jiangchengjilu_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `jiangchengjilu_wendang` varchar(200) DEFAULT NULL COMMENT '文档',
  `zhiburizhi_time` timestamp NULL DEFAULT NULL COMMENT '日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='奖惩记录';

DELETE FROM `jiangchengjilu`;
INSERT INTO `jiangchengjilu` (`id`, `zhibu_id`, `jiangchengjilu_name`, `jiangchengjilu_rongyu`, `jiangchengjilu_types`, `jiangchengjilu_file`, `jiangchengjilu_wendang`, `zhiburizhi_time`, `create_time`) VALUES
	(1, 1, '奖惩标题1', '奖惩1', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '文档1', '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(2, 2, '奖惩标题2', '奖惩2', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '文档2', '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(3, 3, '奖惩标题3', '奖惩3', 3, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '文档3', '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(4, 3, '奖惩标题4', '奖惩4', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '文档4', '2022-03-01 02:29:29', '2022-03-01 02:29:29'),
	(5, 3, '奖惩标题5', '奖惩5', 3, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '文档5', '2022-03-01 02:29:29', '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `jicengdanwei`;
CREATE TABLE IF NOT EXISTS `jicengdanwei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhibu_id` int DEFAULT NULL COMMENT '支部',
  `jicengdanwei_name` varchar(200) DEFAULT NULL COMMENT '单位名称 Search111',
  `jicengdanwei_lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `jicengdanwei_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jicengdanwei_types` int DEFAULT NULL COMMENT '单位类型 Search111',
  `jicengdanwei_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='基层单位';

DELETE FROM `jicengdanwei`;
INSERT INTO `jicengdanwei` (`id`, `zhibu_id`, `jicengdanwei_name`, `jicengdanwei_lianxiren`, `jicengdanwei_phone`, `jicengdanwei_types`, `jicengdanwei_address`, `create_time`) VALUES
	(1, 1, '单位名称1', '联系人1', '17703786901', 1, '单位地址1', '2022-03-01 02:29:29'),
	(2, 3, '单位名称2', '联系人2', '17703786902', 2, '单位地址2', '2022-03-01 02:29:29'),
	(3, 2, '单位名称3', '联系人3', '17703786903', 2, '单位地址3', '2022-03-01 02:29:29'),
	(4, 2, '单位名称4', '联系人4', '17703786904', 1, '单位地址4', '2022-03-01 02:29:29'),
	(5, 3, '单位名称5', '联系人5', '17703786905', 1, '单位地址5', '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/news1.jpg', '2022-03-01 02:29:29', '公告详情1', '2022-03-01 02:29:29'),
	(2, '公告标题2', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/news2.jpg', '2022-03-01 02:29:29', '公告详情2', '2022-03-01 02:29:29'),
	(3, '公告标题3', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/news3.jpg', '2022-03-01 02:29:29', '公告详情3', '2022-03-01 02:29:29'),
	(4, '公告标题4', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/news4.jpg', '2022-03-01 02:29:29', '公告详情4', '2022-03-01 02:29:29'),
	(5, '公告标题5', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/news5.jpg', '2022-03-01 02:29:29', '公告详情5', '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'xnsidcr0tihndw0tl5dj1bglst192fjm', '2022-03-01 02:11:14', '2024-04-29 12:28:10'),
	(2, 2, 'a2', 'yonghu', '党员', 'cphr48iwux6k9vi2r6zhqqzxfx59cp6g', '2022-03-01 02:37:53', '2022-03-01 03:37:54'),
	(3, 1, 'a1', 'yonghu', '党员', 'au44htd2u9wa73usudky2s3ybfuoc5ip', '2022-03-01 02:38:52', '2024-04-29 12:29:44'),
	(4, 2, 'a2', 'zhibu', '支部', 'pjfldd7nzh7i4hkxwv0hqaaqor14gj15', '2022-03-01 02:39:27', '2022-03-01 03:39:27'),
	(5, 1, '支部1', 'zhibu', '支部', '02w3236snmee28giyw32tg7k10610h7y', '2024-04-29 11:26:40', '2024-04-29 12:29:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '党员姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '证件照片',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `wenhuachengdu` varchar(200) DEFAULT NULL COMMENT '文化程度',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `gongzuozhiwu` varchar(200) DEFAULT NULL COMMENT '工作职务',
  `rudangshijian` date DEFAULT NULL COMMENT '入党时间',
  `zhuanzhengshijian` date DEFAULT NULL COMMENT '转正时间',
  `zhibu_id` int DEFAULT NULL COMMENT '所在支部',
  `qianfariqi` varchar(200) DEFAULT NULL COMMENT '签发日期',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '党员身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='党员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `minzu`, `sex_types`, `jiguan`, `chushengriqi`, `wenhuachengdu`, `gongzuodanwei`, `gongzuozhiwu`, `rudangshijian`, `zhuanzhengshijian`, `zhibu_id`, `qianfariqi`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '党员1', '123456', '党员姓名1', 'http://localhost:8080/dangyuanjiaoyuguanli/upload/yonghu1.jpg', '民族1', 2, '籍贯1', '2022-03-01', '文化程度1', '工作单位1', '工作职务1', '2022-03-01', '2022-03-01', 2, '签发日期1', '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-01 02:29:29'),
	(2, '党员2', '123456', '党员姓名2', 'http://localhost:8080/dangyuanjiaoyuguanli/upload/yonghu2.jpg', '民族2', 2, '籍贯2', '2022-03-01', '文化程度2', '工作单位2', '工作职务2', '2022-03-01', '2022-03-01', 2, '签发日期2', '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-01 02:29:29'),
	(3, '党员3', '123456', '党员姓名3', 'http://localhost:8080/dangyuanjiaoyuguanli/upload/yonghu3.jpg', '民族3', 1, '籍贯3', '2022-03-01', '文化程度3', '工作单位3', '工作职务3', '2022-03-01', '2022-03-01', 3, '签发日期3', '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `zhibu`;
CREATE TABLE IF NOT EXISTS `zhibu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhibu_name` varchar(200) DEFAULT NULL COMMENT '负责人姓名 Search111 ',
  `zhibu_dangzhibu` varchar(255) DEFAULT NULL COMMENT '党支部',
  `zhibu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhibu_address` varchar(200) DEFAULT NULL COMMENT '办公地址 ',
  `zhibu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhibu_content` text COMMENT '支部详情',
  `zhibu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='支部';

DELETE FROM `zhibu`;
INSERT INTO `zhibu` (`id`, `username`, `password`, `zhibu_name`, `zhibu_dangzhibu`, `zhibu_phone`, `zhibu_address`, `zhibu_email`, `zhibu_content`, `zhibu_delete`, `create_time`) VALUES
	(1, '支部1', '123456', '负责人姓名1', '党支部1', '17703786901', '办公地址1', '1@qq.com', '支部详情1', 1, '2022-03-01 02:29:29'),
	(2, '支部2', '123456', '负责人姓名2', '党支部2', '17703786902', '办公地址2', '2@qq.com', '支部详情2', 1, '2022-03-01 02:29:29'),
	(3, '支部3', '123456', '负责人姓名3', '党支部3', '17703786903', '办公地址3', '3@qq.com', '支部详情3', 1, '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `zhiburizhi`;
CREATE TABLE IF NOT EXISTS `zhiburizhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhibu_id` int DEFAULT NULL COMMENT '支部',
  `zhiburizhi_rizhi` varchar(200) DEFAULT NULL COMMENT '日志 Search111',
  `zhiburizhi_types` int DEFAULT NULL COMMENT '日志类型 Search111',
  `zhiburizhi_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhiburizhi_time` timestamp NULL DEFAULT NULL COMMENT '日期',
  `zhiburizhi_text` text COMMENT '支部日志备注',
  `zhiburizhi_content` text COMMENT '支部日志详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='支部日志';

DELETE FROM `zhiburizhi`;
INSERT INTO `zhiburizhi` (`id`, `zhibu_id`, `zhiburizhi_rizhi`, `zhiburizhi_types`, `zhiburizhi_file`, `zhiburizhi_time`, `zhiburizhi_text`, `zhiburizhi_content`, `create_time`) VALUES
	(1, 2, '日志1', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29', '支部日志备注1', '支部日志详情1', '2022-03-01 02:29:29'),
	(2, 2, '日志2', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29', '支部日志备注2', '支部日志详情2', '2022-03-01 02:29:29'),
	(3, 2, '日志3', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29', '支部日志备注3', '支部日志详情3', '2022-03-01 02:29:29'),
	(4, 2, '日志4', 3, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29', '支部日志备注4', '支部日志详情4', '2022-03-01 02:29:29'),
	(5, 3, '日志5', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29', '支部日志备注5', '支部日志详情5', '2022-03-01 02:29:29');

DROP TABLE IF EXISTS `zhiburongyu`;
CREATE TABLE IF NOT EXISTS `zhiburongyu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhibu_id` int DEFAULT NULL COMMENT '支部',
  `zhiburongyu_chengguo` varchar(200) DEFAULT NULL COMMENT '成果',
  `zhiburongyu_zhengshu` varchar(200) DEFAULT NULL COMMENT '证书 Search111',
  `zhiburongyu_rongyu` varchar(200) DEFAULT NULL COMMENT '荣誉',
  `zhiburongyu_types` int DEFAULT NULL COMMENT '荣誉类型 Search111',
  `zhiburongyu_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='支部荣誉';

DELETE FROM `zhiburongyu`;
INSERT INTO `zhiburongyu` (`id`, `zhibu_id`, `zhiburongyu_chengguo`, `zhiburongyu_zhengshu`, `zhiburongyu_rongyu`, `zhiburongyu_types`, `zhiburongyu_file`, `create_time`) VALUES
	(1, 1, '成果1', '证书1', '荣誉1', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29'),
	(2, 1, '成果2', '证书2', '荣誉2', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29'),
	(3, 2, '成果3', '证书3', '荣誉3', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29'),
	(4, 3, '成果4', '证书4', '荣誉4', 2, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29'),
	(5, 3, '成果5', '证书5', '荣誉5', 1, 'http://localhost:8080/dangyuanjiaoyuguanli/upload/file.rar', '2022-03-01 02:29:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
