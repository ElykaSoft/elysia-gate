DROP TABLE IF EXISTS `elysia_dict`;
CREATE TABLE `elysia_dict`
(
    `ID`        INT AUTO_INCREMENT NOT NULL COMMENT 'ID',
    `dict_code` VARCHAR(50)        NOT NULL COMMENT '字典码',
    `dict_name` VARCHAR(100)       NOT NULL COMMENT '字典描述',
    `dict_type` VARCHAR(50)        NOT NULL COMMENT '字典分类',
    `status`    TINYINT(1)         NOT NULL DEFAULT 1 COMMENT '状态（0：禁用，1：启用）',
    PRIMARY KEY (`ID`) USING BTREE,
    UNIQUE KEY `idx_dict_code_unique` (`dict_code`)
) COMMENT ='字典表'
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;