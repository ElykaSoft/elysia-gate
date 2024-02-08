DROP TABLE IF EXISTS `elysia_resource`;
CREATE TABLE `elysia_resource`
(
    `ID`                   bigint(20) PRIMARY KEY COMMENT '资源ID',
    `STATUS`               tinyint(4)  NULL DEFAULT NULL COMMENT '资源状态',
    `RESOURCE_NAME`        varchar(20) NOT NULL COMMENT '资源名',
    `RESOURCE_DESC`        varchar(50) NOT NULL COMMENT '资源描述',
    `RESOURCE_URL`         varchar(50) NOT NULL COMMENT '资源地址',
    `RESOURCE_METHOD_TYPE` tinyint(1)  NOT NULL COMMENT '资源请求类型',
    `CREATE_USER`          varchar(20) NULL DEFAULT NULL COMMENT '创建用户',
    `CREATE_DATE`          varchar(10) NULL DEFAULT NULL COMMENT '创建日期',
    `CREATE_TIME`          varchar(8)  NULL DEFAULT NULL COMMENT '创建时间',
    `UPDATE_USER`          varchar(20) NULL DEFAULT NULL COMMENT '更新用户',
    `UPDATE_DATE`          varchar(10) NULL DEFAULT NULL COMMENT '更新日期',
    `UPDATE_TIME`          varchar(8)  NULL DEFAULT NULL COMMENT '更新时间'
) COMMENT "资源表"
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;