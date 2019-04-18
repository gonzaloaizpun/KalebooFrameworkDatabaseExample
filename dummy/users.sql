USE `kaleboo`;

# ================================================================================================

INSERT INTO `users` (`id`) VALUES 
	(1),
	(2),
	(3);


INSERT INTO `user_attributes` (`id_user`, `id_attribute`, `description`) VALUES

	(1, 1, 'John Doe'),
	(1, 3, 'john.doe@gmail.com'),
	(1, 4, '9959a1c23dcc98a7b3ca78dfd777d7ad'),

	(2, 1, 'Mario Speedwagon'),
	(2, 3, 'mario.speedwagon@gmail.com'),
	(2, 4, 'fbbaad48686fa8f3a6e1d0c92b301da9'),

	(3, 1, 'Anna Sthesia'),
	(3, 3, 'anna.sthesia@gmail.com'),
	(3, 4, '433572aec18e8f74f4ddd2ba72b69144'),

	(3, 1, 'Paul Molive'),
	(3, 3, 'paul.molive@gmail.com'),
	(3, 4, 'c4e3013d6faa2ebaf904a76140e7050e'),

	(3, 1, 'Anna Mull'),
	(3, 3, 'anna.mull@gmail.com'),
	(3, 4, '039ac5d5fb2ff5039e57a158a6080bed'),

	(3, 1, 'Gail Forcewind'),
	(3, 3, 'gail.forcewind@gmail.com'),
	(3, 4, '513a0fc87d6aa8625cc2b6b09a85563e'),

	(3, 1, 'Paige Turner'),
	(3, 3, 'paige.turner@gmail.com'),
	(3, 4, 'b5bef18676056fea7f2e4b727bf8b91f'),

	(3, 1, 'Bob Frapples'),
	(3, 3, 'bob.frapples@gmail.com'),
	(3, 4, '4d1a3a7de62d988b6a0f00748c54c375');


INSERT INTO `user_permissions` (`id_user`, `id_permission`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 1),
	(5, 3),
	(6, 1),
	(7, 3);