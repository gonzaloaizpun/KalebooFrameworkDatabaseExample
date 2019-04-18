USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `measurements`;

CREATE TABLE `measurements` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_metric` int(10) unsigned NOT NULL,
 `id_unit` int(10) unsigned NOT NULL,
 `amount` decimal(16,4) unsigned NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;