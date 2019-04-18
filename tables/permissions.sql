USE `kaleboo`;

# ================================================================================================


DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    INSERT INTO `permissions` (`id`, `description`) VALUES
        (1, 'owner'),
        (2, 'admin'),
        (3, 'editor'),
        (4, 'readonly');