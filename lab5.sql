SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND population >350000

SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND regions.name = 'Nord' 

SET NAMES utf8;
SET time_zone = '+00:00';

DROP TABLE IF EXISTS `Line`;
CREATE TABLE `Line` (
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

INSERT INTO `station_of_metro` (`id_of_station`, `name_of_station`, `number_of_line`, `number_of_station_in_line`) VALUES
(1,	'HolodnaGora',	2,	1),
(2,	'GeroivPraci',  3,	1),
(3,	'Peremoga',	1,	1),
(4,     'Zavod im Malishev',	2, 	7),
(5,     'Akademika Barabashova',	3,	4),
(6,     'Naukova',	1,	4),
(7,	'Indystialna',	2,	13),
(8,	'IstorishniiMysei',	3,	8),
(9,	'MetroBudivnikiv',	1,	9);

DROP TABLE IF EXISTS `transfer_on_line_to_line`;
CREATE TABLE `transfer_on_line_to_line` (
  `from_station` int(20) NOT NULL,
  `to_station` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transfer_on_line_to_line` (`from_line`, `to_line`, `from_station`, `to_station`) VALUES
(4,	1);