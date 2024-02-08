DROP TABLE IF EXISTS `elysia_dict`;
CREATE TABLE `elysia_dict`
(
    `ID`        INT AUTO_INCREMENT NOT NULL COMMENT 'ID',
    `DICT_CODE` VARCHAR(50)        NOT NULL COMMENT '字典码',
    `DICT_NAME` VARCHAR(100)       NOT NULL COMMENT '字典描述',
    `DICT_TYPE` VARCHAR(50)        NOT NULL COMMENT '字典分类',
    `STATUS`    TINYINT(1)         NOT NULL DEFAULT 1 COMMENT '状态',
    PRIMARY KEY (`ID`) USING BTREE,
    UNIQUE KEY `idx_dict_code_unique` (`DICT_CODE`)
) COMMENT ='字典表'
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;