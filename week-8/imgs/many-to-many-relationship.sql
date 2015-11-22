



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'grocery_lists'
-- 
-- ---

DROP TABLE IF EXISTS `grocery_lists`;

CREATE TABLE `grocery_lists` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `grocery_list_name` VARCHAR NULL DEFAULT NULL,
  `budget_for_this_list` DOUBLE NULL DEFAULT NULL,
  `date_time_created` DATETIME NULL DEFAULT NULL,
  `date_time_updated` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'items'
-- 
-- ---

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `item_name` VARCHAR NULL DEFAULT NULL,
  `quantity` INTEGER NULL DEFAULT NULL,
  `price_per_unit` DOUBLE NULL DEFAULT NULL,
  `date_time_created` DATETIME NULL DEFAULT NULL,
  `date_time_updated` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'grocery_lists_and_items'
-- 
-- ---

DROP TABLE IF EXISTS `grocery_lists_and_items`;

CREATE TABLE `grocery_lists_and_items` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `grocery_list_id` INTEGER NULL DEFAULT NULL,
  `items_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `grocery_lists_and_items` ADD FOREIGN KEY (grocery_list_id) REFERENCES `grocery_lists` (`id`);
ALTER TABLE `grocery_lists_and_items` ADD FOREIGN KEY (items_id) REFERENCES `items` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `grocery_lists` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `items` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `grocery_lists_and_items` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `grocery_lists` (`id`,`grocery_list_name`,`budget_for_this_list`,`date_time_created`,`date_time_updated`) VALUES
-- ('','','','','');
-- INSERT INTO `items` (`id`,`item_name`,`quantity`,`price_per_unit`,`date_time_created`,`date_time_updated`) VALUES
-- ('','','','','','');
-- INSERT INTO `grocery_lists_and_items` (`id`,`grocery_list_id`,`items_id`) VALUES
-- ('','','');

