USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 `unit` varchar(8) NOT NULL,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


    INSERT INTO `units` (`id`, `description`, `unit`) VALUES
        (1, 'percentage', '%'),
        (2, 'celsius', 'Cº'),
        (3, 'millivolt', 'mV');
