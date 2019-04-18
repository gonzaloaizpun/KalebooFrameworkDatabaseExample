USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `organizations`;

CREATE TABLE `organizations` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `organization_attributes`;

CREATE TABLE `organization_attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_organization` int(10) unsigned NOT NULL,
 `id_attribute` int(10) unsigned NOT NULL,
 `description` varchar(256) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_organization` (`id_organization`),
 KEY `id_attribute` (`id_attribute`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `organization_users`;

CREATE TABLE `organization_users` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_organization` int(10) unsigned NOT NULL,
 `id_user` int(10) unsigned NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_organization` (`id_organization`),
 KEY `id_user` (`id_user`),
 UNIQUE KEY `id_organization.id_user` (`id_organization`, `id_user`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `organization_products`;

CREATE TABLE `organization_products` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_organization` int(10) unsigned NOT NULL,
 `id_product` int(10) unsigned NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_product` (`id_product`),
 KEY `id_organization` (`id_organization`),
 UNIQUE KEY `id_organization.id_product` (`id_organization`, `id_product`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

