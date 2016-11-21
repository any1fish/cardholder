CREATE TABLE `bank` (
	`id` bigint NOT NULL,
	`name` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `card` (
	`id` bigint NOT NULL,
	`name` varchar(255) NOT NULL,
	`bankId` bigint NOT NULL,
	`annualFee` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `cashback` (
	`id` bigint NOT NULL,
	`percent` int NOT NULL,
	`cardId` bigint NOT NULL,
	`expDate` DATETIME NOT NULL,
	`catId` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
	`id` bigint NOT NULL,
	`description` varchar(4096) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `merchandise` (
	`id` bigint NOT NULL,
	`catId` bigint NOT NULL,
	`name` varchar(255) NOT NULL,
	`description` varchar(4096) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `card` ADD CONSTRAINT `card_fk0` FOREIGN KEY (`bankId`) REFERENCES `bank`(`id`);

ALTER TABLE `cashback` ADD CONSTRAINT `cashback_fk0` FOREIGN KEY (`cardId`) REFERENCES `card`(`id`);

ALTER TABLE `cashback` ADD CONSTRAINT `cashback_fk1` FOREIGN KEY (`catId`) REFERENCES `category`(`id`);

ALTER TABLE `merchandise` ADD CONSTRAINT `merchandise_fk0` FOREIGN KEY (`catId`) REFERENCES `category`(`id`);

