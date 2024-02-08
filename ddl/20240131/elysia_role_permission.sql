DROP TABLE IF EXISTS `elysia_role_permission`;
CREATE TABLE `elysia_role_permission`
(
    `ID`            bigint(20)  NOT NULL COMMENT '角色ID',
    `PERMISSION_ID` bigint(20)  NOT NULL COMMENT '权限ID',
    `CREATE_USER`   varchar(20) NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE`   varchar(10) NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME`   varchar(8)  NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER`   varchar(20) NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE`   varchar(10) NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME`   varchar(8)  NULL DEFAULT NULL COMMENT '更新时间',
    UNIQUE INDEX `idx_role_permission_id_unique` (`ID`, `PERMISSION_ID`)
) COMMENT "角色权限关联表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;