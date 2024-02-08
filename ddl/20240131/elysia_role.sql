DROP TABLE IF EXISTS `elysia_role`;
CREATE TABLE `elysia_role`
(
    `ID`          bigint(20) PRIMARY KEY COMMENT '角色ID',
    `STATUS`      tinyint(4)  NULL DEFAULT NULL COMMENT '角色账号状态',
    `ROLE_NAME`   varchar(20) NOT NULL COMMENT '角色名',
    `ROLE_DESC`   varchar(50) NOT NULL COMMENT '角色描述',
    `CREATE_USER` varchar(20) NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE` varchar(10) NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME` varchar(8)  NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER` varchar(20) NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE` varchar(10) NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME` varchar(8)  NULL DEFAULT NULL COMMENT '更新时间'
) COMMENT "角色表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;