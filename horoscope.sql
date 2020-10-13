-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `horoscope`;
CREATE DATABASE `horoscope` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `horoscope`;

DROP TABLE IF EXISTS `horoscopes`;
CREATE TABLE `horoscopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(1023) NOT NULL,
  `date` date NOT NULL,
  `sign_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sign_id` (`sign_id`),
  CONSTRAINT `horoscopes_ibfk_1` FOREIGN KEY (`sign_id`) REFERENCES `signs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `horoscopes` (`id`, `description`, `date`, `sign_id`) VALUES
(1,	'Votre code sera truffé d\'erreurs cette semaine. Mais vous gardez confiance: l\'ordinateur va finir par céder.',	'2020-10-06',	1),
(2,	'Vous ne croyez pas en l\'astrologie de toute façon, donc si vous lisez ça, c\'est que vous n\'êtes pas Taureau, mais plutôt Balance.',	'2020-10-06',	2),
(3,	'Arrêtez de maudire vos collaborateurs qui cassent votre code à chaque fois, et rappelez-vous que vous êtes seul à travailler sur ce projet.',	'2020-10-06',	3),
(4,	'Ca y est, vous n\'avez plus d\'erreur à l\'écran. Par contre, votre ordinateur ne démarre plus, à force d\'avoir pris des coups. Mettez-vous à la camomille.',	'2020-10-13',	1),
(5,	'Votre collègue Balance est éperdument amoureuse de vous et nous a demandé un coup de pouce. Faites un effort et lisez votre horoscope de temps en temps, mince.',	'2020-10-13',	2),
(6,	'Cette semaine, vous attendez fébrilement que votre collaborateur <em>pushe</em> son code afin de pouvoir enfin effectuer votre livraison. N\'oubliez pas que vous êtes toujours le même nombre de collaborateurs que la semaine dernière.',	'2020-10-13',	3),
(7,	'Test',	'2020-10-13',	3);

DROP TABLE IF EXISTS `signs`;
CREATE TABLE `signs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `signs` (`id`, `name`, `image`, `start_date`, `end_date`) VALUES
(1,	'Bélier',	'images/zodiac/012-aries.svg',	'2020-03-21',	'2020-04-19'),
(2,	'Taureau',	'images/zodiac/011-taurus.svg',	'2020-04-20',	'2020-05-21'),
(3,	'Gémeaux',	'images/zodiac/010-gemini.svg',	'2020-05-22',	'2020-06-20');

-- 2020-10-13 14:39:37
