USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `user_attributes`;

CREATE TABLE `user_attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_user` int(10) unsigned NOT NULL,
 `id_attribute` int(10) unsigned NOT NULL,
 `description` varchar(256) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_user` (`id_user`),
 KEY `id_attribute` (`id_attribute`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `user_permissions`;

CREATE TABLE `user_permissions` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_user` int(10) unsigned NOT NULL,
 `id_permission` int(10) unsigned NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_user` (`id_user`),
 KEY `id_permission` (`id_permission`),
 UNIQUE KEY `id_user.id_permission` (`id_user`, `id_permission`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;