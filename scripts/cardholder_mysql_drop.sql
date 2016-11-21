ALTER TABLE `card` DROP FOREIGN KEY `card_fk0`;

ALTER TABLE `cashback` DROP FOREIGN KEY `cashback_fk0`;

ALTER TABLE `cashback` DROP FOREIGN KEY `cashback_fk1`;

ALTER TABLE `merchandise` DROP FOREIGN KEY `merchandise_fk0`;

DROP TABLE IF EXISTS `bank`;

DROP TABLE IF EXISTS `card`;

DROP TABLE IF EXISTS `cashback`;

DROP TABLE IF EXISTS `category`;

DROP TABLE IF EXISTS `merchandise`;

