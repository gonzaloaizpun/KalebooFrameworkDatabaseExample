USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `metrics`;

CREATE TABLE `metrics` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


    INSERT INTO `metrics` (`id`, `description`) VALUES
        (1, 'humidity'),
        (2, 'temperature'),
        (3, 'precipitations'),
        (4, 'voltage');