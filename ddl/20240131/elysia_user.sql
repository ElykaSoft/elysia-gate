DROP TABLE IF EXISTS `elysia_user`;
CREATE TABLE `elysia_user`
(
    `ID`                bigint(20) AUTO_INCREMENT PRIMARY KEY COMMENT '用户ID',
    `USERNAME`          varchar(50)  NOT NULL COMMENT '用户名',
    `PASSWORD`          varchar(100) NOT NULL COMMENT '用户密码',
    `STATUS`            tinyint(4)   NULL DEFAULT NULL COMMENT '用户账号状态',
    `REGISTRATION_DATE` varchar(10)  NULL DEFAULT NULL COMMENT '用户注册日期',
    `LAST_LOGIN_DATE`   varchar(10)  NULL DEFAULT NULL COMMENT '最后登录日期',
    `CREATE_USER`       varchar(20)  NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE`       varchar(10)  NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME`       varchar(8)   NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER`       varchar(20)  NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE`       varchar(10)  NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME`       varchar(8)   NULL DEFAULT NULL COMMENT '更新时间',
    UNIQUE INDEX `idx_username_unique` (`USERNAME`)
) COMMENT "用户表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;
