USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


    INSERT INTO `attributes` (`id`, `description`) VALUES
        (1, 'fullname'),
        (2, 'avatar'),
        (3, 'email'),
        (4, 'password'),
        (5, 'address'),
        (6, 'zipcode'),
        (7, 'phone');