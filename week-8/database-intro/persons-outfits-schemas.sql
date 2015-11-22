
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'persons'
-- 
-- ---

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `height` INTEGER NULL DEFAULT NULL,
  `shoe_size` INTEGER NULL DEFAULT NULL,
  `dress_size` INTEGER NULL DEFAULT NULL,
  `pants_size` INTEGER NULL DEFAULT NULL,
  `top_measurements` INTEGER NULL DEFAULT NULL,
  `outfit_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'outfits'
-- 
-- ---

DROP TABLE IF EXISTS `outfits`;

CREATE TABLE `outfits` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `shoes` MEDIUMTEXT NULL DEFAULT NULL,
  `dresses` CHAR NULL DEFAULT NULL,
  `tops` MEDIUMTEXT NULL DEFAULT NULL,
  `pants` CHAR NULL DEFAULT NULL,
  `skirts` CHAR NULL DEFAULT NULL,
  `leggings` MEDIUMTEXT NULL DEFAULT NULL,
  `socks` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `persons` ADD FOREIGN KEY (outfit_id) REFERENCES `outfits` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `persons` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `outfits` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `persons` (`id`,`name`,`height`,`shoe_size`,`dress_size`,`pants_size`,`top_measurements`,`outfit_id`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `outfits` (`id`,`shoes`,`dresses`,`tops`,`pants`,`skirts`,`leggings`,`socks`) VALUES
-- ('','','','','','','','');
