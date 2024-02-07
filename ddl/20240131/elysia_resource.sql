DROP TABLE IF EXISTS `elysia_resource`;
CREATE TABLE `elysia_resource`
(
    `ID`          bigint(20)                                                   NOT NULL COMMENT '资源ID',
    `STATUS`      tinyint(4)                                                   NULL DEFAULT NULL COMMENT '资源账号状态',
    `CREATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NULL DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`ID`) USING BTREE
) COMMENT "资源表"
    ENGINE = InnoDB
    CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_unicode_ci
    ROW_FORMAT = Dynamic;