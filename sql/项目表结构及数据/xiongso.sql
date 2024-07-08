/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : xiongso

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 08/07/2024 12:48:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `thumbNum` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `favourNum` int NOT NULL DEFAULT 0 COMMENT '收藏数',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1809861493096067081 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1809526885787783170, '丁家雄不是狗', '丁家雄不是狗，他是一个在某个小镇上颇有名气的人物。丁家雄在这个镇上生活了五十多年，几乎所有人都认识他。年轻时的丁家雄曾是一个热血青年，总想着改变世界。然而，随着岁月的流逝，他逐渐意识到，要改变的并不是世界，而是自己。', '[\"Java\",\"Python\"]', 0, 1, 1809525156073590786, '2024-07-06 17:56:43', '2024-07-06 18:00:41', 0);
INSERT INTO `post` VALUES (1809526885787783171, '丁家雄不欠费', '丁家雄不欠费，这不仅仅是一句日常的描述，更是一段关于诚信与责任的故事。在某个小镇上，丁家雄是一位备受尊敬的中年人。他的诚信与责任感在社区中有口皆碑，无论是在生活中还是在工作上，丁家雄总是以诚信待人，以责任行事。', '[\"Java\",\"Python\"]', 0, 0, 1809525156073590786, '2024-07-06 20:56:37', '2024-07-06 20:56:37', 0);
INSERT INTO `post` VALUES (1809526885787783172, '丁家雄不欠费', '丁家雄不欠费，这不仅仅是一句日常的描述，更是一段关于诚信与责任的故事。在某个小镇上，丁家雄是一位备受尊敬的中年人。他的诚信与责任感在社区中有口皆碑，无论是在生活中还是在工作上，丁家雄总是以诚信待人，以责任行事。', '[\"Java\",\"Python\"]', 0, 0, 1809525156073590786, '2024-07-06 20:56:37', '2024-07-06 20:56:37', 0);
INSERT INTO `post` VALUES (1809526885787783173, '丁家雄不欠费', '丁家雄不欠费，这不仅仅是一句日常的描述，更是一段关于诚信与责任的故事。在某个小镇上，丁家雄是一位备受尊敬的中年人。他的诚信与责任感在社区中有口皆碑，无论是在生活中还是在工作上，丁家雄总是以诚信待人，以责任行事。', '[\"Java\",\"Python\"]', 0, 0, 1809525156073590786, '2024-07-06 20:57:33', '2024-07-06 20:57:33', 0);
INSERT INTO `post` VALUES (1809526885787783174, '丁家雄不欠费', '丁家雄不欠费，这不仅仅是一句日常的描述，更是一段关于诚信与责任的故事。在某个小镇上，丁家雄是一位备受尊敬的中年人。他的诚信与责任感在社区中有口皆碑，无论是在生活中还是在工作上，丁家雄总是以诚信待人，以责任行事。', '[\"Java\",\"Python\"]', 0, 0, 1809525156073590786, '2024-07-06 20:57:33', '2024-07-06 20:57:33', 0);
INSERT INTO `post` VALUES (1809526885787783175, '丁家雄不欠费', '丁家雄不欠费，这不仅仅是一句日常的描述，更是一段关于诚信与责任的故事。在某个小镇上，丁家雄是一位备受尊敬的中年人。他的诚信与责任感在社区中有口皆碑，无论是在生活中还是在工作上，丁家雄总是以诚信待人，以责任行事。', '[\"Java\",\"Python\"]', 0, 0, 1809525156073590786, '2024-07-06 20:57:33', '2024-07-06 20:57:33', 0);
INSERT INTO `post` VALUES (1809859835955949569, '24 年程序员各岗位薪资待遇汇总（最新）', '大家好，我是程序员鱼皮。今天分享 24 年 6 月最新的程序员各岗位薪资待遇汇总。数据是从哪儿来的呢？其实很简单，BOSS 直聘上有一个免费的薪酬查询工具，只要认证成为招聘者就能直接看，便于招聘者了解市场，设置合适的薪资。由于程序员相关的岗位太多，本文只整理了热门岗位，包括：后端、前端、测试、运维、嵌入式、人工智能算法。注意，薪酬查询数据来源于 BOSS 用户提供的职位薪酬数据，可用于分析岗位的现', '[\"计算机\",\"求职\",\"前端\",\"Java\",\"面试\",\"互联网\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859835985309697, '把 iconfont 的图标下载到 React 项目中使用', '如何把 iconfont 的图标下载到本地项目使用', '[\"前端\",\"React\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859835985309698, 'multi-repo 和 mono-repo 代码管理方式了解（附实践源码）', '这篇文章探讨了multi-repo和mono-repo的概念，重点介绍了mono-repo的优缺点和实践方法。通过pnpm和Turborepo的示例，详细说明了mono-repo的核心功能', '[\"前端\",\"学习笔记\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859835985309699, '项目总结', '就聊聊一下项目总结吧，在这个项目中，我主要是想对前端技术的React和ts做个实战练习，但是完成得很残疾，或者说是删减版吧。总体而言，难度不大，但要结合版本的开发文档才行，因为版本更新后语法改动有点大。尤其是它生成的项目文件与鱼皮的源码是有出入的。其次就是部署上线的技术，这个就还在谢谢中，相关的笔记待更新中。。。。。。', '[\"用户中心项目\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-08 09:47:06', 0);
INSERT INTO `post` VALUES (1809859836052418562, '求助', '有人知道鱼皮后端万能模板的mysql是哪个版本吗？我的版本好像不兼容了', '[\"Java\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418563, '程序员真实工作——敲代码日常是什么样子的', '真实的程序员工作，是如何敲代码的？', '[\"求职\",\"校招\",\"交流\",\"Vue\",\"社招\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418564, '智能BI平台', '在线地址：http://47.120.1.180/（域名备案中）账号：admin 密码： 12345678部署用的宝塔面板（太菜了，docker用不到）前端源码：MegumiN152/yubi-前端 --- MegumiN152/yubi-frontend (github.com)后端源码：MegumiN152/yubi-backend --- MegumiN152/yubi-backend (g', '[\"智能BI平台\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-08 09:47:06', 0);
INSERT INTO `post` VALUES (1809859836052418565, '倒计时打卡74天', '学习打卡——品如觉醒计划', '[\"学习打卡\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418566, '新人加入，个人简介', '小宇，现就读于山西工学院计算机科学与技术专业，并将于2025年7月毕业。 教育背景 2021.9-2025.7 山西工学院（本科） 计算机科学与技术 团队承接学院信息化建设，开发学生信息管理系统及学生综测系统。 参与校企合作，深入了解行业需求；主导项目设计与开发，引导团队做过重难点突破。 参与校园3D建模项目，赠母校三周年庆礼，并申请专利。申请号：2024303749079。 专业技能 擅长使用S', '[\"自我介绍\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418567, '我只用一行代码，知道哪些人正在看我的网站！炫酷！', '大家好，我是程序员鱼皮。今天再给大家分享一些站长经验。一般情况下，为了更好地了解我们网站的使用情况和运营情况，我们需要给网站添加统计分析的能力，并且通过监控看板集中地查看各类统计数据，便于我们分析并改进网站。比如下图，就是我的某个网站的监控看板，可以看到网站每日浏览量、访客数、平均访问时长、访问来源等信息。我就可以通过访问来源信息来判断在哪个平台宣传网站的效果更好，从而进一步提升网站的流量。那么如', '[\"计算机\",\"编程\",\"网站\",\"教程\",\"交流\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418568, 'Java基础八股吟唱 02_day', 'Java小菜鸟备战明年暑期实习，加油！', '[\"Java\",\"八股文\",\"面试题\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809859836052418569, 'JavaWeb入门 02_day —— Filter、Listener和会话管理', '差不多了，后面找本书仔细搞一下，后面还有很多东西等着我呢，加油~！', '[\"Java\",\"笔记\"]', 0, 0, 1, '2024-07-07 15:59:45', '2024-07-07 15:59:45', 0);
INSERT INTO `post` VALUES (1809861389161234433, 'MySQL 如何实现将数据实时同步到 ES ？', '在日常的开发中，我们一般会使用 MySQL 来作为数据的存储，然后 ES 来实现全文的数据检索以及特殊查询，那么这个时候就会有一个问题，我们 MySQL 如何实时将数据同步到 ES 中呢？', '[\"Elasticsearch\",\"MySQL\",\"后端\",\"学习打卡\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234434, '用户中心项目中遇到bug,知道原因，但不知道如何解决，望大佬请教', '在用户中心遇到bug，在用户登录时，提示登录成功但，会强行跳转的到登录页面，但第二次登录后才能成功进入欢迎页面。一开始时以为登录的逻辑没有写好，但后来不停的打日志，终于发现时前端的跳转页面的一个onPageChange方法惹得祸。最终发现时因为初始化状态的一个属性currentUser没有被赋值，但登录逻辑中我已经了解到的是先设置了setinitialState后，再进行跳转的，请大佬赐教。', '[\"用户中心项目\",\"直播问题\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234435, 'ComptetableFuture异步编排', 'ComptetableFuture异步编排1.线程回顾1.1初始化线程的几种方式1.继承Thread类public class TestThreadCreate {    public static void main(String[] args) {        /**         * 创建线程的方式一:继承Thread类          */        /**         * ', '[\"Java\",\"后端\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234436, 'JavaWeb入门 01_day —— Servlet', 'Java小菜鸟学习JavaWeb的第一天，跟着鱼总路线走，准没错☁', '[\"资源\",\"Java\",\"教程\",\"文档\",\"后端\",\"笔记\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234437, 'Docker 配置国内镜像源加速教程', '快速加载配置Docker镜像', '[\"Java\",\"Docker\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234438, '【鱼皮】学好项目的 12 条建议', '做项目可不仅仅是抄了代码、跟着教程运行一遍就完事，以下 12 条建议分享给大家，都是我自己的经验。如果能做到，认真完成并理解 4 个及以上的项目，做项目的能力达到中大厂水平绝对没有问题。', '[\"学习指南\",\"项目\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234439, 'Java基础八股吟唱 01_day', '日拱一卒，功不唐捐', '[\"Java\",\"八股文\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234440, 'LeetCode SQL简单题汇总01（非会员题）', '小菜鸟一个，今天水一下，做做题，期末周了，懂的都懂', '[\"后端\",\"数据库\",\"LeetCode\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234441, '华为竟然发布了自己的编程语言 “仓颉”，遥遥领先？！', '大家好，我是程序员鱼皮。在 2024 年 6 月 21 日的华为开发者大会上，华为不仅官宣了下一代鸿蒙操作系统 HarmonyOS NEXT，而且还正式推出了自研的编程语言 \"仓颉\" ，可谓是赚足了面子，遥遥领先！值得一提的是，HarmonyOS NEXT 是华为从内到外 全栈自研 的纯血鸿蒙。自研有什么意义呢？大会上有很多高大上的互联网黑话，什么采用端云垂直整合的系统架构、全场景、原生智能、原生', '[\"计算机\",\"编程\",\"学习建议\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234442, '数据库中有用户数据，但在测试登录时，就是查不到用户信息。user显示null,大家知道这是为什么吗？', '', '[\"提问\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234443, '我做个人站长 7 年的经验，最痛的莫过于。。', '大家好，我是程序员鱼皮，从大学期间上线个人博客网站开始，我做个人站长已经有 7 年多了。在这个过程中，我收获了很多，除了技术成长带来的快乐外，个人站长最开心的莫过于有用户使用、并且留下好评，真的很有成就感。当然，这期间也经历过很多痛苦，比如网站被攻击、数据库被黑、用户反馈的 Bug 无穷无尽等等。。。不过现在回过头来看，经历这些痛苦反而是一种 “幸福”。一方面我会因为这些事获得成长，丰富自己的经验', '[\"网站\",\"技术\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861389161234444, 'SpringBoot入门13_day —— Mybatis框架', '这算是入门的第一个整合框架了，不是很全，后面单独学习Mybatis的时候再深入了解', '[\"Java\",\"后端\",\"笔记\",\"Spring\"]', 0, 0, 1, '2024-07-07 16:05:55', '2024-07-07 16:05:55', 0);
INSERT INTO `post` VALUES (1809861493028958210, 'MySQL 如何实现将数据实时同步到 ES ？', '在日常的开发中，我们一般会使用 MySQL 来作为数据的存储，然后 ES 来实现全文的数据检索以及特殊查询，那么这个时候就会有一个问题，我们 MySQL 如何实时将数据同步到 ES 中呢？', '[\"Elasticsearch\",\"MySQL\",\"后端\",\"学习打卡\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493028958211, '用户中心项目中遇到bug,知道原因，但不知道如何解决，望大佬请教', '在用户中心遇到bug，在用户登录时，提示登录成功但，会强行跳转的到登录页面，但第二次登录后才能成功进入欢迎页面。一开始时以为登录的逻辑没有写好，但后来不停的打日志，终于发现时前端的跳转页面的一个onPageChange方法惹得祸。最终发现时因为初始化状态的一个属性currentUser没有被赋值，但登录逻辑中我已经了解到的是先设置了setinitialState后，再进行跳转的，请大佬赐教。', '[\"用户中心项目\",\"直播问题\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493028958212, 'ComptetableFuture异步编排', 'ComptetableFuture异步编排1.线程回顾1.1初始化线程的几种方式1.继承Thread类public class TestThreadCreate {    public static void main(String[] args) {        /**         * 创建线程的方式一:继承Thread类          */        /**         * ', '[\"Java\",\"后端\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493028958213, 'JavaWeb入门 01_day —— Servlet', 'Java小菜鸟学习JavaWeb的第一天，跟着鱼总路线走，准没错☁', '[\"资源\",\"Java\",\"教程\",\"文档\",\"后端\",\"笔记\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067073, 'Docker 配置国内镜像源加速教程', '快速加载配置Docker镜像', '[\"Java\",\"Docker\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067074, '【鱼皮】学好项目的 12 条建议', '做项目可不仅仅是抄了代码、跟着教程运行一遍就完事，以下 12 条建议分享给大家，都是我自己的经验。如果能做到，认真完成并理解 4 个及以上的项目，做项目的能力达到中大厂水平绝对没有问题。', '[\"学习指南\",\"项目\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067075, 'Java基础八股吟唱 01_day', '日拱一卒，功不唐捐', '[\"Java\",\"八股文\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067076, 'LeetCode SQL简单题汇总01（非会员题）', '小菜鸟一个，今天水一下，做做题，期末周了，懂的都懂', '[\"后端\",\"数据库\",\"LeetCode\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067077, '华为竟然发布了自己的编程语言 “仓颉”，遥遥领先？！', '大家好，我是程序员鱼皮。在 2024 年 6 月 21 日的华为开发者大会上，华为不仅官宣了下一代鸿蒙操作系统 HarmonyOS NEXT，而且还正式推出了自研的编程语言 \"仓颉\" ，可谓是赚足了面子，遥遥领先！值得一提的是，HarmonyOS NEXT 是华为从内到外 全栈自研 的纯血鸿蒙。自研有什么意义呢？大会上有很多高大上的互联网黑话，什么采用端云垂直整合的系统架构、全场景、原生智能、原生', '[\"计算机\",\"编程\",\"学习建议\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067078, '数据库中有用户数据，但在测试登录时，就是查不到用户信息。user显示null,大家知道这是为什么吗？', '', '[\"提问\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067079, '我做个人站长 7 年的经验，最痛的莫过于。。', '大家好，我是程序员鱼皮，从大学期间上线个人博客网站开始，我做个人站长已经有 7 年多了。在这个过程中，我收获了很多，除了技术成长带来的快乐外，个人站长最开心的莫过于有用户使用、并且留下好评，真的很有成就感。当然，这期间也经历过很多痛苦，比如网站被攻击、数据库被黑、用户反馈的 Bug 无穷无尽等等。。。不过现在回过头来看，经历这些痛苦反而是一种 “幸福”。一方面我会因为这些事获得成长，丰富自己的经验', '[\"网站\",\"技术\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);
INSERT INTO `post` VALUES (1809861493096067080, 'SpringBoot入门13_day —— Mybatis框架', '这算是入门的第一个整合框架了，不是很全，后面单独学习Mybatis的时候再深入了解', '[\"Java\",\"后端\",\"笔记\",\"Spring\"]', 0, 0, 1, '2024-07-07 16:06:20', '2024-07-07 16:06:20', 0);

-- ----------------------------
-- Table structure for post_favour
-- ----------------------------
DROP TABLE IF EXISTS `post_favour`;
CREATE TABLE `post_favour`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint NOT NULL COMMENT '帖子 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_favour
-- ----------------------------
INSERT INTO `post_favour` VALUES (1, 1809526885787783170, 1809525156073590786, '2024-07-06 18:00:41', '2024-07-06 18:00:41');

-- ----------------------------
-- Table structure for post_thumb
-- ----------------------------
DROP TABLE IF EXISTS `post_thumb`;
CREATE TABLE `post_thumb`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint NOT NULL COMMENT '帖子 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_thumb
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `unionId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信开放平台id',
  `mpOpenId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号openId',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unionId`(`unionId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1809587753829470210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1809525156073590786, 'dingjiaxiong', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, 'dingjiaxiong', 'https://avatars.githubusercontent.com/u/61930795?v=4', '风轻轻拂半山', 'admin', '2024-07-06 17:49:51', '2024-07-06 21:42:22', 0);
INSERT INTO `user` VALUES (1809587576162947074, 'haimianbaobao', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, '海绵宝宝', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202008%2F03%2F20200803194454_fxzce.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1722130919&t=6ff3a41a1ca45915606d186ff3256331', '我是海绵宝宝', 'user', '2024-07-06 21:57:53', '2024-07-06 21:59:28', 0);
INSERT INTO `user` VALUES (1809587724066689026, 'paidaxing', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, '派大星', 'https://b0.bdstatic.com/a1588b60ed782b418ac46cc77d76d756.jpg@h_1280', '我是你爹', 'user', '2024-07-06 21:58:28', '2024-07-06 21:59:28', 0);
INSERT INTO `user` VALUES (1809587753829470209, 'zhangyuge', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, '章鱼哥', 'https://img1.baidu.com/it/u=1523844190,2818655112&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=406', '我是他儿子', 'user', '2024-07-06 21:58:35', '2024-07-06 21:59:28', 0);

SET FOREIGN_KEY_CHECKS = 1;
