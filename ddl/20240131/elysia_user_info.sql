DROP TABLE IF EXISTS `elysia_user_info`;
CREATE TABLE `elysia_user_info`
(
    `ID`           bigint(20) PRIMARY KEY COMMENT '用户ID',
    `FIRSTNAME`    varchar(50)  NULL DEFAULT NULL COMMENT '用户姓氏',
    `LASTNAME`     varchar(50)  NULL DEFAULT NULL COMMENT '用户姓名',
    `GENDER`       tinyint(4)   NULL DEFAULT NULL COMMENT '性别',
    `BIRTHDAY`     varchar(10)  NULL DEFAULT NULL COMMENT '生日',
    `EMAIL`        varchar(100) NULL DEFAULT NULL COMMENT '邮箱',
    `TELEPHONE`    varchar(20)  NOT NULL COMMENT '联系方式',
    `COUNTRY`      varchar(50)  NULL DEFAULT NULL COMMENT '国家地区',
    `NATIVE_PLACE` varchar(50)  NULL DEFAULT NULL COMMENT '籍贯',
    `ADDRESS`      varchar(100) NULL DEFAULT NULL COMMENT '居住地',
    `POSTCODE`     varchar(20)  NULL DEFAULT NULL COMMENT '居住地邮编',
    `AVATAR`       varchar(200) NULL DEFAULT NULL COMMENT '头像',
    `CREATE_USER`  varchar(20)  NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE`  varchar(10)  NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME`  varchar(8)   NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER`  varchar(20)  NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE`  varchar(10)  NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME`  varchar(8)   NULL DEFAULT NULL COMMENT '更新时间'
) COMMENT "用户信息表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;
