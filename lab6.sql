SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND population >350000

SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND regions.name = 'Nord' 

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';


DROP TABLE IF EXISTS `line`;
CREATE TABLE `line` (
  `id` int(20) NOT NULL,
  `name` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `line` (`id`, `name`) VALUES
(1,	'green'),
(2,	'red'),
(3,	'blue');

DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `id` int(10) NOT NULL,
  `name_of_station` char(20) NOT NULL,
  `number_of_line` int(20) NOT NULL,
  `number_of_station_in_line` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `station_of_metro` (`id`, `name_of_station`, `number_of_line`, `number_of_station_in_line`) VALUES
(1,	'HolodnaGora',	2,	1),
(2,	'GeroivPraci',  3,	1),
(3,	'Peremoga',	1,	1),
(4,     'Zavod im Malishev',	2, 	7),
(5,     'Akademika Barabashova',	3,	4),
(6,     'Naukova',	1,	4),
(7,	'Indystialna',	2,	13),
(8,	'IstorishniiMysei',	3,	8),
(9,	'MetroBudivnikiv',	1,	9);