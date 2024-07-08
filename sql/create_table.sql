# 数据库初始化
# @author Ding Jiaxiong

-- 创建库
create database if not exists xiongso;

-- 切换库
use xiongso;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userAccount  varchar(256)                           not null comment '账号',
    userPassword varchar(512)                           not null comment '密码',
    unionId      varchar(256)                           null comment '微信开放平台id',
    mpOpenId     varchar(256)                           null comment '公众号openId',
    userName     varchar(256)                           null comment '用户昵称',
    userAvatar   varchar(1024)                          null comment '用户头像',
    userProfile  varchar(512)                           null comment '用户简介',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user/admin/ban',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    index idx_unionId (unionId)
) comment '用户' collate = utf8mb4_unicode_ci;

-- 插入用户表的模拟数据
INSERT INTO user (userAccount, userPassword, unionId, mpOpenId, userName, userAvatar, userProfile, userRole, createTime,
                  updateTime, isDelete)
VALUES ('zhangsan', 'e10adc3949ba59abbe56e057f20f883e', 'wx123456', 'mp123456', '张三',
        'http://example.com/avatar_zhangsan.jpg', '喜欢读书和写作', 'user', '2024-06-01 08:30:00',
        '2024-06-01 08:30:00', 0),
       ('lisi', '25d55ad283aa400af464c76d713c07ad', 'wx789012', 'mp789012', '李四',
        'http://example.com/avatar_lisi.jpg', '热爱绘画和艺术', 'admin', '2024-06-02 09:00:00', '2024-06-02 09:00:00',
        0),
       ('wangwu', 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, 'mp345678', '王五', 'http://example.com/avatar_wangwu.jpg',
        '喜欢徒步和户外活动', 'user', '2024-06-03 10:15:00', '2024-06-03 10:15:00', 0),
       ('zhaoliu', '5f4dcc3b5aa765d61d8327deb882cf99', 'wx345678', NULL, '赵六',
        'http://example.com/avatar_zhaoliu.jpg', '美食博主和厨师', 'ban', '2024-06-04 11:45:00', '2024-06-04 11:45:00',
        0),
       ('sunqi', '96e79218965eb72c92a549dd5a330112', NULL, NULL, '孙七', 'http://example.com/avatar_sunqi.jpg',
        '科技爱好者和游戏玩家', 'user', '2024-06-05 12:00:00', '2024-06-05 12:00:00', 0);


-- 帖子表
create table if not exists post
(
    id         bigint auto_increment comment 'id' primary key,
    title      varchar(512)                       null comment '标题',
    content    text                               null comment '内容',
    tags       varchar(1024)                      null comment '标签列表（json 数组）',
    thumbNum   int      default 0                 not null comment '点赞数',
    favourNum  int      default 0                 not null comment '收藏数',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete   tinyint  default 0                 not null comment '是否删除',
    index idx_userId (userId)
) comment '帖子' collate = utf8mb4_unicode_ci;

-- 帖子点赞表（硬删除）
create table if not exists post_thumb
(
    id         bigint auto_increment comment 'id' primary key,
    postId     bigint                             not null comment '帖子 id',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    index idx_postId (postId),
    index idx_userId (userId)
) comment '帖子点赞';

-- 帖子收藏表（硬删除）
create table if not exists post_favour
(
    id         bigint auto_increment comment 'id' primary key,
    postId     bigint                             not null comment '帖子 id',
    userId     bigint                             not null comment '创建用户 id',
    createTime datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    index idx_postId (postId),
    index idx_userId (userId)
) comment '帖子收藏';
