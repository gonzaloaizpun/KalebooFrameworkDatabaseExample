USE `kaleboo`;

# ================================================================================================

INSERT INTO `organizations` (`id`) VALUES
	(1),
	(2),
	(3);



INSERT INTO `organization_attributes` (`id_organization`, `id_attribute`, `description`) VALUES
	(1, 1, 'Acme Corporation'),
	(1, 5, '20833 Stevens Creek Blvd, Cupertino, CA 95014, USA'),
	(1, 7, '+1 (408) 996-1010'),
	(2, 1, 'Globex Corporation'),
	(2, 5, '20955 Alves Dr, Cupertino, CA 95014, USA'),
	(2, 7, '+1 (408) 725-3707'),
	(3, 1, 'Soylent Corp'),
	(3, 5, '20999 Stevens Creek Fwy, Cupertino, CA 95014, USA'),
	(3, 7, '+1 (408) 257-6884');



INSERT INTO `organization_users` (`id_user`, `id_organization`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 2),
	(5, 2),
	(6, 3),
	(7, 3);


INSERT INTO `organization_products` (`id_organization`, `id_product`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 3);

