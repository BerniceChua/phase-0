



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'person'
-- 
-- ---

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` CHAR NULL DEFAULT NULL,
  `time_id` TIME NULL DEFAULT NULL,
  `health_status` MEDIUMTEXT NULL DEFAULT NULL,
  `job/occupation` MEDIUMTEXT NULL DEFAULT NULL,
  `mood` MEDIUMTEXT NULL DEFAULT NULL,
  `hobbies` MEDIUMTEXT NULL DEFAULT NULL,
  `mother_name` VARCHAR NULL DEFAULT NULL,
  `father_name` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'time'
-- 
-- ---

DROP TABLE IF EXISTS `time`;

CREATE TABLE `time` (
  `id` TIME NULL AUTO_INCREMENT DEFAULT NULL,
  `thing_person_is_doing_right_now` CHAR NULL DEFAULT NULL,
  `location` MEDIUMTEXT NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `doing_this_alone_or_with_others` BINARY NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `person` ADD FOREIGN KEY (time_id) REFERENCES `time` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `person` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `time` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `person` (`id`,`name`,`time_id`,`health_status`,`job/occupation`,`mood`,`hobbies`,`mother_name`,`father_name`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `time` (`id`,`thing_person_is_doing_right_now`,`location`,`date`,`doing_this_alone_or_with_others`) VALUES
-- ('','','','','');

