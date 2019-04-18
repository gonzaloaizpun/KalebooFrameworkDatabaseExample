USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_device_brand` int(10) unsigned NOT NULL,
 `id_device_screensize` int(10) unsigned NOT NULL,
 `description` varchar(128) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `device_brands`;

CREATE TABLE `device_brands` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `device_brands` (`id`, `description`) VALUES
	(1, 'Samsung'),
	(2, 'Motorola'),
	(3, 'Apple');


# ================================================================================================

DROP TABLE IF EXISTS `device_screensizes`;

CREATE TABLE `device_screensizes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `device_screensizes` (`id`, `description`) VALUES
	(1, '1440×2560'),
	(2, '750×1334'),
	(3, '720×1280');