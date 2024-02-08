DROP TABLE IF EXISTS `elysia_user_role`;
CREATE TABLE `elysia_user_role`
(
    `ID`          bigint(20)  NOT NULL COMMENT '用户ID',
    `ROLE_ID`     bigint(20)  NOT NULL COMMENT '角色ID',
    `CREATE_USER` varchar(20) NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE` varchar(10) NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME` varchar(8)  NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER` varchar(20) NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE` varchar(10) NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME` varchar(8)  NULL DEFAULT NULL COMMENT '更新时间',
    UNIQUE INDEX `idx_user_role_id_unique` (`ID`, `ROLE_ID`)
) COMMENT "用户角色关联表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;