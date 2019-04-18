USE `kaleboo`;

# ================================================================================================


DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    INSERT INTO `products` (`id`, `description`) VALUES
        (1, 'Weather Station'),
        (2, 'Smart Bulb'),
        (3, 'Smart Lock'),
        (4, 'Humidity Spear'),
        (5, 'Accelerometer');