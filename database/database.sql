
DROP DATABASE IF EXISTS `kaleboo`;

CREATE DATABASE `kaleboo` CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `kaleboo`;

GRANT ALL PRIVILEGES ON kaleboo.* To 'kaleboo'@'localhost' IDENTIFIED BY 'Unq3u9DdYg2P7efG';
GRANT ALL PRIVILEGES ON kaleboo.* To 'kaleboo'@'%' IDENTIFIED BY 'Unq3u9DdYg2P7efG';